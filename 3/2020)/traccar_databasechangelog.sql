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
-- Table structure for table `databasechangelog`
--

DROP TABLE IF EXISTS `databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databasechangelog`
--

LOCK TABLES `databasechangelog` WRITE;
/*!40000 ALTER TABLE `databasechangelog` DISABLE KEYS */;
INSERT INTO `databasechangelog` VALUES ('changelog-4.0-clean','author','changelog-4.0-clean','2020-02-26 22:12:03',1,'EXECUTED','8:d59fa93049c031a8bcfbc02958c1942c','createTable tableName=tc_attributes; createTable tableName=tc_calendars; createTable tableName=tc_commands; createTable tableName=tc_device_attribute; createTable tableName=tc_device_command; createTable tableName=tc_device_driver; createTable tab...','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-4.0-clean-common','author','changelog-4.0-clean','2020-02-26 22:12:03',2,'EXECUTED','8:1adabae3238e02ccc97cc422359a58a0','addForeignKeyConstraint baseTableName=tc_groups, constraintName=fk_groups_groupid, referencedTableName=tc_groups; addForeignKeyConstraint baseTableName=tc_user_user, constraintName=fk_user_user_manageduserid, referencedTableName=tc_users','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.3','author','changelog-3.3','2020-02-26 22:12:03',3,'MARK_RAN','8:ea6f202534dc7845fd1a49e1d8384d9c','createTable tableName=users; addUniqueConstraint constraintName=uk_user_email, tableName=users; createTable tableName=devices; addUniqueConstraint constraintName=uk_device_uniqueid, tableName=devices; createTable tableName=user_device; addForeignK...','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.5','author','changelog-3.5','2020-02-26 22:12:03',4,'MARK_RAN','8:194e3ae7ec6d201917136e04a26e237b','createTable tableName=groups; createTable tableName=user_group; addForeignKeyConstraint baseTableName=user_group, constraintName=fk_user_group_userid, referencedTableName=users; addForeignKeyConstraint baseTableName=user_group, constraintName=fk_u...','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.6','author','changelog-3.6','2020-02-26 22:12:03',5,'MARK_RAN','8:1ec7941b03749f24e365bc6126b07e1a','createTable tableName=events; addForeignKeyConstraint baseTableName=events, constraintName=fk_event_deviceid, referencedTableName=devices; addColumn tableName=devices; createTable tableName=geofences; createTable tableName=user_geofence; addForeig...','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.7','author','changelog-3.7','2020-02-26 22:12:03',6,'MARK_RAN','8:2e444e379f31d0b8e09273ec7ffe87a0','update tableName=devices; addForeignKeyConstraint baseTableName=devices, constraintName=fk_device_group_groupid, referencedTableName=groups; update tableName=groups; addColumn tableName=devices; dropColumn columnName=motion, tableName=devices; dro...','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.7-notmssql','author','changelog-3.7','2020-02-26 22:12:03',7,'MARK_RAN','8:974c33d2fb399ef6477c3897450fb078','addForeignKeyConstraint baseTableName=groups, constraintName=fk_group_group_groupid, referencedTableName=groups','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.8','author','changelog-3.8','2020-02-26 22:12:03',8,'MARK_RAN','8:74d68027951f8d2ae6bb2e24df8365bc','createTable tableName=attribute_aliases; addForeignKeyConstraint baseTableName=attribute_aliases, constraintName=fk_attribute_aliases_deviceid, referencedTableName=devices; addUniqueConstraint constraintName=uk_deviceid_attribute, tableName=attrib...','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.9','author','changelog-3.9','2020-02-26 22:12:03',9,'MARK_RAN','8:34822842d65deb843a7d16f857d52ecc','addColumn tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.10','author','changelog-3.10','2020-02-26 22:12:03',10,'MARK_RAN','8:e1ddbe83e1ecf856a912755fc118f82e','createTable tableName=calendars; createTable tableName=user_calendar; addForeignKeyConstraint baseTableName=user_calendar, constraintName=fk_user_calendar_userid, referencedTableName=users; addForeignKeyConstraint baseTableName=user_calendar, cons...','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.10-notmssql','author','changelog-3.10','2020-02-26 22:12:03',11,'MARK_RAN','8:191c21d8f0f921845cf93bbc9d0639b9','addForeignKeyConstraint baseTableName=user_user, constraintName=fk_user_user_manageduserid, referencedTableName=users','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.10-mssql','author','changelog-3.10','2020-02-26 22:12:03',12,'MARK_RAN','8:ad1f63566e8d08812fbf0b93a118ef6e','sql','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.7-mssql','author','changelog-3.10','2020-02-26 22:12:03',13,'MARK_RAN','8:127b36b9d32a9d236df51d19b18c3766','sql','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.11','author','changelog-3.11','2020-02-26 22:12:03',14,'MARK_RAN','8:7800f890b9706a480bd5a79b591b6ca7','addColumn tableName=users; addColumn tableName=notifications; addColumn tableName=server; addColumn tableName=server; addColumn tableName=users','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.12','author','changelog-3.12','2020-02-26 22:12:03',15,'MARK_RAN','8:5ce520811d626ad325a014b9fcbb1a13','addColumn tableName=statistics; createTable tableName=attributes; createTable tableName=user_attribute; addForeignKeyConstraint baseTableName=user_attribute, constraintName=fk_user_attribute_userid, referencedTableName=users; addForeignKeyConstrai...','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.12-notmssql','author','changelog-3.12','2020-02-26 22:12:03',16,'MARK_RAN','8:a3bf7fabcde29e106fe2f89829a76a84','dropForeignKeyConstraint baseTableName=groups, constraintName=fk_group_group_groupid; addForeignKeyConstraint baseTableName=groups, constraintName=fk_groups_groupid, referencedTableName=groups','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.12-pgsql','author','changelog-3.12','2020-02-26 22:12:03',17,'MARK_RAN','8:cfc881bd2dadb561aa9c1a467bc8cc1c','dropColumn columnName=data, tableName=calendars; addColumn tableName=calendars','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.14','author','changelog-3.14','2020-02-26 22:12:03',18,'MARK_RAN','8:1be7e6c0520f8be53ef1b099d96afba5','createTable tableName=drivers; addUniqueConstraint constraintName=uk_driver_uniqueid, tableName=drivers; createTable tableName=user_driver; addForeignKeyConstraint baseTableName=user_driver, constraintName=fk_user_driver_userid, referencedTableNam...','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.15','author','changelog-3.15','2020-02-26 22:12:03',19,'MARK_RAN','8:ac8ccec176027e98bbf45dc6c15d9b05','dropForeignKeyConstraint baseTableName=attribute_aliases, constraintName=fk_attribute_aliases_deviceid; dropUniqueConstraint constraintName=uk_deviceid_attribute, tableName=attribute_aliases; dropTable tableName=attribute_aliases; dropColumn colum...','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.16','author','changelog-3.16','2020-02-26 22:12:03',20,'MARK_RAN','8:b59407d70bfe9bf57bc9968adfbbdf1c','addColumn tableName=devices; addColumn tableName=users; addColumn tableName=servers; addColumn tableName=notifications; addForeignKeyConstraint baseTableName=notifications, constraintName=fk_notification_calendar_calendarid, referencedTableName=ca...','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.3-admin','author','changelog-3.17','2020-02-26 22:12:04',21,'MARK_RAN','8:3f14c3b08068eb7628d0d3e2941eb2d3','renameColumn newColumnName=administrator, oldColumnName=admin, tableName=users','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-3.17','author','changelog-3.17','2020-02-26 22:12:04',22,'MARK_RAN','8:8aa3e56afe6ba86cd004fa801507bc28','addColumn tableName=events; createTable tableName=maintenances; createTable tableName=user_maintenance; addForeignKeyConstraint baseTableName=user_maintenance, constraintName=fk_user_maintenance_userid, referencedTableName=users; addForeignKeyCons...','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-4.0-pre','author','changelog-4.0','2020-02-26 22:12:04',23,'MARK_RAN','8:3974bfe5a2e962c0cd663433c832c16a','addColumn tableName=notifications','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-4.0-common','author','changelog-4.0','2020-02-26 22:12:04',24,'MARK_RAN','8:65fb49c5be37693183708351c507dd50','update tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-4.0-pg','author','changelog-4.0','2020-02-26 22:12:04',25,'MARK_RAN','8:9831511507d8ae1d6759c8ccf506a27a','update tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-4.0','author','changelog-4.0','2020-02-26 22:12:04',26,'MARK_RAN','8:ac63c4153f5b2ee5c7a07056da269571','dropDefaultValue columnName=web, tableName=notifications; dropColumn columnName=web, tableName=notifications; dropDefaultValue columnName=mail, tableName=notifications; dropColumn columnName=mail, tableName=notifications; dropDefaultValue columnNa...','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-4.0-renaming','author','changelog-4.0','2020-02-26 22:12:04',27,'MARK_RAN','8:90aedfa378aa717f8d8ae541f97b87b2','renameTable newTableName=tc_attributes, oldTableName=attributes; renameTable newTableName=tc_calendars, oldTableName=calendars; renameTable newTableName=tc_commands, oldTableName=commands; renameTable newTableName=tc_device_attribute, oldTableName...','',NULL,'3.8.0',NULL,NULL,'2735315382'),('changelog-4.1-mssql','author','changelog-4.1','2020-02-26 22:12:04',28,'MARK_RAN','8:b148f52efe9c6a3e74a56e33e257a3e2','sql; sql; sql; sql','',NULL,'3.8.0',NULL,NULL,'2735315382');
/*!40000 ALTER TABLE `databasechangelog` ENABLE KEYS */;
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
