--Exercise 1: Set Up Your Database in PostgreSQL

--Task B: Download and Create the Database

--4.- In the PostgreSQL CLI, enter the command to restore 
--the data you downloaded into a new database called demo.

\i flights_RUSSIA_small.sql

--5.- Verify that the database was properly created by entering 
--the following command:

\dt

--Exercise 2: Enable Error Logging and Observe Logs

--Task A: Enable Server Logging

--On the directory where postgresql.conf is located.

--Check server status (LINUX TERMINAL)
sudo systemctl status postgresql.service

--Stop and restart psql server (LINUX TERMINAL)
sudo systemctl restart postgresql.service

--Check server status again (LINUX TERMINAL)
--The server running time must be changed
sudo systemctl status postgresql.service

--7.- Confirm that the configuration parameter was successfully 
--changed and loaded into the PostgreSQL instance by entering 
--the following command into the CLI:

SHOW logging_collector;

--Task B: View the Server Logs

--1.- To find where the system logs are stored, enter the following 
--command into the CLI:
SHOW log_directory;

--6.-Try it yourself: Stop the PostgreSQL server and close all terminal tabs.

--Check server status (LINUX TERMINAL)
sudo systemctl status postgresql.service

--Stop and restart psql server (LINUX TERMINAL)
sudo systemctl restart postgresql.service

--Check server status again (LINUX TERMINAL)
--The server running time must be changed
sudo systemctl status postgresql.service

--Exercise 3: Test the Performance of the PostgreSQL Server

--Task A: Preparation for the Exercise

--After switch the file postgres.conf

--Check server status (LINUX TERMINAL)
sudo systemctl status postgresql.service

--Stop and restart psql server (LINUX TERMINAL)
sudo systemctl restart postgresql.service

--Check server status again (LINUX TERMINAL)
--The server running time must be changed
sudo systemctl status postgresql.service

--Task B: Test the Performance of the Server

--2.- Try it yourself: Use the CLI to connect to the demo database.
\connect demo

--3.- To inspect how long each query or command takes, 
--enable the timer with the following command in the CLI:
\timing

