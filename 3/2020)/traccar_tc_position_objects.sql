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
-- Table structure for table `tc_position_objects`
--

DROP TABLE IF EXISTS `tc_position_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc_position_objects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `protocol` varchar(128) DEFAULT NULL,
  `deviceid` int NOT NULL,
  `servertime` varchar(40) DEFAULT NULL,
  `devicetime` varchar(40) DEFAULT NULL,
  `fixtime` varchar(40) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `altitude` float DEFAULT NULL,
  `speed` float DEFAULT NULL,
  `course` float DEFAULT NULL,
  `address` varchar(512) DEFAULT NULL,
  `attributes` varchar(4000) DEFAULT NULL,
  `accuracy` double DEFAULT '0',
  `network` varchar(4000) DEFAULT NULL,
  `distance` double DEFAULT NULL,
  `totalDistance` double DEFAULT NULL,
  `ignition` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `deviceid_UNIQUE` (`deviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_position_objects`
--

LOCK TABLES `tc_position_objects` WRITE;
/*!40000 ALTER TABLE `tc_position_objects` DISABLE KEYS */;
INSERT INTO `tc_position_objects` VALUES (1,'gt06',2,'Fri Mar 06 11:09:02 IST 2020','Fri Mar 06 16:39:05 IST 2020','Fri Mar 06 16:39:05 IST 2020',_binary '',25.208873333333333,77.13566222222222,0,0,167,'null','{sat=4, ignition=false, distance=11.93, totalDistance=460360.92, motion=false, hours=70983000}',0,'org.traccar.model.Network@63d6f1c3',11.93,460360.92,'false'),(2,'gt06',1,'Thu Feb 27 17:08:03 IST 2020','Thu Feb 27 17:08:03 IST 2020','Thu Feb 27 17:08:03 IST 2020',_binary '',22.67825611111111,75.92629222222222,0,0,0,'null','{iccid=8991931804902081, distance=0.0, totalDistance=416613.21, motion=false, hours=47764000}',0,'null',NULL,NULL,NULL),(3,'gt06',3,'Fri Mar 06 11:09:10 IST 2020','Fri Mar 06 14:38:44 IST 2020','Fri Mar 06 14:38:44 IST 2020',_binary '',22.639375555555556,77.05557333333334,0,29.1577,228,'null','{sat=9, ignition=true, distance=149.74, totalDistance=1004712.28, motion=true, hours=144299000}',0,'org.traccar.model.Network@28cbff42',149.74,1004712.28,'true'),(4,'gps103',6,'Fri Mar 06 11:09:02 IST 2020','Fri Mar 06 11:09:02 IST 2020','Fri Mar 06 11:09:02 IST 2020',_binary '',22.04182,74.90560833333333,0,0,0,'null','{distance=0.0, totalDistance=396879.07, motion=false, hours=7000}',0,'null',0,396879.07,'false'),(7,'gt06',7,'Fri Mar 06 11:08:56 IST 2020','Fri Mar 06 16:38:58 IST 2020','Fri Mar 06 16:38:58 IST 2020',_binary '',23.155805,77.4736688888889,0,32.9374,143,'null','{sat=9, distance=346.33, totalDistance=57642.35, motion=true}',0,'org.traccar.model.Network@325e5a12',346.33,57642.35,'false');
/*!40000 ALTER TABLE `tc_position_objects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-06 11:09:10
