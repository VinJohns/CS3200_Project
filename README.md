# CS3200_Project

**Name of Project:** Video Game Database

**Team:** Vincent Johnson

**Description:**
This project focuses on creating a database of different video games in MySQL. The video games are connected to the players, the platforms they appear on, and the company that developed the game. The users, or players, could access this database to get information on games they play or follow, similar to something like Steam. 
The sample data was taken from Wikipedia. The tables of the database are stored in the [Database](Database) folder and the MySQL code to create the tables is [Creating_Database.sql](Creating_Database.sql)

[UML Diagram](UML_Diagram.pdf)


**User Data Model:**
Stored in the table called players, where players are simply people that play some video games that want to use the database.
The columns in this table are:\
id - primary key (int)\
first_name - the first name of the user (string)\
last_name - the last name of the user (string)\
username - the username of the user (string)\
password - the password of the user (string)\
email - the email of the user (string)\
date_of_birth - the date of birth of the user (date)

**Domain Object Data Models:**
One domain object data model is the table called developers, which stores the different developers of the video games.
The columns in this table are:\
id - primary key (int)\
name - the name of the developer company (string)\
headquarters_location - the location of the headquarters of the company (string)\
founded - the date the company was founded (date)\
number_of_employees - the number of employees in the company (int)\
website - the url of the website of the developer (string)

Another domain object data model is the table called video_games, which stores the different video games.
The columns in this table are:\
id - primary key (int)\
name - the name of the video game (string)\
description - a short description of the game (string)\
release_date - the date the game was first released on any platform (date)\
price - the price of the game (float)\
genre - the genre the game fits into, or at least the one that fits best (genre enumeration)\
developer_id - the foreign key referencing developers table (int)

The last domain object model is the table called platforms, which stores the different platforms to play games on.
The columns in this table are:\
id - primary key (int)\
name - the name of the platform (string)

**User to Domain object relationship:**
The table video_games is related to the players table in a many to many relationship, many people can play one game, and one person can play many games.
Because of the many to many relationship, there is an extra table called libraries that connects the primary keys of players and video_games. If a player is deleted, the related records in the libraries table will also be deleted. Similarly, if a video game is deleted, the related records in the libraries table will be deleted.

**Domain object to domain object relationships:**
The developers table is related to the video_games table through a one to many relationship, a game has one developer, but a developer can have many games. If a developer is deleted, the related video games shouldn't be deleted. There might be games with multiple developers, but it isn't considered as part of this database, just the main developer would be used.
The platforms table is related to the video_games table in a many to many relationship, one game can have many platforms and one platform can have have many games.
Because of the many to many relationship, there is an extra table called connections that connects the primary keys of players and video_games. If a platform is deleted, the related records in the connections table will also be deleted. Similarly, if a video game is deleted, the related records in the connections table will be deleted.

**Enumeration:**
The enumeration used in this database was the genre of the video game, which was split into six different genres:
action, adventure, roleplaying, simulation, strategy, and sports. This list was based off of Wikipedias list of video game genres.

**User Interface:**
I used Django and Python for my user interface and it was my first time using it, so there might be extra files because I didn't want to get rid of something I shouldn't have on accident.\
To start the http API, run the command "python manage.py runserver", this defaults to localhost 8000 and can be changed, e.g. "python manage.py runserver 8080".\
To read the records in a table, you can use the buttons or type the url, e.g. to go to homepage: http://localhost:8000/project/, to go to all records of a table [developers, videogames, platforms, players]: http://localhost:8000/project/developers/, to go to a single record of a table: http://localhost:8000/project/developers/1/ \
The page that displays a single record allows you to create, update, or delete a record. The buttons on the editor page include one to go back to all records of current table, go to the create record page, delete a record, reset the input fields to what was initially there (only what was there before refreshing page), and saving a record, which will create a new record if on the create page, otherwise will update a record.





