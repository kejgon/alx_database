-- Attempt to create the database hbtn_test_db_4
DROP DATABASE IF EXISTS hbtn_test_db_5;
CREATE DATABASE IF NOT EXISTS hbtn_test_db_5;

-- Switch to the new database
USE hbtn_test_db_5;
-- Create the table unique_id if not exists
CREATE TABLE IF NOT EXISTS unique_id (
    id INT DEFAULT 1,
    name VARCHAR(256),
    UNIQUE KEY unique_id_unique_idx (id)
);

