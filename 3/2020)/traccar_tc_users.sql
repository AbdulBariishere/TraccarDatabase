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
-- Table structure for table `tc_users`
--

DROP TABLE IF EXISTS `tc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `hashedpassword` varchar(128) DEFAULT NULL,
  `salt` varchar(128) DEFAULT NULL,
  `readonly` bit(1) NOT NULL DEFAULT b'0',
  `administrator` bit(1) DEFAULT NULL,
  `map` varchar(128) DEFAULT NULL,
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `zoom` int NOT NULL DEFAULT '0',
  `twelvehourformat` bit(1) NOT NULL DEFAULT b'0',
  `attributes` varchar(4000) DEFAULT NULL,
  `coordinateformat` varchar(128) DEFAULT NULL,
  `disabled` bit(1) DEFAULT b'0',
  `expirationtime` timestamp NULL DEFAULT NULL,
  `devicelimit` int DEFAULT '-1',
  `token` varchar(128) DEFAULT NULL,
  `userlimit` int DEFAULT '0',
  `devicereadonly` bit(1) DEFAULT b'0',
  `phone` varchar(128) DEFAULT NULL,
  `limitcommands` bit(1) DEFAULT b'0',
  `login` varchar(128) DEFAULT NULL,
  `poilayer` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_users`
--

LOCK TABLES `tc_users` WRITE;
/*!40000 ALTER TABLE `tc_users` DISABLE KEYS */;
INSERT INTO `tc_users` VALUES (1,'admin','admin','D33DCA55ABD4CC5BC76F2BC0B4E603FE2C6F61F4C1EF2D47','000000000000000000000000000000000000000000000000',_binary '\0',_binary '',NULL,0,0,0,_binary '\0',NULL,NULL,_binary '\0',NULL,-1,NULL,0,_binary '\0',NULL,_binary '\0',NULL,NULL),(2,'ABDUL BARI','abdul@gmail.com','a8d36dabee2b2d42cf1ebaa1f34d8cd066d1c614a3b1cbfe','c209886f014f0907fde5a6e66164025208b38d083115bb47',_binary '\0',_binary '','',0,0,0,_binary '\0','{}','',_binary '\0',NULL,-1,NULL,0,_binary '\0','',_binary '\0','','');
/*!40000 ALTER TABLE `tc_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-06 11:09:17
