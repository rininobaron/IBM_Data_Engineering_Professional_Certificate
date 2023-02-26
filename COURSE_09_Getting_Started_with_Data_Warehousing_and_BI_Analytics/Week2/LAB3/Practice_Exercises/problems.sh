#! /usr/bin/env bash

abspath="/home/ricardo/IBM_Data_Engineering_Professional_Certificate/COURSE_09_Getting_Started_with_Data_Warehousing_and_BI_Analytics/Week2/LAB3/"

echo "Practice Exercises"
echo ""
sleep 1

echo "Problem 1"
echo "Create a check_for_nulls test on column billedamount in the table FactBilling"
echo ""
sleep 1
echo "Add test9 in mytests.py file"
file="mytests.py"
echo '
test9={
	"testname":"Check for nulls",
	"test":check_for_nulls,
	"column": "billedamount",
	"table": "FactBilling"
}' >> $abspath$file
echo ""
sleep 2
cat $abspath$file
sleep 5
clear

echo "Problem 2"
echo "Create a check_for_duplicates test on column billid in the table FactBilling"
echo ""
sleep 1
echo "Add test10 in mytests.py file"
echo '
test10={
	"testname":"Check for duplicates",
	"test":check_for_duplicates,
	"column": "billid",
	"table": "FactBilling"
}' >> $abspath$file
echo ""
sleep 2
cat $abspath$file
sleep 5
clear

echo "Problem 3"
echo "Create a check_for_valid_values test on column quarter in the table DimMonth. The valid values are 1, 2, 3, 4"
echo ""
sleep 1
echo "Add test11 in mytests.py file"
echo '
test11={
	"testname":"Check for valid values",
	"test":check_for_valid_values,
	"column": "quarter",
	"table": "DimMonth",
	"valid_values":{1,2,3,4}
}' >> $abspath$file
echo ""
sleep 2
cat $abspath$file
sleep 5
clear

echo "Generate the new data quality report."
echo ""
echo "python3 generate-data-quality-report.py"
echo ""
python3 $abspath"generate-data-quality-report.py"