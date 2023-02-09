#!/bin/bash

echo "Atualizando sistema"
apt-get update && apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Descompactando html"
cd /tmp
wget https://github.com/denilsonbonnati/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando html para servidor"
cd linux-site-dio-main
cp -R * /var/www/html

