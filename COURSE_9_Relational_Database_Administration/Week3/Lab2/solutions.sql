--Exercise 1: Create Your Database

--4. In the Terminal, create a new database called world.
--EXTRA 
SHOW DATABASES
--ANSWER
CREATE DATABASE world;
--EXTRA
SHOW DATABASES;

--5. Now, we'll want to use the newly created database, world. How can we go about doing that?
USE world;

--6. In order to complete the database creation process, we'll want to execute the MySQL 
--script containing the data that we downloaded. This file will create tables and insert 
--data into those tables.
SOURCE world_mysql_script.sql;

--7. With our database created, we'll want to take a look at the tables inside it to get 
--a general idea of the data we have. What tables do we have?
SHOW TABLES;