docker stop ftps
docker rm ftps
docker rmi ftps
docker build -t ftps .
docker run --name ftps -itd -p 21:21 -p 30021:30021 ftps
docker exec -it ftps sh