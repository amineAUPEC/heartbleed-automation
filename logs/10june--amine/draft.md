
```bash
etudiant@debian-buster:~$ curl -I -k --tlsv1 https://192.168.1.173
etudiant@debian-buster:~$ curl -I --tlsv1 https://192.168.1.173
```




========================

```bash
etudiant@debian-buster:~/heartbleed-example/hb-certs$ cat sslcert_127.0.0.1*
-----BEGIN CERTIFICATE-----
MIIDizCCAnOgAwIBAgIJAKpF6rFfpcLQMA0GCSqGSIb3DQEBBQUAMFwxCzAJBgNV
BAYTAlVTMQ8wDQYDVQQIDAZEZW5pYWwxFDASBgNVBAcMC1NwcmluZ2ZpZWxkMQww
CgYDVQQKDANEaXMxGDAWBgNVBAMMD3d3dy5leGFtcGxlLmNvbTAeFw0xNDA0MTAy
MDQ1MjJaFw0xNTA0MTAyMDQ1MjJaMFwxCzAJBgNVBAYTAlVTMQ8wDQYDVQQIDAZE
ZW5pYWwxFDASBgNVBAcMC1NwcmluZ2ZpZWxkMQwwCgYDVQQKDANEaXMxGDAWBgNV
BAMMD3d3dy5leGFtcGxlLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC
ggEBAMFkvhj5R2obtxTcKJATrlnoh+BFYQYiuzL+HOKsRLLapKXuQzW7GtYJe2O1
trt+B9bUCjoywrq4LOvDnz5tttP8+Y3C2qgUKN0Q0maKXmhF0raLss0IMJiJneb1
DsVr/MOmd0G26OmMTZATM0JEWFJZutvlZU63Gyx79XvbYagsjxgh8Pe3KgenJnEF
BK+3rS66w19YIxx8qvDtsHx/0pZgOfP6AdxVq1bD9DXzNIRugztFGhwB5B3bpgRc
lC9fLYGAnYG6iPxnRvR5Nk/oS9GUT4+yo+eaAx+5FtPviKnW08IBCbXHDlt+7BT1
I+ghU+aC7nJo3slyl9HamF8llCUCAwEAAaNQME4wHQYDVR0OBBYEFBixR+kInjHx
3SKf4W11ZNxh2yV/MB8GA1UdIwQYMBaAFBixR+kInjHx3SKf4W11ZNxh2yV/MAwG
A1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADggEBAFbhnkXG2TlcUBCmWECU1US5
mhAFxC6SAK5+DLKmdFYDVNE7pnmqVvado0UCmS3Cy6JBHz0c+g38cQeA+Y5wohEW
quBop9Qc6Te97XD8Tn78PqBzUT60EX6bNYTlKqCxS2LXq0U1OnKz3qnYwKEaev2j
aotwIpMsBw+zpsQm+HvHChCeWFTItWIW+MXP1wTueg57qDLDmMclLwK7OSQ3fk+u
p1kRxisNnDzn9H5KhG61OQY36I4yYoUIN9vTlYJZ1s9PXnZzeCJR9+cDXPyuvqNJ
pQ9do0/+KPk71ve4E/EADctlwPsipWnU88gzZ+3nnS9e9bz47HJ2UeVEJORYzvA=
-----END CERTIFICATE-----
-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwWS+GPlHahu3FNwokBOu
WeiH4EVhBiK7Mv4c4qxEstqkpe5DNbsa1gl7Y7W2u34H1tQKOjLCurgs68OfPm22
0/z5jcLaqBQo3RDSZopeaEXStouyzQgwmImd5vUOxWv8w6Z3Qbbo6YxNkBMzQkRY
Ulm62+VlTrcbLHv1e9thqCyPGCHw97cqB6cmcQUEr7etLrrDX1gjHHyq8O2wfH/S
lmA58/oB3FWrVsP0NfM0hG6DO0UaHAHkHdumBFyUL18tgYCdgbqI/GdG9Hk2T+hL
0ZRPj7Kj55oDH7kW0++IqdbTwgEJtccOW37sFPUj6CFT5oLucmjeyXKX0dqYXyWU
JQIDAQAB
-----END PUBLIC KEY-----
```

=========================================================================
même avec une nouvelle VM 

```bash
etudiant@debian-buster:~/heartbleed-example$ curl --version
curl 7.64.0 (x86_64-pc-linux-gnu) libcurl/7.64.0 OpenSSL/1.1.1d zlib/1.2.11 libidn2/2.0.5 libpsl/0.20.2 (+libidn2/2.0.5) libssh2/1.8.0 nghttp2/1.36.0 librtmp/2.3
Release-Date: 2019-02-06
Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps pop3 pop3s rtmp rtsp scp sftp smb smbs smtp smtps telnet tftp
Features: AsynchDNS IDN IPv6 Largefile GSS-API Kerberos SPNEGO NTLM NTLM_WB SSL libz TLS-SRP HTTP2 UnixSockets HTTPS-proxy PSL



etudiant@debian-buster:~/heartbleed-example$ curl --insecure https://192.168.1.173
curl: (35) error:141A318A:SSL routines:tls_process_ske_dhe:dh key too small
```




curl 7.55.1 (Windows) libcurl/7.55.1 WinSSL
Release-Date: 2017-11-14, security patched: 2019-11-05
Protocols: dict file ftp ftps http https imap imaps pop3 pop3s smtp smtps telnet tftp
Features: AsynchDNS IPv6 Largefile SSPI Kerberos SPNEGO NTLM SSL




fonctionne sous windows -- a liut --- mais pas sous debian buster pour le curl stimulate server


=> solving :
https://imlc.me/dh-key-too-small


/etc/ssl/openssl.cnf

[system_default_sect]
MinProtocol = TLSv1.2
CipherString = DEFAULT@SECLEVEL=2






<!-- sed -i /etc/ssl/openssl.cnf  -->

sudo sed -E -i 's/CipherString = DEFAULT@SECLEVEL=2/CipherString = DEFAULT@SECLEVEL=1/' /etc/ssl/openssl.cnf





===============================


metasploit-framework is already the newest version (6.0.48+20210610102548~1rapid7-1).
0 upgraded, 0 newly installed, 0 to remove and 4 not upgraded.
[!] The following modules could not be loaded!
[!]     /opt/metasploit-framework/embedded/framework/modules/auxiliary/gather/office365userenum.py
[!] Please see /root/.msf4/logs/framework.log for details.
VERBOSE => true
RHOSTS => 192.168.1.33
[*] 192.168.1.33:443      - Leaking heartbeat response #1
[*] 192.168.1.33:443      - Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf6 auxiliary(scanner/ssl/openssl_heartbleed) > Interrupt: use the 'exit' command to quit
msf6 auxiliary(scanner/ssl/openssl_heartbleed) > exit

etudiant@debian-buster:~/heartbleed-automation/bash/msf$ cat  /root/.msf4/logs/framework.log
cat: /root/.msf4/logs/framework.log: Permission denied
etudiant@debian-buster:~/heartbleed-automation/bash/msf$ sudo !!
sudo cat  /root/.msf4/logs/framework.log
[06/10/2021 19:59:42] [e(0)] core: Failed to connect to the database: No database YAML file
[06/10/2021 19:59:42] [d(0)] core: Created user based module store
[06/10/2021 19:59:45] [e(0)] core: Dependency for windows/encrypted_shell_reverse_tcp is not supported
[06/10/2021 19:59:45] [e(0)] core: Dependency for windows/x64/encrypted_shell_reverse_tcp is not supported
[06/10/2021 19:59:45] [e(0)] core: Dependency for windows/encrypted_reverse_tcp is not supported
[06/10/2021 19:59:45] [e(0)] core: Dependency for windows/x64/encrypted_reverse_tcp is not supported
[06/10/2021 19:59:45] [e(0)] core: /opt/metasploit-framework/embedded/framework/modules/auxiliary/gather/office365userenum.py failed to load - LoadError  Try running file manually to check for errors or dependency issues.
[06/10/2021 19:59:48] [d(0)] core: HistoryManager.push_context name: :msfconsole
[06/10/2021 20:16:06] [d(0)] core: HistoryManager.pop_context name: :msfconsole
[06/10/2021 20:26:20] [e(0)] core: Failed to connect to the database: No database YAML file
[06/10/2021 20:26:22] [e(0)] core: Dependency for windows/encrypted_shell_reverse_tcp is not supported
[06/10/2021 20:26:22] [e(0)] core: Dependency for windows/x64/encrypted_shell_reverse_tcp is not supported
[06/10/2021 20:26:22] [e(0)] core: Dependency for windows/encrypted_reverse_tcp is not supported
[06/10/2021 20:26:22] [e(0)] core: Dependency for windows/x64/encrypted_reverse_tcp is not supported
[06/10/2021 20:26:22] [e(0)] core: /opt/metasploit-framework/embedded/framework/modules/auxiliary/gather/office365userenum.py failed to load - LoadError  Try running file manually to check for errors or dependency issues.
[06/10/2021 20:26:25] [d(0)] core: HistoryManager.push_context name: :msfconsole
[06/10/2021 20:26:47] [d(0)] core: HistoryManager.pop_context name: :msfconsole





=====================
check TLS options to be executed on the server

openssl ciphers -v | awk '{print $2}' | sort | uniq

------------------
root@63445b775e24:/# openssl ciphers -v | awk '{print $2}' | sort | uniq
SSLv3
TLSv1.2
================

- msf :

set TLS_VERSION 1.2

=============

test avec username dans le script python inject_data.py aka stimulate_server.py



résultat similaire

=======
usage de la commande strings recommandé
========

- watch alternative
while true; do jobs; sleep 10; done




=============
check

```bash
cd ./python/fox_heartbleedtest.py
python fox_heartbleedtest.py 192.168.1.173 -p 443
```

192.168.1.173|VULNERABLE


==============

 7   auxiliary/scanner/http/ssl_version                          2014-10-14       normal     No     HTTP SSL/TLS Version Detection (POODLE scanner)



 auxiliary/scanner/ssl/openssl_ccs                           2014-06-05       normal     No     OpenSSL Server-Side ChangeCipherSpec Injection Scanner
   38  auxiliary/dos/ssl/openssl_aesni                             2013-02-05       normal     No     OpenSSL TLS 1.1 and 1.2 AES-NI DoS




   56  payload/cmd/unix/reverse_openssl                                             normal     No     Unix Command Shell, Double Reverse TCP SSL (openssl)


payload/cmd/unix/reverse_ssl_double_telnet                                   normal     No     Unix Command Shell, Double Reverse TCP SSL (telnet)
   58  payload/cmd/unix/reverse_ncat_ssl                                            normal     No     Unix Command Shell, Reverse TCP (via ncat)
   59  payload/cmd/unix/reverse_bash_telnet_ssl                                     normal     No     Unix Command Shell, Reverse TCP SSL (telnet)
   60  payload/cmd/unix/reverse_ruby_ssl                                            normal     No     Unix Command Shell, Reverse TCP SSL (via Ruby)
   61  payload/cmd/unix/reverse_perl_ssl                                            normal     No     Unix Command Shell, Reverse TCP SSL (via perl)
   62  payload/cmd/unix/reverse_php_ssl                                             normal     No     Unix Command Shell, Reverse TCP SSL (via php)
   63  payload/cmd/unix/reverse_python_ssl                                          normal     No     Unix Command Shell, Reverse TCP SSL (via python)






========================
Every 2.0s: sudo python heartbleed.py 10.10.3.155 -p 443                                                                           pentest: Mon Jun 14 12:58:06 2021


defribulator v1.16
A tool to test and exploit the TLS heartbeat vulnerability aka heartbleed (CVE-2014-0160)

##################################################################
Connecting to: 10.10.3.155:443, 1 times
Sending Client Hello for TLSv1.0


=====
etudiant@bwapp:~$ sudo docker run -d -p 80:80 -p 8443:8443 raesene/bwapp
b21a824137f0bc0f5c65e80d5473ee6d8a1e9b6f17d3773540debb349d0613be
etudiant@bwapp:~$
etudiant@bwapp:~$ sudo docker ps
sudo docker stop



===============

   95  git clone https://github.com/Z4nzu/hackingtool.git
   96  chmod -R 755 hackingtool
   97  cd hackingtool
   98  sudo pip3 install -r requirement.txt
   99  sudo apt-get install -y python3-pip
  100  sudo pip3 install -r requirement.txt
  101  bash install.sh
  102  1
  103  bash install.sh
  104  sudo bash install.sh
  105  ls
  106  sudo hackingtool.py
  107  sudo python hackingtool.py
  108  sudo python3 hackingtool.py
  109  mv extended-xss-search/example.app-settings.conf extended-xss-search/app-settings.conf
  110  ls
  111  ls tools/
  112  ls /home/hackingtool/extended-xss-search/
  113  sudo ls /home/hackingtool/extended-xss-search/
  114  mv /home/hackingtool/extended-xss-search/example.app-settings.conf /home/hackingtool/extended-xss-search/app-settings.conf
  115  sudo mv /home/hackingtool/extended-xss-search/example.app-settings.conf /home/hackingtool/extended-xss-search/app-settings.conf
  116  ls
  117  history
===================================

etudiant@bwapp:~$ docker pull santosomar/bwapp
Using default tag: latest
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Post http://%2Fvar%2Frun%2Fdocker.sock/v1.40/images/create?fromImage=santosomar%2Fbwapp&tag=latest: dial unix /var/run/docker.sock: connect: permission denied
etudiant@bwapp:~$ sudo !!
sudo docker pull santosomar/bwapp
Using default tag: latest
latest: Pulling from santosomar/bwapp
8387d9ff0016: Already exists
3b52deaaf0ed: Already exists
4bd501fad6de: Already exists
a3ed95caeb02: Already exists
790f0e8363b9: Already exists
11f87572ad81: Already exists
341e06373981: Already exists
709079cecfb8: Already exists
55bf9bbb788a: Already exists
b41f3cfd3d47: Already exists
70789ae370c5: Already exists
43f2fd9a6779: Already exists
6a0b3a1558bd: Already exists
934438c9af31: Already exists
1cfba20318ab: Already exists
de7f3e54c21c: Already exists
596da16c3b16: Already exists
e94007c4319f: Already exists
3c013e645156: Already exists
3c50b6be5c22: Pull complete
8a70668e70d6: Pull complete
75503f1fa0de: Pull complete
Digest: sha256:a3a91cb10ecf03b4afedc1224f66c07712cafdde72d91e2750c123862513aa58
Status: Downloaded newer image for santosomar/bwapp:latest
docker.io/santosomar/bwapp:latest
etudiant@bwapp:~$ sudo docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS                                                  NAMES
45d9e82c6f9a        raesene/bwapp       "/run.sh"           17 minutes ago      Up 17 minutes       0.0.0.0:80->80/tcp, 0.0.0.0:8443->8443/tcp, 3306/tcp   gracious_wozniak
etudiant@bwapp:~$ sudo docker stop 45d9e82c6f9a
45d9e82c6f9a
etudiant@bwapp:~$ sudo docker stop 45d9e82c6f9a
etudiant@bwapp:~$ sudo docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
etudiant@bwapp:~$ sudo docker run -d -p 80:80 -p 8443:8443 santosomar/bwapp
6361a470811909d907c20343e71cdf44f6fe05cbedd09c30eb7494abeb52f460
etudiant@bwapp:~$ sudo docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS                                                  NAMES
6361a4708119        santosomar/bwapp    "/run.sh"           5 seconds ago       Up 3 seconds        0.0.0.0:80->80/tcp, 0.0.0.0:8443->8443/tcp, 3306/tcp   friendly_jang
=========================
   20  ip a
   21  sudo docker run -d -p *:* raesene/bwapp
   22  sudo docker run -d -p 0:0 raesene/bwapp
   23  sudo docker run -d -p 80:80, 8443:8443 raesene/bwapp
   24  sudo docker run -d -p 80:80 8443:8443 raesene/bwapp
   25  sudo docker run -d -p 80:80 -p 8443:8443 raesene/bwapp
   26  sudo ps -aux
   27  sudo ps -aux | grep docker
   28  sudo ps -aux | grep proxy
   29  sudo docker ps
   30  sudo docker stop ab7f9917f7be
   31  sudo docker run -d -p 80:80 -p 8443:8443 raesene/bwapp
   32  sudo docker ps
   33  sudo docker stop b21a824137f0
   34* sudo docker run -d --p 8443:8443 raesene/bwapp
   35  sudo docker ps
   36  sudo docker stop 775a16a4a387
   37  sudo docker run -d -p 8443:8443 raesene/bwapp
   38  sudo docker ps
   39  sudo docker stop 41d8199d3c83
   40  ls
   41  sudo docker ps
   42  sudo docker run -d --publish=80:80 --publish=8443:8443 raesene/bwapp
   43  sudo docker ps
   44  sudo docker exec -it 45d9e82c6f9a bash
   45  nted language (standard library, version
   46  docker pull santosomar/bwapp
   47  sudo docker pull santosomar/bwapp
   48  sudo docker ps
   49  sudo docker stop 45d9e82c6f9a
   50  sudo docker ps
   51  sudo docker run -d -p 80:80 -p 8443:8443 santosomar/bwapp
   52  sudo docker ps
   53  sudo docker stop 6361a4708119
   54  history
================



   56  payload/cmd/unix/reverse_openssl                                             normal     No     Unix Command Shell, Double Reverse TCP SSL (openssl)
   57  payload/cmd/unix/reverse_ssl_double_telnet                                   normal     No     Unix Command Shell, Double Reverse TCP SSL (telnet)
   58  payload/cmd/unix/reverse_ncat_ssl                                            normal     No     Unix Command Shell, Reverse TCP (via ncat)
   59  payload/cmd/unix/reverse_bash_telnet_ssl                                     normal     No     Unix Command Shell, Reverse TCP SSL (telnet)
   60  payload/cmd/unix/reverse_ruby_ssl                                            normal     No     Unix Command Shell, Reverse TCP SSL (via Ruby)
   61  payload/cmd/unix/reverse_perl_ssl                                            normal     No     Unix Command Shell, Reverse TCP SSL (via perl)
   62  payload/cmd/unix/reverse_php_ssl                                             normal     No     Unix Command Shell, Reverse TCP SSL (via php)
   63  payload/cmd/unix/reverse_python_ssl                                          normal     No     Unix Command Shell, Reverse TCP SSL (via python)
   64  auxiliary/scanner/vmware/vmware_server_dir_trav                              normal     No     VMware Server Directory Traversal Vulnerability
   65  exploit/windows/backupexec/ssl_uaf                          2017-05-10       normal     Yes    Veritas/Symantec Backup Exec SSL NDMP Connection Use-After-Free
   66  exploit/multi/http/vtiger_logo_upload_exec                  2015-09-28       excellent  Yes    Vtiger CRM - Authenticated Logo Upload RCE
   67  auxiliary/scanner/winrm/winrm_login                                          normal     No     WinRM Login Utility
   68  payload/windows/meterpreter/reverse_https_proxy                              normal     No     Windows Meterpreter (Reflective Injection), Reverse HTTPS Stager with Support for Custom Proxy
   69  exploit/osx/local/cfprefsd_race_condition                   2020-03-18       excellent  Yes    macOS cfprefsd Arbitrary File Write Local Privilege Escalation


Interact with a module by name or index. For example info 69, use 69 or use exploit/osx/local/cfprefsd_race_condition

msf6 auxiliary(scanner/ssl/openssl_heartbleed) > use 56
msf6 payload(cmd/unix/reverse_openssl) > info

       Name: Unix Command Shell, Double Reverse TCP SSL (openssl)
     Module: payload/cmd/unix/reverse_openssl
   Platform: Unix
       Arch: cmd
Needs Admin: No
 Total size: 152
       Rank: Normal

Provided by:
  hdm <x@hdm.io>

Basic options:
Name   Current Setting  Required  Description
----   ---------------  --------  -----------
LHOST                   yes       The listen address (an interface may be specified)
LPORT  4444             yes       The listen port

Description:
  Creates an interactive shell through two inbound connections


msf6 payload(cmd/unix/reverse_openssl) > set LHOST 127.0.0.1
LHOST => 127.0.0.1
msf6 payload(cmd/unix/reverse_openssl) > set LHOST 10.10.0.113
LHOST => 10.10.0.113
msf6 payload(cmd/unix/reverse_openssl) > run
[-] Unknown command: run.
msf6 payload(cmd/unix/reverse_openssl) > exploit
[-] Unknown command: exploit.
msf6 payload(cmd/unix/reverse_openssl) > run
[-] Unknown command: run.
msf6 payload(cmd/unix/reverse_openssl) > set LPORT 4444
LPORT => 4444
msf6 payload(cmd/unix/reverse_openssl) > run
[-] Unknown command: run.
msf6 payload(cmd/unix/reverse_openssl) > info

       Name: Unix Command Shell, Double Reverse TCP SSL (openssl)
     Module: payload/cmd/unix/reverse_openssl
   Platform: Unix
       Arch: cmd
Needs Admin: No
 Total size: 174
       Rank: Normal

Provided by:
  hdm <x@hdm.io>

Basic options:
Name   Current Setting  Required  Description
----   ---------------  --------  -----------
LHOST  10.10.0.113      yes       The listen address (an interface may be specified)
LPORT  4444             yes       The listen port

Description:
  Creates an interactive shell through two inbound connections


msf6 payload(cmd/unix/reverse_openssl) > Interrupt: use the 'exit' command to quit
msf6 payload(cmd/unix/reverse_openssl) > set pay
