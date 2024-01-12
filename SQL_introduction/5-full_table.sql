DATABASE_NAME="$1"

--# Define the SQL query to retrieve table information
TABLE_INFO_SQL="SELECT 
CONCAT('CREATE TABLE `', table_name, '` (\n',
GROUP_CONCAT(
CONCAT('  `', column_name, '` ', data_type,
IF(IS_NULLABLE = 'NO', ' NOT NULL', ' DEFAULT NULL'),
IF(COLUMN_KEY = 'PRI', ' PRIMARY KEY', ''),
IF(EXTRA = 'auto_increment', ' AUTO_INCREMENT', ''),
','),
'\n'
),
'\n) ENGINE=', engine, ' DEFAULT CHARSET=', table_collation, ';\n')
FROM information_schema.tables
JOIN information_schema.columns USING (table_schema, table_name)

WHERE table_schema = '$DATABASE_NAME' AND table_name = 'first_table';"

--# USE THE MYSQL COMMAND TO EXECUTE THE QUERY
MYSQL -H LOCALHOST -U ROOT -P $DATABASE_NAME -E "$TABLE_INFO_SQL"