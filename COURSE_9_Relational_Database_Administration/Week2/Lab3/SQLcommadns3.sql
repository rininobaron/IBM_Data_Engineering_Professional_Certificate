--CREATE DATABASE
CREATE DATABASE world;

--Switch database
USE world;

--Create database world form sql file
SOURCE world_mysql_script.sql;

--Show tables
SHOW TABLES;

--Retrieve all records (rows) from Canada in countrylanguages table
SELECT * FROM countrylanguage WHERE countrycode = 'CAN'

--	insert new records to table 'wordl' loaded from world_mysql_update_A.sql file
SOURCE world_mysql_update_A.sql;

--Query the table in order to verify-
SELECT * FROM world;

