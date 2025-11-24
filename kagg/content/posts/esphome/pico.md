+++
title = "Programmering av raspberry pico W"
date = "2025-11-21T11:18:33+01:00"
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

# Raspberry Pico W

## Syfte
Det här är en uppgift där vi ska lyckas koppla upp en minidator *Raspberry Pico W* till ett wifi-nätverk och där man ska kunna styra en lysdiod via en webbsida. I den här textguiden finns lite kod-exempel som ni kan använda ihop med en [video-guide](https://youtube.com).

## Installation av mjukvara

Programmeringen kommer ske i ett program som heter *thonny*. [Programmet laddas ner här](https://thonny.org/). 

Efter installation behöver ni installera ett bibliotek som heter **picozero**. 

Tryck på 

    Tools > Manage packages...

Om **picozero** redan finns i det vänstra fältet är det redan installerat på er dator. Om det inte gör det får ni söka upp det och installera det i samma fönster.


## Installation av firmware

På er *raspberry pico zero* så finns det ingen *firmware* per default. Den måste vi installera så att raspberryn fattar den koden vi ska skicka till den. Det är väldigt enkelt att göra i **thonny**. Bara tryck **längst ner till höger** i programmet så dyker det upp en meny där ni kan installera *micropython* till enheten.

## Programmering

Nu är ni klara för att börja programmera enheten och kunna skicka ner program. Nedan kommer lite program exempel som ni kan använda medan ni följer video-genomgången. Detta är alltså **kod som jag använder i videos**.

## Import av bibliotek

    import network
    import socket
    from time import sleep
    from picozero import pico_temp_sensor, pico_led
    import machine
    import rp2
    import sys

## Wifi konfiguration

    ssid = '2.3005'
    password = 'Minne2020'

## Connect-funktion

    def connect():
        #Connect to WLAN
        wlan = network.WLAN(network.STA_IF)
        wlan.active(True)
        wlan.connect(ssid, password)
        while wlan.isconnected() == False:
            print('Waiting for connection...')
            sleep(1)
        ip = wlan.ifconfig()[0]
        print(f'Connected on {ip}')
        return ip

## Open_socket-funktion

    def open_socket(ip_till_blocket):
        # Open a socket
        address = (ip_till_blocket, 80)
        connection = socket.socket()
        connection.bind(address)
        connection.listen(1)
        print(connection)
        return connection

## Hemsida

    def hemsida(state):
        htmls = f"""
            <!DOCTYPE html>
            <html>
            <body>
            <form action="./lighton">
            <input type="submit" value="Lampa på" />
            </form>
            <form action="./lightoff">
            <input type="submit" value="Lampa av" />
            </form>
            <form action="./close">
            <input type="submit" value="Stanna server" />
            </form>
            <p>Lysdiod är nu {state}</p>
            </body>
            </html>
        """
        return str(htmls)


## Serve-funktion

    def serve(connection):
        #Start a web server
        state = 'PÅ'
        pico_led.on()
        while True:
            client = connection.accept()[0]
            request = client.recv(1024)
            request = str(request)
            try:
                request = request.split()[1]
            except IndexError:
                pass
            if request == '/lighton?':
                pico_led.on()
                state = 'PÅ'
            elif request =='/lightoff?':
                pico_led.off()
                state = 'AV'
            elif request == '/close?':
                sys.exit()
            html = hemsida(state)
            client.send(html)
            client.close()

## Function call

    ip = connect()
    den_riktiga_connection = open_socket(ip)
    serve(den_riktiga_connection)