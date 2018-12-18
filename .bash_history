sudo node --version
top
sudo apt-get update
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo reboot
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
uname -m
sudo apt-get install -y nodejs
node -v
sudo node --version
wget http://node-arm.herokuapp.com/node_latest_armhf.deb
sudo dpkg -i node_latest_armhf.deb 
node -v
node /home/pi/spi/spi_gpio.js 
sudo apt-get install ntfs-3g
sudo fdisk -l
cd ..
ls -l
cd daniel/
id -g daniel
id -u daniel
sudo apt-get install samba samba-common-bin 
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.old
sudo nano /etc/samba/smb.conf
sudo /etc/init.d/samba restart
sudo smbpasswd -a daniel
sudo reboot
cd /media/
la
ls
mkdir eden
sudo mkdir eden
sudo nano /etc/samba/smb.conf
sudo /etc/init.d/samba restart
ls
ls -l
sudo chown daniel:daniel eden/ -R
ls -l
sudo nano /etc/samba/smb.conf
sudo /etc/init.d/samba restart
sudo reboot
ls
sudo node server.js 
ls
nano package.json 
sudo node server.js 
npm install --save highcharts
ls node_modules/
npm install --save highcharts
sudo node server.js 
git commit -a -m "got 1st gauge working, working on a better one"
git push
sudo node server.js 
npm install --save jscharting
exit
sudo raspi-config
clear
ifconfig
exit
sudo node server.js 
sudo nodemon ./server.js 
nodemon ./server.js 
cp eden.service /etc/systemd/system
sudo cp eden.service /etc/systemd/system
systemctl start eden
exitservice 
service 
clear
seexit
exit
cd node_modules/
ls
mv angular angular-fu
mv angularjs angularjs-fu
mv angularjs-gauge/ angularjs-gauge-fu
ls
mv define-property/ define-property-fu
mv highcharts/ highcharts-fu
mv ngx-gauge/ ngx-gauge-fu
mv pi-gpio/ pi-gpio-fu
rm angular
rm angular -R
rm angular-fu/ -R
ls
rm angularjs-fu/ -R
rm angularjs-gauge-fu/ -R
rm define-property-fu/ -R
rm highcharts-fu/ -R
rm ngx-gauge-fu/ -R
ls
rm pi-gpio-fu/ -R
ls
cd ..
npm install -g nodemon
sudo npm install -g nodemon
sudo  -i npm install forever -g
sudo forever start server.js
sudo forever stop server.js
sudo forever start server.js
sudo crontab -u root -e
sudo forever stop server.js
sudo forever start /home/daniel/server.js
sudo forever stop /home/daniel/server.js
sudo forever start /home/daniel/server.js --port 80
sudo forever stop /home/daniel/server.js --port 80
sudo forever stop /home/daniel/server.js
service eden start
journalctl -u eden
sudo journalctl -u eden
systemctl start eden
sudo journalctl -u eden
sudo systemctl start eden
sudo forever start /home/daniel/server.js --port 80
sudo shutdown -h now
