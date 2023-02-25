#! /usr/bin/env bash

echo "EXTRA STEP"
echo ""
echo "Add input() in generate-data-quality-report.py"
echo "in order to get Postgres password"
echo ""
sleep 1
filename="generate-data-quality-report.py"
echo "python3 add_psw.py -i $filename"
python3 add_psw.py -i $filename
sleep 4
clear

echo "Exercise 3 - Create a sample data quality report"
echo ""
echo "Install pandas"
echo ""
echo "pip3 install pandas"
pip3 install pandas
echo ""
sleep 2
echo "EXTRA STEP"
echo ""
echo "pip install tabulate"
pip3 install tabulate
sleep 4
clear

echo ""
echo "Generate a sample data quality report."
echo ""
echo "python3 generate-data-quality-report.py"
python3 generate-data-quality-report.py