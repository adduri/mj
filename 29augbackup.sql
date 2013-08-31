-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mj
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.04.1

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
-- Table structure for table `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_admin_notes_on_resource_type_and_resource_id` (`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_admin_comments`
--

LOCK TABLES `active_admin_comments` WRITE;
/*!40000 ALTER TABLE `active_admin_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin@maheshwari.com','$2a$10$mAkJvyaxEL9TZj.Z2nIc4uzO3Mh7HKy9zwh049KXrOTexbvv.LUKe',NULL,NULL,NULL,10,'2013-08-29 07:14:36','2013-08-29 06:57:02','183.82.209.68','183.82.209.68','2013-08-23 05:37:05','2013-08-29 07:14:36');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8_unicode_ci,
  `contact` text COLLATE utf8_unicode_ci,
  `house_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datax` int(11) DEFAULT NULL,
  `datay` int(11) DEFAULT NULL,
  `row` int(11) DEFAULT NULL,
  `col` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `photo1_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo1_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo1_file_size` int(11) DEFAULT NULL,
  `photo1_updated_at` datetime DEFAULT NULL,
  `photo2_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo2_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo2_file_size` int(11) DEFAULT NULL,
  `photo2_updated_at` datetime DEFAULT NULL,
  `photo3_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo3_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo3_file_size` int(11) DEFAULT NULL,
  `photo3_updated_at` datetime DEFAULT NULL,
  `otherad1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherad2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherad3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherad4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherad5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (6,'SV SCHOOLS','A school is an institution designed for the teaching of students (or \"pupils\") under the direction of teachers. Most countries have systems of formal education, which is commonly compulsory.[citation needed] In these systems, students progress through a series of schools. The names for these schools vary by country (discussed in the Regional section below), but generally include primary school for young children and secondary school for teenagers who have completed primary education. An institution where higher education is taught, is commonly called a university college or university.\r\n',NULL,'3-23/121 ','VISHAKHA STEELS','MEHDIPATNAM','Hyderabad Urban','Andhra Pradesh','India','bschools','SRI VENKATESWHARA SCHOOLS','SATHISH BHARADVAJ 9000123654','sathish.bharadvaj@gmail.com',2,2,1,1,'2013-08-18 03:49:37','2013-08-18 03:52:16','6.jpg','image/jpeg',137964,'2013-08-18 03:49:34','3.jpg','image/jpeg',14137,'2013-08-18 03:49:36','2.jpg','image/jpeg',166965,'2013-08-18 03:49:37','OTHER ADDS','OTHER ADDS','OTHER ADDS','OTHER ADDS','OTHER ADDS'),(7,'NARENDRA SCHOOLS','A school is an institution designed for the teaching of students (or \"pupils\") under the direction of teachers. Most countries have systems of formal education, which is commonly compulsory.[citation needed] In these systems, students progress through a series of schools. The names for these schools vary by country (discussed in the Regional section below), but generally include primary school for young children and secondary school for teenagers who have completed primary education. An institution where higher education is taught, is commonly called a university college or university. ',NULL,'23-4/33-A','SARASWHATHI NAGAR','MEHDIPATNAM','Cuddapah','Andhra Pradesh','India','bschools','NARENDRA HIGH SCHOOLS','SATHISH BHARADVAJ 9000123654','sathish.bharadvaj@gmail.com',2,1,1,3,'2013-08-18 04:11:00','2013-08-18 04:11:00','2.jpg','image/jpeg',166965,'2013-08-18 04:10:57','5.jpg','image/jpeg',55174,'2013-08-18 04:10:59','1.jpg','image/jpeg',220927,'2013-08-18 04:10:59','OTHER ADDS','OTHER ADDS','OTHER ADDS','OTHER ADDS','OTHER ADDS'),(8,'GP SCHOOLS',' school is an institution designed for the teaching of students (or \"pupils\") under the direction of teachers. Most countries have systems of formal education, which is commonly compulsory.[citation needed] In these systems, students progress through a series of schools. The names for these schools vary by country (discussed in the Regional section below), but generally include primary school for young children and secondary school for teenagers who have completed primary education. An institution where higher education is taught, is commonly called a university college or university. ',NULL,'3-23/121','KAHIRATABAD',' SOMAGIGUDA','Hyderabad Urban','Andhra Pradesh','India','bschools','GOUTHAMI PUBLIC SCHOOLS','SRINIVAS 9959875599','srinivas.bharadvaj@gmail.com',1,1,2,3,'2013-08-18 04:16:27','2013-08-18 04:16:27','1.jpg','image/jpeg',220927,'2013-08-18 04:16:07','4.png','image/png',464259,'2013-08-18 04:16:23','3.jpg','image/jpeg',14137,'2013-08-18 04:16:25','OTHER ADDS','OTHER ADDS','OTHER ADDS','OTHER ADDS','OTHER ADDS'),(9,'MS SCHOOLS','A school is an institution designed for the teaching of students (or \"pupils\") under the direction of teachers. Most countries have systems of formal education, which is commonly compulsory.[citation needed] In these systems, students progress through a series of schools. The names for these schools vary by country (discussed in the Regional section below), but generally include primary school for young children and secondary school for teenagers who have completed primary education. An institution where higher education is taught, is commonly called a university college or university. ',NULL,'3-23/121 ','KAHIRATABAD','MEHDIPATNAM','Cuddapah','Andhra Pradesh','India','bschools','MISSION HIGH SCHOOLS','SRINIVAS 9959875599','srinivas.bharadvaj@gmail.com',1,2,1,5,'2013-08-18 04:21:40','2013-08-18 04:23:51','high.jpg','image/jpeg',269973,'2013-08-18 04:21:36','3.jpg','image/jpeg',14137,'2013-08-18 04:21:39','5.jpg','image/jpeg',55174,'2013-08-18 04:21:40','OTHER ADDS','OTHER ADDS','OTHER ADDS','OTHER ADDS','OTHER ADDS');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_members`
--

DROP TABLE IF EXISTS `family_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `family_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `family_member_user_id` int(11) NOT NULL DEFAULT '0',
  `join_pending` tinyint(1) DEFAULT '1',
  `relation_id` int(11) NOT NULL DEFAULT '0',
  `spouse_status` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_on_fmuid` (`family_member_user_id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_members`
--

LOCK TABLES `family_members` WRITE;
/*!40000 ALTER TABLE `family_members` DISABLE KEYS */;
INSERT INTO `family_members` VALUES (1,1,2,0,15,0,'2013-08-23 05:07:24','2013-08-23 05:07:24'),(2,1,3,0,22,0,'2013-08-23 05:07:44','2013-08-23 05:07:44'),(3,1,4,0,22,0,'2013-08-23 05:08:04','2013-08-23 05:08:04'),(5,1,5,0,6,0,'2013-08-23 05:08:52','2013-08-23 05:08:52'),(6,1,6,0,5,0,'2013-08-23 05:09:07','2013-08-23 05:09:07'),(7,2,1,0,14,0,'2013-08-23 05:11:53','2013-08-23 05:11:53'),(8,2,3,0,22,0,'2013-08-23 05:12:20','2013-08-23 05:12:20'),(9,2,4,0,22,0,'2013-08-23 05:12:35','2013-08-23 05:12:35'),(10,3,1,0,5,0,'2013-08-23 05:14:16','2013-08-23 05:14:16'),(11,3,2,0,6,0,'2013-08-23 05:14:29','2013-08-23 05:14:29'),(12,3,4,0,19,0,'2013-08-23 05:14:43','2013-08-23 05:14:43'),(13,3,5,0,2,0,'2013-08-23 05:14:59','2013-08-23 05:14:59'),(14,3,6,0,1,0,'2013-08-23 05:15:14','2013-08-23 05:15:14'),(15,4,1,0,5,0,'2013-08-23 05:16:29','2013-08-23 05:16:29'),(16,4,2,0,6,0,'2013-08-23 05:16:42','2013-08-23 05:16:42'),(17,4,3,0,19,0,'2013-08-23 05:16:55','2013-08-23 05:16:55'),(18,4,5,0,2,0,'2013-08-23 05:17:07','2013-08-23 05:17:07'),(19,4,6,0,1,0,'2013-08-23 05:17:20','2013-08-23 05:17:20'),(20,5,1,0,20,0,'2013-08-23 05:18:07','2013-08-23 05:18:07'),(21,5,2,0,21,0,'2013-08-23 05:18:37','2013-08-23 05:18:37'),(22,5,3,0,25,0,'2013-08-23 05:19:05','2013-08-23 05:19:05'),(23,5,4,0,25,0,'2013-08-23 05:19:27','2013-08-23 05:19:27'),(24,5,6,0,14,0,'2013-08-23 05:19:41','2013-08-23 05:19:41'),(25,6,1,0,20,0,'2013-08-23 05:21:45','2013-08-23 05:21:45'),(26,6,2,0,21,0,'2013-08-23 05:25:31','2013-08-23 05:25:31'),(27,6,5,0,15,0,'2013-08-23 05:50:30','2013-08-23 05:50:30'),(28,9,10,0,15,0,'2013-08-23 10:09:01','2013-08-23 10:09:01'),(29,9,11,0,20,0,'2013-08-23 10:09:54','2013-08-23 10:09:54'),(30,9,12,0,21,0,'2013-08-23 10:11:18','2013-08-23 10:11:18'),(32,9,18,0,20,0,'2013-08-23 10:12:26','2013-08-23 10:12:26'),(33,9,19,0,21,0,'2013-08-23 10:13:05','2013-08-23 10:13:05'),(34,9,22,0,20,0,'2013-08-23 10:13:38','2013-08-23 10:13:38'),(35,9,23,0,21,0,'2013-08-23 10:14:15','2013-08-23 10:14:15'),(36,9,13,0,24,0,'2013-08-23 10:17:22','2013-08-23 10:17:22'),(37,9,14,0,26,0,'2013-08-23 10:17:39','2013-08-23 10:17:39'),(38,9,17,0,24,0,'2013-08-23 10:18:04','2013-08-23 10:18:04'),(39,9,20,0,25,0,'2013-08-23 10:18:26','2013-08-23 10:18:26'),(40,9,21,0,24,0,'2013-08-23 10:18:52','2013-08-23 10:18:52'),(45,9,24,0,25,0,'2013-08-23 10:22:36','2013-08-23 10:22:36'),(46,9,25,0,24,0,'2013-08-23 10:24:11','2013-08-23 10:24:11'),(47,25,9,0,1,0,'2013-08-23 10:25:50','2013-08-23 10:25:50'),(48,25,10,0,2,0,'2013-08-23 10:26:07','2013-08-23 10:26:07'),(49,25,11,0,7,0,'2013-08-23 10:26:21','2013-08-23 10:26:21'),(50,25,12,0,8,0,'2013-08-23 10:26:37','2013-08-23 10:26:37'),(51,25,18,0,7,0,'2013-08-23 10:26:53','2013-08-23 10:26:53'),(52,25,19,0,8,0,'2013-08-23 10:27:08','2013-08-23 10:27:08'),(53,25,22,0,5,0,'2013-08-23 10:27:19','2013-08-23 10:27:19'),(54,25,23,0,6,0,'2013-08-23 10:27:36','2013-08-23 10:27:36'),(55,25,24,0,19,0,'2013-08-23 10:27:51','2013-08-23 10:27:51'),(56,13,14,0,15,0,'2013-08-23 10:48:03','2013-08-23 10:48:03'),(57,14,13,0,14,0,'2013-08-23 10:49:12','2013-08-23 10:49:12'),(58,46,47,0,15,0,'2013-08-23 11:24:59','2013-08-23 11:24:59'),(59,26,9,0,16,0,'2013-08-26 05:38:19','2013-08-26 05:38:19'),(60,26,10,0,17,0,'2013-08-26 05:38:44','2013-08-26 05:38:44'),(61,26,27,0,15,0,'2013-08-26 05:39:05','2013-08-26 05:39:05'),(62,26,28,0,20,0,'2013-08-26 05:39:27','2013-08-26 05:39:27'),(63,26,29,0,21,0,'2013-08-26 05:40:09','2013-08-26 05:40:09'),(64,26,30,0,24,0,'2013-08-26 05:40:35','2013-08-26 05:40:35'),(65,26,31,0,26,0,'2013-08-26 05:40:56','2013-08-26 05:40:56'),(66,26,33,0,24,0,'2013-08-26 05:41:37','2013-08-26 05:41:37'),(67,26,34,0,20,0,'2013-08-26 05:42:13','2013-08-26 05:42:13'),(68,26,35,0,21,0,'2013-08-26 05:42:35','2013-08-26 05:42:35'),(69,26,36,0,25,0,'2013-08-26 05:42:52','2013-08-26 05:42:52'),(70,26,37,0,24,0,'2013-08-26 05:43:14','2013-08-26 05:43:14'),(71,48,9,0,16,0,'2013-08-26 05:44:16','2013-08-26 05:44:16'),(72,48,10,0,17,0,'2013-08-26 05:44:27','2013-08-26 05:44:27'),(73,48,26,0,16,0,'2013-08-26 05:44:55','2013-08-26 05:44:55'),(74,48,27,0,17,0,'2013-08-26 05:45:14','2013-08-26 05:45:14'),(75,48,38,0,16,0,'2013-08-26 05:45:28','2013-08-26 05:45:28'),(76,48,39,0,17,0,'2013-08-26 05:45:38','2013-08-26 05:45:38'),(77,48,49,0,15,0,'2013-08-26 05:45:55','2013-08-26 05:45:55'),(78,48,50,0,20,0,'2013-08-26 05:46:04','2013-08-26 05:46:04'),(79,48,51,0,21,0,'2013-08-26 05:46:14','2013-08-26 05:46:14'),(80,48,52,0,24,0,'2013-08-26 05:46:39','2013-08-26 05:46:39'),(81,48,53,0,24,0,'2013-08-26 05:46:50','2013-08-26 05:46:50');
/*!40000 ALTER TABLE `family_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `details` text COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mappings`
--

DROP TABLE IF EXISTS `mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relationship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mappings`
--

LOCK TABLES `mappings` WRITE;
/*!40000 ALTER TABLE `mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relations`
--

DROP TABLE IF EXISTS `relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relationship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `serial` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relations`
--

LOCK TABLES `relations` WRITE;
/*!40000 ALTER TABLE `relations` DISABLE KEYS */;
INSERT INTO `relations` VALUES (1,'दादाजी',1,1,'2013-08-13 10:21:56','2013-08-19 06:24:22'),(2,'दादीजी',1,2,'2013-08-13 10:22:16','2013-08-19 06:25:25'),(3,'नानाजी',1,3,'2013-08-13 10:25:47','2013-08-19 06:26:00'),(4,'नानीजी',1,4,'2013-08-13 10:25:59','2013-08-19 06:29:09'),(5,'पिताजी',2,5,'2013-08-13 10:26:17','2013-08-19 06:21:10'),(6,'माताजी',2,6,'2013-08-13 10:26:29','2013-08-19 06:29:41'),(7,'ताऊजी',2,7,'2013-08-13 10:27:00','2013-08-19 06:30:32'),(8,'ताईजी',2,8,'2013-08-13 10:27:16','2013-08-19 06:30:51'),(9,'चाचाजी',2,9,'2013-08-13 10:27:38','2013-08-19 06:31:30'),(10,'चाचीजी',2,10,'2013-08-13 10:27:47','2013-08-19 06:31:51'),(11,'फूफाजी',2,11,'2013-08-13 10:29:30','2013-08-19 06:32:29'),(12,'बुआजी',2,12,'2013-08-13 10:29:41','2013-08-19 06:32:52'),(14,'पति',3,14,'2013-08-13 10:31:50','2013-08-19 06:33:19'),(15,'पत्नी',3,15,'2013-08-13 10:32:12','2013-08-19 06:33:36'),(16,'भैया',3,16,'2013-08-13 10:33:08','2013-08-19 06:35:54'),(17,'भाभी',3,17,'2013-08-13 10:34:31','2013-08-19 06:36:58'),(18,'जीजाजी',3,18,'2013-08-13 10:34:59','2013-08-19 06:40:43'),(19,'बहन',3,19,'2013-08-13 10:35:22','2013-08-19 06:41:40'),(20,'बेटा',4,20,'2013-08-13 10:35:48','2013-08-19 06:42:10'),(21,'बहू',4,21,'2013-08-13 10:36:20','2013-08-19 06:43:26'),(22,'बेटी',4,22,'2013-08-13 10:36:30','2013-08-19 06:43:41'),(23,'दामाद',4,23,'2013-08-13 10:36:41','2013-08-19 06:44:22'),(24,'पोता',5,24,'2013-08-15 06:47:27','2013-08-19 06:44:46'),(25,'पोती',5,25,'2013-08-15 06:48:10','2013-08-19 06:45:02'),(26,'पोता-बहू',5,26,'2013-08-15 06:49:31','2013-08-19 06:45:55'),(27,'पोती-दामाद',5,27,'2013-08-15 06:49:41','2013-08-19 06:46:13'),(28,'दोहिता',5,28,'2013-08-15 06:49:46','2013-08-19 06:46:35'),(29,'दोहिति',5,29,'2013-08-15 06:50:31','2013-08-19 06:49:30'),(30,'दोहिता-बहू',5,30,'2013-08-15 06:50:50','2013-08-19 06:50:27'),(31,'दोहिति-दामाद',5,31,'2013-08-15 06:51:08','2013-08-19 06:49:50');
/*!40000 ALTER TABLE `relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relatives`
--

DROP TABLE IF EXISTS `relatives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relatives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `present_id` int(11) DEFAULT NULL,
  `existing_member_id` int(11) DEFAULT NULL,
  `new_member_id` int(11) DEFAULT NULL,
  `relationship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relatives`
--

LOCK TABLES `relatives` WRITE;
/*!40000 ALTER TABLE `relatives` DISABLE KEYS */;
/*!40000 ALTER TABLE `relatives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130123101929'),('20130202091238'),('20130311063033'),('20130330112739'),('20130402084849'),('20130402085845'),('20130702054230'),('20130711052425'),('20130711080544'),('20130723093647'),('20130723095833'),('20130724082432'),('20130724091426'),('20130724122447'),('20130725055354'),('20130725055358'),('20130725055359'),('20130803083847'),('20130810120604'),('20130817152614');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `mobileno` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `station` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` text COLLATE utf8_unicode_ci,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mj_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reqstatus` tinyint(1) DEFAULT NULL,
  `visited` tinyint(1) DEFAULT '0',
  `payment` float DEFAULT '0',
  `due` float DEFAULT '0',
  `family_count` int(11) DEFAULT '1',
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `middlename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fathername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desig` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'KRISHNA ','KABRA',2,'9246532717','SILPIPES@GMAIL.COM','$2a$10$ZJkfGe7RTSn0x.4D90L0N.u1eF4NuP4G11fx1o0b6lWGFn8c4blH2','$2a$10$ZJkfGe7RTSn0x.4D90L0N.','','',NULL,'Male','MJ1',0,0,0,0,1,NULL,NULL,NULL,'2013-08-23 04:47:30','2013-08-23 04:48:45','27/09/1975','KUMAR','ANDHRA PRADESH','SECUNDERABAD','INDIA','LATE HARI PRASAD KABRA','Mr.',500026),(2,'sandhya ','Kabra',2,'9246582717','SILPIPES@GMAIL.COM','$2a$10$REuKofafptoR6oxdv.XQjeUOhzbecfHD.xdqotDTo3n.u/CaXZrJW','$2a$10$REuKofafptoR6oxdv.XQje','','',NULL,'Female','MJ2',0,0,0,0,1,NULL,NULL,NULL,'2013-08-23 04:52:02','2013-08-23 05:03:59','06/06/1976','','ANDHRA PRADESH','SECUNDERABAD','INDIA','subhash chander Bajaj','Mrs.',500026),(3,'vidhi','Kabra',2,'9246532717','SILPIPES@GMAIL.COM','$2a$10$vHe62iaXqAncmCL8xD97huJB8LAYr2N2xU7I5hckpdsO1cx.w5qMK','$2a$10$vHe62iaXqAncmCL8xD97hu','','',NULL,'Female','MJ3',0,0,0,0,1,NULL,NULL,NULL,'2013-08-23 04:54:13','2013-08-23 05:05:21','17/04/2002','','ANDHRA PRADESH','SECUNDERABAD','INDIA','krishna kumar kabra','Miss.',500),(4,'kanak ','kabra',2,'9246532717','SILPIPES@GMAIL.COM','$2a$10$ZGwX6PcZ9IXG3cG1/KjNYu2j./oVRB2cclH2zEyXFz61qIQGx32Du','$2a$10$ZGwX6PcZ9IXG3cG1/KjNYu','','',NULL,'Female','MJ4',0,0,0,0,1,NULL,NULL,NULL,'2013-08-23 04:56:54','2013-08-23 05:05:50','07/02/2009','','ANDHRA PRADESH','SECUNDERABAD','INDIA','krishna kumar kabra','Miss.',500),(5,'rukmani','Kabra',2,'8019761990','SILPIPES@GMAIL.COM','$2a$10$ZbbJoXIEb4XJzIVM/sjpjO7006Wdp5WwkukVVYwtTwbFHb4K80Tu2','$2a$10$ZbbJoXIEb4XJzIVM/sjpjO','','',NULL,'Female','MJ5',0,0,0,0,1,NULL,NULL,NULL,'2013-08-23 05:00:22','2013-08-23 05:06:13','08/10/1952','devi','andhra pradeash','Secunderabad','India','late Nathulalji rathi','Mrs.',500),(6,'HARI ','KABRA',2,'9246532717','silpipes@gmail.com','$2a$10$Q76n8bXKS4qZRMSzGkpof.Kzp.0cwLleKA8kthjUyaofvtSe3q68C','$2a$10$Q76n8bXKS4qZRMSzGkpof.','','','','Male','MJ6',0,0,0,0,1,NULL,NULL,NULL,'2013-08-23 05:03:14','2013-08-23 05:52:43','15/03/1944','prasad','andhra pradesh','Secunderabad','India','Late Balabux Kabra','Mr.',500),(7,'Balabux','Kabra',2,'9246532717','SILPIPES@GMAIL.COM',NULL,NULL,'','',NULL,'Male','',0,0,0,0,1,NULL,NULL,NULL,'2013-08-23 05:37:37','2013-08-23 05:37:50','01/01/1920','','andhra pradeash','Secunderabad','India','Jeevan Ram Kabra','Late',500),(8,'Balabux','Kabra',2,'9246532717','SILPIPES@GMAIL.COM',NULL,NULL,'','',NULL,'Male','',NULL,0,0,0,1,NULL,NULL,NULL,'2013-08-23 05:37:37','2013-08-23 05:37:37','01/01/1920','','andhra pradeash','Secunderabad','India','Jeevan Ram Kabra','Late',500),(9,'LATE.SITARAM JI','BAJAJ',2,'9959549291','bajaj.ashu04@gmail.com','$2a$10$5dONqdYFvIsYVynMyJqQN.3LmRi73FSh.tcI3gOETAzAjcMiglrpG','$2a$10$5dONqdYFvIsYVynMyJqQN.','','','','Male','MJ9',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 06:44:00','2013-08-23 11:08:04','20/01/1934','','Andhra Pradhesh','hyderabad','india','Lt.sathyanarayan Bajaj','Mr.',500012),(10,'sita','Bajaj',2,'9959549291','bajaj.ashu04@gmail.com','$2a$10$oVlQdj12Rtv1Cdoz5/sfj.OJw0eqRvHTLzGk6yJHK1StHlF52PXgu','$2a$10$oVlQdj12Rtv1Cdoz5/sfj.','','',NULL,'Female','MJ10',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 06:49:37','2013-08-19 06:50:18','08/09/1940','Bai','Andhra Pradesh','hyderabad','india','Nathmalji Daga','Mrs.',500012),(11,'LATE.ANIL','BAJAJ',2,'9652117739','alok_bajaj2000@yahoo.com','$2a$10$1FU233ds8T925/p9iTW3cex4994hAGcrZCPVUlsneyawn8pX/ueR2','$2a$10$1FU233ds8T925/p9iTW3ce','','','','Male','MJ11',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 06:58:00','2013-08-23 11:09:38','3/6/1956','Kumar','Andhra Pradesh','hyderabad','india','Lt.sitaramji','Mr.',500012),(12,'Pushpa','Bajaj',2,'9652117739','alok_bajaj2000@yahoo.com','$2a$10$MDOZiyqO7n.fWC05YbveluwyRDrFQA9dL4FR3A8kaA1kq5zQEH3me','$2a$10$MDOZiyqO7n.fWC05Ybvelu','','',NULL,'Female','MJ12',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:03:25','2013-08-19 07:03:39','7/2/1961','Devi','Andhra Pradesh','hyderabad','india','sathyanarayan ji mundada','Mrs.',500012),(13,'deepak','Bajaj',2,'9866499538','alok_bajaj2000@yahoo.com','$2a$10$YV/LmHj8v9xtahEHdUZzLu5c9GoLKJruHKg0.xAQGoR4/bMz8Cr5G','$2a$10$YV/LmHj8v9xtahEHdUZzLu','','',NULL,'Male','MJ13',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:05:34','2013-08-19 07:05:47','05/16/1980','','Andhra Pradesh','hyderabad','india','Lt.anil kumar bajaj','Mrs.',500012),(14,'preeti','Bajaj',2,'9290743884','alok_bajaj2000@yahoo.com','$2a$10$eW3nYgPbCwkGJP51XdOZJuAsY5jp2egJJXCAD.NMGkmFIzdBT0pMi','$2a$10$eW3nYgPbCwkGJP51XdOZJu','','',NULL,'Female','MJ14',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:08:30','2013-08-19 07:08:46','6/2/1981','','Andhra Pradesh','hyderabad','india','Lt.Harivilasji bang','Mrs.',500012),(15,'yatharv','Bajaj',2,'9290743884','alok_bajaj2000@yahoo.com','$2a$10$kumLTZDMllGZpI.l5mgyCenpbgc4PT9KRemTqSvQlhihJ2f04w0dS','$2a$10$kumLTZDMllGZpI.l5mgyCe','','',NULL,'Male','MJ15',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:11:04','2013-08-19 07:11:18','4/5/2008','','Andhra Pradesh','hyderabad','india','deepak bajaj','Master',500012),(16,'naman','Bajaj',2,'9290743884','alok_bajaj2000@yahoo.com','$2a$10$/AlD0QXQlQcs4SbNxkYEteJUDUhRgOq280zYY0gEIZPlABkNTnRkO','$2a$10$/AlD0QXQlQcs4SbNxkYEte','','',NULL,'Male','MJ16',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:13:16','2013-08-19 07:13:37','10/21/2009','','Andhra Pradesh','hyderabad','india','deepak bajaj','Master',500012),(17,'alok','Bajaj',2,'9849662003','alok_bajaj2000@yahoo.com','$2a$10$wPcyGWfjZD28IWf3nsy7N.oDIpsxTdzpOVqFVJXbTiSrP3lsU92uO','$2a$10$wPcyGWfjZD28IWf3nsy7N.','','',NULL,'Male','MJ17',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:15:34','2013-08-19 07:15:48','4/2/1982','','Andhra Pradesh','hyderabad','india','Lt.anil kumar bajaj','Mr.',500012),(18,'suresh','Bajaj',2,'9030651008','susheel.bajaj2020@gmail.com','$2a$10$35xUfBs4mU.euljallmNIeri6F6huX7JzFRBeWuAYJMXPG6V2TbZq','$2a$10$35xUfBs4mU.euljallmNIe','','',NULL,'Male','MJ18',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:18:10','2013-08-19 07:18:24','3/9/1959','chander','Andhra Pradesh','hyderabad','india','Lt.sitaramji','Mrs.',500012),(19,'meena','Bajaj',2,'8125191938','susheel.bajaj2020@gmail.com','$2a$10$HsTJl5CPE8qik5Oljw8/m.rfQXiQekDuU/TetrwF5YHY1Nr1qTdAe','$2a$10$HsTJl5CPE8qik5Oljw8/m.','','',NULL,'Female','MJ19',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:21:05','2013-08-19 07:21:25','7/12/1964','','Andhra Pradesh','hyderabad','india','Sathyanarayan ji Rathi','Mrs.',500012),(20,'namrata','Bajaj',2,'9959549291','susheel.bajaj2020@gmail.com','$2a$10$sGugCS2/ZR6yvsrm5cKKj.0t5juMXI3w9fNwWGHup8cUQGHXR6MR6','$2a$10$sGugCS2/ZR6yvsrm5cKKj.','','',NULL,'Female','MJ20',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:31:20','2013-08-19 07:31:42','5/22/1988','','Andhra Pradesh','hyderabad','india','Suresh Bajaj','Miss.',500012),(21,'susheel','Bajaj',2,'9985673127','susheel.bajaj2020@gmail.com','$2a$10$Siv5WH6tvV73Hem2wb964ejoX9.wLrpJDc43WoRdaYiWWiHAxUR.u','$2a$10$Siv5WH6tvV73Hem2wb964e','','',NULL,'Male','MJ21',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:34:11','2013-08-19 07:34:25','7/27/1989','','Andhra Pradesh','hyderabad','india','Suresh Bajaj','Mr.',500012),(22,'Hanuman','Bajaj',2,'9959081780','hanumandasbajaj@yahoo.com','$2a$10$6S7CHRjR43dFCXd.LvS.bO1vn8/c7JbVK.BlyELZarhJ4fdJI.h8S','$2a$10$6S7CHRjR43dFCXd.LvS.bO','','',NULL,'Male','MJ22',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:37:33','2013-08-19 07:37:46','2/10/1962','Dasji','Andhra Pradesh','hyderabad','india','Lt.Sitaramji Bajaj','Mr.',500012),(23,'Surya kantha','Bajaj',2,'8143773690','hanumandasbajaj@yahoo.com','$2a$10$mQBeRhpX9JQeLtKaDs6w..WaVg6kr0eigPU7pdOGwB7Cp4dmWsT.G','$2a$10$mQBeRhpX9JQeLtKaDs6w..','','',NULL,'Female','MJ23',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:40:19','2013-08-19 07:40:33','8/2/1967','','Andhra Pradesh','hyderabad','india','Lt.Sathyanarayan Lahoti','Mrs.',500012),(24,'Varsha','Bajaj',2,'8099993451','bajaj.ashu04@gmail.com','$2a$10$MUyF8ovKs319FEOY1bfahuvDIniThZTZJDORFg4Me8/v054tCBfW2','$2a$10$MUyF8ovKs319FEOY1bfahu','','',NULL,'Female','MJ24',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:44:15','2013-08-19 07:44:37','9/15/1991','','Andhra Pradesh','hyderabad','india','Hanumandas ji Bajaj','Miss',500012),(25,'Aashish','Bajaj',2,'9704740024','bajaj.ashu04@gmail.com','$2a$10$vW4S55iS23/k3WpOIX7NXuutWpavytWInxO4Wnrmii7uyDllvTGRW','$2a$10$vW4S55iS23/k3WpOIX7NXu','','',NULL,'Male','MJ25',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:42:17','2013-08-24 08:15:59','1/4/1990','','Andhra Pradesh','hyderabad','india','Hanumandas ji Bajaj','Mr.',500012),(26,'shriram','Bajaj',2,'9246811772','Shambajaj@ramaexcavator.com','$2a$10$NJo51/9yng6veHLFcgvMRuijTyaClkDLOWB1XI325HPsK8711G7wm','$2a$10$NJo51/9yng6veHLFcgvMRu','','',NULL,'Male','MJ26',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:48:01','2013-08-19 07:48:16','5/1/1936','','Andhra Pradesh','hyderabad','india','Lt.Sathyanarayan Bajaj','Mr.',500012),(27,'Rajkamal','Bajaj',2,'9246811772','Shambajaj@ramaexcavator.com','$2a$10$TNcDXZiy/8mMJvW6sRvP4ud20f5wNiKTQQI4SUFlLI.y20efcJuAq','$2a$10$TNcDXZiy/8mMJvW6sRvP4u','','',NULL,'Female','MJ27',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:50:15','2013-08-19 07:50:29','7/12/1941','','Andhra Pradesh','hyderabad','india','Lt.Shivaprsadji Tela','Mrs.',500012),(28,'Bajrang','Bajaj',2,'9848543770','Shambajaj@ramaexcavator.com','$2a$10$cA8nX7QJea9.F/x7yXJ1KO2Nzjd.A4aIQDVjtnBhfRf.YFuUaMCZ6','$2a$10$cA8nX7QJea9.F/x7yXJ1KO','','',NULL,'Male','MJ28',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:52:19','2013-08-19 07:52:36','9/10/1962','','Andhra Pradesh','hyderabad','india','Shriramji Bajaj','Mr.',500012),(29,'Kiran','Bajaj',2,'9290915291','Shambajaj@ramaexcavator.com','$2a$10$b1CrDxOH.U1lllGDtvv7.uPsO9toP83bvgv/bJKo9oqJj68s0bgXe','$2a$10$b1CrDxOH.U1lllGDtvv7.u','','',NULL,'Female','MJ29',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:54:38','2013-08-19 07:54:51','4/6/1964','','Andhra Pradesh','hyderabad','india','Lt.Natmalji Bung','Mrs.',500012),(30,'Rahul','Bajaj',2,'9885330806','Shambajaj@ramaexcavator.com','$2a$10$2Vem0vaVB2Z8aK4TFSLe..t8xZirY2qvT591NBJav3Ph1yobzE/Sa','$2a$10$2Vem0vaVB2Z8aK4TFSLe..','','',NULL,'Male','MJ30',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:57:43','2013-08-19 07:57:54','12/04/1985','','Andhra Pradesh','hyderabad','india','Bajrang','Mr.',500012),(31,'Sarita','Bajaj',2,'7702702654','Shambajaj@ramaexcavator.com','$2a$10$QNbUHCu2QzFOb/i3x47H1.y0A1OYK9LBguNghBKxri9p8e0/uQ4CC','$2a$10$QNbUHCu2QzFOb/i3x47H1.','','',NULL,'Female','MJ31',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 07:59:42','2013-08-19 07:59:55','7/2/1986','','Andhra Pradesh','hyderabad','india','Gopal dasji Rathi','Mrs.',500012),(32,'Anant','Bajaj',2,'7702702654','Shambajaj@ramaexcavator.com','$2a$10$fgYaeWx1dpgyo6nUNqTT3.ynR7DCrJBYJX9u3/xOz2GAN9Gqib8xu','$2a$10$fgYaeWx1dpgyo6nUNqTT3.','','',NULL,'Male','MJ32',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:01:28','2013-08-19 08:01:39','9/29/2012','','Andhra Pradesh','hyderabad','india','Rahul Bajaj','Master',500012),(33,'Rohit','Bajaj',2,'9966372704','Shambajaj@ramaexcavator.com','$2a$10$RYaro65Lrrqd0xfOwXFBfeOfuxQIbq2A7VC7C3RFju4pnDV8HDymG','$2a$10$RYaro65Lrrqd0xfOwXFBfe','','',NULL,'Male','MJ33',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:03:25','2013-08-19 08:03:40','5/18/1991','','Andhra Pradesh','hyderabad','india','Bajrang Bajaj','Mr.',500012),(34,'Sanjay','Bajaj',2,'9848543777','Shambajaj@ramaexcavator.com','$2a$10$l7M0va6GfCqh9ARKEM8GMeXBb2XE3vp0L78rJ/Ak3M0fPbYmweQ1q','$2a$10$l7M0va6GfCqh9ARKEM8GMe','','',NULL,'Male','MJ34',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:05:17','2013-08-19 08:05:31','9/21/1970','','Andhra Pradesh','hyderabad','india','Shriramji Bajaj','Mr.',500012),(35,'Urmila','Bajaj',2,'9849465111','Shambajaj@ramaexcavator.com','$2a$10$nj80mvIhvkLLZoMgjFdl5O6Jg55E5eaVOzXI/3O6/q8NtTlEEj6bK','$2a$10$nj80mvIhvkLLZoMgjFdl5O','','',NULL,'Female','MJ35',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:07:30','2013-08-19 08:07:44','3/21/1972','','Andhra Pradesh','hyderabad','india','Badrinaryanji Toshniwal','Mrs.',500012),(36,'Sanjana','Bajaj',2,'9849465111','Shambajaj@ramaexcavator.com','$2a$10$eYDSkpD/LlSnMFYdzSEhG./6W5bDe1wEP0eo172NyPwh.bouPXmI2','$2a$10$eYDSkpD/LlSnMFYdzSEhG.','','',NULL,'Female','MJ36',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:09:23','2013-08-19 08:09:51','5/27/1995','','Andhra Pradesh','hyderabad','india','Sanjay Bajaj','Miss.',500012),(37,'Ayush','Bajaj',2,'9849465111','Shambajaj@ramaexcavator.com','$2a$10$r6pBAT3mQKqNNPgmh1TFXuAbbcpCjiC3mzNcwL2bl5TueY5HkiNc6','$2a$10$r6pBAT3mQKqNNPgmh1TFXu','','',NULL,'Male','MJ37',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:11:28','2013-08-19 08:11:43','1/4/2000','','Andhra Pradesh','hyderabad','india','Sanjay Bajaj','Master',500012),(38,'Subhash','Bajaj',2,'9246547750','Shambajaj@ramaexcavator.com','$2a$10$E0gyT2uSp2fFC2RvtFMVF.XlUVFZTrLDHgQa8HJ0iJ.oiCrYa1mjO','$2a$10$E0gyT2uSp2fFC2RvtFMVF.','','',NULL,'Male','MJ38',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:13:18','2013-08-19 08:13:37','12/14/1946','chander','Andhra Pradesh','hyderabad','india','Lt.Sathyanarayan Bajaj','Mr.',500012),(39,'Susheela','Bajaj',2,'9246547750','Shambajaj@ramaexcavator.com','$2a$10$Q2gkMmiFx8qt.UIeGzHsoe3pkrHAdxdWeaTtcHMhbqkweL3lkpbOe','$2a$10$Q2gkMmiFx8qt.UIeGzHsoe','','',NULL,'Female','MJ39',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:15:43','2013-08-19 08:15:56','1/27/1952','','Andhra Pradesh','hyderabad','india','Shri Gopikishanji asawa','Mrs.',500012),(40,'Sunil','Bajaj',2,'9246108474','Shambajaj@ramaexcavator.com','$2a$10$peQ9V0xTr6PHKXbCS3cd8uKrU01.LjBuTURNTDzixkg54SI9Da2om','$2a$10$peQ9V0xTr6PHKXbCS3cd8u','','',NULL,'Male','MJ40',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:17:39','2013-08-19 08:17:59','8/25/1979','','Andhra Pradesh','hyderabad','india','Subhash Bajaj','Mr.',500012),(41,'Aarthi','Bajaj',2,'9246809788','Shambajaj@ramaexcavator.com','$2a$10$fFfnfYCClCEnB1gtVif5C.R2piHgI3CB0GDe2KnrQkZiSnujZzDp2','$2a$10$fFfnfYCClCEnB1gtVif5C.','','',NULL,'Female','MJ41',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:19:53','2013-08-19 08:20:06','9/1/1982','','Andhra Pradesh','hyderabad','india','Omprakashji Soni','Mrs.',500012),(42,'Keshav ','Bajaj',2,'9246809788','Shambajaj@ramaexcavator.com','$2a$10$lxXP7UGXWBj61PLfkBcUiuKtvyQpIbn7PS3gs3v9XymwkeglSVZay','$2a$10$lxXP7UGXWBj61PLfkBcUiu','','',NULL,'Male','MJ42',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:22:15','2013-08-19 08:22:27','5/29/2006','','Andhra Pradesh','hyderabad','india','Sunil Bajaj','Master',500012),(43,'Atharv','Bajaj',2,'9246809788','Shambajaj@ramaexcavator.com','$2a$10$UXQRM7XPWnnaX6ZPj97xOOeOVIPR5RdT4GTpL2CTzMaOp8yTzSEG6','$2a$10$UXQRM7XPWnnaX6ZPj97xOO','','',NULL,'Male','MJ43',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:23:55','2013-08-19 08:24:08','9/13/2008','','Andhra Pradesh','hyderabad','india','Sunil Bajaj','Master',500012),(44,'Ram','Bajaj',2,'9676959540','Shambajaj@ramaexcavator.com','$2a$10$HcyBZJlzIn/S7dO.JUGAB.a..isax2i67U3So4udwaKhZlWnsVJ0G','$2a$10$HcyBZJlzIn/S7dO.JUGAB.','','',NULL,'Male','MJ44',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:26:17','2013-08-19 08:26:31','4/2/1986','','Andhra Pradesh','hyderabad','india','Subhash Bajaj','Mr.',500012),(45,'sneha','Bajaj',2,'9676346578','Shambajaj@ramaexcavator.com','$2a$10$N8VEy6lkQ43OxAQjNHoUbuhL2Iu5kc51Qq3GyzGPujol03LM0UHGu','$2a$10$N8VEy6lkQ43OxAQjNHoUbu','','',NULL,'Female','MJ45',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:29:02','2013-08-19 08:29:17','7/23/1987','','Andhra Pradesh','hyderabad','india','Nurhottam ji Bang','Mrs.',500012),(46,'SHAM','BAJAJ',2,'9848543771','shambajaj@ramaexcavator.com','$2a$10$MwjKIziUzOny1UWWX1cHfeXEnHzULmjXNklEQjovcBASN1SQePTg6','$2a$10$MwjKIziUzOny1UWWX1cHfe','','HYDERABAD','','Male','MJ46',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:30:38','2013-08-23 11:23:31','4/2/1986','','Andhra Pradesh','hyderabad','india','Subhash Bajaj','Mr.',500012),(47,'ARPANA ','BAJAJ',2,'9505343777','shambajaj@ramaexcavator.com','$2a$10$uBYVbnt3blY6iI3oy1wt9OqhAbhJAyMLpqmBV.PulhiFDrwrpKApK','$2a$10$uBYVbnt3blY6iI3oy1wt9O','FASHION DESIGNER','HYDERABAD','','Female','MJ47',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:32:34','2013-08-23 11:21:13','4/21/1986','','Andhra Pradesh','hyderabad','india','Omprakashji Sarda','Mr.',500012),(48,'PRAKASH ','BAJAJ',2,'9848543772','Shambajaj@ramaexcavator.com','$2a$10$zAmz8DDAhAajuo4FtawsDenaa0fRxcWEwGMKwbEkeg2Wqc2xCeP/6','$2a$10$zAmz8DDAhAajuo4FtawsDe','BUSINESS','HYDERABAD','','Male','MJ48',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:34:29','2013-08-26 05:49:27','10/17/1949','','Andhra Pradesh','hyderabad','india','Lt.Sathyanarayan Bajaj','Mr.',500012),(49,'Padma','Bajaj',2,'9848543772','Shambajaj@ramaexcavator.com','$2a$10$Mq3kHQXsQbnegwWeL0JpR.XlRLqESnCYsxcf948hOqyniyq934dNK','$2a$10$Mq3kHQXsQbnegwWeL0JpR.','','',NULL,'Female','MJ49',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:36:40','2013-08-19 08:36:51','7/17/1957','','Andhra Pradesh','hyderabad','india','Lt.Bhagwandasji asawa','Mrs.',500012),(50,'Prashant','Bajaj',2,'9848543772','Shambajaj@ramaexcavator.com','$2a$10$iogtaUD7jNEpOffu8sOEe./zyxe2UAb62PqQ3zWXARi1t1iRJ7xQm','$2a$10$iogtaUD7jNEpOffu8sOEe.','','',NULL,'Male','MJ50',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:38:26','2013-08-19 08:38:38','10/17/1977','','Andhra Pradesh','hyderabad','india','Prakash Bajaj','Mr.',500012),(51,'Shobha','Bajaj',2,'7207855500','Shambajaj@ramaexcavator.com','$2a$10$ccoSLUFeZ5CN8FxqXEw7P.h23oO45rIBTYPv3a09ADPVVvbsYMmRm','$2a$10$ccoSLUFeZ5CN8FxqXEw7P.','','',NULL,'Female','MJ51',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:40:17','2013-08-19 08:40:29','2/24/1978','','Andhra Pradesh','hyderabad','india','Devkishanji Loya','Mrs.',500012),(52,'Rohan','Bajaj',2,'7207855500','Shambajaj@ramaexcavator.com','$2a$10$G6wEI3rl/w5nBwbaqkd7Uuk/P.3wzVNiaLXEFkYahQ0Mk0teqHJmC','$2a$10$G6wEI3rl/w5nBwbaqkd7Uu','','',NULL,'Male','MJ52',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:42:11','2013-08-19 08:42:25','7/18/2002','','Andhra Pradesh','hyderabad','india','Prashant Bajaj','Master',500012),(53,'Khushal','Bajaj',2,'7207855500','Shambajaj@ramaexcavator.com','$2a$10$6S1tVvbFna.f0N7l6VlqOugOuU/phgtRZKe/EwbyJv3W4zRnXNSfq','$2a$10$6S1tVvbFna.f0N7l6VlqOu','','',NULL,'Male','MJ53',0,0,0,0,1,NULL,NULL,NULL,'2013-08-19 08:43:42','2013-08-19 08:43:55','7/30/2007','','Andhra Pradesh','hyderabad','india','Prashant Bajaj','Master',500012),(54,'john','hPRYDdcEbSkARKzm',2,'john','',NULL,NULL,'','',NULL,'Male','',0,0,0,0,1,NULL,NULL,NULL,'2013-08-26 23:42:50','2013-08-26 23:42:51','john','9536','NY','New York','USA','john','Mrs.',81173),(55,'AJAY ','LAHOTI',2,'9533551430','AJAYLAHOTI40@GMAIL.COM',NULL,NULL,'','',NULL,'Male','',0,0,0,0,1,NULL,NULL,NULL,'2013-08-29 05:56:37','2013-08-29 05:56:38','07/04/1992','KUMAR','ANDHRA PRADESH','BELLAMPALLI','INDIA','RADHESHYAM LAHOTI','Mr.',504251),(56,'MANISH ','KABRA',2,'9246339321','manishkkabra@rediffmail.com',NULL,NULL,'','',NULL,'Male','MJ56',0,0,0,0,1,NULL,NULL,NULL,'2013-08-29 06:10:07','2013-08-29 06:10:07','01/08/1973','','ANDHRA PRADESH','Secunderabad','INDIA','HARI PRASAD KABRA','Mr.',500003),(57,'kusum ','kabra',2,'9346052712','manishkkabra@rediffmail.com',NULL,NULL,'','',NULL,'Female','MJ57',0,0,0,0,1,NULL,NULL,NULL,'2013-08-29 06:11:55','2013-08-29 06:11:56','25/04/1977','','ANDHRA PRADESH','Secunderabad','INDIA','Ghanshyam Das Darak','Mrs.',500003),(58,'vijay ','Kabra',2,'9395312319','mcc_pipes@hotmail.com',NULL,NULL,'','',NULL,'Male','',0,0,0,0,1,NULL,NULL,NULL,'2013-08-29 06:13:25','2013-08-29 06:13:26','28/10/1976','','ANDHRA PRADESH','Secunderabad','INDIA','HARI PRASAD KABRA','Mr.',500003);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1,'The life of Aditya Birla','http://www.youtube.com/embed/IurE4uC8np8','','2013-08-13 14:20:49','2013-08-22 12:48:06'),(2,'Kumar Mangalam Birla','http://www.youtube.com/embed/M3r4gSpmYVA','','2013-08-13 14:22:16','2013-08-13 14:22:16'),(3,'Life Changing Seminar by Sandeep Maheshwari  ','http://www.youtube.com/embed/Gd79CTdRoH0?','','2013-08-22 12:50:57','2013-08-22 12:50:57'),(4,'Mukesh Hit Song -- Awara Hoon','http://www.youtube.com/embed/VY1pWTek2sY?','','2013-08-22 12:58:32','2013-08-22 12:58:32'),(5,'Pal Pal Dil ke Pass - Kishore Kumar','http://www.youtube.com/embed/viKdF7sp_cY?','','2013-08-22 13:01:23','2013-08-22 13:01:23');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-29  7:40:33
