--CREATE DATABASE
CREATE DATABASE world;

--Switch database
USE world;

--Create database world form sql file
SOURCE world_mysql_script.sql;

--Show tables
SHOW TABLES;

--Retrieve all records (rows) from Canada in countrylanguages table
SELECT * FROM countrylanguage WHERE countrycode = 'CAN';

--	insert new records into 'country' and 'contrylanguage' tables loaded from world_mysql_update_A.sql file
SOURCE world_mysql_update_A.sql;

--Query the table in order to verify-
SELECT * FROM country;

--Make backup
mysqldump --host=127.0.0.1 --port=3306 --user=root --password world countrylanguage > world_countrylanguage_mysql_backup.sql

--View content files
cat world_countrylanguage_mysql_backup.sql

--Drop table world.countrylanguage
mysql --host=127.0.0.1 --port=3306 --user=root --password --execute="DROP TABLE world.countrylanguage;"

--Verify
mysql --host=127.0.0.1 --port=3306 --user=root --password --execute="SHOW TABLES FROM world;"

--Restore table previous deleted
mysql --host=127.0.0.1 --port=3306 --user=root --password world < world_countrylanguage_mysql_backup.sql

--Again retriev all the Canada countries
mysql --host=127.0.0.1 --port=3306 --user=root --password --execute="SELECT * FROM world.countrylanguage WHERE CountryCode = 'CAN' LIMIT 7;"

