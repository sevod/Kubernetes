FROM	alpine:3.12

RUN apk update
RUN apk upgrade
RUN apk add vim bash
RUN apk add mysql mysql-client

COPY srcs/my.cnf /etc/my.cnf
COPY srcs/localhost.sql localhost.sql
COPY srcs/start.sh start.sh
RUN chmod +x start.sh

RUN mkdir /run/mysqld
RUN mariadb-install-db -u root

EXPOSE 3306

CMD bash start.sh