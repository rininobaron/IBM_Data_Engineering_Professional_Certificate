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

--Example Exercise B

--Download file

--Create logical backup of full world database
mysqldump --host=127.0.0.1 --port=3306 --user=root --password --flush-logs --delete-master-logs  --databases world > world_mysql_full_backup.sql

--Insert new records in table 'city'
source world_mysql_update_B.sql;

--New Query
SELECT * FROM city WHERE countrycode='CAN';

--Practice Exercise 1
--Perform logical backup of the table ciyt from the database world.
CREATE DATABASE world_P1;

USE world_P1;

SOURCE world_mysql_script.sql;

SELECT * FROM city WHERE CountryCode = 'BGD';

--Logicak backup
mysqldump --host=127.0.0.1 --port=3306 --user=root --password --flush-logs --delete-master-logs  --databases world_P1 > world_P1_mysql_full_backup.sql

--Drop
mysql --host=127.0.0.1 --port=3306 --user=root --password --execute="DROP TABLE world_P1.city;"

mysql --host=127.0.0.1 --port=3306 --user=root --password --execute="SELECT * FROM world_P1.city;"

mysql --host=127.0.0.1 --port=3306 --user=root --password world_P1 < world_P1_city_mysql_backup.sql
