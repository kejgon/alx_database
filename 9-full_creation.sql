DATABASE_NAME="hbtn_0c_0"

-- # Define the SQL query to create second_table
CREATE_TABLE_SQL="CREATE TABLE IF NOT EXISTS $DATABASE_NAME.second_table (
id INT NOT NULL,
name VARCHAR(256),
score INT,
PRIMARY KEY (id)

);"

MYSQL -H LOCALHOST -U ROOT -P $DATABASE_NAME -E "$CREATE_TABLE_SQL"

--# Define the SQL query to insert rows into second_table
INSERT_ROWS_SQL="INSERT INTO $DATABASE_NAME.second_table (id, name, score) VALUES

(1,
'John',
10),
(2,
'Alex',
3),
(3,
'Bob',
14),
(4,
'George',
8);

"

--# Use the MySQL command to execute the query
MYSQL -H LOCALHOST -U ROOT -P $DATABASE_NAME -E "$INSERT_ROWS_SQL"