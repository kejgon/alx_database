-- Create database and table
DROP DATABASE IF EXISTS hbtn_test_db_5;
CREATE DATABASE IF NOT EXISTS hbtn_test_db_5;
USE hbtn_test_db_5;
CREATE TABLE IF NOT EXISTS first_table (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(128),
    c CHAR(1),
    created_at DATE,
    PRIMARY KEY (id)
);

-- Get detailed CREATE TABLE statement from information_schema
SELECT
    CONCAT('CREATE TABLE `first_table` (',
           GROUP_CONCAT(
               CONCAT('`', COLUMN_NAME, '`', COLUMN_TYPE,
                      IF(IS_NULLABLE = 'NO', 'NOT NULL', 'DEFAULT NULL'),
                      IF(COLUMN_DEFAULT IS NOT NULL, CONCAT(' DEFAULT ', COLUMN_DEFAULT), ''),
                      IF(EXTRA = 'auto_increment', ' AUTO_INCREMENT', ''),
                      ','
               )
           ),
           'PRIMARY KEY (`id`)',
           ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;'
    ) AS 'Create Table'
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    TABLE_NAME = 'first_table' AND TABLE_SCHEMA = 'hbtn_test_db_5';