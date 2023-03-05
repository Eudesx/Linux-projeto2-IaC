#!/bin/bash

echo  "Atulizando o servidor..!"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install descompacte -y

echo  "Baixando e copiando os arquivos da aplicação..!"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
descompacte main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo  "Script finalizado."
