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
-- Table structure for table `tc_statistics`
--

DROP TABLE IF EXISTS `tc_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc_statistics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `capturetime` timestamp NOT NULL,
  `activeusers` int NOT NULL DEFAULT '0',
  `activedevices` int NOT NULL DEFAULT '0',
  `requests` int NOT NULL DEFAULT '0',
  `messagesreceived` int NOT NULL DEFAULT '0',
  `messagesstored` int NOT NULL DEFAULT '0',
  `attributes` varchar(4096) NOT NULL,
  `mailsent` int NOT NULL DEFAULT '0',
  `smssent` int NOT NULL DEFAULT '0',
  `geocoderrequests` int NOT NULL DEFAULT '0',
  `geolocationrequests` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_statistics`
--

LOCK TABLES `tc_statistics` WRITE;
/*!40000 ALTER TABLE `tc_statistics` DISABLE KEYS */;
INSERT INTO `tc_statistics` VALUES (1,'2020-02-27 13:04:30',1,2,816,1188,1064,'{}',0,0,0,0),(2,'2020-02-28 13:00:04',1,1,5076,770,564,'{}',0,0,0,0),(3,'2020-02-29 13:00:00',1,4,2221,2363,1959,'{}',0,0,0,0),(4,'2020-03-01 13:00:01',1,4,11474,12539,10453,'{}',0,0,0,0),(5,'2020-03-02 13:00:05',2,4,5647,3053,2664,'{}',0,0,0,0),(6,'2020-03-03 13:00:03',1,4,24516,2674,2308,'{}',0,0,0,0);
/*!40000 ALTER TABLE `tc_statistics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-06 11:09:16
