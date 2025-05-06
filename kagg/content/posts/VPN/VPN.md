+++
title = "OpenVPN på router"
date = "2024-04-15T14:08:14+02:00"
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["EE", "teknik", "nätverk", "hårdvara"]
keywords = ["", ""]
description = ""
showFullContent = false
readingTime = false
hideComments = false
color = "" #color from the theme settings
+++

# OpenVPN
Sätt upp routern som OpenVPN-server och skicka filer mellan två datorer, en "utanför" routern, och en från
insidan. Vilken hastighet kommer vi upp i?


## Tillvägagångssätt
Här kommer ett förslag på ordningen ni kan jobba med:
### På routern
 - Installera router
 - Kom in i routerns interface (192.168.1.1)
 - Konfigurera OpenVPN Server på routern (expiration date) [OpenVPN server](#openvpn-server---konfiguration)
 - Konfigurera en klient och ladda ner certifikat för klienten [OpenVPN klient](#openvpn-klient)
---
### På er bärbara dator
 - Anslut till wifi "2.3005" för att hamna på samma nätverk som VPN. Lösen: Minne2020
 - Installera open vpn connect på bärbar dator (klient) [OpenVPN Connect](#openvpn-klient-på-bärbar-dator) 
 - Anslut till routerns *OpenVPN server*
 ### På er stationära dator
---
 - Installera [Filezilla FTP Server](https://filezilla-project.org/download.php?platform=win64&type=server) server
 - Konfigurera en användare i [FTP server](#ftp-server)
### På er bärbara dator
---
 - Installera [FTP Klient]( https://filezilla-project.org/download.php) på din laptop
 - Anslut till din IP-adress på servern (serverns IP-adress på nätverkskortet, använd *ipconfig* för att ta reda på denna)(funkar inte detta kan du behöva ställa i [brandväggen på servern](#brandväggen))
 - För över filer och ta bild på hastigheten
 ### När ni är färdiga
----
 - Avinstallera filezilla FTP server på den stationära datorn.
 - Avinstallera filezilla FTP klient och OpenVPNConnect på din bärbara dator


## OpenVPN server - konfiguration
För att återställa routern (*Linksys LRT214*) håll inne reset knappen i ungefär 25 sekunder. För att sedan komma in i webbinterfacet, koppla in en dator på port 1-4 och surfa in på IP-adress *192.168.1.1*

Inlogg till routern är:

    User: admin
    Password: admin

Konfiguration för OpenVPN hittar du under "Configuration -> OpenVPN -> OpenVPN server". Om konfiguration för OpenVPN redan finns så måste du återställa inställningarna för OpenVPN på "Maintenance -> Factory Default -> Factory Default including OpenVPN". Detta tar ungefär en minut.

För att konfigurera OpenVPN server, ställ in *Authentication* till *Certificate*. 
Sen måste vi ställa in de poster som har en röd stjärna. **Tänk på** att ställa in *expiration date* till ett datum senare än idag.
Vad du skriver i de andra fälten **har ingen betydelse**

## OpenVPN Klient
I routern när du har konfigurerat servern måste du också konfigurera en klient för datorn som ska ansluta via VPN. 
Här måste vi ställa in de poster som har en röd stjärna. **Tänk på** att ställa in *expiration date* till ett datum senare än idag.
Vad du skriver i de andra fälten **har ingen betydelse**

När klienten är skapad måste du ladda ner certifikatet och skicka till din bärbara dator. Gör det genom att trycka på *den orangea symbolen* för din klient. Denna filen ska skickas till din bärbara dator.

## FTP-Server
Ladda ner FTP-Servern Filezilla på "server"-datorn. Ladda även ner Filezilla-klienten på er "klient"-dator.<br>
Installera filezilla server på er dator.<br>
När filezilla server är installerad kan ni konfigurera den genom att öppna programmet *Administer FileZilla Server*. Här kan ni ansluta till servern för att göra inställningar.<br>
När ni har anslutit till er server (använd IP-adress *127.0.0.1*) så kan ni klicka på Server -> Settings. Här ska ni klicka på *Users* och skapa en ny användare som ska kunna "se" en mapp.
Inställningar för användaren:

    Virtual Path: /
    Native Path: C:\DinMappSomDuSkapat

## Brandväggen
Ni måste ställa in brandväggen på servern så den tillåter FTP-trafik, detta görs genom att öppna portar 20-22
och 990. Brandväggsinställningar hittar ni genom att söka på brandvägg i startmenyn.

## OpenVPN-Klient på bärbar dator
Ladda ner OpenVPN klienten på er dator och anslut till OpenVPN via certifikatet som ni skapade i routern.
Installationen hittar ni här [OpenVPN Connect](https://openvpn.net/client/client-connect-vpn-for-windows/)

Använd certifikatet du laddat ner i klienten (*Upload file*). 

Dessa saker kan gå fel: 
- Kan behövas tas bort sista raden i .ovpn-filen, om openVPN klagar på "binary file"
-  Om den klagar på att certifikatet använder en gammal hash-version får ni gå in på "*Settings*" -> "*Advanced Settings*" -> "*Insecure*"
