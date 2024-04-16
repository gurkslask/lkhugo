+++
title = "OpenVPN på router"
date = "2024-04-15T14:08:14+02:00"
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["EE", "teknik", "network"]
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
 - Installera router
 - Kom in i routerns interface (192.168.1.1)
 - Sätt in OpenVPN Server på routern (expiration date)
 - Sätt klient och ladda ner certifikat

 - Anslut till wifi "2.3005" för att hamna på samma nätverk som VPN. Lösen: Minne2020
 - Installera open vpn connect på bärbar dator (klient)  [OpenVPN Connect](https://openvpn.net/client/client-connect-vpn-for-windows/)
 - Använd certifikat i klienten ( Kan behövas tas bort sista raden i .ovpn-filen, om openVPN klagar på "binary file")
 - Anslut till OpenVPN server

 - Installera [Filezilla FTP Server](https://filezilla-project.org/download.php?platform=win64&type=server) server
 - Konfigurera en användare i FTP servern [här]({{ <ref "VPN/VPN.md#FTP-Server"> }}).

 - Installera [FTP Klient]( https://filezilla-project.org/download.php) på din laptop
 - Anslut till din IP-adress på servern
 - För över filer och ta bild på hastigheten


## OpenVPN - konfiguration
Inlogg till routern är:

    User: admin
    Password: admin

I konfigurationsinterfacet, använd certifikat för autentisering, detta kommer skapa ett certifikat som vi kan
använda när vi ska koppla upp klienten mot servern.
## FTP-Server
Ladda ner FTP-Servern Filezilla på "server"-datorn. Ladda även ner Filezilla-klienten på er "klient"-dator.
Konfigurera Filezilla servern att peka på en mapp som ni skapar på er dator. Skapa en användare där ni låter
den titta på mappen som ni skapat. Inställningar för användaren:

    Virtual Path: \
    Native Path: C:\DinMappSomDuSkapat

## Brandväggen
Ni måste ställa in brandväggen på servern så den tillåter FTP-trafik, detta görs genom att öppna portar 20-22
och 990. Brandväggsinställningar hittar ni genom att söka på brandvägg i startmenyn.

## OpenVPN-Klient
Ladda ner OpenVPN klienten på er dator och anslut till OpenVPN via certifikatet som ni skapade i routern.