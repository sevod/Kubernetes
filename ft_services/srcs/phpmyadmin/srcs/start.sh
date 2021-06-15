#!/bin/bash

#phpMyAdmin
#unzip phpMyAdmin-5.0.4-all-languages.zip
#mkdir /var/www/html/phpmyadmin/tmp
#chmod 777 /var/www/html/phpmyadmin/tmp
#cp -R phpMyAdmin-5.0.4-all-languages/* /var/www/html/phpmyadmin
#rm -Rf phpMyAdmin-5.0.4-all-languages
#rm -Rf phpMyAdmin-5.0.4-all-languages.zip

/usr/bin/supervisord -c /etc/supervisor/supervisord.conf