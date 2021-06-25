docker stop ftp
docker rm ftp
docker rmi ftp
docker build -t ftp .
docker run --name ftp -itd -p 21:21 -p 20:20  -p 21000:21000 ftp
docker ps -a
#docker exec -it ftp bash