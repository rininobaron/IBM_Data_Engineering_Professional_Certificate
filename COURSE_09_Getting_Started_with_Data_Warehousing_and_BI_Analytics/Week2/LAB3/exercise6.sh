#! /usr/bin/env bash

echo "Exercise 6 - Check for min max range"
echo ""
echo "Check for minimum of 1 and maximum of 4 in the column quarter in the table DimMonth."
echo ""
sleep 1
echo "Add test6 in mytests.py file"
file="mytests.py"
echo '
test6={
	"testname":"Check for min and max",
	"test":check_for_min_max,
	"column": "quarter",
	"table": "DimMonth",
	"minimum":1,
	"maximum":4
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