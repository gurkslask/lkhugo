+++
title = "Windows_konfigurationsovning"
date = "2025-08-12T10:14:56+02:00"
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

# Översikt
Idag ska ni skapa en virtuell maskin med windows 11, och ni ska ställa in den enligt instruktioner nedan.

## Syfte
Denna övningen ska ge er tillfälle att själva utforska inställningarna i operativsystemet. Ni ska konfigurera operativsystemet efter de punkter som listas nedan, men exakt hur man gör detta ska ni ta reda på själva. Det finns några olika sätt:
 - Googla
 - Klicka runt i *inställningar* och se om ni hittar det ni söker efter
 - Fråga AI
 - Fråga lärare, men försök att lösa det själva i första hand
 
 **Var inte rädda att försöka själva och testa er fram**. Det är ingenting som kan gå sönder utan det är en fördel om ni bara testar er fram.

## Dokumentation
Alla steg ni gör ska dokumenteras, och med det menas att ni ska ta en *screenshot* ihop med en enkel text. Dokumentationens syfte är att kunden ska få ett kvitto på vad det är som har gjorts.
## Hur kan detta passa i verkligheten
Du jobbar som IT-tekniker på ett stort företag, och en nyanställd vill att du konfigurerar hans dator eftersom du kan detta bättre och gör det snabbare. 

# Övningar
## Ändra bakgrundsbild
Skapa en bild i paint och lägg den som bakgrundsbild

## Skapa en ny användare
Skapa en ny användare som heter *Pelle Pelleson* som ska ha ett **starkt** lösenord. **Tänk på att dokumentera lösenorder**
Testa så det går att logga in som användaren

## Ställa in skärmsläckare 
Ställ in så att en skärmsläckare går igång efter 5 minuter

## Anpassa startmenyn
Låt eleverna lägga till eller ta bort appar från startmenyn och anpassa layouten.

## Installera program 
Installera programmen:
 - Libreoffice
 - GIMP
 - Powertoys
 - Firefox

## Sätta upp nätverksdelning
Ställ så att en mapp på din dator delas ut på nätverket. När du är färdig ska du kunna komma åt mappen *utanför* din virtuella maskin. Det ska inte vara användarnamn eller lösenord.

## Installera drivrutin
Installera drivrutin för att kommunicera med ESP32 bland annat
[Länk](https://www.silabs.com/software-and-tools/usb-to-uart-bridge-vcp-drivers?tab=downloads)

## Kör systemåterställning
Skapa en återställningspunkt, detta är som att man *sparar* operativsystemet. Detta kan man använda för att *rädda* ett operativsystem.

Testa sedan att återställa systemet "tillbaka" till din återställningspunkt.

## Konfigurera Windows-brandväggen
I en vanlig installation av windows 11 så är ping-funktionen avstängd (ICMP-protokollet). Du ska tillåta ping på datorn

# Policy för användare
I windows kan man ställa in hur mycket olika användare kan göra via något som kallas **grupp-principer**. Med detta kan man begränsa användarens möjlighet att ställa operativsystemet. Detta är användbart för att användaren inte ska kunna göra fel konfiguration.

Dessa inställningar ska **bara gällla användaren du har skapat**!

Ett sätt att få det här att fungera är att köra programmet *Micosoft Management Console* som man startar på följande vis:


    Windows-tangent + r (Ni ska alltså trycka på dessa knappar samtidigt på tangentbordet)
    mmc (Skriv in detta i fönstret)
    enter (Tryck på *enter* på tangentbordet)
    


## Ställ in skrivbordsbakgrund
Ställ in så att användaren inte kan ändra skrivbordsbakgrund, utan istället ska skrivbordet visa den bild du har valt.

## Ställ in så att användaren inte kan ändra på sina nätverksanslutningar
