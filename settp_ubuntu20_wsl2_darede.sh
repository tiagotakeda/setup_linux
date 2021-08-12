##	NET TOOLS
echo y | sudo apt install net-tools
sudo apt install openssh-server -y

##	VSCODE
sudo snap install --classic code

##	CHROME
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

##	PYTHON
echo "alias python='python3'" >> .bashrc
sudo apt install -y python3-pip
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev
sudo apt install -y python3-venv
sudo apt install python-pytest -y

##	GIT
sudo apt install git -y
git config --global user.email "tiago.a.takeda@gmail.com"
git config --global user.name "tiagotakeda"

##	DOCKER
sudo apt-get remove docker docker-engine docker.io containerd runcsudo apt-get update
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
apt-cache madison docker-ce
sudo docker run hello-world
sudo snap install docker


## MINIKUBE
sudo apt install virtualbox virtualbox-ext-pack -y
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chmod 755 /usr/local/bin/minikube


## KUBECTL
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
