go to https://www.splunk.com/en_us/download/universal-forwarder.html  
sudo apt-get update -y  
sudo apt-get install -y wget  
wget -O splunkforwarder-8.2.0-e053ef3c985f-linux-2.6-amd64.deb 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=8.2.0&product=universalforwarder&filename=splunkforwarder-8.2.0-e053ef3c985f-linux-2.6-amd64.deb&wget=true'  



sudo apt-get install -y curl  
sudo dpkg -i splunkforwarder-8.2.0-e053ef3c985f-linux-2.6-amd64.deb  

sudo /opt/splunkforwarder/bin/splunk enable boot-start  


sudo /opt/splunkforwarder/bin/splunk start



depuis l'interface ou en cli -> Forwarding and receiving>configure receiving>new> 9997 *depuis le serveur SPLUNK*   
sudo /opt/splunkforwarder/bin/splunk add forward-server $ip_server_splunk:9997 *mdp admin pass  abcd1234*


sudo /opt/splunkforwarder/bin/splunk edit user admin -password abcd1234


sudo /opt/splunkforwarder/bin/splunk list forward-server


sudo /opt/splunkforwarder/bin/splunk add monitor /var/log/syslog -index general -sourcetype syslog


# to verify
cat /opt/splunkforwarder/etc/apps/search/local/inputs.conf

sudo /opt/splunkforwarder/bin/splunk restart






sudo systemctl set-hostname splunkclient




sudo nano /etc/hosts


sudo /home/etudiant/splunk/bin/splunkd restart



ou le debug refresh page
 
 
 
 
 
 ajout d'un index nommé general
 
 
 
 
 splunk requête
 
 
 index=general
 
 
 
 index=general host=firewall




-sourcefile=/log of 
  - snort -> heartbleed detect : 
  - snort -> heartbleed reject
  - snort -> sql detect
  - snort -> sql reject 
  - snort -> xss 
  - snort -> xss
  - snort host=firewall index=hbdetect
  - index=sqldetect
index= 





link


https://www.laurentmarot.fr/wordpress/?p=4026

https://meritis.fr/comment-fonctionne-splunk/

  http://192.168.1.24:8000/en-US/app/search/search?q=search%20index%3D%22*%22%20index%3Dgeneral&display.page.search.mode=smart&dispatch.sample_ratio=1&workload_pool=&earliest=0&latest=&sid=1623846611.16
  
  
  
  
  =====================
  
  
  
  
## splunk PREPARE fix

###### snort log readable
u2spewfoo snort.log


- file is in unified2 format
  - solv use u2spewfoo
sources : [SO] (https://stackoverflow.com/questions/27221783/snort-log-file-output-format)


excluded
###### snort.conf edit


output alert_csv: alert.csv default


There are by default 28 fields available for log analysis that include timestamp, sig_generator, sig_id, sig_rev, msg, proto etc. For understanding Snort Log Management i recommend to read "Managing Snort Alerts"

https://security.stackexchange.com/questions/29603/what-type-of-data-does-snort-log

###### snortconf output
- first sol
  output alert_fast: alert.fast output alert_full: alert.full output alert_syslog: LOG AUTH LOG_ALERT 

-  second sol :
output alert_csv: alert.csv default

cat /var/log/snort/alert.csv 

https://searchitchannel.techtarget.com/feature/Snortconf-output-options

##### splunk dashboard prep

#### 3 initial for ICMP
index="*" sourcetype=snort name="Tentative connexion ICMP"
index="*" sourcetype=snort name="ICMP Echo Reply"
index="*" sourcetype=snort name="ICMP PING"
index="*" sourcetype=snort name="ICMP PING Windows"

####  merge for ICMP
ICMP analysis
index="*" sourcetype=snort name="Tentative connexion ICMP" OR name="ICMP PING Windows" OR name="ICMP Echo Reply" OR name="ICMP PING" earliest=-1h
| stats count(date_hour) by name


```yml
type: bar chart
format:
  general: 
    afficher: minmax
  axe ordo: 
    intervalle:5 
    titre:par heure
  axe abs: 
    titre: type de req
```





###### snortconf 
https://neversecure.ca/2019/05/11/configuring-splunk-and-snort-on-your-home-network/

output alert_full: alert.full




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

###### log to syslog

https://serverfault.com/questions/636770/snort-not-sending-alert-log-file-to-syslog-server

https://stackoverflow.com/questions/26246678/read-the-alert-log-from-snort
###### splunk parsing

https://www.bing.com/search?q=sourcetype+csv+splunk&cvid=dad2d7aa4d1a4a3695410670afe6e2ac&aqs=edge..69i57.4118j0j1&pglt=643&FORM=ANNAB1&DAF0=1&PC=U531
https://docs.splunk.com/Documentation/Splunk/8.2.1/Data/Extractfieldsfromfileswithstructureddata#:~:text=Splunk%20Web%20loads%20the%20%22Set%20Source%20type%22%20page.,are%20formatted%20based%20on%20the%20current%20source%20type.



[monitor:///opt/test/data/StructuredData/CSVWithFewHeaderFieldsWithoutAnyValues.csv]
sourcetype=CSVWithFewHeaderFieldsWithoutAnyValues

[monitor:///opt/test/data/StructuredData/VeryLargeCSVFile.csv]
sourcetype=VeryLargeCSVFile



###### fix purpose
Configure alias
And export




mkdir /var/log/logger
ln -s /var/log/snort /var/log/logger




remove all from splunk cli After web


<!-- reload -- débug page -->

<!-- http://localhost/en-US/debug/refresh -->

Remove all from inputs.conf


Restart



Export var


navigate to the $SPLUNK_HOME/bin/ directory and use the ./splunk
splunk add monitor /var/log/logger



Configure it with logger folder
###### recap of command
import vm et config ip ; changer fichier /etc/hosts




- uf
sudo /opt/splunkforwarder/bin/splunk add monitor /var/log/snort/snort.log.* -index snort_alert -sourcetype snort_alert_full 
sudo /opt/splunkforwarder/bin/splunk restart 



sudo /opt/splunkforwarder/bin/splunk list forward-server  *login admin pass  abcd1234*


cd /var/log/snort/
ls -ltr

/usr/sbin/snort -A console -i enp0s3 -u snort -c /etc/snort/snort.conf
<!-- /usr/sbin/snort -A console -i enp0s3 -u snort -c /etc/snort/snort.conf -A fast -->
/usr/sbin/snort -A console -i enp0s3 -u snort -c /etc/snort/snort.conf -A full



- on essaye de remonter ça
  -  snort.log.1625838993


export SPLUNK_HOME=/opt/splunkforwarder/



/opt/splunkforwarder/bin/splunk remove monitor /var/log/syslog -index general -sourcetype syslog
/opt/splunkforwarder/bin/splunk remove monitor /var/log/snort -index snort_alert -sourcetype snort_alert_full


sudo cat /opt/splunkforwarder/etc/apps/search/local/inputs.conf

sudo /opt/splunkforwarder/bin/splunk restart   

sudo /opt/splunkforwarder/bin/splunk list forward-server  *login admin pass  abcd1234*
/opt/splunkforwarder/bin/splunk add monitor /var/log/syslog -index general -sourcetype syslog  
/opt/splunkforwarder/bin/splunk add monitor /var/log/snort -index snort_alert -sourcetype snort_alert_full  
/opt/splunkforwarder/bin/splunk add monitor /var/log/ -index snort_alert -sourcetype syslog  

/opt/splunkforwarder/bin/splunk remove monitor /var/log/snort -index snort_alert -sourcetype snort_alert_full  
sudo /opt/splunkforwarder/bin/splunk restart   

/opt/splunkforwarder/bin/splunk add monitor /var/log/snort/ -index snort_alert -sourcetype snort_alert_full  
sudo /opt/splunkforwarder/bin/splunk restart   

/usr/sbin/snort -A console -i enp0s3 -u snort -c /etc/snort/snort.conf
chown -R snort:root snort
/usr/sbin/snort -A console -i enp0s3 -u snort -c /etc/snort/snort.conf


/opt/splunkforwarder/bin/splunk remove monitor /var/log/snort/ -index snort_alert -sourcetype snort_alert_full  
sudo /opt/splunkforwarder/bin/splunk restart   

/opt/splunkforwarder/bin/splunk add monitor /var/log/snort/ -index snort_alert -sourcetype syslog  
sudo /opt/splunkforwarder/bin/splunk restart   


rm /var/log/snort.log.1625843525

sudo cat /opt/splunkforwarder/etc/apps/search/local/inputs.conf

sudo /opt/splunkforwarder/bin/splunk restart   
sudo /opt/splunkforwarder/bin/splunk list forward-server  *login admin pass  abcd1234*

/usr/sbin/snort -A console -i enp0s3 -u snort -c /etc/snort/snort.conf


/usr/sbin/snort -A console -i enp0s3 -u snort -c /etc/snort/snort.conf


/usr/sbin/snort -A console -i enp0s3 -u snort -c /etc/snort/snort.conf


/usr/sbin/snort -A console -i enp0s3 -u snort -c /etc/snort/snort.conf -s



/var/log# chown -R root:root snort


- server
sudo /home/etudiant/splunk/bin/splunk restart
export SPLUNK_HOME=/home/etudiant/splunk/
echo $SPLUNK_HOME

cat /home/etudiant/splunk/etc/apps/search/local/inputs.conf

/home/etudiant/splunk//bin/splunk remove monitor /var/log/syslog -index general -sourcetype syslog
/home/etudiant/splunk//bin/splunk remove monitor /var/log/snort -index snort_alert -sourcetype snort_alert_full

sudo cat /home/etudiant/splunk/etc/apps/search/local/inputs.conf

sudo nano /home/etudiant/splunk/etc/apps/search/local/inputs.conf


sudo /home/etudiant/splunk/bin/splunk restart

cd / && run-parts --report /etc/cron.hourly
sudo cat /var/log/syslog
/home/etudiant/splunk/bin/splunk add monitor /var/log/syslog -index general -sourcetype syslog
sudo cat /home/etudiant/splunk/etc/apps/search/local/inputs.conf
/home/etudiant/splunk/bin/splunk add monitor /var/log/snort -index snort_alert -sourcetype snort_alert_full  

- beaucoup de debug non noté
- problème de permission et de droit retiré
- peut-être un problème de lecture du fichier car fichier corrompu
- 
###### 

## splunk fix for Snort
config /etc/hosts
launch snort with another options -A fast


remove all monitors 
add them again to monitors

restart splunk services 


then config dashboards
and panels

## splunk tcadump
tcpdump --version
su splunk

cd etc/apps/

curl https://github.com/amineAUPEC/kavi_web_private/blob/main/amine_splunk_packages/ta-tcpdump-network-input-for-linux_002.tgz > ta-tcpdump-network-input-for-linux_002.tgz

splunk@debian10:-/etc/apps$ tar xfz /tmp/ta_tcpdump_0.0.2.tgz

sudo /home/etudiant/splunk/bin/splunk install app ta-tcpdump-network-input-for-linux_002.tgz -update 1 -auth admin:Vitrygtr2021*
sudo /opt/splunkforwarder/bin/splunk  install app ta-tcpdump-network-input-for-linux_002.tgz -update 1 -auth admin:abcd1234



cd /opt/splunkforwarder/etc/apps/TA-tcpdump
cd TA-tcpdump/

mkdir local

cp default/inputs.conf local/

vi local/inputs.conf

exit


cp /opt/splunkforwarder/etc/apps/TA-tcpdump/README/tcpdump.service /etc/systemd/system/


systemctl daemon-reload
systemctl disable tcpdump 
systemctl stop tcpdump
systemctl daemon-reload
cd /etc/systemd/system/
rm tcpdump.service
rm /var/log/tcpdump.log
systemctl daemon-reload


systemctl daemon-reload
cp /opt/splunkforwarder/etc/apps/TA-tcpdump/README/tcpdump.service /etc/systemd/system/
cd /etc/systemd/system/
systemctl enable tcpdump 
systemctl start tcpdump
systemctl stop tcpdump
sudo /opt/splunkforwarder/bin/splunk restart 
systemctl daemon-reload


ps -aux | grep tcpdump

cp /opt/splunkforwarder/etc/apps/TA-tcpdump/README/tcpdump /etc/logrotate.d/

cat /etc/logrotate.d/tcpdump


su - splunk

sudo /opt/splunkforwarder/bin/splunk restart 

- splunk_server
sudo /home/etudiant/splunk/bin/splunk restart
sudo /home/etudiant/splunk/bin/splunk boot-enable



- splunk dash

index="*" source="/var/log/tcpdump.log"
index="*" source="/var/log/tcpdump.log" tcpdump:port53

- splunk UF to modify portrange

cat /opt/splunkforwarder/etc/apps/TA-tcpdump/bin/tcpdump.path
nano /opt/splunkforwarder/etc/apps/TA-tcpdump/bin/tcpdump.path
cat /opt/splunkforwarder/etc/apps/TA-tcpdump/bin/tcpdump.path
> /usr/sbin/tcpdump -pnns0 -i any -tttt
>> /usr/sbin/tcpdump -pnns0 -i any -tttt port 53 and not host 127.0.0.1
>> /usr/sbin/tcpdump -pnns0 -i any -tttt portrange 23-450 and not host 127.0.0.1


nano /opt/splunkforwarder/etc/apps/TA-tcpdump/README/tcpdump.service 
cp /opt/splunkforwarder/etc/apps/TA-tcpdump/README/tcpdump.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable tcpdump
systemctl start tcpdump
systemctl status tcpdump


nano /opt/splunkforwarder/etc/apps/TA-tcpdump/bin/tcpdump.path
cat /opt/splunkforwarder/etc/apps/TA-tcpdump/bin/tcpdump.path
sudo /opt/splunkforwarder/bin/splunk restart 




cat /opt/splunkforwarder/var/log/splunk/splunkd.log
/opt/splunkforwarder/bin/splunk add monitor /opt/splunkforwarder/var/log/splunk/splunkd.log -index main -sourcetype splunkd  
sudo /opt/splunkforwarder/bin/splunk restart 

cat /opt/splunkforwarder/var/log/splunk/splunkd.log | grep --binary-files=text 21:03


- recent inputs.conf
root@firewall:/opt/splunkforwarder/etc/apps/TA-tcpdump/local# cat inputs.conf
#[script://./bin/tcpdump.path]
#interval = -1
#disabled = 1
#sourcetype = port53tttt

# the sourcetype will be renamed in the future
#sourcetype = tcpdump:port53

[monitor:///var/log/tcpdump.log]
disabled = 0
sourcetype = port53tttt

# the sourcetype will be renamed in the future
sourcetype = tcpdump:port53

## future tasks next time for dim 18 juil 21

DNSINSIGHT

Extraction fields or regex

trouver une solution stable ou reload toutes les 2 mins via cron tcpdump
<!-- trouver une solution stable ou reload toutes les 2 mins via cron splunk forwarder -->

trouver une solution pour afficher des requetes web + détaillés voire meme avec un second file

* host=firewall earliest=-4m


## tasks recap before doing dim 18 jui 21   




### Download and Install Dnsinsight  
reconfigurer le sourcetype
### starting and launching slunk server/UF  

- SERVER  
sudo /home/etudiant/splunk/bin/splunk restart  

  - Installing DNS INSIGHT  
  cd /home/etudiant && sudo /home/etudiant/splunk/bin/splunk install app dns-insight_007.tgz -update 1 -auth admin:Vitrygtr2021*  



- UF  
sudo /opt/splunkforwarder/bin/splunk restart   

- snort for later  
/usr/sbin/snort -A console -i enp0s3 -u snort -c /etc/snort/snort.conf -A full  




### trouver une solution stable ou reload toutes les 2 mins via cron tcpdump

#### with file -G rotate or even -C count file size  
 /usr/sbin/tcpdump -i any -pnns0 -tttt portrange 23-450 and not host 127.0.0.1  

tcpdump -G 15 -W 1 -w myfile -i eth0 'port 8080'  
tcpdump -G 120 -W 1  


Not these above because  **-G 120 -W 1 -w** file because it's require a file  
https://www.bing.com/search?q=reload+command+each+seconds&qs=n&form=QBRE&sp=-1&pq=reload+command+each+second&sc=1-26&sk=&cvid=1C8E2B60CE3947F285230B5CFF1A5108  
#### crontab  
sudo crontab -e  

create a file for the script  
/root/crontab-tcpdump.sh  
chmod it   



sudo crontab -l  

2 * * * * /root/crontab-tcpdump.sh  

##### to do  
sudo crontab -e  

pas eu la peine

### *Extraction fields or regex* 


https://docs.splunk.com/Documentation/Splunk/latest/SearchReference/Regex

###### unit test
\.80$
80$

test string
10.80.20.20.80
50.125.120.80

10p80.20.20p80
50.125.120p80

#### request http if
18/07/2021 17:58:52,141	
2021-07-18 17:58:52.141878 IP 208.97.177.124.80 > 192.168.1.23.36468: Flags [P.], seq 1:553, ack 74, win 29, length 552: HTTP: HTTP/1.1 200 OK

##### tcp http request if
2021-07-18 17:58:52.141896 IP 192.168.1.23.36468 > 208.97.177.124.80: Flags [.], ack 553, win 501, length 0

#### request DNS if


2021-07-18 18:01:49.222505 IP 192.168.1.23.40421 > 192.168.1.254.53: 29064+ A? perdu.com. (27)
2021-07-18 18:01:49.251520 IP 192.168.1.254.53 > 192.168.1.23.40421: 29064 1/0/0 A 208.97.177.124 (43)
2021-07-18 18:01:49.252642 IP 192.168.1.23.48643 > 192.168.1.254.53: 25125+ AAAA? perdu.com. (27)
2021-07-18 18:01:49.261340 IP 192.168.1.254.53 > 192.168.1.23.48643: 25125 0/1/0 (88)
2021-07-18 18:01:49.261701 IP 192.168.1.23.43893 > 192.168.1.254.53: 47842+ MX? perdu.com. (27)
2021-07-18 18:01:49.357033 IP 192.168.1.254.53 > 192.168.1.23.43893: 47842 0/1/0 (88)

CNAME
18/07/2021 18:05:23,379	
2021-07-18 18:05:23.379633 IP 192.168.1.254.53 > 192.168.1.119.55826: 56043 2/1/0 CNAME asimov.vortex.data.trafficmanager.net., CNAME global.vortex.data.trafficmanager.net. (173)



##### DNSQUERY analysis : request DNS if

sourcetype=tshark:port53 OR sourcetype=port53tttt src=* dest=*| fields dns_len query length reply_code Len message_type record_type transport | search message_type=QUERY 
| table *
#### request UDP HTTPS IPV6 if

2021-07-18 18:01:54.883185 IP6 2a00:1450:4007:809::200e.443 > 2a01:e0a:e2:e940:913d:1c33:65d9:d9a7.52189: UDP, length 25




##### request TCP HTTPS IPV6 if : Win ack
2021-07-18 18:01:46.770861 IP6 2a01:e0a:e2:e940:913d:1c33:65d9:d9a7.64093 > 2a00:1450:4007:809::200e.443: Flags [S], seq 1795020359, win 64800, options [mss 1440,nop,wscale 8,nop,nop,sackOK], length 0
2021-07-18 18:01:46.803744 IP6 2a00:1450:4007:809::200e.443 > 2a01:e0a:e2:e940:913d:1c33:65d9:d9a7.64093: Flags [S.], seq 3182824182, ack 1795020360, win 65535, options [mss 1440,nop,nop,sackOK,nop,wscale 8], length 0




####  LIST OF COMMANDS
tcpdump
* host=firewall sourcetype="port53tttt" source="/var/log/tcpdump.log"
tcpdump DNS 
* host=firewall sourcetype="port53tttt" source="/var/log/tcpdump.log" *.53


tcpdump PORT 80 HTTP
* host=firewall sourcetype="port53tttt" source="/var/log/tcpdump.log" *.80
tcpdump PORT 443 HTTPS
* host=firewall sourcetype="port53tttt" source="/var/log/tcpdump.log" *.443
tcpdump HTTPS IPV6 UDP
* host=firewall sourcetype="port53tttt" source="/var/log/tcpdump.log" UDP
* 
tcpdump HTTPS IPV6 TCP  Win ack
* host=firewall sourcetype="port53tttt" source="/var/log/tcpdump.log" win OR ack

DNS QUERY
* sourcetype=tshark:port53 OR sourcetype=port53tttt src=* dest=*| fields dns_len query length reply_code Len message_type record_type transport | search message_type=QUERY 
| table *
#### ports 22 non monitoré (trop de traffic) ports 23 à 450


ps -aux | grep tcp





#### pas de port icmp particulier
https://www.howtouselinux.com/post/icmp-port-number


- PARAMS:
- -pnns0 
AFFICHE sous forme d'adresse IP
#### DNS explain AAAA CNAME
A = translate ipv4 into human name
CNAME for subdomain
MX mail exchange

https://www.pbrumby.com/2018/05/09/dns-records-explained/



0.18 sec for DNS query failure
#### tracked ports

HTTPS + DNS + HTTP

*23	Telnet*
25	Simple Mail Transfer Protocol (SMTP)
29	MSG ICP
37	Time
42	Host Name Server (Nameserv)
43	WhoIs
49	Login Host Protocol (Login)
**53	Domain Name System (DNS)**
**69	Trivial File Transfer Protocol (TFTP)**
70	Gopher Services
79	Finger
**80	HTTP**
103	X.400 Standard
108	SNA Gateway Access Server
109	POP2
110	POP3
*115	Simple File Transfer Protocol (SFTP)*
118	SQL Services
119	Newsgroup (NNTP)
137	NetBIOS Name Service
*139	NetBIOS Datagram Service*
143	Interim Mail Access Protocol (IMAP)
150	NetBIOS Session Service
156	SQL Server
161	SNMP
179	Border Gateway Protocol (BGP)
190	Gateway Access Control Protocol (GACP)
194	Internet Relay Chat (IRC)
197	Directory Location Service (DLS)
389	Lightweight Directory Access Protocol (LDAP)
396	Novell Netware over IP
**443	HTTPS**
444	Simple Network Paging Protocol (SNPP)
*445	Microsoft-DS*





sources: https://www.webopedia.com/reference/well-known-tcp-port-numbers/#:~:text=The%20following%20list%20of%20well-known%20port%20numbers%20specifies,%28also%20called%20private%20ports%29%20are%2049152%20to%2065535


Pas de serveur SQL ; MAIL ; FTP ; LDAP; SNMP ; SAMBA (445 sauf Windows) /139 ; telnet
### trouver une solution pour afficher des requetes web + détaillés voire meme avec un second file ou par protocole/ports  NotOnSplunk
* host=firewall earliest=-4m  


#### capture http get traffic  juste photo
How to capture All incoming  HTTP GET  traffic (or) requests  
tcpdump -i enp0s8 -s 0 -A 'tcp[((tcp[12:1] & 0xf0) >> 2):4] = 0x47455420'  


why :  
G	47  
E	45  
T	54  
Space	20  


- sources : https://www.middlewareinventory.com/blog/tcpdump-capture-http-get-post-requests-apache-weblogic-websphere/  

https://danielmiessler.com/study/tcpdump/  

Here are some additional ways to tweak how you call tcpdump.  
  -A     Print each packet (minus its link level header) in ASCII.  Handy for capturing web pages.

-X : Show the packet’s contents in both hex and ascii.  
-XX : Same as -X, but also shows the ethernet header.  
-D : Show the list of available interfaces  
-l : Line-readable output (for viewing as you save, or sending to other commands)  
-q : Be less verbose (more quiet) with your output.  
-t : Give human-readable timestamp output.  
-tttt : Give maximally human-readable timestamp output.  
-i eth0 : Listen on the eth0 interface.  
-vv : Verbose output (more v’s gives more output).  
-c : Only get x number of packets and then stop.  
-s : Define the snaplength (size) of the capture in bytes. Use -s0 to get everything, unless you are intentionally capturing less.  
-S : Print absolute sequence numbers.  
-e : Get the ethernet header as well.  
-q : Show less protocol information.  
-E : Decrypt IPSEC traffic by providing an encryption key.  
### Create splunk dashboard default true
### Relancer les attaques Heartbleed
### Do screenshot  


### not did  
#### pcap analyzer  
https://splunkbase.splunk.com/app/2748/#/details  
https://blog.owaspvit.com/2021/01/wireshark-vs-tcpdump.html  

 /usr/sbin/tcpdump -i any -pnns0 -tttt portrange 23-450 and not host 127.0.0.1 -W 1 -w /home/etudiant/18juil-2.pcap  



https://www.bing.com/search?q=sourcetype+csv+splunk&cvid=dad2d7aa4d1a4a3695410670afe6e2ac&aqs=edge..69i57.4118j0j1&pglt=643&FORM=ANNAB1&DAF0=1&PC=U531  
https://www.bing.com/search?q=sourcetype+csv+splunk&cvid=dad2d7aa4d1a4a3695410670afe6e2ac&aqs=edge..69i57.4118j0j1&pglt=643&FORM=ANNAB1&DAF0=1&PC=U531  
https://community.splunk.com/t5/Getting-Data-In/Why-is-my-sourcetype-not-parsing-as-CSV-and-am-getting-two/m-p/244469  


 -pnns0   
https://community.splunk.com/t5/Getting-Data-In/Unable-to-ingest-the-syslog-data-into-splunk/m-p/483216  

voir + haut pour pnns0

https://github.com/firnsy/barnyard2/issues/127  

- sources
https://openclassrooms.com/forum/sujet/grep-ne-marche-plus  
https://www.bing.com/search?q=splunkd.log&qs=n&form=QBRE&sp=-1&pq=splunkd.logs&sc=1-12&sk=&cvid=221D83EED73145D9B1548D1E2CACC0B3  
https://danielmiessler.com/study/tcpdump/  
https://docs.splunk.com/Documentation/Splunk/8.1.3/Search/Selecttimerangestoapply?ref=hk  
https://docs.splunk.com/Documentation/Splunk/8.2.0/Data/Listofpretrainedsourcetypes  
https://www.learnsplunk.com/understanding-inputsconf-in-splunk--outputsconf-in-splunk.html#:~:text=Disabled%20%3D%200%20--%3E%20if%20you%20want%20to,it%20whatever%20you%20want.just%20to%20differentiate%20log%20type  

> Disabled = 0 --> if you want to stop sending logs to splunk then you have to change disabled value from 0 to 1.o means monitoring enabled and 1 means monitoring disabled
> Whitelist --> avoids sending logs with specified extension. It will drop events mentioned in blacklist

https://unix.stackexchange.com/questions/411444/logrotate-dailymaxsize-is-not-rotating

https://stackoverflow.com/questions/25731643/how-to-schedule-tcpdump-to-run-for-a-specific-period-of-time

> You can combine -G {sec} (rotate dump files every x seconds) and -W {count} (limit # of dump files) to get what you want:
> tcpdump -G 15 -W 1 -w myfile -i eth0 'port 8080'
> would run for 15 seconds and then stop. Turn 1.5 hours into seconds and it should work.

- splunk UF draft
root@firewall:/opt/splunkforwarder/etc/apps/TA-tcpdump# cat /opt/splunkforwarder/etc/apps/TA-tcpdump/bin/tcpdump.path
/usr/sbin/tcpdump -pnns0 -i any -tttt port 53 and not host 127.0.0.1


root@firewall:/opt/splunkforwarder/etc/apps/TA-tcpdump# ls



bin  default  default.old.20210711-203111  local  metadata  README  README.txt  static
root@firewall:/opt/splunkforwarder/etc/apps/TA-tcpdump# ls -al /opt/splunkforwarder/etc/apps/TA-tcpdump/bin/tcpdump.path


-rw-rw-r-- 1 splunk splunk 69 juil. 11 20:31 /opt/splunkforwarder/etc/apps/TA-tcpdump/bin/tcpdump.path










### **more attacks**


### splunk links
http://splunk:8000/fr-FR/app/search/idps

http://splunk:8000/fr-FR/app/search/search?earliest=-15m&latest=now&sid=1626623210.25&q=search%20*%20host%3Dfirewall%20sourcetype%3D%22tcpdump%3Aport53%22%20source%3D%22%2Fvar%2Flog%2Ftcpdump.log%22&display.page.search.mode=fast&dispatch.sample_ratio=1&workload_pool=

http://splunk:8000/fr-FR/app/search/search?earliest=-15m&latest=now&sid=1626623197.15&q=search%20*%20host%3Dfirewall%20sourcetype%3D%22tcpdump%3Aport53%22%20source%3D%22%2Fvar%2Flog%2Ftcpdump.log%22&display.page.search.mode=fast&dispatch.sample_ratio=1&display.page.search.tab=patterns&display.page.search.patterns.sensitivity=0.5&workload_pool=


http://splunk:8000/fr-FR/app/search/search?q=search%20*%20sourcetype%3D%22tcpdump%3Aport53%22&display.page.search.mode=smart&dispatch.sample_ratio=1&workload_pool=&earliest=-15m&latest=now&sid=1626623182.14


http://splunk:8000/fr-FR/app/search/search?q=search%20*%20host%3Dfirewall%20earliest%3D-5m%20source%3D%22%2Fvar%2Flog%2Ftcpdump.log%22&display.page.search.mode=smart&dispatch.sample_ratio=1&workload_pool=&earliest=-15m&latest=now&display.page.search.tab=events&sid=1626628621.425








## all tcadump screen OCR
root@debian10:~# tcpdump --version

tcpdump version 4.9.3 libpcap version 1.8.1

OpenSSL 1.1.1d 10 Sep 2019

root@debian10:~# su splunk

splunk@debian10:~$ cd etc/apps/

splunk@debian10:-/etc/apps$ tar xfz /tmp/ta_tcpdump_0.0.2.tgz

splunk@debian10:~/ splunk@debian10:-/etc/apps$

splunk@debian10:-/etc/apps$ cd TA-tcpdump/

splunk@debian10:-/etc/apps/TA-tcpdumps mkdir local

splunk@debian10:-/etc/apps/TA-tcpdump$ cp default/inputs.conf local/

splunk@debian10:-/etc/apps/TA-tcpdump$ vi local/inputs.conf

root@firewall:/opt/splunkforwarder/etc/apps/TA-tcpdump# cat local/inputs.conf
[script://./bin/tcpdump.path]
interval = -1
disabled = 1
sourcetype = port53tttt

    - the sourcetype will be renamed in the future
sourcetype = tcpdump:port53

[monitor:///var/log/tcpdump.log]
isabled = 1
sourcetype = port53tttt

    - the sourcetype will be renamed in the future
sourcetype = tcpdump:port53

splunk@debian10:-/etc/apps/TA-tcpdumps exit

logout

root@debian10:-# cp /opt/splunkforwarder/etc/apps/TA-tcpdump/README/tcpdump.service /etc/systemd/system/

root@debian10:~# systemctl daemon-reload

root@debian10:~# systemctl enable tcpdump root@debian10:~# systemctl start tcpdump

root@debian10:~# ps aux grep tcpdump

root

3084 0.0 0.0 12440 1876 ?

3 and not host 127.0.0.1

root

Ss 19:20 0:00 /usr/sbin/tcpdump -i any -pnns0 -tttt port 5

3086 0.0 0.0 6076 892 pts/0 S+ 19:20 0:00 grep tcpdump

root@debian10:~# cp /opt/splunkforwarder/etc/apps/TA-tcpdump/README/tcpdump /etc/logrotate.d/

root@debian10:~# cat /etc/logrotate.d/tcpdump

/var/log/tcpdump.log {

copytruncate

maxsize 1M daily

}

root@debian10:-# su - splunk

splunk@debian10:~$ bin/splunk add forward-server 192.168.233.92:9997

Your session is invalid. Please login.

Splunk username: admin

Password:

192.168.233.92:9997 forwarded-server already
