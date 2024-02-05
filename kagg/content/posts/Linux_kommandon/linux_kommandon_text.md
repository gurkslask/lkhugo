+++
title = "Linux kommandon text"
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

# Linux kommandon för fileditering

## Mål

Nu ska ni använda terminalen för att ändra i textfiler.

## Syfte

Att kunna ändra i textfiler från terminalen är väldigt viktigt då man många gånger inte har tillgång till ett GUI (Graphical User Interface) när man har en server igång i molnet till exempel. Att köra med ett GUI tar extra kraft från en maskin, kraft som man oftast vill ska användas till att serva webbsidor eller svara på olika frågor från klienter.

## Textprogram

Det finns väldigt många olika program för att jobba med text-filer i linux-terminalen. De vi ska gå igenom här är:

    cat - för att snabbt kolla i en text fil
    vim - texteditor som ofta finns installerad 
    nano - texteditor som ofta finns installerad 
    grep - verktyg för att söka efter text
    less - för att snabbt kolla i en textfil, med skroll
    top - kolla de översta raderna i en textfil
    
## Testdokument

Vi ska köra lite exempel med filer så vi kan börja med att skapa en index-sida för vår hemsida som vi gjorde 
[här]({{< ref "linux_kommandon.md#Övning" >}} "När vi gjorde hemside mall ").

- [] Ta dig till *html*-mappen för din hemsida.
- [] Nu ska vi skapa en *index.html* fil, kör 
~~~
    nano index.md
~~~
![nano](/linux_nano.png)
    

    