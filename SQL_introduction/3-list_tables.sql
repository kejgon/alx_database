-- # Assuming 'your_database_name' is the argument passed to the script
DATABASE_NAME="hbtn_0c_0"

-- # Use the MySQL command to list tables in the specified database
MYSQL -E "USE $database_name; SHOW TABLES;"