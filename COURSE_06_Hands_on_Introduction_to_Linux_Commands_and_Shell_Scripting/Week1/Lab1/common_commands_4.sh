# Common Linux/Unix commands

# Exercise 4 - Access Control Commands

clear

echo "see the permissions for a file named 'usdoi.txt'"
echo "> ls -l usdoi.txt"
ls -l usdoi.txt
echo ""
sleep 3

echo "Remove read permission for all (user,group and other) on usdoi.txt"
echo "> chmod -r usdoi.txt"
chmod -r usdoi.txt
echo ""
sleep 3

echo "Check permissions"
echo "> ls -l usdoi.txt"
ls -l usdoi.txt
echo ""
sleep 3

echo "Add read access to all on usdoi.txt"
echo "> chmod +r usdoi.txt"
chmod +r usdoi.txt
echo ""
sleep 3

echo "Check permissions"
echo "> ls -l usdoi.txt"
ls -l usdoi.txt
echo ""
sleep 3

echo "Remove read permission for other on usdoi.txt"
echo "> chmod o-r usdoi.txt"
chmod o-r usdoi.txt
echo ""
sleep 3

echo "Check permissions"
echo "> ls -l usdoi.txt"
ls -l usdoi.txt
echo ""
sleep 3
