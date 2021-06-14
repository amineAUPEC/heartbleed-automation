go to https://www.splunk.com/en_us/download/universal-forwarder.html
wget 
/opt/splunkforwarder/bin/splunk enable boot-start
/opt/splunkforwarder/bin/splunk start

/opt/splunkforwarder/bin/splunk add forward-server $ip_server_splunk:9997


/opt/splunkforwarder/bin/splunk edit user admin -password abcd1234


/opt/splunkforwarder/bin/splunk list forward-server


/opt/splunkforwarder/bin/splunk add monitor /var/log/syslog -index general -sourcetype syslog