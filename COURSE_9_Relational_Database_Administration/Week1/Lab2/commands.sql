--ENTER TO MYSQL SHELL
-- in linux bash
mysql -u root -p

--Exercise 1: Create your database

--in mysql shell
--CREATE DATABASE called world
CREATE DATABASE world;

--CHANGE TO DATABASE world
USE world;

--Create tables in database world
SOURCE world_mysql_script.sql;

--Display the tables in database world
SHOW TABLES;

--Exercise 2: Manage MySQL Storage Engines

--View engines in mysql
SHOW ENGINES;

--Create a new table with csv engine
CREATE TABLE csv_test (i INT NOT NULL, c CHAR(10) NOT NULL) ENGINE = CSV;

--confirm
SHOW TABLES;

--Add ome examples
INSERT INTO csv_test VALUES(1,'data one'),(2,'data two'),(2,'data three');

--Show the content in csv_test table
SELECT * FROM csv_test;

--Exercise 3: Navigate the MySQL System Tables
--Grant System Table Category
SHOW DATABASES;

--change to mysql database
USE mysql;

--view tables
SHOW TABLES;

--view the User column in user table
SELECT User FROM user;

--create new user
CREATE USER test_user;

--Exercise 4: Try it Yourself!

--PROBLEM 1
USE world;

--PROBLEM 2
CREATE TABLE MyISAM_test (i INT NOT NULL, c CHAR(10) NOT NULL) ENGINE = MYISAM;

--PROBLEM 3
USE information_schema;

--PROBLEM 4
SELECT table_name, engine FROM information_schema.TABLES WHERE table_schema = 'world';