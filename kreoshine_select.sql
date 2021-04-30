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


  # Описание заказа

SET @order_id = 1;

SELECT
	orders.id AS 'ID заказа',
	products.name AS 'Название товара',
	products.price AS 'Цена за единицу товара',
	order_lists.quantity_product AS 'Количество'
  FROM users 
INNER JOIN profiles ON users.id = profiles.user_id 
INNER JOIN user_statuses ON profiles.user_status_id = user_statuses.status_id 
INNER JOIN orders ON orders.user_id = users.id 
INNER JOIN order_lists ON order_lists.order_id = orders.id 
INNER JOIN products ON products.id = order_lists.product_id 	
WHERE orders.id = @order_id
;


  # Рейтинг новости

SET @new_id = 1;

SELECT 
	news.title AS 'Заголовок',
	SUM(news_rating.rate) AS 'Рейтинг'
  FROM news 
INNER JOIN news_rating ON news_rating.new_id = news.id 
GROUP BY news_rating.new_id 
HAVING news_rating.new_id = @new_id
;

























	
