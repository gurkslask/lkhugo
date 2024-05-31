+++
title = "Powershell_ettor"
date = "2024-05-23T11:56:03+02:00"
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["powershell", "windows"]
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

Nu ska ni använda powershell för att få information om program på datorn till en fil. Informationen ni ska få ut är vilka processer på datorn som tar mest CPU.

För att få ut information om vilka processer som körs på systemet finns kommandot 

    Get-Process

Med detta kommando får vi ut *alla* processer på datorn. För att få ut vilke processer som drar mest minne så behöver vi sortera processerna. Det gör vi med hjälp av kommandot:

    Sort-Object

Detta kommandot sorterar objekt, men det sorterar det på vilket namn processen har, och det är inte det vi behöver. Vi behöver lägga till en flagga som säger till kommandot att sortera beroende på mängden CPU som processen tar upp.

    Sort-Object -Property CPU
    
Nu sorterar kommandot på vilka processer som tar minst CPU till de som tar flest. Nu behöver vi plocka ut de 5 sista processerna. Det gör vi genom att köra kommandot 

    Select-Object -Last 5

---- 

Nu ska ni sätta ihop de här kommandona så att powershell printar ut information kring de processer som drar mest CPU på datorn till en fil på filsystemet.

## Extraövningar

 - Använd programmet *Powershell ISE* för att skapa ett skript som automatiskt gör filstrukturen ni gjorde innan. I *Powershell ISE* kan man skriva kommandon som powershell kan köra uppifrån och ner. Till exempel:
    <code>

        mkdir test
        cd test
        new-item fil.txt

    </code>
 - I *Powershell ISE* skapa ett program som frågar användaren efter deras namn och sedan skriver ut en hälsning till det namnet man skriver in.