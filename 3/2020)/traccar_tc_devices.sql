-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: traccar
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tc_devices`
--

DROP TABLE IF EXISTS `tc_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc_devices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `uniqueid` varchar(128) NOT NULL,
  `lastupdate` timestamp NULL DEFAULT NULL,
  `positionid` int DEFAULT NULL,
  `groupid` int DEFAULT NULL,
  `attributes` varchar(4000) DEFAULT NULL,
  `phone` varchar(128) DEFAULT NULL,
  `model` varchar(128) DEFAULT NULL,
  `contact` varchar(512) DEFAULT NULL,
  `category` varchar(128) DEFAULT NULL,
  `disabled` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniqueid` (`uniqueid`),
  KEY `fk_devices_groupid` (`groupid`),
  CONSTRAINT `fk_devices_groupid` FOREIGN KEY (`groupid`) REFERENCES `tc_groups` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_devices`
--

LOCK TABLES `tc_devices` WRITE;
/*!40000 ALTER TABLE `tc_devices` DISABLE KEYS */;
INSERT INTO `tc_devices` VALUES (1,'866551036843378','866551036843378','2020-02-27 06:08:04',6133,NULL,'{}','','','',NULL,_binary '\0'),(2,'351608085438716','351608085438716','2020-03-06 00:09:03',61315,NULL,'{}','','','',NULL,_binary '\0'),(3,'358735074666370','358735074666370','2020-03-06 00:09:11',61358,NULL,'{}','','','',NULL,_binary '\0'),(4,'548802012051901','548802012051901',NULL,NULL,NULL,'{}','','','',NULL,_binary '\0'),(5,'21d101200c9027e','21d101200c9027e',NULL,NULL,NULL,'{}','','','',NULL,_binary '\0'),(6,'864180035693410','864180035693410','2020-03-06 00:09:10',61316,NULL,'{}','','','',NULL,_binary '\0'),(7,'355488020120519','355488020120519','2020-03-06 00:08:57',61283,NULL,'{}','','','',NULL,_binary '\0');
/*!40000 ALTER TABLE `tc_devices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-06 11:09:12
