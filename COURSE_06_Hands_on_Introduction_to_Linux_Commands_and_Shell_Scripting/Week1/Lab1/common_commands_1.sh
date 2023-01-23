# Common Linux/Unix commands

# Exercise 1 - General purpose commands

echo "User"
echo "> whoami"
whoami
echo ""
sleep 3

echo "id and group"
echo "> id"
id
echo ""
sleep 3

echo "Date and time"
echo "> date"
date
echo ""
sleep 3

echo "Date in mm/dd/yy format."
echo '> date "+%D"'
date "+%D"
echo ""
sleep 3

echo "Files on the cuurrent directory"
echo "> ls"
ls
echo ""
sleep 3

echo "Files in the /bin directory"
echo "> ls /bin"
ls /bin
echo ""
sleep 3

echo "List all files starting with b in the /bin directory"
echo "> ls /bin/b*"
ls /bin/b*
echo ""
sleep 3

echo "List all files ending with r in the /bin directory"
ehco "> ls /bin/*r"
ls /bin/*r
echo ""
sleep 3

echo "Kernel name"
echo "> uname"
uname
echo ""
sleep 3

echo "Kernel details"
echo "> uname -a"
uname -a
echo ""
sleep 3

echo "Active processes by current user"
echo "> ps"
ps
echo ""
sleep 3

echo "Active processes by all users"
echo "> ps -e"
ps -e
echo ""
sleep 3

echo "Get information on the running processes and system resources"
echo "> top"
echo "NO EXECUTED"
# top
echo ""
sleep 3

echo "Get information on the running processes and system resources (only 5 repetitions)"
echo "> top -n 5"
top -n 5
echo ""
sleep 3

echo "Display messages"
echo "Welcome to the linux lab"
echo "With special characters"
echo '> echo -e "This will be printed \nin two lines"'
echo -e "This will be printed \nin two lines"
echo ""
sleep 3

echo "Download from the internet"
echo "> wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt"
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt
echo "Check if file is downloaded"
echo "> ls"
ls
echo ""
sleep 3

echo "Display the reference manual of ls command"
echo "> man ls"
man ls
echo ""
sleep 3