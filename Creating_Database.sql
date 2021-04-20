-- make a table for the users, which is equivalent to the players
CREATE TABLE project.players (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `username` VARCHAR(45) NULL UNIQUE,
  `password` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL UNIQUE,
  `date_of_birth` DATE NULL,
  PRIMARY KEY (`id`)
);

-- make a table for the developers of the games
CREATE TABLE project.developers (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `headquarters_location` VARCHAR(45) NULL,
  `founded` DATE NULL,
  `number_of_employees` INT NULL,
  `website` VARCHAR(45) NULL UNIQUE,
  PRIMARY KEY (`id`)
);

-- create portable enumeration for genres
CREATE TABLE project.genres (
  `name` VARCHAR(20) UNIQUE,
  PRIMARY KEY (`name`)
);

INSERT INTO project.genres VALUES ('ACTION');
INSERT INTO project.genres VALUES ('ADVENTURE');
INSERT INTO project.genres VALUES ('ROLEPLAYING');
INSERT INTO project.genres VALUES ('SIMULATION');
INSERT INTO project.genres VALUES ('STRATEGY');
INSERT INTO project.genres VALUES ('SPORTS');


-- make a table for the differnt video games
CREATE TABLE project.video_games (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(200) NULL,
  `release_date` DATE NULL,
  `price` FLOAT NULL,
  `genre` VARCHAR(20) DEFAULT NULL,
  `developer_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `developers_to_games_idx` (`developer_id` ASC),
  FOREIGN KEY (`genre`) REFERENCES project.genres (`name`),
  CONSTRAINT `games_to_developers`
   FOREIGN KEY (`developer_id`)
   REFERENCES project.developers (`id`)
   ON UPDATE CASCADE
  );
  
  -- make a table connecting the players to the games they play
  CREATE TABLE project.libraries (
  `id` INT NOT NULL AUTO_INCREMENT,
  `player_id` INT NULL,
  `game_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `libraries_to_players_idx` (`player_id` ASC),
  INDEX `libraries_to_games_idx` (`game_id` ASC),
  CONSTRAINT `libraries_to_players`
   FOREIGN KEY (`player_id`)
   REFERENCES project.players (`id`)
   ON DELETE CASCADE
   ON UPDATE CASCADE,
  CONSTRAINT `libraries_to_games`
   FOREIGN KEY (`game_id`)
   REFERENCES project.video_games (`id`)
   ON DELETE CASCADE
   ON UPDATE CASCADE
);

-- make a table on some of the platforms you can play games on 
CREATE TABLE project.platforms (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`)
);

-- make a table connecting the games to the platforms they are on
CREATE TABLE project.connections (
  `id` INT NOT NULL AUTO_INCREMENT,
  `game_id` INT NULL,
  `platform_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `connections_to_games_idx` (`game_id` ASC),
  CONSTRAINT `connection_to_games`
   FOREIGN KEY (`game_id`)
   REFERENCES project.video_games (`id`)
   ON DELETE CASCADE
   ON UPDATE CASCADE,
  CONSTRAINT `connection_to_platforms`
   FOREIGN KEY (`platform_id`)
   REFERENCES project.platforms (`id`)
   ON DELETE CASCADE
   ON UPDATE CASCADE
);

-- example of inserting into platforms table
INSERT INTO project.platforms (`name`)
VALUES ('iOS');

-- example of inserting into developers table
INSERT INTO project.developers (`name`, `headquarters_city`, `founded`, `website`)
VALUES ('Valve', 'Bellevue, WA', '1996-8-24', 'valvesoftware.com');

-- example of inserting into video_games table
INSERT INTO project.video_games (`name`, `description`, `release_date`, `genre`, `developer`)
VALUES ('Portal 2', 'Portal 2 is a puzzle platform game where you create portals to solve the puzzle', '2011-4-19', 'action', 5);

-- example of inserting into connections table
INSERT INTO project.connections (`game_id`, `platform_id`)
VALUES (26, 5);

-- add a player with randomized values to players table, given a unique first and last name
-- also selects random games to add to their library
-- used a random name generator to input names to the procedure
CALL create_players('Jonathan', 'Hall');
