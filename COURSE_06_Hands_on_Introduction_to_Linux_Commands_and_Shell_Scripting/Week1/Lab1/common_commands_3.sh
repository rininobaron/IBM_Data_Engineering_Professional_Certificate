# Common Linux/Unix commands

# Exercise 3 - File Management Commands

clear

echo "Print the content of the file usdoi.txt"
echo "> cat usdoi.txt"
cat usdoi.txt
echo ""
sleep 3

echo "Display the file contents page by page"
echo "Press spacebar to display the next page"
echo "> more usdoi.txt"
more usdoi.txt
echo ""
sleep 3

echo "Print the first 10 lines of the file usdoi.txt"
echo "> head usdoi.txt"
head usdoi.txt
echo ""
sleep 3

echo "Print the first 5 lines of the file usdoi.txt"
echo "> head -3 usdoi.txt"
head -3 usdoi.txt
echo ""
sleep 3

echo "Print the last 10 lines of the file usdoi.txt"
echo "> tail usdoi.txt"
tail usdoi.txt
echo ""
sleep 3

echo "Print the last 2 lines of the file usdoi.txt"
echo "> tail -2 usdoi.txt"
tail -2 usdoi.txt
echo ""
sleep 3

echo "Copy usdoi.txt into a file named usdoi-backup.txt"
echo "> cp usdoi.txt usdoi-backup.txt"
cp usdoi.txt usdoi-backup.txt
echo ""
sleep 3

echo "Check files"
echo "> ls"
ls
echo ""
sleep 3

echo "Copy the content of /etc/passwd to a file named 'users.txt' under the current directory"
echo "> cp /etc/passwd users.txt"
cp /etc/passwd users.txt
echo ""
sleep 3

echo "Check files"
exho "> ls"
ls
echo ""
sleep 3

echo "Rename users.txt as user-info.txt"
echo "> mv users.txt user-info.txt"
mv users.txt user-info.txt
echo ""
sleep 3

echo "Check files"
echo "> ls"
ls
echo ""
sleep 3

echo "Move user-info.txt to the /tmp directory"
echo "> mv user-info.txt /tmp"
mv user-info.txt /tmp
echo ""
sleep 3

echo "Check files in /tmp"
echo "> ls /tmp"
ls /tmp
echo ""
sleep 3

echo "Delete file user-info.txt in /tmp"
echo "> rm -rf /tmp/user-info.txt"
rm -rf /tmp/user-info.txt
echo ""
sleep 3

echo "Check files in /tmp"
echo "> ls /tmp"
ls /tmp
echo ""
sleep 3

echo "Create an empty file named myfile.txt"
echo "> touch myfile.txt"
touch myfile.txt
echo ""
sleep 3

echo "Check files"
echo "> ls -l"
ls -l
echo ""
sleep 3

echo "If the file already exists, the touch command updates the access timestamp of the file"
echo "> touch usdoi.txt"
touch usdoi.txt
echo ""
sleep 3

echo "Check files"
echo "> ls -l"
ls -l
echo ""
sleep 3

echo "Remove the file myfile.txt. Press y to confirm deletion, or n to cancel"
echo "> rm -i myfile.txt"
rm -i myfile.txt
echo ""
sleep 3

echo "Check files"
echo "> ls -l"
ls -l
echo ""
sleep 3

echo "The following command creates an archive of the entire '/bin' directory into a file named bin.tar"
exho "> tar -cvf bin.tar /bin"
tar -cvf bin.tar /bin
echo ""
sleep 3

echo "To see the list of files in the archive, use -t option"
echo "> tar -tvf bin.tar"
tar -tvf bin.tar
echo ""
sleep 3

echo "To untar the archive or extract files from the archive, use -x option"
echo "> tar -xvf bin.tar"
tar -xvf bin.tar
echo ""
sleep 3

echo "Check files"
echo "> ls -l"
ls -l
echo ""
sleep 3

echo "The following command creates a zip named config.zip and of all the files with extension .conf in the /etc directory."
echo "> zip config.zip /etc/*.conf"
zip config.zip /etc/*.conf
echo ""
sleep 3

echo "The -r option can be used to zip the entire folder"
echo "The following command creates an archive of the '/bin' directory"
echo "> zip -r bin.zip /bin"
zip -r bin.zip /bin
echo ""
sleep 3

echo "The following command extracts all the files in the archive bin.zip"
echo "> unzip bin.zip"
unzip bin.zip
echo ""
sleep 3
