#! /usr/bin/env sh

# Practice exercise - Create the schema on the data warehouse

echo "Step 1: Start the postgres sql server"
# In IBM skills network
# Start_postgres
sleep 2

DATABASE="storesDW"

echo "Step 2: Create the database on the data warehouse."
createdb -h localhost -U postgres -p 5432 $DATABASE
sleep 2

FILE="star-schema-final.sql"

echo "Step 4: Create the schema"
psql -h localhost -U postgres -p 5432 $DATABASE < $FILE
sleep 2