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
-- Table structure for table `developers`
--

DROP TABLE IF EXISTS `developers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `headquarters_location` varchar(45) DEFAULT NULL,
  `founded` date DEFAULT NULL,
  `number_of_employees` int DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `website` (`website`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developers`
--

LOCK TABLES `developers` WRITE;
/*!40000 ALTER TABLE `developers` DISABLE KEYS */;
INSERT INTO `developers` VALUES (1,'Riot Games','Los Angeles, CA, U.S.','2006-09-01',2500,'riotgames.com'),(2,'Blizzard Entertainment','Irvine, CA, U.S.','1991-02-01',4700,'blizzard.com'),(3,'Bethesda Game Studios','Rockville, MD, U.S.','2001-01-01',420,'bethesdagamestudios.com'),(4,'Visual Concepts','Novato, CA, U.S.','1988-01-01',350,'vcentertainment.com'),(5,'Valve','Bellevue, WA, U.S.','1996-08-24',360,'valvesoftware.com'),(6,'Electronic Arts','Redwood City, CA','1982-05-27',9800,'ea.com'),(7,'Playground Games Limited','Leamington Spa, U.K.','2010-01-01',200,'playground-games.com'),(8,'Maxis','Redwood Shores, CA, U.S.','1987-01-01',NULL,'ea.com/studios/maxis'),(9,'343 Industries','Redmond, WA, U.S.','2007-01-01',750,'343industries.com'),(10,'Treyarch','Santa Monica, CA, U.S.','1996-01-01',626,'treyarch.com'),(11,'CD Projekt Red','Warsaw, Poland','1994-05-01',1111,'cdprojekt.com'),(12,'Coffee Stain Studios','Skovde, Sweden','2010-01-01',25,'coffeestainstudious.com'),(13,'Firaxis Games','Sparks, MD, U.S.','1996-05-01',180,'firaxis.com'),(14,'Game Freak Co., Ltd.','Tokyo, Japan','1989-04-26',143,'gamefreak.co.jp'),(15,'Gearbox Software, L.L.C.','Frisco, TX, U.S.','1999-02-16',550,'gearboxsoftware.com'),(16,'Psyonix LLC','San Diego, CA, U.S.','2000-01-01',NULL,'psyonix.com'),(17,'Spike Chunsoft','Tokyo, Japan','1984-04-09',200,'spike-chunsoft.co.jp');
/*!40000 ALTER TABLE `developers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-22 19:24:38
