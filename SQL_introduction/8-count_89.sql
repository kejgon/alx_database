
-- Create table
CREATE TABLE IF NOT EXISTS first_table (
    id INT,
    name VARCHAR(256)
);

-- Query to count records with id 89
SELECT COUNT(*) FROM first_table WHERE id = 89;
