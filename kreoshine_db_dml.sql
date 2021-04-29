USE kreoshine;

INSERT INTO `media_types` (name) VALUES 
	('avatars'),
	('image'),
	('music'),
	('video'),
	('doc');

INSERT INTO `media_files` VALUES 
	(1,1,'default_avatar',NULL,8051,'1971-05-16 16:47:48'),
	(2,2,'omnis',NULL,83037,'2018-04-13 18:39:57'),
	(3,3,'aspernatur',NULL,21000,'1991-10-25 11:27:15'),
	(4,4,'et',NULL,1561,'1974-08-13 10:35:53'),
	(5,5,'odit',NULL,3185,'2007-09-04 17:37:49'),
	(6,1,'hic',NULL,1114,'1995-07-23 00:01:04'),
	(7,2,'totam',NULL,774978,'2015-11-08 04:04:14'),
	(8,3,'doloribus',NULL,0,'1981-08-21 11:55:48'),
	(9,4,'sapiente',NULL,258043735,'2009-12-04 22:45:30'),
	(10,5,'alias',NULL,342,'1994-09-29 13:40:54'),
	(11,1,'sit',NULL,60,'2014-01-07 16:40:55'),
	(12,4,'dignissimos',NULL,866310844,'1993-07-04 07:56:15'),
	(13,3,'itaque',NULL,7576,'2017-09-06 07:11:36'),
	(14,4,'ut',NULL,47,'1981-10-17 09:33:04'),
	(15,5,'quod',NULL,0,'2010-08-11 13:22:42'),
	(16,1,'perferendis',NULL,45504696,'1979-09-04 09:20:00'),
	(17,2,'sit',NULL,0,'1988-12-19 06:10:49'),
	(18,3,'similique',NULL,7392,'2018-11-19 20:50:18'),
	(19,4,'et',NULL,721542245,'1978-01-06 19:50:49'),
	(20,5,'qui',NULL,44,'1973-03-31 22:38:38'),
	(21,1,'nemo',NULL,341895,'2011-02-13 20:01:56'),
	(22,2,'omnis',NULL,8,'2011-12-04 10:26:30'),
	(23,3,'nesciunt',NULL,445,'2014-06-06 02:58:11'),
	(24,4,'rerum',NULL,5789547,'1979-09-19 20:01:03'),
	(25,5,'alias',NULL,25236288,'2014-04-23 02:19:31'),
	(26,1,'dicta',NULL,0,'2000-05-06 20:16:22'),
	(27,2,'quibusdam',NULL,0,'1977-10-28 22:13:59'),
	(28,3,'dolorem',NULL,894635188,'1996-12-12 12:33:13'),
	(29,4,'consequatur',NULL,542007,'1994-05-01 17:43:48'),
	(30,5,'aliquam',NULL,408,'1986-04-14 02:47:39'),
	(31,1,'ut',NULL,9445752,'2018-10-18 11:42:47'),
	(32,2,'eligendi',NULL,2,'1985-06-21 14:34:33'),
	(33,3,'saepe',NULL,1865769,'2018-05-01 01:58:31'),
	(34,4,'est',NULL,4,'2011-12-27 01:35:03'),
	(35,5,'ut',NULL,0,'1995-11-13 00:10:13'),
	(36,1,'perspiciatis',NULL,612943,'1975-07-09 10:54:23'),
	(37,2,'iure',NULL,965693,'2019-01-17 18:12:07'),
	(38,3,'cupiditate',NULL,20360563,'2017-07-22 05:05:37'),
	(39,4,'consequatur',NULL,53694791,'2008-05-13 00:13:04'),
	(40,5,'odit',NULL,7,'1984-11-24 04:01:47'),
	(41,1,'vel',NULL,0,'2012-03-14 17:04:17'),
	(42,2,'quae',NULL,0,'1984-04-04 17:37:36'),
	(43,3,'voluptas',NULL,21,'1986-02-27 04:55:02'),
	(44,4,'at',NULL,417919,'1988-01-31 21:30:49'),
	(45,5,'incidunt',NULL,82,'1981-11-26 01:34:09'),
	(46,1,'voluptatem',NULL,51080893,'2000-12-15 22:40:15'),
	(47,2,'tempora',NULL,55907181,'1971-11-23 20:03:10'),
	(48,3,'non',NULL,798,'1982-11-05 03:49:00'),
	(49,4,'eum',NULL,788,'2021-04-08 12:10:28'),
	(50,5,'reprehenderit',NULL,54453252,'2017-11-19 01:08:07');


INSERT INTO `users` VALUES 
	(1,'reprehenderit',1,'ullrich.adan@example.net',88589362584,'2011-07-04 21:02:46'),
	(2,'autem',1,'fbuckridge@example.net',88411653554,'1992-05-28 00:28:58'),
	(3,'perspiciatis',1,'smitham.bennie@example.net',89344257635,'1992-10-30 06:07:04'),
	(4,'aut',31,'corrine33@example.org',88242106177,'2009-11-09 08:31:06'),
	(5,'itaque',1,'sonny63@example.com',89755003551,'2001-10-12 19:21:50'),
	(6,'facere',31,'hprosacco@example.com',89194768410,'2008-08-22 20:15:06'),
	(7,'et',1,'cummerata.arne@example.org',89293243145,'1975-04-15 10:30:07'),
	(8,'aliquam',41,'ernser.annabelle@example.org',88579278309,'2008-07-19 13:01:53'),
	(9,'aspernatur',1,'zaria06@example.net',88203680070,'2009-01-26 05:28:54'),
	(10,'qui',1,'delbert30@example.com',88481639774,'1978-01-21 14:45:45'),
	(11,'quis',46,'wilford.rempel@example.org',89702177835,'2015-12-15 20:07:48'),
	(12,'nihil',11,'xbecker@example.com',89525911691,'1988-09-15 23:52:07'),
	(13,'voluptate',1,'morgan19@example.net',88892186483,'2014-04-15 16:10:21'),
	(14,'quo',1,'bauch.juliana@example.net',89111948131,'1999-07-17 17:07:59'),
	(15,'sequi',11,'marielle.volkman@example.com',89302991220,'1984-08-19 13:16:31'),
	(16,'sit',16,'marquardt.winfield@example.org',89405814391,'1995-01-14 18:38:45'),
	(17,'ad',1,'akirlin@example.net',88154831452,'1993-03-28 02:23:28'),
	(18,'ipsa',1,'larue.roberts@example.com',88925862076,'1970-03-08 09:10:31'),
	(19,'ut',21,'kelsie.carroll@example.org',88687419964,'1994-03-13 10:21:23'),
	(20,'consectetur',1,'umueller@example.net',88363151054,'1989-08-14 16:34:04');


INSERT INTO `user_statuses` VALUES 
	(1,'bronze','0,05'),
	(2,'silver','0,1'),
	(3,'gold','0,15');

INSERT INTO `regions` VALUES 
	(1,'illum'),
	(2,'omnis'),
	(3,'eligendi'),
	(4,'veniam'),
	(5,'numquam'),
	(6,'aut'),
	(7,'inventore'),
	(8,'laborum'),
	(9,'sunt'),
	(10,'et');

INSERT INTO `profiles` VALUES 
	(1,default,'New Sigridside',1,NULL,'муж','Karen','Dibbert',NULL,'1971-10-28','2013-10-01 10:21:13',default),
	(2,default,'Breitenbergchester',2,NULL,'жен','Pierre','Kuvalis',NULL,'1992-09-07','1988-05-25 20:38:41','2003-06-24 16:23:22'),
	(3,default,'West Geovany',3,NULL,'не указано','Pansy','Hermann',NULL,'2018-12-22','1999-11-22 03:30:50',default),
	(4,default,'Angelitaland',4,NULL,'жен','Maybell','Wolf',NULL,'2011-06-16','1976-06-27 05:43:10','1983-10-22 01:49:58'),
	(5,default,'Konopelskiside',5,NULL,'муж','Florian','Kessler',NULL,'2006-02-14','2005-06-20 14:12:02','2016-10-02 16:50:30'),
	(6,default,'Valentinaside',6,NULL,'не указано','Brooke','Steuber',NULL,'1992-01-15','2002-06-20 18:31:16',default),
	(7,default,'Maryburgh',7,NULL,'не указано','Richmond','Stracke',NULL,'1981-10-29','1995-07-30 18:22:08',default),
	(8,default,'Lake Domenic',8,NULL,'жен','Madonna','Windler',NULL,'1982-08-11','2003-09-15 15:08:41','2016-01-06 00:57:04'),
	(9,default,'North Lelah',9,NULL,'муж','Demario','Schuster',NULL,'2001-02-09','2007-02-24 23:53:19',default),
	(10,default,'Stromantown',10,NULL,'жен','Neoma','Hane',NULL,'1971-12-30','1992-05-19 11:32:06','2001-08-02 00:10:11'),
	(11,default,'Jovanchester',1,NULL,'не указано','Tristian','Runte',NULL,'2005-04-29','1976-08-05 15:30:02',default),
	(12,default,'South Erick',2,NULL,'не указано','Ansley','Halvorson',NULL,'1984-08-22','2010-08-12 03:45:15','2014-10-05 07:48:40'),
	(13,default,'Cesarshire',3,NULL,'муж','Taya','Shanahan',NULL,'2017-04-01','1994-07-17 23:22:12',default),
	(14,default,'West Lenore',4,NULL,'жен','Susana','McLaughlin',NULL,'1971-06-03','2013-04-17 04:45:35',default),
	(15,default,'New Nonaview',5,NULL,'муж','Gudrun','Bradtke',NULL,'2000-11-02','2013-07-21 18:01:26',default),
	(16,default,'Port Jailynland',6,NULL,'муж','Ansel','Bednar',NULL,'1985-09-11','2009-01-06 22:31:11',default),
	(17,default,'Joanneside',7,NULL,'жен','Declan','Hane',NULL,'2008-01-31','2017-03-05 12:51:57',default),
	(18,default,'Tatumberg',8,NULL,'не указано','Stanley','Lueilwitz',NULL,'2001-02-15','2000-11-12 17:10:45','2020-12-30 11:52:59'),
	(19,default,'North Nataliashire',9,NULL,'муж','Rodolfo','Mitchell',NULL,'2001-02-15',default,default),
	(20,default,'Bergstromburgh',10,NULL,'не указано','Osborne','Kiehn',NULL,'1982-10-16','2008-10-15 17:17:15','1994-05-10 04:50:44');



INSERT INTO `catalogs` (id, catalog_name, parent_id) VALUES 
	(1, 'Наружная реклама', default),
	(2, 'Креативные подарки', default),
	(11, 'Световые коробы', 1),
	(12, 'Баннеры', 1),
	(13, 'Лампы', 2);

INSERT INTO `products` VALUES 
	(1,11,1,'sequi',NULL,15200.00,'2021-02-19 07:22:22', default),
	(2,12,32,'harum',NULL,6200.00,'2001-03-22 16:09:26',default),
	(3,11,3,'sit',NULL,15700.00,'2021-03-09 02:22:22',default),
	(4,11,4,'quia',NULL,20349.00,'2019-05-30 21:06:05',default),
	(5,12,5,'rem',NULL,2641.00,'2021-04-19 02:25:22',default),
	(6,12,6,'et',NULL,1247.00,'2021-04-19 02:22:22',default),
	(7,13,7,'Бендер',NULL,5880.00,'2016-03-02 22:35:24',default),
	(8,13,8,'Ливерпуль',NULL,6310.00,'2013-08-24 08:32:28',default),
	(9,13,9,'Луна',NULL,2359.00,'2011-10-27 12:52:25',default),
	(10,13,10,'Спартак',NULL,2000.00,'2019-05-30 21:06:05',default);

INSERT INTO `orders` VALUES 
	(1,1,'complited','1982-02-24 06:19:45',default),
	(2,2,default,'1992-03-11 15:11:10',default),
	(3,3,default,'2010-01-26 13:40:10',default),
	(4,4,default,'2000-11-29 16:11:22',default),
	(5,5,'complited','2000-06-14 09:50:55',default),
	(6,6,default, '1989-07-05 18:40:47',default),
	(7,7,default,'1982-11-30 01:41:42',default),
	(8,8,'complited','1994-04-15 16:13:44',default),
	(9,9,default,'1988-02-23 15:01:47',default),
	(10,10,'complited','2010-06-04 19:57:59',default);

INSERT INTO `order_lists` VALUES 
	(1,1,1),
	(1,2,2),
	(2,3,1),
	(3,3,1),
	(4,8,1),
	(5,9,1),
	(6,5,1),
	(7,7,1),
	(8,8,1),
	(9,9,2),
	(10,10,1);


INSERT INTO `news` VALUES 
	(1,2,'Alice thought she might as well as she was a bright idea came into her eyes; and once she remembered having seen in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\').','1983-07-14 16:59:52',default),
	(2,7,'Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, she found this a very poor speaker,\' said the March Hare and his friends shared their never-ending meal, and the whole court was a good.','2005-06-23 13:07:18','2019-07-08 07:14:02'),
	(3,9,'I eat or drink anything; so I\'ll just see what was coming. It was the Hatter. He came in with a sudden burst of tears, \'I do wish they WOULD put their heads downward! The Antipathies, I think--\'.','1973-09-30 23:44:49','1979-04-09 04:04:57'),
	(4,10,'Because he knows it teases.\' CHORUS. (In which the March Hare had just succeeded in bringing herself down to them, they were all turning into little cakes as they all spoke at once, with a little.','1989-11-11 21:54:18',default),
	(5,30,'Mock Turtle. \'Very much indeed,\' said Alice. \'What IS the use of a well?\' The Dormouse again took a great crash, as if she were looking over his shoulder as he found it so quickly that the Gryphon.','1974-12-24 13:54:12','1979-04-07 17:57:28'),
	(6,24,'Duchess: \'flamingoes and mustard both bite. And the Gryphon whispered in reply, \'for fear they should forget them before the end of the hall: in fact she was quite pale (with passion, Alice.','2011-03-14 16:37:31',default),
	(7,42,'Alice like the three were all in bed!\' On various pretexts they all stopped and looked along the course, here and there stood the Queen was to get into her face, and large eyes full of smoke from.','2016-11-19 15:39:37',default),
	(8,22,'As she said to herself; \'the March Hare went \'Sh! sh!\' and the other players, and shouting \'Off with her friend. When she got used to call him Tortoise, if he thought it would be the right size for.','1976-07-29 22:57:23','1999-06-21 20:43:05'),
	(9,47,'VERY wide, but she was now, and she sat down with her friend. When she got to see how he did it,) he did it,) he did not dare to disobey, though she looked back once or twice, half hoping she might.','1990-07-08 14:23:59',default),
	(10,48,'There was a table, with a whiting. Now you know.\' \'I DON\'T know,\' said the Queen, who was beginning to think about stopping herself before she had accidentally upset the week before. \'Oh, I BEG your.','1978-02-06 16:33:17','1980-05-12 11:53:36');

INSERT INTO `news_rating` VALUES 
	(1,1,1,'-1','1974-12-10 11:49:33','2013-06-12 05:18:50'),
	(2,2,1,'-1','1998-06-23 22:44:13','2020-07-14 10:41:27'),
	(3,3,3,'1','1984-07-04 07:32:16','1978-02-13 06:09:55'),
	(4,4,1,'-1','2012-12-16 13:19:16','1994-07-18 03:46:47'),
	(5,5,5,'-1','1987-06-06 20:07:13','1992-06-07 08:19:58'),
	(6,6,6,'-1','1986-10-23 19:52:23','1970-11-23 07:42:36'),
	(7,7,7,'1','2011-09-28 03:52:29','1980-12-08 16:59:45'),
	(8,8,8,'-1','2012-10-17 18:56:47','2018-10-24 13:26:24'),
	(9,9,9,'-1','2018-02-16 22:55:28','2012-11-11 18:45:11'),
	(10,10,10,'1','1999-09-01 08:14:09','1973-07-02 14:21:57'),
	(11,11,1,'1','2003-10-18 16:31:15','2010-03-16 15:21:25'),
	(12,12,1,'-1','2013-02-10 18:17:40','1973-12-24 15:38:29'),
	(13,13,3,'-1','2005-04-11 18:55:24','1992-09-20 06:08:49'),
	(14,14,4,'-1','1976-08-29 03:33:20','1976-02-13 15:04:07'),
	(15,15,5,'-1','2012-07-11 22:14:56','1992-10-31 10:58:19'),
	(16,16,6,'-1','1984-09-13 20:01:03','1987-10-07 17:18:59'),
	(17,17,7,'-1','2019-11-19 14:35:52','1987-02-27 05:17:11'),
	(18,18,1,'-1','1997-12-08 10:55:16','2004-06-16 19:48:50'),
	(19,19,9,'-1','1987-03-26 12:28:03','1990-10-17 12:12:07'),
	(20,20,10,'1','1987-11-15 03:57:28','1991-07-31 10:17:05');

INSERT INTO `users_rewies` VALUES 
	(1,17,'Ipsam quisquam veritatis vel aperiam pariatur. Consequuntur quod provident error nihil veniam doloremque ipsum.','1985-12-03 11:06:31','5',default),
	(2,1,'Voluptatibus tempore non recusandae. Et dolorem ipsa cumque occaecati enim fuga. Voluptatem voluptatum tempora veritatis dolorem temporibus. Est vel natus reprehenderit sapiente et nesciunt ut fuga.','1982-02-24 11:23:07','3',default),
	(3,3,'Qui voluptatibus sapiente molestiae rerum provident. Quo harum quis et.','1999-09-12 09:02:36','1',default),
	(4,9,'Earum non optio quibusdam qui dolorum et autem. Earum tempore et eligendi similique est. Reiciendis blanditiis beatae quo ab quidem voluptatem. Illo excepturi sapiente repudiandae architecto aut ullam rerum.','1973-04-25 17:56:50','5',default),
	(5,15,'Exercitationem quo veritatis facilis reprehenderit recusandae voluptatum in at. Qui occaecati voluptates eaque. Deleniti laboriosam qui et quod sit iure qui. Modi cupiditate labore quia est ad consectetur delectus.','2010-02-28 00:50:19','2',default),
	(6,16,'Cum asperiores similique alias et eos illo. Dolores dolorum possimus modi voluptate perferendis molestias. Asperiores consequatur suscipit dicta alias et mollitia. Eos harum dolores similique inventore magnam.','1995-11-23 22:58:20','3',default),
	(7,7,'Rem nesciunt voluptate eum nesciunt quis laudantium neque. Suscipit ipsa accusamus consequatur. Ut et voluptatem exercitationem id molestias consectetur architecto. Ipsum est soluta reprehenderit velit aut quo beatae rerum.','2000-03-23 11:23:51','1',default),
	(8,8,'Vitae sunt atque non pariatur sint. Cumque vel rem qui ratione praesentium enim enim.','1973-07-19 10:46:36','4',default),
	(9,19,'Quia officiis voluptatum nulla et quia. Natus velit et corrupti reiciendis. Assumenda ea provident perspiciatis ipsam vel voluptate. Facere alias velit doloribus ab.','2012-10-12 00:29:30','5',default),
	(10,10,'Eum earum labore et nostrum et. Sunt doloribus reiciendis esse deleniti non quia. Modi voluptatem vero voluptas eaque voluptas temporibus enim accusamus. Quam error ea est qui.','2021-02-13 13:03:16','3',default);







