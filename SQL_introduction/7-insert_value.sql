-- Create database
DROP DATABASE IF EXISTS hbtn_0c_0;

CREATE DATABASE IF NOT EXISTS hbtn_0c_0;


-- Database name passed as an argument to the script
USE hbtn_0c_0;


-- Create table
CREATE TABLE IF NOT EXISTS first_table (
    id INT,
    name VARCHAR(256)
);

-- Insert a new row into the first_table
INSERT INTO first_table (id, name) VALUES (89, 'Holberton School');
