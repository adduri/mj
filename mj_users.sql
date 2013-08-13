-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: mj
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.13.04.1

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
  PRIMARY KEY (`id`),
  KEY `index_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'KARTHIK','KRISHNA',2,'245454','matrixkarthik@gmail.com','$2a$10$PtYjuUV4idhpmadYh/NxxOquJm/2ELvIPvIL7mE3ifnZL0qX0bUiu','$2a$10$PtYjuUV4idhpmadYh/NxxO','','','','Male','MJ1',0,0,0,0,1,'snv31423.jpg','image/jpeg',2321004,'2013-08-13 10:16:18','2013-08-13 10:42:22','08/05/2013','','ap','secbad','mknkm','krishnamurthi','Mr.'),(2,'ashi','Agiwal',2,'245454','matrixkarthik@gmail.com','$2a$10$T41iCg8vSZ7QAZeNUVlPLeFmE8oMfrOv4UukwxWnEL2q1pjd0HB.q','$2a$10$T41iCg8vSZ7QAZeNUVlPLe','','',NULL,'Female','MJ2',0,0,0,0,1,NULL,NULL,NULL,'2013-08-13 10:48:06','2013-08-13 10:48:26','08/06/2013','','ap','secbad','india','krishnamurthi','Mr.'),(3,'sai','kache',2,'90001001000','sai@sagar.com','$2a$10$l9C7Ipy.TmaLo9mU.ZQV1.IwhkGQO.1HNGCxYoA6JuK5Ek.6CzvqC','$2a$10$l9C7Ipy.TmaLo9mU.ZQV1.','','',NULL,'Male','MJ3',0,0,0,0,1,NULL,NULL,NULL,'2013-08-13 10:48:59','2013-08-13 10:51:30','08/05/1991','sagar','statw','hyd','indi','jagan','Mr.'),(4,'rajesh','Ajmera',2,'245454','matrixkarthik@gmail.com','$2a$10$JMQYMiBAgHGPIyQefe6bie1ULzUFjUFlML/CqATPSJy7HKrQJODUm','$2a$10$JMQYMiBAgHGPIyQefe6bie','','',NULL,'Male','MJ4',0,0,0,0,1,NULL,NULL,NULL,'2013-08-13 10:49:13','2013-08-13 10:49:32','08/21/2013','','ap','secbad','i','krishnamurthi','Mr.'),(5,'ramadevi','Asawa',2,'245454','matrixkarthik@gmail.com','$2a$10$OZbQeFNGjErKGzq6rhhqnekPGxsHd90UaFIJPvqgcgox7.xbd7Cnu','$2a$10$OZbQeFNGjErKGzq6rhhqne','','',NULL,'Female','MJ5',0,0,0,0,1,NULL,NULL,NULL,'2013-08-13 10:50:46','2013-08-13 10:51:06','08/15/2013','','ap','secbad','i','krishnamurthi','Mr.'),(6,'narayan','Attal',2,'245454','matrixkarthik@gmail.com','$2a$10$vKCT3BacgTFZuJAfxDelJ.gaH/V09TmBf9EquOu4pqqoxcrEJq5o6','$2a$10$vKCT3BacgTFZuJAfxDelJ.','','',NULL,'Male','MJ6',0,0,0,0,1,NULL,NULL,NULL,'2013-08-13 10:51:47','2013-08-13 10:52:11','08/22/2013','','ap','secbad','o','krishnamurthi','Mr.'),(7,'lakshmi','Baheti',2,'245454','matrixkarthik@gmail.com','$2a$10$0HGgUqPIK7mgQ07VX1G9gelfoBlVRM4VH9bgo2vQOdEVz./AIDrRm','$2a$10$0HGgUqPIK7mgQ07VX1G9ge','','',NULL,'Female','MJ7',0,0,0,0,1,NULL,NULL,NULL,'2013-08-13 10:52:53','2013-08-13 10:53:14','08/14/2013','','ap','secbad','o','krishnamurthi','Mr.'),(8,'bhanu','Asawa',2,'95568989','s@s.com','$2a$10$Sw1TYcfd.WHnnB3jZpLIheDLzjt5c4miuXfy7VhjnUw.pEQoq3A5q','$2a$10$Sw1TYcfd.WHnnB3jZpLIhe','','',NULL,'Male','MJ8',0,0,0,0,1,NULL,NULL,NULL,'2013-08-13 10:53:49','2013-08-13 10:55:52','08/06/2013','anil','stat','scit','sadf','raju','Mr.'),(9,'seema','Asawa',2,'245454','matrixkarthik@gmail.com','$2a$10$tD2Q3Zjx6cYCJ0yR/bORoubCm2d8Z7MFdMwn2ek.0OFEeuh2bUSbC','$2a$10$tD2Q3Zjx6cYCJ0yR/bORou','','',NULL,'Female','MJ9',0,0,0,0,1,NULL,NULL,NULL,'2013-08-13 10:54:23','2013-08-13 10:54:51','08/05/2013','','ap','secbad','k','krishnamurthi','Mr.'),(10,'mahesh','babu',2,'245454','matrixkarthik@gmail.com','$2a$10$OYBliFQxH1j2KbOpEItfB.LkgdtLYXQmqwLRMZc1T87K9CnwrZkz.','$2a$10$OYBliFQxH1j2KbOpEItfB.','','',NULL,'Male','MJ10',0,0,0,0,1,NULL,NULL,NULL,'2013-08-13 10:56:00','2013-08-13 10:56:24','08/09/2013','','ap','secbad','k','krishnamurthi','Mr.'),(11,'aishwarya','rai',2,'245454','matrixkarthik@gmail.com','$2a$10$CyyR5WQmwWSwSaVm0IGDye02VtvWfeRH/0Gxql7UdMYXSLh5.ssS6','$2a$10$CyyR5WQmwWSwSaVm0IGDye','','',NULL,'Female','MJ11',0,0,0,0,1,NULL,NULL,NULL,'2013-08-13 10:56:56','2013-08-13 10:57:14','08/20/2013','','ap','secbad','l','krishnamurthi','Mr.'),(12,'Chanajya','devraj ',2,'Ap','abc@xyz.com','$2a$10$Rr.XUPiU/bTXXpM4Dsv1ae86AHM23i7Pa8qQ4XlJZ0Ap3TbbHcybe','$2a$10$Rr.XUPiU/bTXXpM4Dsv1ae','','',NULL,NULL,'MJ12',0,0,0,0,1,NULL,NULL,NULL,'2013-08-13 10:58:32','2013-08-13 11:00:35','08/15/2013','gg','Ap','Hyd','India','vv','Mr.'),(13,'chanaky','sagar',2,'1234567895','anil@gmail.com','$2a$10$dHYHlkGi3mnjTVgZFyeh/eAKthrC2SZ8M2JQo8fIuExsXscxpU2bG','$2a$10$dHYHlkGi3mnjTVgZFyeh/e','','',NULL,'Male','MJ13',0,0,0,0,1,NULL,NULL,NULL,'2013-08-13 10:58:58','2013-08-13 11:00:49','08/08/2013','sai','ap','secbad','sadf','mohan','Mr.'),(14,'devraj','devraj ',2,'Ap','abc@xyz.com','$2a$10$z3AQIx8i6I/Dujr9ws0dpe1GfE2XP0J1R042gRkEF74KiCCQcnckS','$2a$10$z3AQIx8i6I/Dujr9ws0dpe','','',NULL,'Male','MJ14',0,0,0,0,1,NULL,NULL,NULL,'2013-08-13 11:05:12','2013-08-13 11:09:45','08/15/2013','gg','Ap','Hyd','India','vv','Mr.'),(15,'name','surna',2,'348348','sa@sa.com','$2a$10$hNue.Zc3r.sZkdgXvO2Jt.yertvgPLqzYzOzeRJkt7ibw9eFkhux2','$2a$10$hNue.Zc3r.sZkdgXvO2Jt.','','',NULL,'Male','MJ15',0,0,0,0,1,NULL,NULL,NULL,'2013-08-13 11:06:03','2013-08-13 11:08:57','08/06/2013','middle','strate','city','INDE','father name','Mr.'),(16,'naresh','babu',2,'996655886','s@gmail.com','$2a$10$oafD2aGx.JA/x44l5Q0I5exYMytWTomyVP9GXOeA7oML46YAFYsXO','$2a$10$oafD2aGx.JA/x44l5Q0I5e','','',NULL,'Male','MJ16',0,0,0,0,1,NULL,NULL,NULL,'2013-08-13 11:10:57','2013-08-13 11:12:43','08/05/1991','kabra','state','ciry','ind','rao','Mrs.'),(17,'bhanusai','mende',2,'7788447','r@rao.com',NULL,NULL,'','',NULL,'Male','',0,0,0,0,1,NULL,NULL,NULL,'2013-08-13 11:14:58','2013-08-13 11:15:08','08/14/2013','sai','etats','ciry','yrtnuoc','papa','Mr.');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-13 17:31:40
