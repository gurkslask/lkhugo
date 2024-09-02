+++
title = "Ipadress"
date = "2024-09-01T07:46:35+02:00"
author = "Alexander"
authorTwitter = "" #do not include @
cover = ""
tags = ["Nätverk", ""]
keywords = ["Nätverk", ""]
description = "IPv4 adress"
showFullContent = false
readingTime = false
hideComments = false
color = "" #color from the theme settings
draft = false
+++

# IP-adress

IP-adressen är adressen till en enhet på nätverket. I det här dokumentet så kommer vi gå igenom hur IP-adressen fungerar.

## Användning

IP-adressen används på ett nätverk för att kunna skicka data-packet till rätt adress. Precis som om man ska skicka ett brev så behövs det en adress, så funkar det också med datorer. Oavsett om det är på internet eller ett LAN med 4 personer så behövs det en adress till varje enhet på nätverket.

Det allra vanligaste för nätverk är att det finns en **DHCP**-server som automatiskt delar ut IP-adresser till alla enheter som vill komma åt nätverket. **DHCP**-servern är oftast inbyggd i **routern**.

## Utseende

En IP-adress har alltid fyra siffror uppdelade med punkter emellan. Exempel:

    1.2.3.4

Varje siffra kan vara mellan 0-255. Och det är på grund av att en IP-adress består av **32-bitar**, och siffrorna som man oftast kallar **oktetter** är **8bitar** var. Med bitar menas antalet binära siffror som kan användas.

En IP-adress är uppdelad i **två** olika adresser, dels **Nät-adressen** och **Host-adressen**. Detta kan liknas med gator som till exempel *exempelgatan 123*. **Nätadressen** kan man likna vid *exempelgatan* och **Host-adressen** kan man likna vid *123*. 

Med en gatuadress är det ju viktigt att det inte finns två stycken *123* adresser på gatan, då vet ju inte brevbäraren vilket hus som är vilket. **Samma sak** är det med **Host-adressen**, den måste vara unik för varje enhet på nätverket.

Vill man vara på samma nätverk så är det viktigt att **Nät-adressen** är samma.

## Nätmask

IP-adressen består alltså av **två** adresser:

    - **Nät-adressen**
    - **Host-adress**

Detta innehåller IP-adressen fastän att den bara har fyra oktetter till exempel:
   
    1.2.3.4

Men det är 32 stycken bitar, uppdelade på fyra siffror

    8bitar (0-255) . 8bitar (0-255) . 8bitar (0-255) . 8bitar (0-255) 

### Nätmasken

Ihop med IP-adressen finns också alltid en nätmask som **avgör vilken del av IP-adressen som är Nät-adress och vilken som är Host-adress**.

Till exempel:

    IP: 192.168.100.100
    Nätmask: 255.255.255.0
    Nätmask i binär form: 11111111.11111111.11111111.00000000

Den här nätmasken säger att de sista 8 bitarna i IP-adressen avgör vilken del av nätmasken som är **Nät-adress** eller **Host-adress**. Alltså den delen av nätmasken som innehåller **nollor** är den delen av IP-adressen som är **Host-adress**, och den delen med **ettor** är **Nät-adressen**.

Med åtta bitar så kan man få till 256 olika kombinationer av **Host-adresser**. Räkneexempel:
    
    1 + 2 + 4 + 8 + 16 + 32 + 64 + 128 = 255 (**plus nollan**) = 256

Alltså kan man ha 256 olika **host-adresser** på ett nätverk med denna nätmask.

Ett annat exempel:

    IP: 192.168.100.100
        Nätmask: 255.255.255.192
        Nätmask i binär form: 11111111.11111111.11111111.11000000
        (192 i binär form är 11000000)

Med denna nätmasken finns det 6 stycken binära tal som kan användas för **Host-adresser**. Räkneexempel:

    1 + 2 + 4 + 8 + 16 + 32 = 63 (**plus nollan**) = 64

På det här nätverket kan man ha 64 stycken olika **host-adresser**.

Det här nätverket är alltså **mindre**, men man ka ha fler **olika** nätverk.

### CIDR
Ett annat sätt att skriva nätmasken är att bara ange hur många ettor som finns i nätmasken. Detta är väldigt vanligt i nätverksvärlden för att det är lättare att skriva. Till exempel:

        Nätmask: 255.255.255.192
        Nätmask i binär form: 11111111.11111111.11111111.11000000
        CIDR: 26

Det är 26 ettor i nätmasken, alltså blir **CIDR: 26**. Det är vanligt att man skriver **IP-adress** och **subnätmask** så här:

    192.168.100.100/26

### Varför nätmask

Varför vill man ha ett mindre nätverk?

- Dela upp nätverk för att lättare administrera de
- Snabbare på grund av att nätverkstrafiken blir mindre
- Säkrare nätverk när man delar upp de
- Effektivare användning av IP-adresser då man kan dela upp nätverk i så stora som man behöver

### Sammanfattning
Nätmasken är ett svårt och ointuitivt begrepp att förstå men är viktigt för att förstå hur datornätverk fungerar.

## Privata IP-adresser
När IPv4 adresserna introducerades för världen var det vissa IP-adresser som blev reserverade för användning utanför internet. Med dessa IP-adresser **går det inte ansluta till internet** utan de är reserverade för andra ändamål.

Dessa är privata IP-adresser och får bara användas på lokala nätverk (LAN)

    10.0.0.0/8
    172.16.0.0/12
    192.168.0.0/16

Loopback adress, används för att nå sin egna dator av vissa program

    127.0.0.0/8

Link local adress, används av datorn om den misslyckas få en IP-adress av DHCP-server

    169.254.0.0/16

Det finns andra adresser som också är reserverade men ej används särskilt mycket
   
    224.0.0.0/4 - Multicast adresser
    240.0.0.0/4 - Adresser reserverade för framtida användning
    192.0.2.0/24 - Adresser reserverade för utbildning
    198.51.100.0/24 - Adresser reserverade för utbildning
    203.0.113.0/24 - Adresser reserverade för utbildning
    100.64.0.0/10 - Används för "Carrier grade NAT"

## IP-problem
Idag används framförallt IPv4 som detta har handlat om. Med hjälp av IPv4 och 32-bitar kan man få fram drygt 4 miljarder IP-adresser. Många av dessa är reserverade som de under delen *"Privata IP-adresser"*, men ändå räcker de inte till för alla människor på jorden och det är ett problem. 

Det har till stor del, avhjälpts med en teknik som kallas **NAT** (*Network adress translation*) som betyder att våra routrar som finns hemma och hos företag kan skapa egna LAN som via routern kan kontakta internet utan att ta upp IP-adresser.
### IPv6
Detta funkar bra för tillfället men det jobbas på att introduceras en ny teknik som heter IPv6 där man går från 32-bitar till **128-bitar**. Detta ger istället för drygt 4 miljarder IP-adresser, 340 undecilljoner IP-adresser.

    128 bitar = 340,282,366,920,938,463,463,374,607,431,768,211,456

För att sätta detta i perspektiv:

- Det finns tillräckligt med IPv6-adresser för att varje sandkorn på jorden skulle kunna ha flera biljoner IP-adresser tilldelade.

Med IPv6 har man inte bara sett till dagens behov utan också framtiden då det ska finnas fler och fler enheter för varje individ. IPv6 har också många nya tekniker inbyggt i protokollet bland annat:
- Ökad säkerhet
- Inbyggd nätmask
- Större addressutrymme
- Mer stöd för routing
- Inbyggt stöd för DHCP
