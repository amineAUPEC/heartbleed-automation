#!/bin/bash

if [ $EUID -eq 0 ]
then
  echo "Ne doit pas être exécuté en tant que root"
  exit
fi

sudo apt-get update -y
# Paquetages dont Docker a besoin
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common

# Clé du dépôt Docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# Ajout du dépôt Docker
echo "deb [arch=amd64] https://download.docker.com/linux/debian/ stretch stable" | sudo tee -a /etc/apt/sources.list

# Installation de Docker
sudo apt-get update -y
sudo apt-get install -y docker-ce
curl www.google.fr