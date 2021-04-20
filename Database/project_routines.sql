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
-- Dumping routines for database 'project'
--
/*!50003 DROP PROCEDURE IF EXISTS `create_players` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_players`(first_name VARCHAR(45), last_name VARCHAR(45))
BEGIN
 DECLARE i INT DEFAULT 0;
 DECLARE username VARCHAR(45);
 DECLARE `password` VARCHAR(45);
 DECLARE date_of_birth DATE;
 DECLARE email VARCHAR(45);
 DECLARE num_games INT;
 DECLARE num_game INT;
 DECLARE rand_num INT;
 
 -- set player fields
 SET username = CONCAT(first_name, last_name, FLOOR(RAND()*9));
 SET `password` = 'P@ssw0rd';
 SET date_of_birth = CONCAT(FLOOR(RAND()*30 + 1980), '-', FLOOR(RAND()*11 + 1), '-', FLOOR(RAND()*27 + 1));
 SET email = CONCAT(username, '@gmail.com');
  
 -- insert into players table
 INSERT INTO players (`first_name`, `last_name`, `username`, `password`, `date_of_birth`, `email`)
 VALUES (first_name, last_name, username, `password`, date_of_birth, email);
  
  
 -- set the values for the libraries table, each player has random number of games
 SET num_games = RAND()*3 + 2;
 
 WHILE i < num_games + 1 DO
  SET i = i + 1;
  SET num_game = NULL;
  
  -- make sure the same game is not added twice
  WHILE num_game IS NULL DO
   SET rand_num = RAND()*25 + 1;
   SET num_game = IF(rand_num NOT IN (SELECT game_id FROM libraries WHERE libraries.player_id = (SELECT `id` FROM players WHERE players.username = username)), rand_num, NULL);
  END WHILE;

  -- add the game to a players library
  INSERT INTO libraries (`player_id`, `game_id`)
  VALUES ((SELECT `id` FROM players WHERE players.username = username), num_game);

 END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-19 15:09:04
