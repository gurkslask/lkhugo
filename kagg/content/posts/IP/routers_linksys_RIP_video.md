+++
title = "Routers_linksys_RIP_video"
date = "2026-11-04T09:18:52+01:00"
#dateFormat = "2006-01-02" # This value can be configured for per-post date formatting
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["", ""]
keywords = ["", ""]
description = ""
showFullContent = false
readingTime = false
hideComments = false
+++


# RIP-routing på linksys-router

## Mål

Konfigurera en router för RIP-routing

## Vad behövs

 - En dator
 - En *återställd* router
 - Webbläsaren *firefox*

## Länk till youtube-film
[Youtube-film](https://youtu.be/R_aNgT97OHQ)

## Arbetsgång

 - Återställ router
   - Starta router och vänta på att **endast** *System*-lampan lyser. Håll in *RESET*-knappen tills *DIAG*-lampan blinkar **snabbt** (ungefär 20 sekunder). Vänta på att router startar om.
 - Logga in på router
   - IP: 192.168.1.1
   - Användarnamn: admin
   - Lösenord: admin
 - Ställ in LAN-adress
 - Ställ in WAN-adress
 - Stäng av brandväggen
 - Ändra certifikatsinställningar i firefox
 - Dra igång RIP-routing
 ![exempel på rip-konfiguration](/linksys_router/rip_ex.png)
