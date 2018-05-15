#!/bin/bash

    git clone https://github.com/tpruvot/yiimp.git testyiimp
    cd $HOME/testyiimp/blocknotify
    sudo sed -i 's/tu8tu5/'$blckntifypass'/' blocknotify.cpp
    sudo make
    cd $HOME/testyiimp/stratum/iniparser
    sudo make
    cd $HOME/testyiimp/stratum
    sudo make
    cd $HOME/testyiimp/stratum
    sudo cp -a config.sample/. /var/stratum/config
    sudo cp -r stratum /var/stratum
    cd $HOME/testyiimp
    sudo cp -r $HOME/testyiimp/bin/. /bin/
    sudo cp -r $HOME/testyiimp/blocknotify/blocknotify /usr/bin/
    sudo cp -r $HOME/testyiimp/blocknotify/blocknotify /var/stratum/
    #fixing yiimp
    sudo sed -i "s|ROOTDIR=/data/yiimp|ROOTDIR=/var|g" /bin/yiimp
    #fix db user in configs
    cd /var/stratum/config
    sudo sed -i 's/password = tu8tu5/password = 'B7EWUhvrm5m6yrrBweSTQOlQbzXsLadb'/g' *.conf
    sudo sed -i 's/server = yaamp.com/server = 'galahas.com'/g' *.conf
    sudo sed -i 's/host = yaampdb/host = localhost/g' *.conf
    sudo sed -i 's/database = yaamp/database = yiimpfrontend/g' *.conf
    sudo sed -i 's/username = root/username = stratum/g' *.conf
    sudo sed -i 's/password = patofpaq/password = 'fj253j3jf83jaPDld92'/g' *.conf
