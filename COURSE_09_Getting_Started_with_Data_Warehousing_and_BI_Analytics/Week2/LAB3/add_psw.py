text="\"Postgres password: \""
with open("dbconnect.py", "r") as file:
	list_ = file.readlines()
	for line in list_:
		if line[:-1] == "pgpassword = os.environ.get('POSTGRES_PASSWORD')":
			idx = list_.index(line)
			list_[idx] = list_[idx][:13]+"input("+text+")\n"
			print(list_[idx])
with open("dbconnect.py", "w") as file:
	for line in list_:
		file.write(line)
