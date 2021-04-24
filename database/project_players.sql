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
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Nicholas','Jones','NicholasJones2','P@ssw0rd','NicholasJones2@gmail.com','1996-09-13'),(2,'Paul','Hughes','PaulHughes3','P@ssw0rd','PaulHughes3@gmail.com','1997-08-22'),(3,'Stephen','Barnes','StephenBarnes7','P@ssw0rd','StephenBarnes7@gmail.com','1986-06-23'),(4,'Craig','Williams','CraigWilliams7','P@ssw0rd','CraigWilliams7@gmail.com','2002-04-06'),(5,'Janet','Evans','JanetEvans2','P@ssw0rd','JanetEvans2@gmail.com','2001-09-15'),(6,'Sean','Flores','SeanFlores1','P@ssw0rd','SeanFlores1@gmail.com','1987-10-14'),(7,'Scott','Martinez','ScottMartinez7','P@ssw0rd','ScottMartinez7@gmail.com','2006-01-19'),(8,'Raymond','Russell','RaymondRussell8','P@ssw0rd','RaymondRussell8@gmail.com','1991-11-18'),(9,'Patricia','Price','PatriciaPrice0','P@ssw0rd','PatriciaPrice0@gmail.com','1994-03-25'),(10,'Howard','Mitchell','HowardMitchell0','P@ssw0rd','HowardMitchell0@gmail.com','1987-01-16'),(11,'Louise','Morgan','LouiseMorgan2','P@ssw0rd','LouiseMorgan2@gmail.com','1986-05-05'),(12,'Stephanie','Peterson','StephaniePeterson5','P@ssw0rd','StephaniePeterson5@gmail.com','1988-05-05'),(13,'Paula','Long','PaulaLong8','P@ssw0rd','PaulaLong8@gmail.com','1997-11-06'),(14,'Katherine','Wilson','KatherineWilson1','P@ssw0rd','KatherineWilson1@gmail.com','2007-02-02'),(15,'Bobby','Anderson','BobbyAnderson6','P@ssw0rd','BobbyAnderson6@gmail.com','1988-03-12'),(16,'Emily','Richardson','EmilyRichardson8','P@ssw0rd','EmilyRichardson8@gmail.com','2001-10-05'),(17,'Todd','Lopez','ToddLopez2','P@ssw0rd','ToddLopez2@gmail.com','1985-02-06'),(18,'Ruby','Phillips','RubyPhillips4','P@ssw0rd','RubyPhillips4@gmail.com','2004-07-17'),(19,'Janice','Clark','JaniceClark8','P@ssw0rd','JaniceClark8@gmail.com','1983-09-11'),(20,'Christine','Roberts','ChristineRoberts4','P@ssw0rd','ChristineRoberts4@gmail.com','1992-08-07'),(21,'Pamela','Wood','PamelaWood4','P@ssw0rd','PamelaWood4@gmail.com','1997-03-17'),(22,'Anne','Harris','AnneHarris0','P@ssw0rd','AnneHarris0@gmail.com','1990-07-25'),(23,'Kathleen','Lee','KathleenLee2','P@ssw0rd','KathleenLee2@gmail.com','1993-06-08'),(24,'Gary','Bennett','GaryBennett5','P@ssw0rd','GaryBennett5@gmail.com','1984-10-02'),(25,'Joyce','Williams','JoyceWilliams2','P@ssw0rd','JoyceWilliams2@gmail.com','1993-07-17'),(26,'Ashley','Gonzales','AshleyGonzales1','P@ssw0rd','AshleyGonzales1@gmail.com','1998-10-06'),(27,'Nicole','Ward','NicoleWard7','P@ssw0rd','NicoleWard7@gmail.com','1996-03-18'),(28,'Diana','Smith','DianaSmith0','P@ssw0rd','DianaSmith0@gmail.com','1996-07-13'),(29,'Victor','Perez','VictorPerez5','P@ssw0rd','VictorPerez5@gmail.com','2009-02-19'),(30,'Walter','Ross','WalterRoss5','P@ssw0rd','WalterRoss5@gmail.com','1993-07-18'),(31,'Rachel','Johnson','RachelJohnson0','P@ssw0rd','RachelJohnson0@gmail.com','2006-05-09'),(32,'Jonathan','Hall','JonathanHall3','P@ssw0rd','JonathanHall3@gmail.com','2001-03-03');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-22 19:24:37
