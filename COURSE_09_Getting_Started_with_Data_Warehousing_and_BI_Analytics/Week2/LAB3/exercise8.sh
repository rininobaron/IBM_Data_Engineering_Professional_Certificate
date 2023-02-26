#! /usr/bin/env bash

echo "Exercise 8 - Check for duplicate entries"
echo ""
echo "Check for any duplicate values in the column customerid in the table DimCustomer."
echo ""
sleep 1
echo "Add test8 in mytests.py file"
file="mytests.py"
echo '
test8={
	"testname":"Check for duplicates",
	"test":check_for_duplicates,
	"column": "customerid",
	"table": "DimCustomer"
}' >> $file
echo ""
sleep 2
cat $file
sleep 5
clear
echo "Generate the new data quality report."
echo ""
echo "python3 generate-data-quality-report.py"
echo ""
python3 generate-data-quality-report.py