

-- # Check for database name argument
if [ -z "$1" ]; then
  echo "Error: Please provide the database name as an argument."
  exit 1
fi

--# Connect to MySQL server
mysql -hlocalhost -uroot -p -e "SHOW TABLES FROM $1;"
