sqlfile=backups/$2

if [ -f $sqlfile ]; then 

    dbname=$(mysql -e "SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = '$1'" | grep $1)
    
    if test -z "$dbname"; then
        dbname='_'
    fi

    if [ $1 != $dbname ]; then
        echo "Created DB as it didn't exist"
        mysql -e "CREATE DATABASE $1"
    fi

    if mysql $1 < $sqlfile ; then
        echo 'Successful restoring database'
    else
        echo 'Error restoring database!'
    fi
else
    echo "File doesn't exist"
fi