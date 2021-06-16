FROM	alpine:3.12
RUN apk update
RUN apk upgrade
RUN apk add vim bash nginx openssl openssh supervisor
#telnet
RUN apk add busybox-extras

RUN ssh-keygen -A
RUN mkdir /run/nginx
COPY ./srcs/ssl /etc/nginx/ssl
COPY ./srcs/index.html /var/www/index.html
COPY ./srcs/sshd_config /etc/ssh/sshd_config
COPY ./srcs/default.conf /etc/nginx/conf.d
RUN echo -e "123456\n123456\n" | passwd
RUN mkdir -p /var/log/supervisor
COPY ./srcs/supervisord.conf /etc/supervisor/supervisord.conf
COPY ./srcs/start.sh /etc/start.sh
RUN chmod +x /etc/start.sh
EXPOSE 80 443 22
CMD bash /etc/start.sh
