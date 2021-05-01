USE kreoshine;


  # Выборка заказов по ID пользователя

DROP PROCEDURE IF EXISTS describe_user_orders;
DELIMITER //
CREATE PROCEDURE describe_user_orders (IN users_id BIGINT)
	BEGIN
		SELECT
			orders.id AS 'Номер заказа',
			CONCAT_WS(' ', profiles.firstname, profiles.lastname) AS 'Заказчик',
			user_statuses.discount AS 'Персональная скидка',
			orders.status AS 'Статус заказа',
			orders.created_at AS 'Создан'
		  FROM users
		INNER JOIN profiles ON users.id = profiles.user_id
		INNER JOIN user_statuses ON profiles.user_status_id = user_statuses.status_id
		INNER JOIN orders ON orders.user_id = users.id
		WHERE users.id = @users_id
		ORDER BY orders.status, orders.created_at DESC
		;
	END//
DELIMITER ;


SET @users_id = 1;
CALL describe_user_orders(@users_id);	


  # Описание заказа по его ID

DROP PROCEDURE IF EXISTS describe_order;
DELIMITER //
CREATE PROCEDURE describe_order (IN users_id BIGINT)
	BEGIN
		SELECT
			products.name AS 'Название товара',
			products.price AS 'Цена за единицу товара',
			order_lists.quantity_product AS 'Количество'
		  FROM orders 
		INNER JOIN order_lists ON order_lists.order_id = orders.id 
		INNER JOIN products ON products.id = order_lists.product_id 	
		WHERE orders.id = @order_id
		;
	END//
DELIMITER ;


SET @order_id = 1;
CALL describe_order(@users_id);	





	
