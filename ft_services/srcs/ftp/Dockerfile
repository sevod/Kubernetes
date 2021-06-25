FROM alpine:3.12

RUN apk update
RUN apk upgrade
RUN apk add vim bash vsftpd openssl

RUN adduser -D ftpsecure -s=/sbin/nologin
RUN echo -e "123456\n123456\n" | passwd ftpsecure
RUN echo -e "123456\n123456\n" | passwd

#COPY ./srcs/ssl /etc/ssl
#RUN mkdir -p /var/ftp/anon_upload
#RUN chown nobody:nogroup /var/ftp/pub
#RUN chown nobody:nogroup /var/ftp/anon_upload
#RUN chown ftp:root /var/ftp/anon_upload
#RUN chmod 0777 /var/ftp/anon_upload

RUN echo "ftp test" >> /home/ftpsecure/test.txt

COPY ./srcs/vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY ./srcs/start.sh /

EXPOSE 20 21 21000

ENTRYPOINT bash start.sh
