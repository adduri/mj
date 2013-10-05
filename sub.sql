-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bhanu1
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
-- Table structure for table `subads`
--

DROP TABLE IF EXISTS `subads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `p1_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p1_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p1_file_size` int(11) DEFAULT NULL,
  `p1_updated_at` datetime DEFAULT NULL,
  `p2_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p2_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p2_file_size` int(11) DEFAULT NULL,
  `p2_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subads`
--

LOCK TABLES `subads` WRITE;
/*!40000 ALTER TABLE `subads` DISABLE KEYS */;
INSERT INTO `subads` VALUES (1,'News1','2013-10-04 10:44:56','2013-10-04 10:45:34','ramaesca.jpeg','image/jpeg',7082,'2013-10-04 10:44:55','finecab.png','image/png',24527,'2013-10-04 10:44:55'),(2,'News2','2013-10-04 10:45:25','2013-10-04 10:45:25','bajaj.jpg','image/jpeg',12873,'2013-10-04 10:45:24','jaju.jpg','image/jpeg',38462,'2013-10-04 10:45:24'),(3,'Login','2013-10-04 10:46:14','2013-10-04 10:47:46','salsar.jpg','image/jpeg',9452,'2013-10-04 10:47:46','kabra_steel_vizag.jpg','image/jpeg',9133,'2013-10-04 10:47:46'),(4,'Signup1','2013-10-04 10:47:23','2013-10-04 10:47:23','kabra_steel.jpg','image/jpeg',13742,'2013-10-04 10:47:23','shweta.jpeg','image/jpeg',12818,'2013-10-04 10:47:23'),(5,'Signup2','2013-10-04 10:49:10','2013-10-04 10:49:10','maruti.jpg','image/jpeg',40476,'2013-10-04 10:49:10','kabrajewe.jpeg','image/jpeg',10371,'2013-10-04 10:49:10');
/*!40000 ALTER TABLE `subads` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-04 16:53:17
