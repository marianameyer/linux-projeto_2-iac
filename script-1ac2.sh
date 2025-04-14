#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando o Apache 2..."
apt-get install apache2 -y

echo "Instalando o unzip..."
apt-get install unzip -y

echo "Baixando a aplicação..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo..."
unzip main.zip

echo "Abrindo diretório e copiando arquivos para a pasta..."
cd linux-site-dio-main
cp -R * /var/www/html

echo "Fim"

