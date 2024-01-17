-- Attempt to create the table force_name
USE YourDatabaseName; -- Replace YourDatabaseName with the actual database name

-- Use a procedure to handle potential errors when creating the table
DELIMITER //
CREATE PROCEDURE CreateForceNameTable()
BEGIN
    DECLARE table_exists INT DEFAULT 0;

    -- Check if the table force_name exists in the specified database
    SELECT COUNT(*)
    INTO table_exists
    FROM information_schema.tables
    WHERE table_schema = 'YourDatabaseName'
    AND table_name = 'force_name';

    -- If the table does not exist, create it
    IF table_exists = 0 THEN
        CREATE TABLE force_name (
            id INT,
            name VARCHAR(256) NOT NULL,
            PRIMARY KEY (id)
        );
    END IF;
END //
DELIMITER ;

-- Call the procedure
CALL CreateForceNameTable();
