USE kreoshine;


  # Выборка заказов по ID пользователя

SET @users_id = 1;

SELECT
	orders.id AS 'Номер заказа',
	CONCAT_WS(' ', profiles.firstname, profiles.lastname) AS 'Заказчик',
	user_statuses.discount AS 'Персональная скидка',
	orders.status AS 'Статус заказа'
  FROM users
INNER JOIN profiles ON users.id = profiles.user_id
INNER JOIN user_statuses ON profiles.user_status_id = user_statuses.status_id
INNER JOIN orders ON orders.user_id = users.id
WHERE users.id = @users_id
;


  # Выборка товаров по ID заказа

SET @order_id = 1;

SELECT
	products.name AS 'Название товара',
	products.price AS 'Цена товара',
	order_lists.quantity_product AS 'Количество'
  FROM users 
INNER JOIN profiles ON users.id = profiles.user_id 
INNER JOIN user_statuses ON profiles.user_status_id = user_statuses.status_id 
INNER JOIN orders ON orders.user_id = users.id 
INNER JOIN order_lists ON order_lists.order_id = orders.id 
INNER JOIN products ON products.id = order_lists.product_id 	
WHERE orders.id = @order_id



	
