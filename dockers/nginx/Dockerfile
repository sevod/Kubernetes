FROM	alpine

RUN apk update
RUN apk add vim
RUN apk add bash
RUN apk add nginx
RUN mkdir /run/nginx
RUN touch /run/nginx/nginx.pid
COPY ./ssl /etc/nginx/ssl
ENTRYPOINT nginx -g 'daemon off;'

