# Backup all databases
echo "Backup all databases"
mysqldump --all-databases > all-databases-backup.sql

# Get date
printf '%(%Y%m%d)T\n'
DATE=$(printf '%(%Y%m%d)T\n') 

# Create a directory with the current date
DIR="/tmp/mysqldumps/$DATE"
echo "Create directory $DIR"
mkdir -p "$DIR"

# Move the file in the new directory
echo "Move file all-databases-backup.sql to directory $DIR"
mv "all-databases-backup.sql" "$DIR"
echo "End"