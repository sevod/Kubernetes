FROM alpine:3.12

RUN apk update
RUN apk upgrade
RUN apk add vim bash
#telnet
RUN apk add busybox-extras

#admin:123456

RUN apk add grafana --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/
#RUN apk add grafana --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted --no-cache

#grafana-server --config=/etc/grafana.ini --homepath=/usr/share/grafana

#RUN wget https://dl.grafana.com/oss/release/grafana-8.0.2.linux-amd64.tar.gz
#RUN tar -zxvf grafana-8.0.2.linux-amd64.tar.gz

COPY ./srcs/grafana.db /usr/share/grafana/data/grafana.db

WORKDIR /usr/share/grafana

EXPOSE 3000

CMD grafana-server