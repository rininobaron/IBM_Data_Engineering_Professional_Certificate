--ENTER TO MYSQL SHELL
-- in linux bash
mysql -u root -p

--in mysql shell
--CREATE DATABASE called world
CREATE DATABASE world;

--CHANGE TO DATABASE world
USE world;

--Create tables in database world
SOURCE world_mysql_script.sql;

--Display the tables in database world
SHOW TABLES;