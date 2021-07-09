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

## splunk fix


  
