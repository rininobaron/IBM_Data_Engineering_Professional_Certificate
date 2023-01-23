# Practice exercises"

echo "Problem 1"
echo "Display the content of /home directory."
echo "> ls /home"
ls /home
echo ""
sleep 3

echo "Problem 2"
echo "Ensure that you are in your home directory."
echo "Change directory to /home"
echo "> cd /home"
cd /home
echo "Get current directory"
echo "> pwd"
pwd
echo ""
sleep 3

echo "Problem 3"
echo "Create a new directory called 'final' in your home directory."
echo "> sudo mkdir final"
sudo mkdir final
echo "Check files"
echo "> ls"
ls
echo ""
sleep 3

echo "Problem 4"
echo "View the permissions of the newly created directory 'final'."
echo "> ls -l"
ls -l
echo ""
sleep 3

echo "Problem 5"
echo "Create a new blank file named 'display.sh' in the final directory"
echo "> sudo touch final/display.sh"
sudo touch final/display.sh
echo "Check if file was created"
ls final
echo ""
sleep 3

echo "Problem 6"
echo "Copy display.sh as report.sh."
echo "> sudo cp final/display.sh final/report.sh"
sudo cp final/display.sh final/report.sh
echo "Check if copy file was created"
ls final
echo ""
sleep 3

echo "Problem 7"
echo "Delete the file 'display.sh'."
echo "> sudo rm -rf final/display.sh"
sudo rm -rf final/display.sh
echo ""
sleep 3

echo "Problem 8"
echo "List the files in /etc directory in the ascending order of their access time."
echo "> ls -ltr /etc"
ls -ltr /etc
echo ""
sleep 3

echo "Problem 9"
echo "Display the current time."
echo '> date "+%T"'
date "+%T"
echo ""
sleep 3

echo "Problem 10"
echo "Display the number of lines in the /etc/passwd file."
echo "> wc -l /etc/passwd"
wc -l /etc/passwd
echo ""
sleep 3

echo "Problem 11"
echo "Display the lines that contain the string 'not installed' in /var/log/bootstrap.log page-wise."
echo "> grep 'not installed' /var/log/bootstrap.log"
grep 'not installed' /var/log/bootstrap.log
echo ""
sleep 3

echo "Problem 12"
echo "https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/top-sites.txt contains most popular websites. Find out all the websites that have the word org in them"
sleep 2
echo "Download 'top-sites.txt' file"
echo "> sudo wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/top-sites.txt"
sudo wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/top-sites.txt
sleep 2
echo "Find out all the websites that have the word org in them"
grep org top-sites.txt
echo ""
sleep 3

echo "Delete 'final' directory and 'top-sites.txt' file on /home directory"
echo "> sudo rm -rf /home/final /home/top-sites.txt"
sudo rm -rf /home/final /home/top-sites.txt
echo "Check files in /home"
echo "> ls /home"
ls /home
echo ""
sleep 3

echo "End"