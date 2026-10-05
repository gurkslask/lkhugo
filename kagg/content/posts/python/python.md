+++
title = "Python"
date = "2026-02-06T13:27:18+01:00"
author = "Alex"
authorTwitter = "" #do not include @
cover = ""
tags = ["Övning", "python", "Teknik", "EE"]
keywords = ["", ""]
description = ""
showFullContent = false
readingTime = false
hideComments = false
color = "" #color from the theme settings
+++


# Python

## Mål
Målet med det här materialet är att ni ska få övergripande kännedom om 
programmeringsspråket *python* som vi ska använda.

## Övergripande fakta

Python är ett programmeringsspråk som är känt för att vara nybörjarvänligt
samtidigt som det är väldigt kraftfullt

### Fördelar

 - Enkel syntax: Koden påminner om vanlig engelska, vilket gör den lätt att läsa och skriva. Det minskar den "mentala tröskeln" för nybörjare.
 - Enormt bibliotek: Det finns färdiga moduler för nästan allt (från att skicka e-post till att skapa AI), vilket gör att man slipper "uppfinna hjulet" varje gång.
 - Hög produktivitet: Man kan ofta lösa en uppgift med 5 rader kod i Python som skulle kräva 20–30 rader i språk som Java eller C++.
 - Plattformsoberoende: Samma kod fungerar oftast på både Windows, macOS och Linux utan att man behöver ändra något.
 - Stor community: Eftersom så många använder Python finns det svar på nästan alla frågor online (t.ex. på Stack Overflow) och mängder av gratis tutorials.

### Nackdelar

 - Hastighet: Python är ett tolkat språk (interpreted), vilket gör det långsammare än kompilerade språk som C++ vid extremt beräkningsintensiva uppgifter.
 - Minnesanvändning: Python är inte lika effektivt på att hantera RAM-minne som lägre programmeringsspråk, vilket kan vara en nackdel i små inbyggda system.
 - Mobilutveckling: Det är sällan förstahandsvalet för att bygga appar till iOS eller Android (där dominerar språk som Swift och Kotlin).
 - Runtime-fel: Eftersom Python är dynamiskt typat upptäcks vissa fel först när programmet körs, istället för när man skriver koden.
 - Global Interpreter Lock (GIL): En teknisk begränsning som gör det svårare för Python att köra flera tunga processer samtidigt på flera processorkärnor (multithreading).

### Branscher där det används

- AI & Maskininlärning: Den dominanta branschen för Python (t.ex. OpenAI, Tesla).

- Webbutveckling (Backend): För att driva logiken bakom stora sajter (t.ex. Instagram, Spotify och Netflix).

- Automatisering & Skriptning: Inom IT-avdelningar för att automatisera tråkiga, repetitiva administrativa uppgifter.

## Syntax

**Syntax** är ett ord som beskriver hur man skriver kod.
Syntaxen för python är skapad för att den ska vara så lättläst som möjligt.

### Inga semikolon (;)

I python används inte semikolon(;) i lika stor utsträckning som andra programmeringsspråk.
I många programmeringsspråk används ; för att avsluta en instruktion.

Ett löjligt exempel:

    print(
    " här
    är ett
    exempel"
    );

Här avslutas inte kodraden förrän det kommer ett semikolon. I python avlutas kodraden när raden avslutas.

Ett python exempel:

    print("här är ett exempel")

### Indentation 

Ett kännetecken är att man byter ut **{}** ("måsvingar") mot att **indentation**.
**Indentation** betyder att men *skjuter in* text kan man säga. Kolla på nedanstående exempel:

    Den här texten är inte indenterad
        Den här texten är indenterad ett steg
             Den här texten är indenterad två steg

Genom att **indentera texten** så beskriver man vilken kod som hör till olika steg i programmet.

Här kommer ett exempel:

    if namn == "Alex":
        # Den här koden kommer BARA köras om namn = Alex
        print("Namnet är Alex")
    else:
        # Den här koden kommer köras om namn INTE är Alex
        print("Du har ett annat namn än Alex")
    # Den här koden ligger "utanför" if-satsen och kommer Alltid köras oavsett vad namnet är
    print("Nu är programmet färdigt")

Många andra programmeringsspråk använder **{}** (brukar kallas måsvingar) för att visa
vilken kod som hör till vilket steg:

Här kommer ett exempel:

    
    if namn == "Alex"{
    # Den här koden kommer BARA köras om namn = Alex
    print("Namnet är Alex")
    }
    else{
    # Den här koden kommer köras om namn INTE är Alex
    print("Du har ett annat namn än Alex")
    }
    # Den här koden ligger "utanför" if-satsen och kommer Alltid köras oavsett vad namnet är
    print("Nu är programmet färdigt")

### Inga explicita datatyper
I python deklarerar man inte datatyper. Enklare förklarat så säger vi inte till python om
en variabel är en siffra, en text eller om variabeln är en tid. Det får python lista ut själv.

Exempel med explicit datatyp

    int year = 2025
    string namn = "Alex"

exempel i python

    year = 2025
    namn = "Alex"

Det finns både för och nackdelar med detta. Men att det förbättrar läsbarheten
är ganska självklart.
