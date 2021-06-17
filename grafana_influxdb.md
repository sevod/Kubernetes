### Курл запрос для получения списка баз данных
curl -G http://192.168.49.101:8086/query   -u admin:admin   --data-urlencode "q=SHOW DATABASES"

### Getting started with Grafana
https://grafana.com/docs/grafana/latest/getting-started/getting-started/

### Настройка influxdb
https://linux-notes.org/ustanovka-influxdb-v-unix-linux/

### Запросы в influxdb

- подключение
`influx`
  
- создать БД
`CREATE DATABASE influx`

- создать пользователя
`CREATE USER root WITH PASSWORD '123456' WITH ALL PRIVILEGES`