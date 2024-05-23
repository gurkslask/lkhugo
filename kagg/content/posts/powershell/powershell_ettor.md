+++
title = "Powershell_ettor"
date = "2024-05-23T11:56:03+02:00"
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

# Powershell

## Skapa mappstruktur

Använd powershell för att skapa en mappstruktur som ser ut såhär:
    
    ├── html
    │   └── sida2.html
    ├── img
    │   ├── kub.jpg
    │   └── logga.png
    └── index.html

Ni ska alltså skapa en mapp-struktur som passar en hemsida, men ni ska **inte** använda den vanliga utforskaren för att skapa mappar och filer utan istället ska ni använda powershell med dessa kommandon:

    ls
    cd
    mkdir
    New-Item

**Ni behöver bara skapa filer, om det är bilder eller inte har ingen betydelse**

## Kopiera mappstruktur

När mappstrukturen är färdig så ska ni nu kopiera mappstrukturen. Man kan säga att ni har skapat en mall för en hemsida och nu ska ni använda denna för att skapa en ny hemsida.

 - Gå upp ett steg i mappstrukturen så ni ser mappen om ni kör *ls*-kommandot
 - Kopiera mappen med hjälp av *Copy-Item*-kommandot
 - Gå in i mappen och kolla så att mappstrukturen är intakt

## Få ut dator-information till en fil

Nu ska ni använda powershell för att få information om program på datorn till en fil.