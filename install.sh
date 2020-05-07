!/bin/sh

# This is the Pool install script.
echo "Pool install script."
echo "Please do NOT run as root, run as the pool user!"

echo "Installing... Please wait!"

sleep 3

sudo rm -rf /usr/lib/node_modules
sudo apt remove --purge -y nodejs node
sudo rm /etc/apt/sources.list.d/nodesource.list*
sudo apt update
sudo add-apt-repository -y ppa:chris-lea/redis-server
sudo add-apt-repository -y ppa:bitcoin/bitcoin

sudo apt update
sudo apt upgrade -y

sudo apt install -y git nano wget curl ntp build-essential libtool autotools-dev autoconf pkg-config libssl-dev libboost-all-dev git libminiupnpc-dev redis-server software-properties-common fail2ban libdb4.8-dev libdb4.8++-dev
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

sudo systemctl enable redis-server && sudo systemctl start redis-server && sudo systemctl enable ntp && sudo systemctl start ntp

sudo rm -rf ~/.nvm
sudo rm -rf ~/.npm
sleep 3
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | sudo bash
sleep 2
source ~/.bashrc
sudo chown -R $USER:$GROUP ~/.nvm
sleep 3
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
sleep 2
nvm install v8.1.4
nvm use v8.1.4
npm update -g

npm install -g pm2@latest
npm install -g npm@latest

npm install
npm update
npm audit fix
npm install sha3

#./start-pool.sh

echo "Installation completed!"

exit 0
