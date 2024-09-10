+++
title = "Nätverkssäkerhet"
date = "2024-09-02T10:34:04+02:00"
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["nätverk", "nätverkssäkerhet"]
keywords = ["", ""]
description = ""
showFullContent = false
readingTime = false
hideComments = false
color = "" #color from the theme settings
+++


# Nätverkssäkerhet

## Syfte
I detta dokument kommer vi gå igenom vissa övergripande begrepp som har med nätverkssäkerhet att göra. Efter ni läst igenom detta så kommer ni ha mer kunskaper angående nätverkssäkerhet, varför man ska använda det och hur det fungerar.

## Varför nätverkssäkerhet

Under 90-talet när internet var i sin linda så var nätverkssäkerhet ingenting man brydde sig så mycket om. Internet användes inte för känsliga uppgifter som bankärenden eller kreditkort. All trafik på internet skedde okrypterat och det var lite *vilda västern* på internet med primitiva hacker attacker och *worms* som infekterade datorsystem, men på den tiden var det väldigt oskyldiga attacker där attackerare bara ville testa vad som gick att göra.

Allt eftersom tiden gick och fler och fler tjänster hamnade på internet, som banker och butiker där man använde sitt kreditkort, så upptäckte man behovet av att skydda användarnas data från attacker. Arbetet påbörjades med att uppfinna algoritmer som kunde kryptera trafiken på internet samtidigt som man inte ville slöa ner hastigheten. Datorerna och uppkopplingarna till internet på den tiden var inte särskilt snabba.

## SSL/TLS

SSL/TLS är ett av begreppen som används allra mest på internet idag. Det är den här tekniken som presenteras i webbläsaren på adressfältet där det finns ett *hänglås* och det står *connection secure*.

**SSL** kom först och utvecklades under 90-talet av ett företag som heter *netscape*. De ville skapa ett protokoll för att säkra upp internet. SSL var till en början väldigt buggigt och osäkert men blev efter några versioner riktigt bra. Problemet var enkelt förklarat *microsoft* som inte ville använda en annan teknik för sina egna webbläsare.

Därför skapades **TLS**. **IETF** (*Internet Engineering TaskForce*) fick som uppdrag att skapa ett protokoll som alla webbläsare kunde stödja. De jobbade vidare på **SSL** och skapade ett nytt protokoll som heter **TLS** (*Transport Layer Security*).

Det som används idag är **TLS** fastän att det ofta står *TLS/SSL*.

### TLS

TLS är ett *asymmetrisk* kommunikationsprotokoll som bygger helt på öppen källkod. Kommunikationsprotokollet är alltså inga hemligheter, tvärtom, det ligger som öppen källkod för att forskare och matematiker ska kunna säkerställa att algoritmen fungerar. <a href="https://github.com/openssl/openssl">Öppen källkod till OpenSSL</a> 

Protkollet är ett *asymmetriskt* protkoll. Det betyder att enheterna som ska kommunicera med varandra måste utbyta information om sig själva först över det publika nätverket. Detta är en stor säkerhetsrisk som har tagit lång tid att utveckla så det fungerar på ett säkert sätt, eftersom det alltid finns risken att det finns en angripare som lyssnar av kommunikationen mellan enheterna.

Så här kan en assymetrisk kommunikation med *TLS* se ut.

| Dator | server |
| --- | --- |
| Hej, jag vill gärna snacka med dig | |
| | Ok, jag kör den här versionen av TLS, kan du köra det också? |
| Ja det kan jag| |
| Här är min publika nyckel | |
| | Uppfattat här är min, nu kan vi snacka säkert |

Den assymetriska kommunikationen använder **Diffie Hellman key exchange** som metod för att upprätta säker kommunikation.

En sista sak som är viktig att förstå om *TLS* är att det arbetar på *Transport*-lagret i **OSI** modellen. Detta gör att data-paketen packas ihop på ett krypterat sätt i en förutbestämd följd enligt OSI-modellen.

## Diffie Hellman key exchange

Idag på internet sker mycket av kommunikationen över öppna nätverk som internet där det är lätt för en angripare att lyssna av trafiken som skickas över nätverket. För att upprätta säker kommunikation mellan två enheter måste de komma överens om vilka nycklar som ska användas för att kryptera och dekryptera informationen.

Med Diffie Hellman kan man utväxla nycklar med andra datorer utan att dela med sig av sin hemliga nyckel. Detta gör man för att säkerställa att den enheten man pratar med är samma dator.

Det går till så här: 

| Dator | server |
| --- | --- |
| Jag har en privat nyckel som jag inte delar med mig av | Jag har en privat nyckel som jag inte delar med mig av |
| Hej server, jag vill prata med dig | |
| | Hej, jag pratar gärna men då ska vi göra det säkert |
| | De här gemensamma värdena ska vi använda |
| Jag gör lite matte och kombinerar min privata nyckel ihop med de gemensamma parametrarna |  Jag gör lite matte och kombinerar min privata nyckel ihop med de gemensamma parametrarna |
| Här skickar jag det jag räknade ut, det är min publika nyckel |Här skickar jag det jag räknade ut, det är min publika nyckel |
|  Okej, nu sparar jag undan resultatet av detta och förväntar mig att vi alltid får samma svar så jag vet att det är du | Okej, nu sparar jag undan resultatet av detta och förväntar mig att vi alltid får samma svar så jag vet att det är du |

För hög säkerhet är det viktigt att de gemensamma värdena man använder är väldigt stora och att det är ett primtal. 
