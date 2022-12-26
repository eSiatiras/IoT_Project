-- MySQL dump 10.16  Distrib 10.1.44-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Breath_Analyzer_DB
-- ------------------------------------------------------
-- Server version	10.1.44-MariaDB-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account_details`
--

DROP TABLE IF EXISTS `account_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_details` (
  `Serial_No` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Driver_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Driver_Contact_Info` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Secondary_Driver_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Secondary_Driver_Contact_Info` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`Serial_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_details`
--

LOCK TABLES `account_details` WRITE;
/*!40000 ALTER TABLE `account_details` DISABLE KEYS */;
INSERT INTO `account_details` VALUES ('1025af','Nick Pappas','6983555874','George Pappas','vanggelis_12@hotmail.com');
/*!40000 ALTER TABLE `account_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alcohol_stats`
--

DROP TABLE IF EXISTS `alcohol_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alcohol_stats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `serial_no` varchar(50) CHARACTER SET utf8 NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `measurement` double DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alcohol_stats`
--

LOCK TABLES `alcohol_stats` WRITE;
/*!40000 ALTER TABLE `alcohol_stats` DISABLE KEYS */;
INSERT INTO `alcohol_stats` VALUES (2,'1025af','0',0.75,'2020-07-11 10:15:10'),(3,'1025af','0',1.23,'2020-07-11 10:15:13'),(4,'1025af','0',1.24,'2020-07-11 10:15:16'),(5,'1025af','0',1.26,'2020-07-11 10:15:19'),(6,'1025af','0',0.4,'2020-07-11 10:15:22'),(17,'1025af','0',1.82,'2020-07-11 10:16:46'),(18,'1025af','0',2.19,'2020-07-11 10:16:49'),(19,'1025af','0',2.12,'2020-07-11 10:16:52'),(20,'1025af','0',2.01,'2020-07-11 10:16:55'),(21,'1025af','0',1.88,'2020-07-11 10:16:58'),(22,'1025af','0',1.81,'2020-07-11 10:17:01'),(23,'1025af','0',1.71,'2020-07-11 10:17:04'),(24,'1025af','0',1.61,'2020-07-11 10:17:07'),(25,'1025af','0',1.48,'2020-07-11 10:17:10'),(26,'1025af','0',1.34,'2020-07-11 10:17:13'),(27,'1025af','0',1.04,'2020-07-11 10:17:18'),(28,'1025af','0',0.99,'2020-07-11 10:17:21'),(29,'1025af','0',0.66,'2020-07-11 10:17:24'),(30,'1025af','0',0.41,'2020-07-11 10:17:27'),(31,'1025af','1',0.21,'2020-07-11 10:17:30'),(32,'1025af','0',0.41,'2020-07-11 10:17:46'),(33,'1025af','0',0.46,'2020-07-11 10:17:53'),(34,'1025af','0',0.4,'2020-07-11 10:17:56'),(35,'1025af','0',0.28,'2020-07-11 10:17:59'),(36,'1025af','1',0.14,'2020-07-11 10:18:02'),(39,'1025af','0',1.73,'2020-07-11 10:20:02'),(40,'1025af','0',1.74,'2020-07-11 10:20:05'),(41,'1025af','0',1.6,'2020-07-11 10:20:08'),(42,'1025af','0',1.55,'2020-07-11 10:20:11'),(43,'1025af','0',1.6,'2020-07-11 10:20:14'),(44,'1025af','0',0.77,'2020-07-11 10:20:17'),(47,'1025af','0',1.66,'2020-07-11 10:20:36'),(48,'1025af','0',1.78,'2020-07-11 10:20:39'),(49,'1025af','0',1.66,'2020-07-11 10:20:42'),(50,'1025af','0',1.19,'2020-07-11 10:27:03'),(51,'1025af','0',1.14,'2020-07-11 10:27:06'),(52,'1025af','0',1.12,'2020-07-11 10:27:09'),(53,'1025af','0',1.27,'2020-07-11 10:27:12'),(54,'1025af','0',0.65,'2020-07-11 10:27:15'),(55,'1025af','0',1.52,'2020-07-11 10:31:38'),(56,'1025af','0',1.59,'2020-07-11 10:31:41'),(57,'1025af','0',1.4,'2020-07-11 10:31:44'),(58,'1025af','0',1.15,'2020-07-11 10:31:47'),(59,'1025af','0',0.76,'2020-07-11 10:31:50'),(60,'1025af','0',0.3,'2020-07-11 10:31:53'),(61,'1025af','0',1.66,'2020-07-11 11:29:14'),(62,'1025af','0',1.61,'2020-07-11 11:29:17'),(63,'1025af','0',1.56,'2020-07-11 11:29:20'),(64,'1025af','0',1.22,'2020-07-11 11:29:23'),(65,'1025af','0',0.83,'2020-07-11 11:29:26'),(66,'1025af','0',0.36,'2020-07-11 11:29:29'),(67,'1025af','0',0.55,'2020-07-11 11:29:32'),(68,'1025af','1',0.16,'2020-07-11 11:29:35'),(69,'1025af','0',0.76,'2020-07-11 11:32:23'),(70,'1025af','0',1.49,'2020-07-11 11:32:26'),(71,'1025af','0',0.77,'2020-07-11 11:32:29'),(72,'1025af','0',1.85,'2020-07-11 11:33:18'),(73,'1025af','0',1.72,'2020-07-11 11:33:21'),(74,'1025af','0',1.55,'2020-07-11 11:33:24'),(75,'1025af','0',1.37,'2020-07-11 11:33:27'),(76,'1025af','0',1.04,'2020-07-11 11:33:30'),(77,'1025af','0',0.76,'2020-07-11 11:33:33'),(78,'1025af','0',0.36,'2020-07-11 11:33:36'),(79,'1025af','0',1.16,'2020-07-11 11:34:26'),(80,'1025af','0',1.1,'2020-07-11 11:34:29'),(81,'1025af','0',0.36,'2020-07-11 11:34:32'),(82,'1025af','0',1.42,'2020-07-11 11:37:10'),(83,'1025af','0',0.54,'2020-07-11 11:37:12'),(84,'1025af','0',1.33,'2020-07-11 11:37:53'),(85,'1025af','0',1.12,'2020-07-11 11:37:56'),(86,'1025af','1',0.02,'2020-07-11 11:37:59'),(87,'1025af','0',1.5,'2020-07-11 11:38:25'),(88,'1025af','0',1.28,'2020-07-11 11:38:28'),(89,'1025af','0',0.72,'2020-07-11 11:38:31'),(90,'1025af','0',1.79,'2020-07-11 11:40:32'),(91,'1025af','0',1.75,'2020-07-11 11:40:35'),(92,'1025af','0',1.64,'2020-07-11 11:40:38'),(93,'1025af','0',1.52,'2020-07-11 11:40:41'),(94,'1025af','0',1.43,'2020-07-11 11:40:44'),(95,'1025af','0',1.3,'2020-07-11 11:40:47'),(96,'1025af','0',1.19,'2020-07-11 11:40:50'),(97,'1025af','0',1.03,'2020-07-11 11:40:53'),(98,'1025af','0',0.77,'2020-07-11 11:40:56'),(99,'1025af','0',0.47,'2020-07-11 11:40:59'),(100,'1025af','1',0.06,'2020-07-11 11:41:02'),(101,'1025af','0',0.85,'2020-07-11 11:41:59'),(102,'1025af','0',0.35,'2020-07-11 11:42:02'),(103,'1025af','0',1.46,'2020-07-11 11:43:57'),(104,'1025af','0',1.03,'2020-07-11 11:44:00'),(105,'1025af','0',1.53,'2020-07-11 11:46:57'),(106,'1025af','0',0.78,'2020-07-11 11:47:00'),(107,'1025af','0',0.27,'2020-07-11 11:48:20'),(108,'1025af','0',0.23,'2020-07-11 11:48:23'),(109,'1025af','0',1.15,'2020-07-11 11:50:17'),(110,'1025af','0',0.85,'2020-07-11 11:50:20'),(111,'1025af','0',0.84,'2020-07-11 12:12:57'),(112,'1025af','1',0.11,'2020-07-11 12:15:16'),(113,'1025af','0',0.88,'2020-07-11 12:18:04'),(114,'1025af','0',0.87,'2020-07-11 12:18:50'),(115,'1025af','0',1.16,'2020-07-11 12:18:53'),(116,'1025af','0',0.78,'2020-07-11 12:18:56'),(117,'1025af','1',0.19,'2020-07-11 12:20:06'),(118,'1025af','0',0.91,'2020-07-11 12:23:02'),(119,'1025af','1',0.06,'2020-07-11 12:23:05'),(120,'1025af','0',1.07,'2020-07-11 12:25:00'),(121,'1025af','1',0.19,'2020-07-11 12:25:03'),(122,'1025af','0',0.68,'2020-07-11 12:26:52'),(123,'1025af','0',0.54,'2020-07-11 12:27:12'),(124,'1025af','0',0.59,'2020-07-11 12:27:15'),(125,'1025af','0',0.76,'2020-07-11 12:30:37'),(126,'1025af','0',1.2,'2020-07-11 12:30:40'),(127,'1025af','0',0.77,'2020-07-11 12:32:38'),(128,'1025af','1',0.03,'2020-07-11 13:02:01'),(178,'1025af','1',0.12,'2020-07-12 17:03:02'),(179,'1025af','1',0.1,'2020-07-12 17:03:10'),(180,'1025af','1',0.08,'2020-07-12 17:03:18'),(181,'1025af','1',0.07,'2020-07-12 17:03:26'),(182,'1025af','1',0.07,'2020-07-12 17:03:34'),(183,'1025af','1',0.07,'2020-07-12 17:03:42'),(184,'1025af','0',1.1,'2020-07-12 17:03:50'),(185,'1025af','0',1.02,'2020-07-12 17:03:58'),(186,'1025af','0',0.92,'2020-07-12 17:04:06'),(187,'1025af','1',0.67,'2020-07-12 17:04:14'),(188,'1025af','1',0.51,'2020-07-12 17:04:22'),(189,'1025af','1',0.42,'2020-07-12 17:04:30'),(190,'1025af','1',0.4,'2020-07-12 17:04:38'),(191,'1025af','1',0.36,'2020-07-12 17:04:46'),(192,'1025af','1',0.34,'2020-07-12 17:04:54'),(193,'1025af','1',0.31,'2020-07-12 17:05:02'),(194,'1025af','1',0.28,'2020-07-12 17:05:10'),(195,'1025af','1',0.25,'2020-07-12 17:05:18'),(196,'1025af','0',1.81,'2020-07-12 19:09:59'),(197,'1025af','0',1.55,'2020-07-12 19:10:07'),(198,'1025af','0',1.27,'2020-07-12 19:10:15'),(199,'1025af','0',1.08,'2020-07-12 19:10:23'),(200,'1025af','0',0.66,'2020-07-12 19:10:31'),(201,'1025af','1',0.03,'2020-07-12 19:10:40'),(202,'1025af','0',1.59,'2020-07-12 19:12:18'),(203,'1025af','0',1.25,'2020-07-12 19:12:26'),(204,'1025af','0',0.78,'2020-07-12 19:12:34'),(205,'1025af','1',0.01,'2020-07-12 19:12:42'),(206,'1025af','0',1.88,'2020-07-12 19:16:02'),(207,'1025af','0',1.68,'2020-07-12 19:16:11'),(208,'1025af','0',1.56,'2020-07-12 19:16:18'),(209,'1025af','0',1.5,'2020-07-12 19:16:27'),(210,'1025af','0',1.24,'2020-07-12 19:16:36'),(211,'1025af','0',0.88,'2020-07-12 19:16:43'),(212,'1025af','0',0.23,'2020-07-12 19:16:51'),(213,'1025af','0',0.47,'2020-07-12 19:18:27'),(214,'1025af','0',0.58,'2020-07-12 19:18:53'),(215,'1025af','0',1.55,'2020-07-12 19:34:50'),(216,'1025af','0',1.51,'2020-07-12 19:34:58'),(217,'1025af','0',1.35,'2020-07-12 19:35:06'),(218,'1025af','0',1.09,'2020-07-12 19:35:15'),(219,'1025af','0',0.87,'2020-07-12 19:35:23'),(220,'1025af','1',0.22,'2020-07-12 19:35:31'),(221,'1025af','0',0.58,'2020-07-12 19:41:27'),(222,'1025af','1',0.11,'2020-07-12 19:41:35'),(223,'1025af','0',1.48,'2020-07-12 20:24:19'),(224,'1025af','0',1.52,'2020-07-12 20:24:27'),(225,'1025af','0',1.31,'2020-07-12 20:24:35'),(226,'1025af','0',1.1,'2020-07-12 20:24:44'),(227,'1025af','0',0.63,'2020-07-12 20:24:52'),(228,'1025af','1',0.12,'2020-07-12 20:25:00'),(229,'1025af','0',1.33,'2020-07-12 20:25:41'),(230,'1025af','1',0.01,'2020-07-12 20:38:01'),(231,'1025af','0',0.41,'2020-07-12 20:38:34'),(232,'1025af','0',0.8,'2020-07-12 20:40:19'),(233,'1025af','0',1.84,'2020-07-12 20:41:20'),(234,'1025af','0',1.69,'2020-07-12 20:41:28'),(235,'1025af','0',1.63,'2020-07-12 20:41:36'),(236,'1025af','0',1.5,'2020-07-12 20:41:45'),(237,'1025af','0',1.38,'2020-07-12 20:41:53'),(238,'1025af','0',1.09,'2020-07-12 20:42:01'),(239,'1025af','0',0.76,'2020-07-12 20:42:09'),(240,'1025af','0',0.32,'2020-07-12 20:42:18'),(241,'1025af','0',1.38,'2020-07-12 20:43:57'),(242,'1025af','0',1.57,'2020-07-12 20:44:46'),(243,'1025af','0',1.77,'2020-07-12 20:44:54'),(244,'1025af','0',1.62,'2020-07-12 20:45:03'),(245,'1025af','0',1.43,'2020-07-12 20:45:11'),(246,'1025af','0',1.37,'2020-07-12 20:45:19'),(247,'1025af','0',0.94,'2020-07-12 20:45:27'),(248,'1025af','0',0.48,'2020-07-12 20:45:39'),(249,'1025af','0',1.34,'2020-07-12 20:45:48'),(250,'1025af','0',1.83,'2020-07-12 20:45:56'),(251,'1025af','0',1.82,'2020-07-12 20:46:04'),(252,'1025af','0',1.74,'2020-07-12 20:46:12'),(253,'1025af','0',1.62,'2020-07-12 20:46:21'),(254,'1025af','0',1.43,'2020-07-12 20:46:29'),(255,'1025af','0',1.07,'2020-07-12 20:46:37'),(256,'1025af','0',0.77,'2020-07-12 20:46:46'),(257,'1025af','0',0.42,'2020-07-12 20:46:54'),(258,'1025af','0',1.64,'2020-07-12 20:48:49'),(259,'1025af','0',1.59,'2020-07-12 20:48:58'),(260,'1025af','0',1.44,'2020-07-12 20:49:06'),(261,'1025af','0',0.72,'2020-07-12 20:50:48'),(262,'1025af','0',1.28,'2020-07-12 20:51:22'),(263,'1025af','0',1.09,'2020-07-12 20:51:30'),(264,'1025af','0',0.91,'2020-07-12 20:51:39'),(265,'1025af','0',0.28,'2020-07-12 20:51:47'),(266,'1025af','0',0.53,'2020-07-12 20:54:18'),(267,'1025af','0',1.59,'2020-07-12 20:54:39'),(268,'1025af','0',1.64,'2020-07-12 20:54:46'),(269,'1025af','0',1.58,'2020-07-12 20:54:53'),(270,'1025af','0',1.57,'2020-07-12 20:55:00'),(271,'1025af','0',1.51,'2020-07-12 20:55:07'),(272,'1025af','0',1.41,'2020-07-12 20:55:14'),(273,'1025af','0',1.13,'2020-07-12 20:55:21'),(274,'1025af','0',1.13,'2020-07-12 20:55:28'),(275,'1025af','0',0.89,'2020-07-12 20:55:35'),(276,'1025af','0',0.71,'2020-07-12 20:55:42'),(277,'1025af','0',0.35,'2020-07-12 20:55:49'),(278,'1025af','1',0.06,'2020-07-12 20:55:56');
/*!40000 ALTER TABLE `alcohol_stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-12 14:15:48
