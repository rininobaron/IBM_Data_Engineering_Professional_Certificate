#! /usr/bin/env python3

import pandas as pd

file = "CustomerLoyaltyProgram.csv"

df = pd.read_csv(file)

def column_to_float(raw_list):
	final_list = []
	while len(raw_list)>0:
		if "float" in str(type(raw_list[0])):
			final_list.append(raw_list[0])
			raw_list.pop(0)
			continue
		temp = ""
		for letter in raw_list[0]:
			if letter in ["$",","]:
				continue
			temp+=letter
		final_list.append(float(temp))
		raw_list.pop(0)
	return final_list

def column_to_int(raw_list):
	final_list = raw_list.astype("int", errors = "ignore")
	return final_list

final_list1 = column_to_float(df["Revenue"].tolist())
final_list2 = column_to_float(df["Unit Sale Price"].tolist())
final_list3 = column_to_float(df["Unit Cost"].tolist())
final_list4 = column_to_int(df["Order Year"])

if len(final_list1) == len(df["Revenue"].tolist()) and len(final_list2) == len(df["Unit Sale Price"].tolist()) and len(final_list3) == len(df["Unit Cost"].tolist()) and len(final_list4) == len(df["Order Year"]):
	print("SUCCESS!")
else:
	print("ERROR!")
	exit()

df["Revenue"] = final_list1
df["Unit Sale Price"] = final_list2
df["Unit Cost"] = final_list3
df["Order Year"] = final_list4
df.to_csv(file, index=False)