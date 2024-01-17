-- Create database 
DROP DATABASE IF EXISTS hbtn_test_db_8;
CREATE DATABASE IF NOT EXISTS hbtn_test_db_8;
USE hbtn_test_db_8;

-- Create table
CREATE TABLE IF NOT EXISTS first_table (
    id INT,
    name VARCHAR(256)
);

-- Create records with INSERT IGNORE
INSERT IGNORE INTO first_table (id, name) VALUES (1, "A");
INSERT IGNORE INTO first_table (id, name) VALUES (89, "B");
INSERT IGNORE INTO first_table (id, name) VALUES (2, "C");
INSERT IGNORE INTO first_table (id, name) VALUES (89, "D");
INSERT IGNORE INTO first_table (id, name) VALUES (89, "E");
INSERT IGNORE INTO first_table (id, name) VALUES (3, "F");

-- Query to count records with id 89
SELECT COUNT(*) FROM first_table WHERE id = 89;
