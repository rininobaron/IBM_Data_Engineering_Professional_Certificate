#! /usr/bin/env sh

# Exercise 5 - Create the schema on the data warehouse

echo "Step 1: Start the postgres sql server"
# In IBM skills network
# Start_postgres
sleep 2

echo "Step 2: Create the database on the data warehouse."
createdb -h localhost -U postgres -p 5432 billingDW
sleep 2

echo "Step 3: Download the schema .sql file."
FILE="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/Working%20with%20Facts%20and%20Dimension%20Tables/star-schema.sql"
wget $FILE
sleep 2

echo "Step 4: Create the schema"
psql -h localhost -U postgres -p 5432 billingDW < star-schema.sql
sleep 2