#! /usr/bin/env bash

echo "Exercise 7 - Check for any invalid entries"
echo ""
echo "Check for valid values in the column quartername in the table DimMonth."
echo ""
sleep 1
echo "Add test7 in mytests.py file"
file="mytests.py"
echo '
test7={
	"testname":"Check for valid values",
	"test":check_for_valid_values,
	"column": "quartername",
	"table": "DimMonth",
	"valid_values":{"Q1","Q2","Q3","Q4"}
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