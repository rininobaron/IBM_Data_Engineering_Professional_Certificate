# Common Linux/Unix commands

# Exercise 2 - Directory Management Commands

clear

echo "Print current directory"
echo "> pwd"
pwd
echo ""
sleep 3

echo "Create directory"
echo "> mkdir scripts"
mkdir scripts
echo "Check if folder was created"
echo "> ls"
ls
echo ""
sleep 3

echo "Change directory"
echo "> cd scripts"
cd scripts
echo ""
sleep 3

echo "Get current directory"
echo "> pwd"
pwd
echo ""
sleep 3

echo "Change to parent directory"
echo "> cd .."
cd ..
echo "Get current directory again"
echo "> pwd"
pwd
echo ""
sleep 3

echo "Delete scripts folder created previously"
echo "rm -rf scripts"
rm -rf scripts
echo ""
sleep 3

echo "Get a list of files in a directory"
ehco "> ls"
ls
echo ""
sleep 3

echo "Print a long list of files that has additional information compared to the simple ls command"
echo "> ls -l"
ls -l
sleep 3

echo "Get a long listing of all files in /etc, including hidden files"
echo "> ls -la /etc"
ls -la /etc
echo ""
sleep 3

echo "List files based on  odification time with file details"
echo "> ls -lt"
ls -lt
echo ""
sleep 3

echo "To view the current directory attributes instead of their contents, use the following command. If you want any other directory's attributes, provide the directory name as argument"
echo "> ls -ld /etc"
ls -ld /etc
echo ""
sleep 3

echo "List the files sorted by file size in descending order"
echo "> ls -lS"
ls -lS
echo ""
sleep3

echo "Get the files sorted by file size in ascending order"
echo "> ls -lrS"
ls -lrS
echo ""
sleep 3

echo "Create a dummy directory in the the /tmp folder"
echo "> mkdir /tmp/dummy"
mkdir /tmp/dummy
echo ""
sleep 3

echo "Verify by using the ls command"
echo "> ls /tmp"
ls /tmp
echo ""
sleep 3

echo "Delete the dummy directory"
echo "> rmdir /tmp/dummy"
rmdir /tmp/dummy
echo ""
sleep 3

echo "Verify by using the ls command"
echo "> ls /tmp"
ls /tmp
echo ""
sleep 3

echo "Find all txt files in the subfolders of the /etc directory"
echo "> find /etc -name '*.txt'"
find /etc -name '*.txt'
echo ""
sleep 3

echo "Show the information for all currently mounted file systems"
echo "> df"
df
echo ""
sleep 3

echo "View the disk space usage in human readable format"
echo "> df -h"
df -h
echo ""
sleep 3