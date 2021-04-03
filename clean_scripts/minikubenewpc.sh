pc_name=$HOSTNAME
echo "Make  minikube for $pc_name" | sed 's/.kzn.21-school.ru//'
if brew ls --versions > /dev/null; then
	echo "start"
	cd ~
else
	echo "Need to run"
	curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh
	cd ~
fi
minikube delete
rm -rf ~/.minikube
rm -rf ~/goinfre/.minikube
brew remove minikube
brew install minikube
cd ~
brew unlink minikube
brew link minikube
mkdir -p .minikube
mv .minikube ./goinfre
ln -s ./goinfre/.minikube .minikube
minikube start --vm-driver=virtualbox
