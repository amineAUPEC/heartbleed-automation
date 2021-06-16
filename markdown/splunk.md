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
 