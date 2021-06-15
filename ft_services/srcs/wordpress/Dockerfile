FROM	alpine:3.12
RUN apk update
RUN apk upgrade
RUN apk add vim bash nginx supervisor
RUN apk add php7 php7-fpm php7-ldap php7-iconv php7-mbstring php7-mysqli php7-curl php7-gd php7-json
RUN apk add php7-soap php7-xml php7-xmlrpc php7-session php7-ctype php7-zlib php7-opcache libc6-compat
#telnet
RUN apk add busybox-extras

RUN mkdir /run/nginx
RUN echo -e "123456\n123456\n" | passwd
RUN mkdir -p /var/log/supervisor

COPY srcs/wordpress-5.6.zip /
RUN unzip /wordpress-5.6.zip
RUN mkdir /var/www/html
RUN mkdir /var/www/html/wordpress
RUN cp -R /wordpress/* /var/www/html/wordpress
RUN rm -Rf /wordpress-5.6.zip
RUN rm -Rf /wordpress

COPY ./srcs/default.conf /etc/nginx/conf.d/default.conf

COPY ./srcs/wp-config.php /var/www/html/wordpress/wp-config.php

COPY srcs/supervisord.conf /etc/supervisor/supervisord.conf
COPY srcs/start.sh /etc/start.sh

RUN chmod +x /etc/start.sh
EXPOSE 5050

ENTRYPOINT ["/etc/start.sh"]

