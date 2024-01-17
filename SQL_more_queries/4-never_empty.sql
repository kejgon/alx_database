-- Attempt to create the database hbtn_test_db_4
DROP DATABASE IF EXISTS hbtn_test_db_4;
CREATE DATABASE IF NOT EXISTS hbtn_test_db_4;

-- Switch to the new database
USE hbtn_test_db_4;

-- Create the table id_not_null if not exists
CREATE TABLE IF NOT EXISTS id_not_null (
    id INT DEFAULT 1,
    name VARCHAR(256)
);

-- If the table already exists, modify the default value for the 'id' column
-- (Optional: You can skip this part if you don't want to modify the default value)
ALTER TABLE id_not_null
MODIFY COLUMN id INT DEFAULT 1;

-- -- Example: Inserting a row into the table
-- INSERT INTO id_not_null (name) VALUES ('Example Name');
