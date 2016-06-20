#!/bin/bash

yum install -y curl-devel popt gmime-devel uuid-devel libtermcap-devel libxml2-devel sqlite sqlite-devel ncurses-devel mysql-devel

cd /usr/src

wget -c http://downloads.asterisk.org/pub/telephony/libpri/libpri-current.tar.gz

wget -c http://downloads.asterisk.org/pub/telephony/dahdi-linux-complete/dahdi-linux-complete-current.tar.gz

wget -c http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-1.8-current.tar.gz

wget -c http://downloads.digivoice.com.br/pub/voicerlib/linux/stable/voicerlib-4.2.5.6.tar.gz

wget -c http://downloads.digivoice.com.br/pub/dgvchannel/stable/dgvchannel-1.1.8.tar.gz



# Extra arquivos
tar zxvf libpri-current.tar.gz

tar zxvf dahdi-linux-complete-current.tar.gz

tar zxvf asterisk-1.8-current.tar.gz

tar zxvf voicerlib-4.2.5.6.tar.gz

tar zxvf dgvchannel-1.1.8.tar.gz

mv asterisk-1.8.32.3 asterisk
mv dahdi-linux-complete-2.11.1+2.11.1 dahdi-linux-complete
mv dgvchannel-1.1.8 dgvchannel
mv libpri-1.5.0 libpri
mv voicerlib-4.2.5.6 voicerlib

mkdir asterisk_package

mv libpri-current.tar.gz asterisk_package

mv dahdi-linux-complete-current.tar.gz asterisk_package

mv asterisk-1.8-current.tar.gz asterisk_package

mv voicerlib-4.2.5.6.tar.gz asterisk_package

mv dgvchannel-1.1.8.tar.gz asterisk_package



