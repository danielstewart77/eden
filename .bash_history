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
sudo forever start /home/daniel/server.js --port 80
rm .git/index.lock 
git add eden.service
git commit -a -m "finished moisture gauge, attempted writing a service"
git push
ls /sys/bus/i2c/devices/
cd..
cd ..
ls
cd daniel/
ls /sys/bus/
ls /sys/bus/i2c/devices/
sudo nano /boot/config.txt 
sudo reboot
sudo apt-get install motion
sudo nano /etc/motion/motion.conf 
sudo nano /etc/default/motion 
sudo service motion start
sudo service motion restart
sudo service motion start
sudo nano /etc/motion/motion.conf 
sudo service motion restart
sudo nano /sys/bus/w1/devices/28-000004b0191d/w1_slave 
sudo nano /sys/bus/w1/devices/28-000004b0191d/w1_slave
sudo nano /sys/bus/w1/devices/28-000004b0191d/w1_slave 
ls
cd /
ls
cd bin/
ls
cd ..
ls
cd /usr/sbin/
ls
cd ..
ls
sudo nano /etc/motion/motion.conf 
sudo service motion restart
sudo nano /etc/motion/motion.conf 
sudo service motion restart
locate apache
sudo nano /etc/motion/motion.conf 
sudo service motion restart
sudo reboot
sudo forever start /home/daniel/server.js --port 80
sudo forever stop /home/daniel/server.js --port 80
sudo forever start /home/daniel/server.js --port 80
sudo service node restart
sudo forever stop /home/daniel/server.js --port 80
sudo nodemon server.js 
sudo nano /etc/motion/motion.conf 
sudo service motion restart
ls
sudo reboot
ls
sudo nano /etc/motion/motion.conf 
ls -l /var/lib/motion/
sudo ls -l /var/lib/motion/
sudo nano /etc/motion/motion.conf 
sudo service motion restart
ls
sudo ls -l /var/lib/motion/
npm install --save underscore
sudo ls -l /var/lib/motion/
git commit -a -m "got video working, but only with cors plugin"
git commit
git push
exit
sudo nodemon server.js 
sudo forever start /home/daniel/server.js --port 80
exit
gst-launch-1.0 --version
sudo apt-get install gstreamer
sudo apt-get install gstreamer1.0
sudo apt-get install gstreamer1.0 fix-dependencies
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get install gstreamer1.0
sudo nano /etc/apt/sources.list
sudo apt-get update
sudo apt-get install gstreamer1.0
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get install gstreamer1.0
sudo apt-get install gstreamer-tools 
sudo apt-get install gstreamer1.0
sudo apt-get install --fix-broken
sudo apt-get install gstreamer1.0
sudo apt-get install gstreamer0.10
sudo service motion restart
gstreamer --version
sudo apt-get install remove motion
sudo apt-get remove motion
sudo apt-get autoremove 
npm install --save livecam
mkdir gstreamer
cd gstreamer/
git clone git://anongit.freedesktop.org/gstreamer/gst-omx
cd gst-omx/
ls
git checkout 1.10
./autogen.sh --with-omx-header-path=/opt/vc/include/IL --with-omx-target=rpi
sudo apt-get install autoconf
./autogen.sh --with-omx-header-path=/opt/vc/include/IL --with-omx-target=rpi
cd ..
rm -R gstreamer/
sudo forever start /home/daniel/server.js --port 80
sudo forever stop /home/daniel/server.js --port 80
sudo node server.js 
exit
sudo node server.js 
sudo apt-get install gstreamer0.10-plugins-good
sudo node server.js 
gst-launch
sudo reboot
df
exit
ifconfig
sudo raspi-config
exit
ls
ls 
mkdir video
ls
gst-launch -v -v4l2src device=/dev/video0 ! video/x-raw-yuv,width=320,height=240 ! jpegenc ! filesink location=/home/daniel/video/cam.jpeg
gst-launch -v v4l2src device=/dev/video0 ! video/x-raw-yuv,width=320,height=240 ! jpegenc ! filesink location=/home/daniel/video/cam.jpeg
sudo gst-launch -v v4l2src device=/dev/video0 ! video/x-raw-yuv,width=320,height=240 ! jpegenc ! filesink location=/home/daniel/video/cam.jpeg
sudo gst-launch-0.10 -v v4l2src device=/dev/video0 ! video/x-raw-yuv,width=320,height=240 ! jpegenc ! filesink location=/home/daniel/video/cam.jpeg
sudo apt-get update
sudo apt-get upgrade
sudo gst-launch-0.10 -v v4l2src device=/dev/video0 ! video/x-raw-yuv,width=320,height=240 ! jpegenc ! filesink location=/home/daniel/video/cam.jpeg
sudo reboot
sudo forever stop /home/daniel/server.js --port 80
sudo forever start /home/daniel/server.js --port 80
sudo forever stop /home/daniel/server.js --port 80
sudo node server.js 
cd /
ls
cd /etc/
ls
sudo apt-get install locate
locate v4l
locate
locate --help
locate v4lsrc
cd ..
locate v4lsrc
locate v4l
locate v4l*
locate daniel
locate -m
ls
cd lib/
ls
cd ..
ls
cd /var/
ls
cd ..
ls
sudo apt-get remove locate
cd /home/daniel/
ls
sudo node server.js 
kdir video
sudo node server.js 
ls
ls video/
sudo node server.js 
ls video/
ls -l video/
sudo node server.js 
rm video/cam.jpeg 
sudo node server.js 
sudo node server.js 
sudo gst-launch-0.10 -v v4l2src device=/dev/video0 ! video/x-raw-yuv,width=320,height=240 ! jpegenc ! filesink location=/home/daniel/video/cam.jpeg
sudo gst-launch-0.10 -v v4l2src device=/dev/video0 ! video/x-raw-yuv,width=320,height=240 ! jpegenc ! filesink location=/home/daniel/video/cam.mpeg
sudo gst-launch-0.10 -v v4l2src device=/dev/video0 ! video/x-raw-yuv,width=320,height=240 ! mpegenc ! filesink location=/home/daniel/video/cam.mpeg
sudo gst-launch-0.10 -v v4l2src device=/dev/video0 ! mp4mux name=mux ! filesink location=/home/daniel/video/cam.mp4
sudo reboot
sudo node server.js 
ls
ls -l
ls -l controls/
ls -l css/
sudo node server.js 
sudo shoutdown -h now
sudo shutdown -h now
sudo node server.js 
sudo forever start /home/daniel/server.js --port 80
sudo node server.js 
sudo forever stop /home/daniel/server.js --port 80
sudo node server.js 
service eden start
sudo service eden start
sudo service eden stop
sudo forever stop /home/daniel/server.js --port 80
sudo forever start /home/daniel/server.js --port 80
sudo forever stop /home/daniel/server.js --port 80
sudo journalctl -u eden.service
ls /usr/bin/nodejs 
ls -l /usr/bin/nodejs 
ls -l /usr/bin/node
ln -s /usr/bin/nodejs /usr/bin/node
sudo nano /etc/systemd/system/eden.service 
ls -l /usr/bin/node
sudo journalctl -u eden.service
ls -l /usr/bin/node
ls -l /usr/bin/node/
ln -s /usr/bin/nodejs /usr/bin/node
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo cp /usr/bin/nodejs * /usr/bin/node
sudo cp eden.service /etc/systemd/system/
sudo journalctl -u eden.service
sudo cp eden.service /etc/systemd/system/
sudo journalctl -u eden.service
sudo cp eden.service /etc/systemd/system/
sudo journalctl -u eden.service
sudo cp eden.service /etc/systemd/system/
sudo journalctl -u eden.service
sudo service eden start
sudo node server.js 
