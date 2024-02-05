+++
title = "Linux kommandon"
date = "2024-02-05T11:08:14+02:00"
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["EE", "teknik", "linux"]
keywords = ["", ""]
description = ""
showFullContent = false
readingTime = false
hideComments = false
color = "" #color from the theme settings
+++

# Linux kommandon

## Mål

Med hjälp av detta materialet ska ni kunna känna till olika vanliga kommandon man kan använda i linux-terminalen för att hantera filer och få ut systeminformation. 

## Syfte

Kommandon i Linux har varit samma under lång tid. Det man lärt sig under 90-talet används än idag och fungerar på samma sätt. Så om man lär sig dessa kommandon och hur man använder terminalen i Linux så är det färdigheter som kan användas på många ställen

## Terminalen

Terminalen i linux är ett textbaserat fönster som har direkt koppling mot kärnan i linux som styr datorn. I terminalen kan man endast använda tangentbordet och det finns många snabbkommandon. Terminalen brukas också kallas *shell*, alltså *skal* på svenska och detta är för att man brukar känneteckna det som ett skal utanpå kärnan i operativsystemet.

Det finns många olika *skal*, det populäraste är **bash** (Bourn Again SHell). Andra populära alternativ är:

- fish
- zsh

I terminalen har man alltid en prompt som kan se ut såhär:

    alex@5CD218325F:/dev$

Prompten talar om viktig information, så här är det upplagt:

| alex | @ | 5CD218325F | : | /dev | $ |
| ---- |---- |---- |---- |---- |---- |
| användare | avdelare | datornamn | avdelare | plats i filsystemet | avslutningstecken |

**Plats i filsystemet** visar alltid var man *"står"* i filsystemet för linux. Filsystemet i linux skiljer sig från windows i hur det är uppbyggt, det går att läsa mer om det [här](../Instudering_windows/instudering_windows.md). Så om man till exempel skapar en fil eller mapp, så skapas det i den mapp där man *står*.

Exempel:


    alex@5CD218325F:/home/alex/test$ mkdir testmapp

Detta kommando skapar en mapp som heter *"testmapp"* i mappen "test".





## Programmering

I terminalen så kan man skriva in olika kommandon för att åstadkomma olika saker. Styrkan med detta är allt görs med text, och text går att köra om och om igen för att få samma eller olika resultat. Det är vanligt att när man har gjort en funktion, så *förevigar* man den med hjälp av ett skript. Man kan säga att man sparar ner olika kommandon i en viss ordning så att man enkelt kan köra det igen. Om man till exempel vill skapa en mapp och sen gå in i mappen, kan man göra det med hjälp av ett script, och då blir det som en genväg. 
<br>Exempel på script:

    #!/bin/bash
    # Fråga användaren efter mapp namn
    echo -n "Skriv in mapp-namn:"
    read mapp_namn
    # Skapa mapp
    mkdir "$mapp_namn"
    # Gå in i mappen
    cd "$mapp_namn"

## Växlar

I princip alla kommandon har *"växlar"* som påverkar hur kommandot fungerar. Det kan vara att man vill ha extra information från programmet, det kan också vara att man vill att kommandot påverkar en viss fil. Ett enkelt exempel är *"ls"* kommandot som listar filer i mappen man står i:

    ls

Detta kommando kör ls och visar vilka filer som finns där du *"står"*. Om vi lägger till växeln -l 

    ls -l

som står för *"long"* får vi en utförligare utskrift av filerna. Om vi lägger till växeln *h*

    ls -lh

får vi en lång utskrift med ändelser för *kilo*, *mega* och *giga*-byte.

I princip alla kommandon har en hjälp sida där alla växlar finns förklarade. Kör 

    ls --help

för att få upp hjälpen. Tänk på att det är *två stycken* bindestreck.

## Kommandon för filer

### ls
ls står för *list* och skriver ut vilka filer och mappar som finns i mappen där du står. Vill du se vilka filer som finns i en annan mapp kan du skriva

    ls *annan_mapp*

### pwd

pwd står för *print working directory* och skriver ut var för någonstans i filsystemet du står just nu

### cd

Står för *change directory* och byter mapp som du står i. 

    cd *mapp_som_du_vill_byta_till*
    
**Tips:**<br>
**om du inte orkar skriva ut hela mappen så kan du skriva de först bokstäverna och sen trycka på *tab*-tangenten så hittar terminalen de som liknar, tryck fler gånger på tabb för att byta**<br>
**Linux är känslig mot små och stora bokstäver**

cd har vissa inbyggda genvägar som kan hjälpa till:

    cd ~ = tar dig till din hemmapp
    cd - = tar dig till den förra mappen du var i
    cd .. = tar dig till mappen *"ett steg upp"*
    
cd kan byta mapp fler gånger ner i trädet. Till exempel:

    cd mapp/undermapp/underundermapp/

### mkdir

Står för *MaKe DIRectory* och skapar en mapp

    mkdir ny_mapp
   
### rmdir

Står för *ReMove DIRectory* och tar bort en **tom** mapp

    rmdir ny_mapp
   
Om du behöver ta bort en mapp som inte är tom, behöver du köra rm {{ <ref "#rm" > }}

### touch

touch *rör* en fil och kan användas för att skapa en tom fil, eller för att uppdatera tiden som filen har ändrats.

    touch ny_fil
   
### rm

Står för *ReMove* och tar bort filer eller mappar.

    rm ny_fil

**Tips:**
**om du vill ta bort alla filer som har filändelsen .txt (textfiler) så kan du använda ett *wildcard*.**

    rm *.txt
    
Om du vill ta bort en mapp behöver du köra rm med växeln *-r* som står för *Recursive*. Detta tar bort en mapp med alla filer och undermappar i.

    rm -r mapp
    
Tänk på att när du använder rm så hamnar inte filerna i någon papperskorg, utan borttagandet är oåterkalleligt. Om du är osäker kan du använda 

    rm -i

då kommer kommandot fråga dig om du är säker på att du vill ta bort varje fil.

### cp

Står för "CoPy" och kopierar filer eller mappar. Exempel:

    cp fil kopierad_fil

kopierar filen *fil* till *kopierad_fil*. *kopierad_fil* kan man lägga i en annan mapp. Exempel

    cp fil annan_mapp/kopierad_fil
    
Vill du kopiera en mapp med allt dess innehåll måste du lägga till flaggan *-r*, som också står för *Recursive*. Exempel:

    cp -r mapp_med_filer kopierad_mapp_med_filer
    
### mv

Står för *MoVe* och flyttar en mapp eller fil. Används för att byta namn på filer. Exempel:

    mv fil fil_med_nytt_namn

Detta byter namn på *fil*, alltså flyttar den, till det nya namnet *fil_med_nytt_namn*. Du kan såklart också flytta filen till en annan mapp.

    mv fil annan_mapp/fil_med_nytt_namn
    
För att flytta filen "uppåt" i filsystemet:

    mv fil ../fil_med_nytt_namn
    
# Övning

Nu ska du testa dina kunskaper och arbeta med en filstruktur. Strukturen ska likna en struktur man använder när man jobbar med hemsidor, där vi har olika mappar för statiskt innehåll som html, css och bilder. En annan mapp för dynamiskt innehåll som js filer. En annan mapp där vi lägger sådant som har med konfiguration av servern att göra.

 - [] navigera till din hemmapp med hjälp av *cd*
 - [] skapa en mapp som heter hemsida 
 - [] gå in i mappen du har skapat
 - [] här ska vi nu skapa vår struktur. Börja med att skapa en mapp som heter public
 - [] gå in i mappen du har skapat
 - [] nu ska du skapa lite mappar för att strukturera hemsidan, skapa

        - css
        - html
        - images
        - js
    
 - [] i css-mappen, skapa två mappar

        - fonts
        - styles

- [] ladda ner några bilder och lägg i hemmappen, ladda ner bilder kan du göra med din webbläsare, sen får du flytta bilderna till *images* mappen som du har skapat, använd *mv* eller *cp* beroende på om du vill flytta eller kopiera bilderna.
- [] Om du kör kommandot *tree* i terminalen när du står i mappen *hemsida* bör den printa ut något som liknar:

~~~
├── css
│   ├── fonts
│   └── styles
├── html
├── images
│   ├── bild1.jpg
│   └── bild.jpg
└── js
~~~
som är din mappstruktur.

==Finns inte programmet *tree* så får du installera det==

    sudo apt install tree -y

    
## Resultat
Nu har du skapat en mapp struktur med hjälp av terminalen i linux. Nu ska vi testa att manipulera det vi har gjort.

Vi döpte vår mapp till *hemsida*, nu ska vi döpa om mappen till kagg-hemsida.

- [] med hjälp av *cd*, ändra så att du står i samma mapp som din mapp *hemsida* ligger. Med andra ord, kör du *ls* så bör din mapp *hemsida* synas.
- [] det vi har skapat är egentligen en hemsida-mall, så vi döper om mappen *hemsida* till *hemsida_mall*, med hjälp av kommandot *mv*
- [] Nu ska vi skapa en ny hemsida så vi kopierar *hemsida_mall* till en ny mapp som vi kallar *hemsida_kagg*, med hjälp av kommadot *cp*