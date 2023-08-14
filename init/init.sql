CREATE USER 'terwer'@'%' IDENTIFIED BY '123456';
GRANT ALL PRIVILEGES ON *.* TO 'terwer'@'%' WITH GRANT OPTION;
flush privileges;

-- create database mytest default character set utf8mb4 collate utf8mb4_general_ci
-- create database mytest default character set utf8 collate utf8_general_ci