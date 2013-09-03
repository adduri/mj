-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: mj
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1

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
INSERT INTO `relations` VALUES (1,'दादाजी',1,1,'2013-08-13 10:21:56','2013-08-23 10:55:49'),(2,'दादीजी',1,2,'2013-08-13 10:22:16','2013-08-23 10:55:54'),(3,'नानाजी',1,3,'2013-08-13 10:25:47','2013-08-23 10:56:00'),(4,'नानीजी',1,4,'2013-08-13 10:25:59','2013-08-23 10:56:08'),(5,'पिताजी',2,5,'2013-08-13 10:26:17','2013-08-13 10:26:17'),(6,'माताजी',2,6,'2013-08-13 10:26:29','2013-08-13 10:26:29'),(7,'ताऊजी',2,7,'2013-08-13 10:27:00','2013-08-13 10:27:05'),(8,'ताईजी',2,8,'2013-08-13 10:27:16','2013-08-13 10:27:16'),(9,'चाचाजी',2,9,'2013-08-13 10:27:38','2013-08-13 10:27:38'),(10,'चाचीजी',2,10,'2013-08-13 10:27:47','2013-08-13 10:27:47'),(11,'फूफाजी',2,11,'2013-08-13 10:29:30','2013-08-13 10:29:30'),(12,'बुआजी',2,12,'2013-08-13 10:29:41','2013-08-13 10:29:41'),(13,'मैं',3,13,'2013-08-13 10:30:23','2013-08-13 10:30:23'),(14,'पति',3,14,'2013-08-13 10:31:50','2013-08-13 10:31:50'),(15,'पत्नी',3,15,'2013-08-13 10:32:12','2013-08-13 10:32:12'),(16,'भैया',3,16,'2013-08-13 10:33:08','2013-08-13 10:33:08'),(17,'भाभी',3,17,'2013-08-13 10:34:31','2013-08-13 10:34:31'),(18,'जीजाजी',3,18,'2013-08-13 10:34:59','2013-08-13 10:35:10'),(19,'बहन',3,19,'2013-08-13 10:35:22','2013-08-13 10:35:22'),(20,'बेटा',4,20,'2013-08-13 10:35:48','2013-08-13 10:35:48'),(21,'बहू',4,21,'2013-08-13 10:36:20','2013-08-13 10:36:20'),(22,'बेटी',4,22,'2013-08-13 10:36:30','2013-08-13 10:36:30'),(23,'दामाद',4,23,'2013-08-13 10:36:41','2013-08-13 10:36:41'),(24,'पोता',5,24,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'पोती',5,25,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'पोता-बहू',5,26,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'पोती-दामाद',5,27,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'दोहिता',5,28,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'दोहिति',5,29,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'दोहिता-बहू',5,30,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'दोहिति-दामाद',5,31,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `relations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-24 15:45:48