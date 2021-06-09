

- télécharger tar gz
- extraire le tar gz
`tar xvzf openssl-1.0.0.tar.gz`

- se déplacer de de répertoire, lire les 2 docs
- installer les dépendances
    - *make*
    - *perl 5++* or perl 6
    - **ANSI C COMPILER => GCC 8.3.0-6**
    - **C env =>> GCC 8.3.0-6**
    - LINUX/UNIX systems => *DEBIAN BUSTER*  
    <!-- `apt-get update -y && apt-get install -y make perl build-essential manpages-dev bc tree` -->
    `apt-get install -y make perl build-essential manpages-dev bc tree`
- test :  
`gcc --version`


- installing

    ```bash
    chmod +x config
    ./config
    make
    make test
    make install
    ```

- vérifier la version et ne plus faire de apt-get update -y
`sudo dpkg -l | grep openssl`


./config --prefix=/usr/local --openssldir=/usr/local/openssl
./config --prefix=/usr/lib --openssldir=/usr/lib/openssl

A simple "./configure; make; make install" will by default place the shared libraries in /usr/local/lib. The system-installed libraries, however, will be in /usr/lib, which comes earlier in the library search path. Unless you remove the system-installed version of OpenSSL, the vulnerable version won't be found.

Even if you are over-writing the system libraries, the change won't be picked up until you restart Apache. Deleted files remain accessible (and take up space on disk) until all programs that have open filehandles to them close those filehandles.


The simplest way to get a vulnerable listener running will be `openssl s_server` - if you need a full web server to be vulnerable, you'll likely need to compile against the vulnerable OpenSSL.





- mise en place du serveur vulnérable
<!-- `openssl s_server -key key.pem -cert cert.pem -accept 44330` -->
`openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330 -www`

- tester en attaquant :
    - install git
    - clone and cp repo
    - config hostlist
    - test



<!-- `apt-get update -y && apt-get install -y python` -->
`apt-get install -y python`
```bash
# apt-get update -y && apt-get install -y git 
apt-get install -y git 
git clone https://github.com/tdussa/heartbleed-masstest.git
cd heartbleed-masstest
nano hostlist.txt && chmod +x ssltest.py
./ssltest.py --ports "443, 993, 995, 44330" hostlist.txt
```

- launch `chmod +x ./install-owncloud.sh && ./install-owncloud.sh`
- 




==============================================================================================
03 juin
### mise en place du serveur vulnérable
./install-docker.sh 
sudo apt-get install -y docker-compose


git clone https://github.com/injcristianrojas/heartbleed-example.git

cd heartbleed-example
docker-compose up



```powershell
netstat -aon | find ":443"
tasklist /SVC /FI "PID eq 15524"
```

### mise en place du serveur pentest :
#### injecter de la donnée / stimuler le serveur cible
chmod +x stimulate_server.py
python stimulate_server.py -a $ip

#### exploiter la faille/ tester la vulnérabilité

- attaque via metasploit msfconsole
- usage de nmap avec le module ssl-heartbleed
- script
    - ssltest.py
    - heartbleed.py
    - [fox](http://blog.fox-it.com/wp-content/uploads/2014/04/fox_heartbleedtest.zip)
    - [pacemaker.py](https://github.com/Lekensteyn/pacemaker)
- tester via openssl_client 
- tester avec un ids/idps
-  heartbleeder package




- script heartbleed.py

```bash
    chmod +x heartbleed.py
    python heartbleed.py $ip -p 443
```
- tester via openssl_client 

openssl s_client -connect <adresse du serveur>:<port> -tlsextdebug | grep "TLS server extension"


### mise en place de la défense
- passer par une update d'openssl
- passer par un firewall
- **passer par un idps**
- 
#### preparing for using snort rules

- original
alert icmp any any -> $HOME_NET any (msg:"Tentative connexion ICMP"; sid:00001; rev:1;)

- original for [heartbleed](https://www.vanimpe.eu/2014/04/09/heartbleed-openssl-vulnerability/)
- most useful :
**alert tcp any [!80,!445]**-> any [!80,!445] (msg:"**FOX-SRT - Suspicious - TLSv1 Large Heartbeat Response**"; flow:established,to_client; content:"|18 03 01|"; depth: 3; byte_test:2, >, 200, 3, big; byte_test:2, <, 16385, 3, big; threshold:type limit, track by_src, count 1, seconds 600; **reference:cve,2014-0160**;)
- detailled content :

```yml
alert tcp any [!80,!445] -> any [!80,!445] (msg:"FOX-SRT - Suspicious - SSLv3 Large Heartbeat Response"; flow:established,to_client; content:"|18 03 00|"; depth: 3; byte_test:2, >, 200, 3, big; byte_test:2, <, 16385, 3, big; threshold:type limit, track by_src, count 1, seconds 600; reference:cve,2014-0160; classtype:bad-unknown; sid: 1000000; rev:4;)

alert tcp any [!80,!445] -> any [!80,!445] (msg:"FOX-SRT - Suspicious - TLSv1 Large Heartbeat Response"; flow:established,to_client; content:"|18 03 01|"; depth: 3; byte_test:2, >, 200, 3, big; byte_test:2, <, 16385, 3, big; threshold:type limit, track by_src, count 1, seconds 600; reference:cve,2014-0160; classtype:bad-unknown; sid: 1000001; rev:4;)

alert tcp any [!80,!445] -> any [!80,!445] (msg:"FOX-SRT - Suspicious - TLSv1.1 Large Heartbeat Response"; flow:established,to_client; content:"|18 03 02|"; depth: 3; byte_test:2, >, 200, 3, big; byte_test:2, <, 16385, 3, big; threshold:type limit, track by_src, count 1, seconds 600; reference:cve,2014-0160; classtype:bad-unknown; sid: 1000002; rev:4;)

alert tcp any [!80,!445] -> any [!80,!445] (msg:"FOX-SRT - Suspicious - TLSv1.2 Large Heartbeat Response"; flow:established,to_client; content:"|18 03 03|"; depth: 3; byte_test:2, >, 200, 3, big; byte_test:2, <, 16385, 3, big; threshold:type limit, track by_src, count 1, seconds 600; reference:cve,2014-0160; classtype:bad-unknown; sid: 1000003; rev:4;)
```

- from [foxit](https://blog.fox-it.com/2014/04/08/openssl-heartbleed-bug-live-blog/)
alert tcp any [!80,​!445] -> any [!80,​!445] (msg:"FOX-SRT - Suspicious - Possible SSLv3 Large Heartbeat Response"; flow:established; ssl_version:sslv3; content:"|18 03 00|"; depth:3; byte_test:2,​>,​200,​3; byte_test:2,​<,​17000,​3; threshold:type limit,​ track by_src,​ count 1,​ seconds 600; reference:cve,​2014-0160; classtype:bad-unknown; sid: 21001126; rev:8;)

- from [Snort Test Mechanism | STIX Project Documentation](https://stixproject.github.io/documentation/idioms/snort-test-mechanism/)
alert tcp any any -> $HOME_NET 443 (msg:"Attempted Heartbleed access exploitation for OpenSSL 1.0.1f and lower"; flow: to_server; content:"| 18 03 02 00 03 01 40 00 |"; reference:cve, CVE-2014-0160;)


-  another way
    - README.ssl (snort.org)  
    `max_heartbeat_length`

- launch sol1
- launch sol2
    - Select Save from the bar on top and close the file. At this point, Snort is ready to run.   
    Except, it doesn’t have any rules loaded. To verify, run the following command:    
    `sudo snort -T -i eth0 -c /etc/snort/snort.conf`
    - Now, let’s start Snort in IDS mode and tell it to display alerts to the console:
    `sudo snort -A console -q -c /etc/snort/snort.conf -i eth0`



- 
## preparing for downgrading openssl
[apt - How to properly downgrade openssl version under Ubuntu 18.04 - Ask Ubuntu](https://askubuntu.com/questions/1059801/how-to-properly-downgrade-openssl-version-under-ubuntu-18-04)
sudo apt-get install -y --allow-downgrades openssl1.0=1.0.2n-1ubuntu5.1 
echo "export OPENSSL_DIR=/usr/lib/ssl1.0/" >> ~/.bashrc



- lister les paquets
[manpages-apt](http://manpages.ubuntu.com/manpages/impish/fr/man1/apt-show-versions.1.html)
`apt-show-versions openssl`

[stack-apt-policy](https://askubuntu.com/questions/340530/how-can-i-check-the-available-version-of-a-package-in-the-repositories)
`apt-cache policy openssl`

- used version :

root@debian-buster:/etc/apt/sources.list.d# dpkg -l | grep openssl
ii  openssl                       1.1.1d-0+deb10u6                    amd64        Secure Sockets Layer toolkit - cryptographic utility
root@debian-buster:/etc/apt/sources.list.d#


- downgrading another method
sudo -i
cd /etc/apt/sources.list.d
nano jessie.list
cat > jessie.list << EOF
deb http://httpredir.debian.org/debian jessie main contrib non-free
deb-src http://httpredir.debian.org/debian jessie main contrib non-free

deb http://security.debian.org/ jessie/updates main contrib non-free
deb-src http://security.debian.org/ jessie/updates main contrib non-free

EOF

sudo cat jessie.list
sudo apt update
sudo apt install openssl/jessie
sudo apt install openssl/libssl1.0.0

cd /home/etudiant && tar -xvzf apt.tar.gz  && cd /etc/apt && rm * && cp -r /home/etudiant/apt && cd apt && mv * ../ && cd .. 

sudo apt -o Acquire::AllowInsecureRepositories=true \
-o Acquire::AllowDowngradeToInsecureRepositories=true \
update
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 7638D0442B90D010

apt-get update -y

apt-cache policy openssl

[preparing for downgrading openssl (1)](#preparing-for-downgrading-openssl-1)
-  version proposée :
```bash

root@debian-buster:/etc/apt# apt-cache policy openssl
openssl:
  Installed: 1.1.1d-0+deb10u6
  Candidate: 1.1.1d-0+deb10u6
  Version table:
 *** 1.1.1d-0+deb10u6 100
        100 /var/lib/dpkg/status
     **1.0.1e-2+deb7u20 500**
        500 http://archive.debian.org/debian wheezy/main amd64 Packages

     1.0.1t-1+deb8u12 500
        500 http://security.debian.org jessie/updates/main amd64 Packages
```
-  error :
```yaml
W: GPG error: http://httpredir.debian.org/debian jessie Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 7638D0442B90D010 NO_PUBKEY CBF8D6FD518E17E1
E: The repository 'http://httpredir.debian.org/debian jessie Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: GPG error: https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 47AE7F72479BC94B
E: The repository 'http://download.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
root@debian-buster:/etc/apt/sources.list.d# ^C
```
## preparing for downgrading openssl
[apt - How to properly downgrade openssl version under Ubuntu 18.04 - Ask Ubuntu](https://askubuntu.com/questions/1059801/how-to-properly-downgrade-openssl-version-under-ubuntu-18-04)
sudo apt-get install -y --allow-downgrades openssl=1.0.1e-2+deb7u20
echo "export OPENSSL_DIR=/usr/lib/ssl1.0/" >> ~/.bashrc

## restarting apache -- regenerer les certificats
## dowgrande libssl too (optionnal)
<!-- sudo apt-get install -y --allow-downgrades openssl=1.0.1e-2+deb7u20
sudo apt-get install -y --allow-downgrades libssl=1.0.1e-2+deb7u20  -->
root@debian-buster:~# sudo apt-get install --allow-downgrades libssl1.1=1.0.1e-2+deb7u20 
echo "export OPENSSL_DIR=/usr/lib/ssl1.0/" >> ~/.bashrc



- ssl_openssl_serever :
    - expose port    
    - openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330 -www
    - test ssltest.py




- snort
- splunk



- detect other attack


- 
