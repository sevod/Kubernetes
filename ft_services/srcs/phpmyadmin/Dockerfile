FROM alpine:3.12

RUN apk update
RUN apk upgrade
RUN apk add vim bash
RUN apk add php7 php7-fpm php7-mysqli php7-mbstring php7-json php7-session
RUN apk add busybox-extras #telnet

RUN echo -e "123456\n123456\n" | passwd

ADD https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.zip /

COPY ./srcs/config.inc.php /var/www/html/phpmyadmin/config.inc.php

COPY srcs/start.sh start.sh
RUN chmod +x start.sh

EXPOSE 5000
CMD bash start.sh



