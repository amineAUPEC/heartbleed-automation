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
alert tcp any any -> any any (msg:"FOX-SRT - Suspicious - TLS-SSL Large Heartbeat Response"; flow:established; flowbits:isset,foxsslsession; content:"|18 03|"; depth: 2; byte_test:1, <=, 3, 2; byte_test:1, !=, 2, 1; byte_test:2, >, 200, 3; threshold:type limit, track by_src, count 1, seconds 10; reference:cve,2014-0160; classtype:bad-unknown; sid: 21001131; rev:5;)

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
