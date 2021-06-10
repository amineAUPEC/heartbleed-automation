##### Mise en place du serveur vulnérable :
# -  Installation de Docker

sudo apt-get update -y && sudo apt-get install -y git 

git clone https://github.com/amineAUPEC/heartbleed-automation.git
cd heartbleed-automation
cd bash
sudo chmod +x ./install-docker.sh && sudo ./install-docker.sh  && sudo apt-get install -y docker-compose

# - Installation du serveur vulnérable avec un docker-compose.yml
sudo apt-get update -y && sudo apt-get install -y python
git clone https://github.com/injcristianrojas/heartbleed-example.git

cd heartbleed-example


# sudo ifdown eth0 && nano /etc/network/interfaces && sudo ifup eth0



sudo docker-compose up -d


# - mais au préalable
    # - mise en place du serveur vulnérable depuis le serveur docker ou un autre serveur
# sudo apt-get install -y openssl  
# openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt -subj "/C=FR/ST=Vitry/L=Vitry/O=Goldorak CA/OU=Green Lantern sux/CN=127.0.0.1"
# openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330 -www



#docker-compose up 
### debug
# ip a
# [!NOTE]
# A readme file is in : /markdown/heartbleed-example/README.md
# The project is delivered with :
# Un docker-compose pour lancer le serveur vulnérable
# Un programme pour injecter de la donnée : `stimulate_server.py`
# Un script pour exploiter : `heartbleed.py` : dump le contenu du serveur et teste si le serveur est vulnérable (outil principal)

