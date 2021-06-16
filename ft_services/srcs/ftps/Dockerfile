FROM	alpine:3.12
RUN apk update
RUN apk upgrade
RUN apk add vim bash vsftpd openssl openrc libc6-compat supervisor
#telnet
RUN apk add busybox-extras

#RUN ssh-keygen -A

COPY ./srcs/ssl /etc/ssl

RUN mkdir /ftp_anon #удалить

RUN echo -e "123456\n123456\n" | passwd

RUN mkdir -p /var/log/supervisor

COPY ./srcs/supervisord.conf /etc/supervisor/supervisord.conf

COPY ./srcs/start.sh /etc/start.sh

#COPY ./srcs/vsftpd.conf ./etc/vsftpd/vsftpd.conf

RUN chmod +x /etc/start.sh

EXPOSE 20 21 21000

#CMD bash /etc/start.sh
CMD bash