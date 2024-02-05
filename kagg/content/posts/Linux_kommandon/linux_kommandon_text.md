+++
title = "Linux kommandon text"
date = "2024-02-05T11:18:14+02:00"
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

# Linux kommandon för fileditering

## Mål

Nu ska ni använda terminalen för att ändra i textfiler.

## Syfte

Att kunna ändra i textfiler från terminalen är väldigt viktigt då man många gånger inte har tillgång till ett GUI (Graphical User Interface) när man har en server igång i molnet till exempel. Att köra med ett GUI tar extra kraft från en maskin, kraft som man oftast vill ska användas till att serva webbsidor eller svara på olika frågor från klienter.

## Textprogram

Det finns väldigt många olika program för att jobba med text-filer i linux-terminalen. De vi ska gå igenom här är:

    nano - texteditor som ofta finns installerad 
    cat - för att snabbt kolla i en text fil
    grep - verktyg för att söka efter text
    less - för att snabbt kolla i en textfil, med skroll
    head, tail - kolla de översta/understa raderna i en textfil
    vim - texteditor som ofta finns installerad 
    
## Testdokument

Vi ska köra lite exempel med filer så vi kan börja med att skapa en index-sida för vår hemsida som vi gjorde 
[här]({{< ref "linux_kommandon.md#Övning" >}} "När vi gjorde hemside mall ").

- [] Ta dig till *html*-mappen för din hemsida.
- [] Nu ska vi skapa en *index.html* fil, kör 
~~~
    nano index.md
~~~
![nano](/linux_nano.png)
    
Det vi ser på skärmen är nu en texteditor som heter nano, det är en väldigt simpel text editor där man bara skriver inte texten man vill ha och sen sparar. Det finns vissa *snabbkommandon* som är bra att känna till:

    CTRL + S - Spara
    CTRL + O - Spara som...
    CTRL + X - Avsluta programmet
    ALT + U - Ångra
    CTRL + K - Klipp ut raden du står på
    ALT + 6 - Kopiera raden du står på
    CTRL + U - Klistra in raden du står på.

Nu ska vi göra en enkel hemsida. Klistra in följande i ditt dokument:

~~~html
<html>
<body>
Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 Integer mollis sodales mauris, vitae facilisis nibh.
 Vestibulum at auctor leo, nec congue urna.
 Phasellus id lacus ornare, posuere urna non, posuere nisl.
 Etiam in ultrices elit.
 Ut semper ligula sit amet arcu congue pretium.
 Mauris sit amet nibh lacus.
 Nulla accumsan facilisis diam, vel consequat tellus pretium ut.
 Pellentesque imperdiet lacinia tellus ut tincidunt.
 Ut varius, tortor nec gravida volutpat, orci velit convallis nunc, et efficitur est sem ut augue.
 Donec rutrum elit a condimentum dictum.
 Nunc ipsum lorem, sagittis ac turpis eget, volutpat convallis lorem.
 Integer convallis mi quis ante rhoncus tristique.


Suspendisse ut iaculis mi.
 Fusce pulvinar ipsum justo, eu accumsan ex rutrum et.
 Curabitur scelerisque quis felis sed placerat.
 Proin dolor dui, rutrum in sem ac, dictum auctor augue.
 Etiam euismod dictum augue, id eleifend dui rhoncus aliquam.
 Proin at viverra quam.
 Maecenas fermentum vitae sem sit amet facilisis.
 Aenean elementum, libero vitae iaculis aliquam, ex eros luctus ipsum, non scelerisque tortor diam eget urna.
 In ultrices luctus maximus.
 Suspendisse augue enim, porta eu efficitur at, varius et lorem.


Vestibulum molestie turpis eu diam finibus rutrum.
 Nam convallis bibendum auctor.
 Suspendisse hendrerit odio ac accumsan maximus.
 Nulla eu ante a diam tempor ullamcorper sit amet a purus.
 Nunc maximus, magna a lacinia elementum, nunc lectus suscipit erat, sit amet aliquet quam leo non ligula.
 Nam suscipit dui metus, vitae ornare ligula tincidunt nec.
 Nam eget lectus commodo, viverra leo eget, venenatis nisi.
 Nulla et orci a lectus egestas consequat.
 Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 Nullam sollicitudin ante quis ipsum dapibus, vel mollis est mollis.
 Phasellus eu lobortis diam, vel tincidunt lacus.
 Fusce sed metus ac augue porttitor luctus.


Pellentesque aliquam rhoncus elementum.
 Donec ultrices, ante eget mattis scelerisque, sapien ipsum pretium turpis, eget sollicitudin lorem nibh non neque.
 Mauris ornare est et urna ultricies, hendrerit sollicitudin nunc tincidunt.
 Etiam vel vestibulum magna, vel ultrices felis.
 Nam in consectetur diam, lacinia volutpat nisl.
 Nullam id turpis in sem pulvinar fermentum non a nulla.
 Morbi cursus ultricies turpis, vitae iaculis dolor scelerisque vel.
 In id justo dui.
 Maecenas vitae neque rhoncus, lobortis orci vitae, malesuada magna.


Praesent a quam risus.
Phasellus dapibus massa eget purus aliquet ullamcorper.
Cras interdum tincidunt quam, vel commodo quam ornare nec.
Sed porta nulla at sapien elementum, quis blandit mi consequat.
Sed accumsan lacus felis, sed faucibus justo iaculis a.
Phasellus iaculis vehicula pellentesque.
Donec ullamcorper, ligula ornare dignissim placerat, nisi dui finibus mi, quis dictum nibh quam condimentum tortor.
In lobortis gravida neque sit amet dignissim.
Curabitur accumsan leo non pharetra gravida.
Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
Vivamus massa ipsum, hendrerit non commodo vitae, rutrum eu arcu.
Integer ornare nisl a arcu iaculis, a consectetur justo bibendum.
Nulla et nisl nec risus mattis mattis non at nisi.

</body>
</html>
~~~
    
Och nu har vi en enkel hemsida. För att spara dokumentet, tryck *CTRL + S*. För att ta dig ut ur nano tryck *CTRL + X*.

Testa köra 

    cat index.html
    
Nu borde hela hemsidan printas ut på skärmen. 

## Pipes

En mycket användbar sak i terminalen är pipes, eller rör, som man kan använda för att länka ihop två program.

I detta exempel ska vi använda *grep* för att söka upp ord i dokumentet. Det är ju rätt besvärligt att behöva leta efter ett ord i dokumentet, då är det tur att det finns program som är gjorda för just detta. 

*grep* är jättebra för att söka efter ord i text, MEN den kan inte öppna filer. Då är det tur att vi har programmet *cat* som är jättebra för att öppna filer. Och genom att slå ihop dessa programmen och ta det som *cat* printar ut och slå in det i *grep*-programmet, så kan vi söka i dokumentet.

En pipe (|) används för att åstadkomma just detta. Pipe tecknet hittar du på tangenten till vänster om *z* + ALT-GR. Alltså

    ALT-GR + <
    
Testa nu att köra 

    cat index.html | grep mi

Hur många rader printar grep ut? Alltså hur många rader finns det med texten *mi*?

Det kan tyckas vara ett onödigt sätt att köra två program bara för att söka efter lite text men tanken för linux program är att man ska göra program som är bra på en sak, och med hjälp av pipes kan man kombinera programmen med varandra.

## less

*less* är ett program som visar innehållet i filen liknande cat, med skillnaden att med *less* kan man stega runt i textfilen. Man kan gå upp och ner i dokumentet med hjälp av piltangenterna. *less* läser endast in den datan i textfilen som den behöver för stunden, vilket gör att den är effektiv för väldigt stora filer, då den kan öppna de utan att ladda in allting, till skillnad mot *nano*.

För att komma ut ur less kan man använda tangenten *q*.

## head, tail

*head* och *tail* är program som printar ut de sista och de första raderna ur en textfil. Dessa program används i huvudsak för att kolla de senaste ändringarna i "logg"-filer, alltså filer som talar om vad olika program eller system gör, eller vad som har gått fel.

## vim

*vim* är ett väldigt populärt textredigeringsprogram som *nano*. Skillnaden är att *vim* är mer avancerat och har mycket större funktionalitet.

*vim* står för "vi iMproved" och är en vidareutveckling av programmet *vi* som släpptes år 1979. *vi* var utvecklat för eran runt 70- och 80-talet då hastigheterna för nätverk var så snabba så att en människa kunde läsa tecknen som skickades mellan datorer snabbare än vad maskinerna kunde skicka de. Det var utvecklat för en ålder som inte var aktuell längre, men *vi* har under lång tid varit *default*-texteditor för linux-system. 

År 1991 släppte Bram Moolenaar en utvecklad version av *vi* som han kallade för *vim*. *vim* finns installerat på de flesta linux operativsystem och är betydligt mer avancerat än *nano*. *vim* har en högre inlärningskurva än *nano*.

Om man öppnar en fil i vim

    vim index.html
    
möts man av ett fönster som visar innehållet i filen, men försöker man skriva så händer det olika grejer beroende på vilken tangent man trycker på. Det är för att när man öppnar filen hamnar man i **normal**-mode, där man kan använda tangenterna för att köra olika kommandon i *vim*. För att komma till **insert**-läget, där man skriva text är det bara att trycka på *i*-tangenten.

När man är i **insert**-läget kan man skriva in text, och *vim* fungerar på ungefär samma sätt som nano.

För att spara så behöver man ta sig tillbaka till **normal**-läget genom att trycka på *Esc*-knappen. När man är i **normal**-läget så skriver man

    :w
    Enter

för att spara och för att avsluta:

    :q
    Enter

Att lära sig *vim* tar lång tid men är en bra kunskap att kunna då många system har det, och ibland kanske *vim* är enda vägen att göra stora ändringar i system.

Många programmeringseditorer har tillägg som lägger till *vim*-funktionalitet som tillexempel **visual studio code**.

## Extrauppgifter

### sed

sed är ett program som är utvecklat för att söka och ersätta text i filer. Det använder **reguljära uttryck**. Ta reda på hur sed fungerar och använd programmet för att byta ut alla "mi" på er hemsida till "kagg".