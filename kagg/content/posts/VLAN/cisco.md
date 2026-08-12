+++
title = "VLAN packet tracer"
date = "2026-08-12T09:36:00+02:00"
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["VLAN", "EE", "nätverk", "hårdvara"]
keywords = ["", ""]
description = ""
showFullContent = false
readingTime = false
hideComments = false
color = "" #color from the theme settings
+++

# Guide för Video om vlan i packet tracer

## Syfte

Den här guiden är en resurs som man kan använda ihop med videon för **VLAN** i *packet tracer*. Här kommer jag skriva i text vad som görs under de olika stegen och jag kommer **framförallt** skriva kommandon som används i videon.

## Komma in i konfigurerings läge

För att komma in i *upphöjt* läge i switchen

    en (förkortning av *enable*)

När man kört *en*, eller *enable*, borde prompten ändras

    Från:
    switch>
    Till:
    switch#

För att komma in i konfigureringsläge i switchen kör:

    conf t (förkortning av *configure terminal*)

När man kört *conf t*, eller *configure terminal*, borde prompten ändras

    Från:
    switch#
    Till:
    switch(config)#

För att komma tillbaka ett steg så kan man trycka *CTRL+C*.

## Skapa VLAN

Från prompten **switch(config)** skriv:

    vlan 50 (för att skapa ett VLAN)
    name student (student kan ju bytas ut mot vad ni vill kalla vlanet)
    exit (för att spara)

## Koppla port mot VLAN

Från prompten **switch(config)** skriv:

    interface fastEthernet 0/10 (10 kan ni byta ut mot den porten du vill ändra på)
    switchport mode access
    switchport access vlan 50 (byt ut 50 mot det vlan ni vill använda)

## För att kolla vlan inställningar i switch

Från prompten **#** skriv:

    show vlan

För att se alla inställningar i switchen skriv:

    show run

## Ställ in IP-address på switchen

Från prompten **(config)#** skriv:

    interface vlan 99 (byt ut 99 mot det VLAN som ska ha IP)
    ip address 192.168.1.2 255.255.255.0
    no shutdown

## För att ställa in telnet och lösenord på switchen

Från prompten **(config)#** skriv:

    line vty 0 15
    password cisco
    login
    enable secret cisco

## Ställa in trunk port på switchen

Från prompten **(config)#** skriv:
    
    interface fastEthernet 0/1
    switchport mode trunk
    switchport trunk allowed vlan 1-99