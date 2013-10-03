-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: mahesh
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.04.2

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
-- Table structure for table `gender_notifications`
--

DROP TABLE IF EXISTS `gender_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present_relation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reverse_relation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender_notifications`
--

LOCK TABLES `gender_notifications` WRITE;
/*!40000 ALTER TABLE `gender_notifications` DISABLE KEYS */;
INSERT INTO `gender_notifications` VALUES (1,'Male','दादाजी','पोता','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Male','दादीजी','पोता','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Male','नानाजी','दोहिता','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Male','नानीजी','दोहिता','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'Male','पिताजी','बेटा','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'Male','माताजी','बेटा','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'Male','पत्नी','पति','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'Male','भैया','भैया','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'Male','बहन','भैया','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'Male','बेटा','पिताजी','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'Male','बेटी','पिताजी','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'Male','पोता','दादाजी','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'Male','पोती','दादाजी','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'Male','दोहिता','नानाजी','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'Male','दोहिति','नानाजी','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'Female','दादाजी','पोती','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'Female','दादीजी','पोती','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'Female','नानाजी','दोहिति','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'Female','नानीजी','दोहिति','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'Female','पिताजी','बेटी','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'Female','माताजी','बेटी','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'Female','पति','पत्नी','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'Female','भैया','बहन','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'Female','बहन','बहन','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'Female','बेटा','माताजी','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'Female','बेटी','माताजी','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'Female','पोता','दादीजी','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'Female','पोती','दादीजी','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'Female','दोहिता','नानीजी','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'Female','दोहिति','नानीजी','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `gender_notifications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-03 13:51:22
