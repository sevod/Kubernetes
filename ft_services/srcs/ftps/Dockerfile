FROM alpine:3.12

RUN apk update
RUN apk upgrade
RUN apk add vim bash vsftpd openssl

RUN echo -e "123456\n123456\n" | passwd

COPY ./srcs/ssl /etc/ssl
COPY ./srcs/vsftpd.conf /etc/vsftpd
COPY ./srcs/start.sh /

EXPOSE 21 30021

ENTRYPOINT bash start.sh
