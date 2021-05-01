USE kreoshine;

CREATE OR REPLACE VIEW users_rewies_info (user_full_name, message, rating, created_at) AS 
	SELECT 
		CONCAT_WS(' ', profiles.firstname, profiles.lastname),
		users_rewies.message,
		users_rewies.rating,
		users_rewies.created_at 
	  FROM users_rewies
	INNER JOIN users ON users.id = users_rewies.from_user_id 
	INNER JOIN profiles ON users.id = profiles.user_id 
;

SELECT * FROM users_rewies_info
ORDER BY created_at DESC;


CREATE OR REPLACE VIEW news_info (`Заголовок`, `Описание`, `Создано`,`Рейтинг`) AS 
	SELECT
		news.title,
		news.body,
		news.created_at,
		SUM(news_rating.rate)
	  FROM news 
	INNER JOIN news_rating ON news_rating.new_id = news.id 
	GROUP BY news_rating.new_id;


SELECT * FROM news_info
ORDER BY `Создано` DESC;





