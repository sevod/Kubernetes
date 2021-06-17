FROM alpine:3.12

RUN apk update
RUN apk upgrade
RUN apk add vim bash influxdb
#telnet
RUN apk add busybox-extras

COPY ./srcs/start.sh /start.sh
RUN chmod +x start.sh

RUN ./start.sh

EXPOSE 8086

CMD influxd