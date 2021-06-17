docker stop influxdb
#sleep 1
docker rm influxdb
docker rmi influxdb
docker build -t influxdb .
docker run --name influxdb -itd -p 8086:8086 influxdb
sleep 2
docker ps -a
docker exec -it influxdb bash