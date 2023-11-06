+++
title = "Hack_server_02"
date = "2023-10-11T14:35:16+02:00"
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

# Studera nätverket

Nu när vi har lösenordet till nätverket så kan vi ansluta till nätverket och kolla vad som finns som vi kan attackera.
<br> nmap är kommandot som vi ska använda och det är ett program som söker igenom nätverk enligt de uppgifter man ger det. Vi ska ta reda på vad det finns för enheter på nätverket och vilka tjänster de kör som vi kan attackera.

    nmap -sn 192.168.3.0/24

Med detta kommando söker vi igenom de 255 IP-adresser som finns på nätverk, 192.168.3.1 - 192.168.3.254. nmap kommer upptäcka vilka adresser som används.

Sen måste vi söka igenom antalet portar som är öppna på den maskin som vi vill komma åt:

    nmap -p1-10000 *IP_ADRESSEN*

Med detta kommando frågar vi enheten på IP adressen vilka portar som är öppna, oc vi ser att endast SSH porten är öppen