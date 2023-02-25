#! /usr/bin/env bash

echo "EXTRA STEP"
echo ""
echo "Delete unnecessary files downloaded previosly"
echo ""
rm -rf *.sql
rm -rf *.tgz
sleep 4
clear

echo "Exercise 2 - Getting the testing framework ready"
echo ""
echo "Step 1: Download the framework."
files="dataqualitychecks.py dbconnect.py mytests.py generate-data-quality-report.py"
url="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/Verifying%20Data%20Quality%20for%20a%20Data%20Warehouse/"
for file in $files
do
	echo "Download file: "$file
	wget $url$file
	echo "Success!"
	echo ""
	sleep 1
done
echo ""
echo "Show files"
echo "ls"
ls
sleep 4
clear

echo "Step 2: Install the python driver for Postgresql."
echo ""
echo "pip install psycopg2-binary"
sudo pip install psycopg2-binary
sleep 4
clear

echo "Extra step"
echo "Add input() to dbconnect.py"
echo "in order to get the password"
target_line="pgpassword = os.environ.get('POSTGRES_PASSWORD')"
target_file="add_psw.py"
#read password # This is not a good idea because the password maybe will have special chacateres like #
touch $target_file
echo 'text="\"Postgres password: \""
with open("dbconnect.py", "r") as file:
	list_ = file.readlines()
	for line in list_:
		if line[:-1] == "'$target_line'":
			idx = list_.index(line)
			list_[idx] = list_[idx][:13]+"input("+text+")\n"
			print(list_[idx])
with open("dbconnect.py", "w") as file:
	for line in list_:
		file.write(line)' > $target_file
echo ""
echo ""
echo "python3 "$target_file
python3 $target_file

echo "Step 3: Test database connectivity."
echo ""
echo "python3 dbconnect.py"
python3 dbconnect.py