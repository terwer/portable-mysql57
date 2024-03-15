-- 已经在配置里面自动创建了
-- CREATE USER 'terwer'@'%' IDENTIFIED BY '123456';
GRANT ALL PRIVILEGES ON *.* TO 'terwer'@'%' WITH GRANT OPTION;
flush privileges;

-- create database test default character set utf8mb4 collate utf8mb4_general_ci