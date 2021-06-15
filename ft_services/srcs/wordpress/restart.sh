#wordpress
docker stop wp
#sleep 1
docker rm wp
docker rmi wp
docker build -t wp .
docker run --name wp -itd -p 5050:5050 wp
sleep 2
docker ps -a