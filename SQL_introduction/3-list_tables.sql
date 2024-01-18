-- #!/bin/bash

-- # Check if a database name is provided as an argument

database_name=$1


DROP DATABASE IF EXISTS $database_name;
CREATE DATABASE IF NOT EXISTS $database_name;

USE $database_name;

CREATE TABLE IF NOT EXISTS holbteron_0 (
    id INT
);

CREATE TABLE IF NOT EXISTS holbteron_1 (
    name VARCHAR(256)
);

CREATE TABLE IF NOT EXISTS holbteron_2 (
    id INT,
    name VARCHAR(256)
);

SHOW TABLES;
