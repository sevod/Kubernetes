#wordpress
docker stop nginx
#sleep 1
docker rm nginx
docker rmi nginx
docker build -t nginx .
docker run --name nginx -itd -p 80:80 -p 443:443 -p 22:22 nginx
sleep 2
docker ps -a
