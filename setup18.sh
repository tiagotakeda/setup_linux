echo 326159 | sudo apt-get update
sudo apt-get upgrade -y
sudo ubuntu-drivers autoinstall

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

##	SPOTIFY
sudo snap install spotify

##	DISCORD
sudo snap install discord

##	ZOOM
cd ~/Downloads
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install -y ./zoom_amd64.deb

##	STEAM
echo yes | sudo add-apt-repository multiverse
sudo apt-get update
sudo apt install steam -y

##  BRAVE
sudo apt install -y apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y




##  PROTONVPN
sudo apt-get install openvpn -y
sudo apt-get install network-manager-openvpn-gnome -y
sudo apt install resolvconf -y
sudo apt install -y openvpn dialog python3-pip python3-setuptools
sudo pip3 install protonvpn-cli

##  CALIBRE
sudo apt install calibre -y

##  FREECAD
echo yes | sudo add-apt-repository ppa:freecad-maintainers/freecad-stable
sudo apt install freecad -y



##  VIRTUALBOX
sudo apt install virtualbox virtualbox-ext-pack -y

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

##	WEBODM
sudo apt update
sudo apt-get upgrade -y
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG takeda
sudo apt install -y git python python-pip

##	ROS MELODIC
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
sudo apt install ros-melodic-desktop-full -y
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential -y
sudo apt install python-rosdep -y
sudo rosdep init
rosdep update


##	MAVROS
# Instala MAVROS
sudo apt-get install ros-noetic-mavros ros-melodic-noetic-extras -y

# Instala geographiclib
wget https://raw.githubusercontent.com/mavlink/mavros/master/mavros/scripts/install_geographiclib_datasets.sh
sudo bash ./install_geographiclib_datasets.sh
rm ./install_geographiclib_datasets.sh

##	FIRMWARE
cd
mkdir ~/src
cd ~/src

# Clona o firmware
git clone https://github.com/Skyrats/Firmware.git --recursive

sudo apt install libgstreamer1.0-dev -y
sudo apt install gstreamer1.0-plugins-good -y
sudo apt install gstreamer1.0-plugins-bad -y
sudo apt install gstreamer1.0-plugins-ugly -y

# Executa o ubuntu.sh (demora pra caramba)
cd ~/src/Firmware/Tools/setup
./ubuntu.sh


