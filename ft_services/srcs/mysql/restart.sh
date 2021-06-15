docker stop mysql
#sleep 1
docker rm mysql
docker rmi mysql
docker build -t mysql .
docker run --name mysql -itd -p 3306:3306 mysql
sleep 2
docker ps -a