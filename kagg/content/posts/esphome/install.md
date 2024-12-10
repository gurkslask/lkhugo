+++
title = "Installera esphome och konfigurera"
date = "2024-09-09T08:44:42+02:00"
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["övning", "EE", "Teknik"]
keywords = ["", ""]
description = "Få igång programmering för en ESP32"
showFullContent = false
readingTime = false
hideComments = false
color = "" #color from the theme settings
+++

# Installera esphome på windows

## Syfte
ESP32 är en mikrodator som är väldigt populär då den är kraftfull, drar lite ström och det finns mycket dokumentation kring den. För att programmera den kan man använda samma mjukvara som för en Arduino, eller så använder man *esphome* som tar bort lite av komplexiteten. Detta ska vi utforska i den här laborationen.

## Installera python

*esphome* kräver programmeringsspråket *python* så det är det första vi måste installera. <a href= "https://www.python.org/ftp/python/3.12.6/python-3.12.6-amd64.exe">Installationen finns här </a>

    https://www.python.org/ftp/python/3.12.6/python-3.12.6-amd64.exe

Kör igång filen som laddades ner. Det här är installationen av Python och **DET ÄR SUPERVIKTIGT** att ni kryssar i **"Add python.exe to PATH"** i början av installationen **PLUS** att ni i slutet av installationen trycker på **Disable path length limit**. 

## Installera esphome

Öppna upp programmet *powershell*. Nu ska vi använda python för att installera programmet *esphome* som vi ska använda för att programmera minidatorn *ESP32*.

Först måste vi uppgradera python-installationen, skriv in detta och tryck \<Enter>

    python -m pip install --upgrade pip
    
Sen måste vi installera programmet *wheel*, skriv in detta och tryck enter

    pip3 install wheel
    
När det är färdigt skriv nu in detta och tryck enter:

    pip3 install esphome
    
Nu är programmet esphome installerat.

## Programmering

Programmeringen i *esphome* sker med en .yaml fil. Där skriver man ner vilken funktionalitet man vill att ESP-modulen ska ha.

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

En enkel konfiguration för esphome **som ni kan använda** är:

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

**Det som ni behöver ändra** är 

 - Namnet för er enhet, här får ni välja vilket ni vill
 - Vilket wifi och lösenord den ska ansluta till, det är alltså det wifi och lösenord som ni har ställt in på routern

## Ladda ner till enheten

Nu ska vi ladda ner yaml koden till enheten. Använd **koden i förra avsnittet och klistra in det i ett textdokument** som ni lägger i er *Dokument*-mapp och döper till *esp.yaml*. Nu ska ni öppna powershell på er dator och skriva

    cd $HOME/Documents

Nu står ni i er dokument-mapp. Om ni kollar vilka filer som finns med hjälp av 

    ls

Så bör *esp.yaml* dyka upp. Då vet ni att ni står på rätt ställe.

Nu ska vi ladda ner programmet till esp enheten. Det gör vi med hjälp av.

    python3 -m esphome run esp.yaml

## Testa lysdiod

Nu har vi ett program som kan styra en lysdiod. Koppla in en lysdiod till GPIO pin 17 med hjälp av ett motstånd och testa surfa in på ESP32's hemsida där ni nu ska kunna styra lysdioden via ett webb-interface. IP-adressen för ESP32 bör dyka upp när ni laddar ner programmet.



# MQTT

MQTT är ett protokoll som vi ska använda för att skicka runt olika värden på nätverket. Det är mycket populärt i hem-automation sammanhang och det är det vi ska använda för att styra servo motorn. Vi ska installera två stycken program för att få detta att fungera:

   - Mosquitto (Serverdelen av MQTT)
   - MQTT Explorer (Klientdelen av MQTT)

## Installation
  
Installation av programmen görs enklast via *winget* kommandot i *powershell*. Öppna powershell som *administratör* och kör:

    winget install mosquitto
    winget install mqtt-explorer

## Konfiguration

Vi har lite konfiguration av MQTT-servern (mosquitto) att göra. Öppna programmet *anteckningar* som **administratör**. Nu ska du öppna konfigurationsfilen som finns på den här sökvägen:

    c:\Program\mosquitto\mosquitto.conf

Här ska vi lägga till lite konfiguration. Lägg till de här raderna med text längst ner i filen och spara sedan filen.

    listener 1883
    allow_anonymous true

## Kör tjänst

För det första måste vi se till att programmet körs. Programmet är en tjänst i windows och tjänster ser man via programmet *services.msc*. Öppna detta som administratör. Hitta *Mosquitto Broker* och högerklicka på den och starta tjänsten.

## Brandvägg
Vi behöver öppna i brandväggen för att tillåta MQTT trafik på datorn som kör MQTT-servern. Kör *powershell* som **Administratör** och klistra in följande kommando som öppnar brandväggen för mosquitto servern.

    New-NetFirewallRule -Name "MQTT" -DisplayName "Tillåt MQTT" -Program "%ProgramFiles%\mosquitto\mosquitto.exe" -Direction Inbound -Action Allow

## Kod för MQTT till ESP32

Nu ska vi lägga in en ny kod till ESP32 som lägger till funktionalitet för att styra en lysdiod med MQTT.

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
        id: lo
        output: light_output
        command_topic: "home/led/set"

    # Här ställer vi in wifi för enheten, wifi-namn och lösenord
    wifi:
        ssid: "2.3005"
        password: "Minne2020"

    captive_portal:

    # Här lägger vi till IP-adress till MQTT servern. HÄR MÅSTE NI ÄNDRA IP ADRESS TILL BROKER för att få det att fungera
    mqtt:
        broker: 192.168.20.206
        id: mqtt_test
    # Här ställer vi in så att så fort ESP32 får ett meddelande så togglar den lysdioden
        on_message:
            topic: "home/led/set"
            then:
            - light.toggle:
                id: lo

## Testa MQTT

Nu borde vi ha fått igång lite MQTT kommunikation, i terminalen där ni laddar ner program så borde det stå att ESP32 har anslutit till MQTT servern och då borde det bara vara att tuta och köra. Kör igång programmet *MQTT-explorer* där ni ställer in så att ni ansluter till IP-adressen för er *MQTT-server*.

Här ser ni all MQTT kommunikation som sker. Här ska ni publicera ett meddelande som ESP32's lysdiod prenumerar på.

I högerkanten kan ni själva publicera ett meddelande som skickas till alla som prenumerar på det. Se bilden och skicka ett likadant meddelande så borde lysdioden växla läge *OFF -> ON* och vice versa varje gång ni skickar ett meddelande.

![Publish](/ESP32/publish.png)

## Servomotor

Nu ska vi koppla in en servo motor. Kolla kopplingsschemat och koppla in den på rätt GPIO. Det ska gå att styra servomotorn via webb-sidan och MQTT servern.

## Kod för servo motor

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
      version: 2


    # Här konfigurerar vi pin nummer 17 så att vi kan styra den
    output:
    - platform: gpio
      pin: GPIO17
      id: light_output

    - platform: ledc
      pin: GPIO5
      id: servo_output
      frequency: 50Hz

    # Här säger vi att pin 17 är en lysdiod som är binär (av/på)
    light:
    - platform: binary
      name: "Lysdiod"
      id: lo
      output: light_output
      command_topic: "home/led/set"

    servo:
      id: my_servo
      output: servo_output

    # Här ställer vi in wifi för enheten, wifi-namn och lösenord
    wifi:
      ssid: "2.3005"
      password: "Minne2020"

    captive_portal:

    sensor:
    - platform: mqtt_subscribe
      name: "Data from topic"
      id: servovalue
      topic: sensors/servo/servo_1
      unit_of_measurement: "%"
      on_value:
        then:
          - servo.write:
             id: my_servo
             level: !lambda |-
               return  (x / 100) - 1;

    number:
    - platform: template
      name: Servo Control
      min_value: -100
      initial_value: 0
      max_value: 100
      step: 1
      optimistic: true
      set_action:
        then:
          - servo.write:
              id: my_servo
              level: !lambda 'return x / 100.0;'

    mqtt:
        broker: 192.168.20.206
        id: mqtt_test
        on_message:
          topic: "home/led/set"
          then:
            - lambda: |-
                if (x == "ON") {
                  id(light_output).turn_on();
                } else if (x == "OFF") {
                  id(light_output).turn_off();
                } 

## DS18b20 - Temperatur

*DS18b20* är en komponent som kan mäta temperatur och leverera det till en ESP32 bland annat. *DS18b20* använder en digital buss som kallas *one-wire*. Varje *DS18b20* har en egen unik adress och det betyder att man kan ha flera stycken *DS18b20* på samma ingång då de alla har olika adresser som man kan använda.

Vi behöver lägga till lite kod för att upptäcka vad adressen är för den *DS18b20* som vi har kopplat in, det gör vi med hjälp av nedanstående kod

    # Er förra kod
    one_wire:
      - platform: gpio
        pin: GPIO16

Här **måste** ni ställa in rätt *GPIO* där ni kopplat in *DS18b20*. I terminalen går det att se vilken address det är på *DS18b20*. När ni har **skrivit ner** vilken address den har så ska vi lägga till lite kod i programmet för att kunna visa temperaturen. **Denna koden måste läggas under "*sensor*".**

    - platform: dallas_temp
      name: temperature
      update_interval: 5s
      address: 0x7e092254908e7328

Här måste ni ställa in **address** till det som ni har fått fram.
