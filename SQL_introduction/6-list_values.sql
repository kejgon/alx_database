-- # Assuming 'your_database_name' is the argument passed to the script
DATABASE_NAME="$1"

--# Define the SQL query to select all rows from first_table
SELECT_ALL_ROWS_SQL="SELECT * FROM $DATABASE_NAME.first_table;"

-- # Use the MySQL command to execute the query
MYSQL -H LOCALHOST -U ROOT -P $DATABASE_NAME -E "$SELECT_ALL_ROWS_SQL"