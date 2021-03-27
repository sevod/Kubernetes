minikube start
minikube stop
minikube delete

## Hello Minikube

https://kubernetes.io/ru/docs/tutorials/hello-minikube/

Создаем два файла server.js и Dockerfile

minikube dashboard

####Создание Deployment
######создание деплоймента для управления подом
kubectl create deployment hello-node --image=k8s.gcr.io/echoserver:1.4
######Посмотреть информацию о Deployment:
kubectl get deployments
######Посмотреть информацию о поде:
kubectl get pods
######Посмотреть события кластера:
kubectl get events
######Посмотреть kubectl конфигурацию:
kubectl config view

######Сделать под доступным для публичной сети Интернет можно с помощью команды kubectl expose:
kubectl expose deployment hello-node --type=LoadBalancer --port=8080

Флаг --type=LoadBalancer показывает, что сервис должен быть виден вне кластера.

######Посмотреть только что созданный сервис:
kubectl get services

######Откроется окно браузера, в котором запущено ваше приложение и будет отображено сообщение "Hello World".
minikube service hello-node

######Освобождение ресурсов
kubectl delete service hello-node
kubectl delete deployment hello-node

minikube stop
minikube delete