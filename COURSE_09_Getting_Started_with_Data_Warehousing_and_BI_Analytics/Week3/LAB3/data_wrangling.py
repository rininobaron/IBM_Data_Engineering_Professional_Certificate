#! /usr/bin/env python3

import pandas as pd

file = "CustomerLoyaltyProgram.csv"

df = pd.read_csv(file)

def fix_column(raw_list):
	final_list = []
	while len(raw_list)>0:
		if "float" in str(type(raw_list[0])):
			raw_list.pop(0)
			final_list.append(temp)
			continue
		temp = ""
		for letter in raw_list[0]:
			if letter in ["$",","]:
				continue
			temp+=letter
		final_list.append(float(temp))
		raw_list.pop(0)
	return final_list

final_list1 = fix_column(df["Unit Sale Price"].tolist())
final_list2 = fix_column(df["Unit Cost"].tolist())

if len(final_list1) == len(df["Unit Sale Price"].tolist()):
	if len(final_list2) == len(df["Unit Cost"].tolist()):
		print("SUCCESS!")
	else:
		print("ERROR!")
else:
	print("ERROR!")
	exit()

df["Unit Sale Price"] = final_list1
df["Unit Cost"] = final_list2
df.to_csv(file, index=False)