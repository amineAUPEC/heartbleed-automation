- snort launch :

<!-- /usr/sbin/snort -->
/usr/sbin/snort -A console -i enp0s3 -u snort -c /etc/snort/snort.conf
- snort logs :



/var/log/snort/snort.log.1623011972
/var/log/snort/snort.log.1622820706
/var/log/snort/snort.log.1623011110
/var/log/snort/snort.log.1622822567
/var/log/snort/snort.log.1623011290
/var/log/snort/snort.log.1623010933
/var/log/snort/snort.log.1623011380
/var/log/snort/snort.log.1623010233
/var/log/snort/snort.log.1622822242
/var/log/snort/snort.log.1623010477
/var/log/snort/snort.log.1622822098
/var/log/snort/snort.log.1623009807
/var/log/snort/snort.log.1623012295
/var/log/snort/snort.log.1623010530
/var/log/snort/snort.log.1623055700
/var/log/snort/snort.log
/var/log/snort/snort.log.1622823616
/var/log/snort/snort.log.1622821566



===

    inet6 2a01:e34:ec0c:4bd0:a00:27ff:fed9:39ab/64 scope global dynamic mngtmpaddr
       valid_lft 86387sec preferred_lft 86387sec
    inet6 fe80::a00:27ff:fed9:39ab/64 scope link
       valid_lft forever preferred_lft forever
3: eth1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1
====

heartbleed detcetion

06/17-14:37:56.354938  [**] [1:1:1] Tentative connexion ICMP [**] [Priority: 0] {IPV6-ICMP} fe80::160c:76ff:fe9d:

06/17-14:47:20.414940  [**] [1:21001131:5] FOX-SRT - Suspicious - TLS-SSL Large Heartbeat Response [**] 



=====

Commencing packet processing (pid=1456)
06/17-15:49:38.268440  [**] [1:1917:6] SCAN UPnP service discover attempt [**] [Classification: Dettwork Scan] [Priority: 3] {UDP} 192.168.1.40:49343 -> 239.255.255.250:1900


06/17-16:02:39.525351  [**] [1:21001131:5] FOX-SRT - Suspicious - TLS-SSL Large Heartbeat Response [**] [Classification: Potentially Bad Traffic] [Priority: 2] {TCP} 192.168.1.49:443 -> 192.168.1.33:60740

===


06/17-14:37:56.354938  [**] [1:1:1] Tentative connexion ICMP [**] [Priority: 0] {IPV6-ICMP} fe80::160c:76ff:fe9d:
06/17-14:37:57.435663  [**] [1:1:1] Tentative connexion ICMP [**] [Priority: 0] {IPV6-ICMP} fe80::160c:76ff:fe9d:
06/17-14:37:58.479553  [**] [1:1:1] Tentative connexion ICMP [**] [Priority: 0] {IPV6-ICMP} fe80::160c:76ff:fe9d:
06/17-14:37:58.555683  [**] [1:1917:6] SCAN UPnP service discover attempt [**] [Classification: Detection of a Ne



[Classification: Potentially Bad Traffic] [Priority: 2] {TCP} 192.168.1.49:443 -> 192.168.1.33:46719
06/17-14:47:21.726763  [**] [1:1:1] Tentative connexion ICMP [**] [Priority: 0] {IPV6-ICMP} fe80::b135:8978:c170:eda4 -> fe80::160c:76ff:fe9d:65ea
06/17-14:47:21.734110  [**] [1:1:1] Tentative connexion ICMP [**] [Priority: 0] {IPV6-ICMP} fe80::160c:76ff:fe9d:65ea -> fe80::b135:8978:c170:eda4
06/17-14:47:27.911312  [**] [1:1:1] Tentative connexion ICMP [**] [Priority: 0] {IPV6-ICMP} fe80::160c:76ff:fe9d:65ea -> ff02::1:ff00:30fe
====



reduce time of detection
nano /etc/snort/rules/local.rules



===


nano /etc/sysctl.conf

ou sed


sysctl -p





======




oot@firewall:~# cat /etc/snort/rules/local.rules
# $Id: local.rules,v 1.11 2004/07/23 20:15:44 bmc Exp $
# ----------------
# LOCAL RULES
# ----------------
# This file intentionally does not come with signatures.  Put your local
# additions here.

#ICMP-alerts
alert icmp any any -> $HOME_NET any (msg:"Tentative connexion ICMP"; sid:00001; rev:1;)

#HEART-BLEED-ALERTS : Time of detection reduced
alert tcp any any -> any any (msg:"FOX-SRT - Flowbit - TLS-SSL Client Hello"; flow:established; dsize:< 500; content:"|16 03|"; depth:2; byte_test:1, <=, 2, 3; byte_test:1, !=, 2, 1; content:"|01|"; offset:5; depth:1; content:"|03|"; offset:9; byte_test:1, <=, 3, 10; byte_test:1, !=, 2, 9; content:"|00 0f 00|"; flowbits:set,foxsslsession; flowbits:noalert; threshold:type limit, track by_src, count 1, seconds 60; reference:cve,2014-0160; classtype:bad-unknown; sid: 21001130; rev:9;)
alert tcp any any -> any any (msg:"FOX-SRT - Suspicious - TLS-SSL Large Heartbeat Response"; flow:established; flowbits:isset,foxsslsession; content:"|18 03|"; depth: 2; byte_test:1, <=, 3, 2; byte_test:1, !=, 2, 1; byte_test:2, >, 200, 3; threshold:type limit, track by_src, count 1; reference:cve,2014-0160; classtype:bad-unknown; sid: 21001131; rev:5;)

#HEART-BLEED-ALERTS
#alert tcp any any -> any any (msg:"FOX-SRT - Flowbit - TLS-SSL Client Hello"; flow:established; dsize:< 500; content:"|16 03|"; depth:2; byte_test:1, <=, 2, 3; byte_test:1, !=, 2, 1; content:"|01|"; offset:5; depth:1; content:"|03|"; offset:9; byte_test:1, <=, 3, 10; byte_test:1, !=, 2, 9; content:"|00 0f 00|"; flowbits:set,foxsslsession; flowbits:noalert; threshold:type limit, track by_src, count 1, seconds 60; reference:cve,2014-0160; classtype:bad-unknown; sid: 21001130; rev:9;)
#alert tcp any any -> any any (msg:"FOX-SRT - Suspicious - TLS-SSL Large Heartbeat Response"; flow:established; flowbits:isset,foxsslsession; content:"|18 03|"; depth: 2; byte_test:1, <=, 3, 2; byte_test:1, !=, 2, 1; byte_test:2, >, 200, 3; threshold:type limit, track by_src, count 1, seconds 600; reference:cve,2014-0160; classtype:bad-unknown; sid: 21001131; rev:5;)

#SQL-INJECTION-ALERTS

#Error Based SQL Injection
alert tcp any any -> any 80 (msg: "Error Based SQL Injection Detected"; content: "%27" ; sid:100000011; )
alert tcp any any -> any 80 (msg: "Error Based SQL Injection Detected"; content: "22" ; sid:100000012; )

#Boolean Based SQL Injection
alert tcp any any -> any 80 (msg: "AND SQL Injection Detected"; content: "and" ; nocase; sid:100000060; )
alert tcp any any -> any 80 (msg: "OR SQL Injection Detected"; content: "or" ; nocase; sid:100000061; )

#Encoded AND/OR (Not Working !)
alert tcp any any -> any 80 (msg: "AND SQL Injection Detected"; content: "and" ; nocase; sid:100000008; )
alert tcp any any -> any 80 (msg: "OR SQL Injection Detected"; content: "or" ; nocase; sid:100000009; )

#Form Based SQL Injection
alert tcp any any -> any 80 (msg: "Form Based SQL Injection Detected"; content: "%27" ; sid:1000003; )

#Order by SQL Injection
alert tcp any any -> any 80 (msg: "Order by SQL Injection"; content: "order" ; sid:1000005; )

#Identify Union Based SQL Injection
alert tcp any any -> any 80 (msg: "UNION SELECT SQL Injection"; content: "union" ; sid:1000006; )





#alert tcp any any -> $HOME_NET any (msg:"FOX-SRT - Suspicious - SSLv3 Large Heartbeat Response"; flow:established,to_client; content:"|18 03 00|"; depth: 3; byte_test:2, >, 200, 3, big; byte_test:2, <, 16385, 3, big; threshold:type limit, track by_src, count 1, seconds 600; reference:cve,2014-0160; classtype:bad-unknown; sid: 1000000; rev:4;)

#alert tcp any any -> $HOME_NET any (msg:"FOX-SRT - Suspicious - TLSv1 Large Heartbeat Response"; flow:established,to_client; content:"|18 03 01|"; depth: 3; byte_test:2, >, 200, 3, big; byte_test:2, <, 16385, 3, big; threshold:type limit, track by_src, count 1, seconds 600; reference:cve,2014-0160; classtype:bad-unknown; sid: 1000001; rev:4;)

#alert tcp any any -> $HOME_NET any (msg:"FOX-SRT - Suspicious - TLSv1.1 Large Heartbeat Response"; flow:established,to_client; content:"|18 03 02|"; depth: 3; byte_test:2, >, 200, 3, big; byte_test:2, <, 16385, 3, big; threshold:type limit, track by_src, count 1, seconds 600; reference:cve,2014-0160; classtype:bad-unknown; sid: 1000002; rev:4;)

#alert tcp any any -> $HOME_NET any (msg:"FOX-SRT - Suspicious - TLSv1.2 Large Heartbeat Response"; flow:established,to_client; content:"|18 03 03|"; depth: 3; byte_test:2, >, 200, 3, big; byte_test:2, <, 16385, 3, big; threshold:type limit, track by_src, count 1, seconds 600; reference:cve,2014-0160; classtype:bad-unknown; sid: 1000003; rev:4;)



#alert tcp any [80,443] -> any [80,443] (msg:"FOX-SRT - Suspicious - SSLv3 Large Heartbeat Response"; flow:established,to_client; content:"|18 03 00|"; depth: 3; byte_test:2, >, 200, 3, big; byte_test:2, <, 16385, 3, big; threshold:type limit, track by_src, count 1, seconds 600; reference:cve,2014-0160; classtype:bad-unknown; sid: 1000000; rev:4;)

#alert tcp any [80,443] -> any [80,443] (msg:"FOX-SRT - Suspicious - TLSv1 Large Heartbeat Response"; flow:established,to_client; content:"|18 03 01|"; depth: 3; byte_test:2, >, 200, 3, big; byte_test:2, <, 16385, 3, big; threshold:type limit, track by_src, count 1, seconds 600; reference:cve,2014-0160; classtype:bad-unknown; sid: 1000001; rev:4;)

#alert tcp any [80,443] -> any [80,443] (msg:"FOX-SRT - Suspicious - TLSv1.1 Large Heartbeat Response"; flow:established,to_client; content:"|18 03 02|"; depth: 3; byte_test:2, >, 200, 3, big; byte_test:2, <, 16385, 3, big; threshold:type limit, track by_src, count 1, seconds 600; reference:cve,2014-0160; classtype:bad-unknown; sid: 1000002; rev:4;)

#alert tcp any [80,443] -> any [80,443] (msg:"FOX-SRT - Suspicious - TLSv1.2 Large Heartbeat Response"; flow:established,to_client; content:"|18 03 03|"; depth: 3; byte_test:2, >, 200, 3, big; byte_test:2, <, 16385, 3, big; threshold:type limit, track by_src, count 1, seconds 600; reference:cve,2014-0160; classtype:bad-unknown; sid: 1000003; rev:4;)


====

##### WARNING: /etc/snort/rules/local.rules(12) threshold (in rule) is deprecated; use detection_filter instead.




WARNING: /etc/snort/rules/community-sql-injection.rules(6) GID 1 SID 100000106 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-sql-injection.rules(7) GID 1 SID 100000107 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-sql-injection.rules(8) GID 1 SID 100000108 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-sql-injection.rules(9) GID 1 SID 100000109 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-sql-injection.rules(11) GID 1 SID 100000192 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-sql-injection.rules(12) GID 1 SID 100000193 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-sql-injection.rules(13) GID 1 SID 100000194 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-sql-injection.rules(14) GID 1 SID 100000690 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-sql-injection.rules(15) GID 1 SID 100000691 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-client.rules(6) GID 1 SID 100000118 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-client.rules(7) GID 1 SID 100000119 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-client.rules(9) GID 1 SID 100000228 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-client.rules(14) GID 1 SID 100000284 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-client.rules(16) GID 1 SID 100000447 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-client.rules(18) GID 1 SID 100000692 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-client.rules(20) GID 1 SID 100000693 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-client.rules(23) GID 1 SID 100000864 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-iis.rules(7) GID 1 SID 100000138 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-iis.rules(8) GID 1 SID 100000139 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-iis.rules(9) GID 1 SID 100000173 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-iis.rules(10) GID 1 SID 100000174 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(6) GID 1 SID 100000121 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(7) GID 1 SID 100000122 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(8) GID 1 SID 100000129 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(9) GID 1 SID 100000130 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(10) GID 1 SID 100000131 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(12) GID 1 SID 100000132 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(13) GID 1 SID 100000133 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(14) GID 1 SID 100000140 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(15) GID 1 SID 100000141 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(16) GID 1 SID 100000142 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(17) GID 1 SID 100000143 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(18) GID 1 SID 100000144 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(19) GID 1 SID 100000145 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(20) GID 1 SID 100000146 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(22) GID 1 SID 100000148 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(23) GID 1 SID 100000149 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(24) GID 1 SID 100000150 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(25) GID 1 SID 100000177 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(26) GID 1 SID 100000178 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(27) GID 1 SID 100000179 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(28) GID 1 SID 100000184 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(29) GID 1 SID 100000185 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(30) GID 1 SID 100000200 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(31) GID 1 SID 100000209 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(33) GID 1 SID 100000216 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(34) GID 1 SID 100000217 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(35) GID 1 SID 100000225 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(38) GID 1 SID 100000237 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(39) GID 1 SID 100000302 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(40) GID 1 SID 100000303 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(42) GID 1 SID 100000313 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(43) GID 1 SID 100000314 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(49) GID 1 SID 100000317 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(50) GID 1 SID 100000318 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(51) GID 1 SID 100000319 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(52) GID 1 SID 100000320 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(53) GID 1 SID 100000321 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(54) GID 1 SID 100000322 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(55) GID 1 SID 100000323 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(56) GID 1 SID 100000324 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(57) GID 1 SID 100000325 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(58) GID 1 SID 100000326 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(59) GID 1 SID 100000327 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(60) GID 1 SID 100000328 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(61) GID 1 SID 100000329 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(62) GID 1 SID 100000330 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(63) GID 1 SID 100000331 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(64) GID 1 SID 100000332 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(65) GID 1 SID 100000333 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(66) GID 1 SID 100000334 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(67) GID 1 SID 100000335 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(68) GID 1 SID 100000336 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(69) GID 1 SID 100000337 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(70) GID 1 SID 100000338 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(71) GID 1 SID 100000339 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(72) GID 1 SID 100000340 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(73) GID 1 SID 100000341 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(74) GID 1 SID 100000342 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(75) GID 1 SID 100000343 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(76) GID 1 SID 100000344 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(77) GID 1 SID 100000345 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(78) GID 1 SID 100000346 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(79) GID 1 SID 100000347 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(80) GID 1 SID 100000348 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(81) GID 1 SID 100000349 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(82) GID 1 SID 100000350 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(83) GID 1 SID 100000351 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(84) GID 1 SID 100000352 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(85) GID 1 SID 100000353 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(86) GID 1 SID 100000354 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(87) GID 1 SID 100000355 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(88) GID 1 SID 100000356 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(89) GID 1 SID 100000357 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(90) GID 1 SID 100000358 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(91) GID 1 SID 100000359 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(92) GID 1 SID 100000360 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(93) GID 1 SID 100000361 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(94) GID 1 SID 100000362 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(95) GID 1 SID 100000363 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(96) GID 1 SID 100000364 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(97) GID 1 SID 100000365 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(98) GID 1 SID 100000366 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(99) GID 1 SID 100000367 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(100) GID 1 SID 100000368 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(101) GID 1 SID 100000369 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(102) GID 1 SID 100000370 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(103) GID 1 SID 100000371 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(104) GID 1 SID 100000372 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(105) GID 1 SID 100000373 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(106) GID 1 SID 100000374 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(107) GID 1 SID 100000375 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(108) GID 1 SID 100000376 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(109) GID 1 SID 100000377 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(110) GID 1 SID 100000378 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(111) GID 1 SID 100000379 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(112) GID 1 SID 100000380 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(113) GID 1 SID 100000382 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(114) GID 1 SID 100000383 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(115) GID 1 SID 100000384 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(116) GID 1 SID 100000385 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(117) GID 1 SID 100000386 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(119) GID 1 SID 100000387 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(120) GID 1 SID 100000388 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(121) GID 1 SID 100000389 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(122) GID 1 SID 100000390 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(123) GID 1 SID 100000391 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(124) GID 1 SID 100000392 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(125) GID 1 SID 100000393 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(126) GID 1 SID 100000394 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(127) GID 1 SID 100000395 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(128) GID 1 SID 100000396 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(129) GID 1 SID 100000397 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(130) GID 1 SID 100000398 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(131) GID 1 SID 100000399 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(132) GID 1 SID 100000400 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(133) GID 1 SID 100000401 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(134) GID 1 SID 100000402 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(135) GID 1 SID 100000403 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(136) GID 1 SID 100000404 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(137) GID 1 SID 100000405 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(138) GID 1 SID 100000406 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(139) GID 1 SID 100000407 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(140) GID 1 SID 100000408 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(141) GID 1 SID 100000409 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(142) GID 1 SID 100000410 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(143) GID 1 SID 100000411 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(144) GID 1 SID 100000412 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(145) GID 1 SID 100000413 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(146) GID 1 SID 100000414 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(147) GID 1 SID 100000415 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(148) GID 1 SID 100000416 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(149) GID 1 SID 100000417 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(150) GID 1 SID 100000418 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(151) GID 1 SID 100000419 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(152) GID 1 SID 100000420 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(153) GID 1 SID 100000421 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(154) GID 1 SID 100000422 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(155) GID 1 SID 100000423 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(156) GID 1 SID 100000424 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(157) GID 1 SID 100000425 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(158) GID 1 SID 100000426 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(161) GID 1 SID 100000427 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(162) GID 1 SID 100000428 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(163) GID 1 SID 100000429 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(166) GID 1 SID 100000430 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(167) GID 1 SID 100000431 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(168) GID 1 SID 100000432 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(169) GID 1 SID 100000433 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(170) GID 1 SID 100000434 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(171) GID 1 SID 100000435 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(172) GID 1 SID 100000436 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(173) GID 1 SID 100000437 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(174) GID 1 SID 100000438 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(175) GID 1 SID 100000439 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(176) GID 1 SID 100000440 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(177) GID 1 SID 100000441 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(178) GID 1 SID 100000442 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(179) GID 1 SID 100000443 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(180) GID 1 SID 100000444 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(181) GID 1 SID 100000448 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(182) GID 1 SID 100000449 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(183) GID 1 SID 100000450 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(184) GID 1 SID 100000451 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(185) GID 1 SID 100000452 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(186) GID 1 SID 100000453 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(187) GID 1 SID 100000454 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(188) GID 1 SID 100000455 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(189) GID 1 SID 100000456 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(190) GID 1 SID 100000457 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(191) GID 1 SID 100000458 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(192) GID 1 SID 100000459 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(193) GID 1 SID 100000460 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(194) GID 1 SID 100000461 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(195) GID 1 SID 100000462 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(196) GID 1 SID 100000694 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(197) GID 1 SID 100000695 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(198) GID 1 SID 100000696 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(199) GID 1 SID 100000697 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(200) GID 1 SID 100000698 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(201) GID 1 SID 100000699 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(202) GID 1 SID 100000700 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(203) GID 1 SID 100000701 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(204) GID 1 SID 100000702 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(207) GID 1 SID 100000890 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(208) GID 1 SID 100000891 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(211) GID 1 SID 100000895 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(212) GID 1 SID 100000896 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(213) GID 1 SID 100000897 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(214) GID 1 SID 100000898 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-misc.rules(215) GID 1 SID 100000899 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(6) GID 1 SID 100000151 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(7) GID 1 SID 100000186 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(8) GID 1 SID 100000187 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(9) GID 1 SID 100000188 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(10) GID 1 SID 100000195 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(11) GID 1 SID 100000201 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(12) GID 1 SID 100000202 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(13) GID 1 SID 100000203 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(14) GID 1 SID 100000204 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(15) GID 1 SID 100000205 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(16) GID 1 SID 100000206 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(17) GID 1 SID 100000211 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(18) GID 1 SID 100000212 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(19) GID 1 SID 100000213 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(20) GID 1 SID 100000214 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(21) GID 1 SID 100000218 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(22) GID 1 SID 100000220 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(23) GID 1 SID 100000221 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(24) GID 1 SID 100000285 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(25) GID 1 SID 100000286 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(26) GID 1 SID 100000287 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(27) GID 1 SID 100000288 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(28) GID 1 SID 100000289 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(29) GID 1 SID 100000290 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(30) GID 1 SID 100000291 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(31) GID 1 SID 100000292 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(32) GID 1 SID 100000293 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(33) GID 1 SID 100000294 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(34) GID 1 SID 100000295 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(35) GID 1 SID 100000296 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(36) GID 1 SID 100000297 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(37) GID 1 SID 100000298 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(38) GID 1 SID 100000299 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(39) GID 1 SID 100000300 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(40) GID 1 SID 100000304 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(41) GID 1 SID 100000305 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(42) GID 1 SID 100000306 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(43) GID 1 SID 100000307 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(44) GID 1 SID 100000308 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(45) GID 1 SID 100000309 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(46) GID 1 SID 100000445 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(48) GID 1 SID 100000463 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(49) GID 1 SID 100000464 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(50) GID 1 SID 100000465 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(51) GID 1 SID 100000466 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(52) GID 1 SID 100000467 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(53) GID 1 SID 100000468 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(54) GID 1 SID 100000469 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(55) GID 1 SID 100000470 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(56) GID 1 SID 100000471 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(57) GID 1 SID 100000472 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(58) GID 1 SID 100000473 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(59) GID 1 SID 100000474 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(60) GID 1 SID 100000475 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(61) GID 1 SID 100000476 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(62) GID 1 SID 100000477 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(63) GID 1 SID 100000478 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(64) GID 1 SID 100000479 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(65) GID 1 SID 100000480 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(66) GID 1 SID 100000481 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(67) GID 1 SID 100000482 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(68) GID 1 SID 100000483 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(69) GID 1 SID 100000484 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(70) GID 1 SID 100000485 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(71) GID 1 SID 100000486 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(72) GID 1 SID 100000487 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(73) GID 1 SID 100000488 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(74) GID 1 SID 100000489 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(75) GID 1 SID 100000490 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(76) GID 1 SID 100000491 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(77) GID 1 SID 100000492 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(78) GID 1 SID 100000493 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(79) GID 1 SID 100000494 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(80) GID 1 SID 100000495 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(81) GID 1 SID 100000496 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(82) GID 1 SID 100000497 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(83) GID 1 SID 100000498 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(84) GID 1 SID 100000499 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(85) GID 1 SID 100000500 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(86) GID 1 SID 100000501 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(87) GID 1 SID 100000502 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(88) GID 1 SID 100000503 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(89) GID 1 SID 100000504 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(90) GID 1 SID 100000505 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(91) GID 1 SID 100000506 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(92) GID 1 SID 100000507 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(93) GID 1 SID 100000508 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(94) GID 1 SID 100000509 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(95) GID 1 SID 100000510 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(96) GID 1 SID 100000511 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(97) GID 1 SID 100000512 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(98) GID 1 SID 100000513 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(99) GID 1 SID 100000514 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(100) GID 1 SID 100000515 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(101) GID 1 SID 100000516 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(102) GID 1 SID 100000517 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(103) GID 1 SID 100000518 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(104) GID 1 SID 100000519 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(105) GID 1 SID 100000520 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(106) GID 1 SID 100000521 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(107) GID 1 SID 100000522 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(108) GID 1 SID 100000523 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(109) GID 1 SID 100000524 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(110) GID 1 SID 100000525 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(111) GID 1 SID 100000526 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(112) GID 1 SID 100000527 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(113) GID 1 SID 100000528 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(114) GID 1 SID 100000529 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(115) GID 1 SID 100000530 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(116) GID 1 SID 100000531 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(117) GID 1 SID 100000532 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(118) GID 1 SID 100000533 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(119) GID 1 SID 100000534 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(120) GID 1 SID 100000535 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(121) GID 1 SID 100000536 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(122) GID 1 SID 100000537 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(123) GID 1 SID 100000538 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(124) GID 1 SID 100000539 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(125) GID 1 SID 100000540 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(126) GID 1 SID 100000541 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(127) GID 1 SID 100000542 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(128) GID 1 SID 100000543 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(129) GID 1 SID 100000544 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(130) GID 1 SID 100000545 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(131) GID 1 SID 100000546 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(132) GID 1 SID 100000547 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(133) GID 1 SID 100000548 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(134) GID 1 SID 100000549 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(135) GID 1 SID 100000550 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(136) GID 1 SID 100000551 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(137) GID 1 SID 100000552 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(138) GID 1 SID 100000553 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(139) GID 1 SID 100000554 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(140) GID 1 SID 100000555 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(141) GID 1 SID 100000556 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(142) GID 1 SID 100000557 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(143) GID 1 SID 100000558 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(144) GID 1 SID 100000559 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(145) GID 1 SID 100000560 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(146) GID 1 SID 100000561 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(147) GID 1 SID 100000562 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(148) GID 1 SID 100000563 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(149) GID 1 SID 100000564 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(150) GID 1 SID 100000565 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(151) GID 1 SID 100000566 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(152) GID 1 SID 100000567 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(153) GID 1 SID 100000568 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(154) GID 1 SID 100000569 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(155) GID 1 SID 100000570 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(156) GID 1 SID 100000571 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(157) GID 1 SID 100000572 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(158) GID 1 SID 100000573 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(159) GID 1 SID 100000574 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(160) GID 1 SID 100000575 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(161) GID 1 SID 100000576 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(162) GID 1 SID 100000577 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(163) GID 1 SID 100000578 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(164) GID 1 SID 100000579 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(165) GID 1 SID 100000580 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(166) GID 1 SID 100000581 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(167) GID 1 SID 100000582 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(168) GID 1 SID 100000583 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(169) GID 1 SID 100000584 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(170) GID 1 SID 100000585 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(171) GID 1 SID 100000586 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(172) GID 1 SID 100000587 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(173) GID 1 SID 100000588 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(174) GID 1 SID 100000589 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(175) GID 1 SID 100000590 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(176) GID 1 SID 100000591 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(177) GID 1 SID 100000592 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(178) GID 1 SID 100000593 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(179) GID 1 SID 100000594 in rule duplicates previous rule. Ignoring old rule.

WARNING: /etc/snort/rules/community-web-php.rules(180) GID 1 SID 100000595 in rule duplicates previous rule. Ignoring old rule.


=====


15:16