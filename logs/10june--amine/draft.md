
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
