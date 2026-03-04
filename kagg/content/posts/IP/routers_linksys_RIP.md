+++
title = "Routers_linksys_RIP"
date = "2026-03-04T09:03:48+01:00"
author = "Alexander Svensson"
authorTwitter = "" #do not include @
cover = ""
tags = ["nätverk", ""]
keywords = ["RIP", "routing"]
description = ""
showFullContent = false
readingTime = false
hideComments = false
color = "" #color from the theme settings
+++

# RIP på linksys routers

## Syfte
Det här är en inställningsguide för att få igång RIP routing mellan två stycken linksys routrar


![topologi](/linksys_router/topologi.svg)

**X** är lika med platsen ni sitter vid. X ska vara unik för er router och PC.

## Inställningar router


### DHCP
På routern behöver ni ställa in så att den har IP *192.168.X.1*

### WAN
Wan porten behöver ställas in så att den får manuell IP:
 - Manuell IP
 - IP-adress: 10.0.0.X
 - Nätmask: 255.255.255.0

### Advanced routing
Här behöver vi ställa in så att routern använder RIPv2
 - Router (inte gateway)
 - RIP: enabled
 - Receive: RIPv2
 - Transmit: RIPv2 - Multicast

### Firewall -> Access Rules
Vi behöver ställa in brandväggen så att den släpper igenom ICMP (ping) meddelanden

 - Action: Allow
 - Service: Ping
 - Source: Any
 - Source IP: Any
 - Destination IP: Any

## Inställningar PC
PC borde kunna köra automatisk IP-adress så att den får en IP-adress av routern.

Kolla **innan** ni sätter igång så att datorn kan bli **pingad**. Fungerar inte detta så måste ni antagligen säga till brandväggen att släppa igenom ping, *eller* **stänga av brandväggen**
