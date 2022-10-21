--posql

--Exercise 1: Create Your Database

--Task B: Create Your Database

--4. ow, you want to import the data from the file that you downloaded.
\i flights_RUSSIA_small.sql

--5. With our created database, let's see what tables you have. How many tables are there?
\dt

--Exercise 2: Monitor Your Database

--Task A: Monitor Current Activity

--Server activity
SELECT pid, usename, datname, state, state_change FROM pg_stat_activity;

--2. Let's say you wanted to see all the aforementioned columns, in addition to the actual 
--text of the query that was last executed. Which column should you add to review that?
SELECT pid, usename, datname, state, state_change, query FROM pg_stat_activity;

--3. With queries, you can apply filtering. What if you only wanted to see the states 
--that were active? How would you do that?
SELECT pid, usename, datname, state, state_change, query FROM pg_stat_activity WHERE state = 'active';

--Task B: Monitor Performance Over Time

--1. To enable the extension, enter the following command:
CREATE EXTENSION pg_stat_statements;

--2. Now, let's edit the PostgreSQL configuration file to include the extension you just added:
ALTER SYSTEM SET shared_preload_libraries = 'pg_stat_statements';

--3. Once your session has started, open the PostgreSQL CLI.
\connect demo

--6. Let's say you wanted to retrieve the database ID, the query, and total time that it took 
--to execute the statement (in milliseconds).
--EXTRA IN rder to describe the table
\d+ pg_stat_statements
--ANSWER--
SELECT userid, total_time FROM pg_stat_statements;

--7. What if you wanted to check which datbase name matches the database ID?
SELECT oid, datname FROM pg_database WHERE oid = datname;

--Task C: Monitor with pgAdmin

--EXTRA
--cONNECY PGADMIN TO PSQL

--GET CURRENT SERVER IN PSQL
SELECT current_database();

--GET CURRENT USER IN PSQL
SELECT CURRENT_USER;

--GET CURRENT PORT IN PSQL
SELECT setting
FROM pg_settings
WHERE name = 'port';

--PUT PREVIOUS RESPONSEs IN A NEW SERVER IN PGADMIN


--Exercise 3: Optimize Your Database

--Task A: Optimize Data Types

--1. If you're no longer conected to the demo database, you can reconnect to it!
\connect demo

--3. Now that you know which tables are in the database, select the first one, 
--aircrafts_data and see what data you can pull from it. How can you select all 
--of its data?
SELECT * FROM aircrafts_data;

--4. For the purposes of this lab, we'll create a hypothetical situation that will 
--potentially require changing the data types of columns to optimize them.
--Let's say that aircraft_code is always set to three characters, model will always be 
--in a JSON format and range has a maximum value of 12,000 and minimum value of 1,000.
--In this case, what would be the best data types for each column?
--ANSWER: 
--aircraft_code: CHAR(3)
--model: JSON
--range: SMALLINT

--8. Now, let's check the table's columns and data types again!
\d aircrafts_data;

--What if you wanted to check the table (by name), the estimated number of 
--dead rows that it has, the last time it was autovacuumed, and how many times 
--it has been autovacuumed?
SELECT relname, n_dead_tup, last_autoanalyze, autovacuum_count FROM pg_stat_all_tables;
--