# Common Linux/Unix commands

# Exercise 5 - Text Processing Commands

clear

echo "Find the number of lines, words and characters in usdoi.txt"
echo "> wc usdoi.txt"
wc usdoi.txt
echo ""
sleep 3

echo "Print only the number of lines in 'usdoi.txt'"
echo "> wc -l usdoi.txt"
wc -l usdoi.txt
echo ""
sleep 3

echo "Print only the number of words in 'usdoi.txt'"
echo "> wc -w usdoi.txt"
wc -w usdoi.txt
echo ""
sleep 3

echo "Print only the number of characters in 'usdoi.txt'"
echo "> wc -c usdoi.txt"
wc -c usdoi.txt
echo ""
sleep 3

echo "Print all lines in the file usdoi.txt which contain the word people"
echo "> grep people usdoi.txt"
grep people usdoi.txt
echo ""
sleep 3

echo "Prints all lines from the /etc/passwd file, which do not contain the pattern login"
echo "> grep -v login /etc/passwd"
grep -v login /etc/passwd
echo ""
sleep 3