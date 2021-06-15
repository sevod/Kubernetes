#!/bin/bash

mysqld -u root &
sleep 5

#wordpress-SQL
#echo "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;" | mysql -u root --skip-password
echo "source /localhost.sql;" | mysql -u root --skip-password
#echo "GRANT ALL ON wordpress.* TO 'root'@'localhost' IDENTIFIED BY '123456';" | mysql -u root --skip-password
#echo "CREATE USER 'root'@'%' IDENTIFIED BY '123456'; GRANT ALL ON wordpress.* TO 'root'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;" | mysql -u root --skip-password
echo "CREATE USER 'root'@'%' IDENTIFIED BY '123456'; GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;" | mysql -u root --skip-password
