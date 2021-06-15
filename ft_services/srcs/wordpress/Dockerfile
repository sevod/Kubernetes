FROM	alpine:3.12
RUN apk update
RUN apk upgrade
RUN apk add vim bash nginx
RUN apk add php7 php7-fpm php7-mysqli php7-mbstring php7-json php7-session
#telnet
RUN apk add busybox-extras

RUN echo -e "123456\n123456\n" | passwd

COPY /srcs/start.sh start.sh
RUN /srcs/chmod +x /start.sh
EXPOSE 5050

CMD start.sh

#------------------------------------
#
#FROM debian:buster
#
#RUN apt-get update
#RUN apt-get install -y nginx
#RUN apt-get install -y php-fpm
#RUN apt-get install -y php-mysql
#RUN apt-get install -y php-mbstring
#RUN apt-get install -y default-mysql-server
#RUN apt-get install -y zip
#RUN apt-get install -y openssl
#ADD https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.zip /
#ADD https://wordpress.org/wordpress-5.6.zip /
#
#RUN apt-get install -y vim
#RUN apt-get install -y procps
#
#COPY ./srcs/default /etc/nginx/sites-enabled/default
#COPY ./srcs/start_script.sh start_script.sh
#COPY ./srcs/localhost.sql localhost.sql
#COPY ./srcs/ssl /etc/nginx/ssl
#
#EXPOSE 80 443
#
#CMD bash start_script.sh
#
#COPY ./srcs/wp-config.php /var/www/html/wordpress/wp-config.php
#COPY ./srcs/config.inc.php /var/www/html/wordpress/phpmyadmin/config.inc.php