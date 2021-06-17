influxd &

sleep 5

echo "CREATE DATABASE influx" | influx
#echo "CREATE USER root WITH PASSWORD '123456' WITH ALL PRIVILEGES" | influx