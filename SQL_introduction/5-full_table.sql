--# Assuming 'your_database_name' is the argument passed to the script
DATABASE_NAME="$1"

--# Define the SQL query to retrieve table information
TABLE_INFO_SQL="SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_DEFAULT
FROM information_schema.columns

WHERE table_schema = '$DATABASE_NAME' AND table_name = 'first_table';"

--# Use the MySQL command to execute the query
MYSQL -U ROOT -P -E "$TABLE_INFO_SQL"