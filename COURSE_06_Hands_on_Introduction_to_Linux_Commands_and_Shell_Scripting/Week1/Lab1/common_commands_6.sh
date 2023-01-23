# Common Linux/Unix commands

# Exercise 6 - Networking commands

clear

echo "View the current host name"
echo "> hostname"
hostname
echo ""
sleep 3

echo "View the IP address"
echo "> hostname -i"
hostname -i
echo ""
sleep 3

echo "Test if a host is reachable"
echo "> ping www.google.com"
ping www.google.com
echo ""
sleep 3

ehco "Send five packets to the host"
echo "> ping -c 5 www.google.com"
ping -c 5 www.google.com
echo ""
sleep 3

echo "Display the configuration of all network interfaces of the system"
echo "> ifconfig"
ifconfig
echo ""
sleep 3

echo "Display the configuration of the ethernet adapter."
echo "> ifconfig eth0"
ifconfig eth0
echo ""
sleep 3

echo "Access the file at the given url and display the contents on to the screen."
echo "> curl https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt"
curl https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt
echo ""
sleep 3

echo "Delete file 'usdoi.txt'"
echo "> rm -rf usdoi.txt"
rm -rf usdoi.txt
echo ""
sleep 3

echo "Check files"
echo "> ls -l"
ls -l
echo ""
sleep 3

echo "Access the file at the given url and save it in the current directory."
echo "> curl -O https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt"
curl -O https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt
echo ""
sleep 3

echo "DELETE DIRECTORIES AND FILES"
rm -rf bin bin.zip myfile.txt usdoi.txt bin.tar config.zip usdoi-backup.txt
echo ""
sleep 3

echo "Check files"
ls -l
echo ""
sleep 3

echo "End"
