#! /usr/bin/env bash


echo "Problem 1"
echo "Create a database named practice."
echo ""
sleep 2
DBname="practice"
echo "createdb -h localhost -U postgres -p 5432 "$DBname
createdb -h localhost -U postgres -p 5432 $DBname
echo ""
echo ""
echo ""
sleep 4


echo "Problem 2"
echo "In the practice database, create a schema using star-schema.sql."
echo ""
sleep 2
echo "Create the Star Schema in database "$DBname
echo "psql  -h localhost -U postgres -p 5432 "$DBname" < star-schema.sql"
psql  -h localhost -U postgres -p 5432 "$DBname" < star-schema.sql
echo ""
echo ""
echo ""
sleep 4


echo "Problem 3"
echo "In the practice database, load the data into all tables using the DimMonth.sql, DimCustomer.sql and FactBilling.sql."
echo ""
sleep 2
echo "Step 1: Load data into DimCustomer table"
echo "psql  -h localhost -U postgres -p 5432 "$DBname" < DimCustomer.sql"
psql  -h localhost -U postgres -p 5432 "$DBname" < DimCustomer.sql
echo ""
sleep 2
echo "Step 2: Load data into DimMonth table"
echo ""
echo "psql  -h localhost -U postgres -p 5432 "$DBname" < DimMonth.sql"
psql  -h localhost -U postgres -p 5432 "$DBname" < DimMonth.sql
echo ""
sleep 2
echo "Step 3: Load data into FactBilling table"
echo ""
sleep 2
echo "psql  -h localhost -U postgres -p 5432 "$DBname" < FactBilling.sql"
psql  -h localhost -U postgres -p 5432 "$DBname" < FactBilling.sql
echo ""
echo ""
echo ""
sleep 4


echo "Problem 4"
echo "Verify that you have correctly loaded the data into the practice database."
echo ""
sleep 2
echo "psql  -h localhost -U postgres -p 5432 "$DBname" < verify.sql"
psql  -h localhost -U postgres -p 5432 "$DBname" < verify.sql