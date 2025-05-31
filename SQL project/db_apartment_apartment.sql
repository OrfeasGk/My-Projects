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
-- Table structure for table `apartment`
--

DROP TABLE IF EXISTS `apartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apartment` (
  `apartment_id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int NOT NULL,
  `street` varchar(100) NOT NULL,
  `street_number` varchar(10) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `floor` varchar(10) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`apartment_id`),
  KEY `owner_id` (`owner_id`),
  CONSTRAINT `apartment_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`owner_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartment`
--

LOCK TABLES `apartment` WRITE;
/*!40000 ALTER TABLE `apartment` DISABLE KEYS */;
INSERT INTO `apartment` VALUES (1,1,'Ermou','45','10563','Athens','2',750.00,'2024-11-27 23:34:15'),(2,1,'Kifisias','123','11526','Athens','4',950.00,'2024-11-27 23:34:15'),(3,2,'Tsimiski','88','54622','Thessaloniki','3',800.00,'2024-11-27 23:34:15'),(4,3,'Agios Andreas','12','26224','Patras','1',600.00,'2024-11-27 23:34:15'),(5,4,'Daedalos','7','71202','Heraklion','5',850.00,'2024-11-27 23:34:15'),(6,5,'Papadiamanti','33','38333','Volos','3',700.00,'2024-11-27 23:34:15'),(7,6,'Venizelou','15','65201','Kavala','2',620.00,'2024-11-27 23:34:15'),(8,7,'Central Square','5','41334','Larissa','4',720.00,'2024-11-27 23:34:15'),(9,8,'Old Town','22','85100','Rhodes','1',850.00,'2024-11-27 23:34:15'),(10,9,'Ioannina Lake','10','45221','Ioannina','3',780.00,'2024-11-27 23:34:15'),(11,10,'Talos','5','73100','Chania','2',670.00,'2024-11-27 23:34:15'),(12,11,'Poseidonos','50','17455','Athens','3',900.00,'2024-11-27 23:49:39'),(13,11,'Akadimias','32','10671','Athens','1',650.00,'2024-11-27 23:49:39'),(14,12,'Egnatia','120','54623','Thessaloniki','4',820.00,'2024-11-27 23:49:39'),(15,12,'Leoforos Stratou','45','54639','Thessaloniki','5',890.00,'2024-11-27 23:49:39'),(16,13,'Karolou','20','26223','Patras','2',580.00,'2024-11-27 23:49:39'),(17,14,'Minoos','10','71307','Heraklion','3',700.00,'2024-11-27 23:49:39'),(18,15,'Pilio Street','5','38334','Volos','2',730.00,'2024-11-27 23:49:39'),(19,15,'Megalos Alexandros','8','65202','Kavala','1',610.00,'2024-11-27 23:49:39'),(20,15,'Sapphous','3','41335','Larissa','4',740.00,'2024-11-27 23:49:39'),(21,15,'Kallithea','18','85101','Rhodes','2',880.00,'2024-11-27 23:49:39');
/*!40000 ALTER TABLE `apartment` ENABLE KEYS */;
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
