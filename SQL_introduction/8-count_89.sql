--# Assuming 'your_database_name' is the argument passed to the script
DATABASE_NAME="$1"

--# Define the SQL query to count records with id = 89 in first_table
COUNT_RECORDS_SQL="SELECT COUNT(*) FROM $DATABASE_NAME.first_table WHERE id = 89;"

--# Use the MySQL command to execute the query
MYSQL -H LOCALHOST -U ROOT -P $DATABASE_NAME -E "$COUNT_RECORDS_SQL"