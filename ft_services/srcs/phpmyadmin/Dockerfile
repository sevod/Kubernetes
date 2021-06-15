FROM alpine:3.12

RUN apk update
RUN apk upgrade
RUN apk add vim bash nginx supervisor
RUN apk add php7 php7-fpm php7-mysqli php7-mbstring php7-json php7-session
RUN apk add php7 php7-fpm php7-ldap php7-iconv php7-mbstring php7-mysqli php7-curl php7-gd php7-json
RUN apk add php7-soap php7-xml php7-xmlrpc php7-session php7-ctype php7-zlib php7-opcache libc6-compat
#telnet
RUN apk add busybox-extras

RUN mkdir /run/nginx
RUN echo -e "123456\n123456\n" | passwd
RUN mkdir -p /var/log/supervisor

COPY ./srcs/default.conf /etc/nginx/conf.d/default.conf
COPY ./srcs/phpMyAdmin-5.0.4-all-languages.zip /
COPY ./srcs/config.inc.php /var/www/html/phpmyadmin/config.inc.php
COPY ./srcs/supervisord.conf /etc/supervisor/supervisord.conf

RUN unzip phpMyAdmin-5.0.4-all-languages.zip
RUN mkdir /var/www/html/phpmyadmin/tmp
RUN chmod 777 /var/www/html/phpmyadmin/tmp
RUN cp -R phpMyAdmin-5.0.4-all-languages/* /var/www/html/phpmyadmin
RUN rm -Rf phpMyAdmin-5.0.4-all-languages
RUN rm -Rf phpMyAdmin-5.0.4-all-languages.zip

COPY ./srcs/start.sh start.sh
RUN chmod +x start.sh

EXPOSE 5000
CMD bash start.sh



