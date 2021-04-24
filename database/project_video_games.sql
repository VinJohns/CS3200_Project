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
-- Table structure for table `video_games`
--

DROP TABLE IF EXISTS `video_games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_games` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `price` float DEFAULT NULL,
  `genre` varchar(20) DEFAULT NULL,
  `developer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `developers_to_games_idx` (`developer_id`),
  KEY `genre` (`genre`),
  CONSTRAINT `games_to_developers` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `video_games_ibfk_1` FOREIGN KEY (`genre`) REFERENCES `genres` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_games`
--

LOCK TABLES `video_games` WRITE;
/*!40000 ALTER TABLE `video_games` DISABLE KEYS */;
INSERT INTO `video_games` VALUES (1,'League of Legends','A MOBA','2009-10-27',0,'STRATEGY',1),(2,'Legends of Runeterra','A card game based off of League of Legends','2020-04-09',0,'STRATEGY',1),(3,'Valorant','A team shooter with abilities','2020-06-02',0,'ACTION',1),(4,'World of Warcraft','An MMORPG','2004-11-03',NULL,'ROLEPLAYING',2),(5,'Hearthstone','A card game based off of World of Warcraft','2014-03-11',0,'STRATEGY',2),(6,'Overwatch','A team shooter with abilities','2016-05-24',20,'ACTION',2),(7,'Elder Scrolls V','Single player game set in a snowy land with dragons','2011-11-11',20,'ROLEPLAYING',3),(8,'Fallout 4','Single player game set in a post nuclear war world','2015-11-10',30,'ROLEPLAYING',3),(9,'NBA 2K21','A game for basketball fans','2020-09-04',60,'SPORTS',4),(10,'Counter Strike Global Offensive','A team shooter','2012-08-21',NULL,'ACTION',5),(11,'Portal 2','Portal 2 is a puzzle platform game where you create portals to solve the puzzle','2011-04-19',10,'ACTION',5),(12,'FIFA 21','FIFA is a soccer game','2020-10-09',60,'SPORTS',6),(13,'Forza Horizon','Forza Horizon is a racing game','2012-10-12',NULL,'SPORTS',7),(14,'The Sims 4','The Sims is a game that simulates life','2014-09-02',NULL,'SIMULATION',8),(15,'Halo 4','First person shooter in a futuristic world','2012-11-06',NULL,'ACTION',9),(16,'Call of Duty: Black Ops IV','First person shooter','2018-10-12',NULL,'ACTION',10),(17,'The Witcher 3: Wild Hunt','Third person role playing game based on Slavonic mythology','2015-05-19',40,'ROLEPLAYING',11),(18,'Cyberpunk 2077','First person action role playing game','2020-12-10',60,'ROLEPLAYING',11),(19,'Goat Simulator','Control a goat and explore the world','2014-04-01',10,'SIMULATION',12),(20,'Sid Meier\'s Civilization VI','Build an empire from the stone age to the future','2016-10-21',60,'SIMULATION',13),(21,'Pokemon Sword and Shield','Catch pokemon and fight against other trainers','2019-11-15',NULL,'ROLEPLAYING',14),(22,'Borderlands 3','Action roleplaying, first person loot shooter','2019-09-13',60,'ROLEPLAYING',15),(23,'Rocket League','Play soccer, except you control a car to hit the ball','2015-07-07',NULL,'SPORTS',16),(24,'XCOM: Enemy Unknown','Turn based tactical game','2012-10-09',NULL,'STRATEGY',13),(25,'Zero Escape: 999','Visual novel where you solve puzzles','2009-12-10',NULL,'ADVENTURE',17),(26,'AI: The Somnium Files','A detective visual novel','2019-09-17',60,'ADVENTURE',17);
/*!40000 ALTER TABLE `video_games` ENABLE KEYS */;
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
