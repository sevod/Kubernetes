docker stop grafana
#sleep 1
docker rm grafana
docker rmi grafana
docker build -t grafana .
docker run --name grafana -itd -p 3000:3000 grafana
sleep 2
docker ps -a
docker exec -it grafana bash