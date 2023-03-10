#! /usr/bin/env python3

import pandas as pd

file = "CustomerLoyaltyProgram.csv"

df = pd.read_csv(file)

final_list = []
raw_list = df["Revenue"].tolist()

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

if len(final_list) == len(df["Revenue"].tolist()):
	print("SUCCESS!")
else:
	print("ERROR!")
	exit()

df["Revenue"] = final_list
df.to_csv(file, index=False)