-- Create database 
DROP DATABASE IF EXISTS hbtn_test_db_8;
CREATE DATABASE IF NOT EXISTS hbtn_test_db_8;
USE hbtn_test_db_8;

-- Create table
CREATE TABLE IF NOT EXISTS first_table (
    id INT,
    name VARCHAR(256)
);


SELECT
    COUNT(*)
FROM
    first_table
WHERE
    ID = 89;