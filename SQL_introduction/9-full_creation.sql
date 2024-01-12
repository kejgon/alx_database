-- Create database
DROP DATABASE IF EXISTS hbtn_test_db_9;
CREATE DATABASE IF NOT EXISTS hbtn_test_db_9;
USE hbtn_test_db_9;

-- Create table
CREATE TABLE IF NOT EXISTS second_table (
    id INT,
    name VARCHAR(256),
    score INT
);

-- Create records
INSERT INTO second_table (id, name, score) VALUES (11, "A", 12);
INSERT INTO second_table (id, name, score) VALUES (12, "B", 12);
INSERT INTO second_table (id, name, score) VALUES (13, "C", 12);
INSERT INTO second_table (id, name, score) VALUES (14, "D", 12);