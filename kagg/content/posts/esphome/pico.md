+++
title = "Pico"
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