+++
title = "Hack_server_03"
date = "2023-10-11T14:36:16+02:00"
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["", ""]
keywords = ["", ""]
description = ""
showFullContent = false
readingTime = false
hideComments = false
color = "" #color from the theme settings
+++

Nu ska vi försöka knäcka lösenordet för root kontot för datorn så att vi kommer in och kan ta över hela systemet. Det finns en fil på datorn som heter 

    /etc/shadow

Här finns alla lösenord på systemet, men de är hashade, precis som wifi-lösenordet innan. Och än värre så är lösenorden hashade med sha-512, det är alltså 512 bitar som vi kan jämföra med wifi lösenordet som bara är 128. Det kommer alltså ta MYCKET längre tid att knäcka dessa lösenord, för vi måste hasha alla lösenord som vi har i en lista och sen jämföra hashen mot hashen som finns i "shadow"-filen.

Steg 1 är att vi vill få ut hashen för root-användaren. Om vi skriver

    cat /etc/shadow

så printar datorn ut alla användare på systemet med deras hash. Vi vill ha root användaren. Därför kan vi greppa:

    cat /etc/shadow | grep root

och nu printar datorn ut endast root användarens hash. Det här vill vi spara ner till en fil:

    cat /etc/shadow | grep root > hash.txt

Nu är root användarens hash i filen "hash.txt" som vi kan använda. Vi ska nu köra igång programmet som ska hasha de lösenord som finns i "rockyou_1.txt"-filen och sen jämföra det med root-användarens. Det gör man så här:

    hashcat -m 1800 -a 0 hash.txt ./rockyou_1.txt

Vi väljer "-m 1800" så att programmet vet att vi jobbar med SHA-512, det finns i hjälpen de olika lägena om det är någon annan hash-algoritm som används. "-a 0" så säger vi till programmet att den ska hitta rätt hash värden. "hash.txt" är filen med root användarens hash lösenord som vi ska jobba mot och "./rockyou.txt" är filen med en massa lösenord som programmet ska testa. 

När programmet är färdigt kommer den att printa ut hashen och lösenordet för root användaren som vi kan använda för att logga in som root med nedanstående kommando

    ssh root@*IPADRESS*
