-- #!/bin/bash

-- # Check if a database name is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

-- # Capture the database name from the command line argument
database_name=$1

-- # MySQL command to create and configure the database without tables
mysql -h localhost -u root -p <<EOF
-- Delete and create database $database_name
DROP DATABASE IF EXISTS $database_name;
CREATE DATABASE IF NOT EXISTS $database_name;

USE $database_name;

SHOW TABLES;
EOF
