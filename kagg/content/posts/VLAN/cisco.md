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

**Längst ner** finns en [begreppslista](#begreppslista) med olika begrepp och förklaringar som kan vara bra att känna till.

När ni är färdiga med videos så finns det också [Extra utmaningar](#extra-utmaningar) som ni kan göra för att visa hur hög förståelse ni har om VLAN.

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

## Extra utmaningar

 - Få igång management vlan och inloggning till den andra (högra) switchen
 - Gör ett nytt vlan med vlan-id som är över 100 ( >100) och få det att fungera via trunk
  - Gör en dator på högersidan som är på VLAN 99 och kan styra switcharna
   - Gör en till switch där du endast trunkar VLAN 50 och VLAN 99
   - Gör en router som routrar mellan två VLAN

## Begreppslista

 - **VLAN-id (VLAN-ID)**: Det unika numret (t.ex. VLAN 10 eller VLAN 20) som identifierar ett specifikt virtuellt nätverk. Det fungerar som ett "gruppnummer" för att skilja olika nätverk åt i samma switch.

 - **Accessport**: En nätverksport på en switch som bara tillhör ett enda VLAN. Den används för att ansluta vanliga slutenheter som datorer, skrivare eller IP-telefoner.

 - **Trunkport**: En nätverksport som kan transportera trafik från flera olika VLAN samtidigt. Används oftast i kablar mellan två switchar eller mellan en switch och en router.

 - **Nätverksport**: Den fysiska kontakten (oftast RJ45 för Ethernet) på en switch, router eller dator där du sätter i nätverkskabeln.

IP- och Nätverksbegrepp
 - **IP-adress**: Enhetens unika digitala "hemadress" på nätverket (t.ex. 192.168.1.50). Den gör att datapaket hittar fram till rätt enhet.

 - **Nät-id (Network ID)**: Den del av IP-adressen som talar om vilket nätverk enheten tillhör (motsvarar gatunamnet i en postadress). Alla enheter i samma VLAN har normalt samma nät-id.

 - **Host-id (Host ID)**: Den del av IP-adressen som är unik för den enskilda enheten på det nätverket (motsvarar husnumret i en postadress).


**Taggad vs. Otaggad trafik (Tagged / Untagged):**

 - **Otaggad (Untagged)**: Vanlig nätverkstrafik utan VLAN-märkning. Datorer skickar nästan alltid otaggad trafik.

 - **Taggad (Tagged)**: Trafik där switchen har lagt till en liten digital "lapp" (enligt standarden 802.1Q) med VLAN-id:t så att nästa switch vet vilket VLAN paketet hör till.

 - **Nätmask (Subnet Mask)**: Den "regel" som bestämmer var gränsen går mellan Nät-id och Host-id i en IP-adress.

 - **Inter-VLAN Routing**: VLAN är helt isolerade från varandra för säkerhets skull. Om en dator på VLAN 10 vill prata med en dator på VLAN 20 behövs en router (eller en Layer 3-switch) som släpper igenom trafiken däremellan.

 - **Native VLAN**: Det specifika VLAN på en trunkport som hanterar all trafik som råkar komma in utan en VLAN-tagg.