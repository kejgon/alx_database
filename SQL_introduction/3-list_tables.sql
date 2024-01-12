

-- # Assuming 'your_database_name' is the argument passed to the script
DATABASE_NAME="hbtn_0c_0"

-- # Use the MySQL command to list tables in the specified database
mysql -u root -p -e "USE ${DATABASE_NAME}; SHOW TABLES;"
