-- Grantting users access


USER_1="user_0d_1"
USER_2="user_0d_2"
MYSQL -H LOCALHOST -U ROOT -P -E "SHOW GRANTS FOR '$USER_1'@'localhost';"
MYSQL -H LOCALHOST -U ROOT -P -E "SHOW GRANTS FOR '$USER_2'@'localhost';"