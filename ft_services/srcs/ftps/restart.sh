#wordpress
docker stop ftps
#sleep 1
docker rm ftps
docker rmi ftps
docker build -t ftps .
docker run --name ftps -itd -p 20:20 -p 21:21 -p 30020:30020  -p 30021:30021 ftps
sleep 2
docker ps -a