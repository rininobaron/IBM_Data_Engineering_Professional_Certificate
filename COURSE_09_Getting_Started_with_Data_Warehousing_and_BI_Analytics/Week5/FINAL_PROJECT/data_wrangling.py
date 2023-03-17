#! /usr/bin/env python3

import pandas as pd

# This script add a month column to table using original date column

file = "DataForCognos.csv"

df = pd.read_csv(file)

#print(df.dtypes)

month_list = []

months = {"01":"January","02":"February","03":"March","04":"April","05":"May","06":"June","07":"July","08":"August","09":"September","10":"October","11":"November","12":"December"}

for date in df["Date"]:
	date = date.split("/")
	month_list.append(months[date[1]])

if len(month_list)==len(df["Date"]):
	df["Month"] = month_list
	df.to_csv(file, index=False)
	print("Success!")
else:
	print("Error!")