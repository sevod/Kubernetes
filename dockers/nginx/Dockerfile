FROM	alpine:3.12
RUN apk update
RUN apk upgrade
RUN apk add vim bash nginx openssl openssh supervisor
#RUN apk add bash
#RUN apk add nginx
#RUN apk add openssh
RUN ssh-keygen -A
RUN mkdir /run/nginx
#RUN touch /run/nginx/nginx.pid
COPY ./ssl /etc/nginx/ssl
COPY ./sshd_config /etc/ssh/sshd_config
RUN echo -e "123456\n123456\n" | passwd
RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/supervisord.conf
COPY start.sh /etc/start.sh
RUN chmod +x /etc/start.sh
EXPOSE 80 443 22
#ENTRYPOINT ["/usr/bin/supervisord -c /etc/supervisor/supervisord.conf"]
ENTRYPOINT ["/etc/start.sh"]
#ENTRYPOINT nginx -g 'daemon off;'
