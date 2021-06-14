#!/bin/bash

mysqld -u root

#wordpress-SQL
#echo "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;" | mysql -u root --skip-password
echo "source /localhost.sql;" | mysql -u root --skip-password
echo "GRANT ALL ON wordpress.* TO 'root'@'localhost' IDENTIFIED BY '123456';" | mysql -u root --skip-password