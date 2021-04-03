#####Скрипты очистки в папке clean_scripts
#####Переключение докера на диск мака
докер должен быть выключени, запуска следующие команды

rm -rf ~/Library/Containers/com.docker.docker
mkdir ~/goinfre/docker
ln -s ~/goinfre/docker ~/Library/Containers/com.docker.docker

запускаем докер

#####Установка миникуб
https://kubernetes.io/ru/docs/tasks/tools/install-minikube/

Убедитесь, что у вас установлен kubectl

kubectl version --client

Если у вас ещё не установлен гипервизор, установите

brew install minikube

minikube start --vm-driver=virtualbox

######Настройка виртуалбокс
/goinfre/acarmela/virtualbox

#####Очистка диска

rm -rf ~/Library/Caches/*

rm -rf ~/Library/42_cache

rm -rf ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/

rm -rf ~/Library/Application\ Support/Slack/Cache/

rm -rf ~/Library/Application\ Support/Slack/Code\ Cache/


