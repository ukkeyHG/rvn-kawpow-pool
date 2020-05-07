!/bin/sh

# This is the Pool install script.
echo "Pool install script."
echo "Please do NOT run as root, run as the pool user!"

echo "Installing... Please wait!"

sleep 3

sudo rm -rf /usr/lib/node_modules
sudo apt remove --purge -y nodejs
sudo rm /etc/apt/sources.list.d/nodesource.list*
sudo apt update
sudo add-apt-repository -y ppa:chris-lea/redis-server
sudo add-apt-repository -y ppa:bitcoin/bitcoin
sudo curl -sL https://deb.nodesource.com/setup_8.x | sudo bash -

sudo apt update
sudo apt upgrade -y

sudo apt install -y git nano wget curl ntp build-essential libtool autotools-dev autoconf pkg-config libssl-dev libboost-all-dev git npm nodejs nodejs-legacy libminiupnpc-dev redis-server software-properties-common fail2ban libdb4.8-dev libdb4.8++-dev
sudo apt install nodejs
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

sudo systemctl enable redis-server
sudo systemctl start redis-server

sudo systemctl enable ntp
sudo systemctl start ntp

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.bashrc

nvm install v8.1.4
nvm use v8.1.4
sudo npm update -g

sudo npm install -g pm2@latest
sudo npm install -g npm@latest

sudo npm install
sudo npm update
sudo npm audit fix
sudo npm install sha3

#./start-pool.sh


echo "Installation completed!"

exit 0
