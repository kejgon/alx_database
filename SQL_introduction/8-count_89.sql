-- Create database 
DROP DATABASE IF EXISTS hbtn_test_db_8;
CREATE DATABASE IF NOT EXISTS hbtn_test_db_8;
USE hbtn_test_db_8;

-- Create table
CREATE TABLE IF NOT EXISTS first_table (
    id INT,
    name VARCHAR(256)
);

-- Create records
INSERT INTO first_table (id, name) VALUES (1, "A");
INSERT INTO first_table (id, name) VALUES (89, "B");
INSERT INTO first_table (id, name) VALUES (2, "C");
INSERT INTO first_table (id, name) VALUES (89, "D");
INSERT INTO first_table (id, name) VALUES (89, "E");
INSERT INTO first_table (id, name) VALUES (3, "F");

SELECT
    COUNT(*)
FROM
    first_table
WHERE
    ID = 89;