-- Check if the table force_name exists in the specified database
USE YourDatabaseName; -- Replace YourDatabaseName with the actual database name
SELECT 1 FROM information_schema.tables WHERE table_schema = 'YourDatabaseName' AND table_name = 'force_name' LIMIT 1 INTO @table_exists;

-- If the table does not exist, create it
IF @table_exists IS NULL THEN
    CREATE TABLE force_name (
        id INT,
        name VARCHAR(256) NOT NULL,
        PRIMARY KEY (id)
    );
END IF;
