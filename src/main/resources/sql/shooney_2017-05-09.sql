# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.23-MariaDB)
# Database: shooney
# Generation Time: 2017-05-09 13:42:15 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table TB_ACCESS_LOG
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TB_ACCESS_LOG`;

CREATE TABLE `TB_ACCESS_LOG` (
  `ACCESS_LOG_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ACCESS_LOG_URL` varchar(80) NOT NULL,
  `ACCESS_LOG_IP` varchar(30) NOT NULL,
  `ACCESS_LOG_TIME_ZONE` varchar(80) DEFAULT NULL,
  `ACCESS_LOG_CREATED_BY` varchar(60) DEFAULT NULL,
  `ACCESS_LOG_CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ACCESS_LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `TB_ACCESS_LOG` WRITE;
/*!40000 ALTER TABLE `TB_ACCESS_LOG` DISABLE KEYS */;

INSERT INTO `TB_ACCESS_LOG` (`ACCESS_LOG_ID`, `ACCESS_LOG_URL`, `ACCESS_LOG_IP`, `ACCESS_LOG_TIME_ZONE`, `ACCESS_LOG_CREATED_BY`, `ACCESS_LOG_CREATED_DATE`)
VALUES
	(1,'/shooney/','219.248.164.116',NULL,NULL,'2017-04-20 21:46:34'),
	(2,'/shooney/','219.248.164.116',NULL,NULL,'2017-04-20 22:46:32'),
	(3,'/shooney/','219.248.164.116',NULL,NULL,'2017-04-20 22:46:39'),
	(4,'/shooney/','219.248.164.116',NULL,NULL,'2017-04-20 22:46:50'),
	(5,'/shooney/','219.248.164.116',NULL,NULL,'2017-04-21 13:10:49'),
	(6,'/shooney/blog/detail/2','219.248.164.116',NULL,NULL,'2017-04-22 00:32:29'),
	(7,'/shooney/','223.38.10.205',NULL,NULL,'2017-04-22 11:53:06'),
	(8,'/shooney/','223.33.165.70',NULL,NULL,'2017-04-23 10:35:41'),
	(9,'/shooney/','61.73.59.48',NULL,NULL,'2017-04-23 15:59:53'),
	(10,'/shooney/','223.38.8.100',NULL,NULL,'2017-04-24 08:18:11'),
	(11,'/shooney/','123.215.23.91',NULL,NULL,'2017-04-25 17:29:09'),
	(12,'/shooney/','211.200.135.21',NULL,NULL,'2017-04-25 21:40:52'),
	(13,'/shooney/','219.248.164.116',NULL,NULL,'2017-04-25 23:16:23'),
	(14,'/shooney/','219.248.164.116',NULL,NULL,'2017-04-26 00:00:17'),
	(15,'/shooney/','223.62.8.88',NULL,NULL,'2017-04-26 06:08:16'),
	(16,'/shooney/','123.215.23.91',NULL,NULL,'2017-04-26 09:15:47'),
	(17,'/shooney/','117.17.93.168',NULL,NULL,'2017-04-26 10:30:36'),
	(18,'/shooney/','124.243.13.151',NULL,NULL,'2017-04-26 13:32:25'),
	(19,'/shooney/','123.215.23.91',NULL,NULL,'2017-04-27 09:28:35'),
	(20,'/shooney/','124.243.13.151',NULL,NULL,'2017-04-27 13:49:13'),
	(21,'/shooney/blog/detail/3','219.248.164.116',NULL,NULL,'2017-04-27 21:05:04'),
	(22,'/shooney/','123.215.23.91',NULL,NULL,'2017-04-28 10:04:39'),
	(23,'/shooney/','219.248.164.116',NULL,NULL,'2017-05-03 12:16:18'),
	(24,'/shooney/','123.215.23.91',NULL,NULL,'2017-05-04 09:45:06'),
	(25,'/shooney/','121.140.36.75',NULL,NULL,'2017-05-04 20:31:24'),
	(26,'/shooney/','144.217.94.179',NULL,NULL,'2017-05-04 20:39:22'),
	(27,'/shooney/','183.101.139.153',NULL,NULL,'2017-05-04 22:05:11'),
	(28,'/shooney/','219.248.164.116',NULL,NULL,'2017-05-05 01:07:31'),
	(29,'/shooney/','116.39.228.75',NULL,NULL,'2017-05-06 18:38:17');

/*!40000 ALTER TABLE `TB_ACCESS_LOG` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TB_BLOG
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TB_BLOG`;

CREATE TABLE `TB_BLOG` (
  `BLOG_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BLOG_IDX` bigint(20) DEFAULT NULL,
  `BLOG_PORTFOLIO_TYPE` varchar(30) DEFAULT NULL,
  `BLOG_ENTITY_NAME` varchar(30) DEFAULT NULL,
  `BLOG_TITLE` varchar(150) NOT NULL,
  `BLOG_CONTENT` longtext NOT NULL,
  `BLOG_DEPTH` int(20) NOT NULL,
  `BLOG_HITS` int(40) NOT NULL,
  `BLOG_LIKES` int(20) NOT NULL,
  `BLOG_CREATED_BY` varchar(60) NOT NULL,
  `BLOG_CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `BLOG_MODIFIED_BY` varchar(60) DEFAULT NULL,
  `BLOG_MODIFIED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `BLOG_DEL_FLAG` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`BLOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `TB_BLOG` WRITE;
/*!40000 ALTER TABLE `TB_BLOG` DISABLE KEYS */;

INSERT INTO `TB_BLOG` (`BLOG_ID`, `BLOG_IDX`, `BLOG_PORTFOLIO_TYPE`, `BLOG_ENTITY_NAME`, `BLOG_TITLE`, `BLOG_CONTENT`, `BLOG_DEPTH`, `BLOG_HITS`, `BLOG_LIKES`, `BLOG_CREATED_BY`, `BLOG_CREATED_DATE`, `BLOG_MODIFIED_BY`, `BLOG_MODIFIED_DATE`, `BLOG_DEL_FLAG`)
VALUES
	(2,NULL,'JAVA','NOTICE','파일 업로드 테스트','file Upload and reply add and list ',12,47,0,'2222','2017-04-14 00:49:22',NULL,'2017-05-06 18:38:39','N'),
	(3,NULL,'JAVA','NOTICE','블로그 테스트!!','블로그 테스트',14,14,0,'shooney','2017-04-25 23:32:25',NULL,'2017-05-06 18:38:31','N');

/*!40000 ALTER TABLE `TB_BLOG` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TB_BLOG_PORTFOLIO
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TB_BLOG_PORTFOLIO`;

CREATE TABLE `TB_BLOG_PORTFOLIO` (
  `BF_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BF_COUNT` int(30) DEFAULT NULL,
  `BF_SUBJECT` varchar(30) NOT NULL,
  `BF_CREATED_BY` varchar(60) DEFAULT NULL,
  `BF_CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `BF_DEL_FLAG` varchar(1) DEFAULT NULL,
  `BF_MODIFIED_BY` varchar(60) DEFAULT NULL,
  `BF_MODIFIED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`BF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table TB_COMMENT
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TB_COMMENT`;

CREATE TABLE `TB_COMMENT` (
  `COMMENT_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `COMMENT_BLOG_ID` bigint(20) DEFAULT NULL,
  `COMMENT_ENTITY_NAME` varchar(20) NOT NULL DEFAULT '',
  `COMMENT_CONTENT` longtext NOT NULL,
  `COMMENT_LIKES` int(11) DEFAULT NULL,
  `COMMENT_CREATED_BY` varchar(60) NOT NULL,
  `COMMENT_CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `COMMENT_MODIFIED_BY` varchar(60) DEFAULT NULL,
  `COMMENT_MODIFIED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `COMMENT_DEL_FLAG` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`COMMENT_ID`),
  KEY `COMMENT_BOARD_FK` (`COMMENT_BLOG_ID`),
  CONSTRAINT `COMMENT_BOARD_FK` FOREIGN KEY (`COMMENT_BLOG_ID`) REFERENCES `TB_BLOG` (`BLOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `TB_COMMENT` WRITE;
/*!40000 ALTER TABLE `TB_COMMENT` DISABLE KEYS */;

INSERT INTO `TB_COMMENT` (`COMMENT_ID`, `COMMENT_BLOG_ID`, `COMMENT_ENTITY_NAME`, `COMMENT_CONTENT`, `COMMENT_LIKES`, `COMMENT_CREATED_BY`, `COMMENT_CREATED_DATE`, `COMMENT_MODIFIED_BY`, `COMMENT_MODIFIED_DATE`, `COMMENT_DEL_FLAG`)
VALUES
	(1,2,'blog','dfafas',0,'shooney','2017-04-22 01:57:33','shooney','2017-04-26 09:16:16','Y'),
	(2,2,'blog','fdfa',0,'shooney','2017-04-22 02:01:52','shooney','2017-04-26 09:16:11','Y'),
	(3,2,'blog','dsadsadsa',0,'shooney','2017-04-22 02:06:42','shooney','2017-04-26 09:16:10','Y'),
	(6,2,'blog','321321',0,'shooney','2017-04-22 11:56:06','shooney','2017-04-26 09:16:13','Y'),
	(7,2,'blog','321321',0,'shooney','2017-04-23 16:06:55','shooney','2017-04-26 09:16:12','Y'),
	(8,2,'blog','dsadsads',0,'shooney','2017-04-25 23:39:54','shooney','2017-04-26 09:16:15','Y'),
	(9,2,'blog','321231123123123',0,'shooney','2017-04-25 23:40:11','shooney','2017-04-26 09:16:14','Y'),
	(10,2,'blog','댓글 리스트 확인!!!!',0,'shooney','2017-04-25 23:40:19','shooney','2017-04-25 23:40:25','Y'),
	(11,2,'blog','댓글 삭제시 depth 미반영, 반영 필요',0,'shooney','2017-04-26 09:16:38','shooney','2017-04-27 09:29:43','Y'),
	(12,2,'blog','수정 삭제와 수정 버튼간의 디자인 미 일치 반영필요',0,'shooney','2017-04-26 09:17:04','shooney','2017-04-26 21:40:46','Y'),
	(13,3,'blog','^^',0,'urluv','2017-04-26 10:32:45','urluv','2017-04-26 10:33:42','Y'),
	(14,3,'blog','♡화띵✧٩(•́⌄•́๑)و ✧♡',0,'urluv','2017-04-26 10:33:38',NULL,'2017-04-26 10:33:38','N'),
	(15,3,'blog','ewqewq',0,'shooney','2017-04-26 23:50:55',NULL,'2017-04-26 23:50:55','N'),
	(16,3,'blog','페이징 완성.!!!',0,'shooney','2017-04-26 23:51:01',NULL,'2017-04-26 23:51:01','N'),
	(17,3,'blog','페이징 하기',0,'shooney','2017-04-26 23:51:05',NULL,'2017-04-26 23:51:05','N'),
	(18,3,'blog','페이징 하기테스트',0,'shooney','2017-04-26 23:51:09',NULL,'2017-04-26 23:51:09','N'),
	(19,3,'blog','페이징 하기테스트',0,'shooney','2017-04-26 23:51:11',NULL,'2017-04-26 23:51:11','N'),
	(20,3,'blog','페이징 하기테스트',0,'shooney','2017-04-26 23:51:12',NULL,'2017-04-26 23:51:12','N'),
	(21,3,'blog','페이징 하기테스트',0,'shooney','2017-04-26 23:51:13',NULL,'2017-04-26 23:51:13','N'),
	(22,3,'blog','페이징 하기테스트',0,'shooney','2017-04-26 23:51:26',NULL,'2017-04-26 23:51:26','N'),
	(23,3,'blog','페이징 하기테스트',0,'shooney','2017-04-26 23:51:27',NULL,'2017-04-26 23:51:27','N'),
	(24,3,'blog','페이징 하기테스트',0,'shooney','2017-04-26 23:51:28',NULL,'2017-04-26 23:51:28','N'),
	(25,3,'blog','ㄷㅈㅂㄷㅂ',0,'shooney','2017-04-26 23:51:32',NULL,'2017-04-26 23:51:32','N'),
	(26,3,'blog','ㅇㄴㅁ',0,'shooney','2017-04-26 23:51:34',NULL,'2017-04-26 23:51:34','N'),
	(27,2,'blog','댓글작성!!',0,'shooney','2017-04-27 09:29:37',NULL,'2017-04-27 09:29:37','N'),
	(28,2,'blog','Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!',0,'shooney','2017-04-27 09:29:54',NULL,'2017-04-27 09:29:54','N'),
	(29,2,'blog','Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!',0,'shooney','2017-04-27 09:29:56',NULL,'2017-04-27 09:29:56','N'),
	(30,2,'blog','Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!',0,'shooney','2017-04-27 09:29:57',NULL,'2017-04-27 09:29:57','N'),
	(31,2,'blog','페이징도 완성.!!!',0,'shooney','2017-04-27 09:30:01',NULL,'2017-04-27 09:30:01','N'),
	(32,2,'blog','페이징도 완성.!!!페이징도 완성.!!!',0,'shooney','2017-04-27 09:30:03',NULL,'2017-04-27 09:30:03','N'),
	(33,2,'blog','Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!',0,'shooney','2017-04-27 09:30:06',NULL,'2017-04-27 09:30:06','N'),
	(34,2,'blog','Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!',0,'shooney','2017-04-27 09:30:13',NULL,'2017-04-27 09:30:13','N'),
	(35,2,'blog','Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!',0,'shooney','2017-04-27 09:30:15',NULL,'2017-04-27 09:30:15','N'),
	(36,2,'blog','Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!',0,'shooney','2017-04-27 09:30:20',NULL,'2017-04-27 09:30:20','N'),
	(37,2,'blog','Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!',0,'shooney','2017-04-27 09:30:22',NULL,'2017-04-27 09:30:22','N'),
	(38,2,'blog','Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!Kaskade - We Don\'t Stop.mp3 (10226589kb)<br/>댓글완성!',0,'shooney','2017-04-27 09:30:33',NULL,'2017-04-27 09:30:33','N'),
	(39,3,'blog','good!',0,'ADiros','2017-04-27 13:51:13',NULL,'2017-04-27 13:51:13','N');

/*!40000 ALTER TABLE `TB_COMMENT` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TB_FILE_DATA
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TB_FILE_DATA`;

CREATE TABLE `TB_FILE_DATA` (
  `FILE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FILE_BLOG_ID` bigint(20) NOT NULL,
  `FILE_SAVED_NAME` varchar(200) NOT NULL,
  `FILE_SAVED_PATH` varchar(200) NOT NULL,
  `FILE_ORIGIN_NAME` varchar(100) NOT NULL,
  `FILE_SIZE` bigint(20) NOT NULL,
  `FILE_TYPE` varchar(50) NOT NULL DEFAULT '',
  `FILE_CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `FILE_CREATED_BY` varchar(60) NOT NULL,
  `FILE_MODIFIED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FILE_MODIFIED_BY` varchar(60) DEFAULT NULL,
  `FILE_DELCHECK` int(11) NOT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `FILE_BLOG_FK` (`FILE_BLOG_ID`),
  CONSTRAINT `FILE_BLOG_FK` FOREIGN KEY (`FILE_BLOG_ID`) REFERENCES `TB_BLOG` (`BLOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `TB_FILE_DATA` WRITE;
/*!40000 ALTER TABLE `TB_FILE_DATA` DISABLE KEYS */;

INSERT INTO `TB_FILE_DATA` (`FILE_ID`, `FILE_BLOG_ID`, `FILE_SAVED_NAME`, `FILE_SAVED_PATH`, `FILE_ORIGIN_NAME`, `FILE_SIZE`, `FILE_TYPE`, `FILE_CREATED_DATE`, `FILE_CREATED_BY`, `FILE_MODIFIED_DATE`, `FILE_MODIFIED_BY`, `FILE_DELCHECK`)
VALUES
	(1,2,'1083987f632c472f8cadbf452e4728eb.mp3','/opt/tomcat/files/','Kaskade - We Don\'t Stop.mp3',10226589,'audio/mp3','2017-04-14 00:49:22','2222','2017-04-14 00:49:22',NULL,0);

/*!40000 ALTER TABLE `TB_FILE_DATA` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TB_MENU
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TB_MENU`;

CREATE TABLE `TB_MENU` (
  `MENU_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `MENU_NAME` varchar(30) NOT NULL,
  `MENU_TYPE` varchar(30) NOT NULL,
  `MENU_DEPTH` int(10) NOT NULL,
  `MENU_ORDER` int(10) NOT NULL,
  `MENU_PARENT_ID` int(10) DEFAULT NULL,
  `MENU_URL` varchar(80) DEFAULT '',
  `MENU_CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `MENU_CREATED_BY` varchar(60) DEFAULT NULL,
  `MENU_DEL_FLAG` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `TB_MENU` WRITE;
/*!40000 ALTER TABLE `TB_MENU` DISABLE KEYS */;

INSERT INTO `TB_MENU` (`MENU_ID`, `MENU_NAME`, `MENU_TYPE`, `MENU_DEPTH`, `MENU_ORDER`, `MENU_PARENT_ID`, `MENU_URL`, `MENU_CREATED_DATE`, `MENU_CREATED_BY`, `MENU_DEL_FLAG`)
VALUES
	(1,'Home','admin',1,1,NULL,'','2017-04-16 16:59:45','shooney','N'),
	(2,'User','admin',1,2,NULL,'admin/user/list','2017-04-16 16:59:45','shooney','N'),
	(51,'Home','normal',1,1,NULL,'','2017-04-16 16:59:45','shooney','N'),
	(52,'Blog','normal',1,2,NULL,'blog/list','2017-04-16 16:59:45','shooney','N'),
	(53,'News','normal',1,3,NULL,'news/list','2017-04-16 16:59:45','shooney','N'),
	(54,'Music','normal',1,4,NULL,'music/list','2017-04-16 16:59:45','shooney','Y'),
	(59,'My Infomation','normal',1,9,NULL,NULL,'2017-04-16 16:59:45','shooney','N'),
	(63,'Profile','normal',2,1,59,'myinfo/profile','2017-04-16 20:57:03','shooney','N'),
	(64,'Attitude','normal',2,2,59,'myinfo/attitude','2017-04-16 20:57:03','shooney','N');

/*!40000 ALTER TABLE `TB_MENU` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TB_MUSIC
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TB_MUSIC`;

CREATE TABLE `TB_MUSIC` (
  `MUSIC_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `MUSIC_CREATED_BY` varchar(60) NOT NULL,
  `MUSIC_MODIFIED_BY` varchar(60) DEFAULT NULL,
  `MUSIC_CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `MUSIC_DELCHECK` int(11) NOT NULL,
  `MUSIC_IMAGE` varchar(255) NOT NULL,
  `MUSIC_LYRICS` varchar(255) DEFAULT NULL,
  `MUSIC_MODIFIED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MUSIC_SINGER` varchar(255) NOT NULL,
  `MUSIC_TITLE` varchar(255) NOT NULL,
  `MUSIC_URL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MUSIC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table TB_PERSISTENT_LOGINS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TB_PERSISTENT_LOGINS`;

CREATE TABLE `TB_PERSISTENT_LOGINS` (
  `PERSISTENT_SERIES` varchar(100) NOT NULL,
  `PERSISTENT_CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PERSISTENT_EMAIL` varchar(60) NOT NULL,
  `PERSISTENT_TOKEN` varchar(100) NOT NULL,
  PRIMARY KEY (`PERSISTENT_SERIES`),
  UNIQUE KEY `UK_4elfobbskdy6kt1upjn0r5lyc` (`PERSISTENT_EMAIL`),
  UNIQUE KEY `UK_4ci2ejthiyko7i0u2r2w4o9rg` (`PERSISTENT_TOKEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `TB_PERSISTENT_LOGINS` WRITE;
/*!40000 ALTER TABLE `TB_PERSISTENT_LOGINS` DISABLE KEYS */;

INSERT INTO `TB_PERSISTENT_LOGINS` (`PERSISTENT_SERIES`, `PERSISTENT_CREATED_DATE`, `PERSISTENT_EMAIL`, `PERSISTENT_TOKEN`)
VALUES
	('xpkNT7OGzGLqbUVqEthTLw==','2017-03-16 14:18:55','shun10114@gmail.com','GjBAc2JVBnU8MhyDDG9ZRw==');

/*!40000 ALTER TABLE `TB_PERSISTENT_LOGINS` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TB_USER
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TB_USER`;

CREATE TABLE `TB_USER` (
  `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_EMAIL` varchar(60) NOT NULL,
  `USER_NICKNAME` varchar(30) NOT NULL,
  `USER_PASSWORD` varchar(100) NOT NULL,
  `USER_STATE` varchar(20) NOT NULL,
  `USER_LOCKED_AUTH` varchar(100) DEFAULT NULL,
  `USER_RECEIVE_EMAIL` int(11) NOT NULL,
  `USER_MODIFIED_BY` varchar(60) DEFAULT NULL,
  `USER_MODIFIED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_DEL_FLAG` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `UK_idwnephhbxa1ssgxrodu90pru` (`USER_EMAIL`),
  UNIQUE KEY `UK_24e1ry1dmddo806n2eu664sfx` (`USER_NICKNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `TB_USER` WRITE;
/*!40000 ALTER TABLE `TB_USER` DISABLE KEYS */;

INSERT INTO `TB_USER` (`USER_ID`, `USER_EMAIL`, `USER_NICKNAME`, `USER_PASSWORD`, `USER_STATE`, `USER_LOCKED_AUTH`, `USER_RECEIVE_EMAIL`, `USER_MODIFIED_BY`, `USER_MODIFIED_DATE`, `USER_CREATED_DATE`, `USER_DEL_FLAG`)
VALUES
	(1,'shun10114@gmail.com','shooney','$2a$10$6wjan3FN3PYvwcYT8Tpeg.wXZCm84gU.B3e6ESDO4iom0FINkzv.a','ACTIVE',NULL,0,NULL,'2017-04-18 22:47:00','2017-04-18 22:47:00','N'),
	(2,'yeppuny1994@naver.com','urluv','$2a$10$EQjo6HDlweuq.oIMCQWGQeSq.AIgX0X9oSG2STXhI0FM8Qf8hyY4O','ACTIVE',NULL,0,NULL,'2017-04-26 10:32:13','2017-04-26 10:32:13','N'),
	(3,'cys0072000@gmail.com','ADiros','$2a$10$h3ieYXeAadhg4.9G/jyeJ.wSNEG7k8BkxuUtDtXX474oMj/2GVb/G','ACTIVE',NULL,0,NULL,'2017-04-27 13:49:46','2017-04-27 13:49:46','N');

/*!40000 ALTER TABLE `TB_USER` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TB_USER_ATTEMPTS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TB_USER_ATTEMPTS`;

CREATE TABLE `TB_USER_ATTEMPTS` (
  `USER_ATTEMPTS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_ATTEMPTS_COUNTS` int(11) NOT NULL,
  `USER_ATTEMPTS_CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_ATTEMPTS_EMAIL` varchar(60) NOT NULL,
  `USER_ATTEMPTS_LOGIN_IP` varchar(60) DEFAULT NULL,
  `USER_ATTEMPTS_SUCCESS_FLAG` int(11) DEFAULT NULL,
  PRIMARY KEY (`USER_ATTEMPTS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `TB_USER_ATTEMPTS` WRITE;
/*!40000 ALTER TABLE `TB_USER_ATTEMPTS` DISABLE KEYS */;

INSERT INTO `TB_USER_ATTEMPTS` (`USER_ATTEMPTS_ID`, `USER_ATTEMPTS_COUNTS`, `USER_ATTEMPTS_CREATED_DATE`, `USER_ATTEMPTS_EMAIL`, `USER_ATTEMPTS_LOGIN_IP`, `USER_ATTEMPTS_SUCCESS_FLAG`)
VALUES
	(1,0,'2017-04-18 22:47:13','shun10114@gmail.com','127.0.0.1',0),
	(2,0,'2017-04-18 23:28:11','shun10114@gmail.com','127.0.0.1',0),
	(3,0,'2017-04-21 15:26:29','shun10114@gmail.com','127.0.0.1',0),
	(4,0,'2017-04-21 17:20:28','shun10114@gmail.com','127.0.0.1',0),
	(5,0,'2017-04-22 00:35:52','shun10114@gmail.com','127.0.0.1',0),
	(6,0,'2017-04-22 02:06:23','shun10114@gmail.com','127.0.0.1',0),
	(7,0,'2017-04-22 11:55:30','shun10114@gmail.com','127.0.0.1',0),
	(8,0,'2017-04-23 16:00:00','shun10114@gmail.com','127.0.0.1',0),
	(9,0,'2017-04-25 23:31:28','shun10114@gmail.com','127.0.0.1',0),
	(10,0,'2017-04-26 00:40:36','shun10114@gmail.com','127.0.0.1',0),
	(11,0,'2017-04-26 09:16:02','shun10114@gmail.com','127.0.0.1',0),
	(12,0,'2017-04-26 10:32:37','yeppuny1994@naver.com','127.0.0.1',0),
	(13,0,'2017-04-26 13:02:31','shun10114@gmail.com','127.0.0.1',0),
	(14,0,'2017-04-26 13:02:38','shun10114@gmail.com','127.0.0.1',0),
	(15,0,'2017-04-26 21:39:28','shun10114@gmail.com','127.0.0.1',0),
	(16,0,'2017-04-26 23:56:18','shun10114@gmail.com','127.0.0.1',0),
	(17,0,'2017-04-27 09:29:20','shun10114@gmail.com','127.0.0.1',0),
	(18,0,'2017-04-27 13:50:40','cys0072000@gmail.com','127.0.0.1',0),
	(19,0,'2017-04-27 14:12:27','shun10114@gmail.com','127.0.0.1',0),
	(20,0,'2017-04-27 14:13:27','shun10114@gmail.com','127.0.0.1',0),
	(21,1,'2017-05-06 18:41:00','yeppuny1994@naver.com','',1);

/*!40000 ALTER TABLE `TB_USER_ATTEMPTS` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TB_USER_PROFILE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TB_USER_PROFILE`;

CREATE TABLE `TB_USER_PROFILE` (
  `USER_PROFILE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_PROFILE_TYPE` varchar(15) NOT NULL,
  PRIMARY KEY (`USER_PROFILE_ID`),
  UNIQUE KEY `UK_28lgbv40bmqn2twgoy5kxn5fx` (`USER_PROFILE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `TB_USER_PROFILE` WRITE;
/*!40000 ALTER TABLE `TB_USER_PROFILE` DISABLE KEYS */;

INSERT INTO `TB_USER_PROFILE` (`USER_PROFILE_ID`, `USER_PROFILE_TYPE`)
VALUES
	(1,'GUEST'),
	(3,'STAR'),
	(4,'SUPERADMIN'),
	(2,'USER');

/*!40000 ALTER TABLE `TB_USER_PROFILE` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TB_USER_PROFILE_REFER
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TB_USER_PROFILE_REFER`;

CREATE TABLE `TB_USER_PROFILE_REFER` (
  `USER_ID` bigint(20) NOT NULL,
  `USER_PROFILE_ID` int(11) NOT NULL,
  PRIMARY KEY (`USER_ID`,`USER_PROFILE_ID`),
  KEY `FKf8b4mqr1f1rgnfv24to0qa7rq` (`USER_PROFILE_ID`),
  CONSTRAINT `FKf8b4mqr1f1rgnfv24to0qa7rq` FOREIGN KEY (`USER_PROFILE_ID`) REFERENCES `TB_USER_PROFILE` (`USER_PROFILE_ID`),
  CONSTRAINT `FKrpo7q8qoeejkifqth4apl0bv9` FOREIGN KEY (`USER_ID`) REFERENCES `TB_USER` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `TB_USER_PROFILE_REFER` WRITE;
/*!40000 ALTER TABLE `TB_USER_PROFILE_REFER` DISABLE KEYS */;

INSERT INTO `TB_USER_PROFILE_REFER` (`USER_ID`, `USER_PROFILE_ID`)
VALUES
	(1,4),
	(2,2),
	(3,2);

/*!40000 ALTER TABLE `TB_USER_PROFILE_REFER` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;