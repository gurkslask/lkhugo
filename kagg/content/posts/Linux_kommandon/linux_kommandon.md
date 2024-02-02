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

