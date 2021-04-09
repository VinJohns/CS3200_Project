# CS3200_Project

Name of Project: Video Game Database

Team: Vincent Johnson

Description:
This project focuses on creating a database of different video games. The video games are connected to the players,
the platforms they appear on, and the company that developed the game. The users, or players, could access this 
database to get information on games they play or follow, similar to something like Steam. 
The sample data was taken from Wikipedia.

User Data Model:
Stored in the table called players, where players are simply people that play some video games that want to use the database.
the columns in this table are:
id - primary key
first_name - the first name of the user
last_name - the last name of the user
username - the username of the user
password - the password of the user
email - the email of the user
date_of_birth - the date of birth of the user

Domain Object Data Models:
One domain object data model is the table called developers, which stores the different developers of the video games.
It is only related to video games table through a one to many relationship, one developer per game, but a developer can have many games.
The columns in this table are:




Another domain object data model is the table called video_games, which stores the different video games.
It is related to the developers table in one to many relationship, one developer per game, but a developer can have many games.
It is also related to the platforms table in a many to many relationship, one game can have many platforms and one platform can have have many games.
Because of the many to many relationship, there is an extra table called connections that connects the primary keys of platforms and video_games.
It is also related to the players table in a many to many relationship, many people can play one game, and one person can play many games.
Because of the many to many relationship, there is an extra table called libraries that connects the primary keys of players and video_games.
The columns in this table are:



The last domain object model is the table called platforms, which stores the different platforms to play games on.
It is related to the video_games table in a many to many relationship, one game can have many platforms and one platform can have have many games.
Because of the many to many relationship, there is an extra table called libraries that connects the primary keys of players and video_games.
The columns in this table are:



The enumeration used in this database was the genre of the video game, which was split into six different genres:
action, adventure, roleplaying, simulation, strategy, and sports. This list was based off of Wikipedias list of video game genres.




