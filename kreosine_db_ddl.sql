DROP DATABASE IF EXISTS `kreoshine`;
CREATE DATABASE `kreoshine`;
USE `kreoshine`;


DROP TABLE IF EXISTS `media_types`;
CREATE TABLE `media_types`(
	id  SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
    name VARCHAR(255)
);

DROP TABLE IF EXISTS `media_files`;
CREATE TABLE `media_files`(
	id SERIAL PRIMARY KEY,
    media_type_id SMALLINT UNSIGNED NOT NULL,
    filename VARCHAR(255),
    metadata JSON,
    `size` INT,
    created_at DATETIME DEFAULT NOW(),

    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    id SERIAL PRIMARY KEY,
    nickname VARCHAR(50) NOT NULL UNIQUE,
    avatar_id BIGINT UNSIGNED DEFAULT 1,
    email VARCHAR(120) UNIQUE,
    phone BIGINT UNSIGNED UNIQUE,
    created_at DATETIME DEFAULT NOW(),
        
	FOREIGN KEY (avatar_id) REFERENCES media_files(id)

);

DROP TABLE IF EXISTS `user_statuses`;
CREATE TABLE `user_statuses` (
    status_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
    status ENUM ('bronze', 'silver', 'gold') DEFAULT 'bronze',
    discount TINYINT UNSIGNED COMMENT 'percents'
	
);

DROP TABLE IF EXISTS `regions`; 
CREATE TABLE `regions` (
	id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
	region_name VARCHAR (255)
);

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
	user_id BIGINT UNSIGNED NOT NULL UNIQUE,
    user_status_id SMALLINT UNSIGNED NOT NULL DEFAULT 1, 

    hometown VARCHAR(100),
    region_id SMALLINT UNSIGNED NOT NULL,
    spended_money INT UNSIGNED DEFAULT 0,
    gender ENUM('муж', 'жен', 'не указано') DEFAULT 'не указано',
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    patronymic VARCHAR(50) DEFAULT NULL COMMENT 'Отчество',
    birthday DATE DEFAULT NULL,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT NUll ON UPDATE CURRENT_TIMESTAMP,
    
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (user_status_id) REFERENCES user_statuses(status_id),
    FOREIGN KEY (region_id) REFERENCES regions(id)

);

DROP TABLE IF EXISTS `catalogs`;
CREATE TABLE `catalogs` (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
	catalog_name VARCHAR(255) UNIQUE,
	parent_id INT UNSIGNED DEFAULT NULL,
	
    FOREIGN KEY (parent_id) REFERENCES catalogs(id)
);

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
	id SERIAL PRIMARY KEY,
	catalog_id INT UNSIGNED NOT NULL,
	product_image_id BIGINT UNSIGNED,
	
	name VARCHAR(255) NOT NULL,
  	desription TEXT,
	price DECIMAL (11,2) NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
 	updated_at DATETIME DEFAULT NUll ON UPDATE CURRENT_TIMESTAMP,
 	
    FOREIGN KEY (product_image_id) REFERENCES media_files(id),
    FOREIGN KEY (catalog_id) REFERENCES catalogs(id)
);


DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	
	status ENUM ('uncomplited', 'complited') default 'uncomplited',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users(id)
);


DROP TABLE IF EXISTS `order_lists`;
CREATE TABLE `order_lists` (
	order_id BIGINT UNSIGNED NOT NULL,
	product_id BIGINT UNSIGNED NOT NULL ,
	quantity_product SMALLINT UNSIGNED NOT NULL,
	
	PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)

);

DROP TABLE IF EXISTS `users_rewies`;
CREATE TABLE `users_rewies` (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL UNIQUE,
	message VARCHAR(255) NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	rating ENUM('1', '2', '3', '4', '5') NOT NULL,
	updated_at DATETIME DEFAULT NUll ON UPDATE CURRENT_TIMESTAMP,

	FOREIGN KEY (from_user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
	id SERIAL PRIMARY KEY,
	media_content_id BIGINT UNSIGNED DEFAULT NULL,
	title VARCHAR(255) NOT NULL,
	body TEXT,
	created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT NUll ON UPDATE CURRENT_TIMESTAMP,
    
    FOREIGN KEY (media_content_id) REFERENCES media_files(id)
);

DROP TABLE IF EXISTS news_rating;
CREATE TABLE news_rating(
	id SERIAL,
    user_id BIGINT UNSIGNED NOT NULL,
    new_id BIGINT UNSIGNED NOT NULL,
    rate TINYINT(1),
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT NUll ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (new_id) REFERENCES news(id)

);



