-- -- Delete and create database hbtn_test_db_0
-- DROP DATABASE IF EXISTS hbtn_test_db_0;
-- CREATE DATABASE IF NOT EXISTS hbtn_test_db_0;

-- USE hbtn_test_db_0;

-- SHOW TABLES FROM hbtn_test_db_0;

if [ $# -eq 0 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

USE $database_name; 

SHOW TABLES;