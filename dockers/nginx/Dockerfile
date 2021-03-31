FROM	alpine:latest
RUN apk update
RUN apk upgrade
RUN apk add vim bash nginx openssl openssh
#RUN apk add bash
#RUN apk add nginx
#RUN apk add openssh
RUN ssh-keygen -A
RUN mkdir /run/nginx
RUN touch /run/nginx/nginx.pid
COPY ./ssl /etc/nginx/ssl
EXPOSE 80 443
ENTRYPOINT nginx -g 'daemon off;' /usr/sbin/sshd -D