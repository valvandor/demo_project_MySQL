USE kreoshine;

  # Данный триггер должен обновлять поле spended_money таблицы profiles
  # Но либо его реализация неудачная, либо лучше это делать не через этот инструмент

DELIMITER //
DROP TRIGGER IF EXISTS get_spended_money_for_user//
CREATE TRIGGER get_spended_money_for_user AFTER INSERT ON orders
FOR EACH ROW 
BEGIN
	DECLARE spended_money_for_order INT;
	DECLARE order_id BIGINT;
	DECLARE user_id BIGINT;
	
	SELECT NEW.id INTO order_id;
	 
	SET user_id = get_user_id_from_order(order_id);
	SET spended_money_for_order = get_full_price_of_order(order_id);
			
	UPDATE profiles
		SET spended_money = spended_money + spended_money_for_order
	WHERE profiles.user_id = user_id;
	
END//

DELIMITER ;

-- 
  # Тут пример заполнения БД для проверки работы триггера

DROP PROCEDURE IF EXISTS write_order_data;
DELIMITER //
CREATE PROCEDURE write_order_data (IN users_id BIGINT)
	BEGIN
		DECLARE order_id BIGINT;
	
		INSERT INTO `orders` VALUES 
			(default, users_id, 'uncomplited',default, default);
		SET @order_id = LAST_INSERT_ID(); 
		
		INSERT INTO `order_lists` VALUES 
			(@order_id, 3, 2);  # FIX IT 
	END//
DELIMITER ;

CALL write_order_data(3);



