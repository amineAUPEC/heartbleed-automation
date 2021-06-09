##### Mise en place du serveur vulnérable :
# -  Installation de Docker

sudo apt-get update -y && apt-get install -y git 

git clone https://github.com/amineAUPEC/heartbleed-automation.git
cd heartbleed-automation
cd bash
chmod +x && ./install-docker.sh  && sudo apt-get install -y docker-compose

# - Installation du serveur vulnérable avec un docker-compose.yml
sudo apt-get update -y && apt-get install -y python
git clone https://github.com/injcristianrojas/heartbleed-example.git

cd heartbleed-example


# sudo ifdown eth0 && nano /etc/network/interfaces && sudo ifup eth0



docker-compose up -d &

### debug
ip a
# [!NOTE]
# A readme file is in : /markdown/heartbleed-example/README.md
# The project is delivered with :
# Un docker-compose pour lancer le serveur vulnérable
# Un programme pour injecter de la donnée : `stimulate_server.py`
# Un script pour exploiter : `heartbleed.py` : dump le contenu du serveur et teste si le serveur est vulnérable (outil principal)

