+++
title = "Install"
date = "2024-09-09T08:44:42+02:00"
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

# Installera esphome på windows

## Installera python

*esphome* kräver programmeringsspråket *python* så det är det första vi måste installera. <a href= "https://www.python.org/ftp/python/3.12.6/python-3.12.6-amd64.exe">Installationen finns här </a>

Kör igång filen som laddades ner och tryck på *next* tills det är installerat

## Installera esphome

Öppna upp programmet *powershell*. Nu ska vi använda python för att installera programmet *esphome* som vi ska använda för att programmera minidatorn *ESP32*.
Skriv in detta och tryck på enter

    pip3 install wheel
    
När det är färdigt skriv nu in detta och tryck enter:

    pip3 install esphome
    
Nu är programmet esphome installerat.

## Programmering

Programmeringen i esphome sker med en .yaml fil. Där skriver man ner vilken funktionalitet man vill att ESP-modulen ska ha.

YAML är ett språk som används för att datorerna ska första vad vi människor vill göra och det använder mellanslagstangenten för att gruppera olika grupper. Till exempel:

    Grupp1:
        SubGrupp1:
            Värde: "Ett"
            Beskrivning: "Detta är en beskrivning"
    Grupp2:
        SubGrupp1:
            Värde: "Kagg"
            Beskrivning: "Detta är också en beskrivning"
        SubGrupp2:
            Värde: "Stagg"
            Beskrivning: "Ni börjar fatta det här nu?"

Med den här texten har jag skapat en subgrupp till grupp ett, och **två** subgrupper till grupp 2. Så på det sätt kan man använda yaml för att grupper data.

En enkel konfiguration för esphome är:

    # Här ger vi enheten ett namn
    esphome:
      name: temp1

    # Här skriver vi vad det är för en sorts enhet
    esp32:
      board: az-delivery-devkit-v4
      framework:
        type: arduino

    # Här sätter vi igång så att enheten loggar (skriver ut) information
    logger:

    # Här sätter vi igång så man kan programmera enheten via wifi
    ota:
      - platform: esphome
        password: "no"

    # Här konfigurerar vi en webb-server så man kan se enheten via en webbläsare (chrome till exempel)
    web_server:
      port: 80
      version: 1

    # Här konfigurerar vi pin nummer 17 så att vi kan styra den
    output:
      - platform: gpio
        pin: GPIO17
        id: light_output
    # Här säger vi att pin 17 är en lysdiod som är binär (av/på)
    light:
      - platform: binary
        name: "Lysdiod"
        output: light_output

    # Här ställer vi in wifi för enheten, wifi-namn och lösenord
    wifi:
      ssid: "2.3005"
      password: "Minne2020"

    captive_portal:
    
Här är yaml koden för att dra igång ett enkelt projekt. Det är mycket kod, men mycket är bara konfiguration för att *esphome* ska veta vilken enhet det är och sätta igång wifi. Det enda som är specifikt är egentligen lysdioden på pin nummer 17.

## Ladda ner till enheten

Nu ska vi ladda ner yaml koden till enheten. Använd den koden i förra avsnittet och klistra in det i ett textdokument som ni lägger i er *Dokument*-mapp och döper till *esp.yaml*. Nu ska ni öppna powershell på er dator och skriva

    cd $HOME/Documents

Nu står ni i er dokument-mapp. Om ni kollar vilka filer som finns med hjälp av 

    ls

Så bör *esp.yaml* dyka upp. Då vet ni att ni står på rätt ställe.

Nu ska vi ladda ner programmet till esp enheten. Det gör vi med hjälp av.
