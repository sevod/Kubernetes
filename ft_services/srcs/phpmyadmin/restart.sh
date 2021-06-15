docker stop phpmyadmin
#sleep 1
docker rm phpmyadmin
docker rmi phpmyadmin
docker build -t phpmyadmin .
docker run --name phpmyadmin -itd -p 5000:5000 phpmyadmin
sleep 2
docker ps -a