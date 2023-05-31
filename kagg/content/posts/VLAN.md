+++
title = "VLAN övning"
date = "2023-05-11"
author = "Alex"
authorTwitter = "" #do not include @
cover = ""
tags = ["EE", "övningar"]
keywords = ["", ""]
description = ""
showFullContent = false
draft = true
+++

# Övning VLAN

## Bakgrund:
Ett medelstort företag har ett kontor med arbetsplatser med internet för de anställda. De har också ett fastighetsautomationsystem där man kan se innetemperaturen som de inte vill ska kunna kommas åt från de arbetsplatserna men de har en övervakningsdator som de vill ha för att övervaka temperaturen. De har också ett övervakningssystem med kamera (över PoE) och övervakningsserver som ska vara på eget VLAN. <br>
Nackdelen för företaget är att övervakningsdatorn och datorn som får in temperaturen är på olika våningar där det inte går att dra en nätverkskabel emellan. Fördelen är att nätverk finns i kontoret med managerbara switchar så er uppgift är att sätta upp två VLAN, en för process och en för kontor. Företaget är oroat för att Putin ska hacka deras temperaturgivare, därför får process-nätverket *EJ* vara åtkomligt mot internet. Samma sak för övervakningssystemet, det ska vara på eget VLAN och *EJ* åtkomligt från internet.

<br>

## Mål:
Lär er och bygg upp ett nätverk med VLAN och managerbara switchar.


<div style='page-break-after: always;'></div>

## Förberedelse:

- Gruppera er i 4 grupper så ni får en server i serverracken var.<br>
- Skapa en nätverkstopologi i PacketTracer där ni får till nätverket som ni vill ha det. Detta kommer ni använda som dokumentation till det praktiska arbetet.
- Kolla manueler för switchar och testa att koppla upp er så ni kommer in i CLI-interface
- Rita upp och beskriv var ni ska placera er utrustning.
- Undersök hur ni ska få igång temperaturgivaren på en dator.
- Kolla på filmer i classroom om VLAN och trunkning.
- Vad behövs för material?


## Utförande:
Det finns flera stycken olika switchskåp, ni skall:
- Dra en kabel från ett skåp till ett annat, ta två skåp där ni får lite längd.
- Konfigurera switch för VLAN
- Koppla upp datorer, bärbara eller stationära får ni välja själva.
- Koppla in internet mot "kontors"-nätet med en router.
- Få nätverket att fungera så att datorerna ser varandra i VLAN:en
- Konfigurera temperaturgivaren så att det funkar
- Konfigurera övervakningssystemet så det funkar
- Gör märkning av kablar och eventuella uttag.
- Gör kabellistor där ni listar vilka och hur långa kablar ni har dragit, få också med var de är anslutna.
- Gör en dokumentation över nätverket, där ni skriver ner konfigurationen av nätverket.

## Dokumentation:
- Ni skall dokumentera arbetet med kabellistor där det står angivet hur långa kablar som är dragna och var de ansluts.
- Ni skall också dokumentera hur datorerna är konfigurerade med användarnamn och nätverkskonfiguration.
- Dokumentera även vilka VLAN som finns och vilka enheter som är anslutna var.
- Gör också en enkel instruktion hur man kan se temperaturen samt hur man använder övervakningssystemet.
- Dokumentera konfigurationen av switchar, och hur man ändrar det.