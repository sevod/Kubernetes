# Kubernetes

К сожалению этот проект не закончен в связи с изменением плана обучения и замены его на другой. На данный момент почти полностью настроены все докер контейнеры. Необходимо написать yaml - файлы для Kubernetes и донастроить контейнеры уже в самом Kubernetes. А также стартовый скрипт всего проекта.

Проект "Школы 21" Ft_services. Задание на проект находится в файле ft_services.en.subject.pdf. Проект для сдачи находится в папке ft_services. Все остальное использовалось для обучения. Для запуска проекта нужно запустить файл setup.sh. Предварительно должен быть установлен Kubernetes.

## Конспект

Будем работать через миникуб.

Minikube — это инструмент, позволяющий легко запускать Kubernetes на локальной машине. 
Для тех, кто хочет попробовать Kubernetes или рассмотреть возможность его использования в повседневной разработке, 
Minikube станет отличным вариантом, потому что он запускает одноузловой кластер Kubernetes внутри виртуальной машины (VM) 
на компьютере пользователя.

## Установка Minikube
https://kubernetes.io/ru/docs/tasks/tools/install-minikube/

##### Установка двоичного файла kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

chmod +x ./kubectl

sudo mv ./kubectl /usr/local/bin/kubectl

##### Установка Hypervisor (VirtualBox)

sudo apt-get install virtualbox

##### Установка Minikube
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube

sudo mkdir -p /usr/local/bin/

sudo install minikube /usr/local/bin/

Проверка установки

minikube start --vm-driver=virtualbox

minikube start

minikube status

minikube stop

minikube delete //эта команда нужна если не стартует, что бы очистить состояние

Установка завершена. Теперь вы можете работать со своим кластером через CLI-инструмент kubectl.

#### Создание и управленипе PODs
https://www.youtube.com/watch?v=kGwe8IEDiX4&t

minikube start --vm-driver=virtualbox

kubectl get nodes

kubectl get pods

kubectl run pod_name --generator=run-pod/v1 --image=docker_image_name --port=80  //ищет образ на докерхабе

kubectl describe pods name_pod

kubectl delete pods name_pod

kubectl exec pod_name date //получить дату 

kubectl exec -it pod_name sh //подключиться к консоли докер контейнера

kubectl logs pod_name 

kubectl port-forward pod_name my_port:pod_port
kubectl port-forward hello 8080:80

````
apiVersion : v1
kind: Pod
metadata:
name: my-web
spec:
containers:
- name : container-apache
image: nginx
````

sudo usermod -aG docker ${USER}

su - ${USER}

eval $(minikube docker-env) //тут могут проблемы из за суда. помогут две команды выше.

kubectl apply -f file_name 

##### включаем metallb
minikube addons enable metallb

##### Посмотреть данные
minikube dashboard


## простой запуск деплоймента
активируем metallb
minikube addons enable metallb
minikube addons disable metallb

запускаем его конфиг
kubectl apply -f configmap.yaml 

Запускаем наш деплоймент
kubectl apply -f deploy_myweb_v1.yaml

docker inspect cont_name

### Запуск mini


  





