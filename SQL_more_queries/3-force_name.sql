-- Attempt to create the table force_name
USE YourDatabaseName; -- Replace YourDatabaseName with the actual database name

-- Use a procedure to handle potential errors when creating the table
DELIMITER //
CREATE PROCEDURE CreateForceNameTable()
BEGIN
    DECLARE continue_handler INT DEFAULT 0;

    -- Declare a condition handler for potential errors
    DECLARE CONTINUE HANDLER FOR SQLSTATE '42S01' SET continue_handler = 1;

    -- Attempt to create the table force_name
    CREATE TABLE force_name (
        id INT,
        name VARCHAR(256) NOT NULL,
        PRIMARY KEY (id)
    );

    -- Check if an error occurred (table already exists)
    IF continue_handler = 1 THEN
        -- Reset the continue_handler variable
        SET continue_handler = 0;
    END IF;
END //
DELIMITER ;

-- Call the procedure
CALL CreateForceNameTable();
