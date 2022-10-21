# Start server
# start_postgres

# Create table 'access_log' in database 'template1'

echo 'Create table'

echo '\c template1; \\CREATE TABLE access_log(timestamp TIMESTAMP, latitude float, longitude float, visitorid char(37));' | psql --username=postgres --host=localhost

# Download file with raw data

wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/ETL%20using%20shell%20scripting/web-server-access-log.txt.gz

# Extract file

echo "Extracting file"

gunzip -f web-server-access-log.txt.gz

# Extract columns

echo "Extracting columns"

cut -d"#" -f1-4 ./web-server-access-log.txt > extracted-data.txt

# Tranform data

echo "Transforming data"

tr "#" "," < extracted-data.txt > transformed-data.csv

# Load data

echo "Loading data"

echo "\c template1;\COPY access_log FROM './transformed-data.csv' DELIMITERS ',' CSV HEADER;" | psql --username=postgres --host=localhost