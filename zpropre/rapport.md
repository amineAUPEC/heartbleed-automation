###### snorthelp
-c <rules> Use Rules File <rules
-f         Turn off calls after binary log writes
-i <if>    Listen on interface <if>
-l <ld>    Log to directory <ld>

-A         Set alert mode: fast, full, console, test or none  (alert file alerts only)
<!-- -s         Log alert messages to syslog -->

-L <file>  Log to this tcpdump file

-u <uname> Run snort uid as <uname> user (or uid) after initialization
        -U         Use UTC for timestamps
        -v         Be verbose






###### splunk parsing

https://www.bing.com/search?q=sourcetype+csv+splunk&cvid=dad2d7aa4d1a4a3695410670afe6e2ac&aqs=edge..69i57.4118j0j1&pglt=643&FORM=ANNAB1&DAF0=1&PC=U531
https://docs.splunk.com/Documentation/Splunk/8.2.1/Data/Extractfieldsfromfileswithstructureddata#:~:text=Splunk%20Web%20loads%20the%20%22Set%20Source%20type%22%20page.,are%20formatted%20based%20on%20the%20current%20source%20type.



[monitor:///opt/test/data/StructuredData/CSVWithFewHeaderFieldsWithoutAnyValues.csv]
sourcetype=CSVWithFewHeaderFieldsWithoutAnyValues

[monitor:///opt/test/data/StructuredData/VeryLargeCSVFile.csv]
sourcetype=VeryLargeCSVFile




## installer splunk


Voir github voici le lien





## splunk dashboard par ports




ICMP analyse = par heure


le reste = toutes les 15 dernières minutes


earliest=-2m 2 min de décalage de tcpdump

## snort local rules


https://github.com/amineAUPEC/heartbleed-automation/blob/e74c191b1fd59251cefbc6f20719d3718d0b61f6/zpropre/snort-rules/local.rules



### heartbleed :

#HEART-BLEED-ALERTS : time of detection reduced
alert tcp any any -> any any (msg:"FOX-SRT - Flowbit - TLS-SSL Client Hello"; flow:established; dsize:< 500; content:"|16 03|"; depth:2; byte_test:1, <=, 2, 3; byte_test:1, !=, 2, 1; content:"|01|"; offset:5; depth:1; content:"|03|"; offset:9; byte_test:1, <=, 3, 10; byte_test:1, !=, 2, 9; content:"|00 0f 00|"; flowbits:set,foxsslsession; flowbits:noalert; threshold:type limit, track by_src, count 1, seconds 60; reference:cve,2014-0160; classtype:bad-unknown; sid: 21001130; rev:9;)
alert tcp any any -> any any (msg:"FOX-SRT - Suspicious - TLS-SSL Large Heartbeat Response"; flow:established; flowbits:isset,foxsslsession; content:"|18 03|"; depth: 2; byte_test:1, <=, 3, 2; byte_test:1, !=, 2, 1; byte_test:2, >, 200, 3; threshold:type limit, track by_src, count 1, seconds 600; reference:cve,2014-0160; classtype:bad-unknown; sid: 21001131; rev:5;)







## Augmentation de la taille de la partition de la VM Debian
## configuration de splunk 


cat /home/etudiant/splunk/etc/apps/search/local/inputs.conf

### ou ajout de serveur avec add monitor
sudo /opt/splunkforwarder/bin/splunk add monitor /var/log/snort/snort.log.* -index snort_alert -sourcetype snort_alert_full

### configuration de l'interface des vues, des recherches, filtres des champs par regex/délimiteurs


### possibilité d'analyser les pcaps avec splunk

### et relancer de force avec crontab




## version tls
https://github.com/amineAUPEC/heartbleed-automation/blob/e74c191b1fd59251cefbc6f20719d3718d0b61f6/cheatsheet/tls_version.md

## usage de github workflows pour une intégration CI/CD


## gestionnaire web de firewall
abandonné car snort le gère et manque de temps


# rapport





## Introduction faille Heartbleed du module Heartbeat

La faille Heartbleed, permet à des attaquants de récupérer le contenu de la RAM du serveur mais une autre variante permet de récupérer du côté du client.

Nous allons nous intéresser à la récupération du contenu de la RAM du serveur Openssl 1.0.1c, en effet avant la version 1.0.h les versions vulnérables à partir de la 1.0.1a.

Edward Snowden a fait la révélation sur cette faille que la NSA utilisée sur les sites HTTPS.
En avril 2014, le bug a été découvert, par l'équipe sécurité de Google et de l'entreprise finlandaise Codenomicon.


La vulnérabilité aurait été publiée par erreur à la suite d'une proposition de correction de bugs et d'améliorations de fonctionnalités, par un développeur bénévole. 
Le 31 décembre 2011, le code vulnérable a été ajouté dans la version 1.0.1 d'OpenSSL, le 14 mars 2012. Mais la qualité du code d'une fonction, pose problème en effet.


Cette problématique de faille de sécurité dans l'Open-Source pousse les GAFAM et grandes entreprises à investir dans un financement commun CII (Core Infrastructure Initiative)

## Scénario théorique du protocole Heartbeat


L'usage habituelle de ce protocole Heartbeat permet : A un client de vérifier que le serveur répond de manière régulière, il y a deux paramètres, le premier le nombre de caractères, et le second une chaînes de caractères par exemple un mot.



Le serveur retourne le contenu de sa RAM par rapport à ce mot. Ces échanges sont en clair car ces messages ne sont pas confidentielles.

Le but est de vérifier l'activité du serveur.





Néanmoins lors d'un usage malicieux, le fait de donner un nombre de caractères supérieur, permet de retourner le mot, or la mémoire tampon sature, (Buffer Over-Read) ce qui permet de lire le contenu d'une partie de la mémoire RAM en plus du mot retourné en fonction du nombre de caractères.


Cependant l'attaquant va répéter ce processus pour récupérer la quasi totalité de la mémoire vive (RAM).




Quant au Buffer Over-Read il est limité à une taille de 64 kB du contenu de la mémoire par message HeartBeat.

Donc : Le principe de sécurité est de toujours vérifier les données entrantes mais il n'a pas été correctement respecté ici.
Cependant la faille se base sur le fait que le serveur ne vérifie pas que l’entier correspond réellement à la taille du message.

L'attaquant envoie deux messages, il établit la connexion SSL : avec un paquet « hello », puis un paquet « heartbeat ».
Si l'exploit est un succès, on affiche le résultat du contenu de la mémoire du serveur est présenté à la manière d’un dump « hexdump ».


## Les possibilités de cet exploit sont :
De plus, il est possible de récupérer des informations sensibles comme les clefs privées associées aux certificats SSL utilisés pour chiffrer le trafic, des identifiants de connexion appartenant aux visiteurs d’un site, ou encore les en-têtes HTTP  qui contiennent les cookies de sessions ou l’authentification Basic permettant d’usurper l’identité d’un internaute.



De plus, même le gestionnaire de mot de passe Lastpass a été impacté par cette faille de la bibliothèque OpenSSL.



## La portée de l'exploit Heartbeat/Heartbleed

<!-- Le protocole TLS comprend une fonctionnalité nommée Heartbeat. Il s’agit d’un mécanisme de type « écho », qui permet à l’une des extrémités d’une communication TLS – client ou serveur – d’envoyer à l’autre un message, que l’interlocuteur doit répéter en retour. Cette fonctionnalité permet de vérifier que la connexion chiffrée est toujours active. -->

Les premières estimations sont environ 600000 serveurs vulnérables avec OpenSSL. La majorité des serveurs ont été mis à jour, les serveurs restants ont leurs certificats révoqués.


## Les bonnes pratiques pour éviter ce genre d'attaque sont : 


- De désactiver Heartbeat, si une mise à jour n'est pas possible en désactivant avec l'option ou en recompilant le programme.
- Rétrograder de version.
- Mettre à jour et révoquer les certificats OpenSSL. 
- Placer un pot de miel.
- Détecter avec un IDS/IDPS ou un analyseur de réseau pour que l'on configure le pare-feu pour bloquer les attaques.




## Mise en place du scénario général de détection et de protection
Nous lançons dans un premier temps le **serveur Splunk** pour analyser les différents logs générés par le firewall qui est aussi l'IDPS.

L'appareil firewall intègre Snort qui est un IDPS open-source, nous utilisons ces logs générés pour analyser, créer des visualisations des logs sous forme de statistiques et d'alertes.


Grâce à ce serveur Splunk, nous sommes en mesure de surveiller le trafic en un seul coup d'oeil.



Ensuite, nous lançons la collecte des données sur l'Universal Forwarder, cela permet de collecter les logs et de transmettre vers le serveur Splunk depuis l'hôte **firewall**. Splunk collecte les résultats de l'analyseur réseau tcpdump.



##  Scénario général pour exploiter la vulnérabilité Heartbleed

On lance le serveur vulnérable avec OpenSSL dans notre cas suite à des problèmes pour rétrograder, nous avons décidé de passer par un conteneur Docker. Qui intègre aussi un serveur web Apache.


Puis on lance ensuite la VM qui simule les requêtes des utilisateurs, identifiant et mot de passe qui sont envoyés au serveur. Avec un script python.



Enfin, on configure l'adresse IP de destination et on lance l'attaque : à l'aide d'un des scripts Python ou à l'aide de metasploit

Nous récupérons les requêtes du client, l'en-tête HTTPS ainsi que les identifiants échangés.

Nous remarquons que Snort détecte aussi l'attaque probable d'une faille Heartbleed.



## Les étapes sur le serveur vulnérable sont :
On installe les paquets utiles à git et on clone https://github.com/amineAUPEC/heartbleed-automation

On se déplace sur le répertoire : pour lancer docker-compose
cd /home/etudiant/heartbleed-automation/bash/heartbleed-example/
sudo docker-compose up -d
## Les étapes sur la VM injection de donnée sont :  
Dans le répertoire /home/etudiant/heartbleed-example
On lance stimulate_server :
python stimulate_server.py -a 192.168.1.49


## Les étapes sur la VM pentest pour attaquer le serveur :



### Script Python : dump la RAM avec les identifiants et leur mot de passe :
Ce script est plus précis et affiche plus d'information, de plus il plus discret que le prochain script. Par conséquent, Snort ne remarque pas de comportements suspicieux.

sudo python /home/etudiant/heartbleed-automation/python/exploit.py 192.168.1.49 -p 443 




### Script Python : dump en boucle la RAM

Le dump est une action qui permet de copier afin de reconstituer dans notre cas la RAM
Ce script Python permet de récupérer (dump), 1150 fois :


sudo python /home/etudiant/heartbleed-example/heartbleed.py 192.168.1.49 -p 443 -n 1150 > /home/etudiant/reject_exploit.log


Ainsi nous affichons l'ensemble des mot de passes 
cat -n /home/etudiant/reject_exploit.log | grep assword | sort | uniq -c | cat -n

### Les étapes sur la VM pentest pour attaquer le serveur : metasploit :
Ce script bash automatise l'installation et l'exploit avec metasploit
sudo /home/etudiant/heartbleed-automation/bash/msf/metasploit_heartbleed_loop.sh


Cet exploit metasploit est détectée par l'IDPS.



## Pour rétrograder OpenSSL

J'ai installé les dépôts de Wheezy et tenté de configuré de cette manière cependant j'ai été confronté à des problèmes car les dépôts sont obsolètes, parfois les paquets dépendent de libssl qui doit lui aussi être rétrogradé.


J'ai appris à vérifier les versions disponibles par apt, à reconfigurer les listes de sources d'apt.
https://github.com/amineAUPEC/heartbleed-automation/blob/e74c191b1fd59251cefbc6f20719d3718d0b61f6/markdown/debian_wheezy/recap.md

Cependant je n'ai pas eu le temps de tester en installant Wheezy car cela prenait trop de temps et que Wheezy sera bientôt obsolète.


J'ai appris aussi à utiliser  : openssl  comme en tant que serveur web
- Pour démarrer le serveur  :
openssl s_server -key /etc/apache2/ssl/apache.key -cert /etc/apache2/ssl/apache.crt -accept 443 -www

- Voici la commande pour le démarrer en mode client :

openssl s_client -connect 192.168.1.139:44330 -tlsextdebug | grep "TLS server extension"

## on installe splunk



On installe les applications  : 


DNS Insight https://splunkbase.splunk.com/app/1827/
## on installe splunk UF


Il faut configurer le hostname et le fichier /etc/hosts
On le lie au serveur Splunk et on liste les serveurs de collectes.


sudo /opt/splunkforwarder/bin/splunk list forward-server

On peut vérifier les fichiers surveillées dans /opt/splunkforwarder/etc/apps/search/local/inputs.conf

On installe l'application TA-tcpdump https://splunkbase.splunk.com/app/4818/#/details



Voici les détails de mon installation de Splunk

https://github.com/amineAUPEC/heartbleed-automation/blob/e74c191b1fd59251cefbc6f20719d3718d0b61f6/markdown/splunk2.md


## tcpdump

On peut l'utiliser pour capturer les en-têtes et les requêtes HTTP avec la méthode GET


tcpdump -i enp0s8 -s 0 -A 'tcp[((tcp[12:1] & 0xf0) >> 2):4] = 0x47455420'  


Néanmoins tcpdump est utilisée avec la commande

/usr/sbin/tcpdump -pnns0 -i any -tttt portrange 23-450 and not host 127.0.0.1


Un logrotate est liée au service tcpdump qui démarre au démarrage.

Ainsi il est possible d'utiliser Splunk pour collecter ces logs.



Splunk dispose lui aussi d'un log : l'option binary-files permet d'afficher son contenu avec grep


cat /opt/splunkforwarder/var/log/splunk/splunkd.log | grep --binary-files=text 21:03

TCA-dump permet par conséquent la collecte des logs de tcpdump.
DNS INSIGHT va permettre de visualiser sur l'interface web de Splunk les requêtes DNS

## paramétrer les logs de snort pour splunk

Voici comment paramétrer leschamps des logs de snort pour splunk

https://searchitchannel.techtarget.com/feature/Snortconf-output-options



On pourrrait le parser en CSV

output alert_csv: alert.csv default

https://security.stackexchange.com/questions/29603/what-type-of-data-does-snort-log



néanmoins avec u2spewfoo on est capable de lire les logs de snort :
https://stackoverflow.com/questions/27221783/snort-log-file-output-format




- splunk dashboard

- snort
Tentative connexion ICMP
ICMP Echo Reply
ICMP PING
ICMP PING Windows


# annexes

###### log de Snort vers syslog pour Splunk

https://serverfault.com/questions/636770/snort-not-sending-alert-log-file-to-syslog-server

https://stackoverflow.com/questions/26246678/read-the-alert-log-from-snort



# autres
## oublier annexes


## snort conf log output for splunk

There are by default 28 fields available for log analysis that include timestamp, sig_generator, sig_id, sig_rev, msg, proto etc. For understanding Snort Log Management i recommend to read "Managing Snort Alerts"

https://security.stackexchange.com/questions/29603/what-type-of-data-does-snort-log

###### snortconf output
- first sol
  output alert_fast: alert.fast output alert_full: alert.full output alert_syslog: LOG AUTH LOG_ALERT 

-  second sol :
output alert_csv: alert.csv default

cat /var/log/snort/alert.csv 

https://searchitchannel.techtarget.com/feature/Snortconf-output-options
### autres

OpenSSL 1.0.1c 10 May 2012


vidéo du Heartbleed bug par Funkee
https://www.youtube.com/watch?v=WgrBrPW_Zn4

https://www.youtube.com/results?search_query=heartbleed+ssl+snort+detect