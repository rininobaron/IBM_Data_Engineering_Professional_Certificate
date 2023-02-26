#! /usr/bin/env bash

echo "Exercise 5 - Check for nulls"
echo ""
echo "Check if there are any null values in the column year in the table DimMonth"
echo ""
sleep 1
echo "Add test5 in mytests.py file"
file="mytests.py"
echo '
test5={
	"testname":"Check for nulls",
	"test":check_for_nulls,
	"column": "year",
	"table": "DimMonth"
}
' >> $file
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