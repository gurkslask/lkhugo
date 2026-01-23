+++
title = "Programmering i python med turtle"
date = "2026-01-22"
author = "Alex"
authorTwitter = "" #do not include @
cover = ""
tags = ["Övning", "python", "Teknik", "EE"]
description = ""
showFullContent = false
+++

# turtle programmering 

## Om uppgiften

![bild på turtle](/turtle/1.png)

Idag ska vi programmera i ett programmeringsspråk som heter *python*. Verktyget i *python* som vi ska använda heter *turtle*. Detta innebär att vi ska programmera hur en sköldpadda
rör sig på skärmen. Sköldpaddan kan röra sig framåt och bakåt och rotera bland annat. Här nedan följer ett kodexempel som ni kan börja med:

    # Här importerar vi biblioteket turtle
    import turtle
    # Här importerar vi ett bibliotek som heter tkinter som behövs
    import tkinter
    
    # Här skapar vi en sköldpadda
    t = turtle.Turtle()
    # Nu får vi sköldpaddan och gå framåt 50 punkter (pixlar)
    t.Forward(50)

    # Nu lägger vi till lite kod så att fönstret hålls öppet
    tkinter.mainloop()

De rader som börjar med #-tecknet är kommentarer och är **inte** kod, utan bara en beskrivande text om vad som händer. Koden skrivs uppifrån och ned, så när ni kör programmet 
så börjar programmet överst och går steg för steg neråt i texten och kör den koden.

## Vad behövs för att kunna börja

### Windows

På era datorer behövs följande program:
 - visual studio code (förkortning: vscode)
 - python3

Dessa program borde redan vara installerade på era datorer här upp i G300.

I vscode så kan man installera ett tillägg som heter **python**. Installera detta så kommer det gå lättare för er.

### Chromebook

Följ [guiden här](https://code.visualstudio.com/blogs/2020/12/03/chromebook-get-started)

### För att komma igång

 - Öppna programmet *vscode*
 - Skapa en ny fil genom att **File -> New File...**
 - Spara filen **File -> Save As...**
 - Välj **filformat** det ska vara **python**
 - Välj själv vilket namn filen ska ha, **den måste sluta på .py**
 - Nu har du ett kod fönster uppe, klistra in exempel koden ovanför
 - Testa köra programmet genom att tryck på **ctrl + shift + p samtidigt**
 - Sök sedan upp **Python: Run Python File in Terminal**

## Programmeringshjälp

### Fusklapp: Enkel lista på de vanligaste kommandona:

    forward(x), left(x), right(x)

    pencolor("red"), pensize(x)

    for i in range(x):

    penup(), pendown()

### Få inte panik
När det blir fel, få inte **panik**. När du får ett felmeddelande, läs sista raden högt för dig själv och fundera på om du kan lösa problemet själv

## Uppgifter
Här kommer lite uppgifter som ni ska lösa

### Rita en linje
![linje](/turtle/2.png)
Använd kommandot

    forward

för att lösa uppgiften

### Rita en fyrkant
![fyrkant](/turtle/3.png)
Använd kommandona 

    forward
    right eller left

för att lösa uppgiften

### Använd färger för fyrkanten
![fyrkant](/turtle/5.png)
Använd kommandona

    forward
    right eller left
    pencolor

för att lösa uppgiften

### Gör ett hjärta
![fyrkant](/turtle/heart.png)
Använd kommandona

    forward
    right eller left
    pencolor

för att lösa uppgiften

## for-loop

För att göra saker fler gånger kan man använda en **for-loop**. För att göra en kvadrat där man ska göra fyra linjer kan man göra en for-loop där man gör en fyra streck. 
Titta på koden här under och se om ni förstår.

    # Säg till koden att detta ska köras 4 gånger
    for _ in range(4):
        # Denna koden som är under här körs 4 gånger
        t.forward(50)
        t.right(90)

Bilden som skapas är 
![fyrkant](/turtle/3.png)

### Fem gånger (pentagon)

Koden under här körs istället 5 gånger.

    # Säg till koden att detta ska köras 5 gånger
    for _ in range(5):
        # Denna koden som är under här körs 5 gånger
        t.forward(50)
        t.right(72)


Bilden som skapas är 
![fyrkant](/turtle/five.png)

Det jag har ändrat är hur många **gånger** koden körs och hur mycket sköldpaddan **vrider** sig

### Sex gånger (hexagon)

Koden under här körs istället 6 gånger

    # Säg till koden att detta ska köras 6 gånger
    for _ in range(6):
        # Denna koden som är under här körs 6 gånger
        t.forward(50)
        t.right(60)


Bilden som skapas är 
![fyrkant](/turtle/six.png)


Det jag har ändrat är hur många **gånger** koden körs och hur mycket sköldpaddan **vrider** sig


### Rita KAGG

![fyrkant](/turtle/kagg.png)

För att lyckas med denna så behöver man behärska vanliga linjer och att göra en halvcirkel. Några nya grejer är också:
    
    up() - Man lyften "pennan" som ritar
    down() - Man sätter ner "pennan" som ritar
    seth(0) - Peka sköldpaddan ÖSTER (höger)
    seth(90) - Peka sköldpaddan NORR (uppåt)
    seth(180) - Peka sköldpaddan VÄSTER (vänster)
    seth(270) - Peka sköldpaddan SÖDER (neråt)
