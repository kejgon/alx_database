-- # Check for database name argument
if [ -z "$1" ]; then

ECHO "Error: Please provide the database name as an argument."

exit 1

FI

--# Connect to MySQL server
MYSQL -HLOCALHOST -UROOT -P -E "SHOW TABLES FROM $1;"