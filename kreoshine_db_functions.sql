USE kreoshine;

-- 
DROP FUNCTION IF EXISTS get_number_of_order_rows;
DELIMITER //
CREATE FUNCTION get_number_of_order_rows (order_id BIGINT)
RETURNS INT DETERMINISTIC
	BEGIN
		DECLARE number_of_rows INT;
		SELECT 
			COUNT(*) INTO number_of_rows
		  FROM orders
		INNER JOIN order_lists ON order_lists.order_id = orders.id 
		WHERE orders.id = order_id;
		RETURN number_of_rows;
	END//
DELIMITER ;


DROP FUNCTION IF EXISTS get_user_discount;
DELIMITER //
CREATE FUNCTION get_user_discount (user_id BIGINT)
RETURNS INT DETERMINISTIC
	BEGIN
		DECLARE user_discount INT;
		SELECT 
			user_statuses.discount INTO user_discount
		  FROM orders
		INNER JOIN users ON orders.user_id = users.id
		INNER JOIN profiles ON users.id = profiles.user_id
		INNER JOIN user_statuses ON profiles.user_status_id = user_statuses.status_id
		WHERE users.id = user_id;
		RETURN user_discount;
	END//
DELIMITER ;


DROP FUNCTION IF EXISTS get_full_price_of_order;
DELIMITER //
CREATE FUNCTION get_full_price_of_order (order_id BIGINT)
RETURNS DECIMAL (11,2) DETERMINISTIC
	BEGIN
		DECLARE id_user BIGINT;
		DECLARE number_of_rows INT;
		DECLARE user_discount INT;
		DECLARE total_price DECIMAL (11,2) DEFAULT 0;
		DECLARE rows_of_order INT;
		DECLARE quantity INT;
		DECLARE item_price DECIMAL (11,2);
	
		SELECT 	user_id INTO id_user
		  FROM orders WHERE orders.id = order_id;
	
		SET user_discount = get_user_discount(id_user);
		SET rows_of_order = get_number_of_order_rows(order_id);
		
		WHILE rows_of_order > 0 DO
			SET rows_of_order = rows_of_order -1;
			SELECT 
				order_lists.quantity_product, products.price INTO quantity, item_price
			  FROM orders
			INNER JOIN order_lists ON order_lists.order_id = orders.id 
			INNER JOIN products ON products.id = order_lists.product_id
			WHERE orders.id = order_id
			ORDER BY order_lists.product_id
			LIMIT rows_of_order,1;
			SET total_price = total_price + quantity * item_price;
		END WHILE;
	
		SET total_price = total_price - total_price * user_discount / 100;
		RETURN total_price;
	END//
DELIMITER ;


SET @order_id = 1;

SELECT 
	@order_id AS 'Номер заказа', 
	get_full_price_of_order(@order_id) AS 'Итоговая цена заказа';







