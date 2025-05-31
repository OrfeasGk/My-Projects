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
-- Table structure for table `tenant`
--

DROP TABLE IF EXISTS `tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenant` (
  `tenant_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `country` varchar(50) NOT NULL,
  `num_of_tenants` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tenant_id`),
  UNIQUE KEY `email` (`email`),
  CONSTRAINT `tenant_chk_1` CHECK ((`gender` in (_utf8mb4'Male',_utf8mb4'Female',_utf8mb4'Other'))),
  CONSTRAINT `tenant_chk_2` CHECK ((`num_of_tenants` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant`
--

LOCK TABLES `tenant` WRITE;
/*!40000 ALTER TABLE `tenant` DISABLE KEYS */;
INSERT INTO `tenant` VALUES (1,'Nikos','Alexiou','Male','nikos.alex@gmail.com','1990-06-15','Greece',1,'2024-11-27 23:34:34'),(2,'Katerina','Pappa','Female','katerina.pap@companyrentals.com','1988-02-20','Greece',2,'2024-11-27 23:34:34'),(3,'Yiannis','Mitropoulos','Male','yiannis.mit@gmail.com','1982-09-25','Greece',3,'2024-11-27 23:34:34'),(4,'Athina','Christodoulaki','Female','athina.chr@cyprusmail.com','1995-05-12','Cyprus',1,'2024-11-27 23:34:34'),(5,'Michalis','Stavropoulos','Male','michalis.stav@rentalhub.com','1980-03-05','Germany',1,'2024-11-27 23:34:34'),(6,'Eirini','Georgiou','Female','eirini.geo@gmail.com','1993-08-18','Greece',2,'2024-11-27 23:34:34'),(7,'Petros','Lamprou','Male','petros.lam@homes4all.gr','1991-01-10','Switzerland',1,'2024-11-27 23:34:34'),(8,'Margarita','Kokkinou','Female','margarita.kok@gmail.com','1985-07-07','Greece',1,'2024-11-27 23:34:34'),(9,'Christina','Vasilaki','Female','christina.vas@eurohomes.gr','1994-11-03','USA',2,'2024-11-27 23:34:34'),(10,'Vangelis','Kotsis','Male','vangelis.kot@outlook.com','1989-04-22','UK',1,'2024-11-27 23:34:34'),(11,'Sofia','Karatza','Female','sofia.kar@gmail.com','1992-12-08','Greece',1,'2024-11-27 23:51:05'),(12,'Alexandros','Dimitriou','Male','alexandros.dim@rentalsworld.com','1987-03-15','France',2,'2024-11-27 23:51:05'),(13,'Maria','Nikolaou','Female','maria.nik@gmail.com','1996-05-20','Cyprus',1,'2024-11-27 23:51:05'),(14,'Dimitris','Pavlidis','Male','dimitris.pav@companyhomes.com','1981-10-01','Greece',3,'2024-11-27 23:51:05'),(15,'Eleni','Papadopoulou','Female','eleni.pap@gmail.com','1984-06-11','Germany',2,'2024-11-27 23:51:05'),(16,'Stavros','Katsaros','Male','stavros.kat@gmail.com','1990-01-30','Netherlands',1,'2024-11-27 23:51:05'),(17,'Vicky','Tsakalou','Female','vicky.tsak@outlook.com','1989-09-09','UK',1,'2024-11-27 23:51:05'),(18,'Antonis','Makris','Male','antonis.mak@gmail.com','1993-03-22','Italy',2,'2024-11-27 23:51:05'),(19,'Ioanna','Spanou','Female','ioanna.span@gmail.com','1991-07-27','Greece',1,'2024-11-27 23:51:05'),(20,'Giorgos','Kostopoulos','Male','giorgos.kos@homefinder.com','1986-11-05','Sweden',2,'2024-11-27 23:51:05');
/*!40000 ALTER TABLE `tenant` ENABLE KEYS */;
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
