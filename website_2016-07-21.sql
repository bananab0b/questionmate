# ************************************************************
# Sequel Pro SQL dump
# Version 4529
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.10-MariaDB)
# Datenbank: website
# Erstellt am: 2016-07-21 20:01:45 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Export von Tabelle polls
# ------------------------------------------------------------

DROP TABLE IF EXISTS `polls`;

CREATE TABLE `polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question` text,
  `starts` date DEFAULT NULL,
  `ends` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `polls` WRITE;
/*!40000 ALTER TABLE `polls` DISABLE KEYS */;

INSERT INTO `polls` (`id`, `question`, `starts`, `ends`)
VALUES
	(1,'Wurdest du schoneinmal gefriendzoned?','2000-10-10','2030-10-10'),
	(2,'Was ist das beste Hausmittel gegen schnupfen?\n','2000-10-10','2030-10-10'),
	(3,'Wie viel ist Pi?\n','2000-10-10','2030-10-10'),
	(73,'Wie groÃŸ ist dein Penis?','0000-00-00','2030-10-10'),
	(74,'Welche Farbe mÃ¶gt ihr am meisten?','0000-00-00','2030-10-10'),
	(75,'oiadjwidjwaio','0000-00-00','2030-10-10');

/*!40000 ALTER TABLE `polls` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle polls_answers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `polls_answers`;

CREATE TABLE `polls_answers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(200) DEFAULT NULL,
  `poll` int(11) DEFAULT NULL,
  `choice` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `polls_answers` WRITE;
/*!40000 ALTER TABLE `polls_answers` DISABLE KEYS */;

INSERT INTO `polls_answers` (`id`, `user`, `poll`, `choice`)
VALUES
	(3,NULL,NULL,NULL),
	(4,'1',1,1),
	(5,'1',2,4),
	(6,NULL,1,1),
	(7,NULL,2,4),
	(8,'6',1,3),
	(9,'8',1,1),
	(10,'8',2,5),
	(12,'8',57,126),
	(13,'8',58,129),
	(14,'8',70,178),
	(15,'8',71,180),
	(16,'8',72,185),
	(17,'8',73,188),
	(18,'8',74,193),
	(19,'8',75,196);

/*!40000 ALTER TABLE `polls_answers` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle polls_choices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `polls_choices`;

CREATE TABLE `polls_choices` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `poll` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `polls_choices` WRITE;
/*!40000 ALTER TABLE `polls_choices` DISABLE KEYS */;

INSERT INTO `polls_choices` (`id`, `poll`, `name`)
VALUES
	(1,1,'Ja'),
	(2,1,'Nein'),
	(3,1,'Bin mir nicht sicher'),
	(4,2,'Kokain'),
	(5,2,'Warmes Bier mit zitrone'),
	(6,2,'hopfen'),
	(188,73,'8m'),
	(189,73,'0.2m'),
	(190,73,'99,9m'),
	(191,73,''),
	(192,74,'Blau'),
	(193,74,'GrÃ¼n'),
	(194,74,'Rot'),
	(195,74,''),
	(196,75,'joiwjdoijaoijoijoi'),
	(197,75,'joijwoaijcawioj'),
	(198,75,''),
	(199,75,'');

/*!40000 ALTER TABLE `polls_choices` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`)
VALUES
	(1,'alex'),
	(2,'billy');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
