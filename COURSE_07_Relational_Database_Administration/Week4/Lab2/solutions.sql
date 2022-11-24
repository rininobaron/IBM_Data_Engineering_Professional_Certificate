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

--Task D: Creating a Shell Script for MySQL 
--Database Backups

--LINUX TERMINAL
sudo chmod u+x+r sqlbackup.sh

mkdir backups

--Task E: Setting Up a Cron Job

--Enable privileges to user in MYSQL

CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON *.* TO 'user'@'localhost';

--My mysql and linux version is  'mysql  Ver 8.0.31-0ubuntu0.20.04.1 for Linux on x86_64 ((Ubuntu))'
--that's why I copy and paste the following lines of code on my.cnf that is often located 
--on /etc/mysql/...
--[client]
--user = userName
--password = "MyPassword"

--If you have any error edit the sqlbackup.sh file adding --user=userNAme 
--on mysqldump statement
