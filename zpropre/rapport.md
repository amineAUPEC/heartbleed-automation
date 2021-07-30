# before
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

## usage de github workflows pour une intégration CI/CD !!


## gestionnaire web de firewall
abandonné car snort le gère et manque de temps

## to review ?????
<!-- TLS/DTLS (transport layer security protocols) heartbeat extension (RFC6520). -- -->
<!-- s to the leak of memory contents from the server to the client and from the client to the server. -->

Can IDS/IPS detect or block this attack?
<!-- Although the heartbeat can appear in different phases of the connection setup, intrusion detection and prevention systems (IDS/IPS) rules to detect heartbeat have been developed.  -->

<!-- Due to encryption differentiating between legitimate use and attack cannot be based on the content of the request, but the attack may be detected by comparing the size of the request against the size of the reply. --- -->


<!-- This implies that IDS/IPS can be programmed to detect the attack but not to block it unless heartbeat requests are blocked altogether. -->



Who found the Heartbleed Bug?
<!-- This bug was independently discovered by a team of security engineers (*Riku, Antti and Matti*) at Codenomicon and *Neel Mehta* of Google Security, who first reported it to the OpenSSL team. Codenomicon team found heartbleed bug while improving the SafeGuard feature in Codenomicon's Defensics security testing tools and reported this bug to the NCSC-FI for vulnerability coordination and reporting to OpenSSL team. -- -->

<!-- What is the Defensics SafeGuard? -->
<!-- The SafeGuard feature of the Codenomicon's Defensics security testtools automatically tests the target system for weaknesses that compromise the integrity, privacy or safety. The SafeGuard is systematic solution to expose failed cryptographic certificate checks, privacy leaks or authentication bypass weaknesses that have exposed the Internet users to man in the middle attacks and eavesdropping. In addition to the Heartbleed bug the new Defensics TLS Safeguard feature can detect for instance the exploitable security flaw in widely used GnuTLS open source software implementing SSL/TLS functionality and the "goto fail;" bug in Apple's TLS/SSL implementation that was patched in February 2014. -->

Who coordinates response to this vulnerability?
<!-- Immediately after our discovery of the bug on 3rd of April 2014, NCSC-FI took up the task of verifying it, analyzing it further and reaching out to the authors of OpenSSL, software, operating system and appliance vendors, which were potentially affected. However, this vulnerability had been found and details released independently by others before this work was completed. Vendors should be notifying their users and service providers. Internet service providers should be notifying their end users where and when potential action is required. -->


<!-- The HeartBeat protocol extension is added to TLS for this reason. The HTTP keep-alive feature does the same but HB protocol allows a client to perform this action at a much higher rate. -- -->

<!-- Docker is a tool designed to make it easier to create, deploy, and run applications by using containers. Containers allow a developer to package up an application with all of the parts it needs, such as libraries and other dependencies, and deploy it as one package. In a way, it is a bit like a virtual machine. But unlike a virtual machine, rather than creating a whole virtual operating system, Docker allows applications to use the same Linux kernel as the system that they're running on and only requires applications be shipped with things not already running on the host computer -- -->
# rapport


## *CHAP3A* ## Introduction faille Heartbleed du module Heartbeat

La faille Heartbleed, permet à des attaquants de récupérer le contenu de la RAM du serveur mais une autre variante permet de récupérer du côté du client.

Nous allons nous intéresser à la récupération du contenu de la RAM du serveur Openssl 1.0.1c, en effet avant la version 1.0.h les versions vulnérables à partir de la 1.0.1a.

Edward Snowden a fait la révélation sur cette faille que la NSA utilisée sur les sites HTTPS.
En avril 2014, le bug a été découvert, par l'équipe sécurité de Google et de l'entreprise finlandaise Codenomicon qui a reporté à leur autorité NCSC-FI.


La vulnérabilité aurait été publiée par erreur à la suite d'une proposition de correction de bugs et d'améliorations de fonctionnalités, par un développeur bénévole. Le développeur implémenter l'extension Heartbeat avec le protocole TLS/DTLS selon le RFC 6520. 
Le 31 décembre 2011, le code vulnérable a été ajouté dans la version 1.0.1 d'OpenSSL, le 14 mars 2012. Mais la qualité du code d'une fonction, pose problème en effet.


Cette problématique de faille de sécurité dans l'Open-Source pousse les GAFAM et grandes entreprises à investir dans un financement commun CII (Core Infrastructure Initiative).


Cet vulnérabilité Heartbleed est aussi connu sous la référénce CVE : CVE-2014-0160 moins connu sous le nom de CVE-2014-0346.
En effet la référence CVE (Common Vulnerabilities and Exposure est un standard afin de nommer les failles de sécurité par l'organisme MITRE.


## *CHAP3A* ## Scénario théorique du protocole Heartbeat

L'extension Heartbeat est l'équivalent de la fonctionnalité HTTP keep-alive cependant Heartbeat est compatible avec le protocole TLS pour les sites HTTPS et envoie à une cadence beaucoup plus élevé.
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


## *CHAP3A* ## Les possibilités de cet exploit sont :
De plus, il est possible de récupérer des informations sensibles comme les clefs privées associées aux certificats SSL utilisés pour chiffrer le trafic, des identifiants de connexion appartenant aux visiteurs d’un site, ou encore les en-têtes HTTP  qui contiennent les cookies de sessions ou l’authentification Basic permettant d’usurper l’identité d’un internaute.

De plus l'équipe d'OpenSSL a été en mesure de récupérer des certificats X.509 qui est une norme assez courante pour les certificats CSR des sites HTTPS.


De plus, même le gestionnaire de mot de passe Lastpass a été impacté par cette faille de la bibliothèque OpenSSL.



## *CHAP3A* ## La portée de l'exploit Heartbeat/Heartbleed

<!-- Le protocole TLS comprend une fonctionnalité nommée Heartbeat. Il s’agit d’un mécanisme de type « écho », qui permet à l’une des extrémités d’une communication TLS – client ou serveur – d’envoyer à l’autre un message, que l’interlocuteur doit répéter en retour. Cette fonctionnalité permet de vérifier que la connexion chiffrée est toujours active. -->

En outre, les VPN, les messageries instantanées ont été impactées, sauf que de nombreux sites détenus par des grands groupes ont été prévenus par OpenSSL, toutefois la faille a été révélée, un peu plus tôt, ce qui a posé des problèmes pour mettre en place un correctif de sécurité.

Les premières estimations sont environ 600000 serveurs vulnérables avec OpenSSL. La majorité des serveurs ont été mis à jour, les serveurs restants ont leurs certificats révoqués.


## *CHAP3A* ## Les bonnes pratiques pour éviter ce genre d'attaque sont : 


- De désactiver Heartbeat, si une mise à jour n'est pas possible en désactivant avec l'option ou en recompilant le programme.
- Rétrograder de version.
- Mettre à jour et révoquer les certificats OpenSSL. 
- Placer un pot de miel.
- Détecter avec un IDS/IDPS ou un analyseur de réseau pour que l'on configure le pare-feu pour bloquer les attaques.




## *CHAP4B* ## Mise en place du scénario général de détection et de protection
Tout d'abord un IDPS peut détecter la faille Heartbleed, en comparant la taille du paquet et le nombre de requêtes, mais il est limité car le paquet est chiffrée. 
De plus l'IDPS, va comparer la taille du paquet lors de la requête et lors de la réponse pour s'assurer que la demande n'est pas malicieuse.
<!-- Néanmoins l'IDPS sera pas capable de rejeter les paquets, sauf s'ils bloquent tous les paquets Heartbleed.** -->





Nous lançons dans un premier temps le **serveur Splunk** pour analyser les différents logs générés par le firewall qui est aussi l'IDPS.

L'appareil firewall intègre Snort qui est un IDPS open-source, nous utilisons ces logs générés pour analyser, créer des visualisations des logs sous forme de statistiques et d'alertes.


Grâce à ce serveur Splunk, nous sommes en mesure de surveiller le trafic en un seul coup d'oeil.



Ensuite, nous lançons la collecte des données sur l'Universal Forwarder, cela permet de collecter les logs et de transmettre vers le serveur Splunk depuis l'hôte **firewall**. Splunk collecte les résultats de l'analyseur réseau tcpdump.






## *CHAP4B* ## Détails des commandes pour la mise en place du scénario général de détection et de protection
Snort a été lancé, avec cette commande :
sudo /usr/sbin/snort -A fast -i enp0s3 -u snort -c /etc/snort/snort.conf 


Le serveur Splunk a été lancé avec :
sudo /home/etudiant/splunk/bin/splunk start 

L'Universal Forwarder de Splunk pour collecter les logs a été lancé sur firewall avec :
sudo /opt/splunkforwarder/bin/splunk restart 





## *CHAP4A* ##  Scénario général pour exploiter la vulnérabilité Heartbleed

On lance le serveur vulnérable avec OpenSSL dans notre cas suite à des problèmes pour rétrograder, nous avons décidé de passer par un conteneur Docker. Qui intègre aussi un serveur web Apache.


Puis on lance ensuite la VM qui simule les requêtes des utilisateurs, identifiant et mot de passe qui sont envoyés au serveur. Avec un script python.



Enfin, on configure l'adresse IP de destination et on lance l'attaque : à l'aide d'un des scripts Python ou à l'aide de metasploit

Nous récupérons les requêtes du client, l'en-tête HTTPS ainsi que les identifiants échangés.

Nous remarquons que Snort détecte aussi l'attaque probable d'une faille Heartbleed.



Nous avons utilisé un conteneur Docker car Docker permet d'automatiser, de créer plus rapidement, d'optimiser les ressources car on ne virtualise pas tous le système en effet le noyau du système d'exploitation est partagée.



## *CHAP4A* ## Les prérequis pour les différents serveurs sont :
- Attaquant
        - git 
        - docker:
            - docker-ce
            - docker-compose
- Pentester :
        - git    
    -  Pour les scripts  : stimulate-server.py (VM injection de donnée ou sur la même VM) -- heartbleed.py ou exploit.py
        - python:
            - python1-2
            - python3
## *CHAP4A* ## Les étapes sur le serveur vulnérable sont :
On installe les paquets utiles à git et on clone https://github.com/amineAUPEC/heartbleed-automation

On se déplace sur le répertoire : pour lancer docker-compose
cd /home/etudiant/heartbleed-automation/bash/heartbleed-example/
sudo docker-compose up -d
## *CHAP4A* ## Les étapes sur la VM injection de données sont :  
Dans le répertoire /home/etudiant/heartbleed-example
On lance stimulate_server :
python stimulate_server.py -a 192.168.1.49


## *CHAP4A* ## Les étapes sur la VM pentest pour attaquer le serveur :



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



## *CHAP4A* ## Pour rétrograder OpenSSL -----


J'ai aussi essayer d'autre méthode afin de faire confiance à une source obsolète avec apt-key add 

J'ai installé les dépôts de Wheezy et tenté de configuré de cette manière cependant j'ai été confronté à des problèmes car les dépôts sont obsolètes, parfois les paquets dépendent de libssl qui doit lui aussi être rétrogradé.


J'ai appris à vérifier les versions disponibles par apt, à reconfigurer les listes de sources d'apt.
https://github.com/amineAUPEC/heartbleed-automation/blob/e74c191b1fd59251cefbc6f20719d3718d0b61f6/markdown/debian_wheezy/recap.md

Cependant je n'ai pas eu le temps de tester en installant Wheezy car cela prenait trop de temps et que Wheezy sera bientôt obsolète.


J'ai appris aussi à utiliser  : openssl  comme en tant que serveur web
- Pour démarrer le serveur  :
openssl s_server -key /etc/apache2/ssl/apache.key -cert /etc/apache2/ssl/apache.crt -accept 443 -www

- Voici la commande pour le démarrer en mode client :

openssl s_client -connect 192.168.1.139:44330 -tlsextdebug | grep "TLS server extension"



## *CHAP3A* ## une autre vulnérabilité d'OPENSSL ----
Une vulnérabilité a été trouvé dans OpenSSL et classée très critique. Snort Message: WEB-MISC SSLv2 openssl get shared cipher
## **CHAP 2 SPLUNK** : ## on installe splunk
Nous augmenté de la taille de la partition de la VM Debian, ce qui permet d'avoir un plus grand disque dur.
01/04/2021 carnet de bord

Ce serveur Splunk est à la fois Search-Head, serveur web Splunk et indexeur.


Les « Splunk Search Heads » : Le Search Head joue le rôle d’interface entre l’utilisateur et les données de l'indexeur.

Les « Splunk Indexers » : Ils utilisent le service Daemon Splunk. Ils reçoivent les données, les indexent selon une syntaxe spécifique ensuite ils les préparent pour le stockage.


Pour notre maquette, on installe les applications  : 

DNS Insight https://splunkbase.splunk.com/app/1827/


Splunk For Snort :https://splunkbase.splunk.com/app/340/




## **CHAP 2 SPLUNK** : ## on installe splunk UF

Le Universal Forwarder sur Splunk permet de récolter les données et de les rediriger auprès d'un indexeur.


Il faut configurer le hostname et le fichier /etc/hosts
On le lie au serveur Splunk et on liste les serveurs de collectes.


sudo /opt/splunkforwarder/bin/splunk list forward-server

On peut vérifier les fichiers surveillées dans /opt/splunkforwarder/etc/apps/search/local/inputs.conf

On installe l'application TA-tcpdump https://splunkbase.splunk.com/app/4818/#/details



Voici les détails de mon installation de Splunk

https://github.com/amineAUPEC/heartbleed-automation/blob/e74c191b1fd59251cefbc6f20719d3718d0b61f6/markdown/splunk2.md





## **CHAP 2 SPLUNK** : ## configuration de splunk 
On configure Splunk de manière générale 
Depuis l'UF :


cat /opt/splunkforwarder/splunk/etc/apps/search/local/inputs.conf

### ou ajout de serveur avec add monitor
sudo /opt/splunkforwarder/bin/splunk add monitor /var/log/snort/snort.log.* -index snort_alert -sourcetype snort_alert_full



Depuis le Search-Head
### configuration de l'interface des vues, des recherches, filtres des champs par regex/délimiteurs


## **CHAP 2 SPLUNK//chap4B**: ## tcpdump


Tcpdump est installée sur l'UF, et après avoir configuré TA-TCPDUMP, le service tcpdump est utilisée avec la commande

/usr/sbin/tcpdump -pnns0 -i any -tttt portrange 23-450 and not host 127.0.0.1


Un logrotate est liée au service tcpdump qui démarre au démarrage.

Ainsi il est possible d'utiliser Splunk pour collecter ces logs.



Splunk dispose lui aussi d'un log : l'option binary-files permet d'afficher son contenu avec grep


cat /opt/splunkforwarder/var/log/splunk/splunkd.log | grep --binary-files=text 21:03

Nous utilisons aussi une tâche planifiée Cron pour relancer de force le service tcpdump, par exemple en cas d'erreur.


TA-TCPDUMP permet par conséquent la collecte des logs de tcpdump.
DNS INSIGHT va permettre de visualiser sur l'interface web de Splunk les requêtes DNS

Une autre possibilité est d'analyser les fichier pcaps qui sont lisibles par les sniffeurs réseaux comme Wireshark/tcpdump avec Splunk


Tcpdump est puissant, on peut aussi l'utiliser pour capturer les en-têtes et les requêtes HTTP avec la méthode GET


tcpdump -i enp0s8 -s 0 -A 'tcp[((tcp[12:1] & 0xf0) >> 2):4] = 0x47455420'  

### possibilité d'analyser les pcaps avec splunk



## **CHAP 2 SPLUNK//chap4B** : ## paramétrer les logs de snort pour splunk

sudo /opt/splunkforwarder/bin/splunk add monitor /var/log/snort/snort.log.* -index snort_alert -sourcetype snort_alert_full 


root@firewall:~# cat /opt/splunkforwarder/etc/apps/search/local/inputs.conf
[monitor:///var/log/syslog]
disabled = false
index = general
sourcetype = syslog

[monitor:///var/log/snort]
disabled = false
index = snort_alert
sourcetype = snort_alert_full

[monitor:///opt/splunkforwarder/var/log/splunk/splunkd.log]
disabled = false
index = main
sourcetype = splunkd






Voici d'autres méthodes :
Voici comment paramétrer les champs des logs de snort pour splunk

https://searchitchannel.techtarget.com/feature/Snortconf-output-options



On pourrait le parser en CSV

output alert_csv: alert.csv default

https://security.stackexchange.com/questions/29603/what-type-of-data-does-snort-log



néanmoins avec u2spewfoo on est capable de lire les logs de snort :
https://stackoverflow.com/questions/27221783/snort-log-file-output-format


## **CHAP 2 SPLUNK//chap4B**: ## Notre Dashboard Splunk

- splunk dashboard

- snort
Tentative connexion ICMP
ICMP Echo Reply
ICMP PING
ICMP PING Windows

Snort permet une vision avec le top 10 des signatures, des classifications, des adresses ip de destination, des ports de destination et des ports source

Les paquets ICMP sont analysées par heure tandis que les autres paquets sont mis à jour toutes les 15 minutes.

Nous utilisons les options pour filtrer comme earliest, stats, and, or. 
earliest=-2m 2 min de décalage de tcpdump


On affiche aussi le TOP des requêtes DNS ou avec DNS insight





- top 10 des signatures :
- top 10 des classifications :
- top 10 des adresses ip de destination :
- top 10 des adresses ports de destination :
- top 10 des adresses ports source :

Les autres requêtes Splunk sont :
Pour visualiser tous les paquets de tcpdump
* host=firewall sourcetype="port53tttt" source="/var/log/tcpdump.log"
Pour visualiser tous les paquets DNS de tcpdump  
* host=firewall sourcetype="port53tttt" source="/var/log/tcpdump.log" *.53


Si on filtre les paquets sur le PORT 80 : HTTP
* host=firewall sourcetype="port53tttt" source="/var/log/tcpdump.log" *.80
Pour filtrer sur le port du protocole HTTPS
* host=firewall sourcetype="port53tttt" source="/var/log/tcpdump.log" *.443

<!-- Pour formater les requêtes DNS
* sourcetype=tshark:port53 OR sourcetype=port53tttt src=* dest=*| fields dns_len query length reply_code Len message_type record_type transport | search message_type=QUERY | table * -->
## *SNORT* restant ## Les règles locales de Snort :le fichier local.rules

Voici toutes nos règles Snort que l'on a appliqué :


https://github.com/amineAUPEC/heartbleed-automation/blob/e74c191b1fd59251cefbc6f20719d3718d0b61f6/zpropre/snort-rules/local.rules





### Les règles Snort pour Heartbleed :
On remarque les règles liées à la vulnérabilité Heartbleed

#HEART-BLEED-ALERTS : time of detection reduced


alert tcp any any -> any any (msg:"FOX-SRT - Flowbit - TLS-SSL Client Hello"; flow:established; dsize:< 500; content:"|16 03|"; depth:2; byte_test:1, <=, 2, 3; byte_test:1, !=, 2, 1; content:"|01|"; offset:5; depth:1; content:"|03|"; offset:9; byte_test:1, <=, 3, 10; byte_test:1, !=, 2, 9; content:"|00 0f 00|"; flowbits:set,foxsslsession; flowbits:noalert; threshold:type limit, track by_src, count 1, seconds 60; reference:cve,2014-0160; classtype:bad-unknown; sid: 21001130; rev:9;)



alert tcp any any -> any any (msg:"FOX-SRT - Suspicious - TLS-SSL Large Heartbeat Response"; flow:established; flowbits:isset,foxsslsession; content:"|18 03|"; depth: 2; byte_test:1, <=, 3, 2; byte_test:1, !=, 2, 1; byte_test:2, >, 200, 3; threshold:type limit, track by_src, count 1, seconds 600; reference:cve,2014-0160; classtype:bad-unknown; sid: 21001131; rev:5;)


### Détails des règles Snort pour Heartbleed :



On remarque que alert permet de notifier dans la console ou dans le fichier de log générés par Snort.


Le protocole TCP de la couche transport du modèle TCP/IP sert de référence à cette règle.

On capture quelque soit l'adresse réseau source ainsi que de destination.

Le message affichée contient Large Heartbeat Response dans le cas d'une attaque lors de la première phase d'échange, l'alerte contient TLS-SSL Client Hello.



Ces messages ne s'affichent que si la connexion est établit, que le paquet contient certains paramètres comme |18 03| pour désigner le paquet heartbeat

Les octets sont comparées. Un seuil permet de limiter par les paquets qui sont issues de la même source, affichée une seule fois toutes les 10 minutes.

Les indications sur la référence CVE 2014-0160 sont présentes dans les règles et enfin le SID est un identifiant qui signe la règle : Il est unique.



## **SNORT** ## Pour résumer : Les règles Snort

Gdrive 20/05/2021

Les possibilités offertes par Snort sont : Des règles :
Les règles de snort sont décrites dans un langage simple et suivent le schéma suivant :
l'en-tête de règle qui contient
l'action de la règle.
le protocole qui est utilisé pour la transmission des données : TCP, UDP ou ICMP.
les adresses IP source et destination et leur masque.
les ports source et destination à vérifier sur les paquets.
les options de la règle qui contiennent :
le message d'alerte.
les conditions qui déterminent l'envoi de l'alerte en fonction du paquet analysé.








Voici les options lorsque nous lançons la commande de Snort :
###### snorthelp
-c <rules> Utiliser un fichier de configuration de règles 
-i <if>    Spécifier les interfaces d'écoute 
-l <ld>    Répertoire de destination des logs 

-A         Usage des alertes en mode rapide/fast, complet/full, console, test ou rien/none  
-s         Redirection des messages d'alertes dans syslog

-L <file>  Spécifie le fichier de log  

-u <uname> Utiliser snort avec un uid ou en tant <uname> une fois démarrée
        -U         Utilise l'heure Universelle UTC en tant que référence
        -v         Pour déboguer, avec des messages plus verbeux/détailler


<!-- -f         Turn off calls after binary log writes -->












## *CHAP3A||CHAP4A* ## Analyse du trafic réseau : Des paquets avec Wireshark
images [wireshark]
C:\Users\Administrateur\Desktop\ptutmerge

Message client Hello
Requête Heartbeat

Message Heartbeat

Version du protocole TLS 


Réponse Heartbeat

## *CHAP3A||CHAP4A* ## version tls -----
https://github.com/amineAUPEC/heartbleed-automation/blob/e74c191b1fd59251cefbc6f20719d3718d0b61f6/cheatsheet/tls_version.md
https://www.fatalerrors.org/index.php/a/secure-tls1.2-connection-process.html

La version TLS a pour code : 
Si c'est en TLS 1.0: 0x0301 
ou sinon si TLS 1.2: 0x0303



En analysant la configuration le protocole SSL est de type 22


Si c'est un échange clé du serveur, le type est définit avec la valeur 12.
Sinon si le serveur répond que c'est fait, le code du type est 14.

Le serveur génère des données aléatoire et des identifiants pour la session.





Le paquet SSL précise bien la version TLS, la longueur, le type.





## gestionnaire web de firewall
Nous avions commencé à créer une interface de gestion web qui génère les règles iptables et permet de les visualiser rapidement et simplement.

Toutefois nous l'avons abandonné car Snort gère la gestion du firewall afin de bloquer les paquets mais aussi par manque de temps, nous avons prioriser nos tâches en entreprise.










## usage de github workflows pour une intégration CI/CD !!
Nous avons 

## GNS3 virtualisation
Nous avons simulé sur GNS3 la maquette avant de réaliser les attaques.


## glossaire

RFC Request For Comments est un standard pour implémenter une fonctionnalité ou un protocole selon des documents décrivant les spécifications techniques.

SIEM Security information and event management (SIEM) is a field within the field of computer security, where software products and services
### usage de mobaxterm-macros-export--save tabs on bookmarks


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