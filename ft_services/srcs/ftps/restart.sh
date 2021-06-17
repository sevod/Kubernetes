docker stop ftps
docker rm ftps
docker rmi ftps
docker build -t ftps .
docker run --name ftps -itd -p 21:21 -p 21000:21000 ftps
docker ps -a
#docker exec -it ftps bash