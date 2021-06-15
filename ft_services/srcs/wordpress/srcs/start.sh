#!/bin/bash

#service php7.3-fpm start
#service mysql start

#wordpress
unzip /wordpress-5.6.zip
mkdir /var/www/html/wordpress
cp -R /wordpress/* /var/www/html/wordpress
rm -Rf /wordpress-5.6.zip
rm -Rf /wordpress

service nginx start

bash

