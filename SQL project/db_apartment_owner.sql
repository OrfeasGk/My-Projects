-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_apartment
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner` (
  `owner_id` int NOT NULL AUTO_INCREMENT,
  `tin` varchar(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`owner_id`),
  UNIQUE KEY `tin` (`tin`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (1,'1234567890','Giorgos','Papadopoulos','giorgos.pap@gmail.com','Athens','1980-01-15','2024-11-27 23:33:50'),(2,'0987654321','Eleni','Karagianni','eleni.kara@outlook.com','Thessaloniki','1975-06-20','2024-11-27 23:33:50'),(3,'1122334455','Dimitris','Konstantinou','dimitris.kon@alpha.gr','Patras','1985-02-10','2024-11-27 23:33:50'),(4,'5566778899','Maria','Nikolaou','maria.niko@gmail.com','Heraklion','1990-08-15','2024-11-27 23:33:50'),(5,'4455667788','Kostas','Alexiou','kostas.alex@mycompany.com','Volos','1982-04-25','2024-11-27 23:33:50'),(6,'6677889900','Anastasia','Lampropoulou','anastasia.lamp@gmail.com','Kavala','1988-03-12','2024-11-27 23:33:50'),(7,'7788990011','Panagiotis','Hatzis','panos.hatz@outlook.com','Larissa','1979-10-30','2024-11-27 23:33:50'),(8,'8899001122','Sophia','Diamantopoulou','sofia.diam@gmail.com','Rhodes','1995-12-01','2024-11-27 23:33:50'),(9,'9911223344','Christos','Makridis','christos.mak@globalrentals.com','Ioannina','1987-05-14','2024-11-27 23:33:50'),(10,'1029384756','Zoi','Pavlidou','zoi.pav@eurohomes.gr','Chania','1992-07-21','2024-11-27 23:33:50'),(11,'2200345567','Dimitra','Karadimas','dimitra.kar@rentals.com','Chania','1994-08-09','2024-11-27 23:41:33'),(12,'2233145566','Nikolas','Vasileiou','nikolas.vas@gmail.com','Athens','1983-11-17','2024-11-27 23:41:33'),(13,'3374556677','Vasiliki','Georgiou','vasiliki.geo@outlook.com','Thessaloniki','1986-09-05','2024-11-27 23:41:33'),(14,'4455668788','Antonis','Oikonomou','antonis.oik@gmail.com','Patras','1980-01-08','2024-11-27 23:41:33'),(15,'5561778899','Georgia','Christodoulou','georgia.chris@myemail.com','Heraklion','1991-06-24','2024-11-27 23:41:33');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-28  1:57:09
