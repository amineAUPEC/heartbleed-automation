
```bash
┌────────────────────────────────────────────────────────────────────┐
     │                        • MobaXterm 20.1 •                          │
     │            (SSH client, X-server and networking tools)             │
     │                                                                    │
     │ → SSH session to etudiant@192.168.1.11                             │
     │   • SSH compression : v                                            │
     │   • SSH-browser     : v                                            │
     │   • X11-forwarding  : v  (remote display is forwarded through SSH) │
     │   • DISPLAY         : v  (automatically set on remote server)      │
     │                                                                    │
     │ → For more info, ctrl+click on help or visit our website           │
     └────────────────────────────────────────────────────────────────────┘

Linux debian-buster 4.19.0-16-amd64 #1 SMP Debian 4.19.181-1 (2021-03-19) x86_64

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Last login: Thu Jun  3 19:51:58 2021
etudiant@debian-buster:~$ sudo -i
root@debian-buster:~# cd /homee^C
root@debian-buster:~# exit
logout
etudiant@debian-buster:~$ sudo -i && cd /home/etudiant/
root@debian-buster:~# cd /home/etudiant/
root@debian-buster:/home/etudiant# ^C
root@debian-buster:/home/etudiant# exit
logout
etudiant@debian-buster:~$ sudo -i < cd /home/etudiant/
-bash: cd: No such file or directory
etudiant@debian-buster:~$ sudo -i <<< cd /home/etudiant/
-bash: /home/etudiant/: Is a directory
etudiant@debian-buster:~$ sudo -i ^Cd /home/etudiant/
etudiant@debian-buster:~$ sudo -i
root@debian-buster:~# cd /home/etudiant/
root@debian-buster:/home/etudiant# ls
 config.sql            install-owncloud.sh   stimulate_server.py               UE3-2-TP1-RAID-LVM.pdf       UE3-2-TP2-ISCSI-LP2021.txt
 heartbleed-masstest   rebased               test.sh                           UE3-2-TP1-RAID-LVM.txt
 heartbleed.py         res.txt              'TP1 RAID LVM ECUE32-MODEL.docx'   UE3-2-TP2-ISCSI-LP2021.pdf
root@debian-buster:/home/etudiant# apt-show-versions openssl
-bash: apt-show-versions: command not found
root@debian-buster:/home/etudiant# apt-show-version
-bash: apt-show-version: command not found
root@debian-buster:/home/etudiant# apt-get install -y apt-show-versions
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following additional packages will be installed:
  libapt-pkg-perl
The following NEW packages will be installed:
  apt-show-versions libapt-pkg-perl
0 upgraded, 2 newly installed, 0 to remove and 4 not upgraded.
Need to get 104 kB of archives.
After this operation, 326 kB of additional disk space will be used.
Get:1 http://cdn-fastly.deb.debian.org/debian buster/main amd64 libapt-pkg-perl amd64 0.1.34+b1 [71.2 kB]
Get:2 http://cdn-fastly.deb.debian.org/debian buster/main amd64 apt-show-versions all 0.22.11 [32.6 kB]
Fetched 104 kB in 1s (83.6 kB/s)
Selecting previously unselected package libapt-pkg-perl.
(Reading database ... 35314 files and directories currently installed.)
Preparing to unpack .../libapt-pkg-perl_0.1.34+b1_amd64.deb ...
Unpacking libapt-pkg-perl (0.1.34+b1) ...
Selecting previously unselected package apt-show-versions.
Preparing to unpack .../apt-show-versions_0.22.11_all.deb ...
Unpacking apt-show-versions (0.22.11) ...
Setting up libapt-pkg-perl (0.1.34+b1) ...
Setting up apt-show-versions (0.22.11) ...
** initializing cache. This may take a while **
Processing triggers for man-db (2.8.5-2) ...
root@debian-buster:/home/etudiant# apt-show-versions
adduser:all/buster 3.118 uptodate
anacron:amd64/buster 2.3-28 uptodate
apache2:amd64/buster 2.4.38-3+deb10u4 uptodate
apache2-bin:amd64/buster 2.4.38-3+deb10u4 uptodate
apache2-data:all/buster 2.4.38-3+deb10u4 uptodate
apache2-utils:amd64/buster 2.4.38-3+deb10u4 uptodate
apparmor:amd64/buster 2.13.2-10 uptodate
apt:amd64/buster 1.8.2.2 upgradeable to 1.8.2.3
apt-show-versions:all/buster 0.22.11 uptodate
apt-utils:amd64/buster 1.8.2.2 upgradeable to 1.8.2.3
avahi-autoipd:amd64/buster 0.7-4+deb10u1 uptodate
base-files:amd64/buster 10.3+deb10u9 uptodate
base-passwd:amd64/buster 3.5.46 uptodate
bash:amd64/buster 5.0-4 uptodate
bind9-host:amd64/buster 1:9.11.5.P4+dfsg-5.1+deb10u5 uptodate
bluetooth:all/buster 5.50-1.2~deb10u1 uptodate
bluez:amd64/buster 5.50-1.2~deb10u1 uptodate
bridge-utils:amd64/buster 1.6-2 uptodate
bsdmainutils:amd64/buster 11.1.2+b1 uptodate
bsdutils:amd64/buster 1:2.33.1-0.1 uptodate
busybox:amd64/buster 1:1.30.1-4 uptodate
bzip2:amd64/buster 1.0.6-9.2~deb10u1 uptodate
ca-certificates:all/buster 20200601~deb10u2 uptodate
console-setup:all/buster 1.193~deb10u1 uptodate
console-setup-linux:all/buster 1.193~deb10u1 uptodate
coreutils:amd64/buster 8.30-3 uptodate
cpio:amd64/buster 2.12+dfsg-9 uptodate
crda:amd64/buster 3.18-1 uptodate
cron:amd64/buster 3.0pl1-134+deb10u1 uptodate
curl:amd64/buster 7.64.0-4+deb10u2 uptodate
dash:amd64/buster 0.5.10.2-5 uptodate
dbus:amd64/buster 1.12.20-0+deb10u1 uptodate
debconf:all/buster 1.5.71 uptodate
debconf-i18n:all/buster 1.5.71 uptodate
debian-archive-keyring:all/buster 2019.1+deb10u1 uptodate
debianutils:amd64/buster 4.8.6.1 uptodate
dictionaries-common:all/buster 1.28.1 uptodate
diffutils:amd64/buster 1:3.7-3 uptodate
discover:amd64/buster 2.1.2-8 uptodate
discover-data:all/buster 2.2013.01.11 uptodate
distro-info-data:all/buster 0.41+deb10u3 uptodate
dmidecode:amd64/buster 3.2-1 uptodate
dmsetup:amd64/buster 2:1.02.155-3 uptodate
dnsutils:amd64/buster 1:9.11.5.P4+dfsg-5.1+deb10u5 uptodate
dpkg:amd64/buster 1.19.7 uptodate
e2fsprogs:amd64/buster 1.44.5-1+deb10u3 uptodate
eject:amd64/buster 2.1.5+deb1+cvs20081104-13.2 uptodate
emacsen-common:all/buster 3.0.4 uptodate
ethtool:amd64/buster 1:4.19-1 uptodate
exfat-fuse:amd64/buster 1.3.0-1 uptodate
exfat-utils:amd64/buster 1.3.0-1 uptodate
fdisk:amd64/buster 2.33.1-0.1 uptodate
file:amd64/buster 1:5.35-4+deb10u2 uptodate
findutils:amd64/buster 4.6.0+git+20190209-2 uptodate
firmware-linux-free:all/buster 3.4 uptodate
fontconfig-config:all/buster 2.13.1-2 uptodate
fonts-dejavu-core:all/buster 2.37-1 uptodate
fuse:amd64/buster 2.9.9-1+deb10u1 uptodate
gcc-8-base:amd64/buster 8.3.0-6 uptodate
gdbm-l10n:all/buster 1.18.1-4 uptodate
geoip-database:all/buster 20181108-1 uptodate
gettext-base:amd64/buster 0.19.8.1-9 uptodate
gir1.2-glib-2.0:amd64/buster 1.58.3-2 uptodate
git:amd64/buster 1:2.20.1-2+deb10u3 uptodate
git-man:all/buster 1:2.20.1-2+deb10u3 uptodate
gpgv:amd64/buster 2.2.12-1+deb10u1 uptodate
grep:amd64/buster 3.3-1 uptodate
groff-base:amd64/buster 1.22.4-3+deb10u1 uptodate
grub-common:amd64/buster 2.02+dfsg1-20+deb10u4 uptodate
grub-pc:amd64/buster 2.02+dfsg1-20+deb10u4 uptodate
grub-pc-bin:amd64/buster 2.02+dfsg1-20+deb10u4 uptodate
grub2-common:amd64/buster 2.02+dfsg1-20+deb10u4 uptodate
gzip:amd64/buster 1.9-3 uptodate
hostname:amd64/buster 3.21 uptodate
iamerican:all/buster 3.4.00-6 uptodate
ibritish:all/buster 3.4.00-6 uptodate
ienglish-common:all/buster 3.4.00-6 uptodate
ifupdown:amd64/buster 0.8.35 uptodate
init:amd64/buster 1.56+nmu1 uptodate
init-system-helpers:all/buster 1.56+nmu1 uptodate
initramfs-tools:all/buster 0.133+deb10u1 uptodate
initramfs-tools-core:all/buster 0.133+deb10u1 uptodate
installation-report:all/buster 2.71 uptodate
iperf:amd64/buster 2.0.12+dfsg1-2 uptodate
iproute2:amd64/buster 4.20.0-2+deb10u1 uptodate
iptables:amd64/buster 1.8.2-4 uptodate
iptraf:all/buster 1:1.1.4-6 uptodate
iptraf-ng:amd64/buster 1:1.1.4-6+b1 uptodate
iputils-ping:amd64/buster 3:20180629-2+deb10u2 uptodate
isc-dhcp-client:amd64/buster 4.4.1-2 uptodate
isc-dhcp-common:amd64/buster 4.4.1-2 uptodate
iso-codes:all/buster 4.2-1 uptodate
ispell:amd64/buster 3.4.00-6+b1 uptodate
iw:amd64/buster 5.0.1-1 uptodate
kbd:amd64/buster 2.0.4-4 uptodate
keyboard-configuration:all/buster 1.193~deb10u1 uptodate
klibc-utils:amd64/buster 2.0.6-1 uptodate
kmod:amd64/buster 26-1 uptodate
krb5-locales:all/buster 1.17-3+deb10u1 uptodate
laptop-detect:all/buster 0.16 uptodate
less:amd64/buster 487-0.1+b1 uptodate
libacl1:amd64/buster 2.2.53-4 uptodate
libapache2-mod-php:all/buster 2:7.3+69 uptodate
libapache2-mod-php7.3:amd64/buster 7.3.27-1~deb10u1 uptodate
libapparmor1:amd64/buster 2.13.2-10 uptodate
libapr1:amd64/buster 1.6.5-1+b1 uptodate
libaprutil1:amd64/buster 1.6.1-4 uptodate
libaprutil1-dbd-sqlite3:amd64/buster 1.6.1-4 uptodate
libaprutil1-ldap:amd64/buster 1.6.1-4 uptodate
libapt-inst2.0:amd64/buster 1.8.2.2 upgradeable to 1.8.2.3
libapt-pkg-perl:amd64/buster 0.1.34+b1 uptodate
libapt-pkg5.0:amd64/buster 1.8.2.2 upgradeable to 1.8.2.3
libargon2-1:amd64/buster 0~20171227-0.2 uptodate
libasound2:amd64/buster 1.1.8-1 uptodate
libasound2-data:all/buster 1.1.8-1 uptodate
libattr1:amd64/buster 1:2.4.48-4 uptodate
libaudit-common:all/buster 1:2.8.4-3 uptodate
libaudit1:amd64/buster 1:2.8.4-3 uptodate
libbind9-161:amd64/buster 1:9.11.5.P4+dfsg-5.1+deb10u5 uptodate
libblas3:amd64/buster 3.8.0-2 uptodate
libblkid1:amd64/buster 2.33.1-0.1 uptodate
libbrotli1:amd64/buster 1.0.7-2+deb10u1 uptodate
libbsd0:amd64/buster 0.9.1-2+deb10u1 uptodate
libbz2-1.0:amd64/buster 1.0.6-9.2~deb10u1 uptodate
libc-bin:amd64/buster 2.28-10 uptodate
libc-l10n:all/buster 2.28-10 uptodate
libc6:amd64/buster 2.28-10 uptodate
libcairo2:amd64/buster 1.16.0-4+deb10u1 uptodate
libcap-ng0:amd64/buster 0.7.9-2 uptodate
libcap2:amd64/buster 1:2.25-2 uptodate
libcap2-bin:amd64/buster 1:2.25-2 uptodate
libcom-err2:amd64/buster 1.44.5-1+deb10u3 uptodate
libcryptsetup12:amd64/buster 2:2.1.0-5+deb10u2 uptodate
libcurl3-gnutls:amd64/buster 7.64.0-4+deb10u2 uptodate
libcurl4:amd64/buster 7.64.0-4+deb10u2 uptodate
libdaemon0:amd64/buster 0.14-7 uptodate
libdb5.3:amd64/buster 5.3.28+dfsg1-0.5 uptodate
libdbus-1-3:amd64/buster 1.12.20-0+deb10u1 uptodate
libdebconfclient0:amd64/buster 0.249 uptodate
libdevmapper1.02.1:amd64/buster 2:1.02.155-3 uptodate
libdiscover2:amd64/buster 2.1.2-8 uptodate
libdns-export1104:amd64/buster 1:9.11.5.P4+dfsg-5.1+deb10u5 uptodate
libdns1104:amd64/buster 1:9.11.5.P4+dfsg-5.1+deb10u5 uptodate
libdw1:amd64/buster 0.176-1.1 uptodate
libedit2:amd64/buster 3.1-20181209-1 uptodate
libefiboot1:amd64/buster 37-2+deb10u1 uptodate
libefivar1:amd64/buster 37-2+deb10u1 uptodate
libelf1:amd64/buster 0.176-1.1 uptodate
liberror-perl:all/buster 0.17027-2 uptodate
libestr0:amd64/buster 0.1.10-2.1 uptodate
libexpat1:amd64/buster 2.2.6-2+deb10u1 uptodate
libext2fs2:amd64/buster 1.44.5-1+deb10u3 uptodate
libfastjson4:amd64/buster 0.99.8-2 uptodate
libfdisk1:amd64/buster 2.33.1-0.1 uptodate
libffi6:amd64/buster 3.2.1-9 uptodate
libfontconfig1:amd64/buster 2.13.1-2 uptodate
libfreetype6:amd64/buster 2.9.1-3+deb10u2 uptodate
libfstrm0:amd64/buster 0.4.0-1 uptodate
libfuse2:amd64/buster 2.9.9-1+deb10u1 uptodate
libgcc1:amd64/buster 1:8.3.0-6 uptodate
libgcrypt20:amd64/buster 1.8.4-5 uptodate
libgdbm-compat4:amd64/buster 1.18.1-4 uptodate
libgdbm6:amd64/buster 1.18.1-4 uptodate
libgeoip1:amd64/buster 1.6.12-1 uptodate
libgfortran5:amd64/buster 8.3.0-6 uptodate
libgirepository-1.0-1:amd64/buster 1.58.3-2 uptodate
libglib2.0-0:amd64/buster 2.58.3-2+deb10u2 uptodate
libglib2.0-data:all/buster 2.58.3-2+deb10u2 uptodate
libgmp10:amd64/buster 2:6.1.2+dfsg-4 uptodate
libgnutls30:amd64/buster 3.6.7-4+deb10u6 uptodate
libgpg-error0:amd64/buster 1.35-1 uptodate
libgssapi-krb5-2:amd64/buster 1.17-3+deb10u1 uptodate
libhogweed4:amd64/buster 3.4.1-1 uptodate
libicu63:amd64/buster 63.1-6+deb10u1 uptodate
libidn11:amd64/buster 1.33-2.2 uptodate
libidn2-0:amd64/buster 2.0.5-1+deb10u1 uptodate
libip4tc0:amd64/buster 1.8.2-4 uptodate
libip6tc0:amd64/buster 1.8.2-4 uptodate
libiptc0:amd64/buster 1.8.2-4 uptodate
libirs161:amd64/buster 1:9.11.5.P4+dfsg-5.1+deb10u5 uptodate
libisc-export1100:amd64/buster 1:9.11.5.P4+dfsg-5.1+deb10u5 uptodate
libisc1100:amd64/buster 1:9.11.5.P4+dfsg-5.1+deb10u5 uptodate
libisccc161:amd64/buster 1:9.11.5.P4+dfsg-5.1+deb10u5 uptodate
libisccfg163:amd64/buster 1:9.11.5.P4+dfsg-5.1+deb10u5 uptodate
libiw30:amd64/buster 30~pre9-13 uptodate
libjansson4:amd64/buster 2.12-1 uptodate
libjbig0:amd64/buster 2.1-3.1+b2 uptodate
libjpeg62-turbo:amd64/buster 1:1.5.2-2+deb10u1 uptodate
libjson-c3:amd64/buster 0.12.1+ds-2+deb10u1 uptodate
libk5crypto3:amd64/buster 1.17-3+deb10u1 uptodate
libkeyutils1:amd64/buster 1.6-6 uptodate
libklibc:amd64/buster 2.0.6-1 uptodate
libkmod2:amd64/buster 26-1 uptodate
libkrb5-3:amd64/buster 1.17-3+deb10u1 uptodate
libkrb5support0:amd64/buster 1.17-3+deb10u1 uptodate
liblcms2-2:amd64/buster 2.9-3 uptodate
libldap-2.4-2:amd64/buster 2.4.47+dfsg-3+deb10u6 uptodate
libldap-common:all/buster 2.4.47+dfsg-3+deb10u6 uptodate
liblinear3:amd64/buster 2.1.0+dfsg-4 uptodate
liblmdb0:amd64/buster 0.9.22-1 uptodate
liblocale-gettext-perl:amd64/buster 1.07-3+b4 uptodate
liblognorm5:amd64/buster 2.0.5-1 uptodate
liblua5.2-0:amd64/buster 5.2.4-1.1+b2 uptodate
liblua5.3-0:amd64/buster 5.3.3-1.1 uptodate
liblwres161:amd64/buster 1:9.11.5.P4+dfsg-5.1+deb10u5 uptodate
liblz4-1:amd64/buster 1.8.3-1+deb10u1 uptodate
liblzma5:amd64/buster 5.2.4-1 uptodate
libmagic-mgc:amd64/buster 1:5.35-4+deb10u2 uptodate
libmagic1:amd64/buster 1:5.35-4+deb10u2 uptodate
libmnl0:amd64/buster 1.0.4-2 uptodate
libmount1:amd64/buster 2.33.1-0.1 uptodate
libmpdec2:amd64/buster 2.4.2-2 uptodate
libncurses6:amd64/buster 6.1+20181013-2+deb10u2 uptodate
libncursesw6:amd64/buster 6.1+20181013-2+deb10u2 uptodate
libnetfilter-conntrack3:amd64/buster 1.0.7-1 uptodate
libnettle6:amd64/buster 3.4.1-1 uptodate
libnewt0.52:amd64/buster 0.52.20-8 uptodate
libnfnetlink0:amd64/buster 1.0.1-3+b1 uptodate
libnftnl11:amd64/buster 1.1.2-2 uptodate
libnghttp2-14:amd64/buster 1.36.0-2+deb10u1 uptodate
libnl-3-200:amd64/buster 3.4.0-1 uptodate
libnl-genl-3-200:amd64/buster 3.4.0-1 uptodate
libnl-route-3-200:amd64/buster 3.4.0-1 uptodate
libnspr4:amd64/buster 2:4.20-1 uptodate
libnss3:amd64/buster 2:3.42.1-1+deb10u3 uptodate
libopenjp2-7:amd64/buster 2.3.0-2+deb10u2 uptodate
libp11-kit0:amd64/buster 0.23.15-2+deb10u1 uptodate
libpam-modules:amd64/buster 1.3.1-5 uptodate
libpam-modules-bin:amd64/buster 1.3.1-5 uptodate
libpam-runtime:all/buster 1.3.1-5 uptodate
libpam-systemd:amd64/buster 241-7~deb10u7 uptodate
libpam0g:amd64/buster 1.3.1-5 uptodate
libpcap0.8:amd64/buster 1.8.1-6 uptodate
libpci3:amd64/buster 1:3.5.2-1 uptodate
libpcre2-8-0:amd64/buster 10.32-5 uptodate
libpcre3:amd64/buster 2:8.39-12 uptodate
libpcsclite1:amd64/buster 1.8.24-1 uptodate
libperl5.28:amd64/buster 5.28.1-6+deb10u1 uptodate
libpipeline1:amd64/buster 1.5.1-2 uptodate
libpixman-1-0:amd64/buster 0.36.0-1 uptodate
libpng16-16:amd64/buster 1.6.36-6 uptodate
libpoppler82:amd64/buster 0.71.0-5 uptodate
libpopt0:amd64/buster 1.16-12 uptodate
libprocps7:amd64/buster 2:3.3.15-2 uptodate
libprotobuf-c1:amd64/buster 1.3.1-1+b1 uptodate
libpsl5:amd64/buster 0.20.2-2 uptodate
libpython-stdlib:amd64/buster 2.7.16-1 uptodate
libpython2-stdlib:amd64/buster 2.7.16-1 uptodate
libpython2.7-minimal:amd64/buster 2.7.16-2+deb10u1 uptodate
libpython2.7-stdlib:amd64/buster 2.7.16-2+deb10u1 uptodate
libpython3-stdlib:amd64/buster 3.7.3-1 uptodate
libpython3.7-minimal:amd64/buster 3.7.3-2+deb10u3 uptodate
libpython3.7-stdlib:amd64/buster 3.7.3-2+deb10u3 uptodate
libquadmath0:amd64/buster 8.3.0-6 uptodate
libreadline7:amd64/buster 7.0-5 uptodate
librtmp1:amd64/buster 2.4+20151223.gitfa8646d.1-2 uptodate
libsasl2-2:amd64/buster 2.1.27+dfsg-1+deb10u1 uptodate
libsasl2-modules:amd64/buster 2.1.27+dfsg-1+deb10u1 uptodate
libsasl2-modules-db:amd64/buster 2.1.27+dfsg-1+deb10u1 uptodate
libseccomp2:amd64/buster 2.3.3-4 uptodate
libselinux1:amd64/buster 2.8-1+b1 uptodate
libsemanage-common:all/buster 2.8-2 uptodate
libsemanage1:amd64/buster 2.8-2 uptodate
libsepol1:amd64/buster 2.8-1 uptodate
libslang2:amd64/buster 2.3.2-2 uptodate
libsmartcols1:amd64/buster 2.33.1-0.1 uptodate
libsodium23:amd64/buster 1.0.17-1 uptodate
libsqlite3-0:amd64/buster 3.27.2-3+deb10u1 uptodate
libss2:amd64/buster 1.44.5-1+deb10u3 uptodate
libssh2-1:amd64/buster 1.8.0-2.1 uptodate
libssl1.1:amd64/buster 1.1.1d-0+deb10u6 uptodate
libstdc++6:amd64/buster 8.3.0-6 uptodate
libsystemd0:amd64/buster 241-7~deb10u7 uptodate
libtasn1-6:amd64/buster 4.13-3 uptodate
libtext-charwidth-perl:amd64/buster 0.04-7.1+b1 uptodate
libtext-iconv-perl:amd64/buster 1.7-5+b7 uptodate
libtext-wrapi18n-perl:all/buster 0.06-7.1 uptodate
libtiff5:amd64/buster 4.1.0+git191117-2~deb10u2 uptodate
libtinfo6:amd64/buster 6.1+20181013-2+deb10u2 uptodate
libuchardet0:amd64/buster 0.0.6-3 uptodate
libudev1:amd64/buster 241-7~deb10u7 uptodate
libunistring2:amd64/buster 0.9.10-1 uptodate
libusb-0.1-4:amd64/buster 2:0.1.12-32 uptodate
libusb-1.0-0:amd64/buster 2:1.0.22-2 uptodate
libuuid1:amd64/buster 2.33.1-0.1 uptodate
libwebp6:amd64/buster 0.6.1-2 uptodate
libwrap0:amd64/buster 7.6.q-28 uptodate
libx11-6:amd64/buster 2:1.6.7-1+deb10u2 uptodate
libx11-data:all/buster 2:1.6.7-1+deb10u2 uptodate
libxau6:amd64/buster 1:1.0.8-1+b2 uptodate
libxcb-render0:amd64/buster 1.13.1-2 uptodate
libxcb-shm0:amd64/buster 1.13.1-2 uptodate
libxcb1:amd64/buster 1.13.1-2 uptodate
libxdmcp6:amd64/buster 1:1.1.2-3 uptodate
libxext6:amd64/buster 2:1.3.3-1+b2 uptodate
libxml2:amd64/buster 2.9.4+dfsg1-7+deb10u1 uptodate
libxmuu1:amd64/buster 2:1.1.2-2+b3 uptodate
libxrender1:amd64/buster 1:0.9.10-1 uptodate
libxtables12:amd64/buster 1.8.2-4 uptodate
libzstd1:amd64/buster 1.3.8+dfsg-3+deb10u2 uptodate
linux-base:all/buster 4.6 uptodate
linux-image-4.19.0-12-amd64:amd64/buster 4.19.152-1 uptodate
linux-image-4.19.0-16-amd64:amd64/buster 4.19.181-1 uptodate
linux-image-amd64:amd64/buster 4.19+105+deb10u11 uptodate
locales:all/buster 2.28-10 uptodate
login:amd64/buster 1:4.5-1.1 uptodate
logrotate:amd64/buster 3.14.0-4 uptodate
lsb-base:all/buster 10.2019051400 uptodate
lsb-release:all/buster 10.2019051400 uptodate
man-db:amd64/buster 2.8.5-2 uptodate
mawk:amd64/buster 1.3.3-17+b3 uptodate
mime-support:all/buster 3.62 uptodate
mount:amd64/buster 2.33.1-0.1 uptodate
nano:amd64/buster 3.2-3 uptodate
ncurses-base:all/buster 6.1+20181013-2+deb10u2 uptodate
ncurses-bin:amd64/buster 6.1+20181013-2+deb10u2 uptodate
ncurses-term:all/buster 6.1+20181013-2+deb10u2 uptodate
net-tools:amd64/buster 1.60+git20180626.aebd88e-1 uptodate
netbase:all/buster 5.6 uptodate
netcat:all/buster 1.10-41.1 uptodate
netcat-traditional:amd64/buster 1.10-41.1 uptodate
nmap:amd64/buster 7.70+dfsg1-6+deb10u1 uptodate
nmap-common:all/buster 7.70+dfsg1-6+deb10u1 uptodate
openssh-client:amd64/buster 1:7.9p1-10+deb10u2 uptodate
openssh-server:amd64/buster 1:7.9p1-10+deb10u2 uptodate
openssh-sftp-server:amd64/buster 1:7.9p1-10+deb10u2 uptodate
openssl:amd64/buster 1.1.1d-0+deb10u6 uptodate
os-prober:amd64/buster 1.77 uptodate
passwd:amd64/buster 1:4.5-1.1 uptodate
patch:amd64/buster 2.7.6-3+deb10u1 uptodate
pciutils:amd64/buster 1:3.5.2-1 uptodate
perl:amd64/buster 5.28.1-6+deb10u1 uptodate
perl-base:amd64/buster 5.28.1-6+deb10u1 uptodate
perl-modules-5.28:all/buster 5.28.1-6+deb10u1 uptodate
php:all/buster 2:7.3+69 uptodate
php-common:all/buster 2:69 uptodate
php-mysql:all/buster 2:7.3+69 uptodate
php7.3:all/buster 7.3.27-1~deb10u1 uptodate
php7.3-cli:amd64/buster 7.3.27-1~deb10u1 uptodate
php7.3-common:amd64/buster 7.3.27-1~deb10u1 uptodate
php7.3-json:amd64/buster 7.3.27-1~deb10u1 uptodate
php7.3-mysql:amd64/buster 7.3.27-1~deb10u1 uptodate
php7.3-opcache:amd64/buster 7.3.27-1~deb10u1 uptodate
php7.3-readline:amd64/buster 7.3.27-1~deb10u1 uptodate
poppler-data:all/buster 0.4.9-2 uptodate
poppler-utils:amd64/buster 0.71.0-5 uptodate
powertop:amd64/buster 2.8-1+b2 uptodate
procps:amd64/buster 2:3.3.15-2 uptodate
psmisc:amd64/buster 23.2-1 uptodate
publicsuffix:all/buster 20190415.1030-1 uptodate
python:amd64/buster 2.7.16-1 uptodate
python-apt-common:all/buster 1.8.4.3 uptodate
python-minimal:amd64/buster 2.7.16-1 uptodate
python2:amd64/buster 2.7.16-1 uptodate
python2-minimal:amd64/buster 2.7.16-1 uptodate
python2.7:amd64/buster 2.7.16-2+deb10u1 uptodate
python2.7-minimal:amd64/buster 2.7.16-2+deb10u1 uptodate
python3:amd64/buster 3.7.3-1 uptodate
python3-apt:amd64/buster 1.8.4.3 uptodate
python3-dbus:amd64/buster 1.2.8-3 uptodate
python3-distro-info:all/buster 0.21 uptodate
python3-gi:amd64/buster 3.30.4-1 uptodate
python3-minimal:amd64/buster 3.7.3-1 uptodate
python3.7:amd64/buster 3.7.3-2+deb10u3 uptodate
python3.7-minimal:amd64/buster 3.7.3-2+deb10u3 uptodate
readline-common:all/buster 7.0-5 uptodate
rsyslog:amd64/buster 8.1901.0-1 uptodate
sed:amd64/buster 4.7-1 uptodate
sensible-utils:all/buster 0.0.12 uptodate
shared-mime-info:amd64/buster 1.10-1 uptodate
ssl-cert:all/buster 1.0.39 uptodate
sudo:amd64/buster 1.8.27-1+deb10u3 uptodate
systemd:amd64/buster 241-7~deb10u7 uptodate
systemd-sysv:amd64/buster 241-7~deb10u7 uptodate
sysvinit-utils:amd64/buster 2.93-8 uptodate
tar:amd64/buster 1.30+dfsg-6 uptodate
task-english:all/buster 3.53 uptodate
task-laptop:all/buster 3.53 uptodate
tasksel:all/buster 3.53 uptodate
tasksel-data:all/buster 3.53 uptodate
tcpdump:amd64/buster 4.9.3-1~deb10u2 uptodate
tzdata:all/buster 2021a-0+deb10u1 uptodate
ucf:all/buster 3.0038+nmu1 uptodate
udev:amd64/buster 241-7~deb10u7 uptodate
unattended-upgrades:all/buster 1.11.2 uptodate
usb.ids:all/buster 2019.07.27-0+deb10u1 uptodate
usbutils:amd64/buster 1:010-3 uptodate
util-linux:amd64/buster 2.33.1-0.1 uptodate
util-linux-locales:all/buster 2.33.1-0.1 uptodate
vim-common:all/buster 2:8.1.0875-5 uptodate
vim-tiny:amd64/buster 2:8.1.0875-5 uptodate
wamerican:all/buster 2018.04.16-1 uptodate
whiptail:amd64/buster 0.52.20-8 uptodate
wireless-regdb:all/buster 2016.06.10-1 uptodate
wireless-tools:amd64/buster 30~pre9-13 uptodate
wpasupplicant:amd64/buster 2:2.7+git20190128+0c1e29f-6+deb10u3 uptodate
xauth:amd64/buster 1:1.0.10-1 uptodate
xdg-user-dirs:amd64/buster 0.17-2 uptodate
xkb-data:all/buster 2.26-2 uptodate
xxd:amd64/buster 2:8.1.0875-5 uptodate
xz-utils:amd64/buster 5.2.4-1 uptodate
zlib1g:amd64/buster 1:1.2.11.dfsg-1 uptodate
root@debian-buster:/home/etudiant# apt-show-versions openssl
openssl:amd64/buster 1.1.1d-0+deb10u6 uptodate
root@debian-buster:/home/etudiant# apt-cache policy openssl
openssl:
  Installed: 1.1.1d-0+deb10u6
  Candidate: 1.1.1d-0+deb10u6
  Version table:
 *** 1.1.1d-0+deb10u6 500
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
        100 /var/lib/dpkg/status
     1.1.1d-0+deb10u5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
root@debian-buster:/home/etudiant# apt-cache policy php*
php-horde-timeobjects:
  Installed: (none)
  Candidate: 2.1.4-3
  Version table:
     2.1.4-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-pdo-dblib:
  Installed: (none)
  Candidate: (none)
  Version table:
php-exif:
  Installed: (none)
  Candidate: (none)
  Version table:
php-symfony-form:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php7.3-xml:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php7.3-xsl:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-letodms-core:
  Installed: (none)
  Candidate: 3.4.2-1
  Version table:
     3.4.2-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-myclabs-deep-copy:
  Installed: (none)
  Candidate: (none)
  Version table:
php-icinga:
  Installed: (none)
  Candidate: 2.6.2-3+deb10u1
  Version table:
     2.6.2-3+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php7.3-yac:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-mongodb:
  Installed: (none)
  Candidate: (none)
  Version table:
php-geos:
  Installed: (none)
  Candidate: 1.0.0-4+b2
  Version table:
     1.0.0-4+b2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-codesniffer:
  Installed: (none)
  Candidate: 3.4.0-2
  Version table:
     3.4.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-xmlwriter:
  Installed: (none)
  Candidate: (none)
  Version table:
php-container-interop:
  Installed: (none)
  Candidate: (none)
  Version table:
php-symfony-ldap:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-horde-elasticsearch:
  Installed: (none)
  Candidate: 1.0.4-3
  Version table:
     1.0.4-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-mail-autoconfig:
  Installed: (none)
  Candidate: 1.0.3-4
  Version table:
     1.0.3-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-xdiff:
  Installed: (none)
  Candidate: (none)
  Version table:
php-psr-simple-cache-implementation:
  Installed: (none)
  Candidate: (none)
  Version table:
php-zendframework-zend-validator:
  Installed: (none)
  Candidate: (none)
  Version table:
php-composer-semver:
  Installed: (none)
  Candidate: 1.4.2-1
  Version table:
     1.4.2-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-xmlrpc:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-horde-history:
  Installed: (none)
  Candidate: 2.3.6-5
  Version table:
     2.3.6-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-image:
  Installed: (none)
  Candidate: 2.5.3-1
  Version table:
     2.5.3-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-ctype:
  Installed: (none)
  Candidate: (none)
  Version table:
php-doctrine-inflector:
  Installed: (none)
  Candidate: 1.2.0-1
  Version table:
     1.2.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-zip:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-psr-http-message:
  Installed: (none)
  Candidate: 1.0.1-1
  Version table:
     1.0.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-zmq:
  Installed: (none)
  Candidate: (none)
  Version table:
php-illuminate-contracts:
  Installed: (none)
  Candidate: 5.7.27-1
  Version table:
     5.7.27-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-mdb2-driver-mysql:
  Installed: (none)
  Candidate: 1.5.0b4-2
  Version table:
     1.5.0b4-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-stream:
  Installed: (none)
  Candidate: 1.6.3-5
  Version table:
     1.6.3-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-validate:
  Installed: (none)
  Candidate: 0.8.5-4.1
  Version table:
     0.8.5-4.1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-mapscript:
  Installed: (none)
  Candidate: (none)
  Version table:
php-pear-frontend-web:
  Installed: (none)
  Candidate: (none)
  Version table:
php-http:
  Installed: (none)
  Candidate: 3.2.0+2.6.0-2+b1
  Version table:
     3.2.0+2.6.0-2+b1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-prefs:
  Installed: (none)
  Candidate: 2.9.0-3
  Version table:
     2.9.0-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-net-ipv6:
  Installed: (none)
  Candidate: 1.3.0b4-1
  Version table:
     1.3.0b4-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-doctrine-annotations:
  Installed: (none)
  Candidate: 1.5.0really1.2.7-1
  Version table:
     1.5.0really1.2.7-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-db:
  Installed: (none)
  Candidate: (none)
  Version table:
php-ds:
  Installed: (none)
  Candidate: 1.2.6-2+b1
  Version table:
     1.2.6-2+b1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-gd:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-apcu-bc:
  Installed: (none)
  Candidate: 1.0.4-4
  Version table:
     1.0.4-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-auth-sasl:
  Installed: (none)
  Candidate: 1.0.6-3
  Version table:
     1.0.6-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
phpunit-exporter:
  Installed: (none)
  Candidate: 3.1.0-2
  Version table:
     3.1.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-ps:
  Installed: (none)
  Candidate: 1.4.1-1+b2
  Version table:
     1.4.1-1+b2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-geoip:
  Installed: (none)
  Candidate: (none)
  Version table:
php-doctrine-bundle:
  Installed: (none)
  Candidate: 1.10.2-1
  Version table:
     1.10.2-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-xdebug:
  Installed: (none)
  Candidate: 2.7.0~rc2+2.6.1+2.5.5-1
  Version table:
     2.7.0~rc2+2.6.1+2.5.5-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-xml:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.2-smbclient:
  Installed: (none)
  Candidate: (none)
  Version table:
php-symfony-doctrine-bridge:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-com-dotnet:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-perms:
  Installed: (none)
  Candidate: 2.1.7-4
  Version table:
     2.1.7-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-xsl:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-argv:
  Installed: (none)
  Candidate: 2.1.0-3
  Version table:
     2.1.0-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.0-thrift:
  Installed: (none)
  Candidate: (none)
  Version table:
php-yac:
  Installed: (none)
  Candidate: 2.0.2+0.9.2-4
  Version table:
     2.0.2+0.9.2-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
phpunit:
  Installed: (none)
  Candidate: 7.5.6-1
  Version table:
     7.5.6-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-doctrine-couchdb:
  Installed: (none)
  Candidate: (none)
  Version table:
php-phpseclib-crypt-rijndael:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-mbstring:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-net-smtp:
  Installed: (none)
  Candidate: 1.8.0-1
  Version table:
     1.8.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-readline:
  Installed: 7.3.27-1~deb10u1
  Candidate: 7.3.27-1~deb10u1
  Version table:
 *** 7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
        100 /var/lib/dpkg/status
php-igbinary:
  Installed: (none)
  Candidate: 3.0.0-1
  Version table:
     3.0.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-intl:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-zeta-console-tools:
  Installed: (none)
  Candidate: 1.7-4
  Version table:
     1.7-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-embed:
  Installed: (none)
  Candidate: 3.3.9-1
  Version table:
     3.3.9-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-debug:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-klogger:
  Installed: (none)
  Candidate: 1.2.1-2
  Version table:
     1.2.1-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-socket-client:
  Installed: (none)
  Candidate: 2.1.2-1
  Version table:
     2.1.2-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-http:
  Installed: (none)
  Candidate: 2.1.7-3
  Version table:
     2.1.7-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-uuid:
  Installed: (none)
  Candidate: (none)
  Version table:
php-symfony-templating:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-horde-role:
  Installed: (none)
  Candidate: 1.0.1-14
  Version table:
     1.0.1-14 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-dompdf:
  Installed: (none)
  Candidate: 0.6.2+dfsg-3
  Version table:
     0.6.2+dfsg-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-zip:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-phpseclib:
  Installed: (none)
  Candidate: 2.0.14-1
  Version table:
     2.0.14-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-zmq:
  Installed: (none)
  Candidate: 1.1.3-9
  Version table:
     1.1.3-9 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-barnabywalters-mf-cleaner:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-simplexml:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-text-filter-jsmin:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-apcu-bc:
  Installed: (none)
  Candidate: (none)
  Version table:
php-stomp:
  Installed: (none)
  Candidate: 2.0.2+1.0.9-2
  Version table:
     2.0.2+1.0.9-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-phpseclib-crypt-twofish:
  Installed: (none)
  Candidate: (none)
  Version table:
php-sysvmsg:
  Installed: (none)
  Candidate: (none)
  Version table:
php-zeta-unit-test:
  Installed: (none)
  Candidate: 1.1.2-1
  Version table:
     1.1.2-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-redis:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.0-remctl:
  Installed: (none)
  Candidate: (none)
  Version table:
php-zendframework-zend-eventmanager:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-css-parser:
  Installed: (none)
  Candidate: 1.0.11-3
  Version table:
     1.0.11-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-raphf:
  Installed: (none)
  Candidate: 2.0.0+1.1.2-4
  Version table:
     2.0.0+1.1.2-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-tidy:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-xmlreader:
  Installed: (none)
  Candidate: (none)
  Version table:
php-defuse-php-encryption:
  Installed: (none)
  Candidate: 2.2.1-1
  Version table:
     2.2.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-common:
  Installed: 2:69
  Candidate: 2:69
  Version table:
 *** 2:69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        100 /var/lib/dpkg/status
php5-gd:
  Installed: (none)
  Candidate: (none)
  Version table:
php-illuminate-filesystem:
  Installed: (none)
  Candidate: (none)
  Version table:
php-zendframework-zend-stdlib:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-auth:
  Installed: (none)
  Candidate: 2.2.2-3
  Version table:
     2.2.2-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-twig-doc:
  Installed: (none)
  Candidate: 2.6.2-2
  Version table:
     2.6.2-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-expression-language:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-horde-content:
  Installed: (none)
  Candidate: 2.0.6-3
  Version table:
     2.0.6-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-pdo-firebird:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.2-sodium:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-wddx:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-passwd:
  Installed: (none)
  Candidate: 5.0.7-3
  Version table:
     5.0.7-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-imagick:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-routes:
  Installed: (none)
  Candidate: 2.0.5-5
  Version table:
     2.0.5-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-phpdocumentor-reflection-docblock:
  Installed: (none)
  Candidate: 4.3.0-1
  Version table:
     4.3.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-serializer:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-horde-scheduler:
  Installed: (none)
  Candidate: 2.0.3-3
  Version table:
     2.0.3-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-pspell:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-date-holidays:
  Installed: (none)
  Candidate: (none)
  Version table:
php-illuminate-pagination:
  Installed: (none)
  Candidate: (none)
  Version table:
php-egulias-email-validator:
  Installed: (none)
  Candidate: (none)
  Version table:
php-uopz:
  Installed: (none)
  Candidate: (none)
  Version table:
php-mail:
  Installed: (none)
  Candidate: 1.3.0-1
  Version table:
     1.3.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-mapi:
  Installed: (none)
  Candidate: 8.7.0-3
  Version table:
     8.7.0-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-sysvmsg:
  Installed: (none)
  Candidate: (none)
  Version table:
php-bcmath:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php5-common:
  Installed: (none)
  Candidate: (none)
  Version table:
php-symfony-web-server-bundle:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-symfony-console:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-depend:
  Installed: (none)
  Candidate: (none)
  Version table:
php-xml-util:
  Installed: (none)
  Candidate: (none)
  Version table:
php-gnupg:
  Installed: (none)
  Candidate: 1.4.0-3
  Version table:
     1.4.0-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-tightenco-collect:
  Installed: (none)
  Candidate: (none)
  Version table:
php-user-cache:
  Installed: (none)
  Candidate: (none)
  Version table:
php-compat:
  Installed: (none)
  Candidate: (none)
  Version table:
php-psr-link:
  Installed: (none)
  Candidate: 1.0.0-1
  Version table:
     1.0.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-posix:
  Installed: (none)
  Candidate: (none)
  Version table:
php-symfony-yaml:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-iconv:
  Installed: (none)
  Candidate: (none)
  Version table:
php-react-child-process:
  Installed: (none)
  Candidate: 0.5.2-2
  Version table:
     0.5.2-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-oauth:
  Installed: (none)
  Candidate: (none)
  Version table:
php-phpseclib-file-ansi:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-recode:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-horde-timezone:
  Installed: (none)
  Candidate: 1.1.0-3
  Version table:
     1.1.0-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-crypt:
  Installed: (none)
  Candidate: 2.7.12-1
  Version table:
     2.7.12-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
phpunit-git:
  Installed: (none)
  Candidate: 2.1.4-1
  Version table:
     2.1.4-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
phpunit-global-state:
  Installed: (none)
  Candidate: 2.0.0really2.0.0-2
  Version table:
     2.0.0really2.0.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
phpunit-code-unit-reverse-lookup:
  Installed: (none)
  Candidate: 1.0.1-1
  Version table:
     1.0.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-imap-client:
  Installed: (none)
  Candidate: 2.29.16-1
  Version table:
     2.29.16-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-pinba:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-icalendar:
  Installed: (none)
  Candidate: 2.1.8-1
  Version table:
     2.1.8-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-phpseclib-crypt-blowfish:
  Installed: (none)
  Candidate: (none)
  Version table:
php-tokenizer:
  Installed: (none)
  Candidate: 1.1.0-1
  Version table:
     1.1.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-libsmbclient:
  Installed: (none)
  Candidate: (none)
  Version table:
phpcpd:
  Installed: (none)
  Candidate: 4.1.0-1
  Version table:
     4.1.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-propro:
  Installed: (none)
  Candidate: (none)
  Version table:
phpliteadmin:
  Installed: (none)
  Candidate: 1.9.7.1-2
  Version table:
     1.9.7.1-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-options-resolver:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-opcache:
  Installed: (none)
  Candidate: (none)
  Version table:
php-zend-eventmanager:
  Installed: (none)
  Candidate: 3.2.1-1
  Version table:
     3.2.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
phpliteadmin-themes:
  Installed: (none)
  Candidate: 1.9.7.1-2
  Version table:
     1.9.7.1-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-javascriptminify-jsmin:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3:
  Installed: 7.3.27-1~deb10u1
  Candidate: 7.3.27-1~deb10u1
  Version table:
 *** 7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
        100 /var/lib/dpkg/status
php-psr-http-message-implementation:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-logintasks:
  Installed: (none)
  Candidate: 2.0.7-4
  Version table:
     2.0.7-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-security-acl:
  Installed: (none)
  Candidate: 3.0.1-2
  Version table:
     3.0.1-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-sebastian-resource-operations:
  Installed: (none)
  Candidate: (none)
  Version table:
php-mdb2:
  Installed: (none)
  Candidate: 2.5.0b5-2
  Version table:
     2.5.0b5-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-sysvsem:
  Installed: (none)
  Candidate: (none)
  Version table:
php-doctrine-collections:
  Installed: (none)
  Candidate: 1.5.0-1
  Version table:
     1.5.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-json:
  Installed: 7.3.27-1~deb10u1
  Candidate: 7.3.27-1~deb10u1
  Version table:
 *** 7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
        100 /var/lib/dpkg/status
phpdox:
  Installed: (none)
  Candidate: 0.11.2-1
  Version table:
     0.11.2-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-sysvshm:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-stream-wrapper:
  Installed: (none)
  Candidate: 2.1.4-2
  Version table:
     2.1.4-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-lock:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-calendar:
  Installed: (none)
  Candidate: (none)
  Version table:
php-luasandbox:
  Installed: (none)
  Candidate: 3.0.3-2
  Version table:
     3.0.3-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-thrift:
  Installed: (none)
  Candidate: 2.0.3-3
  Version table:
     2.0.3-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-mail:
  Installed: (none)
  Candidate: 2.6.4-3
  Version table:
     2.6.4-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-friendsofphp-php-cs-fixer:
  Installed: (none)
  Candidate: (none)
  Version table:
php-console-commandline:
  Installed: (none)
  Candidate: 1.2.1-1
  Version table:
     1.2.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-webmozart-assert:
  Installed: (none)
  Candidate: 1.4.0-3
  Version table:
     1.4.0-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-mapi:
  Installed: (none)
  Candidate: 1.0.8-4
  Version table:
     1.0.8-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-sql-formatter:
  Installed: (none)
  Candidate: 1.2.17-3
  Version table:
     1.2.17-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-http-kernel:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
phpwebcounter:
  Installed: (none)
  Candidate: 1.0-5
  Version table:
     1.0-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-cache-integration-tests:
  Installed: (none)
  Candidate: 0.16.0-2
  Version table:
     0.16.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-pdepend:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-sass:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-ansel:
  Installed: (none)
  Candidate: 3.0.9+debian0-1
  Version table:
     3.0.9+debian0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-phar:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-kolab-format:
  Installed: (none)
  Candidate: 2.0.9-3
  Version table:
     2.0.9-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-mdb2-driver-mysqli:
  Installed: (none)
  Candidate: (none)
  Version table:
php-fileinfo:
  Installed: (none)
  Candidate: (none)
  Version table:
php-interbase:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-pdo-sqlite:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-mysql:
  Installed: 7.3.27-1~deb10u1
  Candidate: 7.3.27-1~deb10u1
  Version table:
 *** 7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
        100 /var/lib/dpkg/status
php-horde-editor:
  Installed: (none)
  Candidate: 2.0.5+debian0-2
  Version table:
     2.0.5+debian0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-graylog2-gelf-php:
  Installed: (none)
  Candidate: (none)
  Version table:
php-phpseclib-math-biginteger:
  Installed: (none)
  Candidate: (none)
  Version table:
php-sockets:
  Installed: (none)
  Candidate: (none)
  Version table:
phpwebcounter-extra:
  Installed: (none)
  Candidate: 20071108-4
  Version table:
     20071108-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-react-http:
  Installed: (none)
  Candidate: 0.8.3-3
  Version table:
     0.8.3-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.0-common:
  Installed: (none)
  Candidate: (none)
  Version table:
php-symfony-event-dispatcher:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php7.3-ds:
  Installed: (none)
  Candidate: (none)
  Version table:
php-composer-spdx-licenses:
  Installed: (none)
  Candidate: 1.5.0-1
  Version table:
     1.5.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-mdb2-driver-fbsql:
  Installed: (none)
  Candidate: (none)
  Version table:
php-composer-xdebug-handler:
  Installed: (none)
  Candidate: 1.3.2-1
  Version table:
     1.3.2-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-gd:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php7.3-smbclient:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-mime-viewer:
  Installed: (none)
  Candidate: 2.2.2-3
  Version table:
     2.2.2-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-share:
  Installed: (none)
  Candidate: 2.2.0-3
  Version table:
     2.2.0-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-net-idna2:
  Installed: (none)
  Candidate: 0.1.1-1
  Version table:
     0.1.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-mcrypt:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-ps:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-exception:
  Installed: (none)
  Candidate: 2.0.8-4
  Version table:
     2.0.8-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-text-flowed:
  Installed: (none)
  Candidate: 2.0.3-5
  Version table:
     2.0.3-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-date-parser:
  Installed: (none)
  Candidate: 2.0.6-3
  Version table:
     2.0.6-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-kolab-storage:
  Installed: (none)
  Candidate: 2.2.3-3
  Version table:
     2.2.3-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-phpseclib-file-x509:
  Installed: (none)
  Candidate: (none)
  Version table:
php-pdo-mysql:
  Installed: (none)
  Candidate: (none)
  Version table:
php-uuid:
  Installed: (none)
  Candidate: 1.0.4-7
  Version table:
     1.0.4-7 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-serialize:
  Installed: (none)
  Candidate: 2.0.5-5
  Version table:
     2.0.5-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-curl:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php7.3-sysvsem:
  Installed: (none)
  Candidate: (none)
  Version table:
php-msgpack:
  Installed: (none)
  Candidate: 2.0.3-1
  Version table:
     2.0.3-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-suhosin:
  Installed: (none)
  Candidate: (none)
  Version table:
php-phpseclib-file-asn1:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-sysvshm:
  Installed: (none)
  Candidate: (none)
  Version table:
php-symfony-security-core:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-gearman:
  Installed: (none)
  Candidate: 2.0.5+1.1.2-3
  Version table:
     2.0.5+1.1.2-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-dom-crawler:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
phpunit-diff:
  Installed: (none)
  Candidate: 3.0.2-1
  Version table:
     3.0.2-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-codecoverage:
  Installed: (none)
  Candidate: 6.1.4+dfsg-1
  Version table:
     6.1.4+dfsg-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde:
  Installed: (none)
  Candidate: 5.2.20+debian0-1+deb10u2
  Version table:
     5.2.20+debian0-1+deb10u2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-twig-bridge:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-phpseclib-crypt-random:
  Installed: (none)
  Candidate: (none)
  Version table:
phpunit-comparator:
  Installed: (none)
  Candidate: 3.0.2-1
  Version table:
     3.0.2-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-zend-stdlib:
  Installed: (none)
  Candidate: 3.2.1-1
  Version table:
     3.2.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-test:
  Installed: (none)
  Candidate: 2.6.3+debian0-3
  Version table:
     2.6.3+debian0-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-sessionhandler:
  Installed: (none)
  Candidate: 2.2.9-3
  Version table:
     2.2.9-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-twig-bundle:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php7.3-memcached:
  Installed: (none)
  Candidate: (none)
  Version table:
php-videlalvaro-php-amqplib:
  Installed: (none)
  Candidate: (none)
  Version table:
php-tidy:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-file-iterator:
  Installed: (none)
  Candidate: 2.0.2-1
  Version table:
     2.0.2-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-ldap:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-net-dime:
  Installed: (none)
  Candidate: 1.0.2-3
  Version table:
     1.0.2-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-directory-scanner:
  Installed: (none)
  Candidate: 1.3.2-2
  Version table:
     1.3.2-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-zend-xmlrpc:
  Installed: (none)
  Candidate: (none)
  Version table:
php-sqlite3:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-memcache:
  Installed: (none)
  Candidate: 3.0.9~20170802.e702b5f-2
  Version table:
     3.0.9~20170802.e702b5f-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.2-sass:
  Installed: (none)
  Candidate: (none)
  Version table:
php-mdb2-driver-ibase:
  Installed: (none)
  Candidate: (none)
  Version table:
php-ratchet-pawl:
  Installed: (none)
  Candidate: 0.3.4-1
  Version table:
     0.3.4-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-tideways:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-sockets:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-util:
  Installed: (none)
  Candidate: 2.5.8-3
  Version table:
     2.5.8-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-feed:
  Installed: (none)
  Candidate: 2.0.4-5
  Version table:
     2.0.4-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-react-promise-stream:
  Installed: (none)
  Candidate: 1.1.1-3
  Version table:
     1.1.1-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-net-ftp:
  Installed: (none)
  Candidate: 1:1.4.0-2
  Version table:
     1:1.4.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-xdebug:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-compress:
  Installed: (none)
  Candidate: 2.2.1-4
  Version table:
     2.2.1-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-wddx:
  Installed: (none)
  Candidate: (none)
  Version table:
php-cboden-ratchet:
  Installed: (none)
  Candidate: 0.4.1-2
  Version table:
     0.4.1-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-console-getopt:
  Installed: (none)
  Candidate: (none)
  Version table:
php-doctrine-phpcr-odm:
  Installed: (none)
  Candidate: (none)
  Version table:
php-uploadprogress:
  Installed: (none)
  Candidate: 1.0.3.1-4-g95d8a0f-5+b1
  Version table:
     1.0.3.1-4-g95d8a0f-5+b1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-compress-fast:
  Installed: (none)
  Candidate: 1.1.1-5
  Version table:
     1.1.1-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-psr-log-implementation:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-msgpack:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-gearman:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-pack:
  Installed: (none)
  Candidate: 1.0.7-3
  Version table:
     1.0.7-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-turba:
  Installed: (none)
  Candidate: 4.2.23-1
  Version table:
     4.2.23-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-facedetect:
  Installed: (none)
  Candidate: 1.1.0+git20170801-2
  Version table:
     1.1.0+git20170801-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-token-stream:
  Installed: (none)
  Candidate: 3.0.1-1
  Version table:
     3.0.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-phpdocumentor-type-resolver:
  Installed: (none)
  Candidate: 0.4.0-2
  Version table:
     0.4.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-pecl-http:
  Installed: (none)
  Candidate: 3.2.0+2.6.0-2
  Version table:
     3.2.0+2.6.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-xml-wbxml:
  Installed: (none)
  Candidate: 2.0.3-5
  Version table:
     2.0.3-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-crypt-blowfish:
  Installed: (none)
  Candidate: (none)
  Version table:
php-composer-ca-bundle:
  Installed: (none)
  Candidate: 1.1.4-1
  Version table:
     1.1.4-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-illuminate-database:
  Installed: (none)
  Candidate: 5.7.27-1
  Version table:
     5.7.27-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-imap:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-symfony-filesystem:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-symfony-security-csrf:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-pear:
  Installed: (none)
  Candidate: 1:1.10.6+submodules+notgz-1.1+deb10u2
  Version table:
     1:1.10.6+submodules+notgz-1.1+deb10u2 500
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
     1:1.10.6+submodules+notgz-1.1+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-wfio:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-sqlite3:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-pdo-firebird:
  Installed: (none)
  Candidate: (none)
  Version table:
phpunit-resource-operations:
  Installed: (none)
  Candidate: 2.0.1-1
  Version table:
     2.0.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-finder-facade:
  Installed: (none)
  Candidate: 1.2.2-2
  Version table:
     1.2.2-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-css-selector:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
phpunit-object-enumerator:
  Installed: (none)
  Candidate: 3.0.3-3
  Version table:
     3.0.3-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-evenement:
  Installed: (none)
  Candidate: 3.0.1-2
  Version table:
     3.0.1-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
phpmyadmin:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-secret:
  Installed: (none)
  Candidate: 2.0.6-5
  Version table:
     2.0.6-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-security-guard:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-symfony-http-foundation:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-phpseclib-net-sftp:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-kronolith:
  Installed: (none)
  Candidate: 4.2.25-1
  Version table:
     4.2.25-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
phpapi-20170718:
  Installed: (none)
  Candidate: (none)
  Version table:
php5.6-json:
  Installed: (none)
  Candidate: (none)
  Version table:
phploc:
  Installed: (none)
  Candidate: 4.0.1-2
  Version table:
     4.0.1-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
phpunit-mock-object:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-webmail:
  Installed: (none)
  Candidate: 5.2.22-3
  Version table:
     5.2.22-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-stopwatch:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-horde-mime:
  Installed: (none)
  Candidate: 2.11.0-2
  Version table:
     2.11.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-common:
  Installed: 7.3.27-1~deb10u1
  Candidate: 7.3.27-1~deb10u1
  Version table:
 *** 7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
        100 /var/lib/dpkg/status
php7.3-intl:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-aws-sdk:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-kolab-session:
  Installed: (none)
  Candidate: 2.0.3-5
  Version table:
     2.0.3-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-text-template:
  Installed: (none)
  Candidate: 1.2.1-2
  Version table:
     1.2.1-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-cli:
  Installed: (none)
  Candidate: 2.3.0-2
  Version table:
     2.3.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-pdo-dblib:
  Installed: (none)
  Candidate: (none)
  Version table:
php-json:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-htmlpurifier:
  Installed: (none)
  Candidate: 4.10.0-1
  Version table:
     4.10.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-mysqli:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-core:
  Installed: (none)
  Candidate: 2.31.6+debian0-1
  Version table:
     2.31.6+debian0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-services-weather:
  Installed: (none)
  Candidate: (none)
  Version table:
php-net-dns2:
  Installed: (none)
  Candidate: 1.4.1-2
  Version table:
     1.4.1-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-doctrine-orm:
  Installed: (none)
  Candidate: 2.6.3+dfsg-1
  Version table:
     2.6.3+dfsg-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php5-pgsql:
  Installed: (none)
  Candidate: (none)
  Version table:
php-net-socket:
  Installed: (none)
  Candidate: 1.0.14-2
  Version table:
     1.0.14-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-service-weather:
  Installed: (none)
  Candidate: 2.5.4-3
  Version table:
     2.5.4-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-dav:
  Installed: (none)
  Candidate: 1.1.4-3
  Version table:
     1.1.4-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-mdb2-driver-querysim:
  Installed: (none)
  Candidate: (none)
  Version table:
php-sasl:
  Installed: (none)
  Candidate: (none)
  Version table:
php-sass:
  Installed: (none)
  Candidate: 0.5.16-1+b1
  Version table:
     0.5.16-1+b1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-phpspec-prophecy:
  Installed: (none)
  Candidate: 1.8.0-1
  Version table:
     1.8.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-alarm:
  Installed: (none)
  Candidate: 2.2.10-3
  Version table:
     2.2.10-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-phar:
  Installed: (none)
  Candidate: (none)
  Version table:
php-doctrine-event-manager:
  Installed: (none)
  Candidate: 1.0.0-1
  Version table:
     1.0.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-stream-filter:
  Installed: (none)
  Candidate: 2.0.4-5
  Version table:
     2.0.4-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-service-urlshortener:
  Installed: (none)
  Candidate: 2.0.3-3
  Version table:
     2.0.3-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfonypdependency-injection:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-odbc:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-doctrine-dbal:
  Installed: (none)
  Candidate: 2.9.2-1
  Version table:
     2.9.2-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-net-ldap2:
  Installed: (none)
  Candidate: (none)
  Version table:
php-net-ldap3:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-idna:
  Installed: (none)
  Candidate: 1.1.1-3
  Version table:
     1.1.1-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-bcmath:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-phpseclib-crypt-aes:
  Installed: (none)
  Candidate: (none)
  Version table:
php-sybase:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-finder:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-horde-service-twitter:
  Installed: (none)
  Candidate: 2.1.6-3
  Version table:
     2.1.6-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-react-promise:
  Installed: (none)
  Candidate: 2.7.0-1
  Version table:
     2.7.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-var-dumper:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-ruflin-elastica:
  Installed: (none)
  Candidate: (none)
  Version table:
php-ocramius-proxy-manager:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-pdo-pgsql:
  Installed: (none)
  Candidate: (none)
  Version table:
php:
  Installed: 2:7.3+69
  Candidate: 2:7.3+69
  Version table:
 *** 2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        100 /var/lib/dpkg/status
php7.3-opcache:
  Installed: 7.3.27-1~deb10u1
  Candidate: 7.3.27-1~deb10u1
  Version table:
 *** 7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
        100 /var/lib/dpkg/status
php-symfony-routing:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-net-sieve:
  Installed: (none)
  Candidate: 1.4.1-1
  Version table:
     1.4.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-zend-code:
  Installed: (none)
  Candidate: 3.3.1-1
  Version table:
     3.3.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.2-uploadprogress:
  Installed: (none)
  Candidate: (none)
  Version table:
phppgadmin:
  Installed: (none)
  Candidate: 5.1+ds-4
  Version table:
     5.1+ds-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-random-compat:
  Installed: (none)
  Candidate: 2.0.18-1
  Version table:
     2.0.18-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-kolab-server:
  Installed: (none)
  Candidate: 2.0.5-5
  Version table:
     2.0.5-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-browser:
  Installed: (none)
  Candidate: 2.0.15-3
  Version table:
     2.0.15-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-phpseclib-crypt-tripledes:
  Installed: (none)
  Candidate: (none)
  Version table:
php-curl:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-pdo-odbc:
  Installed: (none)
  Candidate: (none)
  Version table:
php-symfony-workflow:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-structures-graph:
  Installed: (none)
  Candidate: (none)
  Version table:
php-respect-validation:
  Installed: (none)
  Candidate: 1.1.29-2
  Version table:
     1.1.29-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-email-validator:
  Installed: (none)
  Candidate: 2.1.7-1
  Version table:
     2.1.7-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-pgsql:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-framework-bundle:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-libsodium:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-service-gravatar:
  Installed: (none)
  Candidate: 1.0.1-5
  Version table:
     1.0.1-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-proxy-manager-bridge:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php7.3-bz2:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-doctrine-data-fixtures:
  Installed: (none)
  Candidate: 1.2.2-2
  Version table:
     1.2.2-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
phpunit-version:
  Installed: (none)
  Candidate: 2.0.1-1
  Version table:
     2.0.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-fpdf:
  Installed: (none)
  Candidate: 3:1.8.1.dfsg-2
  Version table:
     3:1.8.1.dfsg-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-tcpdf:
  Installed: (none)
  Candidate: (none)
  Version table:
phpunit-recursion-context:
  Installed: (none)
  Candidate: 3.0.0-2
  Version table:
     3.0.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-stomp:
  Installed: (none)
  Candidate: (none)
  Version table:
php5.6-common:
  Installed: (none)
  Candidate: (none)
  Version table:
php-robmorgan-phinx:
  Installed: (none)
  Candidate: 0.9.2-1
  Version table:
     0.9.2-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-mysqlnd:
  Installed: (none)
  Candidate: (none)
  Version table:
phpunit-dbunit:
  Installed: (none)
  Candidate: 4.0.0-2
  Version table:
     4.0.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-zendframework-zend-code:
  Installed: (none)
  Candidate: (none)
  Version table:
php-ratchet-rfc6455:
  Installed: (none)
  Candidate: 0.2.4-2
  Version table:
     0.2.4-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-yaml:
  Installed: (none)
  Candidate: (none)
  Version table:
php-react-event-loop:
  Installed: (none)
  Candidate: 1.0.0-1
  Version table:
     1.0.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-ldap:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-cgi:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-horde-text-diff:
  Installed: (none)
  Candidate: 2.2.0-3
  Version table:
     2.2.0-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-cli:
  Installed: 7.3.27-1~deb10u1
  Candidate: 7.3.27-1~deb10u1
  Version table:
 *** 7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
        100 /var/lib/dpkg/status
php-php-gettext:
  Installed: (none)
  Candidate: 1.0.12-0.1
  Version table:
     1.0.12-0.1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-doctrine-reflection:
  Installed: (none)
  Candidate: 1.0.0-1
  Version table:
     1.0.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-raphf:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-snmp:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-shmop:
  Installed: (none)
  Candidate: (none)
  Version table:
php-phpseclib-crypt-des:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-sesha:
  Installed: (none)
  Candidate: 1.0.0~rc3-3
  Version table:
     1.0.0~rc3-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-readline:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php5-cli:
  Installed: (none)
  Candidate: (none)
  Version table:
php-symfony-property-info:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php7.3-dba:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-doctrine-persistence:
  Installed: (none)
  Candidate: 1.1.0-2
  Version table:
     1.1.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-dependency-injection:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php7.3-dev:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-markdown:
  Installed: (none)
  Candidate: 1.8.0-1
  Version table:
     1.8.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-elisp:
  Installed: (none)
  Candidate: 1.21.0-1
  Version table:
     1.21.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-soap:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-xml-htmlsax3:
  Installed: (none)
  Candidate: 3.0.0+really3.0.0-3
  Version table:
     3.0.0+really3.0.0-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-dom:
  Installed: (none)
  Candidate: (none)
  Version table:
phpunit-environment:
  Installed: (none)
  Candidate: 4.1.0-1
  Version table:
     4.1.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-phpdbg:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-fzaninotto-faker:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-solr:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-gollem:
  Installed: (none)
  Candidate: 3.0.12-3+deb10u1
  Version table:
     3.0.12-3+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-net-nntp:
  Installed: (none)
  Candidate: 1.5.0-2
  Version table:
     1.5.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-raintpl:
  Installed: (none)
  Candidate: 3.1.0+dfsg-1
  Version table:
     3.1.0+dfsg-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-syncml:
  Installed: (none)
  Candidate: 2.0.7-4
  Version table:
     2.0.7-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-inflector:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-horde-notification:
  Installed: (none)
  Candidate: 2.0.4-5
  Version table:
     2.0.4-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-imp:
  Installed: (none)
  Candidate: 6.2.22-1
  Version table:
     6.2.22-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
phpqrcode:
  Installed: (none)
  Candidate: 1.1.4-3
  Version table:
     1.1.4-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-reactivex-rxphp:
  Installed: (none)
  Candidate: (none)
  Version table:
php-monolog:
  Installed: (none)
  Candidate: 1.24.0-1
  Version table:
     1.24.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-phpseclib-crypt-base:
  Installed: (none)
  Candidate: (none)
  Version table:
php-zend-json:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.0-curl:
  Installed: (none)
  Candidate: (none)
  Version table:
php-doctrine-common:
  Installed: (none)
  Candidate: 2.10.0-1
  Version table:
     2.10.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-simplexml:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-form:
  Installed: (none)
  Candidate: 2.0.18-3.1+deb10u1
  Version table:
     2.0.18-3.1+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-deepcopy:
  Installed: (none)
  Candidate: 1.8.1-1
  Version table:
     1.8.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-event:
  Installed: (none)
  Candidate: (none)
  Version table:
php-apc:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.2-ds:
  Installed: (none)
  Candidate: (none)
  Version table:
php-text-captcha:
  Installed: (none)
  Candidate: (none)
  Version table:
php-ast:
  Installed: (none)
  Candidate: 0.1.6-2+b2
  Version table:
     0.1.6-2+b2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-swiftmailer:
  Installed: (none)
  Candidate: 5.4.2-1.1
  Version table:
     5.4.2-1.1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-debug-bundle:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-propro-dev:
  Installed: (none)
  Candidate: 2.1.0+1.0.2-2
  Version table:
     2.1.0+1.0.2-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-console-table:
  Installed: (none)
  Candidate: 1.3.1-0.1
  Version table:
     1.3.1-0.1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.2-ps:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-activesync:
  Installed: (none)
  Candidate: 2.39.4-1
  Version table:
     2.39.4-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-imap:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-radius:
  Installed: (none)
  Candidate: 1.4.0~b1-9
  Version table:
     1.4.0~b1-9 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-crypt-gpg:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-mysqlnd:
  Installed: (none)
  Candidate: (none)
  Version table:
php-symfony-web-link:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-horde-tree:
  Installed: (none)
  Candidate: 2.0.5-3
  Version table:
     2.0.5-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-gnupg:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-ldap:
  Installed: (none)
  Candidate: 2.4.1-1
  Version table:
     2.4.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-wikidiff2:
  Installed: (none)
  Candidate: 1.7.3-2
  Version table:
     1.7.3-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-support:
  Installed: (none)
  Candidate: 2.2.0-3
  Version table:
     2.2.0-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
phpphylotree:
  Installed: (none)
  Candidate: (none)
  Version table:
php-doctrine-lexer:
  Installed: (none)
  Candidate: 1.0.1-4
  Version table:
     1.0.1-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-fpm:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php7.3-posix:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-ftp:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-iconv:
  Installed: (none)
  Candidate: (none)
  Version table:
php-raphf-dev:
  Installed: (none)
  Candidate: 2.0.0+1.1.2-4
  Version table:
     2.0.0+1.1.2-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-bz2:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-font-lib:
  Installed: (none)
  Candidate: 0.3.1+dfsg-3
  Version table:
     0.3.1+dfsg-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-cas:
  Installed: (none)
  Candidate: 1.3.6-1
  Version table:
     1.3.6-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-validator:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-symfony-browser-kit:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-doctrine-cache-bundle:
  Installed: (none)
  Candidate: 1.3.5-1
  Version table:
     1.3.5-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-cgi:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-cli:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-gmp:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-cpd:
  Installed: (none)
  Candidate: (none)
  Version table:
php-ctype:
  Installed: (none)
  Candidate: (none)
  Version table:
php-intl:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-net-url2:
  Installed: (none)
  Candidate: 2.2.1-0.1
  Version table:
     2.2.1-0.1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-stringprep:
  Installed: (none)
  Candidate: (none)
  Version table:
php-http-request2:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-log:
  Installed: (none)
  Candidate: 2.3.0-3
  Version table:
     2.3.0-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-file-find:
  Installed: (none)
  Candidate: (none)
  Version table:
php-dba:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-service-facebook:
  Installed: (none)
  Candidate: 2.0.10-3
  Version table:
     2.0.10-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-cache:
  Installed: (none)
  Candidate: 2.5.5-3
  Version table:
     2.5.5-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-fig-link-util:
  Installed: (none)
  Candidate: 1.0.0-2
  Version table:
     1.0.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-illuminate-events:
  Installed: (none)
  Candidate: (none)
  Version table:
php-dev:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-twig:
  Installed: (none)
  Candidate: 2.6.2-2
  Version table:
     2.6.2-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-lz4:
  Installed: (none)
  Candidate: 1.0.10-4+b2
  Version table:
     1.0.10-4+b2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-mailparse:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-backup:
  Installed: (none)
  Candidate: (none)
  Version table:
php-cache-lite:
  Installed: (none)
  Candidate: 1.8.2-1
  Version table:
     1.8.2-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-text-figlet:
  Installed: (none)
  Candidate: 1.0.2-4
  Version table:
     1.0.2-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-javascriptminify:
  Installed: (none)
  Candidate: 1.1.5-3
  Version table:
     1.1.5-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-ssh2:
  Installed: (none)
  Candidate: (none)
  Version table:
php-dom:
  Installed: (none)
  Candidate: (none)
  Version table:
php-mongo:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-template:
  Installed: (none)
  Candidate: 2.0.3-5
  Version table:
     2.0.3-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-hashtable:
  Installed: (none)
  Candidate: 1.2.6-3
  Version table:
     1.2.6-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.2-thrift:
  Installed: (none)
  Candidate: (none)
  Version table:
php-dflydev-fig-cookies:
  Installed: (none)
  Candidate: 2.0.0-1
  Version table:
     2.0.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-oci8:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-whups:
  Installed: (none)
  Candidate: 3.0.12-3
  Version table:
     3.0.12-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-text-filter:
  Installed: (none)
  Candidate: 2.3.5-3+deb10u1
  Version table:
     2.3.5-3+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-mongo:
  Installed: (none)
  Candidate: (none)
  Version table:
php-geoip:
  Installed: (none)
  Candidate: 1.1.1-3
  Version table:
     1.1.1-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-igbinary:
  Installed: (none)
  Candidate: (none)
  Version table:
php-proxy-manager:
  Installed: (none)
  Candidate: 2.2.2-1
  Version table:
     2.2.2-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-odbc:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-nag:
  Installed: (none)
  Candidate: 4.2.19-1
  Version table:
     4.2.19-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-web-profiler-bundle:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-horde-queue:
  Installed: (none)
  Candidate: 1.1.5-3
  Version table:
     1.1.5-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-pecl-http-dev:
  Installed: (none)
  Candidate: 3.2.0+2.6.0-2
  Version table:
     3.2.0+2.6.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-imsp:
  Installed: (none)
  Candidate: 2.0.10-3
  Version table:
     2.0.10-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-autoload:
  Installed: (none)
  Candidate: (none)
  Version table:
php-mdb2-driver-pgsql:
  Installed: (none)
  Candidate: 1.5.0b4-2
  Version table:
     1.5.0b4-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-nls:
  Installed: (none)
  Candidate: 2.2.1-3
  Version table:
     2.2.1-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-net-url:
  Installed: (none)
  Candidate: 1.0.15-4
  Version table:
     1.0.15-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-config:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-horde-ingo:
  Installed: (none)
  Candidate: 3.2.16-3
  Version table:
     3.2.16-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-phpseclib-net-ssh1:
  Installed: (none)
  Candidate: (none)
  Version table:
php-phpseclib-net-ssh2:
  Installed: (none)
  Candidate: (none)
  Version table:
php-fpm:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-libpuzzle:
  Installed: (none)
  Candidate: (none)
  Version table:
php-text-wiki:
  Installed: (none)
  Candidate: 1.2.1-3
  Version table:
     1.2.1-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-ftp:
  Installed: (none)
  Candidate: (none)
  Version table:
php-symfony-monolog-bridge:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-psr-log:
  Installed: (none)
  Candidate: 1.1.0-1
  Version table:
     1.1.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-mdb2-driver-oci8:
  Installed: (none)
  Candidate: (none)
  Version table:
php-gmagick:
  Installed: (none)
  Candidate: 2.0.5~rc1+1.1.7~rc3-3
  Version table:
     2.0.5~rc1+1.1.7~rc3-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-all-dev:
  Installed: (none)
  Candidate: 2:69
  Version table:
     2:69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-property-access:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-xml-svg:
  Installed: (none)
  Candidate: 1.1.0-2
  Version table:
     1.1.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php5-curl:
  Installed: (none)
  Candidate: (none)
  Version table:
php-pear-frontend-gtk:
  Installed: (none)
  Candidate: (none)
  Version table:
php-guestfs:
  Installed: (none)
  Candidate: 1:1.40.2-2
  Version table:
     1:1.40.2-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-fxsl:
  Installed: (none)
  Candidate: 1.1.1-3
  Version table:
     1.1.1-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-memcache:
  Installed: (none)
  Candidate: (none)
  Version table:
php-gmp:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-patchwork-utf8:
  Installed: (none)
  Candidate: 1.3.1-1
  Version table:
     1.3.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-spellchecker:
  Installed: (none)
  Candidate: 2.1.3-5
  Version table:
     2.1.3-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-pdf:
  Installed: (none)
  Candidate: 2.0.7-5
  Version table:
     2.0.7-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-amqp:
  Installed: (none)
  Candidate: (none)
  Version table:
php-mdb2-driver-odbc:
  Installed: (none)
  Candidate: (none)
  Version table:
php-enchant:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-moontoast-math:
  Installed: (none)
  Candidate: (none)
  Version table:
php-text-languagedetect:
  Installed: (none)
  Candidate: 0.3.0-2
  Version table:
     0.3.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-yaml:
  Installed: (none)
  Candidate: 2.0.2+1.3.1-4
  Version table:
     2.0.2+1.3.1-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-redis:
  Installed: (none)
  Candidate: 4.2.0-1
  Version table:
     4.2.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-mysqli:
  Installed: (none)
  Candidate: (none)
  Version table:
php-timer:
  Installed: (none)
  Candidate: 2.1.1-1
  Version table:
     2.1.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php5-ldap:
  Installed: (none)
  Candidate: (none)
  Version table:
php-ramsey-uuid:
  Installed: (none)
  Candidate: (none)
  Version table:
php-net-publicsuffix:
  Installed: (none)
  Candidate: 0.2-1
  Version table:
     0.2-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-xmlrpc:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-lua:
  Installed: (none)
  Candidate: (none)
  Version table:
php-mbstring:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-snmp:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-phpunit-bridge:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-mdb2-driver-sqlite:
  Installed: (none)
  Candidate: (none)
  Version table:
php-gettext:
  Installed: (none)
  Candidate: 1.0.12-0.1
  Version table:
     1.0.12-0.1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-thrift:
  Installed: (none)
  Candidate: 0.11.0-4
  Version table:
     0.11.0-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-htmlawed:
  Installed: (none)
  Candidate: 1.1.20-1
  Version table:
     1.1.20-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-psr-container-implementation:
  Installed: (none)
  Candidate: (none)
  Version table:
php-idn:
  Installed: (none)
  Candidate: (none)
  Version table:
php-geshi:
  Installed: (none)
  Candidate: 1.0.8.11-3
  Version table:
     1.0.8.11-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-xmlwriter:
  Installed: (none)
  Candidate: (none)
  Version table:
php-smbclient:
  Installed: (none)
  Candidate: 0.9.0-3+b1
  Version table:
     0.9.0-3+b1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-soap:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-react-stream:
  Installed: (none)
  Candidate: 1.0.0-2
  Version table:
     1.0.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-alcaeus-mongo-php-adapter:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-mnemo:
  Installed: (none)
  Candidate: 4.2.14-3
  Version table:
     4.2.14-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-illuminate-container:
  Installed: (none)
  Candidate: 5.7.27-1
  Version table:
     5.7.27-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-rdo:
  Installed: (none)
  Candidate: 2.1.0-3
  Version table:
     2.1.0-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-xcache:
  Installed: (none)
  Candidate: (none)
  Version table:
php-solr:
  Installed: (none)
  Candidate: 2.4.0-7
  Version table:
     2.4.0-7 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-libvirt-php:
  Installed: (none)
  Candidate: 0.5.4-3
  Version table:
     0.5.4-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-db-dataobject:
  Installed: (none)
  Candidate: 1.11.5-1
  Version table:
     1.11.5-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-sybase:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-horde-rpc:
  Installed: (none)
  Candidate: 2.1.8-3
  Version table:
     2.1.8-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-mdb2-driver-mssql:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-gmagick:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-tokenizer:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-apcu:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-cssminify:
  Installed: (none)
  Candidate: 1.0.4-3
  Version table:
     1.0.4-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-zeta-base:
  Installed: (none)
  Candidate: 1.9.1-1
  Version table:
     1.9.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-finder-facade-doc:
  Installed: (none)
  Candidate: 1.2.2-2
  Version table:
     1.2.2-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-file-fstab:
  Installed: (none)
  Candidate: (none)
  Version table:
php-seclib:
  Installed: (none)
  Candidate: 1.0.14-1
  Version table:
     1.0.14-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-fdomdocument:
  Installed: (none)
  Candidate: 1.6.6-1
  Version table:
     1.6.6-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-phpseclib-system-ssh-agent:
  Installed: (none)
  Candidate: (none)
  Version table:
php-pclzip:
  Installed: (none)
  Candidate: 2.8.2-4
  Version table:
     2.8.2-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-sentry:
  Installed: (none)
  Candidate: (none)
  Version table:
php-phpdocumentor-reflection-common:
  Installed: (none)
  Candidate: 1.0.1-1
  Version table:
     1.0.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-date:
  Installed: (none)
  Candidate: 1.4.7-3
  Version table:
     1.4.7-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-net-idna:
  Installed: (none)
  Candidate: (none)
  Version table:
php-memcached:
  Installed: (none)
  Candidate: 3.1.3+2.2.0-1
  Version table:
     3.1.3+2.2.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-smtp:
  Installed: (none)
  Candidate: 1.9.5-3
  Version table:
     1.9.5-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-db:
  Installed: (none)
  Candidate: 2.4.0-3
  Version table:
     2.4.0-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-react-dns:
  Installed: (none)
  Candidate: 0.4.16-1
  Version table:
     0.4.16-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-cache:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php7.3-exif:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-openxchange:
  Installed: (none)
  Candidate: 1.0.1-3
  Version table:
     1.0.1-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-php-facedetect:
  Installed: (none)
  Candidate: (none)
  Version table:
php-remctl:
  Installed: (none)
  Candidate: 3.15-1+b3
  Version table:
     3.15-1+b3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
phpab:
  Installed: (none)
  Candidate: 1.25.3-1
  Version table:
     1.25.3-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-tideways:
  Installed: (none)
  Candidate: 4.1.6-2
  Version table:
     4.1.6-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
phpunit-object-reflector:
  Installed: (none)
  Candidate: 1.1.1-2
  Version table:
     1.1.1-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-react-socket:
  Installed: (none)
  Candidate: 1.1.0-1
  Version table:
     1.1.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-fabiang-sasl:
  Installed: (none)
  Candidate: 1.0.0-1
  Version table:
     1.0.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
phpmd:
  Installed: (none)
  Candidate: 2.6.0-1
  Version table:
     2.6.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-excimer:
  Installed: (none)
  Candidate: 0.1.0~git20181204.9f02079-1
  Version table:
     0.1.0~git20181204.9f02079-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-ocramius-generated-hydrator:
  Installed: (none)
  Candidate: (none)
  Version table:
php-oauth:
  Installed: (none)
  Candidate: 2.0.2+1.2.3-3
  Version table:
     2.0.2+1.2.3-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-gettext:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-calendar:
  Installed: (none)
  Candidate: (none)
  Version table:
php-psr-container:
  Installed: (none)
  Candidate: 1.0.0-1
  Version table:
     1.0.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-doctrine-instantiator:
  Installed: (none)
  Candidate: 1.1.0-2
  Version table:
     1.1.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-pdo:
  Installed: (none)
  Candidate: (none)
  Version table:
php5-mysql:
  Installed: (none)
  Candidate: (none)
  Version table:
php-sabre-vobject:
  Installed: (none)
  Candidate: 2.1.7-4
  Version table:
     2.1.7-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-http-webdav-server:
  Installed: (none)
  Candidate: 1.0.0RC8-1
  Version table:
     1.0.0RC8-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-itip:
  Installed: (none)
  Candidate: 2.1.2-4
  Version table:
     2.1.2-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-loc:
  Installed: (none)
  Candidate: (none)
  Version table:
php-log:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-oauth:
  Installed: (none)
  Candidate: 2.0.4-3
  Version table:
     2.0.4-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-interbase:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-pinba:
  Installed: (none)
  Candidate: 1.1.0-5+b1
  Version table:
     1.1.0-5+b1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-zeroc-ice:
  Installed: (none)
  Candidate: 3.7.2-4
  Version table:
     3.7.2-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-lua:
  Installed: (none)
  Candidate: 2.0.5+1.1.0-3
  Version table:
     2.0.5+1.1.0-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-lzf:
  Installed: (none)
  Candidate: (none)
  Version table:
php-nrk-predis:
  Installed: (none)
  Candidate: 1.0.0-1
  Version table:
     1.0.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-security-bundle:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-horde-view:
  Installed: (none)
  Candidate: 2.0.6-5
  Version table:
     2.0.6-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-translation:
  Installed: (none)
  Candidate: 2.2.2-3
  Version table:
     2.2.2-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-url:
  Installed: (none)
  Candidate: 2.2.6-3
  Version table:
     2.2.6-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-autoloader:
  Installed: (none)
  Candidate: 2.1.2-5
  Version table:
     2.1.2-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-mf2:
  Installed: (none)
  Candidate: 0.3.0-0.1
  Version table:
     0.3.0-0.1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-fileinfo:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.2-tideways:
  Installed: (none)
  Candidate: (none)
  Version table:
php-illuminate-support:
  Installed: (none)
  Candidate: 5.7.27-1
  Version table:
     5.7.27-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-json-schema:
  Installed: (none)
  Candidate: 5.2.8-1
  Version table:
     5.2.8-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-lock:
  Installed: (none)
  Candidate: 2.1.4-3
  Version table:
     2.1.4-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-wicked:
  Installed: (none)
  Candidate: 2.0.8-3
  Version table:
     2.0.8-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-ssh2:
  Installed: (none)
  Candidate: 1.1.2+0.13-4
  Version table:
     1.1.2+0.13-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-phpseclib-crypt-hash:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-controller:
  Installed: (none)
  Candidate: 2.0.5-1
  Version table:
     2.0.5-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-phpseclib-crypt-rc4:
  Installed: (none)
  Candidate: (none)
  Version table:
phpgacl:
  Installed: (none)
  Candidate: (none)
  Version table:
php-react-promise-timer:
  Installed: (none)
  Candidate: 1.5.0-2
  Version table:
     1.5.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-vfs:
  Installed: (none)
  Candidate: 2.4.0-3
  Version table:
     2.4.0-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-phpdbg:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-symfony-dotenv:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php7.3-http:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-pdo-mysql:
  Installed: (none)
  Candidate: (none)
  Version table:
php-console-color2:
  Installed: (none)
  Candidate: (none)
  Version table:
php5:
  Installed: (none)
  Candidate: (none)
  Version table:
php-phpseclib-crypt-rsa:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-data:
  Installed: (none)
  Candidate: 2.1.4-5+deb10u1
  Version table:
     2.1.4-5+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-date:
  Installed: (none)
  Candidate: 2.4.1-3
  Version table:
     2.4.1-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-console:
  Installed: (none)
  Candidate: (none)
  Version table:
php-getid3:
  Installed: (none)
  Candidate: 1.9.17+dfsg-1
  Version table:
     1.9.17+dfsg-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-rrd:
  Installed: (none)
  Candidate: (none)
  Version table:
php-psr-cache:
  Installed: (none)
  Candidate: 1.0.1-1
  Version table:
     1.0.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-amqplib:
  Installed: (none)
  Candidate: 2.8.1-1
  Version table:
     2.8.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-radius:
  Installed: (none)
  Candidate: (none)
  Version table:
php-mysql:
  Installed: 2:7.3+69
  Candidate: 2:7.3+69
  Version table:
 *** 2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        100 /var/lib/dpkg/status
php-invoker:
  Installed: (none)
  Candidate: 2.0.0-1
  Version table:
     2.0.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-xmlreader:
  Installed: (none)
  Candidate: (none)
  Version table:
php-zend-soap:
  Installed: (none)
  Candidate: (none)
  Version table:
php-symfony:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-symfony-class-loader:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-horde-xml-element:
  Installed: (none)
  Candidate: 2.0.4-5
  Version table:
     2.0.4-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-illuminate-console:
  Installed: (none)
  Candidate: (none)
  Version table:
php-pspell:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-react-cache:
  Installed: (none)
  Candidate: 0.5.0-1
  Version table:
     0.5.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-pam:
  Installed: (none)
  Candidate: (none)
  Version table:
php7.3-uploadprogress:
  Installed: (none)
  Candidate: (none)
  Version table:
php-pdo:
  Installed: (none)
  Candidate: (none)
  Version table:
php-xajax:
  Installed: (none)
  Candidate: 0.5-2
  Version table:
     0.5-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php5-mysqlnd:
  Installed: (none)
  Candidate: (none)
  Version table:
php-psr-simple-cache:
  Installed: (none)
  Candidate: 1.0.1-1
  Version table:
     1.0.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
phpapi-20180731:
  Installed: (none)
  Candidate: (none)
  Version table:
php-mailparse:
  Installed: (none)
  Candidate: 3.0.3~dev20181093+2.1.7~dev20160128-1
  Version table:
     3.0.3~dev20181093+2.1.7~dev20160128-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-pmd:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-listheaders:
  Installed: (none)
  Candidate: 1.2.5-3
  Version table:
     1.2.5-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-imagick:
  Installed: (none)
  Candidate: 3.4.3-4.1
  Version table:
     3.4.3-4.1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-amqp:
  Installed: (none)
  Candidate: 1.9.4-1
  Version table:
     1.9.4-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-psr-cache-implementation:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-groupware:
  Installed: (none)
  Candidate: 5.2.22-3
  Version table:
     5.2.22-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-http-request:
  Installed: (none)
  Candidate: 1.4.4-5
  Version table:
     1.4.4-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-phar-io-version:
  Installed: (none)
  Candidate: 2.0.1-1
  Version table:
     2.0.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-pgsql:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-crypt-chap:
  Installed: (none)
  Candidate: (none)
  Version table:
php-guzzlehttp-psr7:
  Installed: (none)
  Candidate: 1.4.2-0.1
  Version table:
     1.4.2-0.1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-net-whois:
  Installed: (none)
  Candidate: 1.0.5-3.1
  Version table:
     1.0.5-3.1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-cache-tag-interop:
  Installed: (none)
  Candidate: 1.0.0-1
  Version table:
     1.0.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-memcache:
  Installed: (none)
  Candidate: 2.1.1-3
  Version table:
     2.1.1-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-scribe:
  Installed: (none)
  Candidate: 2.0.3-3
  Version table:
     2.0.3-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-recode:
  Installed: (none)
  Candidate: 2:7.3+69
  Version table:
     2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-constraint:
  Installed: (none)
  Candidate: 2.0.3-5
  Version table:
     2.0.3-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-group:
  Installed: (none)
  Candidate: 2.1.1-4
  Version table:
     2.1.1-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-phar-io-manifest:
  Installed: (none)
  Candidate: 1.0.3-1
  Version table:
     1.0.3-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-parser:
  Installed: (none)
  Candidate: 3.1.5-1
  Version table:
     3.1.5-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-mail-mime:
  Installed: (none)
  Candidate: 1.10.2-0.1
  Version table:
     1.10.2-0.1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-mongodb:
  Installed: (none)
  Candidate: 1.5.3-2
  Version table:
     1.5.3-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-rar:
  Installed: (none)
  Candidate: (none)
  Version table:
php-propro:
  Installed: (none)
  Candidate: 2.1.0+1.0.2-2
  Version table:
     2.1.0+1.0.2-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-pdo-pgsql:
  Installed: (none)
  Candidate: (none)
  Version table:
php-nesbot-carbon:
  Installed: (none)
  Candidate: 1.27.0-1
  Version table:
     1.27.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php7.3-shmop:
  Installed: (none)
  Candidate: (none)
  Version table:
php-horde-injector:
  Installed: (none)
  Candidate: 2.0.5-5
  Version table:
     2.0.5-5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-rrd:
  Installed: (none)
  Candidate: 2.0.1+1.1.3-6
  Version table:
     2.0.1+1.1.3-6 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-process:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-pdo-odbc:
  Installed: (none)
  Candidate: (none)
  Version table:
php-mdb2-driver-sqlsrv:
  Installed: (none)
  Candidate: (none)
  Version table:
php-cocur-slugify:
  Installed: (none)
  Candidate: 3.1-1
  Version table:
     3.1-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-crypt-blowfish:
  Installed: (none)
  Candidate: 1.1.2-3
  Version table:
     1.1.2-3 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php5-sqlite:
  Installed: (none)
  Candidate: (none)
  Version table:
php-rollbar:
  Installed: (none)
  Candidate: (none)
  Version table:
php-doctrine-mongodb-odm:
  Installed: (none)
  Candidate: (none)
  Version table:
php-apcu:
  Installed: (none)
  Candidate: 5.1.17+4.0.11-1
  Version table:
     5.1.17+4.0.11-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-doctrine-cache:
  Installed: (none)
  Candidate: 1.8.0-1
  Version table:
     1.8.0-1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-token:
  Installed: (none)
  Candidate: 2.0.9-4
  Version table:
     2.0.9-4 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-sabre-dav:
  Installed: (none)
  Candidate: 1.8.12-7
  Version table:
     1.8.12-7 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-horde-trean:
  Installed: (none)
  Candidate: 1.1.9-3+deb10u1
  Version table:
     1.1.9-3+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-pdo-sqlite:
  Installed: (none)
  Candidate: (none)
  Version table:
php-net-imap:
  Installed: (none)
  Candidate: 1:1.1.3-2
  Version table:
     1:1.1.3-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
php-symfony-translation:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-symfony-asset:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-math-biginteger:
  Installed: (none)
  Candidate: (none)
  Version table:
php-symfony-security:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-symfony-security-http:
  Installed: (none)
  Candidate: 3.4.22+dfsg-2+deb10u1
  Version table:
     3.4.22+dfsg-2+deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php7.3-enchant:
  Installed: (none)
  Candidate: 7.3.27-1~deb10u1
  Version table:
     7.3.27-1~deb10u1 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
php-image-text:
  Installed: (none)
  Candidate: 0.7.0-2
  Version table:
     0.7.0-2 500
        500 http://http.debian.net/debian buster/main amd64 Packages
root@debian-buster:/home/etudiant# apt-cache policy php
php:
  Installed: 2:7.3+69
  Candidate: 2:7.3+69
  Version table:
 *** 2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        100 /var/lib/dpkg/status
root@debian-buster:/home/etudiant# apt-get install -y --allow-downgrades openssl1.0=1.0.1c-1ubuntu5.1
Reading package lists... Done
Building dependency tree
Reading state information... Done
E: Unable to locate package openssl1.0
E: Couldn't find any package by glob 'openssl1.0'
E: Couldn't find any package by regex 'openssl1.0'
root@debian-buster:/home/etudiant# apt-get install -y --allow-downgrades openssl1.0
Reading package lists... Done
Building dependency tree
Reading state information... Done
E: Unable to locate package openssl1.0
E: Couldn't find any package by glob 'openssl1.0'
E: Couldn't find any package by regex 'openssl1.0'
root@debian-buster:/home/etudiant# ls
 config.sql            heartbleed.py         rebased   stimulate_server.py  'TP1 RAID LVM ECUE32-MODEL.docx'   UE3-2-TP1-RAID-LVM.txt       UE3-2-TP2-ISCSI-LP
 heartbleed-masstest   install-owncloud.sh   res.txt   test.sh               UE3-2-TP1-RAID-LVM.pdf            UE3-2-TP2-ISCSI-LP2021.pdf
root@debian-buster:/home/etudiant# cd /etc/apt/
root@debian-buster:/etc/apt# vcd sources.list
-bash: vcd: command not found
root@debian-buster:/etc/apt# cd sources.list
-bash: cd: sources.list: Not a directory
root@debian-buster:/etc/apt# cd sources.list.d
root@debian-buster:/etc/apt/sources.list.d# ^C
root@debian-buster:/etc/apt/sources.list.d# nano jessie.list
root@debian-buster:/etc/apt/sources.list.d# ls
owncloud.list
root@debian-buster:/etc/apt/sources.list.d# nano jessie.list
root@debian-buster:/etc/apt/sources.list.d# cd /home/etudiant/^C
root@debian-buster:/etc/apt/sources.list.d# dpkg -l | grep openssl
ii  openssl                       1.1.1d-0+deb10u6                    amd64        Secure Sockets Layer toolkit - cryptographic utility
root@debian-buster:/etc/apt/sources.list.d# ^C
root@debian-buster:/etc/apt/sources.list.d# nano jessie.list
root@debian-buster:/etc/apt/sources.list.d# sudo apt update
Ign:1 http://httpredir.debian.org/debian jessie InRelease
Get:2 http://security.debian.org/debian-security buster/updates InRelease [65.4 kB]
Get:3 http://httpredir.debian.org/debian jessie Release [77.3 kB]
Get:4 http://security.debian.org jessie/updates InRelease [44.9 kB]
Get:5 http://httpredir.debian.org/debian jessie Release.gpg [1,652 B]
Ign:5 http://httpredir.debian.org/debian jessie Release.gpg
Get:7 http://security.debian.org/debian-security buster/updates/main Sources [186 kB]
Hit:6 http://cdn-fastly.deb.debian.org/debian buster InRelease
Get:10 http://security.debian.org jessie/updates/main Sources [366 kB]
Get:9 http://cdn-fastly.deb.debian.org/debian buster-updates InRelease [51.9 kB]
Get:11 http://security.debian.org jessie/updates/non-free Sources [1,915 B]
Get:12 http://security.debian.org jessie/updates/contrib Sources [1,439 B]
Get:13 http://security.debian.org jessie/updates/main amd64 Packages [781 kB]
Ign:8 https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  InRelease
Get:14 https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release [984 B]
Get:15 http://security.debian.org jessie/updates/main Translation-en [401 kB]
Get:16 https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release.gpg [481 B]
Get:17 http://security.debian.org jessie/updates/contrib amd64 Packages [2,506 B]
Get:18 http://security.debian.org jessie/updates/contrib Translation-en [1,211 B]
Get:19 http://security.debian.org jessie/updates/non-free amd64 Packages [4,702 B]
Get:20 http://security.debian.org jessie/updates/non-free Translation-en [11.8 kB]
Ign:16 https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release.gpg
Reading package lists... Done
W: GPG error: http://httpredir.debian.org/debian jessie Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY CBF8D6FD518E17E1
E: The repository 'http://httpredir.debian.org/debian jessie Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: GPG error: https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release: The following signatures couldn't be verified because the public keEY 47AE7F72479BC94B
E: The repository 'http://download.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
root@debian-buster:/etc/apt/sources.list.d# ^C
root@debian-buster:/etc/apt/sources.list.d# ^C
root@debian-buster:/etc/apt/sources.list.d# sudo apt install openssl/jessie
Reading package lists... Done
Building dependency tree
Reading state information... Done
Selected version '1.0.1t-1+deb8u12' (Debian-Security:8/oldoldstable [amd64]) for 'openssl'
Selected version '1.0.1t-1+deb8u12' (Debian-Security:8/oldoldstable [amd64]) for 'libssl1.0.0' because of 'openssl'
The following additional packages will be installed:
  libssl1.0.0 multiarch-support
Suggested packages:
  ca-certificates
The following packages will be REMOVED:
  ca-certificates
The following NEW packages will be installed:
  libssl1.0.0 multiarch-support
The following packages will be DOWNGRADED:
  openssl
0 upgraded, 2 newly installed, 1 downgraded, 1 to remove and 4 not upgraded.
Need to get 1,929 kB of archives.
After this operation, 2,607 kB of additional disk space will be used.
Do you want to continue? [Y/n] ^C
root@debian-buster:/etc/apt/sources.list.d# sudo apt install openssl1.0.1f/jessie
Reading package lists... Done
Building dependency tree
Reading state information... Done
E: Unable to locate package openssl1.0.1f
E: Couldn't find any package by glob 'openssl1.0.1f'
E: Couldn't find any package by regex 'openssl1.0.1f'
root@debian-buster:/etc/apt/sources.list.d# sudo apt install openssl1.0.1f+deb8u12/jessie
Reading package lists... Done
Building dependency tree
Reading state information... Done
E: Unable to locate package openssl1.0.1f+deb8u12
E: Couldn't find any package by glob 'openssl1.0.1f+deb8u12'
E: Couldn't find any package by regex 'openssl1.0.1f+deb8u12'
root@debian-buster:/etc/apt/sources.list.d# sudo apt install openssl1.0.1/jessie
Reading package lists... Done
Building dependency tree
Reading state information... Done
E: Unable to locate package openssl1.0.1
E: Couldn't find any package by glob 'openssl1.0.1'
E: Couldn't find any package by regex 'openssl1.0.1'
root@debian-buster:/etc/apt/sources.list.d# sudo apt install openssl/jessie
Reading package lists... Done
Building dependency tree
Reading state information... Done
Selected version '1.0.1t-1+deb8u12' (Debian-Security:8/oldoldstable [amd64]) for 'openssl'
Selected version '1.0.1t-1+deb8u12' (Debian-Security:8/oldoldstable [amd64]) for 'libssl1.0.0' because of 'openssl'
The following additional packages will be installed:
  libssl1.0.0 multiarch-support
Suggested packages:
  ca-certificates
The following packages will be REMOVED:
  ca-certificates
The following NEW packages will be installed:
  libssl1.0.0 multiarch-support
The following packages will be DOWNGRADED:
  openssl
0 upgraded, 2 newly installed, 1 downgraded, 1 to remove and 4 not upgraded.
Need to get 1,929 kB of archives.
After this operation, 2,607 kB of additional disk space will be used.
Do you want to continue? [Y/n] ^C
root@debian-buster:/etc/apt/sources.list.d# apt search openssl
Sorting... Done
Full Text Search... Done
acme-tiny/stable 1:4.0.4-1+deb10u1 all
  letsencrypt tiny Python client

android-libboringssl/stable 8.1.0+r23-2 amd64
  Google's internal fork of OpenSSL for the Android SDK

android-libboringssl-dev/stable 8.1.0+r23-2 amd64
  Google's internal fork of OpenSSL for the Android SDK - devel

apache2-ssl-dev/stable,stable 2.4.38-3+deb10u4 amd64
  Apache HTTP Server (mod_ssl development headers)

bruteforce-salted-openssl/stable 1.4.1-1 amd64
  try to find the passphrase for files encrypted with OpenSSL

cl-plus-ssl/stable 20190204.gitab6fc5d-1 all
  Common Lisp interface to OpenSSL

cryptmount/stable 5.3.1-1 amd64
  Management of encrypted file systems

dehydrated/stable 0.6.2-2+deb10u1 all
  ACME client implemented in Bash

dlang-openssl/stable 2.0.0+1.1.0h-0.1 all
  D version of the C headers for openssl

erlang-crypto/stable 1:21.2.6+dfsg-1 amd64
  Erlang/OTP cryptographic modules

erlang-p1-tls/stable 1.0.26-1 amd64
  native TLS / SSL driver for Erlang / Elixir

forensics-all/stable 3.7 all
  Debian Forensics Environment - essential components (metapackage)

fp-units-net/stable 3.0.4+dfsg-22 amd64
  Free Pascal - networking units dependency package

fp-units-net-3.0.4/stable 3.0.4+dfsg-22 amd64
  Free Pascal - networking units

gambas3-gb-openssl/stable 3.12.2-1 amd64
  Gambas OpenSSL component

gjots2/stable 3.0.2-0.1 all
  Simple jotter (outline processor) for X11/gtk-gnome

heartbleeder/stable 0.1.1-8+b10 amd64
  test servers for OpenSSL CVE-2014-0160 aka Heartbleed

hiera-eyaml/stable 2.1.0-1 all
  OpenSSL Encryption backend for Hiera

jruby-openssl/stable 0.9.21-2 all
  Ruby library that emulates the OpenSSL native library for JRuby

keyringer/stable 0.5.3-1 all
  Distributed secret management using GnuPG and Git

lcmaps-openssl-interface/stable 1.6.6-2 all
  LCMAPS header files for OpenSSL interfaces

libace-ssl-6.4.5/stable 6.4.5+dfsg-1+b12 amd64
  ACE secure socket layer library

libapache2-mod-gnutls/stable 0.9.0-1.1~deb10u1 amd64
  Apache module for TLS encryption with GnuTLS

libapache2-mod-php5/oldoldstable 5.6.40+dfsg-0+deb8u12 amd64
  server-side, HTML-embedded scripting language (Apache 2 module)

libapache2-mod-php5filter/oldoldstable 5.6.40+dfsg-0+deb8u12 amd64
  server-side, HTML-embedded scripting language (apache 2 filter module)

libapache2-mod-php7.3/stable,stable,now 7.3.27-1~deb10u1 amd64 [installed,automatic]
  server-side, HTML-embedded scripting language (Apache 2 module)

libbellesip-dev/stable 1.6.3-5 amd64
  SIP stack from the Linphone team (development files)

libbellesip0/stable 1.6.3-5 amd64
  SIP stack from the Linphone team

libcoap2/stable 4.2.0-2 amd64
  C-Implementation of CoAP - libraries API version 2

libcoap2-bin/stable 4.2.0-2 amd64
  C-Implementation of CoAP - example binaries API version 2

libcrypt-openssl-bignum-perl/stable 0.09-1+b1 amd64
  Perl module to access OpenSSL multiprecision integer arithmetic libraries

libcrypt-openssl-dsa-perl/stable 0.19-1+b3 amd64
  module which implements the DSA signature verification system

libcrypt-openssl-ec-perl/stable 1.31-1+b1 amd64
  Perl extension for OpenSSL EC (Elliptic Curves) library

libcrypt-openssl-pkcs10-perl/stable 0.16-3+b1 amd64
  Perl extension to OpenSSL's PKCS10 API

libcrypt-openssl-pkcs12-perl/stable 1.2-1 amd64
  Perl extension to OpenSSL's PKCS12 API

libcrypt-openssl-random-perl/stable 0.15-1+b1 amd64
  module to access the OpenSSL pseudo-random number generator

libcrypt-openssl-rsa-perl/stable 0.31-1+b1 amd64
  module for RSA encryption using OpenSSL

libcrypt-openssl-x509-perl/stable 1.8.12-1 amd64
  Perl extension to OpenSSL's X509 API

libcrypt-ssleay-perl/stable 0.73.06-1+b1 amd64
  OpenSSL support for LWP

libcurl3/oldoldstable 7.38.0-4+deb8u16 amd64
  easy-to-use client-side URL transfer library (OpenSSL flavour)

libcurl3-dbg/oldoldstable 7.38.0-4+deb8u16 amd64
  debugging symbols for libcurl (OpenSSL, GnuTLS and NSS flavours)

libcurl4/stable,now 7.64.0-4+deb10u2 amd64 [installed,automatic]
  easy-to-use client-side URL transfer library (OpenSSL flavour)

libcurl4-openssl-dev/stable 7.64.0-4+deb10u2 amd64
  development files and documentation for libcurl (OpenSSL flavour)

libengine-gost-openssl1.1/stable 1.1.0.3-1 amd64
  Loadable module for openssl implementing GOST algorithms

libengine-pkcs11-openssl/stable 0.4.9-4 amd64
  OpenSSL engine for PKCS#11 modules

libengine-pkcs11-openssl1.1/stable 0.4.9-4 amd64
  dummy package for upgrades from libengine-pkcs11-openssl1.1

libevent-openssl-2.0-5/oldoldstable 2.0.21-stable-2+deb8u1 amd64
  Asynchronous event notification library (openssl)

libevent-openssl-2.1-6/stable 2.1.8-stable-4 amd64
  Asynchronous event notification library (openssl)

libghc-cipher-aes-dev/stable 0.2.11-8+b2 amd64
  Fast AES cipher implementation

libghc-cipher-aes-doc/stable 0.2.11-8 all
  Fast AES cipher implementation; documentation

libghc-cipher-aes-prof/stable 0.2.11-8+b2 amd64
  Fast AES cipher implementation; profiling libraries

libghc-hookup-dev/stable 0.2.2-1+b1 amd64
  abstraction over network connections with SOCKS5 and TLS

libghc-hookup-doc/stable 0.2.2-1 all
  abstraction over network connections with SOCKS5 and TLS; documentation

libghc-hookup-prof/stable 0.2.2-1+b1 amd64
  abstraction over network connections with SOCKS5 and TLS; profiling libraries

libghc-hsopenssl-dev/stable 0.11.4.15-2+b2 amd64
  partial OpenSSL binding for Haskell

libghc-hsopenssl-doc/stable 0.11.4.15-2 all
  partial OpenSSL binding for Haskell; documentation

libghc-hsopenssl-prof/stable 0.11.4.15-2+b2 amd64
  partial OpenSSL binding for Haskell; profiling libraries

libghc-hsopenssl-x509-system-dev/stable 0.1.0.3-4+b2 amd64
  use system's native CA certificate store with HsOpenSSL

libghc-hsopenssl-x509-system-doc/stable 0.1.0.3-4 all
  use system's native CA certificate store with HsOpenSSL; documentation

libghc-hsopenssl-x509-system-prof/stable 0.1.0.3-4+b2 amd64
  use system's native CA certificate store with HsOpenSSL; profiling libraries

libghc-openssl-streams-dev/stable 1.2.1.3-3+b1 amd64
  OpenSSL network support for io-streams

libghc-openssl-streams-doc/stable 1.2.1.3-3 all
  OpenSSL network support for io-streams; documentation

libghc-openssl-streams-prof/stable 1.2.1.3-3+b1 amd64
  OpenSSL network support for io-streams; profiling libraries

libghc-sha-dev/stable 1.6.4.4-2+b2 amd64
  Haskell SHA suite of message digest functions

libghc-sha-doc/stable 1.6.4.4-2 all
  Haskell SHA suite of message digest functions; documentation

libghc-sha-prof/stable 1.6.4.4-2+b2 amd64
  Haskell SHA suite of message digest functions; profiling libraries

libglobus-gsi-openssl-error-dev/stable 4.1-1 amd64
  Grid Community Toolkit - Globus OpenSSL Error Handling Development Files

libglobus-gsi-openssl-error-doc/stable 4.1-1 all
  Grid Community Toolkit - Globus OpenSSL Error Handling Documentation Files

libglobus-gsi-openssl-error0/stable 4.1-1 amd64
  Grid Community Toolkit - Globus OpenSSL Error Handling

libglobus-openssl-module-dev/stable 5.1-1 amd64
  Grid Community Toolkit - Globus OpenSSL Module Wrapper Development Files

libglobus-openssl-module-doc/stable 5.1-1 all
  Grid Community Toolkit - Globus OpenSSL Module Wrapper Documentation Files

libglobus-openssl-module0/stable 5.1-1 amd64
  Grid Community Toolkit - Globus OpenSSL Module Wrapper

libgnutls-openssl27/stable 3.6.7-4+deb10u6 amd64
  GNU TLS library - OpenSSL wrapper

libjs-jsencrypt/stable 2.3.0+dfsg2-1 all
  RSA Encryption in JavaScript

libjs-strophe/stable 1.2.14+dfsg-4 all
  Library for writing XMPP clients

libknet-dev/stable 1.8-2 amd64
  kronosnet core switching implementation (developer files)

libknet-doc/stable 1.8-2 all
  kronosnet core API documentation

libknet1/stable 1.8-2 amd64
  kronosnet core switching implementation

liblwt-ocaml-doc/stable 2.7.1-4 all
  cooperative light-weight thread library (documentation)

liblwt-ssl-ocaml/stable 2.7.1-4+b1 amd64
  cooperative OpenSSL bindings for OCaml (runtime)

liblwt-ssl-ocaml-dev/stable 2.7.1-4+b1 amd64
  cooperative OpenSSL bindings for OCaml

libneon27/stable 0.30.2-3 amd64
  HTTP and WebDAV client library

libnetty-tcnative-java/stable 2.0.20-1 all
  Tomcat native fork for Netty

libnetty-tcnative-jni/stable 2.0.20-1 amd64
  Tomcat native fork for Netty (JNI library)

libphp5-embed/oldoldstable 5.6.40+dfsg-0+deb8u12 amd64
  HTML-embedded scripting language (Embedded SAPI library)

libphp7.3-embed/stable,stable 7.3.27-1~deb10u1 amd64
  HTML-embedded scripting language (Embedded SAPI library)

libpoe-filter-ssl-perl/stable 0.41-1+b1 amd64
  module to make SSL in POE easy and flexible

librte-pmd-openssl18.11/stable 18.11.11-1~deb10u1 amd64
  Data Plane Development Kit (librte-pmd-openssl runtime library)

librust-cargo+openssl-dev/stable 0.32.0-2 amd64
  Package manager for Rust - feature "openssl"

librust-cargo+vendored-openssl-dev/stable 0.32.0-2 amd64
  Package manager for Rust - feature "vendored-openssl"

librust-git2+openssl-probe-dev/stable 0.7.5-1 amd64
  Bindings to libgit2 for interoperating with git repositories - feature "openssl-probe"

librust-git2+openssl-sys-dev/stable 0.7.5-1 amd64
  Bindings to libgit2 for interoperating with git repositories - feature "openssl-sys"

librust-libgit2-sys+openssl-sys-dev/stable 0.7.10-1 amd64
  Native bindings to the libgit2 library - feature "openssl-sys"

librust-openssl-dev/stable 0.10.16-1 amd64
  OpenSSL bindings - Rust source code

librust-openssl-probe-dev/stable 0.1.2-1 amd64
  Helping to find SSL certificate locations on the system for OpenSSL - Rust source code

librust-openssl-sys-dev/stable 0.9.40-1 amd64
  FFI bindings to OpenSSL - Rust source code

librust-schannel-dev/stable 0.1.13-1 amd64
  Schannel bindings for rust, allowing SSL/TLS (e.g - Rust source code

libsqlcipher-dev/stable 3.4.1-1+b12 amd64
  SQLCipher development files

libsqlcipher0/stable 3.4.1-1+b12 amd64
  SQLCipher shared library

libssh-4/stable 0.8.7-1+deb10u1 amd64
  tiny C SSH library (OpenSSL flavor)

libssh-dev/stable 0.8.7-1+deb10u1 amd64
  tiny C SSH library - Development files (OpenSSL flavor)

libssl-dev/stable 1.1.1d-0+deb10u6 amd64
  Secure Sockets Layer toolkit - development files

libssl-doc/stable 1.1.1d-0+deb10u6 all
  Secure Sockets Layer toolkit - development documentation

libssl-ocaml/stable 0.5.5-1 amd64
  OCaml bindings for OpenSSL (runtime)

libssl-ocaml-dev/stable 0.5.5-1 amd64
  OCaml bindings for OpenSSL

libssl1.0.0/oldoldstable 1.0.1t-1+deb8u12 amd64
  Secure Sockets Layer toolkit - shared libraries

libssl1.0.0-dbg/oldoldstable 1.0.1t-1+deb8u12 amd64
  Secure Sockets Layer toolkit - debug information

libssl1.1/stable,now 1.1.1d-0+deb10u6 amd64 [installed]
  Secure Sockets Layer toolkit - shared libraries

libstrongswan-standard-plugins/stable 5.7.2-1 amd64
  strongSwan utility and crypto library (standard plugins)

libtcnative-1/stable 1.2.21-1 amd64
  Tomcat native library using the Apache Portable Runtime

libxmlsec1-openssl/stable 1.2.27-2 amd64
  Openssl engine for the XML security library

lua-luaossl/stable 20161214-1 amd64
  OpenSSL bindings for Lua

lua-luaossl-dev/stable 20161214-1 amd64
  OpenSSL bindings for Lua (development package)

m2crypto-doc/stable 0.31.0-4+deb10u2 all
  Python wrapper for the OpenSSL library (docs)

mcrypt/stable 2.6.8-4 amd64
  Replacement for old unix crypt(1)

nagios-plugins-contrib/stable 24.20190301 amd64
  Plugins for nagios compatible monitoring systems

node-crypto-cacerts/stable 0.1.0-1 all
  updates SSL certificate chain to use a directory of certificates

node-evp-bytestokey/stable 1.0.3-8 all
  secure key derivation algorithm in pure javascript

openssl/stable,now 1.1.1d-0+deb10u6 amd64 [installed,automatic]
  Secure Sockets Layer toolkit - cryptographic utility

openvpn/stable 2.4.7-1 amd64
  virtual private network daemon

perl-openssl-defaults/stable 3 amd64
  version compatibility baseline for Perl OpenSSL packages

php5-cgi/oldoldstable 5.6.40+dfsg-0+deb8u12 amd64
  server-side, HTML-embedded scripting language (CGI binary)

php5-cli/oldoldstable 5.6.40+dfsg-0+deb8u12 amd64
  command-line interpreter for the php5 scripting language

php5-fpm/oldoldstable 5.6.40+dfsg-0+deb8u12 amd64
  server-side, HTML-embedded scripting language (FPM-CGI binary)

php5-phpdbg/oldoldstable 5.6.40+dfsg-0+deb8u12 amd64
  server-side, HTML-embedded scripting language (PHPDBG binary)

php7.3-cgi/stable,stable 7.3.27-1~deb10u1 amd64
  server-side, HTML-embedded scripting language (CGI binary)

php7.3-cli/stable,stable,now 7.3.27-1~deb10u1 amd64 [installed,automatic]
  command-line interpreter for the PHP scripting language

php7.3-fpm/stable,stable 7.3.27-1~deb10u1 amd64
  server-side, HTML-embedded scripting language (FPM-CGI binary)

php7.3-phpdbg/stable,stable 7.3.27-1~deb10u1 amd64
  server-side, HTML-embedded scripting language (PHPDBG binary)

puppet-module-camptocamp-openssl/stable 1.5.0-1 all
  Puppet module for managing openssl configuration

python-m2crypto/stable 0.31.0-4+deb10u2 amd64
  Python wrapper for the OpenSSL library (Python 2 modules)

python-ndg-httpsclient/stable 0.5.1-1 all
  enhanced HTTPS support for httplib and urllib2 using PyOpenSSL for Python2

python-openssl/stable 19.0.0-1 all
  Python 2 wrapper around the OpenSSL library

python-openssl-doc/stable 19.0.0-1 all
  Python wrapper around the OpenSSL library (documentation package)

python-pycryptodome/stable 3.6.1-2+b1 amd64
  cryptographic Python library (Python 2)

python-pycryptodome-doc/stable 3.6.1-2 all
  cryptographic Python library (documentation)

python-service-identity/stable 16.0.0-2 all
  Service identity verification for pyOpenSSL (Python 2 module)

python-socksipychain/stable 2.0.15-2 all
  Python SOCKS/HTTP/SSL chaining proxy module

python3-aioopenssl/stable 0.4.1-2 all
  Asyncio TLS Transport using PyOpenSSL

python3-ndg-httpsclient/stable 0.5.1-1 all
  enhanced HTTPS support for httplib and urllib2 using PyOpenSSL for Python3

python3-openssl/stable 19.0.0-1 all
  Python 3 wrapper around the OpenSSL library

python3-pycryptodome/stable 3.6.1-2+b1 amd64
  cryptographic Python library (Python 3)

python3-service-identity/stable 16.0.0-2 all
  Service identity verification for pyOpenSSL (Python 3 module)

r-cran-digest/stable 0.6.18-1 amd64
  GNU R package for 'hash digest' of R data structures

r-cran-openssl/stable 1.2.2+dfsg-1 amd64
  GNU R toolkit for encryption, signatures and certificates based on OpenSSL

ruby-encryptor/stable 3.0.0-2 all
  wrapper for the standard Ruby OpenSSL library

scrypt/stable 1.2.1-2 amd64
  File encryption utility using scrypt for key derivation

shellinabox/stable 2.21 amd64
  publish command line shell through AJAX interface

sip-tester/stable 1:3.5.2-1 amd64
  Performance testing tool for the SIP protocol

sqlcipher/stable 3.4.1-1+b12 amd64
  Command line interface for SQLCipher

ssl-cert/stable,now 1.0.39 all [installed,automatic]
  simple debconf wrapper for OpenSSL

tcl-tls/stable 1.7.16-1 amd64
  TLS OpenSSL extension to Tcl

tinyca/stable 0.7.5-6 all
  simple graphical program for certification authority management

root@debian-buster:/etc/apt/sources.list.d# ^C
root@debian-buster:/etc/apt/sources.list.d# apt-get install heartbleeder/stable
Reading package lists... Done
Building dependency tree
Reading state information... Done
Selected version '0.1.1-8+b10' (Debian:10.9/stable [amd64]) for 'heartbleeder'
The following NEW packages will be installed:
  heartbleeder
0 upgraded, 1 newly installed, 0 to remove and 4 not upgraded.
Need to get 2,059 kB of archives.
After this operation, 6,914 kB of additional disk space will be used.
Get:1 http://cdn-fastly.deb.debian.org/debian buster/main amd64 heartbleeder amd64 0.1.1-8+b10 [2,059 kB]
Fetched 2,059 kB in 3s (595 kB/s)
Selecting previously unselected package heartbleeder.
(Reading database ... 35360 files and directories currently installed.)
Preparing to unpack .../heartbleeder_0.1.1-8+b10_amd64.deb ...
Unpacking heartbleeder (0.1.1-8+b10) ...
Setting up heartbleeder (0.1.1-8+b10) ...
Processing triggers for man-db (2.8.5-2) ...
root@debian-buster:/etc/apt/sources.list.d# sudo dpkg -l | grep openssl
ii  openssl                       1.1.1d-0+deb10u6                    amd64        Secure Sockets Layer toolkit - cryptographic utility
root@debian-buster:/etc/apt/sources.list.d# man heartbleeder
root@debian-buster:/etc/apt/sources.list.d# sudo apt install openssl1.0.1/jessie^C
root@debian-buster:/etc/apt/sources.list.d# apt-show-versions openssl
openssl:amd64/buster 1.1.1d-0+deb10u6 uptodate
root@debian-buster:/etc/apt/sources.list.d# apt-cache policy php
php:
  Installed: 2:7.3+69
  Candidate: 2:7.3+69
  Version table:
 *** 2:7.3+69 500
        500 http://http.debian.net/debian buster/main amd64 Packages
        100 /var/lib/dpkg/status
root@debian-buster:/etc/apt/sources.list.d# apt-cache policy openssl
openssl:
  Installed: 1.1.1d-0+deb10u6
  Candidate: 1.1.1d-0+deb10u6
  Version table:
 *** 1.1.1d-0+deb10u6 500
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
        100 /var/lib/dpkg/status
     1.1.1d-0+deb10u5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
     1.0.1t-1+deb8u12 500
        500 http://security.debian.org jessie/updates/main amd64 Packages
root@debian-buster:/etc/apt/sources.list.d# cp jessie.list wheezy.list
root@debian-buster:/etc/apt/sources.list.d# nano wheezy.list
root@debian-buster:/etc/apt/sources.list.d# sudo apt install openssl1.0.1/jessie^C
root@debian-buster:/etc/apt/sources.list.d# sudo apt update
Hit:1 http://security.debian.org/debian-security buster/updates InRelease
Hit:2 http://security.debian.org jessie/updates InRelease
Ign:3 http://httpredir.debian.org/debian jessie InRelease
Ign:4 http://security.debian.org wheezy/updates InRelease
Err:5 http://security.debian.org wheezy/updates Release
  404  Not Found [IP: 199.232.178.132 80]
Ign:6 http://httpredir.debian.org/debian wheezy InRelease
Get:7 http://httpredir.debian.org/debian jessie Release [77.3 kB]
Err:10 http://httpredir.debian.org/debian wheezy Release
  404  Not Found [IP: 199.232.178.132 80]
Get:11 http://httpredir.debian.org/debian jessie Release.gpg [1,652 B]
Ign:11 http://httpredir.debian.org/debian jessie Release.gpg
Ign:12 https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  InRelease
Get:13 https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release [984 B]
Get:14 https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release.gpg [481 B]
Ign:14 https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release.gpg
0% [Connecting to cdn-fastly.deb.debian.org (199.232.178.132)]^C
root@debian-buster:/etc/apt/sources.list.d# nano wheezy.list
root@debian-buster:/etc/apt/sources.list.d# sudo apt update
Hit:1 http://security.debian.org/debian-security buster/updates InRelease
Ign:2 http://httpredir.debian.org/debian jessie InRelease
Hit:3 http://security.debian.org jessie/updates InRelease
Get:4 http://httpredir.debian.org/debian jessie Release [77.3 kB]
Get:7 http://httpredir.debian.org/debian jessie Release.gpg [1,652 B]
Ign:9 http://archive.debian.org/debian wheezy InRelease
Ign:7 http://httpredir.debian.org/debian jessie Release.gpg
Ign:10 http://archive.debian.org/debian-archive/debian-security wheezy InRelease
Get:11 http://archive.debian.org/debian wheezy Release [191 kB]
Hit:6 http://cdn-fastly.deb.debian.org/debian buster InRelease
Hit:8 http://cdn-fastly.deb.debian.org/debian buster-updates InRelease
Err:12 http://archive.debian.org/debian-archive/debian-security wheezy Release
  404  Not Found [IP: 217.196.149.234 80]
Get:13 http://archive.debian.org/debian wheezy Release.gpg [2,373 B]
Ign:13 http://archive.debian.org/debian wheezy Release.gpg
Ign:5 https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  InRelease
Get:14 https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release [984 B]
Get:15 https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release.gpg [481 B]
Ign:15 https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release.gpg
Reading package lists... Done
W: GPG error: http://httpredir.debian.org/debian jessie Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY CBF8D6FD518E17E1
E: The repository 'http://httpredir.debian.org/debian jessie Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://archive.debian.org/debian-archive/debian-security wheezy Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: GPG error: http://archive.debian.org/debian wheezy Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 7638D0442B90D010 NO_PUBKEY 6FB2A1C265FFB764
E: The repository 'http://archive.debian.org/debian wheezy Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: GPG error: https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release: The following signatures couldn't be verified because the public keEY 47AE7F72479BC94B
E: The repository 'http://download.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
root@debian-buster:/etc/apt/sources.list.d# sudo apt install openssl/wheezy
Reading package lists... Done
Building dependency tree
Reading state information... Done
E: Release 'wheezy' for 'openssl' was not found
root@debian-buster:/etc/apt/sources.list.d# apt-cache policy openssl
openssl:
  Installed: 1.1.1d-0+deb10u6
  Candidate: 1.1.1d-0+deb10u6
  Version table:
 *** 1.1.1d-0+deb10u6 500
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
        100 /var/lib/dpkg/status
     1.1.1d-0+deb10u5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
     1.0.1t-1+deb8u12 500
        500 http://security.debian.org jessie/updates/main amd64 Packages
root@debian-buster:/etc/apt/sources.list.d# nano jessie.list
root@debian-buster:/etc/apt/sources.list.d# sudo apt update
Hit:1 http://security.debian.org/debian-security buster/updates InRelease
Ign:2 http://ftp.fr.debian.org/debian jessie InRelease
Hit:3 http://security.debian.org jessie/updates InRelease
Get:4 http://ftp.fr.debian.org/debian jessie Release [77.3 kB]
Ign:5 http://archive.debian.org/debian wheezy InRelease
Get:6 http://ftp.fr.debian.org/debian jessie Release.gpg [1,652 B]
Ign:7 http://archive.debian.org/debian-archive/debian-security wheezy InRelease
Get:8 http://archive.debian.org/debian wheezy Release [191 kB]
Ign:6 http://ftp.fr.debian.org/debian jessie Release.gpg
Err:12 http://archive.debian.org/debian-archive/debian-security wheezy Release
  404  Not Found [IP: 130.89.148.13 80]
Get:13 http://archive.debian.org/debian wheezy Release.gpg [2,373 B]
Ign:13 http://archive.debian.org/debian wheezy Release.gpg
Hit:9 http://cdn-fastly.deb.debian.org/debian buster InRelease
Hit:11 http://cdn-fastly.deb.debian.org/debian buster-updates InRelease
Ign:10 https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  InRelease
Get:14 https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release [984 B]
Get:15 https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release.gpg [481 B]
Ign:15 https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release.gpg
Reading package lists... Done
W: GPG error: http://ftp.fr.debian.org/debian jessie Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY CBF8D6FD518E17E1
E: The repository 'http://ftp.fr.debian.org/debian jessie Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://archive.debian.org/debian-archive/debian-security wheezy Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: GPG error: http://archive.debian.org/debian wheezy Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 7638D0442B90D010 NO_PUBKEY 6FB2A1C265FFB764
E: The repository 'http://archive.debian.org/debian wheezy Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: GPG error: https://attic.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release: The following signatures couldn't be verified because the public keEY 47AE7F72479BC94B
E: The repository 'http://download.owncloud.org/download/repositories/10.0/Ubuntu_18.04  Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
root@debian-buster:/etc/apt/sources.list.d# ls
jessie.list  owncloud.list  wheezy.list
root@debian-buster:/etc/apt/sources.list.d# rm owncloud.list
(failed reverse-i-search)`apt cache': sudo ^Ct update
root@debian-buster:/etc/apt/sources.list.d# history
    1  history
    2  exit
    3  cd /home/etudiant
    4  ping raspberrypi.local
    5  ping pi.local
    6  ping pi
    7  ping raspberrypi
    8  ping raspi
    9  apt-get install -y nmap
   10  ping raspi
   11  ping raspberrypi
   12  ping raspberrypi.local
   13  ping pi.local
   14  ping 8.8.8.8
   15  apt-get install -y nmap
   16  sudo nmap -sn 192.168.1.0/24
   17  nslookup 192.168.1.48
   18  nslookup 192.168.1.49
   19  nslookup 192.168.1.70
   20  host 192.168.1.70
   21  ping 192.168.1.49
   22  ssh pi@192.168.1.49
   23  ssh pi@192.168.1.48
   24  ssh pi@192.168.1.70
   25  sudo dpkg -l | grep openssl
   26  openssl s_server
   27  chmod +x ./instal-owncloud.sh && ./install-owncloud.sh
   28  chmod +x ./install-owncloud.sh && ./install-owncloud.sh
   29  cd /home/etudiant
   30  curl --help
   31  cd /home/etudiant/
   32  ls
   33  cd heartbleed-masstest/
   34  ls
   35  ./ssltest.py --ports "443, 993, 995, 44330" hostlist.txt
   36  ./ssltest.py --ports "443, 993, 995, 44330" hostlist.txt
   37  netstat -tunap
   38  ./ssltest.py --ports "44330, 993, 995, 44330" hostlist.txt
   39  ./ssltest.py --ports "44330, 993, 995, 443" hostlist.txt
   40  curl 192.168.1.11:44330
   41  curl https://192.168.1.11:44330
   42  curl -k https://192.168.1.11:44330
   43  ip a
   44  ping 192.168.1.11
   45  ./ssltest.py --ports "4432, 993, 995, 443" hostlist.txt
   46  cd /home/etudiant
   47  openssl s_client -connect localhost:44330
   48  openssl s_client -connect 192.168.1.11:44330
   49  openssl s_client -connect https://192.168.1.11:44330
   50  openssl s_client -connect 192.168.1.11:4432
   51  cd /home/etudiant/
   52  ls
   53  ./install-owncloud.sh
   54  cat /etc/apache2/mods-enabled/dir.conf
   55  a2enmod ssl
   56  a2ensite default-ssl
   57  cat /etc/apache2/sites-enabled/default-ssl.conf
   58  nano /etc/apache2/sites-enabled/default-ssl.conf
   59  nano /etc/apache2/sites-enabled/default-ssl.conf
   60  systemctl restart apache2
   61  sudo a2enmod headers
   62  ls
   63  cd heartbleed-masstest/
   64  nano hostlist.txt && chmod +x ssltest.py
   65  ./ssltest.py --ports "443, 993, 995" hostlist.txt
   66  apt-get install -y python
   67  ./ssltest.py --ports "443, 993, 995" hostlist.txt
   68  ./ssltest.py --ports "443, 993, 995" hostlist.txt
   69  ./ssltest.py --ports "443, 993, 995" hostlist.txt
   70  cd /home/etudiant/
   71  ls
   72  ./install-owncloud.sh
   73  cd /etc/apache2
   74  ls
   75  cat /etc/ssl/private/apache-selfsigned.key
   76  cat /etc/ssl/certs/apache-selfsigned.crt
   77  a2enmod ssl
   78  a2ensite default-ssl
   79  sudo a2enmod headers
   80  systemctl restart apache2
   81  sudo a2ensite default-ssl
   82  nano /etc/apache2/sites-available/000-default.conf
   83  nano /etc/apache2/sites-available/default-ssl.conf
   84  sudo systemctl reload apache2
   85  apt-get install -y mysql-server
   86  cat /etc/apache2/mods-enabled/dir.conf
   87  openssl s_server
   88  netstat -tunap
   89  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330 -
   90  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   91  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   92  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   93  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   94  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   95  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   96  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   97  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   98  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   99  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
  100  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 443
  101  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 4432
  102  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 4432 -www
  103  cd /home/etudiant/
  104  ip a
  105  ip a
  106  ping 8.8.8
  107  ping 8.8.8.8
  108  ping 8.8.8.8
  109  ping 8.8.8.8
  110  sudo dhclient -v eth1
  111  ping 8.8.8.8
  112  ping 8.8.8.8
  113  sudo ifdown eth0 eth1
  114  ls
  115  ping 8.8.8.8
  116  curl localhost:44330
  117  curl localhost:
  118  curl localhost:44330
  119  cd /home/etudiant/
  120  apt-get install -y git
  121  ls
  122  git clone https://github.com/tdussa/heartbleed-masstest.git
  123  curl -k https://192.168.1.11:4432
  124  exit
  125  exit
  126  cd /home/etudiant/
  127  exit
  128  cd /home/etudiant/
  129  ls
  130  apt-show-versions openssl
  131  apt-show-version
  132  apt-get install -y apt-show-versions
  133  apt-show-versions
  134  apt-show-versions openssl
  135  apt-cache policy openssl
  136  apt-cache policy php*
  137  apt-cache policy php
  138  apt-get install -y --allow-downgrades openssl1.0=1.0.1c-1ubuntu5.1
  139  apt-get install -y --allow-downgrades openssl1.0
  140  ls
  141  cd /etc/apt/
  142  vcd sources.list
  143  cd sources.list
  144  cd sources.list.d
  145  nano jessie.list
  146  ls
  147  nano jessie.list
  148  dpkg -l | grep openssl
  149  nano jessie.list
  150  sudo apt update
  151  sudo apt install openssl/jessie
  152  sudo apt install openssl1.0.1f/jessie
  153  sudo apt install openssl1.0.1f+deb8u12/jessie
  154  sudo apt install openssl1.0.1/jessie
  155  sudo apt install openssl/jessie
  156  apt search openssl
  157  apt-get install heartbleeder/stable
  158  sudo dpkg -l | grep openssl
  159  man heartbleeder
  160  apt-show-versions openssl
  161  apt-cache policy php
  162  apt-cache policy openssl
  163  cp jessie.list wheezy.list
  164  nano wheezy.list
  165  sudo apt update
  166  nano wheezy.list
  167  sudo apt update
  168  sudo apt install openssl/wheezy
  169  apt-cache policy openssl
  170  nano jessie.list
  171  sudo apt update
  172  ls
  173  rm owncloud.list
  174  history
root@debian-buster:/etc/apt/sources.list.d# apt-cache policy openssl
openssl:
  Installed: 1.1.1d-0+deb10u6
  Candidate: 1.1.1d-0+deb10u6
  Version table:
 *** 1.1.1d-0+deb10u6 500
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
        100 /var/lib/dpkg/status
     1.1.1d-0+deb10u5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
     1.0.1t-1+deb8u12 500
        500 http://security.debian.org jessie/updates/main amd64 Packages
root@debian-buster:/etc/apt/sources.list.d# apt-cache policy openssl^C
root@debian-buster:/etc/apt/sources.list.d# rm wheezy.list
root@debian-buster:/etc/apt/sources.list.d# cp jessie.list pangolin.list
root@debian-buster:/etc/apt/sources.list.d# nano pangolin.list
root@debian-buster:/etc/apt/sources.list.d# nano pangolin^Cist
root@debian-buster:/etc/apt/sources.list.d# mv pangolin.list precise.list
root@debian-buster:/etc/apt/sources.list.d# sudo apt update
Hit:1 http://security.debian.org/debian-security buster/updates InRelease
Ign:2 http://fr.archive.ubuntu.com/ubuntu precise InRelease
Hit:3 http://security.debian.org jessie/updates InRelease
Ign:4 http://archive.canonical.com/ubuntu precise InRelease
Ign:5 http://fr.archive.ubuntu.com/ubuntu precise-updates InRelease
Ign:6 http://fr.archive.ubuntu.com/ubuntu precise-backports InRelease
Ign:7 http://ftp.fr.debian.org/debian jessie InRelease
Get:8 http://archive.canonical.com/ubuntu precise Release [8,180 B]
Get:9 http://archive.canonical.com/ubuntu precise Release.gpg [181 B]
Get:10 http://ftp.fr.debian.org/debian jessie Release [77.3 kB]
Ign:11 http://security.ubuntu.com/ubuntu precise-security InRelease
Ign:9 http://archive.canonical.com/ubuntu precise Release.gpg
Get:12 http://ftp.fr.debian.org/debian jessie Release.gpg [1,652 B]
Err:13 http://security.ubuntu.com/ubuntu precise-security Release
  404  Not Found [IP: 91.189.91.39 80]
Ign:14 http://fr.archive.ubuntu.com/ubuntu precise-proposed InRelease
Err:16 http://fr.archive.ubuntu.com/ubuntu precise Release
  404  Not Found [IP: 194.158.119.186 80]
Ign:12 http://ftp.fr.debian.org/debian jessie Release.gpg
Ign:17 http://extras.ubuntu.com/ubuntu precise InRelease
Err:18 http://fr.archive.ubuntu.com/ubuntu precise-updates Release
  404  Not Found [IP: 194.158.119.186 80]
Get:19 http://extras.ubuntu.com/ubuntu precise Release [11.9 kB]
Err:20 http://fr.archive.ubuntu.com/ubuntu precise-backports Release
  404  Not Found [IP: 194.158.119.186 80]
Err:21 http://fr.archive.ubuntu.com/ubuntu precise-proposed Release
  404  Not Found [IP: 194.158.119.186 80]
Get:23 http://extras.ubuntu.com/ubuntu precise Release.gpg [72 B]
Ign:23 http://extras.ubuntu.com/ubuntu precise Release.gpg
Hit:15 http://cdn-fastly.deb.debian.org/debian buster InRelease
Hit:22 http://cdn-fastly.deb.debian.org/debian buster-updates InRelease
Reading package lists... Done
W: GPG error: http://archive.canonical.com/ubuntu precise Release: The following signatures couldn't be verified because the public key is not available: NO_P
E: The repository 'http://archive.canonical.com/ubuntu precise Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://security.ubuntu.com/ubuntu precise-security Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://fr.archive.ubuntu.com/ubuntu precise Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: GPG error: http://ftp.fr.debian.org/debian jessie Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY CBF8D6FD518E17E1
E: The repository 'http://ftp.fr.debian.org/debian jessie Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://fr.archive.ubuntu.com/ubuntu precise-updates Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://fr.archive.ubuntu.com/ubuntu precise-backports Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://fr.archive.ubuntu.com/ubuntu precise-proposed Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: GPG error: http://extras.ubuntu.com/ubuntu precise Release: Detached signature file '/var/lib/apt/lists/partial/extras.ubuntu.com_ubuntu_dists_precise_Relebinary format
E: The repository 'http://extras.ubuntu.com/ubuntu precise Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
root@debian-buster:/etc/apt/sources.list.d# cp jessie.list pangolin.list^C
(reverse-i-search)`apt': sudo ^Ct install openssl/wheezy
root@debian-buster:/etc/apt/sources.list.d# history
    1  history
    2  exit
    3  cd /home/etudiant
    4  ping raspberrypi.local
    5  ping pi.local
    6  ping pi
    7  ping raspberrypi
    8  ping raspi
    9  apt-get install -y nmap
   10  ping raspi
   11  ping raspberrypi
   12  ping raspberrypi.local
   13  ping pi.local
   14  ping 8.8.8.8
   15  apt-get install -y nmap
   16  sudo nmap -sn 192.168.1.0/24
   17  nslookup 192.168.1.48
   18  nslookup 192.168.1.49
   19  nslookup 192.168.1.70
   20  host 192.168.1.70
   21  ping 192.168.1.49
   22  ssh pi@192.168.1.49
   23  ssh pi@192.168.1.48
   24  ssh pi@192.168.1.70
   25  sudo dpkg -l | grep openssl
   26  openssl s_server
   27  chmod +x ./instal-owncloud.sh && ./install-owncloud.sh
   28  chmod +x ./install-owncloud.sh && ./install-owncloud.sh
   29  cd /home/etudiant
   30  curl --help
   31  cd /home/etudiant/
   32  ls
   33  cd heartbleed-masstest/
   34  ls
   35  ./ssltest.py --ports "443, 993, 995, 44330" hostlist.txt
   36  ./ssltest.py --ports "443, 993, 995, 44330" hostlist.txt
   37  netstat -tunap
   38  ./ssltest.py --ports "44330, 993, 995, 44330" hostlist.txt
   39  ./ssltest.py --ports "44330, 993, 995, 443" hostlist.txt
   40  curl 192.168.1.11:44330
   41  curl https://192.168.1.11:44330
   42  curl -k https://192.168.1.11:44330
   43  ip a
   44  ping 192.168.1.11
   45  ./ssltest.py --ports "4432, 993, 995, 443" hostlist.txt
   46  cd /home/etudiant
   47  openssl s_client -connect localhost:44330
   48  openssl s_client -connect 192.168.1.11:44330
   49  openssl s_client -connect https://192.168.1.11:44330
   50  openssl s_client -connect 192.168.1.11:4432
   51  cd /home/etudiant/
   52  ls
   53  ./install-owncloud.sh
   54  cat /etc/apache2/mods-enabled/dir.conf
   55  a2enmod ssl
   56  a2ensite default-ssl
   57  cat /etc/apache2/sites-enabled/default-ssl.conf
   58  nano /etc/apache2/sites-enabled/default-ssl.conf
   59  nano /etc/apache2/sites-enabled/default-ssl.conf
   60  systemctl restart apache2
   61  sudo a2enmod headers
   62  ls
   63  cd heartbleed-masstest/
   64  nano hostlist.txt && chmod +x ssltest.py
   65  ./ssltest.py --ports "443, 993, 995" hostlist.txt
   66  apt-get install -y python
   67  ./ssltest.py --ports "443, 993, 995" hostlist.txt
   68  ./ssltest.py --ports "443, 993, 995" hostlist.txt
   69  ./ssltest.py --ports "443, 993, 995" hostlist.txt
   70  cd /home/etudiant/
   71  ls
   72  ./install-owncloud.sh
   73  cd /etc/apache2
   74  ls
   75  cat /etc/ssl/private/apache-selfsigned.key
   76  cat /etc/ssl/certs/apache-selfsigned.crt
   77  a2enmod ssl
   78  a2ensite default-ssl
   79  sudo a2enmod headers
   80  systemctl restart apache2
   81  sudo a2ensite default-ssl
   82  nano /etc/apache2/sites-available/000-default.conf
   83  nano /etc/apache2/sites-available/default-ssl.conf
   84  sudo systemctl reload apache2
   85  apt-get install -y mysql-server
   86  cat /etc/apache2/mods-enabled/dir.conf
   87  openssl s_server
   88  netstat -tunap
   89  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330 -
   90  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   91  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   92  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   93  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   94  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   95  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   96  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   97  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   98  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   99  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
  100  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 443
  101  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 4432
  102  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 4432 -www
  103  cd /home/etudiant/
  104  ip a
  105  ip a
  106  ping 8.8.8
  107  ping 8.8.8.8
  108  ping 8.8.8.8
  109  ping 8.8.8.8
  110  sudo dhclient -v eth1
  111  ping 8.8.8.8
  112  ping 8.8.8.8
  113  sudo ifdown eth0 eth1
  114  ls
  115  ping 8.8.8.8
  116  curl localhost:44330
  117  curl localhost:
  118  curl localhost:44330
  119  cd /home/etudiant/
  120  apt-get install -y git
  121  ls
  122  git clone https://github.com/tdussa/heartbleed-masstest.git
  123  curl -k https://192.168.1.11:4432
  124  exit
  125  exit
  126  cd /home/etudiant/
  127  exit
  128  cd /home/etudiant/
  129  ls
  130  apt-show-versions openssl
  131  apt-show-version
  132  apt-get install -y apt-show-versions
  133  apt-show-versions
  134  apt-show-versions openssl
  135  apt-cache policy openssl
  136  apt-cache policy php*
  137  apt-cache policy php
  138  apt-get install -y --allow-downgrades openssl1.0=1.0.1c-1ubuntu5.1
  139  apt-get install -y --allow-downgrades openssl1.0
  140  ls
  141  cd /etc/apt/
  142  vcd sources.list
  143  cd sources.list
  144  cd sources.list.d
  145  nano jessie.list
  146  ls
  147  nano jessie.list
  148  dpkg -l | grep openssl
  149  nano jessie.list
  150  sudo apt update
  151  sudo apt install openssl/jessie
  152  sudo apt install openssl1.0.1f/jessie
  153  sudo apt install openssl1.0.1f+deb8u12/jessie
  154  sudo apt install openssl1.0.1/jessie
  155  sudo apt install openssl/jessie
  156  apt search openssl
  157  apt-get install heartbleeder/stable
  158  sudo dpkg -l | grep openssl
  159  man heartbleeder
  160  apt-show-versions openssl
  161  apt-cache policy php
  162  apt-cache policy openssl
  163  cp jessie.list wheezy.list
  164  nano wheezy.list
  165  sudo apt update
  166  nano wheezy.list
  167  sudo apt update
  168  sudo apt install openssl/wheezy
  169  apt-cache policy openssl
  170  nano jessie.list
  171  sudo apt update
  172  ls
  173  rm owncloud.list
  174  history
  175  apt-cache policy openssl
  176  rm wheezy.list
  177  cp jessie.list pangolin.list
  178  nano pangolin.list
  179  mv pangolin.list precise.list
  180  sudo apt update
  181  history
root@debian-buster:/etc/apt/sources.list.d# apt-cache policy openssl
openssl:
  Installed: 1.1.1d-0+deb10u6
  Candidate: 1.1.1d-0+deb10u6
  Version table:
 *** 1.1.1d-0+deb10u6 500
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
        100 /var/lib/dpkg/status
     1.1.1d-0+deb10u5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
     1.0.1t-1+deb8u12 500
        500 http://security.debian.org jessie/updates/main amd64 Packages
(reverse-i-search)`ap': ^Ct-cache policy openssl
root@debian-buster:/etc/apt/sources.list.d# apt inssudo apt install openssl/jessie^C
root@debian-buster:/etc/apt/sources.list.d# sudo apt install openssl/precise
Reading package lists... Done
Building dependency tree
Reading state information... Done
E: Release 'precise' for 'openssl' was not found
root@debian-buster:/etc/apt/sources.list.d# apt-cache policy openssl^C
root@debian-buster:/etc/apt/sources.list.d# nano raring.list
root@debian-buster:/etc/apt/sources.list.d# ls
jessie.list  precise.list  raring.list
root@debian-buster:/etc/apt/sources.list.d# rm precise.list
root@debian-buster:/etc/apt/sources.list.d# ls
jessie.list  raring.list
root@debian-buster:/etc/apt/sources.list.d# apt update
Ign:1 http://ftp.fr.debian.org/debian jessie InRelease
Hit:2 http://security.debian.org/debian-security buster/updates InRelease
Hit:3 http://security.debian.org jessie/updates InRelease
Get:4 http://ftp.fr.debian.org/debian jessie Release [77.3 kB]
Ign:5 http://security.ubuntu.com/ubuntu raring-security InRelease
Get:6 http://ftp.fr.debian.org/debian jessie Release.gpg [1,652 B]
Err:8 http://security.ubuntu.com/ubuntu raring-security Release
  404  Not Found [IP: 91.189.91.39 80]
Ign:6 http://ftp.fr.debian.org/debian jessie Release.gpg
Hit:7 http://cdn-fastly.deb.debian.org/debian buster InRelease
Hit:9 http://cdn-fastly.deb.debian.org/debian buster-updates InRelease
Ign:10 http://mirror.kakao.com/ubuntu raring InRelease
Ign:11 http://mirror.kakao.com/ubuntu raring-updates InRelease
Ign:12 http://mirror.kakao.com/ubuntu raring-backports InRelease
Err:13 http://mirror.kakao.com/ubuntu raring Release
  404  Not Found [IP: 113.29.189.165 80]
Err:14 http://mirror.kakao.com/ubuntu raring-updates Release
  404  Not Found [IP: 113.29.189.165 80]
Err:15 http://mirror.kakao.com/ubuntu raring-backports Release
  404  Not Found [IP: 113.29.189.165 80]
Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring.list
Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring.list:4
Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring.li
Reading package lists... Done
E: The repository 'http://security.ubuntu.com/ubuntu raring-security Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: GPG error: http://ftp.fr.debian.org/debian jessie Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY CBF8D6FD518E17E1
E: The repository 'http://ftp.fr.debian.org/debian jessie Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-updates Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-backports Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring.l
W: Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring.lis
W: Target Translations (universe/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/rar
W: Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring
root@debian-buster:/etc/apt/sources.list.d# apt-get update
Hit:1 http://security.debian.org/debian-security buster/updates InRelease
Hit:2 http://security.debian.org jessie/updates InRelease
Ign:3 http://ftp.fr.debian.org/debian jessie InRelease
Get:4 http://ftp.fr.debian.org/debian jessie Release [77.3 kB]
Ign:5 http://security.ubuntu.com/ubuntu raring-security InRelease
Get:6 http://ftp.fr.debian.org/debian jessie Release.gpg [1,652 B]
Err:7 http://security.ubuntu.com/ubuntu raring-security Release
  404  Not Found [IP: 91.189.91.39 80]
Ign:6 http://ftp.fr.debian.org/debian jessie Release.gpg
Hit:8 http://cdn-fastly.deb.debian.org/debian buster InRelease
Hit:9 http://cdn-fastly.deb.debian.org/debian buster-updates InRelease
Ign:10 http://mirror.kakao.com/ubuntu raring InRelease
Ign:11 http://mirror.kakao.com/ubuntu raring-updates InRelease
Ign:12 http://mirror.kakao.com/ubuntu raring-backports InRelease
Err:13 http://mirror.kakao.com/ubuntu raring Release
  404  Not Found [IP: 113.29.189.165 80]
Err:14 http://mirror.kakao.com/ubuntu raring-updates Release
  404  Not Found [IP: 113.29.189.165 80]
Err:15 http://mirror.kakao.com/ubuntu raring-backports Release
  404  Not Found [IP: 113.29.189.165 80]
Reading package lists... Done
E: The repository 'http://security.ubuntu.com/ubuntu raring-security Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: GPG error: http://ftp.fr.debian.org/debian jessie Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY CBF8D6FD518E17E1
E: The repository 'http://ftp.fr.debian.org/debian jessie Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-updates Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-backports Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring.l
W: Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring.lis
W: Target Translations (universe/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/rar
W: Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring
root@debian-buster:/etc/apt/sources.list.d# hitsory
-bash: hitsory: command not found
root@debian-buster:/etc/apt/sources.list.d# history
    1  history
    2  exit
    3  cd /home/etudiant
    4  ping raspberrypi.local
    5  ping pi.local
    6  ping pi
    7  ping raspberrypi
    8  ping raspi
    9  apt-get install -y nmap
   10  ping raspi
   11  ping raspberrypi
   12  ping raspberrypi.local
   13  ping pi.local
   14  ping 8.8.8.8
   15  apt-get install -y nmap
   16  sudo nmap -sn 192.168.1.0/24
   17  nslookup 192.168.1.48
   18  nslookup 192.168.1.49
   19  nslookup 192.168.1.70
   20  host 192.168.1.70
   21  ping 192.168.1.49
   22  ssh pi@192.168.1.49
   23  ssh pi@192.168.1.48
   24  ssh pi@192.168.1.70
   25  sudo dpkg -l | grep openssl
   26  openssl s_server
   27  chmod +x ./instal-owncloud.sh && ./install-owncloud.sh
   28  chmod +x ./install-owncloud.sh && ./install-owncloud.sh
   29  cd /home/etudiant
   30  curl --help
   31  cd /home/etudiant/
   32  ls
   33  cd heartbleed-masstest/
   34  ls
   35  ./ssltest.py --ports "443, 993, 995, 44330" hostlist.txt
   36  ./ssltest.py --ports "443, 993, 995, 44330" hostlist.txt
   37  netstat -tunap
   38  ./ssltest.py --ports "44330, 993, 995, 44330" hostlist.txt
   39  ./ssltest.py --ports "44330, 993, 995, 443" hostlist.txt
   40  curl 192.168.1.11:44330
   41  curl https://192.168.1.11:44330
   42  curl -k https://192.168.1.11:44330
   43  ip a
   44  ping 192.168.1.11
   45  ./ssltest.py --ports "4432, 993, 995, 443" hostlist.txt
   46  cd /home/etudiant
   47  openssl s_client -connect localhost:44330
   48  openssl s_client -connect 192.168.1.11:44330
   49  openssl s_client -connect https://192.168.1.11:44330
   50  openssl s_client -connect 192.168.1.11:4432
   51  cd /home/etudiant/
   52  ls
   53  ./install-owncloud.sh
   54  cat /etc/apache2/mods-enabled/dir.conf
   55  a2enmod ssl
   56  a2ensite default-ssl
   57  cat /etc/apache2/sites-enabled/default-ssl.conf
   58  nano /etc/apache2/sites-enabled/default-ssl.conf
   59  nano /etc/apache2/sites-enabled/default-ssl.conf
   60  systemctl restart apache2
   61  sudo a2enmod headers
   62  ls
   63  cd heartbleed-masstest/
   64  nano hostlist.txt && chmod +x ssltest.py
   65  ./ssltest.py --ports "443, 993, 995" hostlist.txt
   66  apt-get install -y python
   67  ./ssltest.py --ports "443, 993, 995" hostlist.txt
   68  ./ssltest.py --ports "443, 993, 995" hostlist.txt
   69  ./ssltest.py --ports "443, 993, 995" hostlist.txt
   70  cd /home/etudiant/
   71  ls
   72  ./install-owncloud.sh
   73  cd /etc/apache2
   74  ls
   75  cat /etc/ssl/private/apache-selfsigned.key
   76  cat /etc/ssl/certs/apache-selfsigned.crt
   77  a2enmod ssl
   78  a2ensite default-ssl
   79  sudo a2enmod headers
   80  systemctl restart apache2
   81  sudo a2ensite default-ssl
   82  nano /etc/apache2/sites-available/000-default.conf
   83  nano /etc/apache2/sites-available/default-ssl.conf
   84  sudo systemctl reload apache2
   85  apt-get install -y mysql-server
   86  cat /etc/apache2/mods-enabled/dir.conf
   87  openssl s_server
   88  netstat -tunap
   89  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330 -
   90  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   91  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   92  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   93  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   94  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   95  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   96  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   97  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   98  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   99  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
  100  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 443
  101  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 4432
  102  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 4432 -www
  103  cd /home/etudiant/
  104  ip a
  105  ip a
  106  ping 8.8.8
  107  ping 8.8.8.8
  108  ping 8.8.8.8
  109  ping 8.8.8.8
  110  sudo dhclient -v eth1
  111  ping 8.8.8.8
  112  ping 8.8.8.8
  113  sudo ifdown eth0 eth1
  114  ls
  115  ping 8.8.8.8
  116  curl localhost:44330
  117  curl localhost:
  118  curl localhost:44330
  119  cd /home/etudiant/
  120  apt-get install -y git
  121  ls
  122  git clone https://github.com/tdussa/heartbleed-masstest.git
  123  curl -k https://192.168.1.11:4432
  124  exit
  125  exit
  126  cd /home/etudiant/
  127  exit
  128  cd /home/etudiant/
  129  ls
  130  apt-show-versions openssl
  131  apt-show-version
  132  apt-get install -y apt-show-versions
  133  apt-show-versions
  134  apt-show-versions openssl
  135  apt-cache policy openssl
  136  apt-cache policy php*
  137  apt-cache policy php
  138  apt-get install -y --allow-downgrades openssl1.0=1.0.1c-1ubuntu5.1
  139  apt-get install -y --allow-downgrades openssl1.0
  140  ls
  141  cd /etc/apt/
  142  vcd sources.list
  143  cd sources.list
  144  cd sources.list.d
  145  nano jessie.list
  146  ls
  147  nano jessie.list
  148  dpkg -l | grep openssl
  149  nano jessie.list
  150  sudo apt update
  151  sudo apt install openssl/jessie
  152  sudo apt install openssl1.0.1f/jessie
  153  sudo apt install openssl1.0.1f+deb8u12/jessie
  154  sudo apt install openssl1.0.1/jessie
  155  sudo apt install openssl/jessie
  156  apt search openssl
  157  apt-get install heartbleeder/stable
  158  sudo dpkg -l | grep openssl
  159  man heartbleeder
  160  apt-show-versions openssl
  161  apt-cache policy php
  162  apt-cache policy openssl
  163  cp jessie.list wheezy.list
  164  nano wheezy.list
  165  sudo apt update
  166  nano wheezy.list
  167  sudo apt update
  168  sudo apt install openssl/wheezy
  169  apt-cache policy openssl
  170  nano jessie.list
  171  sudo apt update
  172  ls
  173  rm owncloud.list
  174  history
  175  apt-cache policy openssl
  176  rm wheezy.list
  177  cp jessie.list pangolin.list
  178  nano pangolin.list
  179  mv pangolin.list precise.list
  180  sudo apt update
  181  history
  182  apt-cache policy openssl
  183  sudo apt install openssl/precise
  184  nano raring.list
  185  ls
  186  rm precise.list
  187  ls
  188  apt update
  189  apt-get update
  190  hitsory
  191  history
root@debian-buster:/etc/apt/sources.list.d# apt-get update -y
Hit:1 http://security.debian.org/debian-security buster/updates InRelease
Hit:2 http://security.debian.org jessie/updates InRelease
Ign:3 http://ftp.fr.debian.org/debian jessie InRelease
Get:4 http://ftp.fr.debian.org/debian jessie Release [77.3 kB]
Ign:5 http://security.ubuntu.com/ubuntu raring-security InRelease
Err:8 http://security.ubuntu.com/ubuntu raring-security Release
  404  Not Found [IP: 91.189.91.39 80]
Get:9 http://ftp.fr.debian.org/debian jessie Release.gpg [1,652 B]
Ign:9 http://ftp.fr.debian.org/debian jessie Release.gpg
Hit:6 http://cdn-fastly.deb.debian.org/debian buster InRelease
Hit:7 http://cdn-fastly.deb.debian.org/debian buster-updates InRelease
Ign:10 http://mirror.kakao.com/ubuntu raring InRelease
Ign:11 http://mirror.kakao.com/ubuntu raring-updates InRelease
Ign:12 http://mirror.kakao.com/ubuntu raring-backports InRelease
Err:13 http://mirror.kakao.com/ubuntu raring Release
  404  Not Found [IP: 113.29.189.165 80]
Err:14 http://mirror.kakao.com/ubuntu raring-updates Release
  404  Not Found [IP: 113.29.189.165 80]
Err:15 http://mirror.kakao.com/ubuntu raring-backports Release
  404  Not Found [IP: 113.29.189.165 80]
Reading package lists... Done
E: The repository 'http://security.ubuntu.com/ubuntu raring-security Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: GPG error: http://ftp.fr.debian.org/debian jessie Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY CBF8D6FD518E17E1
E: The repository 'http://ftp.fr.debian.org/debian jessie Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-updates Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-backports Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring.l
W: Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring.lis
W: Target Translations (universe/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/rar
W: Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring
root@debian-buster:/etc/apt/sources.list.d# apt-cache policy openssl
openssl:
  Installed: 1.1.1d-0+deb10u6
  Candidate: 1.1.1d-0+deb10u6
  Version table:
 *** 1.1.1d-0+deb10u6 500
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
        100 /var/lib/dpkg/status
     1.1.1d-0+deb10u5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
     1.0.1t-1+deb8u12 500
        500 http://security.debian.org jessie/updates/main amd64 Packages
root@debian-buster:/etc/apt/sources.list.d# ls
jessie.list  raring.list
root@debian-buster:/etc/apt/sources.list.d# rm jessie.list
root@debian-buster:/etc/apt/sources.list.d# ls
raring.list
root@debian-buster:/etc/apt/sources.list.d# apt-get update -y
Hit:1 http://security.debian.org/debian-security buster/updates InRelease
Ign:2 http://security.ubuntu.com/ubuntu raring-security InRelease
Err:4 http://security.ubuntu.com/ubuntu raring-security Release
  404  Not Found [IP: 91.189.91.39 80]
Hit:3 http://cdn-fastly.deb.debian.org/debian buster InRelease
Hit:5 http://cdn-fastly.deb.debian.org/debian buster-updates InRelease
Ign:6 http://mirror.kakao.com/ubuntu raring InRelease
Ign:7 http://mirror.kakao.com/ubuntu raring-updates InRelease
Ign:8 http://mirror.kakao.com/ubuntu raring-backports InRelease
Err:9 http://mirror.kakao.com/ubuntu raring Release
  404  Not Found [IP: 113.29.189.165 80]
Err:10 http://mirror.kakao.com/ubuntu raring-updates Release
  404  Not Found [IP: 113.29.189.165 80]
Err:11 http://mirror.kakao.com/ubuntu raring-backports Release
  404  Not Found [IP: 113.29.189.165 80]
Reading package lists... Done
E: The repository 'http://security.ubuntu.com/ubuntu raring-security Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-updates Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-backports Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring.l
W: Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring.lis
W: Target Translations (universe/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/rar
W: Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring
root@debian-buster:/etc/apt/sources.list.d# man heartbleeder
root@debian-buster:/etc/apt/sources.list.d# heartbleeder 192.168.1.119:443
VULNERABLE(192.168.1.119:443) - has the heartbeat extension enabled and is vulnerable to CVE-2014-0160
root@debian-buster:/etc/apt/sources.list.d# man heartbleeder
root@debian-buster:/etc/apt/sources.list.d# ^C
root@debian-buster:/etc/apt/sources.list.d# history ^C
root@debian-buster:/etc/apt/sources.list.d# nano raring.list
root@debian-buster:/etc/apt/sources.list.d# nano raring.list
root@debian-buster:/etc/apt/sources.list.d# apt-get update -y
E: Conflicting values set for option Trusted regarding source http://ftp.daum.net/ubuntu/ raring
E: The list of sources could not be read.
root@debian-buster:/etc/apt/sources.list.d# nano raring.list
root@debian-buster:/etc/apt/sources.list.d# apt-get update -y
E: Conflicting values set for option Trusted regarding source http://ftp.daum.net/ubuntu/ raring
E: The list of sources could not be read.
root@debian-buster:/etc/apt/sources.list.d# nano raring.list
root@debian-buster:/etc/apt/sources.list.d# apt-get update -y
Hit:1 http://security.debian.org/debian-security buster/updates InRelease
Ign:4 http://security.ubuntu.com/ubuntu raring-security InRelease
Err:5 http://security.ubuntu.com/ubuntu raring-security Release
  404  Not Found [IP: 91.189.91.39 80]
0% [Waiting for headers]^C
root@debian-buster:/etc/apt/sources.list.d# nano raring.list
root@debian-buster:/etc/apt/sources.list.d# apt-get update -y
E: Conflicting values set for option Trusted regarding source http://ftp.daum.net/ubuntu/ raring-backports
E: The list of sources could not be read.
root@debian-buster:/etc/apt/sources.list.d# nano raring.list
root@debian-buster:/etc/apt/sources.list.d# apt-get update -y --allow-unauthenticated
Hit:1 http://security.debian.org/debian-security buster/updates InRelease
Ign:2 http://security.ubuntu.com/ubuntu raring-security InRelease
Err:5 http://security.ubuntu.com/ubuntu raring-security Release
  404  Not Found [IP: 91.189.91.38 80]
Hit:3 http://cdn-fastly.deb.debian.org/debian buster InRelease
Hit:4 http://cdn-fastly.deb.debian.org/debian buster-updates InRelease
Ign:6 http://mirror.kakao.com/ubuntu raring InRelease
Ign:7 http://mirror.kakao.com/ubuntu raring-updates InRelease
Ign:8 http://mirror.kakao.com/ubuntu raring-backports InRelease
Err:9 http://mirror.kakao.com/ubuntu raring Release
  404  Not Found [IP: 113.29.189.165 80]
Err:10 http://mirror.kakao.com/ubuntu raring-updates Release
  404  Not Found [IP: 113.29.189.165 80]
Err:11 http://mirror.kakao.com/ubuntu raring-backports Release
  404  Not Found [IP: 113.29.189.165 80]
Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring.list
Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring.list:4
Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring.li
Reading package lists... Done
E: The repository 'http://security.ubuntu.com/ubuntu raring-security Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-updates Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-backports Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring.l
W: Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring.lis
W: Target Translations (universe/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/rar
W: Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list.d/raring.list:4 and /etc/apt/sources.list.d/raring
root@debian-buster:/etc/apt/sources.list.d# ap^C
root@debian-buster:/etc/apt/sources.list.d# ^C
root@debian-buster:/etc/apt/sources.list.d# apt-get update -y^C
root@debian-buster:/etc/apt/sources.list.d# rm raring.list
root@debian-buster:/etc/apt/sources.list.d# nano wheezy.list
root@debian-buster:/etc/apt/sources.list.d# apt-get update -y
Ign:2 http://archive.debian.org/debian wheezy InRelease
Ign:3 http://archive.debian.org/debian-archive/debian-security wheezy InRelease
Get:5 http://archive.debian.org/debian wheezy Release [191 kB]
Hit:1 http://cdn-fastly.deb.debian.org/debian buster InRelease
Hit:4 http://cdn-fastly.deb.debian.org/debian buster-updates InRelease
Err:6 http://archive.debian.org/debian-archive/debian-security wheezy Release
  404  Not Found [IP: 217.196.149.234 80]
Get:7 http://archive.debian.org/debian wheezy Release.gpg [2,373 B]
Ign:7 http://archive.debian.org/debian wheezy Release.gpg
Hit:8 http://security.debian.org/debian-security buster/updates InRelease
Reading package lists... Done
E: The repository 'http://archive.debian.org/debian-archive/debian-security wheezy Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: GPG error: http://archive.debian.org/debian wheezy Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 7638D0442B90D010 NO_PUBKEY 6FB2A1C265FFB764
E: The repository 'http://archive.debian.org/debian wheezy Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
root@debian-buster:/etc/apt/sources.list.d# The repository 'http://archive.debian.org/debian-archive/debian-security wheezy Release' does not have a Release f
root@debian-buster:/etc/apt/sources.list.d# nano wheezy.list
root@debian-buster:/etc/apt/sources.list.d# apt-get update -y
Ign:1 http://archive.debian.org/debian wheezy InRelease
Hit:3 http://security.debian.org/debian-security buster/updates InRelease
Get:4 http://archive.debian.org/debian wheezy Release [191 kB]
Hit:2 http://cdn-fastly.deb.debian.org/debian buster InRelease
Get:6 http://archive.debian.org/debian wheezy Release.gpg [2,373 B]
Hit:5 http://cdn-fastly.deb.debian.org/debian buster-updates InRelease
Ign:6 http://archive.debian.org/debian wheezy Release.gpg
Reading package lists... Done
W: GPG error: http://archive.debian.org/debian wheezy Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 7638D0442B90D010 NO_PUBKEY 6FB2A1C265FFB764
E: The repository 'http://archive.debian.org/debian wheezy Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
root@debian-buster:/etc/apt/sources.list.d# sudo apt-get install add-apt-key && sudo add-apt-key 8B48AD6246925553
Reading package lists... Done
Building dependency tree
Reading state information... Done
E: Unable to locate package add-apt-key
root@debian-buster:/etc/apt/sources.list.d# sudo apt-get install add-apt-key
Reading package lists... Done
Building dependency tree
Reading state information... Done
E: Unable to locate package add-apt-key
root@debian-buster:/etc/apt/sources.list.d# sudo add-apt-key
sudo: add-apt-key: command not found
root@debian-buster:/etc/apt/sources.list.d# sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 8B48AD6246925553
E: gnupg, gnupg2 and gnupg1 do not seem to be installed, but one of them is required for this operation
root@debian-buster:/etc/apt/sources.list.d# apt-get install -y gnupg
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following additional packages will be installed:
  dirmngr gnupg-l10n gnupg-utils gpg gpg-agent gpg-wks-client gpg-wks-server gpgconf gpgsm libassuan0 libksba8 libnpth0 pinentry-curses
Suggested packages:
  dbus-user-session pinentry-gnome3 tor parcimonie xloadimage scdaemon pinentry-doc
The following NEW packages will be installed:
  dirmngr gnupg gnupg-l10n gnupg-utils gpg gpg-agent gpg-wks-client gpg-wks-server gpgconf gpgsm libassuan0 libksba8 libnpth0 pinentry-curses
0 upgraded, 14 newly installed, 0 to remove and 4 not upgraded.
Need to get 7,089 kB of archives.
After this operation, 14.9 MB of additional disk space will be used.
Get:1 http://cdn-fastly.deb.debian.org/debian buster/main amd64 libassuan0 amd64 2.5.2-1 [49.4 kB]
Get:2 http://cdn-fastly.deb.debian.org/debian buster/main amd64 gpgconf amd64 2.2.12-1+deb10u1 [510 kB]
Get:3 http://cdn-fastly.deb.debian.org/debian buster/main amd64 libksba8 amd64 1.3.5-2 [99.7 kB]
Get:4 http://cdn-fastly.deb.debian.org/debian buster/main amd64 libnpth0 amd64 1.6-1 [18.4 kB]
Get:5 http://cdn-fastly.deb.debian.org/debian buster/main amd64 dirmngr amd64 2.2.12-1+deb10u1 [712 kB]
Get:6 http://cdn-fastly.deb.debian.org/debian buster/main amd64 gnupg-l10n all 2.2.12-1+deb10u1 [1,010 kB]
Get:7 http://cdn-fastly.deb.debian.org/debian buster/main amd64 gnupg-utils amd64 2.2.12-1+deb10u1 [861 kB]
Get:8 http://cdn-fastly.deb.debian.org/debian buster/main amd64 gpg amd64 2.2.12-1+deb10u1 [865 kB]
Get:9 http://cdn-fastly.deb.debian.org/debian buster/main amd64 pinentry-curses amd64 1.1.0-2 [64.5 kB]
Get:10 http://cdn-fastly.deb.debian.org/debian buster/main amd64 gpg-agent amd64 2.2.12-1+deb10u1 [617 kB]
Get:11 http://cdn-fastly.deb.debian.org/debian buster/main amd64 gpg-wks-client amd64 2.2.12-1+deb10u1 [485 kB]
Get:12 http://cdn-fastly.deb.debian.org/debian buster/main amd64 gpg-wks-server amd64 2.2.12-1+deb10u1 [478 kB]
Get:13 http://cdn-fastly.deb.debian.org/debian buster/main amd64 gpgsm amd64 2.2.12-1+deb10u1 [604 kB]
Get:14 http://cdn-fastly.deb.debian.org/debian buster/main amd64 gnupg all 2.2.12-1+deb10u1 [715 kB]
Fetched 7,089 kB in 9s (780 kB/s)
Selecting previously unselected package libassuan0:amd64.
(Reading database ... 35367 files and directories currently installed.)
Preparing to unpack .../00-libassuan0_2.5.2-1_amd64.deb ...
Unpacking libassuan0:amd64 (2.5.2-1) ...
Selecting previously unselected package gpgconf.
Preparing to unpack .../01-gpgconf_2.2.12-1+deb10u1_amd64.deb ...
Unpacking gpgconf (2.2.12-1+deb10u1) ...
Selecting previously unselected package libksba8:amd64.
Preparing to unpack .../02-libksba8_1.3.5-2_amd64.deb ...
Unpacking libksba8:amd64 (1.3.5-2) ...
Selecting previously unselected package libnpth0:amd64.
Preparing to unpack .../03-libnpth0_1.6-1_amd64.deb ...
Unpacking libnpth0:amd64 (1.6-1) ...
Selecting previously unselected package dirmngr.
Preparing to unpack .../04-dirmngr_2.2.12-1+deb10u1_amd64.deb ...
Unpacking dirmngr (2.2.12-1+deb10u1) ...
Selecting previously unselected package gnupg-l10n.
Preparing to unpack .../05-gnupg-l10n_2.2.12-1+deb10u1_all.deb ...
Unpacking gnupg-l10n (2.2.12-1+deb10u1) ...
Selecting previously unselected package gnupg-utils.
Preparing to unpack .../06-gnupg-utils_2.2.12-1+deb10u1_amd64.deb ...
Unpacking gnupg-utils (2.2.12-1+deb10u1) ...
Selecting previously unselected package gpg.
Preparing to unpack .../07-gpg_2.2.12-1+deb10u1_amd64.deb ...
Unpacking gpg (2.2.12-1+deb10u1) ...
Selecting previously unselected package pinentry-curses.
Preparing to unpack .../08-pinentry-curses_1.1.0-2_amd64.deb ...
Unpacking pinentry-curses (1.1.0-2) ...
Selecting previously unselected package gpg-agent.
Preparing to unpack .../09-gpg-agent_2.2.12-1+deb10u1_amd64.deb ...
Unpacking gpg-agent (2.2.12-1+deb10u1) ...
Selecting previously unselected package gpg-wks-client.
Preparing to unpack .../10-gpg-wks-client_2.2.12-1+deb10u1_amd64.deb ...
Unpacking gpg-wks-client (2.2.12-1+deb10u1) ...
Selecting previously unselected package gpg-wks-server.
Preparing to unpack .../11-gpg-wks-server_2.2.12-1+deb10u1_amd64.deb ...
Unpacking gpg-wks-server (2.2.12-1+deb10u1) ...
Selecting previously unselected package gpgsm.
Preparing to unpack .../12-gpgsm_2.2.12-1+deb10u1_amd64.deb ...
Unpacking gpgsm (2.2.12-1+deb10u1) ...
Selecting previously unselected package gnupg.
Preparing to unpack .../13-gnupg_2.2.12-1+deb10u1_all.deb ...
Unpacking gnupg (2.2.12-1+deb10u1) ...
Setting up libksba8:amd64 (1.3.5-2) ...
Setting up libnpth0:amd64 (1.6-1) ...
Setting up libassuan0:amd64 (2.5.2-1) ...
Setting up gnupg-l10n (2.2.12-1+deb10u1) ...
Setting up gpgconf (2.2.12-1+deb10u1) ...
Setting up gpg (2.2.12-1+deb10u1) ...
Setting up gnupg-utils (2.2.12-1+deb10u1) ...
Setting up pinentry-curses (1.1.0-2) ...
Setting up gpg-agent (2.2.12-1+deb10u1) ...
Setting up gpgsm (2.2.12-1+deb10u1) ...
Setting up dirmngr (2.2.12-1+deb10u1) ...
Setting up gpg-wks-server (2.2.12-1+deb10u1) ...
Setting up gpg-wks-client (2.2.12-1+deb10u1) ...
Setting up gnupg (2.2.12-1+deb10u1) ...
Processing triggers for man-db (2.8.5-2) ...
Processing triggers for libc-bin (2.28-10) ...
root@debian-buster:/etc/apt/sources.list.d# sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 8B48AD6246925553
Executing: /tmp/apt-key-gpghome.50ITunRDOV/gpg.1.sh --recv-keys --keyserver keyserver.ubuntu.com 8B48AD6246925553
gpg: key 8B48AD6246925553: public key "Debian Archive Automatic Signing Key (7.0/wheezy) <ftpmaster@debian.org>" imported
gpg: Total number processed: 1
gpg:               imported: 1
root@debian-buster:/etc/apt/sources.list.d# apt-get update -y
Hit:1 http://security.debian.org/debian-security buster/updates InRelease
Ign:4 http://archive.debian.org/debian wheezy InRelease
Get:5 http://archive.debian.org/debian wheezy Release [191 kB]
Hit:2 http://cdn-fastly.deb.debian.org/debian buster InRelease
Hit:3 http://cdn-fastly.deb.debian.org/debian buster-updates InRelease
Get:6 http://archive.debian.org/debian wheezy Release.gpg [2,373 B]
Ign:6 http://archive.debian.org/debian wheezy Release.gpg
Reading package lists... Done
W: GPG error: http://archive.debian.org/debian wheezy Release: The following signatures were invalid: EXPKEYSIG 8B48AD6246925553 Debian Archive Automatic Signster@debian.org> The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 7638D0442B90D010 NO_PUBKEY 6FB2A1C265FFB764
E: The repository 'http://archive.debian.org/debian wheezy Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
root@debian-buster:/etc/apt/sources.list.d# sudo apt-key adv --recv-key^C--keyserver keyserver.ubuntu.com 8B48AD6246925553
root@debian-buster:/etc/apt/sources.list.d# sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 6FB2A1C265FFB764
Executing: /tmp/apt-key-gpghome.2Oxi1TGaF6/gpg.1.sh --recv-keys --keyserver keyserver.ubuntu.com 6FB2A1C265FFB764
gpg: key 6FB2A1C265FFB764: public key "Wheezy Stable Release Key <debian-release@lists.debian.org>" imported
gpg: Total number processed: 1
gpg:               imported: 1
root@debian-buster:/etc/apt/sources.list.d# apt-get update -y
Hit:1 http://security.debian.org/debian-security buster/updates InRelease
Ign:3 http://archive.debian.org/debian wheezy InRelease
Get:5 http://archive.debian.org/debian wheezy Release [191 kB]
Hit:2 http://cdn-fastly.deb.debian.org/debian buster InRelease
Hit:4 http://cdn-fastly.deb.debian.org/debian buster-updates InRelease
Get:6 http://archive.debian.org/debian wheezy Release.gpg [2,373 B]
Ign:6 http://archive.debian.org/debian wheezy Release.gpg
Reading package lists... Done
W: GPG error: http://archive.debian.org/debian wheezy Release: The following signatures were invalid: EXPKEYSIG 8B48AD6246925553 Debian Archive Automatic Signster@debian.org> EXPKEYSIG 6FB2A1C265FFB764 Wheezy Stable Release Key <debian-release@lists.debian.org> The following signatures couldn't be verified because able: NO_PUBKEY 7638D0442B90D010
E: The repository 'http://archive.debian.org/debian wheezy Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
root@debian-buster:/etc/apt/sources.list.d# sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com  7638D0442B90D010
Executing: /tmp/apt-key-gpghome.udQgc4doCH/gpg.1.sh --recv-keys --keyserver keyserver.ubuntu.com 7638D0442B90D010
gpg: key 7638D0442B90D010: public key "Debian Archive Automatic Signing Key (8/jessie) <ftpmaster@debian.org>" imported
gpg: Total number processed: 1
gpg:               imported: 1
root@debian-buster:/etc/apt/sources.list.d# apt-get update -y
Hit:1 http://security.debian.org/debian-security buster/updates InRelease
Ign:2 http://archive.debian.org/debian wheezy InRelease
Get:4 http://archive.debian.org/debian wheezy Release [191 kB]
Hit:3 http://cdn-fastly.deb.debian.org/debian buster InRelease
Hit:5 http://cdn-fastly.deb.debian.org/debian buster-updates InRelease
Get:6 http://archive.debian.org/debian wheezy Release.gpg [2,373 B]
Ign:7 http://archive.debian.org/debian wheezy/main Sources
Get:7 http://archive.debian.org/debian wheezy/main Sources [7,533 kB]
Fetched 7,726 kB in 6s (1,352 kB/s)
Reading package lists... Done
root@debian-buster:/etc/apt/sources.list.d# ls
wheezy.list
root@debian-buster:/etc/apt/sources.list.d# apt-cache policy openssl
openssl:
  Installed: 1.1.1d-0+deb10u6
  Candidate: 1.1.1d-0+deb10u6
  Version table:
 *** 1.1.1d-0+deb10u6 500
        500 http://security.debian.org/debian-security buster/updates/main amd64 Packages
        100 /var/lib/dpkg/status
     1.1.1d-0+deb10u5 500
        500 http://http.debian.net/debian buster/main amd64 Packages
root@debian-buster:/etc/apt/sources.list.d# cd /home/etudiant/
root@debian-buster:/home/etudiant# ls
 config.sql            heartbleed.py         rebased   stimulate_server.py  'TP1 RAID LVM ECUE32-MODEL.docx'   UE3-2-TP1-RAID-LVM.txt       UE3-2-TP2-ISCSI-LP
 heartbleed-masstest   install-owncloud.sh   res.txt   test.sh               UE3-2-TP1-RAID-LVM.pdf            UE3-2-TP2-ISCSI-LP2021.pdf
root@debian-buster:/home/etudiant# ls
 apt.tar.gz            heartbleed.py         res.txt              'TP1 RAID LVM ECUE32-MODEL.docx'   UE3-2-TP2-ISCSI-LP2021.pdf
 config.sql            install-owncloud.sh   stimulate_server.py   UE3-2-TP1-RAID-LVM.pdf            UE3-2-TP2-ISCSI-LP2021.txt
 heartbleed-masstest   rebased               test.sh               UE3-2-TP1-RAID-LVM.txt
root@debian-buster:/home/etudiant# tar -xvzf apt.tar.gz
apt/
apt/apt.conf.d/
apt/apt.conf.d/70debconf
apt/apt.conf.d/01autoremove
apt/apt.conf.d/20changelog
apt/sources.list
apt/trusted.gpg.d/
apt/trusted.gpg~
apt/trusted.gpg
apt/preferences.d/
apt/sources.liste
apt/sources.list.d/
apt/trustdb.gpg
root@debian-buster:/home/etudiant# cp -r ./apt /etc/apt
root@debian-buster:/home/etudiant# cd /etc/apt/
root@debian-buster:/etc/apt# ls
apt  apt.conf.d  auth.conf.d  preferences.d  sources.list  sources.list~  sources.list.d  trusted.gpg  trusted.gpg~  trusted.gpg.d
root@debian-buster:/etc/apt# sudo apt-get update -y
Hit:2 http://security.debian.org/debian-security buster/updates InRelease
Ign:4 http://archive.debian.org/debian wheezy InRelease
Hit:5 http://archive.debian.org/debian wheezy Release
Hit:1 http://cdn-fastly.deb.debian.org/debian buster InRelease
Hit:3 http://cdn-fastly.deb.debian.org/debian buster-updates InRelease
Reading package lists... Done
root@debian-buster:/etc/apt# ls -ltr
total 40
drwxr-xr-x 2 root root 4096 May 12  2020 preferences.d
drwxr-xr-x 2 root root 4096 May 12  2020 auth.conf.d
-rw-r--r-- 1 root root    0 Nov 24  2020 sources.list~
-rw-r--r-- 1 root root  881 Nov 24  2020 sources.list
drwxr-xr-x 2 root root 4096 Jun  3 17:54 apt.conf.d
drwxr-xr-x 2 root root 4096 Jun  3 18:47 sources.list.d
-rw-r--r-- 1 root root 3541 Jun  3 18:50 trusted.gpg~
drwxr-xr-x 2 root root 4096 Jun  3 18:51 trusted.gpg.d
-rw-r--r-- 1 root root 6488 Jun  3 18:51 trusted.gpg
drwxr-xr-x 6 root root 4096 Jun  3 18:55 apt
root@debian-buster:/etc/apt# diff trusted.gpg /home/etudiant/apt/trusted.gpg
Binary files trusted.gpg and /home/etudiant/apt/trusted.gpg differ
root@debian-buster:/etc/apt# cp /home/etudiant/apt/trusted.gpg .
root@debian-buster:/etc/apt# cp /home/etudiant/apt/trusted.gpg~ .
root@debian-buster:/etc/apt# cp /home/etudiant/apt/* .
cp: -r not specified; omitting directory '/home/etudiant/apt/apt.conf.d'
cp: -r not specified; omitting directory '/home/etudiant/apt/preferences.d'
cp: -r not specified; omitting directory '/home/etudiant/apt/sources.list.d'
cp: -r not specified; omitting directory '/home/etudiant/apt/trusted.gpg.d'
root@debian-buster:/etc/apt# cp -r /home/etudiant/apt/* .
root@debian-buster:/etc/apt# ls
apt         auth.conf.d    sources.list   sources.list.d  trustdb.gpg  trusted.gpg~
apt.conf.d  preferences.d  sources.list~  sources.liste   trusted.gpg  trusted.gpg.d
root@debian-buster:/etc/apt# sudo apt-get update -y
Ign:1 http://security.ubuntu.com/ubuntu raring-security InRelease
Err:2 http://security.ubuntu.com/ubuntu raring-security Release
  404  Not Found [IP: 91.189.91.38 80]
Ign:3 http://archive.debian.org/debian wheezy InRelease
Hit:4 http://archive.debian.org/debian wheezy Release
Err:5 http://archive.debian.org/debian wheezy Release.gpg
  The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 8B48AD6246925553 NO_PUBKEY 7638D0442B90D010 NO_PUBKEY 6FB2A1C265FFB764
Ign:6 http://mirror.kakao.com/ubuntu raring InRelease
Ign:7 http://mirror.kakao.com/ubuntu raring-updates InRelease
Ign:8 http://mirror.kakao.com/ubuntu raring-backports InRelease
Err:9 http://mirror.kakao.com/ubuntu raring Release
  404  Not Found [IP: 113.29.189.165 80]
Err:10 http://mirror.kakao.com/ubuntu raring-updates Release
  404  Not Found [IP: 113.29.189.165 80]
Err:11 http://mirror.kakao.com/ubuntu raring-backports Release
  404  Not Found [IP: 113.29.189.165 80]
Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
Reading package lists... Done
E: The repository 'http://security.ubuntu.com/ubuntu raring-security Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: An error occurred during the signature verification. The repository is not updated and the previous index files will be used. GPG error: http://archive.debian.org/debian wheezy Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 8B48AD6246925553 NO_PUBKEY 7638D0442B90D010 NO_PUBKEY 6FB2A1C265FFB764
E: The repository 'http://ftp.daum.net/ubuntu raring Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-updates Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-backports Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
W: Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
W: Target Translations (universe/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
W: Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
root@debian-buster:/etc/apt# cp -R /home/etudiant/apt/* .
root@debian-buster:/etc/apt# sudo apt-get update -y
Ign:1 http://archive.debian.org/debian wheezy InRelease
Hit:2 http://archive.debian.org/debian wheezy Release
Ign:3 http://security.ubuntu.com/ubuntu raring-security InRelease
Err:4 http://archive.debian.org/debian wheezy Release.gpg
  The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 8B48AD6246925553 NO_PUBKEY 7638D0442B90D010 NO_PUBKEY 6FB2A1C265FFB764
Err:5 http://security.ubuntu.com/ubuntu raring-security Release
  404  Not Found [IP: 91.189.91.38 80]
Ign:6 http://mirror.kakao.com/ubuntu raring InRelease
Ign:7 http://mirror.kakao.com/ubuntu raring-updates InRelease
Ign:8 http://mirror.kakao.com/ubuntu raring-backports InRelease
Err:9 http://mirror.kakao.com/ubuntu raring Release
  404  Not Found [IP: 113.29.189.165 80]
Err:10 http://mirror.kakao.com/ubuntu raring-updates Release
  404  Not Found [IP: 113.29.189.165 80]
Err:11 http://mirror.kakao.com/ubuntu raring-backports Release
  404  Not Found [IP: 113.29.189.165 80]
Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
Reading package lists... Done
W: An error occurred during the signature verification. The repository is not updated and the previous index files will be used. GPG error: http://archive.debian.org/debian wheezy Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 8B48AD6246925553 NO_PUBKEY 7638D0442B90D010 NO_PUBKEY 6FB2A1C265FFB764
E: The repository 'http://security.ubuntu.com/ubuntu raring-security Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-updates Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-backports Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
W: Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
W: Target Translations (universe/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
W: Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
root@debian-buster:/etc/apt# cd sources.list
-bash: cd: sources.list: Not a directory
root@debian-buster:/etc/apt# cd sources.list.d
root@debian-buster:/etc/apt/sources.list.d# ls
wheezy.list
root@debian-buster:/etc/apt/sources.list.d# rm wheezy.list
root@debian-buster:/etc/apt/sources.list.d# cd ..
root@debian-buster:/etc/apt# ls
apt         auth.conf.d    sources.list   sources.list.d  trustdb.gpg  trusted.gpg~
apt.conf.d  preferences.d  sources.list~  sources.liste   trusted.gpg  trusted.gpg.d
root@debian-buster:/etc/apt# ls -ltr
total 68
drwxr-xr-x 2 root root  4096 May 12  2020 preferences.d
drwxr-xr-x 2 root root  4096 May 12  2020 auth.conf.d
-rw-r--r-- 1 root root     0 Nov 24  2020 sources.list~
drwxr-xr-x 2 root root  4096 Jun  3 18:51 trusted.gpg.d
drwxr-xr-x 6 root root  4096 Jun  3 18:55 apt
drwxr-xr-x 2 root root  4096 Jun  3 18:58 apt.conf.d
-rw------- 1 root root  1200 Jun  3 18:58 trustdb.gpg
-rw-r--r-- 1 root root    49 Jun  3 18:58 sources.liste
-rw-r--r-- 1 root root  2591 Jun  3 18:58 sources.list
-rw-r--r-- 1 root root 12335 Jun  3 18:58 trusted.gpg~
-rw-r--r-- 1 root root 12335 Jun  3 18:58 trusted.gpg
drwxr-xr-x 2 root root  4096 Jun  3 18:59 sources.list.d
root@debian-buster:/etc/apt# ls
apt         auth.conf.d    sources.list   sources.list.d  trustdb.gpg  trusted.gpg~
apt.conf.d  preferences.d  sources.list~  sources.liste   trusted.gpg  trusted.gpg.d
root@debian-buster:/etc/apt# ls apt
apt.conf.d  preferences.d  sources.list  sources.list.d  sources.liste  trustdb.gpg  trusted.gpg  trusted.gpg~  trusted.gpg.d
root@debian-buster:/etc/apt# cd ..
root@debian-buster:/etc# ls
adduser.conf                   cron.d                  fstab            inputrc          machine-id      pam.conf   rc5.d         subuid
adjtime                        cron.daily              fuse.conf        iproute2         magic           pam.d      rc6.d         sudoers
alternatives                   cron.hourly             gai.conf         issue            magic.mime      passwd     rcS.d         sudoers.d
anacrontab                     cron.monthly            ghostscript      issue.net        mailcap         passwd-    resolv.conf   sysctl.conf
apache2                        crontab                 groff            kernel           mailcap.order   perl       rmt           sysctl.d
apparmor                       cron.weekly             group            kernel-img.conf  manpath.config  php        rpc           systemd
apparmor.d                     dbus-1                  group-           ldap             mime.types      pm         rsyslog.conf  terminfo
apt                            debconf.conf            grub.d           ld.so.cache      mke2fs.conf     profile    rsyslog.d     timezone
avahi                          debian_version          gshadow          ld.so.conf       modprobe.d      profile.d  securetty     tmpfiles.d
bash.bashrc                    default                 gshadow-         ld.so.conf.d     modules         protocols  security      ucf.conf
bash_completion.d              deluser.conf            gss              libaudit.conf    modules-load.d  python     selinux       udev
bindresvport.blacklist         dhcp                    host.conf        libnl-3          motd            python2.7  services      ufw
binfmt.d                       dictionaries-common     hostname         locale.alias     mtab            python3    shadow        update-motd.d
bluetooth                      discover.conf.d         hosts            locale.gen       nanorc          python3.7  shadow-       vim
ca-certificates                discover-modprobe.conf  hosts.allow      localtime        network         rc0.d      shells        wpa_supplicant
ca-certificates.conf           dpkg                    hosts.deny       logcheck         networks        rc1.d      skel          X11
ca-certificates.conf.dpkg-old  emacs                   ifplugd          login.defs       nsswitch.conf   rc2.d      ssh           xattr.conf
calendar                       environment             init.d           logrotate.conf   opt             rc3.d      ssl           xdg
console-setup                  fonts                   initramfs-tools  logrotate.d      os-release      rc4.d      subgid
root@debian-buster:/etc# cd apt
root@debian-buster:/etc/apt# ls
apt         auth.conf.d    sources.list   sources.list.d  trustdb.gpg  trusted.gpg~
apt.conf.d  preferences.d  sources.list~  sources.liste   trusted.gpg  trusted.gpg.d
root@debian-buster:/etc/apt# rm -rf apt
root@debian-buster:/etc/apt# ls
apt.conf.d  auth.conf.d  preferences.d  sources.list  sources.list~  sources.list.d  sources.liste  trustdb.gpg  trusted.gpg  trusted.gpg~  trusted.gpg.d
root@debian-buster:/etc/apt# ls^C
root@debian-buster:/etc/apt# sudo apt-get update -y
Ign:1 http://security.ubuntu.com/ubuntu raring-security InRelease
Err:2 http://security.ubuntu.com/ubuntu raring-security Release
  404  Not Found [IP: 91.189.91.38 80]
Ign:3 http://mirror.kakao.com/ubuntu raring InRelease
Ign:4 http://mirror.kakao.com/ubuntu raring-updates InRelease
Ign:5 http://mirror.kakao.com/ubuntu raring-backports InRelease
Err:6 http://mirror.kakao.com/ubuntu raring Release
  404  Not Found [IP: 113.29.189.165 80]
Err:7 http://mirror.kakao.com/ubuntu raring-updates Release
  404  Not Found [IP: 113.29.189.165 80]
Err:8 http://mirror.kakao.com/ubuntu raring-backports Release
  404  Not Found [IP: 113.29.189.165 80]
Reading package lists... Done
E: The repository 'http://security.ubuntu.com/ubuntu raring-security Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-updates Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-backports Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
W: Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
W: Target Translations (universe/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
W: Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
root@debian-buster:/etc/apt# cp /home/etudiant/apt/sources.list .
root@debian-buster:/etc/apt# cp /home/etudiant/apt/sources.list .^C
root@debian-buster:/etc/apt# rm -rf *
root@debian-buster:/etc/apt# ls
root@debian-buster:/etc/apt# cp -R /home/etudiant/apt/ .
root@debian-buster:/etc/apt# ls
apt
root@debian-buster:/etc/apt# rm -rf apt
root@debian-buster:/etc/apt# cp -r /home/etudiant/apt/ .
root@debian-buster:/etc/apt# ls
apt
root@debian-buster:/etc/apt# cd apt
root@debian-buster:/etc/apt/apt# mv * ..
root@debian-buster:/etc/apt/apt# ls
root@debian-buster:/etc/apt/apt# cd ..
root@debian-buster:/etc/apt# rmdir apt
root@debian-buster:/etc/apt# ls
apt.conf.d  preferences.d  sources.list  sources.list.d  sources.liste  trustdb.gpg  trusted.gpg  trusted.gpg~  trusted.gpg.d
root@debian-buster:/etc/apt# sudo apt-get update -y
Ign:1 http://security.ubuntu.com/ubuntu raring-security InRelease
Err:2 http://security.ubuntu.com/ubuntu raring-security Release
  404  Not Found [IP: 91.189.91.39 80]
Ign:3 http://mirror.kakao.com/ubuntu raring InRelease
Ign:4 http://mirror.kakao.com/ubuntu raring-updates InRelease
Ign:5 http://mirror.kakao.com/ubuntu raring-backports InRelease
Err:6 http://mirror.kakao.com/ubuntu raring Release
  404  Not Found [IP: 113.29.189.165 80]
Err:7 http://mirror.kakao.com/ubuntu raring-updates Release
  404  Not Found [IP: 113.29.189.165 80]
Err:8 http://mirror.kakao.com/ubuntu raring-backports Release
  404  Not Found [IP: 113.29.189.165 80]
Reading package lists... Done
E: The repository 'http://security.ubuntu.com/ubuntu raring-security Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-updates Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-backports Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
W: Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
W: Target Translations (universe/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
W: Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:47
root@debian-buster:/etc/apt# cat sources.list
## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
## team. Also, please note that software in universe WILL NOT receive any
## review or updates from the Ubuntu security team.
deb http://ftp.daum.net/ubuntu/ raring universe
deb-src http://ftp.daum.net/ubuntu/ raring universe
deb http://ftp.daum.net/ubuntu/ raring-updates universe
deb-src http://ftp.daum.net/ubuntu/ raring-updates universe

## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
## team, and may not be under a free licence. Please satisfy yourself as to
## your rights to use the software. Also, please note that software in
## multiverse WILL NOT receive any review or updates from the Ubuntu
## security team.
deb http://ftp.daum.net/ubuntu/ raring multiverse
deb-src http://ftp.daum.net/ubuntu/ raring multiverse
deb http://ftp.daum.net/ubuntu/ raring-updates multiverse
deb-src http://ftp.daum.net/ubuntu/ raring-updates multiverse

## N.B. software from this repository may not have been tested as
## extensively as that contained in the main release, although it includes
## newer versions of some applications which may provide useful features.
## Also, please note that software in backports WILL NOT receive any review
## or updates from the Ubuntu security team.
deb http://ftp.daum.net/ubuntu/ raring-backports main restricted universe multiverse
deb-src http://ftp.daum.net/ubuntu/ raring-backports main restricted universe multiverse

deb http://security.ubuntu.com/ubuntu raring-security main restricted
deb-src http://security.ubuntu.com/ubuntu raring-security main restricted
deb http://security.ubuntu.com/ubuntu raring-security universe
deb-src http://security.ubuntu.com/ubuntu raring-security universe
deb http://security.ubuntu.com/ubuntu raring-security multiverse
deb-src http://security.ubuntu.com/ubuntu raring-security multiverse

## Uncomment the following two lines to add software from Canonical's
## 'partner' repository.
## This software is not part of Ubuntu, but is offered by Canonical and the
## respective vendors as a service to Ubuntu users.
# deb http://archive.canonical.com/ubuntu raring partner
# deb-src http://archive.canonical.com/ubuntu raring partner

## Uncomment the following two lines to add software from Ubuntu's
## 'extras' repository.
## This software is not part of Ubuntu, but is offered by third-party
## developers who want to ship their latest software.
# deb http://extras.ubuntu.com/ubuntu raring main
# deb-src http://extras.ubuntu.com/ubuntu raring main
deb http://ftp.daum.net/ubuntu/ raring main universe
root@debian-buster:/etc/apt# nano sources.list
root@debian-buster:/etc/apt# sudo apt-get update -y
Ign:1 http://old-releases.ubuntu.com/ubuntu karmic InRelease
Ign:2 http://old-releases.ubuntu.com/ubuntu karmic-updates InRelease
Ign:3 http://old-releases.ubuntu.com/ubuntu karmic-security InRelease
Get:4 http://old-releases.ubuntu.com/ubuntu karmic Release [65.9 kB]
Get:5 http://old-releases.ubuntu.com/ubuntu karmic-updates Release [51.3 kB]
Get:6 http://old-releases.ubuntu.com/ubuntu karmic-security Release [51.3 kB]
Get:7 http://old-releases.ubuntu.com/ubuntu karmic Release.gpg [189 B]
Ign:7 http://old-releases.ubuntu.com/ubuntu karmic Release.gpg
Get:8 http://old-releases.ubuntu.com/ubuntu karmic-updates Release.gpg [198 B]
Ign:8 http://old-releases.ubuntu.com/ubuntu karmic-updates Release.gpg
Get:9 http://old-releases.ubuntu.com/ubuntu karmic-security Release.gpg [198 B]
Ign:9 http://old-releases.ubuntu.com/ubuntu karmic-security Release.gpg
Reading package lists... Done
W: GPG error: http://old-releases.ubuntu.com/ubuntu karmic Release: The following signatures were invalid: 630239CC130E1A7FD81A27B140976EAF437D05B5
E: The repository 'http://old-releases.ubuntu.com/ubuntu karmic Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: GPG error: http://old-releases.ubuntu.com/ubuntu karmic-updates Release: The following signatures were invalid: 630239CC130E1A7FD81A27B140976EAF437D05B5
E: The repository 'http://old-releases.ubuntu.com/ubuntu karmic-updates Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: GPG error: http://old-releases.ubuntu.com/ubuntu karmic-security Release: The following signatures were invalid: 630239CC130E1A7FD81A27B140976EAF437D05B5
E: The repository 'http://old-releases.ubuntu.com/ubuntu karmic-security Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
root@debian-buster:/etc/apt# sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 630239CC130E1A7FD81A27B140976EAF437D05B5
Executing: /tmp/apt-key-gpghome.PO9vnXgY3h/gpg.1.sh --recv-keys --keyserver keyserver.ubuntu.com 630239CC130E1A7FD81A27B140976EAF437D05B5
gpg: key 40976EAF437D05B5: "Ubuntu Archive Automatic Signing Key <ftpmaster@ubuntu.com>" not changed
gpg: Total number processed: 1
gpg:              unchanged: 1
root@debian-buster:/etc/apt# sudo apt-get update -y
Ign:1 http://old-releases.ubuntu.com/ubuntu karmic InRelease
Ign:2 http://old-releases.ubuntu.com/ubuntu karmic-updates InRelease
Ign:3 http://old-releases.ubuntu.com/ubuntu karmic-security InRelease
Get:4 http://old-releases.ubuntu.com/ubuntu karmic Release [65.9 kB]
Get:5 http://old-releases.ubuntu.com/ubuntu karmic-updates Release [51.3 kB]
Get:6 http://old-releases.ubuntu.com/ubuntu karmic-security Release [51.3 kB]
Get:7 http://old-releases.ubuntu.com/ubuntu karmic Release.gpg [189 B]
Ign:7 http://old-releases.ubuntu.com/ubuntu karmic Release.gpg
Get:8 http://old-releases.ubuntu.com/ubuntu karmic-updates Release.gpg [198 B]
Ign:8 http://old-releases.ubuntu.com/ubuntu karmic-updates Release.gpg
Get:9 http://old-releases.ubuntu.com/ubuntu karmic-security Release.gpg [198 B]
Ign:9 http://old-releases.ubuntu.com/ubuntu karmic-security Release.gpg
Reading package lists... Done
W: GPG error: http://old-releases.ubuntu.com/ubuntu karmic Release: The following signatures were invalid: 630239CC130E1A7FD81A27B140976EAF437D05B5
E: The repository 'http://old-releases.ubuntu.com/ubuntu karmic Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: GPG error: http://old-releases.ubuntu.com/ubuntu karmic-updates Release: The following signatures were invalid: 630239CC130E1A7FD81A27B140976EAF437D05B5
E: The repository 'http://old-releases.ubuntu.com/ubuntu karmic-updates Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: GPG error: http://old-releases.ubuntu.com/ubuntu karmic-security Release: The following signatures were invalid: 630239CC130E1A7FD81A27B140976EAF437D05B5
E: The repository 'http://old-releases.ubuntu.com/ubuntu karmic-security Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
root@debian-buster:/etc/apt# http://old-releases.ubuntu.com/ubuntuUpdating from such a repository can't be done securely^C
root@debian-buster:/etc/apt# nano *
root@debian-buster:/etc/apt# nano *
root@debian-buster:/etc/apt# ls
apt.conf.d  preferences.d  sources.list  sources.list.d  sources.liste  trustdb.gpg  trusted.gpg  trusted.gpg~  trusted.gpg.d
root@debian-buster:/etc/apt# ls^C
root@debian-buster:/etc/apt# ls
apt.conf.d  preferences.d  sources.list  sources.list.d  sources.liste  trustdb.gpg  trusted.gpg  trusted.gpg~  trusted.gpg.d
root@debian-buster:/etc/apt# nano sources.list
root@debian-buster:/etc/apt# nano sources.liste
root@debian-buster:/etc/apt# sudo apt-get update -y
Ign:1 http://old-releases.ubuntu.com/ubuntu karmic InRelease
Ign:2 http://old-releases.ubuntu.com/ubuntu karmic-updates InRelease
Ign:3 http://old-releases.ubuntu.com/ubuntu karmic-security InRelease
Get:4 http://old-releases.ubuntu.com/ubuntu karmic Release [65.9 kB]
Get:5 http://old-releases.ubuntu.com/ubuntu karmic-updates Release [51.3 kB]
Get:6 http://old-releases.ubuntu.com/ubuntu karmic-security Release [51.3 kB]
Get:7 http://old-releases.ubuntu.com/ubuntu karmic Release.gpg [189 B]
Ign:7 http://old-releases.ubuntu.com/ubuntu karmic Release.gpg
Get:8 http://old-releases.ubuntu.com/ubuntu karmic-updates Release.gpg [198 B]
Ign:8 http://old-releases.ubuntu.com/ubuntu karmic-updates Release.gpg
Get:9 http://old-releases.ubuntu.com/ubuntu karmic-security Release.gpg [198 B]
Ign:9 http://old-releases.ubuntu.com/ubuntu karmic-security Release.gpg
Reading package lists... Done
W: GPG error: http://old-releases.ubuntu.com/ubuntu karmic Release: The following signatures were invalid: 630239CC130E1A7FD81A27B140976EAF437D05B5
E: The repository 'http://old-releases.ubuntu.com/ubuntu karmic Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: GPG error: http://old-releases.ubuntu.com/ubuntu karmic-updates Release: The following signatures were invalid: 630239CC130E1A7FD81A27B140976EAF437D05B5
E: The repository 'http://old-releases.ubuntu.com/ubuntu karmic-updates Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: GPG error: http://old-releases.ubuntu.com/ubuntu karmic-security Release: The following signatures were invalid: 630239CC130E1A7FD81A27B140976EAF437D05B5
E: The repository 'http://old-releases.ubuntu.com/ubuntu karmic-security Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
root@debian-buster:/etc/apt# nano sources.liste
root@debian-buster:/etc/apt# ls^C
root@debian-buster:/etc/apt# cp /home/etudiant/apt/sources.list .
root@debian-buster:/etc/apt# nano sources.list
root@debian-buster:/etc/apt# sudo apt-get update -y
Ign:1 http://mirror.kakao.com/ubuntu raring InRelease
Ign:2 http://mirror.kakao.com/ubuntu raring-updates InRelease
Ign:3 http://mirror.kakao.com/ubuntu raring-backports InRelease
Err:4 http://mirror.kakao.com/ubuntu raring Release
  404  Not Found [IP: 113.29.189.165 80]
Err:5 http://mirror.kakao.com/ubuntu raring-updates Release
  404  Not Found [IP: 113.29.189.165 80]
Err:6 http://mirror.kakao.com/ubuntu raring-backports Release
  404  Not Found [IP: 113.29.189.165 80]
Reading package lists... Done
E: The repository 'http://ftp.daum.net/ubuntu raring Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-updates Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-backports Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Translations (universe/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
root@debian-buster:/etc/apt# man apt-secure
root@debian-buster:/etc/apt# nano sources.list
root@debian-buster:/etc/apt# sudo apt-get update -y
E: Malformed line 1 in source list /etc/apt/sources.list (type)
E: The list of sources could not be read.
root@debian-buster:/etc/apt# nano sources.list
root@debian-buster:/etc/apt# sudo apt -o Acquire::AllowInsecureRepositories=true \
> -o Acquire::AllowDowngradeToInsecureRepositories=true \
> update
Ign:1 http://mirror.kakao.com/ubuntu raring InRelease
Ign:2 http://mirror.kakao.com/ubuntu raring-updates InRelease
Ign:3 http://mirror.kakao.com/ubuntu raring-backports InRelease
Ign:4 http://mirror.kakao.com/ubuntu raring Release
Ign:5 http://mirror.kakao.com/ubuntu raring-updates Release
Ign:6 http://mirror.kakao.com/ubuntu raring-backports Release
Ign:7 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en
Ign:20 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
Ign:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Ign:27 http://mirror.kakao.com/ubuntu raring-updates/multiverse amd64 Packages
Ign:28 http://mirror.kakao.com/ubuntu raring-updates/multiverse all Packages
Ign:29 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en_US
Ign:30 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en
Ign:31 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Ign:33 http://mirror.kakao.com/ubuntu raring-backports/main Sources
Ign:34 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
Ign:35 http://mirror.kakao.com/ubuntu raring-backports/main all Packages
Ign:36 http://mirror.kakao.com/ubuntu raring-backports/main amd64 Packages
Ign:37 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en
Ign:38 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en_US
Ign:39 http://mirror.kakao.com/ubuntu raring-backports/restricted amd64 Packages
Ign:40 http://mirror.kakao.com/ubuntu raring-backports/restricted all Packages
Ign:41 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en_US
Ign:42 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en
Ign:43 http://mirror.kakao.com/ubuntu raring-backports/universe amd64 Packages
Ign:44 http://mirror.kakao.com/ubuntu raring-backports/universe all Packages
Ign:45 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en
Ign:46 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en_US
Ign:47 http://mirror.kakao.com/ubuntu raring-backports/multiverse amd64 Packages
Ign:48 http://mirror.kakao.com/ubuntu raring-backports/multiverse all Packages
Ign:49 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en
Ign:50 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en_US
Ign:7 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en
Ign:20 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
Ign:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Ign:27 http://mirror.kakao.com/ubuntu raring-updates/multiverse amd64 Packages
Ign:28 http://mirror.kakao.com/ubuntu raring-updates/multiverse all Packages
Ign:29 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en_US
Ign:30 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en
Ign:31 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Ign:33 http://mirror.kakao.com/ubuntu raring-backports/main Sources
Ign:34 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
Ign:35 http://mirror.kakao.com/ubuntu raring-backports/main all Packages
Ign:36 http://mirror.kakao.com/ubuntu raring-backports/main amd64 Packages
Ign:37 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en
Ign:38 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en_US
Ign:39 http://mirror.kakao.com/ubuntu raring-backports/restricted amd64 Packages
Ign:40 http://mirror.kakao.com/ubuntu raring-backports/restricted all Packages
Ign:41 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en_US
Ign:42 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en
Ign:43 http://mirror.kakao.com/ubuntu raring-backports/universe amd64 Packages
Ign:44 http://mirror.kakao.com/ubuntu raring-backports/universe all Packages
Ign:45 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en
Ign:46 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en_US
Ign:47 http://mirror.kakao.com/ubuntu raring-backports/multiverse amd64 Packages
Ign:48 http://mirror.kakao.com/ubuntu raring-backports/multiverse all Packages
Ign:49 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en
Ign:50 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en_US
Ign:7 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en
Ign:20 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
Ign:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Ign:27 http://mirror.kakao.com/ubuntu raring-updates/multiverse amd64 Packages
Ign:28 http://mirror.kakao.com/ubuntu raring-updates/multiverse all Packages
Ign:29 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en_US
Ign:30 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en
Ign:31 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Ign:33 http://mirror.kakao.com/ubuntu raring-backports/main Sources
Ign:34 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
Ign:35 http://mirror.kakao.com/ubuntu raring-backports/main all Packages
Ign:36 http://mirror.kakao.com/ubuntu raring-backports/main amd64 Packages
Ign:37 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en
Ign:38 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en_US
Ign:39 http://mirror.kakao.com/ubuntu raring-backports/restricted amd64 Packages
Ign:40 http://mirror.kakao.com/ubuntu raring-backports/restricted all Packages
Ign:41 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en_US
Ign:42 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en
Ign:43 http://mirror.kakao.com/ubuntu raring-backports/universe amd64 Packages
Ign:44 http://mirror.kakao.com/ubuntu raring-backports/universe all Packages
Ign:45 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en
Ign:46 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en_US
Ign:47 http://mirror.kakao.com/ubuntu raring-backports/multiverse amd64 Packages
Ign:48 http://mirror.kakao.com/ubuntu raring-backports/multiverse all Packages
Ign:49 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en
Ign:50 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en_US
Ign:7 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en
Ign:20 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
Ign:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Ign:27 http://mirror.kakao.com/ubuntu raring-updates/multiverse amd64 Packages
Ign:28 http://mirror.kakao.com/ubuntu raring-updates/multiverse all Packages
Ign:29 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en_US
Ign:30 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en
Ign:31 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Ign:33 http://mirror.kakao.com/ubuntu raring-backports/main Sources
Ign:34 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
Ign:35 http://mirror.kakao.com/ubuntu raring-backports/main all Packages
Ign:36 http://mirror.kakao.com/ubuntu raring-backports/main amd64 Packages
Ign:37 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en
Ign:38 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en_US
Ign:39 http://mirror.kakao.com/ubuntu raring-backports/restricted amd64 Packages
Ign:40 http://mirror.kakao.com/ubuntu raring-backports/restricted all Packages
Ign:41 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en_US
Ign:42 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en
Ign:43 http://mirror.kakao.com/ubuntu raring-backports/universe amd64 Packages
Ign:44 http://mirror.kakao.com/ubuntu raring-backports/universe all Packages
Ign:45 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en
Ign:46 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en_US
Ign:47 http://mirror.kakao.com/ubuntu raring-backports/multiverse amd64 Packages
Ign:48 http://mirror.kakao.com/ubuntu raring-backports/multiverse all Packages
Ign:49 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en
Ign:50 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en_US
Ign:7 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en
Ign:20 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
Ign:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Ign:27 http://mirror.kakao.com/ubuntu raring-updates/multiverse amd64 Packages
Ign:28 http://mirror.kakao.com/ubuntu raring-updates/multiverse all Packages
Ign:29 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en_US
Ign:30 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en
Ign:31 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Ign:33 http://mirror.kakao.com/ubuntu raring-backports/main Sources
Ign:34 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
Ign:35 http://mirror.kakao.com/ubuntu raring-backports/main all Packages
Ign:36 http://mirror.kakao.com/ubuntu raring-backports/main amd64 Packages
Ign:37 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en
Ign:38 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en_US
Ign:39 http://mirror.kakao.com/ubuntu raring-backports/restricted amd64 Packages
Ign:40 http://mirror.kakao.com/ubuntu raring-backports/restricted all Packages
Ign:41 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en_US
Ign:42 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en
Ign:43 http://mirror.kakao.com/ubuntu raring-backports/universe amd64 Packages
Ign:44 http://mirror.kakao.com/ubuntu raring-backports/universe all Packages
Ign:45 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en
Ign:46 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en_US
Ign:47 http://mirror.kakao.com/ubuntu raring-backports/multiverse amd64 Packages
Ign:48 http://mirror.kakao.com/ubuntu raring-backports/multiverse all Packages
Ign:49 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en
Ign:50 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en_US
Ign:7 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en
Ign:20 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
Ign:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Ign:27 http://mirror.kakao.com/ubuntu raring-updates/multiverse amd64 Packages
Ign:28 http://mirror.kakao.com/ubuntu raring-updates/multiverse all Packages
Ign:29 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en_US
Ign:30 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en
Ign:31 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Ign:33 http://mirror.kakao.com/ubuntu raring-backports/main Sources
Ign:34 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
Ign:35 http://mirror.kakao.com/ubuntu raring-backports/main all Packages
Ign:36 http://mirror.kakao.com/ubuntu raring-backports/main amd64 Packages
Ign:37 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en
Ign:38 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en_US
Ign:39 http://mirror.kakao.com/ubuntu raring-backports/restricted amd64 Packages
Ign:40 http://mirror.kakao.com/ubuntu raring-backports/restricted all Packages
Ign:41 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en_US
Ign:42 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en
Ign:43 http://mirror.kakao.com/ubuntu raring-backports/universe amd64 Packages
Ign:44 http://mirror.kakao.com/ubuntu raring-backports/universe all Packages
Ign:45 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en
Ign:46 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en_US
Ign:47 http://mirror.kakao.com/ubuntu raring-backports/multiverse amd64 Packages
Ign:48 http://mirror.kakao.com/ubuntu raring-backports/multiverse all Packages
Ign:49 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en
Ign:50 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en_US
Err:7 http://mirror.kakao.com/ubuntu raring/multiverse Sources
  404  Not Found [IP: 113.29.189.165 80]
Ign:8 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Err:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
  404  Not Found [IP: 113.29.189.165 80]
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Err:31 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
  404  Not Found [IP: 113.29.189.165 80]
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Reading package lists... Done
W: The repository 'http://ftp.daum.net/ubuntu raring Release' does not have a Release file.
N: Data from such a repository can't be authenticated and is therefore potentially dangerous to use.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Translations (universe/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: The repository 'http://ftp.daum.net/ubuntu raring-updates Release' does not have a Release file.
N: Data from such a repository can't be authenticated and is therefore potentially dangerous to use.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: The repository 'http://ftp.daum.net/ubuntu raring-backports Release' does not have a Release file.
N: Data from such a repository can't be authenticated and is therefore potentially dangerous to use.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/multiverse/source/Sources  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/main/binary-all/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/main/binary-amd64/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/main/i18n/Translation-en  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/main/i18n/Translation-en_US  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/multiverse/source/Sources  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/multiverse/binary-amd64/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/multiverse/binary-all/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/multiverse/i18n/Translation-en_US  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/multiverse/i18n/Translation-en  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/multiverse/source/Sources  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/main/source/Sources  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/restricted/source/Sources  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/main/binary-all/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/main/binary-amd64/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/main/i18n/Translation-en  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/main/i18n/Translation-en_US  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/restricted/binary-amd64/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/restricted/binary-all/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/restricted/i18n/Translation-en_US  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/restricted/i18n/Translation-en  404  Not Found [IP: 113.29.189.165 80]
E: Some index files failed to download. They have been ignored, or old ones used instead.
W: Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Translations (universe/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
root@debian-buster:/etc/apt# apt-get install -y openssl
Reading package lists... Done
Building dependency tree
Reading state information... Done
openssl is already the newest version (1.1.1d-0+deb10u6).
openssl set to manually installed.
The following package was automatically installed and is no longer required:
  linux-image-4.19.0-12-amd64
Use 'apt autoremove' to remove it.
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
root@debian-buster:/etc/apt# apt-cache policy openssl
openssl:
  Installed: 1.1.1d-0+deb10u6
  Candidate: 1.1.1d-0+deb10u6
  Version table:
 *** 1.1.1d-0+deb10u6 100
        100 /var/lib/dpkg/status
root@debian-buster:/etc/apt# sudo apt-get upgrade -y
Reading package lists... Done
Building dependency tree
Reading state information... Done
Calculating upgrade... Done
The following package was automatically installed and is no longer required:
  linux-image-4.19.0-12-amd64
Use 'sudo apt autoremove' to remove it.
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
root@debian-buster:/etc/apt# sudo apt autoremove
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following packages will be REMOVED:
  linux-image-4.19.0-12-amd64
0 upgraded, 0 newly installed, 1 to remove and 0 not upgraded.
After this operation, 270 MB disk space will be freed.
Do you want to continue? [Y/n] y
(Reading database ... 35600 files and directories currently installed.)
Removing linux-image-4.19.0-12-amd64 (4.19.152-1) ...
I: /vmlinuz.old is now a symlink to boot/vmlinuz-4.19.0-16-amd64
I: /initrd.img.old is now a symlink to boot/initrd.img-4.19.0-16-amd64
/etc/kernel/postrm.d/initramfs-tools:
update-initramfs: Deleting /boot/initrd.img-4.19.0-12-amd64
/etc/kernel/postrm.d/zz-update-grub:
Generating grub configuration file ...
Found linux image: /boot/vmlinuz-4.19.0-16-amd64
Found initrd image: /boot/initrd.img-4.19.0-16-amd64
done
root@debian-buster:/etc/apt# sudo apt-get upgrade -y
Reading package lists... Done
Building dependency tree
Reading state information... Done
Calculating upgrade... Done
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
root@debian-buster:/etc/apt# sudo apt-get update -y
Ign:1 http://mirror.kakao.com/ubuntu raring InRelease
Ign:2 http://mirror.kakao.com/ubuntu raring-updates InRelease
Ign:3 http://mirror.kakao.com/ubuntu raring-backports InRelease
Err:4 http://mirror.kakao.com/ubuntu raring Release
  404  Not Found [IP: 113.29.189.165 80]
Err:5 http://mirror.kakao.com/ubuntu raring-updates Release
  404  Not Found [IP: 113.29.189.165 80]
Err:6 http://mirror.kakao.com/ubuntu raring-backports Release
  404  Not Found [IP: 113.29.189.165 80]
Reading package lists... Done
E: The repository 'http://ftp.daum.net/ubuntu raring Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-updates Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-backports Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Translations (universe/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
root@debian-buster:/etc/apt# sudo apt -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true update
Ign:1 http://mirror.kakao.com/ubuntu raring InRelease
Ign:2 http://mirror.kakao.com/ubuntu raring-updates InRelease
Ign:3 http://mirror.kakao.com/ubuntu raring-backports InRelease
Ign:4 http://mirror.kakao.com/ubuntu raring Release
Ign:5 http://mirror.kakao.com/ubuntu raring-updates Release
Ign:6 http://mirror.kakao.com/ubuntu raring-backports Release
Ign:7 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
2% [Waiting for headers]^C
root@debian-buster:/etc/apt# sudo apt-get -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true update
Ign:1 http://mirror.kakao.com/ubuntu raring InRelease
Ign:2 http://mirror.kakao.com/ubuntu raring-updates InRelease
Ign:3 http://mirror.kakao.com/ubuntu raring-backports InRelease
Ign:4 http://mirror.kakao.com/ubuntu raring Release
Ign:5 http://mirror.kakao.com/ubuntu raring-updates Release
Ign:6 http://mirror.kakao.com/ubuntu raring-backports Release
Ign:7 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
Ign:20 http://mirror.kakao.com/ubuntu raring/main Translation-en
Ign:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:27 http://mirror.kakao.com/ubuntu raring-updates/multiverse all Packages
Ign:28 http://mirror.kakao.com/ubuntu raring-updates/multiverse amd64 Packages
Ign:29 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en_US
Ign:30 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en
Ign:31 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/main Sources
Ign:33 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
Ign:34 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
Ign:35 http://mirror.kakao.com/ubuntu raring-backports/main all Packages
Ign:36 http://mirror.kakao.com/ubuntu raring-backports/main amd64 Packages
Ign:37 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en_US
Ign:38 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en
Ign:39 http://mirror.kakao.com/ubuntu raring-backports/restricted amd64 Packages
Ign:40 http://mirror.kakao.com/ubuntu raring-backports/restricted all Packages
Ign:41 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en
Ign:42 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en_US
Ign:43 http://mirror.kakao.com/ubuntu raring-backports/universe amd64 Packages
Ign:44 http://mirror.kakao.com/ubuntu raring-backports/universe all Packages
Ign:45 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en
Ign:46 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en_US
Ign:47 http://mirror.kakao.com/ubuntu raring-backports/multiverse amd64 Packages
Ign:48 http://mirror.kakao.com/ubuntu raring-backports/multiverse all Packages
Ign:49 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en_US
Ign:50 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en
Ign:7 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
Ign:20 http://mirror.kakao.com/ubuntu raring/main Translation-en
Ign:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:27 http://mirror.kakao.com/ubuntu raring-updates/multiverse all Packages
Ign:28 http://mirror.kakao.com/ubuntu raring-updates/multiverse amd64 Packages
Ign:29 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en_US
Ign:30 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en
Ign:31 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/main Sources
Ign:33 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
Ign:34 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
Ign:35 http://mirror.kakao.com/ubuntu raring-backports/main all Packages
Ign:36 http://mirror.kakao.com/ubuntu raring-backports/main amd64 Packages
Ign:37 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en_US
Ign:38 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en
Ign:39 http://mirror.kakao.com/ubuntu raring-backports/restricted amd64 Packages
Ign:40 http://mirror.kakao.com/ubuntu raring-backports/restricted all Packages
Ign:41 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en
Ign:42 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en_US
Ign:43 http://mirror.kakao.com/ubuntu raring-backports/universe amd64 Packages
Ign:44 http://mirror.kakao.com/ubuntu raring-backports/universe all Packages
Ign:45 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en
Ign:46 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en_US
Ign:47 http://mirror.kakao.com/ubuntu raring-backports/multiverse amd64 Packages
Ign:48 http://mirror.kakao.com/ubuntu raring-backports/multiverse all Packages
Ign:49 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en_US
Ign:50 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en
Ign:7 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
Ign:20 http://mirror.kakao.com/ubuntu raring/main Translation-en
Ign:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:27 http://mirror.kakao.com/ubuntu raring-updates/multiverse all Packages
Ign:28 http://mirror.kakao.com/ubuntu raring-updates/multiverse amd64 Packages
Ign:29 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en_US
Ign:30 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en
Ign:31 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/main Sources
Ign:33 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
Ign:34 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
Ign:35 http://mirror.kakao.com/ubuntu raring-backports/main all Packages
Ign:36 http://mirror.kakao.com/ubuntu raring-backports/main amd64 Packages
Ign:37 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en_US
Ign:38 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en
Ign:39 http://mirror.kakao.com/ubuntu raring-backports/restricted amd64 Packages
Ign:40 http://mirror.kakao.com/ubuntu raring-backports/restricted all Packages
Ign:41 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en
Ign:42 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en_US
Ign:43 http://mirror.kakao.com/ubuntu raring-backports/universe amd64 Packages
Ign:44 http://mirror.kakao.com/ubuntu raring-backports/universe all Packages
Ign:45 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en
Ign:46 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en_US
Ign:47 http://mirror.kakao.com/ubuntu raring-backports/multiverse amd64 Packages
Ign:48 http://mirror.kakao.com/ubuntu raring-backports/multiverse all Packages
Ign:49 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en_US
Ign:50 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en
Ign:7 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
Ign:20 http://mirror.kakao.com/ubuntu raring/main Translation-en
Ign:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:27 http://mirror.kakao.com/ubuntu raring-updates/multiverse all Packages
Ign:28 http://mirror.kakao.com/ubuntu raring-updates/multiverse amd64 Packages
Ign:29 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en_US
Ign:30 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en
Ign:31 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/main Sources
Ign:33 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
Ign:34 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
Ign:35 http://mirror.kakao.com/ubuntu raring-backports/main all Packages
Ign:36 http://mirror.kakao.com/ubuntu raring-backports/main amd64 Packages
Ign:37 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en_US
Ign:38 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en
Ign:39 http://mirror.kakao.com/ubuntu raring-backports/restricted amd64 Packages
Ign:40 http://mirror.kakao.com/ubuntu raring-backports/restricted all Packages
Ign:41 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en
Ign:42 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en_US
Ign:43 http://mirror.kakao.com/ubuntu raring-backports/universe amd64 Packages
Ign:44 http://mirror.kakao.com/ubuntu raring-backports/universe all Packages
Ign:45 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en
Ign:46 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en_US
Ign:47 http://mirror.kakao.com/ubuntu raring-backports/multiverse amd64 Packages
Ign:48 http://mirror.kakao.com/ubuntu raring-backports/multiverse all Packages
Ign:49 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en_US
Ign:50 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en
Ign:7 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
Ign:20 http://mirror.kakao.com/ubuntu raring/main Translation-en
Ign:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:27 http://mirror.kakao.com/ubuntu raring-updates/multiverse all Packages
Ign:28 http://mirror.kakao.com/ubuntu raring-updates/multiverse amd64 Packages
Ign:29 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en_US
Ign:30 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en
Ign:31 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/main Sources
Ign:33 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
Ign:34 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
Ign:35 http://mirror.kakao.com/ubuntu raring-backports/main all Packages
Ign:36 http://mirror.kakao.com/ubuntu raring-backports/main amd64 Packages
Ign:37 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en_US
Ign:38 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en
Ign:39 http://mirror.kakao.com/ubuntu raring-backports/restricted amd64 Packages
Ign:40 http://mirror.kakao.com/ubuntu raring-backports/restricted all Packages
Ign:41 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en
Ign:42 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en_US
Ign:43 http://mirror.kakao.com/ubuntu raring-backports/universe amd64 Packages
Ign:44 http://mirror.kakao.com/ubuntu raring-backports/universe all Packages
Ign:45 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en
Ign:46 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en_US
Ign:47 http://mirror.kakao.com/ubuntu raring-backports/multiverse amd64 Packages
Ign:48 http://mirror.kakao.com/ubuntu raring-backports/multiverse all Packages
Ign:49 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en_US
Ign:50 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en
Ign:7 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
Ign:20 http://mirror.kakao.com/ubuntu raring/main Translation-en
Ign:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:27 http://mirror.kakao.com/ubuntu raring-updates/multiverse all Packages
Ign:28 http://mirror.kakao.com/ubuntu raring-updates/multiverse amd64 Packages
Ign:29 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en_US
Ign:30 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en
Ign:31 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/main Sources
Ign:33 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
Ign:34 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
Ign:35 http://mirror.kakao.com/ubuntu raring-backports/main all Packages
Ign:36 http://mirror.kakao.com/ubuntu raring-backports/main amd64 Packages
Ign:37 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en_US
Ign:38 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en
Ign:39 http://mirror.kakao.com/ubuntu raring-backports/restricted amd64 Packages
Ign:40 http://mirror.kakao.com/ubuntu raring-backports/restricted all Packages
Ign:41 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en
Ign:42 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en_US
Ign:43 http://mirror.kakao.com/ubuntu raring-backports/universe amd64 Packages
Ign:44 http://mirror.kakao.com/ubuntu raring-backports/universe all Packages
Ign:45 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en
Ign:46 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en_US
Ign:47 http://mirror.kakao.com/ubuntu raring-backports/multiverse amd64 Packages
Ign:48 http://mirror.kakao.com/ubuntu raring-backports/multiverse all Packages
Ign:49 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en_US
Ign:50 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en
Err:7 http://mirror.kakao.com/ubuntu raring/multiverse Sources
  404  Not Found [IP: 113.29.189.165 80]
Ign:8 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Err:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
  404  Not Found [IP: 113.29.189.165 80]
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Err:31 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
  404  Not Found [IP: 113.29.189.165 80]
Reading package lists... Done
W: The repository 'http://ftp.daum.net/ubuntu raring Release' does not have a Release file.
N: Data from such a repository can't be authenticated and is therefore potentially dangerous to use.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Translations (universe/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: The repository 'http://ftp.daum.net/ubuntu raring-updates Release' does not have a Release file.
N: Data from such a repository can't be authenticated and is therefore potentially dangerous to use.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: The repository 'http://ftp.daum.net/ubuntu raring-backports Release' does not have a Release file.
N: Data from such a repository can't be authenticated and is therefore potentially dangerous to use.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/multiverse/source/Sources  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/multiverse/i18n/Translation-en  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/multiverse/i18n/Translation-en_US  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/main/binary-all/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/main/binary-amd64/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/main/i18n/Translation-en_US  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/main/i18n/Translation-en  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/multiverse/source/Sources  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/universe/binary-all/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/universe/binary-amd64/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/universe/i18n/Translation-en_US  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/universe/i18n/Translation-en  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/multiverse/binary-all/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/multiverse/binary-amd64/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/multiverse/i18n/Translation-en_US  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/multiverse/i18n/Translation-en  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/universe/source/Sources  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/main/source/Sources  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/multiverse/source/Sources  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/restricted/source/Sources  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/main/binary-all/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/main/binary-amd64/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/main/i18n/Translation-en_US  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/main/i18n/Translation-en  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/restricted/binary-amd64/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/restricted/binary-all/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/restricted/i18n/Translation-en  404  Not Found [IP: 113.29.189.165 80]
E: Some index files failed to download. They have been ignored, or old ones used instead.
W: Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Translations (universe/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
root@debian-buster:/etc/apt# ping113.29.189.165
-bash: ping113.29.189.165: command not found
root@debian-buster:/etc/apt# ping 113.29.189.165
PING 113.29.189.165 (113.29.189.165) 56(84) bytes of data.
^C
--- 113.29.189.165 ping statistics ---
2 packets transmitted, 0 received, 100% packet loss, time 20ms

root@debian-buster:/etc/apt# curl 113.^C.189.165
root@debian-buster:/etc/apt# curl http://mirror.kakao.com/ubuntu/dists/raring/multiverse/source/Sources
<html>
<head><title>404 Not Found</title></head>
<body bgcolor="white">
<center><h1>404 Not Found</h1></center>
<hr><center>nginx/1.13.9</center>
</body>
</html>
root@debian-buster:/etc/apt# apt-get update --fix-missing
Ign:1 http://mirror.kakao.com/ubuntu raring InRelease
Ign:2 http://mirror.kakao.com/ubuntu raring-updates InRelease
Ign:3 http://mirror.kakao.com/ubuntu raring-backports InRelease
Err:4 http://mirror.kakao.com/ubuntu raring Release
  404  Not Found [IP: 113.29.189.165 80]
Err:5 http://mirror.kakao.com/ubuntu raring-updates Release
  404  Not Found [IP: 113.29.189.165 80]
Err:6 http://mirror.kakao.com/ubuntu raring-backports Release
  404  Not Found [IP: 113.29.189.165 80]
Reading package lists... Done
E: The repository 'http://ftp.daum.net/ubuntu raring Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-updates Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: The repository 'http://ftp.daum.net/ubuntu raring-backports Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Translations (universe/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
root@debian-buster:/etc/apt# sudo apt-get -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true update --fix-missing
Ign:1 http://mirror.kakao.com/ubuntu raring InRelease
Ign:2 http://mirror.kakao.com/ubuntu raring-updates InRelease
Ign:3 http://mirror.kakao.com/ubuntu raring-backports InRelease
Ign:4 http://mirror.kakao.com/ubuntu raring Release
Ign:5 http://mirror.kakao.com/ubuntu raring-updates Release
Ign:6 http://mirror.kakao.com/ubuntu raring-backports Release
Ign:7 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en
Ign:20 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
Ign:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:27 http://mirror.kakao.com/ubuntu raring-updates/multiverse amd64 Packages
Ign:28 http://mirror.kakao.com/ubuntu raring-updates/multiverse all Packages
Ign:29 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en
Ign:30 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en_US
Ign:31 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
Ign:33 http://mirror.kakao.com/ubuntu raring-backports/main Sources
Ign:34 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Ign:35 http://mirror.kakao.com/ubuntu raring-backports/main amd64 Packages
Ign:36 http://mirror.kakao.com/ubuntu raring-backports/main all Packages
Ign:37 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en
Ign:38 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en_US
Ign:39 http://mirror.kakao.com/ubuntu raring-backports/restricted all Packages
Ign:40 http://mirror.kakao.com/ubuntu raring-backports/restricted amd64 Packages
Ign:41 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en
Ign:42 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en_US
Ign:43 http://mirror.kakao.com/ubuntu raring-backports/universe amd64 Packages
Ign:44 http://mirror.kakao.com/ubuntu raring-backports/universe all Packages
Ign:45 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en_US
Ign:46 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en
Ign:47 http://mirror.kakao.com/ubuntu raring-backports/multiverse all Packages
Ign:48 http://mirror.kakao.com/ubuntu raring-backports/multiverse amd64 Packages
Ign:49 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en
Ign:50 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en_US
Ign:7 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en
Ign:20 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
Ign:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:27 http://mirror.kakao.com/ubuntu raring-updates/multiverse amd64 Packages
Ign:28 http://mirror.kakao.com/ubuntu raring-updates/multiverse all Packages
Ign:29 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en
Ign:30 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en_US
Ign:31 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
Ign:33 http://mirror.kakao.com/ubuntu raring-backports/main Sources
Ign:34 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Ign:35 http://mirror.kakao.com/ubuntu raring-backports/main amd64 Packages
Ign:36 http://mirror.kakao.com/ubuntu raring-backports/main all Packages
Ign:37 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en
Ign:38 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en_US
Ign:39 http://mirror.kakao.com/ubuntu raring-backports/restricted all Packages
Ign:40 http://mirror.kakao.com/ubuntu raring-backports/restricted amd64 Packages
Ign:41 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en
Ign:42 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en_US
Ign:43 http://mirror.kakao.com/ubuntu raring-backports/universe amd64 Packages
Ign:44 http://mirror.kakao.com/ubuntu raring-backports/universe all Packages
Ign:45 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en_US
Ign:46 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en
Ign:47 http://mirror.kakao.com/ubuntu raring-backports/multiverse all Packages
Ign:48 http://mirror.kakao.com/ubuntu raring-backports/multiverse amd64 Packages
Ign:49 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en
Ign:50 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en_US
Ign:7 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en
Ign:20 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
Ign:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:27 http://mirror.kakao.com/ubuntu raring-updates/multiverse amd64 Packages
Ign:28 http://mirror.kakao.com/ubuntu raring-updates/multiverse all Packages
Ign:29 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en
Ign:30 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en_US
Ign:31 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
Ign:33 http://mirror.kakao.com/ubuntu raring-backports/main Sources
Ign:34 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Ign:35 http://mirror.kakao.com/ubuntu raring-backports/main amd64 Packages
Ign:36 http://mirror.kakao.com/ubuntu raring-backports/main all Packages
Ign:37 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en
Ign:38 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en_US
Ign:39 http://mirror.kakao.com/ubuntu raring-backports/restricted all Packages
Ign:40 http://mirror.kakao.com/ubuntu raring-backports/restricted amd64 Packages
Ign:41 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en
Ign:42 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en_US
Ign:43 http://mirror.kakao.com/ubuntu raring-backports/universe amd64 Packages
Ign:44 http://mirror.kakao.com/ubuntu raring-backports/universe all Packages
Ign:45 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en_US
Ign:46 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en
Ign:47 http://mirror.kakao.com/ubuntu raring-backports/multiverse all Packages
Ign:48 http://mirror.kakao.com/ubuntu raring-backports/multiverse amd64 Packages
Ign:49 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en
Ign:50 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en_US
Ign:7 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en
Ign:20 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
Ign:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:27 http://mirror.kakao.com/ubuntu raring-updates/multiverse amd64 Packages
Ign:28 http://mirror.kakao.com/ubuntu raring-updates/multiverse all Packages
Ign:29 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en
Ign:30 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en_US
Ign:31 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
Ign:33 http://mirror.kakao.com/ubuntu raring-backports/main Sources
Ign:34 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Ign:35 http://mirror.kakao.com/ubuntu raring-backports/main amd64 Packages
Ign:36 http://mirror.kakao.com/ubuntu raring-backports/main all Packages
Ign:37 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en
Ign:38 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en_US
Ign:39 http://mirror.kakao.com/ubuntu raring-backports/restricted all Packages
Ign:40 http://mirror.kakao.com/ubuntu raring-backports/restricted amd64 Packages
Ign:41 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en
Ign:42 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en_US
Ign:43 http://mirror.kakao.com/ubuntu raring-backports/universe amd64 Packages
Ign:44 http://mirror.kakao.com/ubuntu raring-backports/universe all Packages
Ign:45 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en_US
Ign:46 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en
Ign:47 http://mirror.kakao.com/ubuntu raring-backports/multiverse all Packages
Ign:48 http://mirror.kakao.com/ubuntu raring-backports/multiverse amd64 Packages
Ign:49 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en
Ign:50 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en_US
Ign:7 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en
Ign:20 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
Ign:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:27 http://mirror.kakao.com/ubuntu raring-updates/multiverse amd64 Packages
Ign:28 http://mirror.kakao.com/ubuntu raring-updates/multiverse all Packages
Ign:29 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en
Ign:30 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en_US
Ign:31 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
Ign:33 http://mirror.kakao.com/ubuntu raring-backports/main Sources
Ign:34 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Ign:35 http://mirror.kakao.com/ubuntu raring-backports/main amd64 Packages
Ign:36 http://mirror.kakao.com/ubuntu raring-backports/main all Packages
Ign:37 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en
Ign:38 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en_US
Ign:39 http://mirror.kakao.com/ubuntu raring-backports/restricted all Packages
Ign:40 http://mirror.kakao.com/ubuntu raring-backports/restricted amd64 Packages
Ign:41 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en
Ign:42 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en_US
Ign:43 http://mirror.kakao.com/ubuntu raring-backports/universe amd64 Packages
Ign:44 http://mirror.kakao.com/ubuntu raring-backports/universe all Packages
Ign:45 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en_US
Ign:46 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en
Ign:47 http://mirror.kakao.com/ubuntu raring-backports/multiverse all Packages
Ign:48 http://mirror.kakao.com/ubuntu raring-backports/multiverse amd64 Packages
Ign:49 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en
Ign:50 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en_US
Ign:7 http://mirror.kakao.com/ubuntu raring/universe Sources
Ign:8 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe all Packages
Ign:11 http://mirror.kakao.com/ubuntu raring/universe Translation-en_US
Ign:12 http://mirror.kakao.com/ubuntu raring/universe Translation-en
Ign:13 http://mirror.kakao.com/ubuntu raring/multiverse amd64 Packages
Ign:14 http://mirror.kakao.com/ubuntu raring/multiverse all Packages
Ign:15 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en
Ign:16 http://mirror.kakao.com/ubuntu raring/multiverse Translation-en_US
Ign:17 http://mirror.kakao.com/ubuntu raring/main amd64 Packages
Ign:18 http://mirror.kakao.com/ubuntu raring/main all Packages
Ign:19 http://mirror.kakao.com/ubuntu raring/main Translation-en
Ign:20 http://mirror.kakao.com/ubuntu raring/main Translation-en_US
Ign:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
Ign:22 http://mirror.kakao.com/ubuntu raring-updates/universe Sources
Ign:23 http://mirror.kakao.com/ubuntu raring-updates/universe amd64 Packages
Ign:24 http://mirror.kakao.com/ubuntu raring-updates/universe all Packages
Ign:25 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en_US
Ign:26 http://mirror.kakao.com/ubuntu raring-updates/universe Translation-en
Ign:27 http://mirror.kakao.com/ubuntu raring-updates/multiverse amd64 Packages
Ign:28 http://mirror.kakao.com/ubuntu raring-updates/multiverse all Packages
Ign:29 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en
Ign:30 http://mirror.kakao.com/ubuntu raring-updates/multiverse Translation-en_US
Ign:31 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
Ign:32 http://mirror.kakao.com/ubuntu raring-backports/multiverse Sources
Ign:33 http://mirror.kakao.com/ubuntu raring-backports/main Sources
Ign:34 http://mirror.kakao.com/ubuntu raring-backports/universe Sources
Ign:35 http://mirror.kakao.com/ubuntu raring-backports/main amd64 Packages
Ign:36 http://mirror.kakao.com/ubuntu raring-backports/main all Packages
Ign:37 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en
Ign:38 http://mirror.kakao.com/ubuntu raring-backports/main Translation-en_US
Ign:39 http://mirror.kakao.com/ubuntu raring-backports/restricted all Packages
Ign:40 http://mirror.kakao.com/ubuntu raring-backports/restricted amd64 Packages
Ign:41 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en
Ign:42 http://mirror.kakao.com/ubuntu raring-backports/restricted Translation-en_US
Ign:43 http://mirror.kakao.com/ubuntu raring-backports/universe amd64 Packages
Ign:44 http://mirror.kakao.com/ubuntu raring-backports/universe all Packages
Ign:45 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en_US
Ign:46 http://mirror.kakao.com/ubuntu raring-backports/universe Translation-en
Ign:47 http://mirror.kakao.com/ubuntu raring-backports/multiverse all Packages
Ign:48 http://mirror.kakao.com/ubuntu raring-backports/multiverse amd64 Packages
Ign:49 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en
Ign:50 http://mirror.kakao.com/ubuntu raring-backports/multiverse Translation-en_US
Err:7 http://mirror.kakao.com/ubuntu raring/universe Sources
  404  Not Found [IP: 113.29.189.165 80]
Ign:8 http://mirror.kakao.com/ubuntu raring/multiverse Sources
Ign:9 http://mirror.kakao.com/ubuntu raring/universe amd64 Packages
Ign:10 http://mirror.kakao.com/ubuntu raring/universe all Packages
Err:21 http://mirror.kakao.com/ubuntu raring-updates/multiverse Sources
  404  Not Found [IP: 113.29.189.165 80]
Err:31 http://mirror.kakao.com/ubuntu raring-backports/restricted Sources
  404  Not Found [IP: 113.29.189.165 80]
Reading package lists... Done
W: The repository 'http://ftp.daum.net/ubuntu raring Release' does not have a Release file.
N: Data from such a repository can't be authenticated and is therefore potentially dangerous to use.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Translations (universe/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: The repository 'http://ftp.daum.net/ubuntu raring-updates Release' does not have a Release file.
N: Data from such a repository can't be authenticated and is therefore potentially dangerous to use.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: The repository 'http://ftp.daum.net/ubuntu raring-backports Release' does not have a Release file.
N: Data from such a repository can't be authenticated and is therefore potentially dangerous to use.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/universe/source/Sources  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/universe/i18n/Translation-en_US  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/universe/i18n/Translation-en  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/multiverse/binary-amd64/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/multiverse/binary-all/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/multiverse/i18n/Translation-en  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/multiverse/i18n/Translation-en_US  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/main/binary-amd64/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/main/binary-all/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/main/i18n/Translation-en  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring/main/i18n/Translation-en_US  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/multiverse/source/Sources  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/universe/source/Sources  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/universe/binary-amd64/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/universe/binary-all/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/universe/i18n/Translation-en_US  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/universe/i18n/Translation-en  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/multiverse/binary-amd64/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/multiverse/binary-all/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/multiverse/i18n/Translation-en  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-updates/multiverse/i18n/Translation-en_US  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/restricted/source/Sources  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/multiverse/source/Sources  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/main/source/Sources  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/universe/source/Sources  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/main/binary-amd64/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/main/binary-all/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/main/i18n/Translation-en  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/main/i18n/Translation-en_US  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/restricted/binary-all/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/restricted/binary-amd64/Packages  404  Not Found [IP: 113.29.189.165 80]
E: Failed to fetch http://mirror.kakao.com/ubuntu/dists/raring-backports/restricted/i18n/Translation-en  404  Not Found [IP: 113.29.189.165 80]
E: Some index files failed to download. They have been ignored, or old ones used instead.
W: Target Packages (universe/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Packages (universe/binary-all/Packages) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Translations (universe/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
W: Target Translations (universe/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list:4 and /etc/apt/sources.list:41
root@debian-buster:/etc/apt# nano sources.list
root@debian-buster:/etc/apt# ls
apt.conf.d  preferences.d  sources.list  sources.list.d  sources.liste  trustdb.gpg  trusted.gpg  trusted.gpg~  trusted.gpg.d
root@debian-buster:/etc/apt# apt-get update
Ign:1 http://archive.debian.org/debian wheezy InRelease
Ign:2 http://archive.debian.org/debian-archive/debian-security wheezy InRelease
Hit:3 http://archive.debian.org/debian wheezy Release
Err:4 http://archive.debian.org/debian-archive/debian-security wheezy Release
  404  Not Found [IP: 193.62.202.28 80]
Err:5 http://archive.debian.org/debian wheezy Release.gpg
  The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 8B48AD6246925553 NO_PUBKEY 7638D0442B90D010 NO_PUBKEY 6FB2A1C265FFB764
Reading package lists... Done
E: The repository 'http://archive.debian.org/debian-archive/debian-security wheezy Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: An error occurred during the signature verification. The repository is not updated and the previous index files will be used. GPG error: http://archive.debian.org/debian wheezy Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 8B48AD6246925553 NO_PUBKEY 7638D0442B90D010 NO_PUBKEY 6FB2A1C265FFB764
root@debian-buster:/etc/apt# sudo apt-get -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true update
Ign:1 http://archive.debian.org/debian wheezy InRelease
Ign:2 http://archive.debian.org/debian-archive/debian-security wheezy InRelease
Hit:3 http://archive.debian.org/debian wheezy Release
Err:4 http://archive.debian.org/debian wheezy Release.gpg
  The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 8B48AD6246925553 NO_PUBKEY 7638D0442B90D010 NO_PUBKEY 6FB2A1C265FFB764
Ign:5 http://archive.debian.org/debian-archive/debian-security wheezy Release
Ign:6 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main amd64 Packages
Ign:7 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main all Packages
Ign:8 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main Translation-en_US
Ign:9 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main Translation-en
Ign:6 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main amd64 Packages
Ign:7 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main all Packages
Ign:8 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main Translation-en_US
Get:9 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main Translation-en [338 kB]
Ign:6 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main amd64 Packages
Ign:7 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main all Packages
Ign:8 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main Translation-en_US
Get:6 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main amd64 Packages [743 kB]
Ign:7 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main all Packages
Ign:8 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main Translation-en_US
Ign:7 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main all Packages
Ign:8 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main Translation-en_US
Ign:7 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main all Packages
Ign:8 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main Translation-en_US
Ign:7 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main all Packages
Ign:8 http://archive.debian.org/debian-archive/debian-security wheezy/updates/main Translation-en_US
Fetched 1,080 kB in 5s (228 kB/s)
Reading package lists... Done
W: An error occurred during the signature verification. The repository is not updated and the previous index files will be used. GPG error: http://archive.debian.org/debian wheezy Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 8B48AD6246925553 NO_PUBKEY 7638D0442B90D010 NO_PUBKEY 6FB2A1C265FFB764
W: The repository 'http://archive.debian.org/debian-archive/debian-security wheezy Release' does not have a Release file.
N: Data from such a repository can't be authenticated and is therefore potentially dangerous to use.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: Failed to fetch http://archive.debian.org/debian/dists/wheezy/Release.gpg  The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 8B48AD6246925553 NO_PUBKEY 7638D0442B90D010 NO_PUBKEY 6FB2A1C265FFB764
W: Some index files failed to download. They have been ignored, or old ones used instead.
root@debian-buster:/etc/apt# cd /etc/apt/^C
root@debian-buster:/etc/apt# nslookup archive.debian.org
Server:         192.168.1.254
Address:        192.168.1.254#53

Non-authoritative answer:
Name:   archive.debian.org
Address: 130.89.148.13
Name:   archive.debian.org
Address: 217.196.149.234
Name:   archive.debian.org
Address: 193.62.202.28
Name:   archive.debian.org
Address: 2a02:16a8:dc41:100::234
Name:   archive.debian.org
Address: 2001:67c:2564:a119::148:13

root@debian-buster:/etc/apt# ^C
root@debian-buster:/etc/apt# nano sources.list
root@debian-buster:/etc/apt# nano sources.list
root@debian-buster:/etc/apt# sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 630239CC130E1A7FD81A27B140976EAF437D05B5
Executing: /tmp/apt-key-gpghome.TavxYcqJv4/gpg.1.sh --recv-keys --keyserver keyserver.ubuntu.com 630239CC130E1A7FD81A27B140976EAF437D05B5
gpg: key 40976EAF437D05B5: "Ubuntu Archive Automatic Signing Key <ftpmaster@ubuntu.com>" not changed
gpg: Total number processed: 1
gpg:              unchanged: 1
root@debian-buster:/etc/apt# sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 7638D0442B90D010
Executing: /tmp/apt-key-gpghome.DoRmRGh76m/gpg.1.sh --recv-keys --keyserver keyserver.ubuntu.com 7638D0442B90D010
gpg: key 7638D0442B90D010: public key "Debian Archive Automatic Signing Key (8/jessie) <ftpmaster@debian.org>" imported
gpg: Total number processed: 1
gpg:               imported: 1
root@debian-buster:/etc/apt# apt-get update
Ign:1 http://archive.debian.org/debian wheezy InRelease
Hit:2 http://archive.debian.org/debian wheezy Release
Ign:4 http://archive.debian.org/debian wheezy/main amd64 Packages
Get:5 http://archive.debian.org/debian wheezy/main Translation-en [3,846 kB]
Get:4 http://archive.debian.org/debian wheezy/main amd64 Packages [7,634 kB]
Fetched 11.5 MB in 28s (416 kB/s)
Reading package lists... Done
root@debian-buster:/etc/apt# ls
apt.conf.d  preferences.d  sources.list  sources.list.d  sources.liste  trustdb.gpg  trusted.gpg  trusted.gpg~  trusted.gpg.d
root@debian-buster:/etc/apt# apt-cache policy openssl
openssl:
  Installed: 1.1.1d-0+deb10u6
  Candidate: 1.1.1d-0+deb10u6
  Version table:
 *** 1.1.1d-0+deb10u6 100
        100 /var/lib/dpkg/status
     1.0.1e-2+deb7u20 500
        500 http://archive.debian.org/debian wheezy/main amd64 Packages
root@debian-buster:/etc/apt# hsitory
-bash: hsitory: command not found
root@debian-buster:/etc/apt# history
    1  history
    2  exit
    3  cd /home/etudiant
    4  ping raspberrypi.local
    5  ping pi.local
    6  ping pi
    7  ping raspberrypi
    8  ping raspi
    9  apt-get install -y nmap
   10  ping raspi
   11  ping raspberrypi
   12  ping raspberrypi.local
   13  ping pi.local
   14  ping 8.8.8.8
   15  apt-get install -y nmap
   16  sudo nmap -sn 192.168.1.0/24
   17  nslookup 192.168.1.48
   18  nslookup 192.168.1.49
   19  nslookup 192.168.1.70
   20  host 192.168.1.70
   21  ping 192.168.1.49
   22  ssh pi@192.168.1.49
   23  ssh pi@192.168.1.48
   24  ssh pi@192.168.1.70
   25  sudo dpkg -l | grep openssl
   26  openssl s_server
   27  chmod +x ./instal-owncloud.sh && ./install-owncloud.sh
   28  chmod +x ./install-owncloud.sh && ./install-owncloud.sh
   29  cd /home/etudiant
   30  curl --help
   31  cd /home/etudiant/
   32  ls
   33  cd heartbleed-masstest/
   34  ls
   35  ./ssltest.py --ports "443, 993, 995, 44330" hostlist.txt
   36  ./ssltest.py --ports "443, 993, 995, 44330" hostlist.txt
   37  netstat -tunap
   38  ./ssltest.py --ports "44330, 993, 995, 44330" hostlist.txt
   39  ./ssltest.py --ports "44330, 993, 995, 443" hostlist.txt
   40  curl 192.168.1.11:44330
   41  curl https://192.168.1.11:44330
   42  curl -k https://192.168.1.11:44330
   43  ip a
   44  ping 192.168.1.11
   45  ./ssltest.py --ports "4432, 993, 995, 443" hostlist.txt
   46  cd /home/etudiant
   47  openssl s_client -connect localhost:44330
   48  openssl s_client -connect 192.168.1.11:44330
   49  openssl s_client -connect https://192.168.1.11:44330
   50  openssl s_client -connect 192.168.1.11:4432
   51  cd /home/etudiant/
   52  ls
   53  ./install-owncloud.sh
   54  cat /etc/apache2/mods-enabled/dir.conf
   55  a2enmod ssl
   56  a2ensite default-ssl
   57  cat /etc/apache2/sites-enabled/default-ssl.conf
   58  nano /etc/apache2/sites-enabled/default-ssl.conf
   59  nano /etc/apache2/sites-enabled/default-ssl.conf
   60  systemctl restart apache2
   61  sudo a2enmod headers
   62  ls
   63  cd heartbleed-masstest/
   64  nano hostlist.txt && chmod +x ssltest.py
   65  ./ssltest.py --ports "443, 993, 995" hostlist.txt
   66  apt-get install -y python
   67  ./ssltest.py --ports "443, 993, 995" hostlist.txt
   68  ./ssltest.py --ports "443, 993, 995" hostlist.txt
   69  ./ssltest.py --ports "443, 993, 995" hostlist.txt
   70  cd /home/etudiant/
   71  ls
   72  ./install-owncloud.sh
   73  cd /etc/apache2
   74  ls
   75  cat /etc/ssl/private/apache-selfsigned.key
   76  cat /etc/ssl/certs/apache-selfsigned.crt
   77  a2enmod ssl
   78  a2ensite default-ssl
   79  sudo a2enmod headers
   80  systemctl restart apache2
   81  sudo a2ensite default-ssl
   82  nano /etc/apache2/sites-available/000-default.conf
   83  nano /etc/apache2/sites-available/default-ssl.conf
   84  sudo systemctl reload apache2
   85  apt-get install -y mysql-server
   86  cat /etc/apache2/mods-enabled/dir.conf
   87  openssl s_server
   88  netstat -tunap
   89  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330 -
   90  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   91  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   92  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   93  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   94  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   95  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   96  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   97  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   98  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
   99  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 44330
  100  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 443
  101  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 4432
  102  openssl s_server -key /etc/ssl/private/apache-selfsigned.key -cert /etc/ssl/certs/apache-selfsigned.crt -accept 4432 -www
  103  cd /home/etudiant/
  104  ip a
  105  ip a
  106  ping 8.8.8
  107  ping 8.8.8.8
  108  ping 8.8.8.8
  109  ping 8.8.8.8
  110  sudo dhclient -v eth1
  111  ping 8.8.8.8
  112  ping 8.8.8.8
  113  sudo ifdown eth0 eth1
  114  ls
  115  ping 8.8.8.8
  116  curl localhost:44330
  117  curl localhost:
  118  curl localhost:44330
  119  cd /home/etudiant/
  120  apt-get install -y git
  121  ls
  122  git clone https://github.com/tdussa/heartbleed-masstest.git
  123  curl -k https://192.168.1.11:4432
  124  exit
  125  exit
  126  cd /home/etudiant/
  127  exit
  128  cd /home/etudiant/
  129  ls
  130  apt-show-versions openssl
  131  apt-show-version
  132  apt-get install -y apt-show-versions
  133  apt-show-versions
  134  apt-show-versions openssl
  135  apt-cache policy openssl
  136  apt-cache policy php*
  137  apt-cache policy php
  138  apt-get install -y --allow-downgrades openssl1.0=1.0.1c-1ubuntu5.1
  139  apt-get install -y --allow-downgrades openssl1.0
  140  ls
  141  cd /etc/apt/
  142  vcd sources.list
  143  cd sources.list
  144  cd sources.list.d
  145  nano jessie.list
  146  ls
  147  nano jessie.list
  148  dpkg -l | grep openssl
  149  nano jessie.list
  150  sudo apt update
  151  sudo apt install openssl/jessie
  152  sudo apt install openssl1.0.1f/jessie
  153  sudo apt install openssl1.0.1f+deb8u12/jessie
  154  sudo apt install openssl1.0.1/jessie
  155  sudo apt install openssl/jessie
  156  apt search openssl
  157  apt-get install heartbleeder/stable
  158  sudo dpkg -l | grep openssl
  159  man heartbleeder
  160  apt-show-versions openssl
  161  apt-cache policy php
  162  apt-cache policy openssl
  163  cp jessie.list wheezy.list
  164  nano wheezy.list
  165  sudo apt update
  166  nano wheezy.list
  167  sudo apt update
  168  sudo apt install openssl/wheezy
  169  apt-cache policy openssl
  170  nano jessie.list
  171  sudo apt update
  172  ls
  173  rm owncloud.list
  174  history
  175  apt-cache policy openssl
  176  rm wheezy.list
  177  cp jessie.list pangolin.list
  178  nano pangolin.list
  179  mv pangolin.list precise.list
  180  sudo apt update
  181  history
  182  apt-cache policy openssl
  183  sudo apt install openssl/precise
  184  nano raring.list
  185  ls
  186  rm precise.list
  187  ls
  188  apt update
  189  apt-get update
  190  hitsory
  191  history
  192  apt-get update -y
  193  apt-cache policy openssl
  194  ls
  195  rm jessie.list
  196  ls
  197  apt-get update -y
  198  man heartbleeder
  199  heartbleeder 192.168.1.119:443
  200  man heartbleeder
  201  nano raring.list
  202  nano raring.list
  203  apt-get update -y
  204  nano raring.list
  205  apt-get update -y
  206  nano raring.list
  207  apt-get update -y
  208  nano raring.list
  209  apt-get update -y
  210  nano raring.list
  211  apt-get update -y --allow-unauthenticated
  212  rm raring.list
  213  nano wheezy.list
  214  apt-get update -y
  215  nano wheezy.list
  216  apt-get update -y
  217  sudo apt-get install add-apt-key && sudo add-apt-key 8B48AD6246925553
  218  sudo apt-get install add-apt-key
  219  sudo add-apt-key
  220  sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 8B48AD6246925553
  221  apt-get install -y gnupg
  222  sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 8B48AD6246925553
  223  apt-get update -y
  224  sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 6FB2A1C265FFB764
  225  apt-get update -y
  226  sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com  7638D0442B90D010
  227  apt-get update -y
  228  ls
  229  apt-cache policy openssl
  230  cd /home/etudiant/
  231  ls
  232  ls
  233  tar -xvzf apt.tar.gz
  234  cp -r ./apt /etc/apt
  235  cd /etc/apt/
  236  ls
  237  sudo apt-get update -y
  238  ls -ltr
  239  diff trusted.gpg /home/etudiant/apt/trusted.gpg
  240  cp /home/etudiant/apt/trusted.gpg .
  241  cp /home/etudiant/apt/trusted.gpg~ .
  242  cp /home/etudiant/apt/* .
  243  cp -r /home/etudiant/apt/* .
  244  ls
  245  sudo apt-get update -y
  246  cp -R /home/etudiant/apt/* .
  247  sudo apt-get update -y
  248  cd sources.list
  249  cd sources.list.d
  250  ls
  251  rm wheezy.list
  252  cd ..
  253  ls
  254  ls -ltr
  255  ls
  256  ls apt
  257  cd ..
  258  ls
  259  cd apt
  260  ls
  261  rm -rf apt
  262  ls
  263  sudo apt-get update -y
  264  cp /home/etudiant/apt/sources.list .
  265  rm -rf *
  266  ls
  267  cp -R /home/etudiant/apt/ .
  268  ls
  269  rm -rf apt
  270  cp -r /home/etudiant/apt/ .
  271  ls
  272  cd apt
  273  mv * ..
  274  ls
  275  cd ..
  276  rmdir apt
  277  ls
  278  sudo apt-get update -y
  279  cat sources.list
  280  nano sources.list
  281  sudo apt-get update -y
  282  sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 630239CC130E1A7FD81A27B140976EAF437D05B5
  283  sudo apt-get update -y
  284  nano *
  285  nano *
  286  ls
  287  ls
  288  nano sources.list
  289  nano sources.liste
  290  sudo apt-get update -y
  291  nano sources.liste
  292  cp /home/etudiant/apt/sources.list .
  293  nano sources.list
  294  sudo apt-get update -y
  295  man apt-secure
  296  nano sources.list
  297  sudo apt-get update -y
  298  nano sources.list
  299  sudo apt -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true update
  300  apt-get install -y openssl
  301  apt-cache policy openssl
  302  sudo apt-get upgrade -y
  303  sudo apt autoremove
  304  sudo apt-get upgrade -y
  305  sudo apt-get update -y
  306  sudo apt -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true update
  307  sudo apt-get -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true update
  308  ping113.29.189.165
  309  ping 113.29.189.165
  310  curl http://mirror.kakao.com/ubuntu/dists/raring/multiverse/source/Sources
  311  apt-get update --fix-missing
  312  sudo apt-get -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true update --fix-missing
  313  nano sources.list
  314  ls
  315  apt-get update
  316  sudo apt-get -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true update
  317  nslookup archive.debian.org
  318  nano sources.list
  319  nano sources.list
  320  sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 630239CC130E1A7FD81A27B140976EAF437D05B5
  321  sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 7638D0442B90D010
  322  apt-get update
  323  ls
  324  apt-cache policy openssl
  325  hsitory
  326  history
root@debian-buster:/etc/apt# ^C
root@debian-buster:/etc/apt# ^C
root@debian-buster:/etc/apt# ^C
root@debian-buster:/etc/apt# te
-bash: te: command not found
root@debian-buster:/etc/apt#   317  nslookup archive.debian.org
-bash: 317: command not found
root@debian-buster:/etc/apt#
```
