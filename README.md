#Galahash yiimp fork
Use install script


	
http://www.yiiframework.com/
Credits:

Thanks to globalzon to have released the initial Yaamp source code.
Thanks to tpruvot (Yiimp Author) BTC : 1Auhps1mHZQpoX4mCcVL8odU81VakZQ6dR

Yiimp_install_scrypt (update May 05, 2018)
Discord : https://discord.gg/zcCXjkQ

TUTO Youtube : https://www.youtube.com/watch?v=vdBCw6_cyig

Official Yiimp (used in this script for Yiimp Installation): https://github.com/tpruvot/yiimp

Install script for yiimp on Ubuntu 16.04
USE THIS SCRIPT ON FRESH INSTALL UBUNTU 16.04 !

Connect on your VPS =>

adduser pool
adduser pool sudo
su - pool
sudo apt-get -y install git
git clone https://github.com/xavatar/yiimp_install_scrypt.git
cd yiimp_install_scrypt/
sudo bash install.sh (Do not run the script as root)
sudo bash screen-scrypt.sh (in tuto youtube, i launch the scrypt with root... it does not matter)
NOT MANDATORY => sudo bash screen-stratum.sh (CONFIGURE BEFORE START this script... add or remove algo you use).
Finish ! Go http://xxx.xxxxxx.xxx or https://xxx.xxxxxx.xxx (if you have chosen LetsEncrypt SSL). Enjoy !

‼️ YOU MUST UPDATE THE FOLLOWING FILES :
/var/web/serverconfig.php : update this file to include your public ip (line = YAAMP_ADMIN_IP) to access the admin panel (Put your PERSONNAL IP, NOT IP of your VPS). update with public keys from exchanges. update with other information specific to your server..
/etc/yiimp/keys.php : update with secrect keys from the exchanges (not mandatory)
‼️ IMPORTANT :
The configuration of yiimp and coin require a minimum of knowledge in linux
Your mysql information (login/Password) is saved in ~/.my.cnf
If you reboot your VPS, you must restart screen-scrypt.sh (or add crontab)
Remember to restart memcached service after the db change (update or import new .sql)
This script has an interactive beginning and will ask for the following information :
Enter time zone
Server Name
Are you using a subdomain
Enter support email
Set stratum to AutoExchange
New location for /site/adminRights
Your Public IP for admin access (Put your PERSONNAL IP, NOT IP of your VPS)
Install Fail2ban
Install UFW and configure ports
Install LetsEncrypt SSL
This install script will get you 95% ready to go with yiimp. There are a few things you need to do after the main install is finished.

While I did add some server security to the script, it is every server owners responsibility to fully secure their own servers. After the installation you will still need to customize your serverconfig.php file to your liking, add your API keys, and build/add your coins to the control panel.