-- Grantting users access
USER_1="user_0d_1"
USER_2="user_0d_2"
LIST_PRIVILEGES_SQL="SHOW GRANTS FOR '$USER_1'@'localhost';

SHOW GRANTS FOR '$USER_2'@'localhost';"

MYSQL -H LOCALHOST -U ROOT -P -E "$LIST_PRIVILEGES_SQL"