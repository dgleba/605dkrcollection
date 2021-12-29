-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dgnote130
-- ------------------------------------------------------
-- Server version	5.5.62-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `dgnote130`
--

-- /*!40000 DROP DATABASE IF EXISTS `dgnote130`*/;

-- CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dgnote130` /*!40100 DEFAULT CHARACTER SET latin1 */;

-- USE `dgnote130`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'editor');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (3,1,13),(4,1,14),(1,1,25),(2,1,26);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add question',7,'add_question'),(20,'Can change question',7,'change_question'),(21,'Can delete question',7,'delete_question'),(22,'Can add choice',8,'add_choice'),(23,'Can change choice',8,'change_choice'),(24,'Can delete choice',8,'delete_choice'),(25,'Can add nte note',9,'add_ntenote'),(26,'Can change nte note',9,'change_ntenote'),(27,'Can delete nte note',9,'delete_ntenote');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$mFp1hRupVGGF$RuG7qJ0ih19rIn5WuBCmbp0zYTl5GNfLbkc8oX7LpR8=','2015-11-19 18:08:07',0,'dgleba','','','dgleba@gmail.com',1,1,'2015-11-19 17:22:29'),(2,'pbkdf2_sha256$20000$z2X8leOXQDAP$KJOUE2R6T2Xpqhp1jjLoDB1+SoLijyj2AJdb1hIx2Ww=','2016-01-19 13:25:25',1,'admin','','','dgleba@gmail.com',1,1,'2015-11-19 17:22:43');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,1,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `genre` enum('fantasy','mystery','nonfiction') NOT NULL,
  `description` text NOT NULL,
  `obs.id` text NOT NULL,
  `obs_id` text NOT NULL,
  `obs-id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'The Lord of the Rings','fantasy','The Lord of the Rings is an epic fantasy novel written by philologist and University of Oxford professor J. R. R. Tolkien (from Wikipedia).','','',''),(2,'The Maltese Falcon','mystery','The Maltese Falcon is a 1930 detective novel by Dashiell Hammett, originally serialized in the magazine Black Mask (from Wikipedia).','','',''),(3,'Economics in One Lesson','nonfiction','dg2. Economics in One Lesson is an introduction to free market economics written by Henry Hazlitt and published in 1946, based on FrÃ©dÃ©ric Bastiat\\\'s essay Ce qu\\\'on voit et ce qu\\\'on ne voit pas (English: \\\"What is Seen and What is Not Seen\\\") (from Wikipedia).','','',''),(4,'dg2','mystery','a book for dg.','','',''),(5,'a','fantasy','2015-10-05_Mon_12.25-PM','','','');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copy_nte_note`
--

DROP TABLE IF EXISTS `copy_nte_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copy_nte_note` (
  `note_id` int(11) NOT NULL AUTO_INCREMENT,
  `note_fld` text,
  `tags_fld` varchar(244) DEFAULT NULL,
  `state_fld` varchar(99) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  `datenote` datetime DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT 'Yes',
  `note2` text,
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copy_nte_note`
--

LOCK TABLES `copy_nte_note` WRITE;
/*!40000 ALTER TABLE `copy_nte_note` DISABLE KEYS */;
INSERT INTO `copy_nte_note` VALUES (2840,'2013-04-08_Mon_11.49-AM',NULL,NULL,NULL,NULL,NULL,'2013-04-08 15:49:08','2013-04-15 11:49:15',NULL,NULL,'2013-04-08_Mon_11.49-AM'),(2841,NULL,NULL,NULL,NULL,NULL,NULL,'2013-04-08 15:50:09','2013-04-08 11:50:09',NULL,NULL,NULL),(2842,'11:56AM',NULL,NULL,NULL,NULL,NULL,'2013-04-08 15:56:29','2013-04-15 11:53:44',NULL,'No','11:56AM'),(2843,'2013-04-08_Mon_12.01-PM',NULL,NULL,NULL,NULL,NULL,'2013-04-08 16:01:39','2013-04-15 11:49:37',NULL,NULL,'2013-04-08_Mon_12.01-PM'),(2844,'<p>tagger1.</p>\r\n<p>2013-04-08_Mon_12.04-PM</p>',NULL,NULL,NULL,NULL,NULL,'2013-04-08 16:04:21','2013-04-08 12:05:29',NULL,NULL,'<p>tagger1.</p>\r\n<p>2013-04-08_Mon_12.04-PM</p>'),(2845,'2845\r\n',NULL,NULL,NULL,NULL,NULL,'2013-04-08 19:13:48','2013-04-24 15:43:18',NULL,'No','2845\r\n'),(2846,NULL,NULL,NULL,NULL,NULL,NULL,'2013-04-08 19:53:15','2013-04-08 15:53:15',NULL,NULL,NULL),(2847,' 2013-04-09_Tue_08.26-AM ',NULL,'Tennessee',NULL,NULL,NULL,'2013-04-09 12:26:16','2013-09-11 11:05:04',NULL,'Yes','2013-04-09_Tue_08.26-AM'),(2848,NULL,NULL,NULL,NULL,NULL,NULL,'2013-04-09 12:31:02','2013-04-09 08:32:07','2013-04-09 11:31:23','Yes',NULL),(2849,NULL,NULL,NULL,NULL,NULL,NULL,'2013-04-09 12:47:16','2013-04-10 09:19:50','2013-04-09 08:47:23','Yes',NULL),(2850,'q',NULL,NULL,NULL,NULL,NULL,'2013-04-15 18:16:23','2013-04-15 14:16:56','2013-04-10 14:16:23',NULL,'q'),(2851,'Either spotting a gap in the market or just out of loyalty to its best buddy Microsoft, Dell has released its own Windows RT slate. Aimed at business users, the 10.1-inch Dell XPS 10 is another transformer-style laptop-tablet hybrid, shipping with an attachable keyboard that turns it into a laptop for working on the move.\r\nThe Dell XPS 10 falls into a crowded market, with a host of devices aiming to please similar needs. The Asus VivoTab, Samsung Ativ Tab and of course the Microsoft Surface RT are all offering the same USP, and there are other hybrids such as the Lenovo IdeaPad Yoga 11 too.\r\nWhile there\'s no shortage of big players in the market, Dell\'s late arrival doesn\'t mean it\'s too far behind; no RT device has gained any traction to date.\r\n\r\nBuying Guide\r\n\r\n10 best tablet PCs in the world today\r\nThe XPS 10 fits perfectly into Dell\'s line up of high end machines, joining its XPS 12, XPS 13 and XPS 15 siblings. It looks like an XPS, with a soft black finish and a rubberised texture, and the same rounded chiclet keys adorning the base station.\r\nThe XPS range is certainly high quality, and each component of the 10-inch RT tablet follows this design ethos to a tee.\r\nCompared to some notable offenders, Dell has managed to keep the price down to a reasonable level. The base level 32GB device without the keyboard costs £299/US$449.99, the 32GB version with the keyboard dock costs £409/US$599.99, the 64GB without a keyboard costs £339/US$499.99, while the 64GB version with the dock is £444/US$649.99.\r\n',NULL,NULL,NULL,NULL,NULL,'2013-04-18 15:12:59','2013-04-18 11:49:54',NULL,NULL,'Either spotting a gap in the market or just out of loyalty to its best buddy Microsoft, Dell has released its own Windows RT slate. Aimed at business users, the 10.1-inch Dell XPS 10 is another transformer-style laptop-tablet hybrid, shipping with an attachable keyboard that turns it into a laptop for working on the move.\r\nThe Dell XPS 10 falls into a crowded market, with a host of devices aiming to please similar needs. The Asus VivoTab, Samsung Ativ Tab and of course the Microsoft Surface RT are all offering the same USP, and there are other hybrids such as the Lenovo IdeaPad Yoga 11 too.\r\nWhile there\'s no shortage of big players in the market, Dell\'s late arrival doesn\'t mean it\'s too far behind; no RT device has gained any traction to date.\r\n\r\nBuying Guide\r\n\r\n10 best tablet PCs in the world today\r\nThe XPS 10 fits perfectly into Dell\'s line up of high end machines, joining its XPS 12, XPS 13 and XPS 15 siblings. It looks like an XPS, with a soft black finish and a rubberised texture, and the same rounded chiclet keys adorning the base station.\r\nThe XPS range is certainly high quality, and each component of the 10-inch RT tablet follows this design ethos to a tee.\r\nCompared to some notable offenders, Dell has managed to keep the price down to a reasonable level. The base level 32GB device without the keyboard costs £299/US$449.99, the 32GB version with the keyboard dock costs £409/US$599.99, the 64GB without a keyboard costs £339/US$499.99, while the 64GB version with the dock is £444/US$649.99.\r\n'),(2852,'test mail send',NULL,NULL,NULL,NULL,NULL,'2013-04-19 18:09:18','2013-04-19 14:09:18','2013-04-19 14:09:23',NULL,'test mail send'),(2853,'test tags',NULL,NULL,NULL,NULL,NULL,'2013-04-19 18:09:53','2013-04-19 14:09:53',NULL,NULL,'test tags'),(2854,'04:00PM',NULL,NULL,NULL,NULL,NULL,'2013-04-19 20:00:52','2013-04-19 16:00:52',NULL,NULL,'04:00PM'),(2855,'04:27PM',NULL,NULL,NULL,NULL,NULL,'2013-04-19 20:27:08','2013-04-19 16:27:08',NULL,NULL,'04:27PM'),(2856,'2013-04-19_Fri_16.29-PM\r\ntest note.\r\n.\r\nx',NULL,NULL,NULL,NULL,NULL,'2013-04-19 20:30:11','2013-04-19 16:30:11',NULL,NULL,'2013-04-19_Fri_16.29-PM\r\ntest note.\r\n.\r\nx'),(2857,'2013-04-22_Mon_10.30-AM test csd email',NULL,NULL,NULL,NULL,NULL,'2013-04-22 14:30:55','2013-04-22 10:30:55','2013-04-22 10:30:23','Yes','2013-04-22_Mon_10.30-AM test csd email'),(2858,'a',NULL,NULL,NULL,NULL,NULL,'2013-04-22 14:33:43','2013-04-22 10:33:43','2013-04-22 10:33:23','No','a'),(2859,'test double email',NULL,NULL,NULL,NULL,NULL,'2013-04-22 14:40:15','2013-04-22 10:40:15','2013-04-22 10:40:23','Yes','test double email'),(2860,'cleaned up',NULL,NULL,NULL,NULL,NULL,'2013-04-22 15:03:50','2013-04-22 11:03:50','2013-04-22 11:03:23','Yes','cleaned up'),(2861,'Get Involved\r\n\r\nIf you want to help contribute to Ubuntu then you\'ve come to the right place. Keep reading to learn how.\r\n\r\nYou have just taken your first step toward getting involved. Before you get started, we ask that you please observe the Ubuntu Code of Conduct, it\'s not very long and it will help you get started.\r\n\r\nNow that\'s done. To find out the best way to get started, you should check out our community page.\r\n\r\nTeams\r\n\r\nThe Teams page contains a listing of all the various Community Teams, links to their Wiki Home Pages and\r\n\r\nMost Teams\' Wiki Home Pages provide information about who they are, what they do, when their meetings are and how to contact them. Using these pages, teammates are able communicate and coordinate projects.\r\n\r\nGovernance and Membership\r\n\r\nLike most communities, we have our rules and governing body.\r\n\r\nAnyone can join and participate in most, if not all, of our Teams and Projects. But if you want an \"@ubuntu.com\" e-mail address, it has to be earned. Find out how in our Membership section.\r\n\r\nCommunity Links\r\n\r\nAs an active member of our community, you probably should check out what else is going on in the world of Ubuntu:\r\n\r\nThe Fridge posts all the latest News and Upcoming Events.\r\nPlanet Ubuntu is a collection of community blogs.\r\nAlso you can help at Ubuntu Brainstorm by submitting your ideas to make Ubuntu better OS for everyone.\r\n\r\nIf you are interested to get to know other Ubuntu users or see a list of Ubuntu teams outside the general Ubuntu world, check out our social network page.\r\n\r\nReleases',NULL,NULL,NULL,NULL,NULL,'2013-04-22 15:07:43','2013-04-22 11:07:43','2013-04-22 11:07:23','Yes','Get Involved\r\n\r\nIf you want to help contribute to Ubuntu then you\'ve come to the right place. Keep reading to learn how.\r\n\r\nYou have just taken your first step toward getting involved. Before you get started, we ask that you please observe the Ubuntu Code of Conduct, it\'s not very long and it will help you get started.\r\n\r\nNow that\'s done. To find out the best way to get started, you should check out our community page.\r\n\r\nTeams\r\n\r\nThe Teams page contains a listing of all the various Community Teams, links to their Wiki Home Pages and\r\n\r\nMost Teams\' Wiki Home Pages provide information about who they are, what they do, when their meetings are and how to contact them. Using these pages, teammates are able communicate and coordinate projects.\r\n\r\nGovernance and Membership\r\n\r\nLike most communities, we have our rules and governing body.\r\n\r\nAnyone can join and participate in most, if not all, of our Teams and Projects. But if you want an \"@ubuntu.com\" e-mail address, it has to be earned. Find out how in our Membership section.\r\n\r\nCommunity Links\r\n\r\nAs an active member of our community, you probably should check out what else is going on in the world of Ubuntu:\r\n\r\nThe Fridge posts all the latest News and Upcoming Events.\r\nPlanet Ubuntu is a collection of community blogs.\r\nAlso you can help at Ubuntu Brainstorm by submitting your ideas to make Ubuntu better OS for everyone.\r\n\r\nIf you are interested to get to know other Ubuntu users or see a list of Ubuntu teams outside the general Ubuntu world, check out our social network page.\r\n\r\nReleases'),(2862,'b',NULL,NULL,NULL,NULL,NULL,'2013-04-22 15:11:08','2013-04-22 11:11:08','2013-04-22 11:11:23','Yes','b'),(2863,'Weiss\r\n',NULL,NULL,NULL,NULL,NULL,'2013-04-22 15:28:44','2013-04-22 11:28:44','2013-04-22 11:28:23','Yes','Weiss\r\n'),(2864,'email on?',NULL,NULL,NULL,NULL,NULL,'2013-04-24 16:04:36','2013-04-24 12:04:36','2013-04-24 12:04:23','Yes','email on?'),(2865,'2013-04-24_Wed_14.22-PM test with filter. 03:48PM',NULL,NULL,NULL,NULL,NULL,'2013-04-24 18:22:42','2013-04-24 15:48:41','2013-04-24 14:22:23','Yes','2013-04-24_Wed_14.22-PM test with filter. 03:48PM'),(2866,'moved default filter to index.php',NULL,NULL,NULL,NULL,NULL,'2013-04-24 19:34:19','2013-04-24 15:34:19','2013-04-24 15:34:23',NULL,'moved default filter to index.php'),(2867,'moved default filter to index.php',NULL,NULL,NULL,NULL,NULL,'2013-04-24 19:35:00','2013-04-24 15:35:00','2013-04-24 15:34:23',NULL,'moved default filter to index.php'),(2868,'a',NULL,NULL,NULL,NULL,NULL,'2013-04-24 19:35:31','2013-04-24 15:35:31','2013-04-24 15:35:23','Yes','a'),(2869,'a',NULL,NULL,NULL,NULL,NULL,'2013-04-24 19:35:34','2013-04-24 15:35:34','2013-04-24 15:35:23','Yes','a'),(2870,'test index.php filter',NULL,NULL,NULL,NULL,NULL,'2013-04-24 19:37:08','2013-04-24 15:37:08','2013-04-24 15:37:23','No','test index.php filter'),(2871,'a',NULL,NULL,NULL,NULL,NULL,'2013-04-24 19:41:51','2013-04-24 15:41:51','2013-04-24 15:41:23','Yes','a'),(2872,'   2013-04-25_Thu_09.58-AM   ',NULL,NULL,NULL,NULL,NULL,'2013-04-25 13:59:01','2013-09-16 14:36:28','2013-09-16 13:44:23','','2013-04-25_Thu_09.58-AM'),(2873,'2013-04-25_Thu_10.29-AM default sort in sql in fields.ini',NULL,NULL,NULL,NULL,NULL,'2013-04-25 14:29:35','2013-04-25 10:29:35','2013-04-25 10:29:23','Yes','2013-04-25_Thu_10.29-AM default sort in sql in fields.ini'),(2874,'2013-04-25_Thu_10.36-AM test view add',NULL,NULL,NULL,NULL,NULL,'2013-04-25 14:36:50','2013-04-25 10:36:50','2013-04-25 10:36:23','Yes','2013-04-25_Thu_10.36-AM test view add'),(2875,'2013-04-25_Thu_10.41-AM test view add',NULL,NULL,NULL,NULL,NULL,'2013-04-25 14:41:22','2013-04-25 10:41:22','2013-04-25 10:41:23',NULL,'2013-04-25_Thu_10.41-AM test view add'),(2876,'2013-04-25_Thu_10.49-AM',NULL,NULL,NULL,NULL,NULL,'2013-04-25 14:49:23','2013-04-25 10:49:23','2013-04-25 10:49:23','Yes','2013-04-25_Thu_10.49-AM'),(2877,'    2013-04-25_Thu_10.53-AM \r\nAdam\r\nHere \r\n\r\nA b\r\n  ','Quite','New Jersey',NULL,NULL,NULL,'2013-04-25 14:53:35','2013-09-16 14:43:52','2013-09-16 14:43:23','Yes','2013-04-25_Thu_10.53-AM'),(2878,'     2013-04-25_Thu_10.54-AM     ',NULL,NULL,NULL,NULL,NULL,'2013-04-25 14:54:14','2013-09-12 14:28:34','2013-09-12 14:25:22','Yes','2013-04-25_Thu_10.54-AM'),(2879,'test email from filtered table',NULL,NULL,NULL,NULL,NULL,'2013-04-29 13:12:21','2013-04-29 09:12:21','2013-04-29 09:12:23','Yes','test email from filtered table'),(2880,'  test two email  b',NULL,'Nevada',NULL,NULL,NULL,'2013-04-29 18:31:54','2013-09-16 09:50:50',NULL,'','test two email'),(2881,' test bcc cc. 2013-04-30_Tue_11.18-AM ','dash b',NULL,NULL,NULL,NULL,'2013-04-29 18:36:27','2013-09-19 13:44:15','2013-04-29 14:36:23','Yes','test bcc cc. 2013-04-30_Tue_11.18-AM'),(2882,'2013-05-02_Thu_13.22-PM test offline',NULL,NULL,NULL,NULL,NULL,'2013-05-02 17:24:06','2013-05-02 13:24:06','2013-05-02 13:22:23','Yes','2013-05-02_Thu_13.22-PM test offline'),(2883,'moved xampp from c p2 websw to c p2',NULL,NULL,NULL,NULL,NULL,'2013-05-02 19:37:30','2013-05-02 15:37:30',NULL,'Yes','moved xampp from c p2 websw to c p2'),(2884,'    testing mysql copy with xcopy    ',NULL,'Vermont',NULL,NULL,NULL,'2013-05-03 13:27:11','2013-09-13 11:15:39',NULL,'Yes','testing mysql copy with xcopy'),(2885,' going  home ',NULL,'District of Columbia',NULL,NULL,NULL,'2013-05-06 20:36:19','2013-09-12 13:41:26',NULL,'No','going  home'),(2886,'test',NULL,NULL,NULL,NULL,NULL,'2013-05-22 17:44:36','2013-08-01 12:14:00','0000-05-13 00:00:00','Yes','test'),(2887,'a',NULL,NULL,NULL,NULL,NULL,'2013-06-21 13:20:17','2013-06-21 09:20:17',NULL,'Yes','a'),(2888,NULL,NULL,NULL,NULL,NULL,NULL,'2013-08-01 16:02:11','2013-08-01 12:12:37','0000-05-23 00:00:00','Yes',NULL),(2889,'test',NULL,NULL,NULL,NULL,NULL,'2013-08-07 16:01:49','2013-08-07 12:01:49',NULL,NULL,'test'),(2890,' test default active = yes ','artsy','Florida',NULL,NULL,NULL,'2013-08-07 16:08:48','2013-09-11 10:52:30','2013-09-11 10:52:23','Yes','test default active = yes'),(2891,' a,2013-08-07_Wed_12.51-PM2013-08-15_Thu_11.11-AM ',NULL,'Maine',NULL,NULL,NULL,'2013-08-07 16:51:17','2013-09-11 10:13:47',NULL,'Yes','2013-08-07_Wed_12.51-PM'),(2892,'5,  12:15PM',NULL,NULL,NULL,NULL,NULL,'2013-09-04 16:15:50','2013-09-04 15:40:11',NULL,'Yes',NULL),(2893,' dash\r\n2013-09-16_Mon_15.35-PM ',NULL,'Hawaii',NULL,NULL,NULL,'2013-09-16 19:35:17','2013-09-16 15:35:57','2013-09-16 15:35:23','Yes',NULL),(2894,'d','d','Mississippi',NULL,NULL,NULL,'2013-09-17 13:57:38','2013-09-17 09:57:38','2013-09-17 09:57:23','',NULL),(2895,NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-17 14:42:10','2013-09-17 10:42:10','2013-09-17 10:42:23','',NULL),(2896,NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-17 14:42:22','2013-09-17 10:42:22','2013-09-17 10:42:23','',NULL),(2897,NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-17 14:46:13','2013-09-17 10:46:13','2013-09-17 10:44:23',NULL,NULL),(2898,NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-17 14:58:11','2013-09-17 10:58:11','2013-09-17 10:58:23',NULL,NULL),(2899,'  Yellow',NULL,'New Jersey',NULL,NULL,NULL,'2013-09-17 15:06:45','2013-09-19 14:53:58','2013-09-17 11:06:23','',NULL),(2900,'a','b','Vermont',NULL,NULL,NULL,'2013-09-17 15:20:44','2013-09-17 11:20:44','2013-09-17 11:20:23','Yes',NULL),(2901,'    Wish 2 ','sell','Rhode Island',NULL,NULL,NULL,'2013-09-17 15:42:50','2013-09-19 14:54:43','2013-09-17 11:42:23','Yes',NULL),(2902,'2013-09-17_Tue_12.24-PM',NULL,'Wisconsin',NULL,NULL,NULL,'2013-09-17 16:24:48','2013-09-17 12:24:48','2013-09-17 12:24:23','Yes',NULL),(2903,NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-17 18:50:59','2013-09-17 14:50:59','2013-09-17 14:50:23','Yes',NULL),(2904,'Green','Gramm',NULL,NULL,NULL,NULL,'2013-09-19 18:55:30','2013-09-19 14:55:30','2013-09-19 14:54:23','Yes',NULL),(2905,' Henry ',NULL,'West Virginia',NULL,NULL,NULL,'2013-09-19 18:57:18','2013-09-19 15:00:22','2013-09-19 14:59:23','Yes',NULL),(2906,'Wash','am','Tennessee',NULL,NULL,NULL,'2013-09-20 12:57:30','2013-09-20 08:57:30','2013-09-20 08:56:23','Yes',NULL),(2907,'Leak','X','District of Columbia',NULL,NULL,NULL,'2013-09-20 20:09:53','2013-09-20 16:09:53','2013-09-20 16:08:23','Yes',NULL),(2908,' a ','a','Minnesota',NULL,NULL,NULL,'2013-09-23 20:11:32','2013-09-23 16:12:14','2013-09-23 16:11:23','Yes',NULL),(2909,'04:12PM',NULL,NULL,NULL,NULL,NULL,'2013-09-23 20:12:31','2013-09-23 16:12:31','2013-09-23 16:12:23','Yes',NULL),(2910,'b','computer problem, xataface, gustin, ','Indiana',NULL,NULL,NULL,'2013-11-26 19:26:57','2013-11-26 14:26:57','2013-11-26 14:26:23','Yes',NULL),(2911,'Test','computer problem, work, word, ','Massachusetts',NULL,NULL,NULL,'2014-03-04 15:48:24','2014-03-04 10:48:24','2014-03-04 10:47:23','Yes',NULL),(2912,'d','computer problem, ','West Virginia',NULL,NULL,NULL,'2014-06-04 19:31:31','2014-06-04 15:31:31','2014-06-04 15:31:23','No',NULL),(2913,'a','a','a',NULL,NULL,NULL,'2014-06-04 19:32:57','2014-06-04 15:32:57','2014-06-04 15:32:23','No',NULL),(2914,'b','b','b',NULL,NULL,NULL,'2014-06-04 19:33:54','2014-06-04 15:33:54','2014-06-04 15:33:23','Yes',NULL),(2915,'a','a','a',NULL,NULL,NULL,'2014-06-04 19:35:38','2014-06-04 15:35:38','2014-06-04 15:35:23','Yes',NULL),(2916,'a','q','q',NULL,NULL,NULL,'2014-06-04 19:44:16','2014-06-04 15:44:16','2014-06-04 15:35:23','Yes',NULL),(2917,'a','w','w',NULL,NULL,NULL,'2014-06-04 19:46:25','2014-06-04 15:46:25','2014-06-04 15:35:23','Yes',NULL),(2918,'a','w','w',NULL,NULL,NULL,'2014-06-04 19:47:48','2014-06-04 15:47:48','2014-06-04 15:35:23','Yes',NULL),(2919,'2015-07-08_Wed_16.44-PM',NULL,NULL,1,3,8,'2015-07-08 20:44:56','2015-07-08 16:44:56',NULL,'Yes',NULL),(2920,NULL,NULL,NULL,2,1,2,'2015-07-08 20:53:44','2015-07-08 16:53:44',NULL,'Yes',NULL),(2921,' 2015-07-08_Wed_19.29-PM ',NULL,NULL,2,1,11,'2015-07-08 23:29:43','2016-07-29 16:18:15',NULL,'Yes',NULL),(2922,NULL,NULL,NULL,NULL,NULL,NULL,'2015-07-09 20:16:07','2015-07-09 16:16:07',NULL,'Yes','2015-07-09'),(2923,NULL,NULL,NULL,NULL,NULL,NULL,'2015-07-09 20:17:07','2015-07-09 16:17:07',NULL,'Yes','2015-07-09_Thu_16.17-PM'),(2924,NULL,NULL,NULL,2,1,1,'2015-07-09 20:35:30','2015-07-09 16:35:07',NULL,'Yes',NULL),(2925,NULL,NULL,NULL,NULL,NULL,NULL,'2015-07-09 20:36:44','2015-07-09 16:36:21',NULL,'Yes',NULL),(2926,NULL,NULL,NULL,1,3,7,'2015-07-09 20:37:09','2015-07-09 16:36:46',NULL,'Yes',NULL),(2927,NULL,NULL,NULL,NULL,NULL,NULL,'2015-07-09 20:37:50','2015-07-09 16:37:27',NULL,'Yes',NULL),(9999,'2015-11-19_Thu_13.08-PM\r\ntest','','Detroit',NULL,NULL,NULL,NULL,NULL,NULL,'Yes',NULL),(10000,NULL,NULL,NULL,2,1,2,'2016-03-24 17:46:39','2016-03-24 13:46:16',NULL,'Yes',NULL),(10001,NULL,'computer problem, ',NULL,NULL,NULL,NULL,'2016-08-24 20:40:13','2016-08-24 16:40:13',NULL,'Yes',NULL),(10002,'a','computer problem, ',NULL,NULL,NULL,NULL,'2016-08-24 20:40:28','2016-08-24 16:40:28',NULL,'Yes','a'),(10003,'a',NULL,NULL,NULL,NULL,NULL,'2020-05-06 01:24:37',NULL,NULL,'Yes',NULL);
/*!40000 ALTER TABLE `copy_nte_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard` (
  `dashboard_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`dashboard_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard`
--

LOCK TABLES `dashboard` WRITE;
/*!40000 ALTER TABLE `dashboard` DISABLE KEYS */;
INSERT INTO `dashboard` VALUES (1);
/*!40000 ALTER TABLE `dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__datagrids`
--

DROP TABLE IF EXISTS `dataface__datagrids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__datagrids` (
  `gridID` int(11) NOT NULL AUTO_INCREMENT,
  `gridName` varchar(64) NOT NULL,
  `gridData` text,
  `tableName` varchar(64) NOT NULL,
  PRIMARY KEY (`gridID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__datagrids`
--

LOCK TABLES `dataface__datagrids` WRITE;
/*!40000 ALTER TABLE `dataface__datagrids` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataface__datagrids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__failed_logins`
--

DROP TABLE IF EXISTS `dataface__failed_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__failed_logins` (
  `attempt_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `time_of_attempt` int(11) NOT NULL,
  PRIMARY KEY (`attempt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__failed_logins`
--

LOCK TABLES `dataface__failed_logins` WRITE;
/*!40000 ALTER TABLE `dataface__failed_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataface__failed_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__htmlreports_reports`
--

DROP TABLE IF EXISTS `dataface__htmlreports_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__htmlreports_reports` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `actiontool_name` varchar(255) DEFAULT NULL,
  `actiontool_category` varchar(255) DEFAULT NULL,
  `actiontool_label` varchar(255) DEFAULT NULL,
  `actiontool_permission` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `tablename` varchar(255) NOT NULL,
  `template_css` text,
  `template_html` longtext NOT NULL,
  `default_view` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `private` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__htmlreports_reports`
--

LOCK TABLES `dataface__htmlreports_reports` WRITE;
/*!40000 ALTER TABLE `dataface__htmlreports_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataface__htmlreports_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__modules`
--

DROP TABLE IF EXISTS `dataface__modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__modules` (
  `module_name` varchar(255) NOT NULL,
  `module_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`module_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__modules`
--

LOCK TABLES `dataface__modules` WRITE;
/*!40000 ALTER TABLE `dataface__modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataface__modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__mtimes`
--

DROP TABLE IF EXISTS `dataface__mtimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__mtimes` (
  `name` varchar(255) NOT NULL,
  `mtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__mtimes`
--

LOCK TABLES `dataface__mtimes` WRITE;
/*!40000 ALTER TABLE `dataface__mtimes` DISABLE KEYS */;
INSERT INTO `dataface__mtimes` VALUES ('auth_group',1458667664),('auth_group_permissions',1458667664),('auth_permission',1458667664),('auth_user',1458667664),('auth_user_groups',1458667664),('auth_user_user_permissions',1458667664),('books',1378408162),('dashboard',1379358425),('dataface__datagrids',1379967008),('dataface__failed_logins',1376579426),('dataface__htmlreports_reports',1418159231),('dataface__modules',1376579421),('dataface__mtimes',1376579421),('dataface__preferences',1378311278),('dataface__record_mtimes',1376579486),('dataface__version',1376579421),('dataface__view_05bc21d889015ac9418d98c68778e843',1376579421),('dataface__view_299ce1ed290202495402f7c56c5bd9df',1476900547),('dataface__view_6d27439552cb884211bf94d8caf3f33d',1385493979),('dataface__view_df7958a831669cfaa5d0690b3abaa248',1376580123),('dep_cities',1436388241),('dep_countries',1436388241),('dep_provinces',1436388241),('django_admin_log',1458667664),('django_content_type',1458667664),('django_migrations',1436388241),('django_session',1458667664),('notes',1460550131),('nte_about_this_app',1472071241),('nte_about_this_app__history',1376579421),('nte_note',1458841576),('nte_note_tags',1376579421),('nte_note__history',1376579421),('nte_tags',1394121437),('nte_tags__history',1376579421),('polls_choice',1458667664),('polls_question',1458667664),('states',1378907248),('TABLE 46',1469457903),('tbl_city',1460550131),('tbl_country',1460550131),('tbl_state',1460550131),('users',1469823437),('users_xataface',1478030874),('users__history',1444058755),('vw_nte_note',1472071228),('vw_nte_note__history',1376579421),('z,bk1,nte_note',1436388241);
/*!40000 ALTER TABLE `dataface__mtimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__preferences`
--

DROP TABLE IF EXISTS `dataface__preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__preferences` (
  `pref_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `table` varchar(128) NOT NULL,
  `record_id` varchar(255) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`pref_id`),
  KEY `username` (`username`),
  KEY `table` (`table`),
  KEY `record_id` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__preferences`
--

LOCK TABLES `dataface__preferences` WRITE;
/*!40000 ALTER TABLE `dataface__preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataface__preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__record_mtimes`
--

DROP TABLE IF EXISTS `dataface__record_mtimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__record_mtimes` (
  `recordhash` varchar(32) NOT NULL,
  `recordid` varchar(255) NOT NULL,
  `mtime` int(11) NOT NULL,
  PRIMARY KEY (`recordhash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__record_mtimes`
--

LOCK TABLES `dataface__record_mtimes` WRITE;
/*!40000 ALTER TABLE `dataface__record_mtimes` DISABLE KEYS */;
INSERT INTO `dataface__record_mtimes` VALUES ('0c66cdad43b65bfbf8fb9d6653add439','vw_nte_note?note_id=2880',1379339450),('0d0ec1385dbfdeb608c4dedbdd235eb8','nte_note?note_id=2921',1436398183),('104b79181d5c205020b6e76a99cd7ea1','nte_note?note_id=2919',1436388296),('1a8ca565380db5c355dd9b91f82afc4b','vw_nte_note?note_id=2893',1379360157),('1bffc7d42c060695ef49055f9cf089db','nte_note?note_id=2922',1436472967),('1e709eb5780cbbdbc88b328b49c1fcc4','nte_note?note_id=2925',1436474181),('284d6f618629934e678b8925e0fc332a','vw_nte_note?note_id=',1472071228),('28c58086ca09096417ac63b84b66f7fa','vw_nte_note?note_id=2892',1378323611),('2fabd0fbb2a6f184c9fb2fdfe52d7677','users?username=pmdsdata',1469823437),('3063386fdcdcb08d80bb7f0b06147f9d','nte_tags?tags_id=16',1394121437),('388ae01a96bd856da1eb48890cfacc0e','nte_note?note_id=2923',1436473027),('43a663eff51e3245f7bba72b1f03ab09','vw_nte_note?note_id=2921',1469823495),('45bab344eeba6036b20ac8d3a66bf07d','vw_nte_note?note_id=2847',1378911904),('4f8c70b0753787d40e60e49243aa7463','nte_note?note_id=2924',1436474107),('517519452a44535e1331c92d5de47720','vw_nte_note?note_id=2872',1379356588),('5a8049a4fcdcdb0fe02278c2ef6d37fb','nte_note?note_id=10000',1458841576),('5f68aa79be7d761bee8d2579ae426572','vw_nte_note?note_id=2890',1378911150),('6a710cb1ccdef89c79ae126064084d14','nte_note?note_id=2892',1378311350),('741dd772f654835578251d266f6e630b','vw_nte_note?note_id=2884',1379085339),('765e16685b95818e215c2d0d83557eb3','users?username=admin',1444058755),('76ecbf22299327d6f4a26afc502ea71a','vw_nte_note?note_id=2899',1379616838),('8c9067efa5ccc4638459bf30c53856cf','users?username=dgleba',1469458204),('a5756f20a075fbdf2d4270de9dda5c91','vw_nte_note?note_id=2901',1379616884),('a6586c662755a96aef07f24f7891967b','nte_note?note_id=2920',1436388824),('afc6aff99f7b641dd9643a5b9a8b3fc2','vw_nte_note?note_id=2877',1379357032),('b9c720553fd25c4cebe05c3e6e88afca','vw_nte_note?note_id=2881',1379612655),('bc4ba5b087aa25ba6f5306bf51f7582a','nte_about_this_app?id=5',1472071241),('c11a07049d7b050a3a5539e81cb2688e','vw_nte_note?note_id=2878',1379010514),('c1720417a01635194fec85b381c44c00','nte_note?note_id=2926',1436474206),('cba7c035f8564220f690d306dbc7d53b','vw_nte_note?note_id=2908',1379967134),('ed986a2e6d2edf12a8f4fa010d377715','nte_note?note_id=2927',1436474247),('f9d0f46303c2f8f0823db1d73c7956fc','vw_nte_note?note_id=2885',1379007686),('fb5496d32c9d7885757d75af5f5ae2aa','vw_nte_note?note_id=2905',1379617222),('fe972f3b9006197b87169e6c03c9f600','vw_nte_note?note_id=2891',1378908828);
/*!40000 ALTER TABLE `dataface__record_mtimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__version`
--

DROP TABLE IF EXISTS `dataface__version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__version` (
  `version` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__version`
--

LOCK TABLES `dataface__version` WRITE;
/*!40000 ALTER TABLE `dataface__version` DISABLE KEYS */;
INSERT INTO `dataface__version` VALUES (0);
/*!40000 ALTER TABLE `dataface__version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `dataface__view_05bc21d889015ac9418d98c68778e843`
--

DROP TABLE IF EXISTS `dataface__view_05bc21d889015ac9418d98c68778e843`;
/*!50001 DROP VIEW IF EXISTS `dataface__view_05bc21d889015ac9418d98c68778e843`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `dataface__view_05bc21d889015ac9418d98c68778e843` (
  `note_id` tinyint NOT NULL,
  `note_fld` tinyint NOT NULL,
  `tags_fld` tinyint NOT NULL,
  `state_fld` tinyint NOT NULL,
  `country_id` tinyint NOT NULL,
  `province_id` tinyint NOT NULL,
  `city_id` tinyint NOT NULL,
  `createdtime` tinyint NOT NULL,
  `updatedtime` tinyint NOT NULL,
  `datenote` tinyint NOT NULL,
  `active` tinyint NOT NULL,
  `note2` tinyint NOT NULL,
  `nid` tinyint NOT NULL,
  `tid` tinyint NOT NULL,
  `tags_id` tinyint NOT NULL,
  `tags_list` tinyint NOT NULL,
  `tagslisted` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `dataface__view_299ce1ed290202495402f7c56c5bd9df`
--

DROP TABLE IF EXISTS `dataface__view_299ce1ed290202495402f7c56c5bd9df`;
/*!50001 DROP VIEW IF EXISTS `dataface__view_299ce1ed290202495402f7c56c5bd9df`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `dataface__view_299ce1ed290202495402f7c56c5bd9df` (
  `note_id` tinyint NOT NULL,
  `note_fld` tinyint NOT NULL,
  `tags_fld` tinyint NOT NULL,
  `state_fld` tinyint NOT NULL,
  `createdtime` tinyint NOT NULL,
  `updatedtime` tinyint NOT NULL,
  `datenote` tinyint NOT NULL,
  `active` tinyint NOT NULL,
  `note2` tinyint NOT NULL,
  `nid` tinyint NOT NULL,
  `tid` tinyint NOT NULL,
  `tags_id` tinyint NOT NULL,
  `tags_list` tinyint NOT NULL,
  `tagslisted` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dep_cities`
--

DROP TABLE IF EXISTS `dep_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dep_cities` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) DEFAULT NULL,
  `city_name` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dep_cities`
--

LOCK TABLES `dep_cities` WRITE;
/*!40000 ALTER TABLE `dep_cities` DISABLE KEYS */;
INSERT INTO `dep_cities` VALUES (1,1,'London'),(2,1,'Stratford'),(5,2,'Winnipeg'),(6,2,'Brandon'),(7,3,'Lansing'),(8,3,'Detroit'),(9,4,'Cleveland'),(10,4,'Cincinatti'),(11,1,'Kitchener'),(12,1,'Tororto');
/*!40000 ALTER TABLE `dep_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dep_countries`
--

DROP TABLE IF EXISTS `dep_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dep_countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dep_countries`
--

LOCK TABLES `dep_countries` WRITE;
/*!40000 ALTER TABLE `dep_countries` DISABLE KEYS */;
INSERT INTO `dep_countries` VALUES (1,'United States'),(2,'Canada'),(3,'Mexico'),(4,'Poland');
/*!40000 ALTER TABLE `dep_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dep_provinces`
--

DROP TABLE IF EXISTS `dep_provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dep_provinces` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `province_name` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dep_provinces`
--

LOCK TABLES `dep_provinces` WRITE;
/*!40000 ALTER TABLE `dep_provinces` DISABLE KEYS */;
INSERT INTO `dep_provinces` VALUES (1,2,'Ontario'),(2,2,'Manitoba'),(3,1,'Michigan'),(4,1,'Ohio');
/*!40000 ALTER TABLE `dep_provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2015-11-19 17:24:28','1','a',1,'',7,2),(2,'2015-11-19 18:03:27','1','dgleba',2,'Changed is_superuser.',4,2),(3,'2015-11-19 18:07:35','1','editor',1,'',3,2),(4,'2015-11-19 18:07:53','1','dgleba',2,'Changed groups.',4,2),(5,'2015-11-19 18:09:21','9999','NteNote object',1,'',9,1),(6,'2015-11-19 18:09:38','9999','NteNote object',2,'No fields changed.',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'dgnote130','ntenote'),(8,'polls','choice'),(7,'polls','question'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-11-19 17:21:32'),(2,'auth','0001_initial','2015-11-19 17:21:34'),(3,'admin','0001_initial','2015-11-19 17:21:35'),(4,'contenttypes','0002_remove_content_type_name','2015-11-19 17:21:35'),(5,'auth','0002_alter_permission_name_max_length','2015-11-19 17:21:35'),(6,'auth','0003_alter_user_email_max_length','2015-11-19 17:21:35'),(7,'auth','0004_alter_user_username_opts','2015-11-19 17:21:35'),(8,'auth','0005_alter_user_last_login_null','2015-11-19 17:21:35'),(9,'auth','0006_require_contenttypes_0002','2015-11-19 17:21:35'),(10,'polls','0001_initial','2015-11-19 17:21:36'),(11,'sessions','0001_initial','2015-11-19 17:21:36');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6agyxh525oycqvp642cxw30isdz0q8a1','NTQ0Y2U4NzIzZWFiNzYyNWRiYzExY2Y5NGEwMTRlMmIwNGE3NTNhZDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg2Y2U0ZGYwNzVmMDM3YjRhMTUwYTg4NmExMzczYjIzY2M2ODdlODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-12-03 18:08:07'),('ihq758aopy9n2wu7hytmsa4rc6ehwmqd','MmE3OGY0MzlkZmNmZTBkNmFlNjJkYjBkNzY0ZTM3YWRmMWI5MGIxMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxNjEwMDIzMjg3OTgzZmYyMjIzN2IwZjU4NDBlMmRjNTdkMjkzMDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2015-12-07 20:08:19'),('j9xm91xupqi2bbnau3ff9rv6jztropw8','MmE3OGY0MzlkZmNmZTBkNmFlNjJkYjBkNzY0ZTM3YWRmMWI5MGIxMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxNjEwMDIzMjg3OTgzZmYyMjIzN2IwZjU4NDBlMmRjNTdkMjkzMDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-02-02 13:25:25');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` int(11) DEFAULT NULL,
  `staten` int(11) DEFAULT NULL,
  `cityn` int(11) DEFAULT NULL,
  `updatedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,1,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,3,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,2,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,3,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,2,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,3,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,1,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,2,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,3,NULL,NULL,'2016-04-11 12:14:20','2016-04-11 12:14:20'),(10,1,NULL,NULL,'2016-04-11 12:18:10','2016-04-11 12:18:10'),(11,1,NULL,NULL,'2016-04-11 12:41:44','2016-04-11 12:41:44'),(12,2,NULL,NULL,'2016-04-11 12:43:46','2016-04-11 12:43:46'),(13,3,6,12,'2016-04-12 12:20:09','2016-04-12 12:20:09'),(14,2,4,8,'2016-04-12 12:21:28','2016-04-12 12:21:28'),(15,2,4,8,'2016-04-12 12:21:57','2016-04-12 12:21:57'),(16,2,3,6,'2016-04-12 12:22:36','2016-04-12 12:22:36'),(17,2,4,7,'2016-04-12 12:26:00','2016-04-12 12:26:00'),(18,2,4,7,'2016-04-12 12:26:10','2016-04-12 12:26:10'),(19,2,4,8,'2016-04-12 13:38:43','2016-04-12 13:38:43'),(20,3,5,10,'2016-04-12 13:39:20','2016-04-12 13:39:20'),(21,3,6,12,'2016-04-12 13:44:32','2016-04-12 13:44:32'),(22,1,2,3,'2016-04-12 13:47:50','2016-04-12 13:47:50'),(23,1,1,1,'2016-04-12 13:52:12','2016-04-12 13:52:12'),(24,3,6,12,'2016-04-12 14:54:00','2016-04-12 14:54:00'),(25,2,4,7,'2016-04-12 20:09:40','2016-04-12 20:09:40'),(26,2,3,5,'2016-04-12 20:12:23','2016-04-12 20:12:23'),(27,3,6,11,'2016-04-12 20:13:44','2016-04-12 20:13:44'),(28,3,6,11,'2016-04-12 20:19:45','2016-04-12 20:19:45'),(29,2,3,5,'2016-04-12 20:20:20','2016-04-12 20:20:20'),(30,1,2,4,'2016-04-12 20:26:01','2016-04-12 20:26:01'),(31,3,5,10,'2016-04-12 20:27:13','2016-04-12 20:27:13'),(32,3,5,10,'2016-04-12 20:28:49','2016-04-12 20:28:49'),(33,2,3,6,'2016-04-12 20:31:59','2016-04-12 20:31:59'),(34,2,3,5,'2016-04-12 20:36:37','2016-04-12 20:36:37'),(35,2,3,5,'2016-04-12 20:37:44','2016-04-12 20:37:44'),(36,1,2,4,'2016-04-12 20:40:48','2016-04-12 20:40:48'),(37,2,3,5,'2016-04-12 20:41:14','2016-04-12 20:41:14'),(38,3,5,10,'2016-04-12 20:42:43','2016-04-12 20:42:43'),(39,1,1,2,'2016-04-12 20:43:22','2016-04-12 20:43:22'),(40,2,3,5,'2016-04-12 20:44:41','2016-04-12 20:44:41'),(41,1,1,2,'2016-04-12 20:45:27','2016-04-12 20:45:27'),(42,3,5,10,'2016-04-12 20:45:57','2016-04-12 20:45:57'),(43,3,6,11,'2016-04-12 20:46:19','2016-04-12 20:46:19'),(44,2,4,8,'2016-04-12 20:57:29','2016-04-12 20:57:29'),(45,1,1,2,'2019-02-25 15:56:30','2019-02-25 15:56:30');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `nte_about_this_app`
--

DROP TABLE IF EXISTS `nte_about_this_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nte_about_this_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_fld` text,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nte_about_this_app`
--

LOCK TABLES `nte_about_this_app` WRITE;
/*!40000 ALTER TABLE `nte_about_this_app` DISABLE KEYS */;
INSERT INTO `nte_about_this_app` VALUES (1,'this the notes database for g..','2012-06-03 04:54:35','2012-06-07 13:04:48'),(2,'history enabled now.\r\n2012-06-06_Jun_Wed-10.17-AM ','2012-06-06 18:17:23',NULL),(3,'a','2013-04-11 17:21:59','2013-04-11 13:21:59'),(4,'test 2','2013-04-29 20:10:13','2013-04-30 11:17:52'),(5,'2016-08-24_Wed_16.40-PM','2016-08-24 20:40:41','2016-08-24 16:40:41');
/*!40000 ALTER TABLE `nte_about_this_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nte_about_this_app__history`
--

DROP TABLE IF EXISTS `nte_about_this_app__history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nte_about_this_app__history` (
  `history__id` int(11) NOT NULL AUTO_INCREMENT,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `about_fld` text,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`history__id`),
  KEY `prikeys` (`id`) USING HASH,
  KEY `datekeys` (`history__modified`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nte_about_this_app__history`
--

LOCK TABLES `nte_about_this_app__history` WRITE;
/*!40000 ALTER TABLE `nte_about_this_app__history` DISABLE KEYS */;
INSERT INTO `nte_about_this_app__history` VALUES (1,'en','','user',0,'2013-04-29 16:10:13',4,'test','2013-04-29 20:10:13','2013-04-29 16:10:13'),(2,'en','','user',0,'2013-04-30 11:17:52',4,'test 2','2013-04-29 20:10:13','2013-04-30 11:17:52');
/*!40000 ALTER TABLE `nte_about_this_app__history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nte_note`
--

DROP TABLE IF EXISTS `nte_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nte_note` (
  `note_id` int(11) NOT NULL AUTO_INCREMENT,
  `note_fld` text,
  `tags_fld` varchar(244) DEFAULT NULL,
  `state_fld` varchar(99) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  `datenote` datetime DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT 'Yes',
  `note2` text,
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nte_note`
--

LOCK TABLES `nte_note` WRITE;
/*!40000 ALTER TABLE `nte_note` DISABLE KEYS */;
INSERT INTO `nte_note` VALUES (2836,'<p>a</p>',NULL,NULL,NULL,NULL,NULL,'2012-07-16 16:38:16','2012-07-16 12:38:16',NULL,NULL,'<p>a</p>'),(2837,'<p>b</p>',NULL,NULL,NULL,NULL,NULL,'2012-07-16 16:38:59','2012-07-16 12:38:59',NULL,NULL,'<p>b</p>'),(2838,'a',NULL,NULL,NULL,NULL,NULL,'2012-07-16 17:01:01','2013-04-15 11:55:51',NULL,NULL,'a'),(2839,'<p>e</p>',NULL,NULL,NULL,NULL,NULL,'2012-07-16 17:04:29','2012-07-16 13:09:20',NULL,NULL,'<p>e</p>'),(2840,'2013-04-08_Mon_11.49-AM',NULL,NULL,NULL,NULL,NULL,'2013-04-08 15:49:08','2013-04-15 11:49:15',NULL,NULL,'2013-04-08_Mon_11.49-AM'),(2841,NULL,NULL,NULL,NULL,NULL,NULL,'2013-04-08 15:50:09','2013-04-08 11:50:09',NULL,NULL,NULL),(2842,'11:56AM',NULL,NULL,NULL,NULL,NULL,'2013-04-08 15:56:29','2013-04-15 11:53:44',NULL,'No','11:56AM'),(2843,'2013-04-08_Mon_12.01-PM',NULL,NULL,NULL,NULL,NULL,'2013-04-08 16:01:39','2013-04-15 11:49:37',NULL,NULL,'2013-04-08_Mon_12.01-PM'),(2844,'<p>tagger1.</p>\r\n<p>2013-04-08_Mon_12.04-PM</p>',NULL,NULL,NULL,NULL,NULL,'2013-04-08 16:04:21','2013-04-08 12:05:29',NULL,NULL,'<p>tagger1.</p>\r\n<p>2013-04-08_Mon_12.04-PM</p>'),(2845,'2845\r\n',NULL,NULL,NULL,NULL,NULL,'2013-04-08 19:13:48','2013-04-24 15:43:18',NULL,'No','2845\r\n'),(2846,NULL,NULL,NULL,NULL,NULL,NULL,'2013-04-08 19:53:15','2013-04-08 15:53:15',NULL,NULL,NULL),(2847,' 2013-04-09_Tue_08.26-AM ',NULL,'Tennessee',NULL,NULL,NULL,'2013-04-09 12:26:16','2013-09-11 11:05:04',NULL,'Yes','2013-04-09_Tue_08.26-AM'),(2848,NULL,NULL,NULL,NULL,NULL,NULL,'2013-04-09 12:31:02','2013-04-09 08:32:07','2013-04-09 11:31:23','Yes',NULL),(2849,NULL,NULL,NULL,NULL,NULL,NULL,'2013-04-09 12:47:16','2013-04-10 09:19:50','2013-04-09 08:47:23','Yes',NULL),(2850,'q',NULL,NULL,NULL,NULL,NULL,'2013-04-15 18:16:23','2013-04-15 14:16:56','2013-04-10 14:16:23',NULL,'q'),(2851,'Either spotting a gap in the market or just out of loyalty to its best buddy Microsoft, Dell has released its own Windows RT slate. Aimed at business users, the 10.1-inch Dell XPS 10 is another transformer-style laptop-tablet hybrid, shipping with an attachable keyboard that turns it into a laptop for working on the move.\r\nThe Dell XPS 10 falls into a crowded market, with a host of devices aiming to please similar needs. The Asus VivoTab, Samsung Ativ Tab and of course the Microsoft Surface RT are all offering the same USP, and there are other hybrids such as the Lenovo IdeaPad Yoga 11 too.\r\nWhile there\'s no shortage of big players in the market, Dell\'s late arrival doesn\'t mean it\'s too far behind; no RT device has gained any traction to date.\r\n\r\nBuying Guide\r\n\r\n10 best tablet PCs in the world today\r\nThe XPS 10 fits perfectly into Dell\'s line up of high end machines, joining its XPS 12, XPS 13 and XPS 15 siblings. It looks like an XPS, with a soft black finish and a rubberised texture, and the same rounded chiclet keys adorning the base station.\r\nThe XPS range is certainly high quality, and each component of the 10-inch RT tablet follows this design ethos to a tee.\r\nCompared to some notable offenders, Dell has managed to keep the price down to a reasonable level. The base level 32GB device without the keyboard costs £299/US$449.99, the 32GB version with the keyboard dock costs £409/US$599.99, the 64GB without a keyboard costs £339/US$499.99, while the 64GB version with the dock is £444/US$649.99.\r\n',NULL,NULL,NULL,NULL,NULL,'2013-04-18 15:12:59','2013-04-18 11:49:54',NULL,NULL,'Either spotting a gap in the market or just out of loyalty to its best buddy Microsoft, Dell has released its own Windows RT slate. Aimed at business users, the 10.1-inch Dell XPS 10 is another transformer-style laptop-tablet hybrid, shipping with an attachable keyboard that turns it into a laptop for working on the move.\r\nThe Dell XPS 10 falls into a crowded market, with a host of devices aiming to please similar needs. The Asus VivoTab, Samsung Ativ Tab and of course the Microsoft Surface RT are all offering the same USP, and there are other hybrids such as the Lenovo IdeaPad Yoga 11 too.\r\nWhile there\'s no shortage of big players in the market, Dell\'s late arrival doesn\'t mean it\'s too far behind; no RT device has gained any traction to date.\r\n\r\nBuying Guide\r\n\r\n10 best tablet PCs in the world today\r\nThe XPS 10 fits perfectly into Dell\'s line up of high end machines, joining its XPS 12, XPS 13 and XPS 15 siblings. It looks like an XPS, with a soft black finish and a rubberised texture, and the same rounded chiclet keys adorning the base station.\r\nThe XPS range is certainly high quality, and each component of the 10-inch RT tablet follows this design ethos to a tee.\r\nCompared to some notable offenders, Dell has managed to keep the price down to a reasonable level. The base level 32GB device without the keyboard costs £299/US$449.99, the 32GB version with the keyboard dock costs £409/US$599.99, the 64GB without a keyboard costs £339/US$499.99, while the 64GB version with the dock is £444/US$649.99.\r\n'),(2852,'test mail send',NULL,NULL,NULL,NULL,NULL,'2013-04-19 18:09:18','2013-04-19 14:09:18','2013-04-19 14:09:23',NULL,'test mail send'),(2853,'test tags',NULL,NULL,NULL,NULL,NULL,'2013-04-19 18:09:53','2013-04-19 14:09:53',NULL,NULL,'test tags'),(2854,'04:00PM',NULL,NULL,NULL,NULL,NULL,'2013-04-19 20:00:52','2013-04-19 16:00:52',NULL,NULL,'04:00PM'),(2855,'04:27PM',NULL,NULL,NULL,NULL,NULL,'2013-04-19 20:27:08','2013-04-19 16:27:08',NULL,NULL,'04:27PM'),(2856,'2013-04-19_Fri_16.29-PM\r\ntest note.\r\n.\r\nx',NULL,NULL,NULL,NULL,NULL,'2013-04-19 20:30:11','2013-04-19 16:30:11',NULL,NULL,'2013-04-19_Fri_16.29-PM\r\ntest note.\r\n.\r\nx'),(2857,'2013-04-22_Mon_10.30-AM test csd email',NULL,NULL,NULL,NULL,NULL,'2013-04-22 14:30:55','2013-04-22 10:30:55','2013-04-22 10:30:23','Yes','2013-04-22_Mon_10.30-AM test csd email'),(2858,'a',NULL,NULL,NULL,NULL,NULL,'2013-04-22 14:33:43','2013-04-22 10:33:43','2013-04-22 10:33:23','No','a'),(2859,'test double email',NULL,NULL,NULL,NULL,NULL,'2013-04-22 14:40:15','2013-04-22 10:40:15','2013-04-22 10:40:23','Yes','test double email'),(2860,'cleaned up',NULL,NULL,NULL,NULL,NULL,'2013-04-22 15:03:50','2013-04-22 11:03:50','2013-04-22 11:03:23','Yes','cleaned up'),(2861,'Get Involved\r\n\r\nIf you want to help contribute to Ubuntu then you\'ve come to the right place. Keep reading to learn how.\r\n\r\nYou have just taken your first step toward getting involved. Before you get started, we ask that you please observe the Ubuntu Code of Conduct, it\'s not very long and it will help you get started.\r\n\r\nNow that\'s done. To find out the best way to get started, you should check out our community page.\r\n\r\nTeams\r\n\r\nThe Teams page contains a listing of all the various Community Teams, links to their Wiki Home Pages and\r\n\r\nMost Teams\' Wiki Home Pages provide information about who they are, what they do, when their meetings are and how to contact them. Using these pages, teammates are able communicate and coordinate projects.\r\n\r\nGovernance and Membership\r\n\r\nLike most communities, we have our rules and governing body.\r\n\r\nAnyone can join and participate in most, if not all, of our Teams and Projects. But if you want an \"@ubuntu.com\" e-mail address, it has to be earned. Find out how in our Membership section.\r\n\r\nCommunity Links\r\n\r\nAs an active member of our community, you probably should check out what else is going on in the world of Ubuntu:\r\n\r\nThe Fridge posts all the latest News and Upcoming Events.\r\nPlanet Ubuntu is a collection of community blogs.\r\nAlso you can help at Ubuntu Brainstorm by submitting your ideas to make Ubuntu better OS for everyone.\r\n\r\nIf you are interested to get to know other Ubuntu users or see a list of Ubuntu teams outside the general Ubuntu world, check out our social network page.\r\n\r\nReleases',NULL,NULL,NULL,NULL,NULL,'2013-04-22 15:07:43','2013-04-22 11:07:43','2013-04-22 11:07:23','Yes','Get Involved\r\n\r\nIf you want to help contribute to Ubuntu then you\'ve come to the right place. Keep reading to learn how.\r\n\r\nYou have just taken your first step toward getting involved. Before you get started, we ask that you please observe the Ubuntu Code of Conduct, it\'s not very long and it will help you get started.\r\n\r\nNow that\'s done. To find out the best way to get started, you should check out our community page.\r\n\r\nTeams\r\n\r\nThe Teams page contains a listing of all the various Community Teams, links to their Wiki Home Pages and\r\n\r\nMost Teams\' Wiki Home Pages provide information about who they are, what they do, when their meetings are and how to contact them. Using these pages, teammates are able communicate and coordinate projects.\r\n\r\nGovernance and Membership\r\n\r\nLike most communities, we have our rules and governing body.\r\n\r\nAnyone can join and participate in most, if not all, of our Teams and Projects. But if you want an \"@ubuntu.com\" e-mail address, it has to be earned. Find out how in our Membership section.\r\n\r\nCommunity Links\r\n\r\nAs an active member of our community, you probably should check out what else is going on in the world of Ubuntu:\r\n\r\nThe Fridge posts all the latest News and Upcoming Events.\r\nPlanet Ubuntu is a collection of community blogs.\r\nAlso you can help at Ubuntu Brainstorm by submitting your ideas to make Ubuntu better OS for everyone.\r\n\r\nIf you are interested to get to know other Ubuntu users or see a list of Ubuntu teams outside the general Ubuntu world, check out our social network page.\r\n\r\nReleases'),(2862,'b',NULL,NULL,NULL,NULL,NULL,'2013-04-22 15:11:08','2013-04-22 11:11:08','2013-04-22 11:11:23','Yes','b'),(2863,'Weiss\r\n',NULL,NULL,NULL,NULL,NULL,'2013-04-22 15:28:44','2013-04-22 11:28:44','2013-04-22 11:28:23','Yes','Weiss\r\n'),(2864,'email on?',NULL,NULL,NULL,NULL,NULL,'2013-04-24 16:04:36','2013-04-24 12:04:36','2013-04-24 12:04:23','Yes','email on?'),(2865,'2013-04-24_Wed_14.22-PM test with filter. 03:48PM',NULL,NULL,NULL,NULL,NULL,'2013-04-24 18:22:42','2013-04-24 15:48:41','2013-04-24 14:22:23','Yes','2013-04-24_Wed_14.22-PM test with filter. 03:48PM'),(2866,'moved default filter to index.php',NULL,NULL,NULL,NULL,NULL,'2013-04-24 19:34:19','2013-04-24 15:34:19','2013-04-24 15:34:23',NULL,'moved default filter to index.php'),(2867,'moved default filter to index.php',NULL,NULL,NULL,NULL,NULL,'2013-04-24 19:35:00','2013-04-24 15:35:00','2013-04-24 15:34:23',NULL,'moved default filter to index.php'),(2868,'a',NULL,NULL,NULL,NULL,NULL,'2013-04-24 19:35:31','2013-04-24 15:35:31','2013-04-24 15:35:23','Yes','a'),(2869,'a',NULL,NULL,NULL,NULL,NULL,'2013-04-24 19:35:34','2013-04-24 15:35:34','2013-04-24 15:35:23','Yes','a'),(2870,'test index.php filter',NULL,NULL,NULL,NULL,NULL,'2013-04-24 19:37:08','2013-04-24 15:37:08','2013-04-24 15:37:23','No','test index.php filter'),(2871,'a',NULL,NULL,NULL,NULL,NULL,'2013-04-24 19:41:51','2013-04-24 15:41:51','2013-04-24 15:41:23','Yes','a'),(2872,'   2013-04-25_Thu_09.58-AM   ',NULL,NULL,NULL,NULL,NULL,'2013-04-25 13:59:01','2013-09-16 14:36:28','2013-09-16 13:44:23','','2013-04-25_Thu_09.58-AM'),(2873,'2013-04-25_Thu_10.29-AM default sort in sql in fields.ini',NULL,NULL,NULL,NULL,NULL,'2013-04-25 14:29:35','2013-04-25 10:29:35','2013-04-25 10:29:23','Yes','2013-04-25_Thu_10.29-AM default sort in sql in fields.ini'),(2874,'2013-04-25_Thu_10.36-AM test view add',NULL,NULL,NULL,NULL,NULL,'2013-04-25 14:36:50','2013-04-25 10:36:50','2013-04-25 10:36:23','Yes','2013-04-25_Thu_10.36-AM test view add'),(2875,'2013-04-25_Thu_10.41-AM test view add',NULL,NULL,NULL,NULL,NULL,'2013-04-25 14:41:22','2013-04-25 10:41:22','2013-04-25 10:41:23',NULL,'2013-04-25_Thu_10.41-AM test view add'),(2876,'2013-04-25_Thu_10.49-AM',NULL,NULL,NULL,NULL,NULL,'2013-04-25 14:49:23','2013-04-25 10:49:23','2013-04-25 10:49:23','Yes','2013-04-25_Thu_10.49-AM'),(2877,'    2013-04-25_Thu_10.53-AM \r\nAdam\r\nHere \r\n\r\nA b\r\n  ','Quite','New Jersey',NULL,NULL,NULL,'2013-04-25 14:53:35','2013-09-16 14:43:52','2013-09-16 14:43:23','Yes','2013-04-25_Thu_10.53-AM'),(2878,'     2013-04-25_Thu_10.54-AM     ',NULL,NULL,NULL,NULL,NULL,'2013-04-25 14:54:14','2013-09-12 14:28:34','2013-09-12 14:25:22','Yes','2013-04-25_Thu_10.54-AM'),(2879,'test email from filtered table',NULL,NULL,NULL,NULL,NULL,'2013-04-29 13:12:21','2013-04-29 09:12:21','2013-04-29 09:12:23','Yes','test email from filtered table'),(2880,'  test two email  b',NULL,'Nevada',NULL,NULL,NULL,'2013-04-29 18:31:54','2013-09-16 09:50:50',NULL,'','test two email'),(2881,' test bcc cc. 2013-04-30_Tue_11.18-AM ','dash b',NULL,NULL,NULL,NULL,'2013-04-29 18:36:27','2013-09-19 13:44:15','2013-04-29 14:36:23','Yes','test bcc cc. 2013-04-30_Tue_11.18-AM'),(2882,'2013-05-02_Thu_13.22-PM test offline',NULL,NULL,NULL,NULL,NULL,'2013-05-02 17:24:06','2013-05-02 13:24:06','2013-05-02 13:22:23','Yes','2013-05-02_Thu_13.22-PM test offline'),(2883,'moved xampp from c p2 websw to c p2',NULL,NULL,NULL,NULL,NULL,'2013-05-02 19:37:30','2013-05-02 15:37:30',NULL,'Yes','moved xampp from c p2 websw to c p2'),(2884,'    testing mysql copy with xcopy    ',NULL,'Vermont',NULL,NULL,NULL,'2013-05-03 13:27:11','2013-09-13 11:15:39',NULL,'Yes','testing mysql copy with xcopy'),(2885,' going  home ',NULL,'District of Columbia',NULL,NULL,NULL,'2013-05-06 20:36:19','2013-09-12 13:41:26',NULL,'No','going  home'),(2886,'test',NULL,NULL,NULL,NULL,NULL,'2013-05-22 17:44:36','2013-08-01 12:14:00','0000-05-13 00:00:00','Yes','test'),(2887,'a',NULL,NULL,NULL,NULL,NULL,'2013-06-21 13:20:17','2013-06-21 09:20:17',NULL,'Yes','a'),(2888,NULL,NULL,NULL,NULL,NULL,NULL,'2013-08-01 16:02:11','2013-08-01 12:12:37','0000-05-23 00:00:00','Yes',NULL),(2889,'test',NULL,NULL,NULL,NULL,NULL,'2013-08-07 16:01:49','2013-08-07 12:01:49',NULL,NULL,'test'),(2890,' test default active = yes ','artsy','Florida',NULL,NULL,NULL,'2013-08-07 16:08:48','2013-09-11 10:52:30','2013-09-11 10:52:23','Yes','test default active = yes'),(2891,' a,2013-08-07_Wed_12.51-PM2013-08-15_Thu_11.11-AM ',NULL,'Maine',NULL,NULL,NULL,'2013-08-07 16:51:17','2013-09-11 10:13:47',NULL,'Yes','2013-08-07_Wed_12.51-PM'),(2892,'5,  12:15PM',NULL,NULL,NULL,NULL,NULL,'2013-09-04 16:15:50','2013-09-04 15:40:11',NULL,'Yes',NULL),(2893,' dash\r\n2013-09-16_Mon_15.35-PM ',NULL,'Hawaii',NULL,NULL,NULL,'2013-09-16 19:35:17','2013-09-16 15:35:57','2013-09-16 15:35:23','Yes',NULL),(2894,'d','d','Mississippi',NULL,NULL,NULL,'2013-09-17 13:57:38','2013-09-17 09:57:38','2013-09-17 09:57:23','',NULL),(2895,NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-17 14:42:10','2013-09-17 10:42:10','2013-09-17 10:42:23','',NULL),(2896,NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-17 14:42:22','2013-09-17 10:42:22','2013-09-17 10:42:23','',NULL),(2897,NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-17 14:46:13','2013-09-17 10:46:13','2013-09-17 10:44:23',NULL,NULL),(2898,NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-17 14:58:11','2013-09-17 10:58:11','2013-09-17 10:58:23',NULL,NULL),(2899,'  Yellow',NULL,'New Jersey',NULL,NULL,NULL,'2013-09-17 15:06:45','2013-09-19 14:53:58','2013-09-17 11:06:23','',NULL),(2900,'a','b','Vermont',NULL,NULL,NULL,'2013-09-17 15:20:44','2013-09-17 11:20:44','2013-09-17 11:20:23','Yes',NULL),(2901,'    Wish 2 ','sell','Rhode Island',NULL,NULL,NULL,'2013-09-17 15:42:50','2013-09-19 14:54:43','2013-09-17 11:42:23','Yes',NULL),(2902,'2013-09-17_Tue_12.24-PM',NULL,'Wisconsin',NULL,NULL,NULL,'2013-09-17 16:24:48','2013-09-17 12:24:48','2013-09-17 12:24:23','Yes',NULL),(2903,NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-17 18:50:59','2013-09-17 14:50:59','2013-09-17 14:50:23','Yes',NULL),(2904,'Green','Gramm',NULL,NULL,NULL,NULL,'2013-09-19 18:55:30','2013-09-19 14:55:30','2013-09-19 14:54:23','Yes',NULL),(2905,' Henry ',NULL,'West Virginia',NULL,NULL,NULL,'2013-09-19 18:57:18','2013-09-19 15:00:22','2013-09-19 14:59:23','Yes',NULL),(2906,'Wash','am','Tennessee',NULL,NULL,NULL,'2013-09-20 12:57:30','2013-09-20 08:57:30','2013-09-20 08:56:23','Yes',NULL),(2907,'Leak','X','District of Columbia',NULL,NULL,NULL,'2013-09-20 20:09:53','2013-09-20 16:09:53','2013-09-20 16:08:23','Yes',NULL),(2908,' a ','a','Minnesota',NULL,NULL,NULL,'2013-09-23 20:11:32','2013-09-23 16:12:14','2013-09-23 16:11:23','Yes',NULL),(2909,'04:12PM',NULL,NULL,NULL,NULL,NULL,'2013-09-23 20:12:31','2013-09-23 16:12:31','2013-09-23 16:12:23','Yes',NULL),(2910,'b','computer problem, xataface, gustin, ','Indiana',NULL,NULL,NULL,'2013-11-26 19:26:57','2013-11-26 14:26:57','2013-11-26 14:26:23','Yes',NULL),(2911,'Test','computer problem, work, word, ','Massachusetts',NULL,NULL,NULL,'2014-03-04 15:48:24','2014-03-04 10:48:24','2014-03-04 10:47:23','Yes',NULL),(2912,'d','computer problem, ','West Virginia',NULL,NULL,NULL,'2014-06-04 19:31:31','2014-06-04 15:31:31','2014-06-04 15:31:23','No',NULL),(2913,'a','a','a',NULL,NULL,NULL,'2014-06-04 19:32:57','2014-06-04 15:32:57','2014-06-04 15:32:23','No',NULL),(2914,'b','b','b',NULL,NULL,NULL,'2014-06-04 19:33:54','2014-06-04 15:33:54','2014-06-04 15:33:23','Yes',NULL),(2915,'a','a','a',NULL,NULL,NULL,'2014-06-04 19:35:38','2014-06-04 15:35:38','2014-06-04 15:35:23','Yes',NULL),(2916,'a','q','q',NULL,NULL,NULL,'2014-06-04 19:44:16','2014-06-04 15:44:16','2014-06-04 15:35:23','Yes',NULL),(2917,'a','w','w',NULL,NULL,NULL,'2014-06-04 19:46:25','2014-06-04 15:46:25','2014-06-04 15:35:23','Yes',NULL),(2918,'a','w','w',NULL,NULL,NULL,'2014-06-04 19:47:48','2014-06-04 15:47:48','2014-06-04 15:35:23','Yes',NULL),(2919,'2015-07-08_Wed_16.44-PM',NULL,NULL,1,3,8,'2015-07-08 20:44:56','2015-07-08 16:44:56',NULL,'Yes',NULL),(2920,NULL,NULL,NULL,2,1,2,'2015-07-08 20:53:44','2015-07-08 16:53:44',NULL,'Yes',NULL),(2921,' 2015-07-08_Wed_19.29-PM ',NULL,NULL,2,1,11,'2015-07-08 23:29:43','2016-07-29 16:18:15',NULL,'Yes',NULL),(2922,NULL,NULL,NULL,NULL,NULL,NULL,'2015-07-09 20:16:07','2015-07-09 16:16:07',NULL,'Yes','2015-07-09'),(2923,NULL,NULL,NULL,NULL,NULL,NULL,'2015-07-09 20:17:07','2015-07-09 16:17:07',NULL,'Yes','2015-07-09_Thu_16.17-PM'),(2924,NULL,NULL,NULL,2,1,1,'2015-07-09 20:35:30','2015-07-09 16:35:07',NULL,'Yes',NULL),(2925,NULL,NULL,NULL,NULL,NULL,NULL,'2015-07-09 20:36:44','2015-07-09 16:36:21',NULL,'Yes',NULL),(2926,NULL,NULL,NULL,1,3,7,'2015-07-09 20:37:09','2015-07-09 16:36:46',NULL,'Yes',NULL),(2927,NULL,NULL,NULL,NULL,NULL,NULL,'2015-07-09 20:37:50','2015-07-09 16:37:27',NULL,'Yes',NULL),(9999,'2015-11-19_Thu_13.08-PM\r\ntest','','Detroit',NULL,NULL,NULL,NULL,NULL,NULL,'Yes',NULL),(10000,NULL,NULL,NULL,2,1,2,'2016-03-24 17:46:39','2016-03-24 13:46:16',NULL,'Yes',NULL),(10001,NULL,'computer problem, ',NULL,NULL,NULL,NULL,'2016-08-24 20:40:13','2016-08-24 16:40:13',NULL,'Yes',NULL),(10002,'a','computer problem, ',NULL,NULL,NULL,NULL,'2016-08-24 20:40:28','2016-08-24 16:40:28',NULL,'Yes','a');
/*!40000 ALTER TABLE `nte_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nte_note__history`
--

DROP TABLE IF EXISTS `nte_note__history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nte_note__history` (
  `history__id` int(11) NOT NULL AUTO_INCREMENT,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `note_fld` text,
  `tags_fld` varchar(244) DEFAULT NULL,
  `updatedtime` datetime DEFAULT NULL,
  `note_id` int(11) DEFAULT NULL,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datenote` datetime DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT NULL,
  `note2` text,
  PRIMARY KEY (`history__id`),
  KEY `prikeys` (`note_id`) USING HASH,
  KEY `datekeys` (`history__modified`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nte_note__history`
--

LOCK TABLES `nte_note__history` WRITE;
/*!40000 ALTER TABLE `nte_note__history` DISABLE KEYS */;
INSERT INTO `nte_note__history` VALUES (1,'en','','user',0,'2013-04-24 15:34:19','moved default filter to index.php',NULL,'2013-04-24 15:34:19',2866,'2013-04-24 19:34:19','2013-04-24 15:34:23',NULL,NULL),(2,'en','','user',0,'2013-04-24 15:35:00','moved default filter to index.php',NULL,'2013-04-24 15:35:00',2867,'2013-04-24 19:35:00','2013-04-24 15:34:23',NULL,NULL),(3,'en','','user',0,'2013-04-24 15:35:31','a',NULL,'2013-04-24 15:35:31',2868,'2013-04-24 19:35:31','2013-04-24 15:35:23','Yes',NULL),(4,'en','','user',0,'2013-04-24 15:35:34','a',NULL,'2013-04-24 15:35:34',2869,'2013-04-24 19:35:34','2013-04-24 15:35:23','Yes',NULL),(5,'en','','user',0,'2013-04-24 15:37:08','test index.php filter',NULL,'2013-04-24 15:37:08',2870,'2013-04-24 19:37:08','2013-04-24 15:37:23','No',NULL),(6,'en','','user',0,'2013-04-24 15:41:51','a',NULL,'2013-04-24 15:41:51',2871,'2013-04-24 19:41:51','2013-04-24 15:41:23','Yes',NULL),(7,'en','','user',0,'2013-04-24 15:43:18','2845\r\n',NULL,'2013-04-24 15:43:18',2845,'2013-04-08 19:13:48',NULL,'No',NULL),(8,'en','','qadave',0,'2013-04-24 15:48:41','2013-04-24_Wed_14.22-PM test with filter. 03:48PM',NULL,'2013-04-24 15:48:41',2865,'2013-04-24 18:22:42','2013-04-24 14:22:23','Yes',NULL),(9,'en','','user',0,'2013-04-25 09:59:01','2013-04-25_Thu_09.58-AM',NULL,'2013-04-25 09:59:01',2872,'2013-04-25 13:59:01','2013-04-25 09:58:23','Yes',NULL),(10,'en','','user',0,'2013-04-25 10:29:35','2013-04-25_Thu_10.29-AM default sort in sql in fields.ini',NULL,'2013-04-25 10:29:35',2873,'2013-04-25 14:29:35','2013-04-25 10:29:23','Yes',NULL),(11,'en','','user',0,'2013-04-25 10:49:23','2013-04-25_Thu_10.49-AM',NULL,'2013-04-25 10:49:23',2876,'2013-04-25 14:49:23','2013-04-25 10:49:23','Yes',NULL),(12,'en','','user',0,'2013-04-25 10:53:35','2013-04-25_Thu_10.53-AM',NULL,'2013-04-25 10:53:35',2877,'2013-04-25 14:53:35','2013-04-25 10:53:23','Yes',NULL),(13,'en','','user',0,'2013-04-25 10:54:14','2013-04-25_Thu_10.54-AM',NULL,'2013-04-25 10:54:14',2878,'2013-04-25 14:54:14','2013-04-25 10:54:23','Yes',NULL),(14,'en','','user',0,'2013-04-25 11:09:58','2013-04-25_Thu_10.54-AM',NULL,'2013-04-25 11:09:58',2878,'2013-04-25 14:54:14','2013-04-25 10:54:23','Yes',NULL),(15,'en','','user',0,'2013-04-29 09:08:27','2013-04-25_Thu_10.54-AM',NULL,'2013-04-29 09:08:27',2878,'2013-04-25 14:54:14','2013-04-29 09:08:23','Yes',NULL),(16,'en','','user',0,'2013-04-29 09:08:34','2013-04-25_Thu_10.54-AM',NULL,'2013-04-29 09:08:34',2878,'2013-04-25 14:54:14','2013-04-29 09:08:23','Yes',NULL),(17,'en','','user',0,'2013-04-29 09:12:21','test email from filtered table',NULL,'2013-04-29 09:12:21',2879,'2013-04-29 13:12:21','2013-04-29 09:12:23','Yes',NULL),(18,'en','','user',0,'2013-04-29 14:31:54','test two email',NULL,'2013-04-29 14:31:54',2880,'2013-04-29 18:31:54','2013-04-29 14:31:23','Yes',NULL),(19,'en','','user',0,'2013-04-29 14:36:27','test bcc cc',NULL,'2013-04-29 14:36:27',2881,'2013-04-29 18:36:27','2013-04-29 14:36:23','Yes',NULL),(20,'en','','user',0,'2013-04-30 11:18:48','test bcc cc. 2013-04-30_Tue_11.18-AM',NULL,'2013-04-30 11:18:48',2881,'2013-04-29 18:36:27','2013-04-29 14:36:23','Yes',NULL),(21,'en','','user',0,'2013-05-02 13:24:06','2013-05-02_Thu_13.22-PM test offline',NULL,'2013-05-02 13:24:06',2882,'2013-05-02 17:24:06','2013-05-02 13:22:23','Yes',NULL),(22,'en','','user',0,'2013-05-02 15:37:30','moved xampp from c p2 websw to c p2',NULL,'2013-05-02 15:37:30',2883,'2013-05-02 19:37:30',NULL,'Yes',NULL),(23,'en','','user',0,'2013-05-03 09:27:11','testing mysql copy with xcopy',NULL,'2013-05-03 09:27:11',2884,'2013-05-03 13:27:11','2013-05-03 09:27:23','Yes',NULL),(24,'en','','user',0,'2013-05-03 09:33:36','testing mysql copy with xcopy',NULL,'2013-05-03 09:33:36',2884,'2013-05-03 13:27:11','2013-05-03 09:27:23','Yes',NULL),(25,'en','','user',0,'2013-05-03 10:01:05','testing mysql copy with xcopy',NULL,'2013-05-03 10:01:05',2884,'2013-05-03 13:27:11','2013-05-03 09:27:23','Yes',NULL),(26,'en','','user',0,'2013-05-03 10:11:44','testing mysql copy with xcopy',NULL,'2013-05-03 10:11:44',2884,'2013-05-03 13:27:11','2013-05-03 09:27:23','Yes',NULL),(27,'en','','user',0,'2013-05-03 10:19:21','testing mysql copy with xcopy',NULL,'2013-05-03 10:19:21',2884,'2013-05-03 13:27:11','2013-05-03 09:27:23','Yes',NULL),(28,'en','','user',0,'2013-05-03 10:30:26','test two email',NULL,'2013-05-03 10:30:26',2880,'2013-04-29 18:31:54','2013-04-29 14:31:23','Yes',NULL),(29,'en','','user',0,'2013-05-03 10:30:37','test two email',NULL,'2013-05-03 10:30:37',2880,'2013-04-29 18:31:54','2013-04-29 14:31:23','Yes',NULL),(30,'en','','user',0,'2013-05-03 10:30:55','2013-04-25_Thu_10.53-AM',NULL,'2013-05-03 10:30:55',2877,'2013-04-25 14:53:35','2013-04-25 10:53:23','Yes',NULL),(31,'en','','user',0,'2013-05-03 10:31:09','2013-04-25_Thu_10.53-AM',NULL,'2013-05-03 10:31:09',2877,'2013-04-25 14:53:35','2013-04-25 10:53:23','Yes',NULL),(32,'en','','user',0,'2013-05-03 10:32:24','2013-04-09_Tue_08.26-AM',NULL,'2013-05-03 10:32:24',2847,'2013-04-09 12:26:16',NULL,'Yes',NULL),(33,'en','','user',0,'2013-05-03 10:37:36','2013-04-09_Tue_08.26-AM',NULL,'2013-05-03 10:37:36',2847,'2013-04-09 12:26:16',NULL,'No',NULL),(34,'en','','user',0,'2013-05-03 10:38:37','2013-04-09_Tue_08.26-AM',NULL,'2013-05-03 10:38:37',2847,'2013-04-09 12:26:16',NULL,'No',NULL),(35,'en','','user',0,'2013-05-06 16:09:34','2013-04-25_Thu_10.53-AM',NULL,'2013-05-06 16:09:34',2877,'2013-04-25 14:53:35','2013-04-25 10:53:23','Yes',NULL),(36,'en','','user',0,'2013-05-06 16:36:19','going  home',NULL,'2013-05-06 16:36:19',2885,'2013-05-06 20:36:19','2013-05-06 16:36:23','Yes',NULL),(37,'en','','user',0,'2013-05-17 14:24:58','going  home',NULL,'2013-05-17 14:24:58',2885,'2013-05-06 20:36:19','2013-05-06 16:36:23','Yes',NULL),(38,'en','','user',0,'2013-05-22 13:35:04','going  home',NULL,'2013-05-22 13:35:04',2885,'2013-05-06 20:36:19','2013-05-06 16:36:23','Yes',NULL),(39,'en','','user',0,'2013-05-22 13:38:40','going  home',NULL,'2013-05-22 13:38:40',2885,'2013-05-06 20:36:19','2013-05-22 13:38:23','Yes',NULL),(40,'en','','user',0,'2013-05-22 13:44:36','test',NULL,'2013-05-22 13:44:36',2886,'2013-05-22 17:44:36','2013-05-22 13:44:23','Yes',NULL),(41,'en','','user',0,'2013-06-21 09:20:17','a',NULL,'2013-06-21 09:20:17',2887,'2013-06-21 13:20:17',NULL,'Yes',NULL),(42,'en','','user',0,'2013-07-11 10:05:02','test',NULL,'2013-07-11 10:05:01',2886,'2013-05-22 17:44:36','2013-05-22 13:44:23','Yes',NULL),(43,'en','','user',0,'2013-08-01 12:02:11',NULL,NULL,'2013-08-01 12:02:11',2888,'2013-08-01 16:02:11','0000-03-01 00:00:00','Yes',NULL),(44,'en','','user',0,'2013-08-01 12:03:01',NULL,NULL,'2013-08-01 12:03:01',2888,'2013-08-01 16:02:11','2002-03-03 00:00:22','Yes',NULL),(45,'en','','user',0,'2013-08-01 12:03:18',NULL,NULL,'2013-08-01 12:03:18',2888,'2013-08-01 16:02:11','2013-03-02 00:00:23','Yes',NULL),(46,'en','','user',0,'2013-08-01 12:03:29',NULL,NULL,'2013-08-01 12:03:29',2888,'2013-08-01 16:02:11','2013-08-01 00:00:23','Yes',NULL),(47,'en','','user',0,'2013-08-01 12:03:43',NULL,NULL,'2013-08-01 12:03:43',2888,'2013-08-01 16:02:11','2013-02-04 00:00:23','Yes',NULL),(48,'en','','user',0,'2013-08-01 12:12:37',NULL,NULL,'2013-08-01 12:12:37',2888,'2013-08-01 16:02:11','0000-05-23 00:00:00','Yes',NULL),(49,'en','','user',0,'2013-08-01 12:13:13','test',NULL,'2013-08-01 12:13:13',2886,'2013-05-22 17:44:36','0000-05-13 00:00:00','Yes',NULL),(50,'en','','user',0,'2013-08-01 12:14:00','test',NULL,'2013-08-01 12:14:00',2886,'2013-05-22 17:44:36','0000-05-13 00:00:00','Yes',NULL),(51,'en','','user',0,'2013-08-01 12:32:06','2013-04-25_Thu_10.53-AM',NULL,'2013-08-01 12:32:06',2877,'2013-04-25 14:53:35','0000-05-14 00:00:00','Yes',NULL),(52,'en','','user',0,'2013-08-01 12:35:49','going  home',NULL,'2013-08-01 12:35:49',2885,'2013-05-06 20:36:19','0000-05-27 00:00:00','Yes',NULL),(53,'en','','user',0,'2013-08-01 12:36:14','going  home',NULL,'2013-08-01 12:36:14',2885,'2013-05-06 20:36:19','2013-05-25 00:00:23','Yes',NULL),(54,'en','','user',0,'2013-08-07 12:01:49','test',NULL,'2013-08-07 12:01:49',2889,'2013-08-07 16:01:49',NULL,NULL,NULL),(55,'en','','user',0,'2013-08-07 12:08:48','test default active = yes',NULL,'2013-08-07 12:08:48',2890,'2013-08-07 16:08:48',NULL,'Yes',NULL),(56,'en','','user',0,'2013-08-07 12:51:17','2013-08-07_Wed_12.51-PM',NULL,'2013-08-07 12:51:17',2891,'2013-08-07 16:51:17',NULL,'Yes',NULL),(57,'en','','user',0,'2013-08-15 11:11:26','2013-08-07_Wed_12.51-PM\r\n2013-08-15_Thu_11.11-AM',NULL,'2013-08-15 11:11:26',2891,'2013-08-07 16:51:17',NULL,'Yes','2013-08-07_Wed_12.51-PM'),(58,'en','','user',0,'2013-09-04 12:15:50','12:15PM',NULL,'2013-09-04 12:15:50',2892,'2013-09-04 16:15:50',NULL,'Yes',NULL);
/*!40000 ALTER TABLE `nte_note__history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nte_note_tags`
--

DROP TABLE IF EXISTS `nte_note_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nte_note_tags` (
  `nid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`nid`,`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nte_note_tags`
--

LOCK TABLES `nte_note_tags` WRITE;
/*!40000 ALTER TABLE `nte_note_tags` DISABLE KEYS */;
INSERT INTO `nte_note_tags` VALUES (2840,2),(2841,2),(2842,1),(2842,2),(2842,3),(2842,4),(2843,2),(2843,3),(2843,6),(2844,1),(2844,3),(2845,9),(2846,1),(2846,3),(2847,9),(2849,1),(2849,3),(2850,4),(2850,9),(2853,3),(2853,9),(2857,3),(2858,7),(2858,9),(2858,11),(2859,3),(2859,6),(2860,3),(2860,6),(2860,9),(2861,6),(2862,3),(2863,5),(2864,9),(2865,9),(2866,1),(2866,9),(2867,1),(2867,9),(2868,6),(2869,6),(2870,9),(2871,3),(2872,6),(2873,9),(2876,6),(2876,9),(2877,6),(2877,13),(2878,3),(2878,5),(2878,6),(2878,7),(2879,9),(2880,9),(2881,1),(2882,9),(2884,1),(2884,3),(2884,4),(2884,9),(2885,3),(2885,12),(2885,14),(2886,1),(2886,14);
/*!40000 ALTER TABLE `nte_note_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nte_tags`
--

DROP TABLE IF EXISTS `nte_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nte_tags` (
  `tags_id` int(11) NOT NULL AUTO_INCREMENT,
  `tags_list` varchar(234) NOT NULL,
  PRIMARY KEY (`tags_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nte_tags`
--

LOCK TABLES `nte_tags` WRITE;
/*!40000 ALTER TABLE `nte_tags` DISABLE KEYS */;
INSERT INTO `nte_tags` VALUES (1,'computer problem'),(2,'gustin'),(3,'home'),(4,'log'),(5,'money'),(6,'testnote'),(7,'word'),(8,'work'),(9,'xataface'),(10,'co'),(11,'new'),(12,'newtag'),(13,'mysql'),(14,'pmdsdata'),(15,'tim'),(16,'lean');
/*!40000 ALTER TABLE `nte_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nte_tags__history`
--

DROP TABLE IF EXISTS `nte_tags__history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nte_tags__history` (
  `history__id` int(11) NOT NULL AUTO_INCREMENT,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `tags_id` int(11) DEFAULT NULL,
  `tags_list` varchar(234) DEFAULT NULL,
  PRIMARY KEY (`history__id`),
  KEY `prikeys` (`tags_id`) USING HASH,
  KEY `datekeys` (`history__modified`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nte_tags__history`
--

LOCK TABLES `nte_tags__history` WRITE;
/*!40000 ALTER TABLE `nte_tags__history` DISABLE KEYS */;
INSERT INTO `nte_tags__history` VALUES (1,'en','','user',0,'2013-05-03 10:10:44',12,'newtag'),(2,'en','','user',0,'2013-05-06 16:09:31',13,'mysql'),(3,'en','','user',0,'2013-05-22 13:35:03',14,'pmdsdata'),(4,'en','','user',0,'2013-07-12 08:39:37',15,'tim'),(5,'en','','user',0,'2014-03-06 10:57:17',16,'lean');
/*!40000 ALTER TABLE `nte_tags__history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_choice`
--

DROP TABLE IF EXISTS `polls_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice_text` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_choice_7aa0f6ee` (`question_id`),
  CONSTRAINT `polls_choice_question_id_40fbbd72_fk_polls_question_id` FOREIGN KEY (`question_id`) REFERENCES `polls_question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_choice`
--

LOCK TABLES `polls_choice` WRITE;
/*!40000 ALTER TABLE `polls_choice` DISABLE KEYS */;
/*!40000 ALTER TABLE `polls_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_question`
--

DROP TABLE IF EXISTS `polls_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(200) NOT NULL,
  `pub_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_question`
--

LOCK TABLES `polls_question` WRITE;
/*!40000 ALTER TABLE `polls_question` DISABLE KEYS */;
INSERT INTO `polls_question` VALUES (1,'a','2015-11-19 17:24:27');
/*!40000 ALTER TABLE `polls_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'PK: Unique state ID',
  `state` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'State name with first letter capital',
  `abbrev` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Optional state abbreviation (US is 2 capital letters)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Alabama','AL'),(2,'Alaska','AK'),(3,'Arizona','AZ'),(4,'Arkansas','AR'),(5,'California','CA'),(6,'Colorado','CO'),(7,'Connecticut','CT'),(8,'Delaware','DE'),(9,'District of Columbia','DC'),(10,'Florida','FL'),(11,'Georgia','GA'),(12,'Hawaii','HI'),(13,'Idaho','ID'),(14,'Illinois','IL'),(15,'Indiana','IN'),(16,'Iowa','IA'),(17,'Kansas','KS'),(18,'Kentucky','KY'),(19,'Louisiana','LA'),(20,'Maine','ME'),(21,'Maryland','MD'),(22,'Massachusetts','MA'),(23,'Michigan','MI'),(24,'Minnesota','MN'),(25,'Mississippi','MS'),(26,'Missouri','MO'),(27,'Montana','MT'),(28,'Nebraska','NE'),(29,'Nevada','NV'),(30,'New Hampshire','NH'),(31,'New Jersey','NJ'),(32,'New Mexico','NM'),(33,'New York','NY'),(34,'North Carolina','NC'),(35,'North Dakota','ND'),(36,'Ohio','OH'),(37,'Oklahoma','OK'),(38,'Oregon','OR'),(39,'Pennsylvania','PA'),(40,'Rhode Island','RI'),(41,'South Carolina','SC'),(42,'South Dakota','SD'),(43,'Tennessee','TN'),(44,'Texas','TX'),(45,'Utah','UT'),(46,'Vermont','VT'),(47,'Virginia','VA'),(48,'Washington','WA'),(49,'West Virginia','WV'),(50,'Wisconsin','WI'),(51,'Wyoming','WY');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_city`
--

DROP TABLE IF EXISTS `tbl_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_city` (
  `city_id` int(3) NOT NULL AUTO_INCREMENT,
  `state_id` int(3) NOT NULL,
  `city_name` varchar(35) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_city`
--

LOCK TABLES `tbl_city` WRITE;
/*!40000 ALTER TABLE `tbl_city` DISABLE KEYS */;
INSERT INTO `tbl_city` VALUES (1,1,'Surat'),(2,1,'Ahmedabad'),(3,2,'Pune'),(4,2,'Mumbai'),(5,3,'royston'),(6,3,'bedford'),(7,4,'Litherland'),(8,4,'ST. helens'),(9,5,'Abbeville'),(10,5,'Alpine'),(11,6,'Angoon'),(12,6,'Aniak');
/*!40000 ALTER TABLE `tbl_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_country` (
  `country_id` int(3) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(25) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_country`
--

LOCK TABLES `tbl_country` WRITE;
/*!40000 ALTER TABLE `tbl_country` DISABLE KEYS */;
INSERT INTO `tbl_country` VALUES (1,'India'),(2,'United kingdom'),(3,'United States');
/*!40000 ALTER TABLE `tbl_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_state`
--

DROP TABLE IF EXISTS `tbl_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_state` (
  `state_id` int(3) NOT NULL AUTO_INCREMENT,
  `country_id` int(3) NOT NULL,
  `state_name` varchar(35) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_state`
--

LOCK TABLES `tbl_state` WRITE;
/*!40000 ALTER TABLE `tbl_state` DISABLE KEYS */;
INSERT INTO `tbl_state` VALUES (1,1,'Gujarat'),(2,1,'Maharashtra'),(3,2,'Cambridge'),(4,2,'Liverpool'),(5,3,'Alabama'),(6,3,'Alaska');
/*!40000 ALTER TABLE `tbl_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users__history`
--

DROP TABLE IF EXISTS `users__history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users__history` (
  `history__id` int(11) NOT NULL AUTO_INCREMENT,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(244) DEFAULT NULL,
  `Role` enum('READ ONLY','NO ACCESS','EDIT','DELETE','OWNER','USER','ADMIN','REGISTER') DEFAULT NULL,
  `comment_fld1` text,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`history__id`),
  KEY `prikeys` (`username`) USING HASH,
  KEY `datekeys` (`history__modified`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users__history`
--

LOCK TABLES `users__history` WRITE;
/*!40000 ALTER TABLE `users__history` DISABLE KEYS */;
INSERT INTO `users__history` VALUES (1,'en','','qadave',0,'2015-10-05 11:25:55','admin','admin','ADMIN',NULL,'2015-10-05 15:25:55',NULL),(2,'en','','admin',0,'2016-07-25 10:50:03','dgleba','eled','ADMIN',NULL,'2016-07-25 14:50:02',NULL),(3,'en','','dgleba',0,'2016-07-29 16:17:17','pmdsdata','a','READ ONLY',NULL,'2016-07-29 20:17:17',NULL);
/*!40000 ALTER TABLE `users__history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_xataface`
--

DROP TABLE IF EXISTS `users_xataface`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_xataface` (
  `username` varchar(32) NOT NULL,
  `password` varchar(244) NOT NULL,
  `Role` enum('READ ONLY','NO ACCESS','EDIT','DELETE','OWNER','USER','ADMIN','REGISTER') DEFAULT 'READ ONLY',
  `comment_fld1` text,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_xataface`
--

LOCK TABLES `users_xataface` WRITE;
/*!40000 ALTER TABLE `users_xataface` DISABLE KEYS */;
INSERT INTO `users_xataface` VALUES ('admin','admin','ADMIN',NULL,'2015-10-05 15:25:55',NULL),('dgleba','eled','ADMIN',NULL,'2016-07-25 14:50:02',NULL),('pmdsdata','a','READ ONLY',NULL,'2016-07-29 20:17:17',NULL),('qadave','qad','ADMIN',NULL,'2012-06-06 06:58:40',NULL),('user','user','EDIT',NULL,'2012-06-06 06:56:06',NULL);
/*!40000 ALTER TABLE `users_xataface` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vw_nte_note`
--

DROP TABLE IF EXISTS `vw_nte_note`;
/*!50001 DROP VIEW IF EXISTS `vw_nte_note`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_nte_note` (
  `note_id` tinyint NOT NULL,
  `note_fld` tinyint NOT NULL,
  `tags_fld` tinyint NOT NULL,
  `state_fld` tinyint NOT NULL,
  `createdtime` tinyint NOT NULL,
  `updatedtime` tinyint NOT NULL,
  `datenote` tinyint NOT NULL,
  `active` tinyint NOT NULL,
  `note2` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vw_nte_note__history`
--

DROP TABLE IF EXISTS `vw_nte_note__history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vw_nte_note__history` (
  `history__id` int(11) NOT NULL AUTO_INCREMENT,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `note_fld` text,
  `tags_fld` varchar(244) DEFAULT NULL,
  `datenote` datetime DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT NULL,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  `note_id` int(11) DEFAULT NULL,
  `state_fld` varchar(99) DEFAULT NULL,
  `note2` text,
  PRIMARY KEY (`history__id`),
  KEY `prikeys` (`note_id`) USING HASH,
  KEY `datekeys` (`history__modified`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vw_nte_note__history`
--

LOCK TABLES `vw_nte_note__history` WRITE;
/*!40000 ALTER TABLE `vw_nte_note__history` DISABLE KEYS */;
INSERT INTO `vw_nte_note__history` VALUES (1,'en','','user',0,'2013-05-03 10:40:43','2013-04-09_Tue_08.26-AM',NULL,NULL,'No','2013-04-09 12:26:16','2013-05-03 10:40:43',2847,NULL,NULL),(2,'en','','user',0,'2013-09-04 12:14:47','a,2013-08-07_Wed_12.51-PM2013-08-15_Thu_11.11-AM',NULL,NULL,'Yes','2013-08-07 16:51:17','2013-09-04 12:14:47',2891,NULL,NULL),(3,'en','','user',0,'2013-09-04 12:29:55','b 12:15PM',NULL,NULL,'Yes','2013-09-04 16:15:50','2013-09-04 12:29:55',2892,NULL,NULL),(4,'en','','user',0,'2013-09-04 12:38:38','3,  12:15PM',NULL,NULL,'Yes','2013-09-04 16:15:50','2013-09-04 12:38:38',2892,NULL,NULL),(5,'en','','user',0,'2013-09-04 13:12:25','4,  12:15PM',NULL,NULL,'Yes','2013-09-04 16:15:50','2013-09-04 13:12:25',2892,NULL,NULL),(6,'en','','user',0,'2013-09-04 15:40:11','5,  12:15PM',NULL,NULL,'Yes','2013-09-04 16:15:50','2013-09-04 15:40:11',2892,NULL,NULL),(7,'en','','user',0,'2013-09-11 10:13:48',' a,2013-08-07_Wed_12.51-PM2013-08-15_Thu_11.11-AM ',NULL,NULL,'Yes','2013-08-07 16:51:17','2013-09-11 10:13:47',2891,'Maine','2013-08-07_Wed_12.51-PM'),(8,'en','','dgleba',0,'2013-09-11 10:52:30',' test default active = yes ','artsy','2013-09-11 10:52:23','Yes','2013-08-07 16:08:48','2013-09-11 10:52:30',2890,'Florida','test default active = yes'),(9,'en','','user',0,'2013-09-11 11:02:38',' 2013-04-25_Thu_10.53-AM \r\nAdam\r\nHere','Q','2013-09-11 11:02:49','Yes','2013-04-25 14:53:35','2013-09-11 11:02:38',2877,'District of ColumbOk','2013-04-25_Thu_10.53-AM'),(10,'en','','dgleba',0,'2013-09-11 11:05:04',' 2013-04-09_Tue_08.26-AM ',NULL,NULL,'Yes','2013-04-09 12:26:16','2013-09-11 11:05:04',2847,'Tennessee','2013-04-09_Tue_08.26-AM'),(11,'en','','user',0,'2013-09-11 11:15:38',' testing mysql copy with xcopy ',NULL,'2013-09-11 11:15:23','Yes','2013-05-03 13:27:11','2013-09-11 11:15:38',2884,'Michigan','testing mysql copy with xcopy'),(12,'en','','dgleba',0,'2013-09-11 11:23:36','  2013-04-25_Thu_10.53-AM \r\nAdam\r\nHere \r\n\r\nA\r\n','Q','2013-09-11 13:22:23','No','2013-04-25 14:53:35','2013-09-11 11:23:36',2877,'Rhode Island','2013-04-25_Thu_10.53-AM'),(13,'en','','user',0,'2013-09-12 13:41:26',' going  home ',NULL,NULL,'No','2013-05-06 20:36:19','2013-09-12 13:41:26',2885,'District of Columbia','going  home'),(14,'en','','dgleba',0,'2013-09-12 14:08:59',' 2013-04-25_Thu_10.54-AM ',NULL,NULL,'Yes','2013-04-25 14:54:14','2013-09-12 14:08:58',2878,NULL,'2013-04-25_Thu_10.54-AM'),(15,'en','','dgleba',0,'2013-09-12 14:09:14','  2013-04-25_Thu_10.54-AM  ',NULL,'2013-09-12 01:00:23','Yes','2013-04-25 14:54:14','2013-09-12 14:09:14',2878,NULL,'2013-04-25_Thu_10.54-AM'),(16,'en','','dgleba',0,'2013-09-12 14:15:47','   2013-04-25_Thu_10.54-AM   ',NULL,'2013-09-12 01:00:23','Yes','2013-04-25 14:54:14','2013-09-12 14:15:47',2878,NULL,'2013-04-25_Thu_10.54-AM'),(17,'en','','dgleba',0,'2013-09-12 14:25:06','    2013-04-25_Thu_10.54-AM    ',NULL,'2013-09-12 14:25:22','Yes','2013-04-25 14:54:14','2013-09-12 14:25:06',2878,NULL,'2013-04-25_Thu_10.54-AM'),(18,'en','','dgleba',0,'2013-09-12 14:28:34','     2013-04-25_Thu_10.54-AM     ',NULL,'2013-09-12 14:25:22','Yes','2013-04-25 14:54:14','2013-09-12 14:28:34',2878,NULL,'2013-04-25_Thu_10.54-AM'),(19,'en','','dgleba',0,'2013-09-12 14:29:50',' 2013-04-25_Thu_09.58-AM ',NULL,'2013-08-25 09:58:23','Yes','2013-04-25 13:59:01','2013-09-12 14:29:49',2872,NULL,'2013-04-25_Thu_09.58-AM'),(20,'en','','dgleba',0,'2013-09-12 15:10:19','  testing mysql copy with xcopy  ',NULL,NULL,'Yes','2013-05-03 13:27:11','2013-09-12 15:10:19',2884,'Delaware','testing mysql copy with xcopy'),(21,'en','','dgleba',0,'2013-09-12 15:11:08','   testing mysql copy with xcopy   ',NULL,'2013-09-12 15:11:23','Yes','2013-05-03 13:27:11','2013-09-12 15:11:08',2884,'Delaware','testing mysql copy with xcopy'),(22,'en','','dgleba',0,'2013-09-12 15:13:25','  2013-04-25_Thu_09.58-AM  ',NULL,NULL,'Yes','2013-04-25 13:59:01','2013-09-12 15:13:25',2872,NULL,'2013-04-25_Thu_09.58-AM'),(23,'en','','dgleba',0,'2013-09-13 11:15:39','    testing mysql copy with xcopy    ',NULL,NULL,'Yes','2013-05-03 13:27:11','2013-09-13 11:15:39',2884,'Vermont','testing mysql copy with xcopy'),(24,'en','','dgleba',0,'2013-09-13 11:34:27',' test two email ',NULL,'2013-09-13 11:34:23','Yes','2013-04-29 18:31:54','2013-09-13 11:34:27',2880,'Nevada','test two email'),(25,'en','','dgleba',0,'2013-09-16 09:50:50','  test two email  b',NULL,NULL,'','2013-04-29 18:31:54','2013-09-16 09:50:50',2880,'Nevada','test two email'),(26,'en','','dgleba',0,'2013-09-16 13:47:12','   2013-04-25_Thu_09.58-AM   ',NULL,'2013-09-16 13:44:23','','2013-04-25 13:59:01','2013-09-16 13:47:12',2872,NULL,'2013-04-25_Thu_09.58-AM'),(27,'en','','user',0,'2013-09-16 14:32:17','   2013-04-25_Thu_10.53-AM \r\nAdam\r\nHere \r\n\r\nA b\r\n ','Quite','2013-09-11 13:22:23','Yes','2013-04-25 14:53:35','2013-09-16 14:32:17',2877,'Michigan','2013-04-25_Thu_10.53-AM'),(28,'en','','user',0,'2013-09-16 14:34:35','   2013-04-25_Thu_10.53-AM \r\nAdam\r\nHere \r\n\r\nA b\r\n ','Quite','2013-09-11 14:46:23','Yes','2013-04-25 14:53:35','2013-09-16 14:34:35',2877,'Texas','2013-04-25_Thu_10.53-AM'),(29,'en','','user',0,'2013-09-16 14:34:36','   2013-04-25_Thu_10.53-AM \r\nAdam\r\nHere \r\n\r\nA b\r\n ','Quite','2013-09-11 14:46:23','Yes','2013-04-25 14:53:35','2013-09-16 14:34:36',2877,'Texas','2013-04-25_Thu_10.53-AM'),(30,'en','','user',0,'2013-09-16 14:35:21','   2013-04-25_Thu_10.53-AM \r\nAdam\r\nHere \r\n\r\nA b\r\n ','Quite',NULL,'Yes','2013-04-25 14:53:35','2013-09-16 14:35:21',2877,'Rhode Island','2013-04-25_Thu_10.53-AM'),(31,'en','','dgleba',0,'2013-09-16 14:36:28','   2013-04-25_Thu_09.58-AM   ',NULL,'2013-09-16 13:44:23','','2013-04-25 13:59:01','2013-09-16 14:36:28',2872,NULL,'2013-04-25_Thu_09.58-AM'),(32,'en','','dgleba',0,'2013-09-16 14:43:52','    2013-04-25_Thu_10.53-AM \r\nAdam\r\nHere \r\n\r\nA b\r\n  ','Quite','2013-09-16 14:43:23','Yes','2013-04-25 14:53:35','2013-09-16 14:43:52',2877,'New Jersey','2013-04-25_Thu_10.53-AM'),(33,'en','','dgleba',0,'2013-09-16 15:35:57',' dash\r\n2013-09-16_Mon_15.35-PM ',NULL,'2013-09-16 15:35:23','Yes','2013-09-16 19:35:17','2013-09-16 15:35:57',2893,'Hawaii',NULL),(34,'en','','dgleba',0,'2013-09-17 11:44:57','  Wish','sell','2013-09-17 11:42:23','Yes','2013-09-17 15:42:50','2013-09-17 11:44:57',2901,'Rhode Island',NULL),(35,'en','','dgleba',0,'2013-09-17 12:22:10','   Wish 2','sell','2013-09-17 11:42:23','Yes','2013-09-17 15:42:50','2013-09-17 12:22:10',2901,'Rhode Island',NULL),(36,'en','','dgleba',0,'2013-09-19 13:44:15',' test bcc cc. 2013-04-30_Tue_11.18-AM ','dash b','2013-04-29 14:36:23','Yes','2013-04-29 18:36:27','2013-09-19 13:44:15',2881,NULL,'test bcc cc. 2013-04-30_Tue_11.18-AM'),(37,'en','','dgleba',0,'2013-09-19 14:53:58','  Yellow',NULL,'2013-09-17 11:06:23','','2013-09-17 15:06:45','2013-09-19 14:53:58',2899,'New Jersey',NULL),(38,'en','','dgleba',0,'2013-09-19 14:54:43','    Wish 2 ','sell','2013-09-17 11:42:23','Yes','2013-09-17 15:42:50','2013-09-19 14:54:43',2901,'Rhode Island',NULL),(39,'en','','dgleba',0,'2013-09-19 15:00:22',' Henry ',NULL,'2013-09-19 14:59:23','Yes','2013-09-19 18:57:18','2013-09-19 15:00:22',2905,'West Virginia',NULL),(40,'en','','dgleba',0,'2013-09-19 15:00:22',' Henry ',NULL,'2013-09-19 14:59:23','Yes','2013-09-19 18:57:18','2013-09-19 15:00:22',2905,'West Virginia',NULL),(41,'en','','user',0,'2013-09-23 16:12:14',' a ','a','2013-09-23 16:11:23','Yes','2013-09-23 20:11:32','2013-09-23 16:12:14',2908,'Minnesota',NULL),(42,'en','','pmdsdata',0,'2016-07-29 16:18:15',' 2015-07-08_Wed_19.29-PM ',NULL,NULL,'Yes','2015-07-08 23:29:43','2016-07-29 16:18:15',2921,NULL,NULL);
/*!40000 ALTER TABLE `vw_nte_note__history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z,bk1,nte_note`
--

DROP TABLE IF EXISTS `z,bk1,nte_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z,bk1,nte_note` (
  `note_id` int(11) NOT NULL AUTO_INCREMENT,
  `note_fld` text,
  `tags_fld` varchar(244) DEFAULT NULL,
  `state_fld` varchar(99) DEFAULT NULL,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  `datenote` datetime DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT 'Yes',
  `note2` text,
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2919 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z,bk1,nte_note`
--

LOCK TABLES `z,bk1,nte_note` WRITE;
/*!40000 ALTER TABLE `z,bk1,nte_note` DISABLE KEYS */;
INSERT INTO `z,bk1,nte_note` VALUES (2836,'<p>a</p>',NULL,NULL,'2012-07-16 16:38:16','2012-07-16 12:38:16',NULL,NULL,'<p>a</p>'),(2837,'<p>b</p>',NULL,NULL,'2012-07-16 16:38:59','2012-07-16 12:38:59',NULL,NULL,'<p>b</p>'),(2838,'a',NULL,NULL,'2012-07-16 17:01:01','2013-04-15 11:55:51',NULL,NULL,'a'),(2839,'<p>e</p>',NULL,NULL,'2012-07-16 17:04:29','2012-07-16 13:09:20',NULL,NULL,'<p>e</p>'),(2840,'2013-04-08_Mon_11.49-AM',NULL,NULL,'2013-04-08 15:49:08','2013-04-15 11:49:15',NULL,NULL,'2013-04-08_Mon_11.49-AM'),(2841,NULL,NULL,NULL,'2013-04-08 15:50:09','2013-04-08 11:50:09',NULL,NULL,NULL),(2842,'11:56AM',NULL,NULL,'2013-04-08 15:56:29','2013-04-15 11:53:44',NULL,'No','11:56AM'),(2843,'2013-04-08_Mon_12.01-PM',NULL,NULL,'2013-04-08 16:01:39','2013-04-15 11:49:37',NULL,NULL,'2013-04-08_Mon_12.01-PM'),(2844,'<p>tagger1.</p>\r\n<p>2013-04-08_Mon_12.04-PM</p>',NULL,NULL,'2013-04-08 16:04:21','2013-04-08 12:05:29',NULL,NULL,'<p>tagger1.</p>\r\n<p>2013-04-08_Mon_12.04-PM</p>'),(2845,'2845\r\n',NULL,NULL,'2013-04-08 19:13:48','2013-04-24 15:43:18',NULL,'No','2845\r\n'),(2846,NULL,NULL,NULL,'2013-04-08 19:53:15','2013-04-08 15:53:15',NULL,NULL,NULL),(2847,' 2013-04-09_Tue_08.26-AM ',NULL,'Tennessee','2013-04-09 12:26:16','2013-09-11 11:05:04',NULL,'Yes','2013-04-09_Tue_08.26-AM'),(2848,NULL,NULL,NULL,'2013-04-09 12:31:02','2013-04-09 08:32:07','2013-04-09 11:31:23','Yes',NULL),(2849,NULL,NULL,NULL,'2013-04-09 12:47:16','2013-04-10 09:19:50','2013-04-09 08:47:23','Yes',NULL),(2850,'q',NULL,NULL,'2013-04-15 18:16:23','2013-04-15 14:16:56','2013-04-10 14:16:23',NULL,'q'),(2851,'Either spotting a gap in the market or just out of loyalty to its best buddy Microsoft, Dell has released its own Windows RT slate. Aimed at business users, the 10.1-inch Dell XPS 10 is another transformer-style laptop-tablet hybrid, shipping with an attachable keyboard that turns it into a laptop for working on the move.\r\nThe Dell XPS 10 falls into a crowded market, with a host of devices aiming to please similar needs. The Asus VivoTab, Samsung Ativ Tab and of course the Microsoft Surface RT are all offering the same USP, and there are other hybrids such as the Lenovo IdeaPad Yoga 11 too.\r\nWhile there\'s no shortage of big players in the market, Dell\'s late arrival doesn\'t mean it\'s too far behind; no RT device has gained any traction to date.\r\n\r\nBuying Guide\r\n\r\n10 best tablet PCs in the world today\r\nThe XPS 10 fits perfectly into Dell\'s line up of high end machines, joining its XPS 12, XPS 13 and XPS 15 siblings. It looks like an XPS, with a soft black finish and a rubberised texture, and the same rounded chiclet keys adorning the base station.\r\nThe XPS range is certainly high quality, and each component of the 10-inch RT tablet follows this design ethos to a tee.\r\nCompared to some notable offenders, Dell has managed to keep the price down to a reasonable level. The base level 32GB device without the keyboard costs £299/US$449.99, the 32GB version with the keyboard dock costs £409/US$599.99, the 64GB without a keyboard costs £339/US$499.99, while the 64GB version with the dock is £444/US$649.99.\r\n',NULL,NULL,'2013-04-18 15:12:59','2013-04-18 11:49:54',NULL,NULL,'Either spotting a gap in the market or just out of loyalty to its best buddy Microsoft, Dell has released its own Windows RT slate. Aimed at business users, the 10.1-inch Dell XPS 10 is another transformer-style laptop-tablet hybrid, shipping with an attachable keyboard that turns it into a laptop for working on the move.\r\nThe Dell XPS 10 falls into a crowded market, with a host of devices aiming to please similar needs. The Asus VivoTab, Samsung Ativ Tab and of course the Microsoft Surface RT are all offering the same USP, and there are other hybrids such as the Lenovo IdeaPad Yoga 11 too.\r\nWhile there\'s no shortage of big players in the market, Dell\'s late arrival doesn\'t mean it\'s too far behind; no RT device has gained any traction to date.\r\n\r\nBuying Guide\r\n\r\n10 best tablet PCs in the world today\r\nThe XPS 10 fits perfectly into Dell\'s line up of high end machines, joining its XPS 12, XPS 13 and XPS 15 siblings. It looks like an XPS, with a soft black finish and a rubberised texture, and the same rounded chiclet keys adorning the base station.\r\nThe XPS range is certainly high quality, and each component of the 10-inch RT tablet follows this design ethos to a tee.\r\nCompared to some notable offenders, Dell has managed to keep the price down to a reasonable level. The base level 32GB device without the keyboard costs £299/US$449.99, the 32GB version with the keyboard dock costs £409/US$599.99, the 64GB without a keyboard costs £339/US$499.99, while the 64GB version with the dock is £444/US$649.99.\r\n'),(2852,'test mail send',NULL,NULL,'2013-04-19 18:09:18','2013-04-19 14:09:18','2013-04-19 14:09:23',NULL,'test mail send'),(2853,'test tags',NULL,NULL,'2013-04-19 18:09:53','2013-04-19 14:09:53',NULL,NULL,'test tags'),(2854,'04:00PM',NULL,NULL,'2013-04-19 20:00:52','2013-04-19 16:00:52',NULL,NULL,'04:00PM'),(2855,'04:27PM',NULL,NULL,'2013-04-19 20:27:08','2013-04-19 16:27:08',NULL,NULL,'04:27PM'),(2856,'2013-04-19_Fri_16.29-PM\r\ntest note.\r\n.\r\nx',NULL,NULL,'2013-04-19 20:30:11','2013-04-19 16:30:11',NULL,NULL,'2013-04-19_Fri_16.29-PM\r\ntest note.\r\n.\r\nx'),(2857,'2013-04-22_Mon_10.30-AM test csd email',NULL,NULL,'2013-04-22 14:30:55','2013-04-22 10:30:55','2013-04-22 10:30:23','Yes','2013-04-22_Mon_10.30-AM test csd email'),(2858,'a',NULL,NULL,'2013-04-22 14:33:43','2013-04-22 10:33:43','2013-04-22 10:33:23','No','a'),(2859,'test double email',NULL,NULL,'2013-04-22 14:40:15','2013-04-22 10:40:15','2013-04-22 10:40:23','Yes','test double email'),(2860,'cleaned up',NULL,NULL,'2013-04-22 15:03:50','2013-04-22 11:03:50','2013-04-22 11:03:23','Yes','cleaned up'),(2861,'Get Involved\r\n\r\nIf you want to help contribute to Ubuntu then you\'ve come to the right place. Keep reading to learn how.\r\n\r\nYou have just taken your first step toward getting involved. Before you get started, we ask that you please observe the Ubuntu Code of Conduct, it\'s not very long and it will help you get started.\r\n\r\nNow that\'s done. To find out the best way to get started, you should check out our community page.\r\n\r\nTeams\r\n\r\nThe Teams page contains a listing of all the various Community Teams, links to their Wiki Home Pages and\r\n\r\nMost Teams\' Wiki Home Pages provide information about who they are, what they do, when their meetings are and how to contact them. Using these pages, teammates are able communicate and coordinate projects.\r\n\r\nGovernance and Membership\r\n\r\nLike most communities, we have our rules and governing body.\r\n\r\nAnyone can join and participate in most, if not all, of our Teams and Projects. But if you want an \"@ubuntu.com\" e-mail address, it has to be earned. Find out how in our Membership section.\r\n\r\nCommunity Links\r\n\r\nAs an active member of our community, you probably should check out what else is going on in the world of Ubuntu:\r\n\r\nThe Fridge posts all the latest News and Upcoming Events.\r\nPlanet Ubuntu is a collection of community blogs.\r\nAlso you can help at Ubuntu Brainstorm by submitting your ideas to make Ubuntu better OS for everyone.\r\n\r\nIf you are interested to get to know other Ubuntu users or see a list of Ubuntu teams outside the general Ubuntu world, check out our social network page.\r\n\r\nReleases',NULL,NULL,'2013-04-22 15:07:43','2013-04-22 11:07:43','2013-04-22 11:07:23','Yes','Get Involved\r\n\r\nIf you want to help contribute to Ubuntu then you\'ve come to the right place. Keep reading to learn how.\r\n\r\nYou have just taken your first step toward getting involved. Before you get started, we ask that you please observe the Ubuntu Code of Conduct, it\'s not very long and it will help you get started.\r\n\r\nNow that\'s done. To find out the best way to get started, you should check out our community page.\r\n\r\nTeams\r\n\r\nThe Teams page contains a listing of all the various Community Teams, links to their Wiki Home Pages and\r\n\r\nMost Teams\' Wiki Home Pages provide information about who they are, what they do, when their meetings are and how to contact them. Using these pages, teammates are able communicate and coordinate projects.\r\n\r\nGovernance and Membership\r\n\r\nLike most communities, we have our rules and governing body.\r\n\r\nAnyone can join and participate in most, if not all, of our Teams and Projects. But if you want an \"@ubuntu.com\" e-mail address, it has to be earned. Find out how in our Membership section.\r\n\r\nCommunity Links\r\n\r\nAs an active member of our community, you probably should check out what else is going on in the world of Ubuntu:\r\n\r\nThe Fridge posts all the latest News and Upcoming Events.\r\nPlanet Ubuntu is a collection of community blogs.\r\nAlso you can help at Ubuntu Brainstorm by submitting your ideas to make Ubuntu better OS for everyone.\r\n\r\nIf you are interested to get to know other Ubuntu users or see a list of Ubuntu teams outside the general Ubuntu world, check out our social network page.\r\n\r\nReleases'),(2862,'b',NULL,NULL,'2013-04-22 15:11:08','2013-04-22 11:11:08','2013-04-22 11:11:23','Yes','b'),(2863,'Weiss\r\n',NULL,NULL,'2013-04-22 15:28:44','2013-04-22 11:28:44','2013-04-22 11:28:23','Yes','Weiss\r\n'),(2864,'email on?',NULL,NULL,'2013-04-24 16:04:36','2013-04-24 12:04:36','2013-04-24 12:04:23','Yes','email on?'),(2865,'2013-04-24_Wed_14.22-PM test with filter. 03:48PM',NULL,NULL,'2013-04-24 18:22:42','2013-04-24 15:48:41','2013-04-24 14:22:23','Yes','2013-04-24_Wed_14.22-PM test with filter. 03:48PM'),(2866,'moved default filter to index.php',NULL,NULL,'2013-04-24 19:34:19','2013-04-24 15:34:19','2013-04-24 15:34:23',NULL,'moved default filter to index.php'),(2867,'moved default filter to index.php',NULL,NULL,'2013-04-24 19:35:00','2013-04-24 15:35:00','2013-04-24 15:34:23',NULL,'moved default filter to index.php'),(2868,'a',NULL,NULL,'2013-04-24 19:35:31','2013-04-24 15:35:31','2013-04-24 15:35:23','Yes','a'),(2869,'a',NULL,NULL,'2013-04-24 19:35:34','2013-04-24 15:35:34','2013-04-24 15:35:23','Yes','a'),(2870,'test index.php filter',NULL,NULL,'2013-04-24 19:37:08','2013-04-24 15:37:08','2013-04-24 15:37:23','No','test index.php filter'),(2871,'a',NULL,NULL,'2013-04-24 19:41:51','2013-04-24 15:41:51','2013-04-24 15:41:23','Yes','a'),(2872,'   2013-04-25_Thu_09.58-AM   ',NULL,NULL,'2013-04-25 13:59:01','2013-09-16 14:36:28','2013-09-16 13:44:23','','2013-04-25_Thu_09.58-AM'),(2873,'2013-04-25_Thu_10.29-AM default sort in sql in fields.ini',NULL,NULL,'2013-04-25 14:29:35','2013-04-25 10:29:35','2013-04-25 10:29:23','Yes','2013-04-25_Thu_10.29-AM default sort in sql in fields.ini'),(2874,'2013-04-25_Thu_10.36-AM test view add',NULL,NULL,'2013-04-25 14:36:50','2013-04-25 10:36:50','2013-04-25 10:36:23','Yes','2013-04-25_Thu_10.36-AM test view add'),(2875,'2013-04-25_Thu_10.41-AM test view add',NULL,NULL,'2013-04-25 14:41:22','2013-04-25 10:41:22','2013-04-25 10:41:23',NULL,'2013-04-25_Thu_10.41-AM test view add'),(2876,'2013-04-25_Thu_10.49-AM',NULL,NULL,'2013-04-25 14:49:23','2013-04-25 10:49:23','2013-04-25 10:49:23','Yes','2013-04-25_Thu_10.49-AM'),(2877,'    2013-04-25_Thu_10.53-AM \r\nAdam\r\nHere \r\n\r\nA b\r\n  ','Quite','New Jersey','2013-04-25 14:53:35','2013-09-16 14:43:52','2013-09-16 14:43:23','Yes','2013-04-25_Thu_10.53-AM'),(2878,'     2013-04-25_Thu_10.54-AM     ',NULL,NULL,'2013-04-25 14:54:14','2013-09-12 14:28:34','2013-09-12 14:25:22','Yes','2013-04-25_Thu_10.54-AM'),(2879,'test email from filtered table',NULL,NULL,'2013-04-29 13:12:21','2013-04-29 09:12:21','2013-04-29 09:12:23','Yes','test email from filtered table'),(2880,'  test two email  b',NULL,'Nevada','2013-04-29 18:31:54','2013-09-16 09:50:50',NULL,'','test two email'),(2881,' test bcc cc. 2013-04-30_Tue_11.18-AM ','dash b',NULL,'2013-04-29 18:36:27','2013-09-19 13:44:15','2013-04-29 14:36:23','Yes','test bcc cc. 2013-04-30_Tue_11.18-AM'),(2882,'2013-05-02_Thu_13.22-PM test offline',NULL,NULL,'2013-05-02 17:24:06','2013-05-02 13:24:06','2013-05-02 13:22:23','Yes','2013-05-02_Thu_13.22-PM test offline'),(2883,'moved xampp from c p2 websw to c p2',NULL,NULL,'2013-05-02 19:37:30','2013-05-02 15:37:30',NULL,'Yes','moved xampp from c p2 websw to c p2'),(2884,'    testing mysql copy with xcopy    ',NULL,'Vermont','2013-05-03 13:27:11','2013-09-13 11:15:39',NULL,'Yes','testing mysql copy with xcopy'),(2885,' going  home ',NULL,'District of Columbia','2013-05-06 20:36:19','2013-09-12 13:41:26',NULL,'No','going  home'),(2886,'test',NULL,NULL,'2013-05-22 17:44:36','2013-08-01 12:14:00','0000-05-13 00:00:00','Yes','test'),(2887,'a',NULL,NULL,'2013-06-21 13:20:17','2013-06-21 09:20:17',NULL,'Yes','a'),(2888,NULL,NULL,NULL,'2013-08-01 16:02:11','2013-08-01 12:12:37','0000-05-23 00:00:00','Yes',NULL),(2889,'test',NULL,NULL,'2013-08-07 16:01:49','2013-08-07 12:01:49',NULL,NULL,'test'),(2890,' test default active = yes ','artsy','Florida','2013-08-07 16:08:48','2013-09-11 10:52:30','2013-09-11 10:52:23','Yes','test default active = yes'),(2891,' a,2013-08-07_Wed_12.51-PM2013-08-15_Thu_11.11-AM ',NULL,'Maine','2013-08-07 16:51:17','2013-09-11 10:13:47',NULL,'Yes','2013-08-07_Wed_12.51-PM'),(2892,'5,  12:15PM',NULL,NULL,'2013-09-04 16:15:50','2013-09-04 15:40:11',NULL,'Yes',NULL),(2893,' dash\r\n2013-09-16_Mon_15.35-PM ',NULL,'Hawaii','2013-09-16 19:35:17','2013-09-16 15:35:57','2013-09-16 15:35:23','Yes',NULL),(2894,'d','d','Mississippi','2013-09-17 13:57:38','2013-09-17 09:57:38','2013-09-17 09:57:23','',NULL),(2895,NULL,NULL,NULL,'2013-09-17 14:42:10','2013-09-17 10:42:10','2013-09-17 10:42:23','',NULL),(2896,NULL,NULL,NULL,'2013-09-17 14:42:22','2013-09-17 10:42:22','2013-09-17 10:42:23','',NULL),(2897,NULL,NULL,NULL,'2013-09-17 14:46:13','2013-09-17 10:46:13','2013-09-17 10:44:23',NULL,NULL),(2898,NULL,NULL,NULL,'2013-09-17 14:58:11','2013-09-17 10:58:11','2013-09-17 10:58:23',NULL,NULL),(2899,'  Yellow',NULL,'New Jersey','2013-09-17 15:06:45','2013-09-19 14:53:58','2013-09-17 11:06:23','',NULL),(2900,'a','b','Vermont','2013-09-17 15:20:44','2013-09-17 11:20:44','2013-09-17 11:20:23','Yes',NULL),(2901,'    Wish 2 ','sell','Rhode Island','2013-09-17 15:42:50','2013-09-19 14:54:43','2013-09-17 11:42:23','Yes',NULL),(2902,'2013-09-17_Tue_12.24-PM',NULL,'Wisconsin','2013-09-17 16:24:48','2013-09-17 12:24:48','2013-09-17 12:24:23','Yes',NULL),(2903,NULL,NULL,NULL,'2013-09-17 18:50:59','2013-09-17 14:50:59','2013-09-17 14:50:23','Yes',NULL),(2904,'Green','Gramm',NULL,'2013-09-19 18:55:30','2013-09-19 14:55:30','2013-09-19 14:54:23','Yes',NULL),(2905,' Henry ',NULL,'West Virginia','2013-09-19 18:57:18','2013-09-19 15:00:22','2013-09-19 14:59:23','Yes',NULL),(2906,'Wash','am','Tennessee','2013-09-20 12:57:30','2013-09-20 08:57:30','2013-09-20 08:56:23','Yes',NULL),(2907,'Leak','X','District of Columbia','2013-09-20 20:09:53','2013-09-20 16:09:53','2013-09-20 16:08:23','Yes',NULL),(2908,' a ','a','Minnesota','2013-09-23 20:11:32','2013-09-23 16:12:14','2013-09-23 16:11:23','Yes',NULL),(2909,'04:12PM',NULL,NULL,'2013-09-23 20:12:31','2013-09-23 16:12:31','2013-09-23 16:12:23','Yes',NULL),(2910,'b','computer problem, xataface, gustin, ','Indiana','2013-11-26 19:26:57','2013-11-26 14:26:57','2013-11-26 14:26:23','Yes',NULL),(2911,'Test','computer problem, work, word, ','Massachusetts','2014-03-04 15:48:24','2014-03-04 10:48:24','2014-03-04 10:47:23','Yes',NULL),(2912,'d','computer problem, ','West Virginia','2014-06-04 19:31:31','2014-06-04 15:31:31','2014-06-04 15:31:23','No',NULL),(2913,'a','a','a','2014-06-04 19:32:57','2014-06-04 15:32:57','2014-06-04 15:32:23','No',NULL),(2914,'b','b','b','2014-06-04 19:33:54','2014-06-04 15:33:54','2014-06-04 15:33:23','Yes',NULL),(2915,'a','a','a','2014-06-04 19:35:38','2014-06-04 15:35:38','2014-06-04 15:35:23','Yes',NULL),(2916,'a','q','q','2014-06-04 19:44:16','2014-06-04 15:44:16','2014-06-04 15:35:23','Yes',NULL),(2917,'a','w','w','2014-06-04 19:46:25','2014-06-04 15:46:25','2014-06-04 15:35:23','Yes',NULL),(2918,'a','w','w','2014-06-04 19:47:48','2014-06-04 15:47:48','2014-06-04 15:35:23','Yes',NULL);
/*!40000 ALTER TABLE `z,bk1,nte_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dgnote130'
--

--
-- Dumping routines for database 'dgnote130'
--

--
-- Current Database: `dgnote130`
--


--
-- Final view structure for view `dataface__view_05bc21d889015ac9418d98c68778e843`
--

/*!50001 DROP TABLE IF EXISTS `dataface__view_05bc21d889015ac9418d98c68778e843`*/;
/*!50001 DROP VIEW IF EXISTS `dataface__view_05bc21d889015ac9418d98c68778e843`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `dataface__view_05bc21d889015ac9418d98c68778e843` AS select `n`.`note_id` AS `note_id`,`n`.`note_fld` AS `note_fld`,`n`.`tags_fld` AS `tags_fld`,`n`.`state_fld` AS `state_fld`,`n`.`country_id` AS `country_id`,`n`.`province_id` AS `province_id`,`n`.`city_id` AS `city_id`,`n`.`createdtime` AS `createdtime`,`n`.`updatedtime` AS `updatedtime`,`n`.`datenote` AS `datenote`,`n`.`active` AS `active`,`n`.`note2` AS `note2`,`nt`.`nid` AS `nid`,`nt`.`tid` AS `tid`,`t`.`tags_id` AS `tags_id`,`t`.`tags_list` AS `tags_list`,group_concat(`t`.`tags_list` separator ',') AS `tagslisted` from ((`nte_note` `n` left join `nte_note_tags` `nt` on((`n`.`note_id` = `nt`.`nid`))) left join `nte_tags` `t` on((`nt`.`tid` = `t`.`tags_id`))) group by `n`.`note_id` order by `n`.`updatedtime` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dataface__view_299ce1ed290202495402f7c56c5bd9df`
--

/*!50001 DROP TABLE IF EXISTS `dataface__view_299ce1ed290202495402f7c56c5bd9df`*/;
/*!50001 DROP VIEW IF EXISTS `dataface__view_299ce1ed290202495402f7c56c5bd9df`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `dataface__view_299ce1ed290202495402f7c56c5bd9df` AS select `n`.`note_id` AS `note_id`,`n`.`note_fld` AS `note_fld`,`n`.`tags_fld` AS `tags_fld`,`n`.`state_fld` AS `state_fld`,`n`.`createdtime` AS `createdtime`,`n`.`updatedtime` AS `updatedtime`,`n`.`datenote` AS `datenote`,`n`.`active` AS `active`,`n`.`note2` AS `note2`,`nt`.`nid` AS `nid`,`nt`.`tid` AS `tid`,`t`.`tags_id` AS `tags_id`,`t`.`tags_list` AS `tags_list`,group_concat(`t`.`tags_list` separator ',') AS `tagslisted` from ((`vw_nte_note` `n` left join `nte_note_tags` `nt` on((`n`.`note_id` = `nt`.`nid`))) left join `nte_tags` `t` on((`nt`.`tid` = `t`.`tags_id`))) group by `n`.`note_id` order by `n`.`updatedtime` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_nte_note`
--

/*!50001 DROP TABLE IF EXISTS `vw_nte_note`*/;
/*!50001 DROP VIEW IF EXISTS `vw_nte_note`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vw_nte_note` AS select `nte_note`.`note_id` AS `note_id`,`nte_note`.`note_fld` AS `note_fld`,`nte_note`.`tags_fld` AS `tags_fld`,`nte_note`.`state_fld` AS `state_fld`,`nte_note`.`createdtime` AS `createdtime`,`nte_note`.`updatedtime` AS `updatedtime`,`nte_note`.`datenote` AS `datenote`,`nte_note`.`active` AS `active`,`nte_note`.`note2` AS `note2` from `nte_note` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-31 15:27:48
