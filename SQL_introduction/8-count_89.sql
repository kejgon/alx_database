-- Create database
DROP DATABASE IF EXISTS HBTN_TEST_DB_8;

CREATE DATABASE IF NOT EXISTS HBTN_TEST_DB_8;

USE HBTN_TEST_DB_8;

-- Create table
CREATE TABLE IF NOT EXISTS FIRST_TABLE (
    ID INT,
    NAME VARCHAR(256)
);

-- Create records
INSERT INTO FIRST_TABLE (
    ID,
    NAME
) VALUES (
    1,
    "A"
);

INSERT INTO FIRST_TABLE (
    ID,
    NAME
) VALUES (
    89,
    "B"
);

INSERT INTO FIRST_TABLE (
    ID,
    NAME
) VALUES (
    2,
    "C"
);

INSERT INTO FIRST_TABLE (
    ID,
    NAME
) VALUES (
    89,
    "D"
);

INSERT INTO FIRST_TABLE (
    ID,
    NAME
) VALUES (
    89,
    "E"
);

INSERT INTO FIRST_TABLE (
    ID,
    NAME
) VALUES (
    3,
    "F"
);

SELECT
    COUNT(*)
FROM
    $DATABASE_NAME.FIRST_TABLE
WHERE
    ID = 89;