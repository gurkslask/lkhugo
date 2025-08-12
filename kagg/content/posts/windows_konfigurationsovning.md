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
Visa hur man skapar en återställningspunkt. Detta är en viktig säkerhetsfunktion som kan rädda ett system vid problem. De kan sedan testa att "återställa" systemet.

## Konfigurera Windows-brandväggen
Låt dem skapa en enkel regel i Windows Defender Brandvägg med avancerad säkerhet, till exempel att blockera inkommande trafik på en specifik port.
Kanske för att tillåta ping
