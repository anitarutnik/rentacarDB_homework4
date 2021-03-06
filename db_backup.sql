-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: homework4
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (3,'Ivan','Ivi─ç','Osijek','+38595123456'),(4,'Pero','Peri─ç','Vinkovci','+38598123654'),(5,'Marko','Marki─ç','Vukovar','096874522'),(6,'Jana','Jani─ç','Ka┼ítel Stari','096822529'),(7,'Marija','Ili─ç','Zagreb','096874565'),(8,'Dino','Dini─ç','Delnice','096000565'),(9,'Perica','Perkovi─ç','Zadar','+38596874090'),(10,'Marica','Vuli─ç','┼áibenik','+38599721090'),(11,'Marin','Marini─ç','Rijeka','094801565'),(12,'Marijan','Marjani─ç','┼╜upanja','094806874');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Branimir','Ladi─ç','CEO'),(2,'Davor','Mari─ç','CMO'),(3,'Hrvoje','Lari─ç','COO'),(5,'Ivana','Misli─ç',''),(6,'Velimir','Kati─ç','Sales Assistant'),(7,'Domagoj','Horvat',''),(8,'Marica','Babi─ç','Sales Manager'),(9,'Tomislav','Kova─ìevi─ç','Salesman'),(10,'Maja','Maji─ç','Sales Assistant'),(11,'Kre┼íimir','Peri─ç','Salesman');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `zip` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (3,'Store1','Osijek','31000','Street 1'),(4,'Store2','Vukovar','32000','Street 2'),(5,'Store3','Vinkovci','32100','Street 3'),(6,'Store4','┼╜upanja','','Street 4'),(7,'Store5','Zagreb','10000','Street 5'),(8,'Store6','Delnice','51300','Street 6'),(9,'Store7','Rijeka','51000','Street 7'),(10,'Store8','Pula','','Street 8'),(11,'Store9','Zadar','23000','Street 9'),(12,'Store10','Split','21000','Street 10');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trg_msg`
--

DROP TABLE IF EXISTS `trg_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trg_msg` (
  `message` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trg_msg`
--

LOCK TABLES `trg_msg` WRITE;
/*!40000 ALTER TABLE `trg_msg` DISABLE KEYS */;
INSERT INTO `trg_msg` VALUES ('Message is added to each row');
/*!40000 ALTER TABLE `trg_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_exchanges`
--

DROP TABLE IF EXISTS `vehicle_exchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_exchanges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer` int(11) NOT NULL,
  `vehicle` int(11) NOT NULL,
  `employee` int(11) NOT NULL,
  `store_from` int(11) NOT NULL,
  `store_to` int(11) DEFAULT NULL,
  `delivered` datetime DEFAULT NULL,
  `returned` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer` (`customer`),
  KEY `vehicle` (`vehicle`),
  KEY `store_from` (`store_from`),
  KEY `store_to` (`store_to`),
  KEY `employee` (`employee`),
  CONSTRAINT `vehicle_exchanges_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customers` (`id`),
  CONSTRAINT `vehicle_exchanges_ibfk_2` FOREIGN KEY (`vehicle`) REFERENCES `vehicles` (`id`),
  CONSTRAINT `vehicle_exchanges_ibfk_3` FOREIGN KEY (`store_from`) REFERENCES `stores` (`id`),
  CONSTRAINT `vehicle_exchanges_ibfk_4` FOREIGN KEY (`store_to`) REFERENCES `stores` (`id`),
  CONSTRAINT `vehicle_exchanges_ibfk_5` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_exchanges`
--

LOCK TABLES `vehicle_exchanges` WRITE;
/*!40000 ALTER TABLE `vehicle_exchanges` DISABLE KEYS */;
INSERT INTO `vehicle_exchanges` VALUES (1,4,5,2,3,5,'2020-08-18 00:21:17','2020-08-22 00:10:12'),(2,7,10,5,6,7,'2020-05-12 02:06:28','2020-05-14 13:21:54'),(3,9,9,3,4,3,'2020-02-05 23:03:07','2020-02-10 23:25:48'),(4,4,7,7,8,10,'2020-02-10 21:40:52','2020-02-11 22:18:27'),(5,10,4,6,12,8,'2020-07-03 15:15:26','2020-07-10 16:41:09'),(6,7,2,8,7,7,'2020-06-14 06:23:57','2020-06-17 08:08:14'),(7,12,1,7,9,12,'2020-02-15 15:31:34','2020-02-26 18:13:51'),(8,11,8,11,11,5,'2020-05-03 01:03:03','2020-05-07 09:42:02'),(9,9,10,9,4,3,'2020-09-08 00:05:53','2020-09-09 07:26:17'),(10,5,9,10,5,5,'2020-06-05 02:21:09','2020-06-18 13:31:00'),(11,10,2,2,8,4,'2020-09-08 00:05:53','2020-09-09 12:37:49'),(12,3,7,9,11,7,'2020-02-05 23:03:07','2020-02-12 21:36:12'),(13,4,5,2,3,5,'2020-01-18 00:10:13','2020-02-22 00:16:56');
/*!40000 ALTER TABLE `vehicle_exchanges` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg` BEFORE INSERT ON `vehicle_exchanges` FOR EACH ROW BEGIN

    INSERT INTO trg_msg VALUES ('Message is added to each row');

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `class` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `engine_type` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `man_year` tinyint(4) DEFAULT NULL,
  `serial` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,'Opel','Insignia','Limousine','Diesel',17,8746957),(2,'Opel','Corsa','Hatchback','Diesel',18,8746941),(3,'Volkswagen','Arteon','Limousine','Diesel',19,8746968),(4,'Volkswagen','Golf','Hatchback','Electric',20,8746961),(5,'Renault','Megane','Hatchback','Gasoline',17,8746431),(6,'Renault','Zoe','Hatchback','Electric',20,87464654),(7,'Ford','Focus','Hatchback','Diesel',16,87464902),(8,'Tesla','Model S','Limousine','Electric',19,87464949),(9,'Tesla','Model 3','Limousine','Electric',17,87464946),(10,'Tesla','Model X','SUV','Electric',18,87464942);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-12 21:51:02
