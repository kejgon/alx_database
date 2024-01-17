-- Create the database hbtn_0d_usa if not exists
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Switch to the hbtn_0d_usa database
USE hbtn_0d_usa;

-- List all cities of California without using JOIN
SELECT cities.id, cities.name
FROM cities, states
WHERE cities.state_id = (SELECT id FROM states WHERE name = 'California')
ORDER BY cities.id ASC;
