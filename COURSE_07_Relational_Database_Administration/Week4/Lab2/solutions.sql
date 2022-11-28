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

--My mysql and linux version is  'mysql  
--Ver 8.0.31-0ubuntu0.20.04.1 for Linux on x86_64 ((Ubuntu))'
--that's why I copy and paste the following lines of code
--on /etc/mysql/my.cnf
--[client]
--user = userName
--password = "MyPassword"

--If you have any error edit the sqlbackup.sh file adding 
----user=userNAme on mysqldump statement

--Practice Exercise

--1.- Change the crontab schedule to create a backup every week 
--on Monday at 12:00 a.m.

0 0 * * 1 /home/project/sqlbackup.sh > /home/project/backup.log

--Change the crontab schedule to create a backup every day 
--at 6:00 a.m. 

0 6 * * * /home/project/sqlbackup.sh > /home/project/backup.log

--Task F: Truncate the Tables in the Database

-- 1.- Create a new file named truncate.sh under home/project.


--2.-Copy this script and paste it in the new file.


--3.-Change the permission of the file by running the following command:

sudo chmod u+x+r truncate.sh

--4.-Execute the script to truncate the tables.

--5.-To check whether the tables in the database are truncated, 
--log in to the database with the credentials.

mysql

--6.- Switch to the sakila database.

use sakila;

--7.- Check all the tables in the database.
SHOW TABLES;

--8.- Retrieve all the rows from staff table. 
--If the truncate was successful, 
--the output should be an Empty set.

SELECT * FROM staff;

--9.- Quit the mysql prompt.


--Task G: Restore the Database

--1.- In the terminal window, run the following command 
--to find the list of backup files that have been created
ls -l backups

--2.- Select the file that you want to restore the data from 
--and copy the file name.

--3.- Unzip the file and extract the SQL file from the backup file.
unzip all-database-27-11-2022_04-48-01.gz

--4.- Populate and restore the database with the sqlfile that results 
--from the unzip operation.
mysql sakila < all-database-27-11-2022_04-48-01

--Check the table


--Practice Exercise

--1.- Create a shell script which takes the database name and back up 
--directory as parameters and backsup the database as <dbname>_
--timestamp.sql in the backup directory. If the database 
--doesn't exist, it should display appropriate message. 
--If the backup dir doesn't exist, it should create one.

dbname=$(mysql -e "SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = '$1'" | grep $1)

if [ ! -d $2 ]; then 
    mkdir $2
fi

if [ $1 == $dbname ]; then
    sqlfile=$2/$1-$(date +%d-%m-%Y).sql
    if mysqldump  $1 > $sqlfile ; then
    echo 'Sql dump created'
    else
        echo 'Error creating backup!'
    fi
else
    echo "Database doesn't exist"
fi

--Linux command

./answer1 employees backups 

--2.- Write a shell script which takes the database name and 
--the script file as parameters and restores the database 
--from the sql file.

sqlfile=backups/$2

if [ -f $sqlfile ]; then 

    dbname=$(mysql -e "SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = '$1'" | grep $1)
    
    if test -z "$dbname"; then
        dbname='_'
    fi

    if [ $1 != $dbname ]; then
        echo "Created DB as it didn't exist"
        mysql -e "CREATE DATABASE $1"
    fi

    if mysql $1 < $sqlfile ; then
        echo 'Successful restoring database'
    else
        echo 'Error restoring database!'
    fi
else
    echo "File doesn't exist"
fi

--Linux commands

chmod u+x answer2.sh

./answer2.sh employees 'employees-28-11-2022.sql'