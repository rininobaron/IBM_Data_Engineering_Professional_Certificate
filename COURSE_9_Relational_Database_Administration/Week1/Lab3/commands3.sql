'''
queries to change table name
'''

--Exercise 1: Configure Your PostgreSQL Server 
--Instance
--3.- Try it yourself: Use the CLI to check the current setting of wal_level.
SHOW wal_level;

--Exercise 2: Navigate the System Catalog

--3.- Try it yourself: Use the CLI to query the 
--tables to display metadata about the tables 
--belonging to the bookings schema and confirm 
--that the row security for the boarding_passes 
--was successfully enabled.
SELECT * FROM pg_tables WHERE schemaname = 'bookings'

--Exercise 3: Try it yourself!

--1.- Try it yourself: First, try changing the 
--name of the table by directly editing the 
--pg_tables table from the system catalogs.
UPDATE pg_tables SET tablename = 'aircraft_fleet' WHERE tablename = 'aircrafts_data';
--This produce an error because a view
--cannot be edit diractly

--2.- To properly change the name of the 
--aircrafts_data, enter the following command 
--in the CLI:
ALTER TABLE aircrafts_data RENAME TO aircraft_fleet;

--was successfully renamed, query pg_tables from
--the system catalog by schemaname 'bookings' to 
--display the tablename column.
SELECT * FROM pg_tables WHERE schemaname = 'bookings';