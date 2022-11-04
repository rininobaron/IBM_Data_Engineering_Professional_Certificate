#This bash script checks the status of psql server before and after restart it.

#CHECK SERVER STATUS
sudo systemctl status postgresql.service

#STOP AND RESTART PSQL SERVER

echo "STOP AND RESTART PSQL SERVER"

sudo systemctl restart postgresql.service

#CHECK SERVER STATUS
sudo systemctl status postgresql.service