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
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `apartment_id` int NOT NULL,
  `tenant_id` int NOT NULL,
  `review_date` date NOT NULL,
  `stars` int NOT NULL,
  `review_text` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`),
  KEY `apartment_id` (`apartment_id`),
  KEY `tenant_id` (`tenant_id`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`apartment_id`) REFERENCES `apartment` (`apartment_id`) ON DELETE CASCADE,
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`tenant_id`) REFERENCES `tenant` (`tenant_id`) ON DELETE CASCADE,
  CONSTRAINT `review_chk_1` CHECK ((`stars` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,1,'2024-07-16',5,'Comfortable apartment in a great location.','2024-11-27 23:35:43'),(2,2,2,'2024-06-02',4,'Good apartment but a bit old.','2024-11-27 23:35:43'),(3,3,3,'2024-09-11',5,'Ideal for a family, clean and quiet.','2024-11-27 23:35:43'),(4,4,4,'2024-08-02',3,'Noisy neighborhood, but great view.','2024-11-27 23:35:43'),(5,5,5,'2024-05-21',4,'Affordable and decent for the price.','2024-11-27 23:35:43'),(6,6,6,'2024-04-06',5,'Very clean and well-equipped.','2024-11-27 23:35:43'),(7,7,7,'2024-06-11',4,'Good apartment but needs minor repairs.','2024-11-27 23:35:43'),(8,8,8,'2024-06-16',5,'Perfect for holidays, excellent location.','2024-11-27 23:35:43'),(9,9,9,'2024-07-02',5,'Fantastic lakeside apartment, peaceful.','2024-11-27 23:35:43'),(10,10,10,'2024-09-16',4,'Lovely space with a homely feel.','2024-11-27 23:35:43'),(11,11,11,'2024-07-21',5,'Modern and spacious, highly recommended.','2024-11-27 23:55:10'),(12,12,12,'2024-08-06',4,'Convenient location, but could use better lighting.','2024-11-27 23:55:10'),(13,13,13,'2024-09-02',5,'Excellent apartment, perfect for long stays.','2024-11-27 23:55:10'),(14,14,14,'2024-10-11',3,'Too much street noise, but nice interior.','2024-11-27 23:55:10'),(15,15,15,'2024-06-02',4,'Cozy and affordable, great value.','2024-11-27 23:55:10'),(16,16,16,'2024-05-16',5,'Very clean, fully equipped, and comfortable.','2024-11-27 23:55:10'),(17,17,17,'2024-08-26',4,'Decent apartment, minor maintenance needed.','2024-11-27 23:55:10'),(18,18,18,'2024-09-13',5,'Bright and airy, excellent for a summer stay.','2024-11-27 23:55:10'),(19,19,19,'2024-07-31',5,'Peaceful area, great for relaxation.','2024-11-27 23:55:10'),(20,20,20,'2024-08-21',4,'Lovely space, but parking can be an issue.','2024-11-27 23:55:10'),(21,11,12,'2024-07-25',5,'Great apartment with modern amenities.','2024-11-27 23:55:10'),(22,12,13,'2024-08-10',4,'Comfortable, but the Wi-Fi was slow.','2024-11-27 23:55:10');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
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
