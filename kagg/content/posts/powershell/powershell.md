+++
title = "Powershell"
date = "2023-05-30T15:52:55+02:00"
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["EE", "Teknik", "Genomgång", "powershell"]
keywords = ["", ""]
description = "Powershell - terminalen i windows"
showFullContent = false
readingTime = false
hideComments = false
color = "" #color from the theme settings
+++

# Powershell

## Bakgrund
Powershell dök för första gången upp redan 2006 och har varit Windows svar på terminalen (bash) i Linux. I windows har det sedan begynnelsen funnits ett program som heter kommandotolken. I början av windows utveckling fanns det bara kommandotolken (DOS hette det på den tiden). Man kan säga att kommandotolken är föregångaren till Powershell i windows. I kommandotolken kan man utföra simpla kommandon som:

    ipconfig - Kolla nätverksinställningar
    ping - Kolla om ens dator kan kontakta andra enheter på nätverket
    arp - Kolla ARP-tabellen på ens dator

Det finns också många andra kommandon man kan köra i kommandotolken men den hade många begränsningar om man jämför med terminalen i Linux-världen, där det går att göra mycket mer. Detta ville Microsoft (som har skapat windows) ändra på och drog därför igång med att skapa Powershell.

## Användningsområde

Powershell är en ersättare till den gamla kommandotolken, kommandotolken finns dock fortfarande kvar men används mindre och mindre. Powershell kan göra allt som kommandotolken kan göra men powershell kan också användas för mycket mer komplicerade saker:
 - Automatisk konfiguration
 - Powershells egna script-språk
 - Sömlös integration till Windos-kärna i operativsystemet
 - Stöd för integration från tredjepartsleverantörer för moduler till andra produkter
 - Stöd för att köra powershell från en annan dator
 - Stöd för att köra SSH som är ett populärt gränssnitt för att kunna styra andra datorer via terminalen
 - En enhetlig syntax bestående av "VERB-SUBSTANTIV" till alla kommandon

Idag är powershell väldigt användbart till allt som har med windows att göra. Man kan enkelt sagt säga att alla inställningar man kan göra med mus och tangentbord i windows menyer, kan man istället göra via powershell. Detta innebär att man kan göra ett script, ett litet program, som ställer in datorn åt dig, och sparar du scriptet så kan du köra det på en annan dator och då blir konfigurationen exakt likadan.

## Börja med powershell

För att använda powershell så går det att öppnas från *Start-menyn* i windows. Det som dyker upp när man kör powershell är ett terminalfönster där man använder tangentbordet för att skriva in kommandon.

Förutom terminalfönstret finns också *powershell* **ISE**, här kan man skriva små program eller *scripts* till powershell som man sparar ner till en fil för att kunna köra flera gånger.

## Filsystemet

Powershell fungerar på liknande sätt som terminalen i linux med att man **står alltid någonstans** i filsystemet. Prompten i powershell kan till exempel se ut så här:

   PS C:\Users\admin

Som säger att jag kör powershell i admin-mappen i filsystemet. Detta betyder att om jag skulle skapa en ny fil så hamnar filen i admin-mappen. Behöver jag kolla vilka filer som finns i denna mappen kan jag köra kommandot

   ls

Som är samma som i linux. *ls* är egentligen inget powershell kommando, utan det är ett **alias** för 

    Get-ChildItem

Som är powershellkommandot för att lista filer. Kommandon i powershel är alltid ett verb följt av ett substantiv. Jag kan se vilka alias som med *get-alias*-kommandot. Till exempel

    Get-Alias ls

Som printar ut *Get-ChildItem*.

## Variabler

I powershell så använder man variabler med hjälp av *$* tecknet. En variabel skapas till exempel så här:

    $ny_strang_variabel = "text"
    $ny_int_variabel = 42
    
I powershell så behöver man inte deklarera vilken datatyp det är, utan det görs automatiskt i powershell.

## if-sats

Likt många andra programmeringsspråk finns det funktion för if sats i powershell. Syntaxen liknar c#. Det kan se ut så här:

    if ($ny_int_variabel -gt 42) {
        write-host "Variabeln är större än 42"
    } else {
        write-host "Variabeln är mindre än 42"
    }

I powershell använder man inte "krokodilmunnar" (< och >) för jämförelser utan istället mer uttryckligt med:
    
    -eq - Equal
    -ne - Not equal
    -gt - Greater than
    -ge - Greater than or equal
    -lt - Less than
    -le - Less than or equal
    
## for-sats

Det finns också funktionalitet för *for*. Det som används mest i powershell är *foreach* som loopar igenom alla objekt i ett objekt som går att inkrementera, till exempel en *lista*

    $lista = 1, "två", 3.4 // En lista med olika datatyper
    foreach ($i in $lista) {$i.GetType()} // Loopar över alla objekt i listan och printa datatypen för objektet

## Exempel på användning av powershell och *pipes*
Powershell används även för att visualisera data. Till exempel har vi kodsnutten:

    Get-Process | Sort-Object -Property CPU -Descending | Select-Object -First 5

Som printar ut de 5 processer på datorn som drar mest processorkraft. Här går jag igenom olika delar:

    Get-Process

Används för att printa ut information om olika processer som körs på datorn. Här finns både program och processer som körs i bakgrunden som operativsystemet (Windows) behöver för att fungera.

    |

Det här är en symbol som heter "Pipe", alltså rör. Symbolen används för att koppla ihop två olika kommandon i powershell. I det här fallet kopplar den ihop det som Get-Process printas ut till ett kommando som heter 

    Sort-Object

Som sorterar objekt enligt olika instruktioner. Sort-Object i det här fallet ser ut så här:

    Sort-Object -Property CPU -Top 5 -Descending

I ordning så säger vi till kommandot att den ska sortera allting den får in enligt "CPU". Alltså säger vi till den att den ska kolla på kolumnen CPU. Top 5 säger vi till kommandot för att den ska de översta 5 processerna. Och Descending betyder att den ska ta den process som tar Mest proccessorkraft och gå nedåt istället för tvärtom.
