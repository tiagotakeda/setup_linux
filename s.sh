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
