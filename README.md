# rvn-kawpow-pool
Highly Efficient mining pool for Raven coin kawpow algo!

-------
### Screenshots
#### Home<br />
![Home](https://raw.githubusercontent.com/EasyX-Community/EasyNOMP/master/docs/screenshots/home.png)

#### Pool Stats<br />
![Pool Stats](https://raw.githubusercontent.com/EasyX-Community/EasyNOMP/master/docs/screenshots/poolstats.png)<br /><br />

#### Miner Stats<br />
![Miner Stats](https://raw.githubusercontent.com/EasyX-Community/EasyNOMP/master/docs/screenshots/minerstats.png)<br /><br />

#### Block Explorer<br />
![Block Explorer](https://raw.githubusercontent.com/EasyX-Community/EasyNOMP/master/docs/screenshots/blockexplorer.png)<br /><br />

-------
### Node Open Mining Portal consists of 3 main modules:
| Project | Link |
| ------------- | ------------- |
| [EasyNOMP](https://github.com/EasyX-Community/EasyNOMP) | https://github.com/EasyX-Community/EasyNOMP |
| [Stratum Pool](https://github.com/RavenCommunity/kawpow-stratum-pool) | https://github.com/RavenCommunity/kawpow-stratum-pool |
| [Node Multihashing](https://github.com/EasyX-Community/node-multi-hashing) | https://github.com/EasyX-Community/node-multi-hashing |

### Watch setup guide video on YouTube channel

https://www.youtube.com/watch?v=NOjPFZk4sp0

-------
### Requirements
***NOTE:*** _These requirements will be installed in the install section!_<br />
* Ubuntu Server 18.04.* LTS
* Coin daemon
* Node Version Manager
* Node 8.1.4
* Process Manager 2 / pm2
* Redis Server
* ntp

-------

### Install Coin Daemon

    adduser pool
    usermod -aG sudo pool
    su - pool
    sudo apt install wget
    wget https://github.com/RavenProject/Ravencoin/releases/download/v4.1.0/raven-4.1.0.0-x86_64-linux-gnu.tar.gz
    tar -xf raven-4.1.0.0-x86_64-linux-gnu.tar.gz
    rm raven*gz
    cd raven-4.1.0.0/bin
    mkdir -p ~/.raven/
    touch ~/.raven/raven.conf
    echo "rpcuser=user1" > ~/.raven/raven.conf
    echo "rpcpassword=pass1" >> ~/.raven/raven.conf
    echo "prune=550" >> ~/.raven/raven.conf
    echo "daemon=1" >> ~/.raven/raven.conf
    ./ravend
    ./raven-cli getnewaddress

Example output: RKopFydExeQXSZZiSTtg66sRAWvMzFReUj - it is the address of your pool, you need to remember it and specify it in the configuration files.
    
    ./raven-cli getaddressesbyaccount ""
    
Information about pool wallet address.
    
    ./raven-cli getwalletinfo
    
Get more information.

    ./raven-cli getblockcount
    
Information about synchronization of blocks in the main chain. Everything should be fully synchronized before mining starts.

    ./raven-cli help
Other helpfull commands.

-------

### Install Pool

    sudo apt install git
    cd ~
    git config --global http.https://gopkg.in.followRedirects true
    git clone https://github.com/notminerproduction/rvn-kawpow-pool.git
    cd rvn-kawpow-pool/
    ./install.sh

-------
### Configure Pool

    cd /pool

### Run Pool
    
    cd ~/rvn-kawpow-pool
    ./pool-start.sh
    

### Donates


BTC: `1NRXddRwZSXVQ8NBdgiwv5DsJn2bmHenu6`

LTC: `LcghtmAVSi94FHrn4xbbSd4nFChWy6QUng`

ETH: `0x85c5e7db222705da939174cf435d8836423a03e8`

ETC: `0xc8efe17161b98a5fd860e7e6e51d53083265d966`

-------
