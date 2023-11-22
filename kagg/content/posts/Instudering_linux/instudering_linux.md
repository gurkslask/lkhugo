+++
title = "Instudering_linux"
date = "2023-11-22T17:42:06+01:00"
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["EE", "teknik", "instudering"]
keywords = ["", ""]
description = ""
showFullContent = false
readingTime = false
hideComments = false
color = "" #color from the theme settings
+++

# Linux

<img src="Tux.svg.png"></img>

Linux är ett operativsystem som framförallt är känt för att vara fritt och helt gratis. Med "fritt" menas att allt som är skrivet för operativsystemet är öppet och kan användas av vem som helst. Vem som helst kan också skriva kod och förbättra operativsystemet, men det styrs av en organisation som har ansvar för att allting fungerar som det ska.

## Historia
Operativsystemet är skrivet av Linus Torvalds. Arbetet påbörjades år 1991.
Det var från början ett hobbyprojekt där Linus ville skriva om kärnan för operativsystemet UNIX, men det blev mycket större än Linus kunnat drömma om, och idag används det av merparten av alla servrar och även vissa privata enheter. 

Kända exempel som använder Linux är:
- **Raspberry pi**
- Operativsystemet **Android** för mobiltelefoner 
- **Steam Deck**.
    
När vi pratar om Linux, måste man också nämna projektet GNU. GNU är en samling av kod och program som används av Linux. GNU är skrivet av profilen Richard Stallman som är en stark förespråkare av öppen källkod, alltså att kod ska vara fri för alla. GNU projektet har en egen licens som innebär att använder man koden för kommersiella applikationer, så krävs speciella krav.

## Statistik

- Linux-kärnan innehåller 28 268 647 rader av kod
- 4000 unika utvecklare har jobbat på den senaste linux-kärnan
- Skaparen Linus Torvalds har skrivit 3,19% av all kod
- Nio av tio molntjänster använder Linux
- De 25 mest populära webb-sidorna använder Linux
- Linux är det enda operativsystemet som används av världens **superdatorer**
- 65 SpaceX resor gjordes med hjälp av Linux
- 75,8% av utvecklare av IoT använder Linux
<br><span style="font-size: 10px"> IoT - Internet of Things, små prylar som kan automatisera mestadels vardagliga saker</span>
- 85% av världens smartphones använder **Android**, som i sin tur är byggt på linux
- Indien är det land som har flest andel linux användare med 3,52%


## Användning

Linux är i grunden en kärna, alltså en mjukvara som möjliggör användandet av hårdvara.
För att använda Linux-kärnan installerar man oftast en **distribution** av Linux.

En distribution är en samling av mjukvara som tillsammans med Linux-kärnar möjliggör ett helt operativsystem. Delarna av en distribution är:

- Linux-kärnan, som behövs för att kunna använda hårdvaran
- Fönster-hanterare, som behövs för att kunna använda program i ett windows-liknande system
- Paket-hanterare, för att kunna installera och uppdatera programvaror
- Drivrutiner, för att kunna använda hårdvara som inte redan finns i Linux-kärnan

Det finns många olika distributioner, den populäraste är **ubuntu**. Ubuntu blev populär för att den var tidig med att göra det lätt för användaren. Innan ubuntu fanns så var det väldigt svårt att få igång Linux, och det var mest för de mest inbitna datorentusiasterna.

En annan känd distribution är **Red Hat**. Red Hat är en distribution som är skriven av ett stort företag som därför är väldigt populär för företag som kräver support. Distributionen är också väldigt säker med programvara som är grundligt testad.

Position|Distribution|Popularitet|
---|---|---|
1|MX Linux|2657
2|Mint|2128
3|EndeavourOS|1711
4|Debian|1565
5|Manjaro|1183
6|Ubuntu|1029
7|Fedora|909
8|Pop!_OS|902
9|openSUSE|778
10|Zorin|652

<span style="font-size: 9px">Popularitet är antalet sökningar</span>

## Filsystem och hierarki

Filsystemet i Linux är annorlunda mot windows. I Linux grundas allting med "roten" av filsystemet som kännetecknas av **"/"**. Det är i roten som filsystemet börjar. Under roten finns olika mappar där olika filer ska ligga, och det finns en standard som används av alla distributioner av Linux.

Såhär ser en standard filstruktur ut
              
    /
    ├── bin - Mapp för program
    ├── boot - Används vid datorstart
    ├── dev - Mapp för alla hårdvara
    ├── etc - Mapp för inställningar
    ├── home - Mapp för användare, här kan man lägga sina filer
    ├── lib  - Mapp för mjukvarubibliotek
    ├── lib64  - Mapp för mjukvarubibliotek
    ├── lost+found - Mapp där korrupterade filer hamnar
    ├── mnt - Mapp om man monterar USB-minnen eller nätverksenheter
    ├── opt - Plats för program som körs från "bin"
    ├── proc - Mapp för processorn och kärnan
    ├── root - Hemmapp för "root"-användaren
    ├── sbin - Mapp för program
    ├── srv - Tjänst-data, används av server-programvara till exempel webb-server
    ├── tmp - Temporär mapp, alla filer försvinner efter omstart
    ├── usr - Program för användare
    └── var - Plats för loggar

Som ni ser så finns det många olika mappar som ligger i roten. Men det finns en standard som används av de olika linux-distributioner som finns. Vissa avvikelser finns, men den strukturen som listas ovan finns oftast med.

### Home-mappen
En av de viktigaste mapparna att känna till är **home**-mappen, här finns en mapp för varje användare där man kan lägga sina dokument och nerladdade filer. Varje användare har bara tillgång till sin egen hem-mapp.

## Fördelar/nackdelar

Om man jämför Linux mot det populäraste operativsystemet Windows, finns det bland annat dessa för/nackdelar:

### Fördelar

- Gratis
- Mer anpassningsbart då det finns flera olika alternativ att välja
- Säkrare, Linux är känt för att kunna göras säkert
- Öppen källkod
- Stabilitet, Linux används ofta i applikationer där stabilitet är viktigt
- Prestanda, Linux kan göras väldigt avskalat så att ens dator bara används till det som verkligen behövs
- CLI command line interface, fastän att det verkar skrämmande till en början, görs många inställningar via terminalen eller kod. Detta är för många företag en fördel då det går att automatisera
- Support och community, Linux har ett väldigt brett community med folk som brinner för operativsystemet och gärna hjälper till. Därför finns det mycket innehåll på internet om man behöver hjälp.

### Nackdelar
- Sämre stöd för viss hårdvara
- Vissa program/spel fungerar inte
- Inlärningskurva, Linux kan vara svårt att lära sig till en början
- Fragmentering, att det finns många distributioner att välja på är också en nackdel, då det finns många olika sätt att göra saker på i operativsystemet
- Support för företag, support för linux finns men är inte lika utbrett som för windows
- Marknadsandel, Linux används inte av lika många människor som Windows, och det är både en för- och nackdel.

## Säkerhet

Linux anses vara väldigt säkert, eller i alla fall kan man göra det väldigt säkert. I Linux har man stor valfrihet och man har möjlighet att kunna göra sitt system både osäkert och säkert, det är upp till en själv. Men när man installerar sitt system så sätts det initialt upp med många säkra inställningar. Man får till exempel inte göra så mycket som en vanlig användare utan man behöver ofta skriva in lösenord för att installera program eller göra mer avancerade inställningar.

## Rättigheter

### Vanlig användare
En vanlig användare får använda datorn och de program som finns samt hantera de filer som finns i respektive hem-mapp. Inget mer. Ska man ändra inställningar eller installera nya program behöver man logga in som root användaren.

### root användaren
root användare finns i alla Linux-operativsystem. root användaren har fulla rättigheter på datorn och får göra vad som helst, till och med ta bort hela filsystemet. Därför är det naturligt att distributionerna kräver starka lösenord för root användaren och det är heller inte möjligt att logga in som root-användaren via nätverket, om man inte ställer in det. Ska man köra kommandon som en vanlig användare som kräver root-rättigheter, finns ett kommando som heter 

    sudo

som man skriver innan man installerar ett program till exempel. Då används root rättigheter just till det man vill göra, sen är man en vanlig användare igen.

## Serverversion
De flesta distributioner har en *desktop*-variant och en *server*-variant av sitt operativsystem. Den stora skillnaden mellan desktop och server är att server varianten inte har en fönsterhanterare utan endast CLI (command line interface, alltså text). Detta för att serverns datorkraft endast ska användas till 

## Support

## Anpassning

## Applikationer

## bash

## Molntjänster