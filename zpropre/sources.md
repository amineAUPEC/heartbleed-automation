## installer splunk 

https://www.laurentmarot.fr/wordpress/?p=4026

https://meritis.fr/comment-fonctionne-splunk/



## splunk install forwarder :
https://www.laurentmarot.fr/wordpress/?p=4026

## débuter avec Splunk

https://docs.splunk.com/Documentation/Splunk/8.1.3/SearchTutorial/Aboutthesearchapp
## Splunk monitor files

https://docs.splunk.com/Documentation/Splunk/latest/Data/Monitorfilesanddirectories

## Licence Splunk

https://community.splunk.com/t5/Archive/Licence-violation-don-t-understand-why/m-p/439275

## Démonstration de Splunk
http://splunk:8000/fr-FR/manager/search/data/ui/views?app_only=True&msgid=3258570.15310628986109753&sort_key=eai%3Aacl.sharing&sort_dir=desc&offset=25

http://splunk:8000/fr-FR/app/search/search


http://splunk:8000/fr-FR/manager/search/data/ui/nav?msgid=2295250.5973670525880231&ns=search&redirecting=true

http://splunk:8000/fr-FR/app/DNS_Insight/top_queries?earliest=-2m&latest=now&form.src=*&form.dest=*




http://splunk:8000/fr-FR/app/search/job_manager?jobStatus=RUNNING&owner=admin&countPerPage=50



index=_internal per_index_thruput earliest=-60d@d latest=now | timechart span=1d eval(sum(kb)/1024) as "Daily Indexing Volume in MB"



## splunk snort

https://neversecure.ca/2019/05/11/configuring-splunk-and-snort-on-your-home-network/



#### splunk snort log parse
https://stackoverflow.com/questions/26246678/read-the-alert-log-from-snort

## tcpdump syntax

https://danielmiessler.com/study/tcpdump/




## heartbeat explications
https://blog.xmco.fr/20140411heartbleed-la-faille-qui-touche-au-coeur-la-suite-openssl/

https://www.synetis.com/la-faille-heartbleed/

https://heartbleed.com/

https://branchez-vous.com/2014/04/14/pour-mieux-comprendre-heartbleed/

https://fr.gregersenartpoint.com/pages/13782-faq-what-is-heartbleed-vulnerability-and-how-to-protect-you
## heartbleed attaque
https://asecuritysite.com/encryption/heart2
https://github.com/Bengman/CTF-writeups/blob/master/Hackthebox/valentine.md


## heartbleed attaque : NSA
https://www.shortform.com/blog/heartbeat-snowden-program/
https://www.wired.com/2014/04/nsa-heartbleed/


## heartbleed attaque par un chercheur en sécurité : jas9reet
https://www.youtube.com/watch?v=qYSAgtG81Ic
https://github.com/jas9reet/heartbleed-lab
https://raw.githubusercontent.com/roflcer/heartbleed-vuln/master/attack.py
https://www.exploit-db.com/docs/49313

## sites vulnérables

https://github.com/musalbas/heartbleed-masstest/blob/00f38986e8044ea8a4065b2e0524f3095f39837d/README.md#changes-on-april-11-1500-utc


### variante ticketbleed
https://filippo.io/ticketbleed/



### fork openssl -- libressl par Google
https://fr.wikipedia.org/wiki/LibreSSL

## sql injection
https://docs.zeek.org/en/current/scripting/index.html#detecting-sql-injection-attacks
## idps

https://droidcops.com/protect-your-network-with-ids-ips-systems-2020/
https://www.forcepoint.com/cyber-edu/intrusion-prevention-system-ips


https://www.ossec.net/
## X509
https://www.bing.com/search?PC=U523&q=X.509+certificates&FORM=ANCMS9&DAF0=1


## webterminal

https://github.com/WalkerWang731/WebTerminal

## docker
https://docs.docker.com/compose/gettingstarted/




### docker
https://stackoverflow.com/questions/45109398/how-can-i-make-docker-compose-bind-the-containers-only-on-defined-network-instea


## git 
https://www.youtube.com/watch?v=gp_k0UVOYMw
# others
https://pdfcrowd.com/#convert_by_input
https://stackoverflow.com/questions/30573696/how-to-convert-local-html-to-pdf
https://github.com/search?q=html+generate+pdf+locally&type=Repositories



## version tls -----
https://www.fatalerrors.org/index.php/a/secure-tls1.2-connection-process.html