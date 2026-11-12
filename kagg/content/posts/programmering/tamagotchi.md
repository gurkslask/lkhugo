+++
title = "Tamagotchi"
date = "2026-11-12T09:47:58+01:00"
#dateFormat = "2006-01-02" # This value can be configured for per-post date formatting
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["", ""]
keywords = ["", ""]
description = "Programmera en tamagotchi"
showFullContent = false
readingTime = false
hideComments = false
+++

# Programmera en tamagotchi

Du ska bygga ett program där du ska ta hand om ett digitalt husdjur. Ni ska använda en *while*-loop som ska motsvara en dag i tamagotchins liv.

## Steg 1 - Meny 

Ni ska nu bygga en meny där användaren får välja hur den vill interagera med sin tamagotchi. Menyvalen är dessa:

 - Mata din tamagotchi (Skriv ut att den nu är mätt)
 - Lek med din tamagotchi (Den tyckte det var roligt men är nu trött)
 - Låt tamagotchin sova (Den får nu tillbaka energi)
 - Avsluta spelet

Efter varje val, printa ut vad du gör med din tamagotchi.


## Steg 2 - Statusvariabler

Skapa variabler som säger om din tamagotchi är:
 - trött
 - hungrig
 - leksugen

Och printa ut till användaren om den är leksugen tillexempel. 

Ändra variablerna beroende på vad man gör med sin tamagotchi.

Om du tillexempel matar din tamagotchi så kan du sänka *hungrig* variabeln. Till exempel:

    if mata_tamagotchin:
        hungrig = hungrig - 10

Om tamagotchin blir för hungrig så avslutas spelet (tamagotchin dör). Exempel:

    if hungrig > 100:
        print("Din tamagotchi dog :-( ")

## Steg 3 - slumpade händelser

Använd **random** modulen för att välja slumpmässiga händelser efter varje runda. 

Till exempel så efter en runda så hittar din tamagotchin en godis på golver så att den får extra energi. 

Eller så händer något negativt som att den blir sjuk och tappar energi.

## Steg 4 - Inmatningskontroll

Om användaren råkar skriva fel, eller välja ett menyval som inte finns, ta hand om det felet på ett snyggt sätt. 

Programmera programmet så det accepterar både stora och små bokstäver.

Om användaren skriver fel menyval, låt användaren försöka igen, och printa ut menyvalen.

## Steg 5 - Åldersräknare

Håll koll på hur gammal din tamagotchi är och ge poäng på hur länge man lyckades hålla sin tamagotchi vid liv.
