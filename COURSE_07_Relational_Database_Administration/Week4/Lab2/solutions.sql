--Exercise

--Task A: Create a Database

--9.- Create a new database sakila using 
--the command below in the terminal 
--and proceed to Task B:

CREATE DATABASE sakila;

--Task B: Restore the Structure and 
--Data of a Table

--1.- To use the newly created empty sakila 
--database, use the command below in 
--the terminal:

use sakila;

--2.- Restore the sakila mysql dump file 
--(containing the sakila database table 
--definitions and data) to the newly 
--created empty sakila database using 
--the command below in the terminal:

source sakila_mysql_dump.sql;

--3.- To check, list all the table names
--from the sakila database using the 
--command below in the terminal

SHOW FULL TABLES WHERE table_type = 'BASE TABLE';

--Task C: Understanding the Process 
--Involved in Creating MySQL Database 
--Backups