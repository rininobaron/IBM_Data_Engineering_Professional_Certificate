-- Connect to PSQL cli
-- on linux
-- sudo -u [USER] psql

-- Connect to database
\c template1

-- Create table 'users'
create table users(username varchar(50),userid int,homedirectory varchar(100));

-- To exit psql cli
\q