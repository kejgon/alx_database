-- -- Create the database if it doesn't exist
-- CREATE DATABASE IF NOT EXISTS hbtn_test_db_4;

-- -- Switch to the hbtn_test_db_4 database
-- USE hbtn_test_db_4;

-- -- Create the first_table if it doesn't exist
-- CREATE TABLE IF NOT EXISTS first_table (
--     ID INT,
--     NAME VARCHAR(256)
-- );

-- -- Insert sample data for testing
-- -- INSERT INTO first_table (ID, NAME) VALUES (1, 'John'), (2, 'Jane');


--# Assuming 'your_database_name' is the argument passed to the script
DATABASE_NAME="$1"

--# Define the table creation SQL
CREATE_TABLE_SQL="USE $DATABASE_NAME; CREATE TABLE IF NOT EXISTS first_table (
id INT,
name VARCHAR(256)

);"

--# Use the MySQL command to execute the table creation SQL
MYSQL -U ROOT -P -E "$CREATE_TABLE_SQL"