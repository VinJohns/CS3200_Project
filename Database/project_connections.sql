-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: project
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `connections`
--

DROP TABLE IF EXISTS `connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `connections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `game_id` int DEFAULT NULL,
  `platform_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `connections_to_games_idx` (`game_id`),
  KEY `connection_to_platforms` (`platform_id`),
  CONSTRAINT `connection_to_games` FOREIGN KEY (`game_id`) REFERENCES `video_games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `connection_to_platforms` FOREIGN KEY (`platform_id`) REFERENCES `platforms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connections`
--

LOCK TABLES `connections` WRITE;
/*!40000 ALTER TABLE `connections` DISABLE KEYS */;
INSERT INTO `connections` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,7),(5,2,8),(6,3,1),(7,4,1),(8,4,2),(9,5,1),(10,5,2),(11,5,7),(12,5,8),(13,6,1),(14,6,3),(15,6,4),(16,6,5),(17,7,1),(18,7,3),(19,7,4),(20,7,5),(21,8,1),(22,8,3),(23,8,4),(24,9,1),(25,9,3),(26,9,4),(27,9,5),(28,9,6),(29,10,1),(30,10,2),(31,10,3),(32,10,4),(33,11,1),(34,11,2),(35,11,3),(36,11,4),(37,12,1),(38,12,3),(39,12,4),(40,12,5),(41,12,6),(42,13,3),(43,14,1),(44,14,2),(45,14,3),(46,14,4),(47,15,1),(48,15,3),(49,16,1),(50,16,3),(51,16,4),(52,17,1),(53,17,3),(54,17,4),(55,17,5),(56,18,1),(57,18,3),(58,18,4),(59,18,6),(60,19,1),(61,19,3),(62,19,4),(63,19,5),(64,19,7),(65,19,8),(66,20,1),(67,20,2),(68,20,3),(69,20,4),(70,20,5),(71,20,7),(72,20,8),(73,21,5),(74,22,1),(75,22,2),(76,22,3),(77,22,4),(78,22,6),(79,23,1),(80,23,2),(81,23,3),(82,23,4),(83,23,5),(84,24,1),(85,24,3),(86,24,4),(87,24,7),(88,24,8),(89,25,1),(90,25,4),(91,25,8),(92,26,1),(93,26,4),(94,26,5);
/*!40000 ALTER TABLE `connections` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-19 15:09:03
