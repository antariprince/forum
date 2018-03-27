# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.21)
# Database: udemy-forum
# Generation Time: 2018-03-27 06:17:02 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table channels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `channels`;

CREATE TABLE `channels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `channels` WRITE;
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;

INSERT INTO `channels` (`id`, `title`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'Laravel','laravel','2018-02-09 14:38:14','2018-02-09 14:38:14'),
	(2,'Vuejs','vuejs','2018-02-09 14:38:14','2018-02-09 14:38:14'),
	(3,'Php','php','2018-02-09 14:38:14','2018-02-09 14:38:14'),
	(4,'Html','html','2018-02-09 14:38:14','2018-02-09 14:38:14'),
	(5,'Javascript','javascript','2018-02-09 14:38:14','2018-02-09 14:38:14'),
	(6,'Spark','spark','2018-02-09 14:38:14','2018-02-09 14:38:14'),
	(7,'Luman','luman','2018-02-09 14:38:14','2018-02-09 14:38:14'),
	(8,'Forge','forge','2018-02-09 14:38:14','2018-02-09 14:38:14');

/*!40000 ALTER TABLE `channels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table discussions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `discussions`;

CREATE TABLE `discussions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `discussions` WRITE;
/*!40000 ALTER TABLE `discussions` DISABLE KEYS */;

INSERT INTO `discussions` (`id`, `channel_id`, `user_id`, `title`, `slug`, `content`, `created_at`, `updated_at`)
VALUES
	(1,1,2,'Implementing OUQATH2 with laravel passport','implementing-ouqath2-with-laravel-passport','lorem ipsum dolor sit amet','2018-02-09 14:38:14','2018-02-09 14:38:14'),
	(2,1,2,'Pagination in vuejs not working correctly','pagination-in-vuejs-not-working-correctly','lorem ipsum dolor sit amet','2018-02-09 14:38:14','2018-02-09 14:38:14'),
	(3,1,1,'Vuejs event listeners for child components','vuejs-event-listeners-for-child-components','lorem ipsum dolor sit amet dolor asdf','2018-02-09 14:38:14','2018-02-10 08:06:03'),
	(4,1,1,'Laravel homestead error - undetected database','laravel-homestead-error-undetected-database','lorem ipsum dolor sit amet','2018-02-09 14:38:14','2018-02-09 14:38:14'),
	(5,1,3,'Some new title','some-new-title','lorem number 5','2018-02-09 14:56:18','2018-02-09 14:56:18'),
	(6,1,3,'gwsegseg','gwsegseg','sgegseg','2018-02-09 14:56:49','2018-02-09 14:56:49'),
	(7,1,3,'fqwfwef','fqwfwef','wsefwef','2018-02-09 14:57:26','2018-02-09 14:57:26'),
	(8,1,3,'rghewrhaser','rghewrhaser','hzserhzerh','2018-02-09 14:57:53','2018-02-09 14:57:53'),
	(9,6,1,'Course introduction','course-introduction','```javascript\r\nfunction fancyAlert(arg) {\r\n  if(arg) {\r\n    $.facebox({div:\'#foo\'})\r\n  }\r\n}\r\n```','2018-02-10 09:02:22','2018-02-11 05:59:48');

/*!40000 ALTER TABLE `discussions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table likes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reply_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;

INSERT INTO `likes` (`id`, `reply_id`, `user_id`, `created_at`, `updated_at`)
VALUES
	(1,5,3,'2018-02-09 14:58:16','2018-02-09 14:58:16');

/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(111,'2014_10_12_000000_create_users_table',1),
	(112,'2014_10_12_100000_create_password_resets_table',1),
	(113,'2018_02_05_085635_create_oauth_identities_table',1),
	(114,'2018_02_05_094012_create_discussions_table',1),
	(115,'2018_02_05_094020_create_replies_table',1),
	(116,'2018_02_05_094058_create_channels_table',1),
	(117,'2018_02_07_110017_create_likes_table',1),
	(118,'2018_02_08_140645_create_watchers_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_identities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_identities`;

CREATE TABLE `oauth_identities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `provider_user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_identities` WRITE;
/*!40000 ALTER TABLE `oauth_identities` DISABLE KEYS */;

INSERT INTO `oauth_identities` (`id`, `user_id`, `provider_user_id`, `provider`, `access_token`, `created_at`, `updated_at`)
VALUES
	(1,3,'26626023','github','dccef63afb1ee0bc0b994cf581e6cb26341832ce','2018-02-09 14:43:42','2018-03-27 03:40:19');

/*!40000 ALTER TABLE `oauth_identities` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table replies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `replies`;

CREATE TABLE `replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `best_answer` tinyint(1) NOT NULL DEFAULT '0',
  `discussion_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `replies` WRITE;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;

INSERT INTO `replies` (`id`, `content`, `user_id`, `best_answer`, `discussion_id`, `created_at`, `updated_at`)
VALUES
	(1,'lorem lorem sinta buko ng papaya',1,1,1,'2018-02-09 14:38:14','2018-02-09 14:38:34'),
	(2,'lorem lorem sinta buko ng papaya',1,1,2,'2018-02-09 14:38:14','2018-02-09 14:38:23'),
	(3,'lorem lorem sinta buko ng papaya',2,0,3,'2018-02-09 14:38:14','2018-02-09 14:38:14'),
	(4,'lorem lorem sinta buko ng papaya',2,0,4,'2018-02-09 14:38:14','2018-02-09 14:38:14'),
	(5,'fgwefwefwef',3,1,8,'2018-02-09 14:58:08','2018-02-09 14:58:22'),
	(6,'test reply qwdqwd',1,1,4,'2018-02-10 08:46:27','2018-02-10 08:57:21'),
	(7,'An h1 header\r\n============\r\n\r\nParagraphs are separated by a blank line.\r\n\r\n2nd paragraph. *Italic*, **bold**, and `monospace`. Itemized lists\r\nlook like:\r\n\r\n  * this one\r\n  * that one\r\n  * the other one\r\n\r\nNote that --- not considering the asterisk --- the actual text\r\ncontent starts at 4-columns in.\r\n\r\n> Block quotes are\r\n> written like so.\r\n>\r\n> They can span multiple paragraphs,\r\n> if you like.',1,0,9,'2018-02-10 09:02:55','2018-02-11 06:07:00'),
	(8,'function fancyAlert(arg) {\r\n  if(arg) {\r\n    $.facebox({div:\'#foo\'})\r\n  }\r\n}',1,0,9,'2018-02-11 06:02:21','2018-02-11 06:04:12');

/*!40000 ALTER TABLE `replies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` bigint(20) NOT NULL DEFAULT '50',
  `admin` tinyint(1) NOT NULL DEFAULT '1',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `avatar`, `points`, `admin`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'admin','http://udemy-forum.test/uploads/avatars/screenshot.jpg',425,1,'admin@udemy-forum.dev','$2y$10$jmGM8QPmxo2xbOCLdsY1z.2Qvjm06NkQ1vknxsS/vH1h76kTEaMdy','Y4gflzfziINRScCMTudFdMbzvHXgNt9hU5wmkUiHL9C0nwAsWWU1OT3oJUSM','2018-02-09 14:38:14','2018-02-11 06:02:21'),
	(2,'sheldon cooper','http://udemy-forum.test/uploads/avatars/screenshot.jpg',50,0,'tj.module.test@gmail.com','$2y$10$VM3doIzU/PiAcPortxBjYu0G2Qi3o6zoCOA921L7hN/JiAwRjwjne','a0X3QyO9hcwfTY3VOUVCjenK47OvXCFOGkmin4h4G6QJdskEDIZkcV4mVLzA','2018-02-09 14:38:14','2018-02-09 14:38:14'),
	(3,'Teejay Hidalgo','https://avatars1.githubusercontent.com/u/26626023?v=4',175,1,'teejay.hidalgo@gmail.com',NULL,'sbasUDGepXzW63mNgwHbcVcZV1kKgLBmSBvczTGu2MQXnrMUpGVHtzM3NYOU','2018-02-09 14:43:42','2018-02-09 14:58:22');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table watchers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `watchers`;

CREATE TABLE `watchers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `discussion_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
