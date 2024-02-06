
+++
title = "Linux kommandon filer"
date = "2024-02-06T11:08:14+02:00"
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["EE", "teknik", "linux"]
keywords = ["", ""]
description = ""
showFullContent = false
readingTime = false
hideComments = false
color = "" #color from the theme settings
+++

# Linux kommandon för filer

## Mål

Med hjälp av detta materialet ska ni kunna känna till olika vanliga kommandon man kan använda i linux-terminalen för att hantera filer och få ut systeminformation. 

## Kommandon för filer

### ls
ls står för *list* och skriver ut vilka filer och mappar som finns i mappen där du står. Vill du se vilka filer som finns i en annan mapp kan du skriva

    ls *annan_mapp*

### pwd

pwd står för *print working directory* och skriver ut var för någonstans i filsystemet du står just nu

### cd

Står för *change directory* och byter mapp som du står i. 

    cd *mapp_som_du_vill_byta_till*
    
**Tips:**<br>
**om du inte orkar skriva ut hela mappen så kan du skriva de först bokstäverna och sen trycka på *tab*-tangenten så hittar terminalen de som liknar, tryck fler gånger på tabb för att byta**<br>
**Linux är känslig mot små och stora bokstäver**

cd har vissa inbyggda genvägar som kan hjälpa till:

    cd ~ = tar dig till din hemmapp
    cd - = tar dig till den förra mappen du var i
    cd .. = tar dig till mappen *"ett steg upp"*
    
cd kan byta mapp fler gånger ner i trädet. Till exempel:

    cd mapp/undermapp/underundermapp/

### mkdir

Står för *MaKe DIRectory* och skapar en mapp

    mkdir ny_mapp
   
### rmdir

Står för *ReMove DIRectory* och tar bort en **tom** mapp

    rmdir ny_mapp
   
Om du behöver ta bort en mapp som inte är tom, behöver du köra [rm]({{< ref "#rm" >}} "rm")

### touch

touch *rör* en fil och kan användas för att skapa en tom fil, eller för att uppdatera tiden som filen har ändrats.

    touch ny_fil
   
### rm

Står för *ReMove* och tar bort filer eller mappar.

    rm ny_fil

**Tips:**
**om du vill ta bort alla filer som har filändelsen .txt (textfiler) så kan du använda ett *wildcard*.**

    rm *.txt
    
Om du vill ta bort en mapp behöver du köra rm med växeln *-r* som står för *Recursive*. Detta tar bort en mapp med alla filer och undermappar i.

    rm -r mapp
    
Tänk på att när du använder rm så hamnar inte filerna i någon papperskorg, utan borttagandet är oåterkalleligt. Om du är osäker kan du använda 

    rm -i

då kommer kommandot fråga dig om du är säker på att du vill ta bort varje fil.

### cp

Står för "CoPy" och kopierar filer eller mappar. Exempel:

    cp fil kopierad_fil

kopierar filen *fil* till *kopierad_fil*. *kopierad_fil* kan man lägga i en annan mapp. Exempel

    cp fil annan_mapp/kopierad_fil
    
Vill du kopiera en mapp med allt dess innehåll måste du lägga till flaggan *-r*, som också står för *Recursive*. Exempel:

    cp -r mapp_med_filer kopierad_mapp_med_filer
    
### mv

Står för *MoVe* och flyttar en mapp eller fil. Används för att byta namn på filer. Exempel:

    mv fil fil_med_nytt_namn

Detta byter namn på *fil*, alltså flyttar den, till det nya namnet *fil_med_nytt_namn*. Du kan såklart också flytta filen till en annan mapp.

    mv fil annan_mapp/fil_med_nytt_namn
    
För att flytta filen "uppåt" i filsystemet:

    mv fil ../fil_med_nytt_namn
    
# Övning

Nu ska du testa dina kunskaper och arbeta med en filstruktur. Strukturen ska likna en struktur man använder när man jobbar med hemsidor, där vi har olika mappar för statiskt innehåll som html, css och bilder. En annan mapp för dynamiskt innehåll som js filer. En annan mapp där vi lägger sådant som har med konfiguration av servern att göra.

 - [] navigera till din hemmapp med hjälp av *cd*
 - [] skapa en mapp som heter hemsida 
 - [] gå in i mappen du har skapat
 - [] här ska vi nu skapa vår struktur. Börja med att skapa en mapp som heter public
 - [] gå in i mappen du har skapat
 - [] nu ska du skapa lite mappar för att strukturera hemsidan, skapa

        - css
        - html
        - images
        - js
    
 - [] i css-mappen, skapa två mappar

        - fonts
        - styles

- [] ladda ner några bilder och lägg i hemmappen, ladda ner bilder kan du göra med din webbläsare, sen får du flytta bilderna till *images* mappen som du har skapat, använd *mv* eller *cp* beroende på om du vill flytta eller kopiera bilderna.
- [] Om du kör kommandot *tree* i terminalen när du står i mappen *hemsida* bör den printa ut något som liknar:

~~~
├── css
│   ├── fonts
│   └── styles
├── html
├── images
│   ├── bild1.jpg
│   └── bild.jpg
└── js
~~~
som är din mappstruktur.

==Finns inte programmet *tree* så får du installera det==

    sudo apt install tree -y

    
## Resultat
Nu har du skapat en mapp struktur med hjälp av terminalen i linux. Nu ska vi testa att manipulera det vi har gjort.

Vi döpte vår mapp till *hemsida*, nu ska vi döpa om mappen till kagg-hemsida.

- [] med hjälp av *cd*, ändra så att du står i samma mapp som din mapp *hemsida* ligger. Med andra ord, kör du *ls* så bör din mapp *hemsida* synas.
- [] det vi har skapat är egentligen en hemsida-mall, så vi döper om mappen *hemsida* till *hemsida_mall*, med hjälp av kommandot *mv*
- [] Nu ska vi skapa en ny hemsida så vi kopierar *hemsida_mall* till en ny mapp som vi kallar *hemsida_kagg*, med hjälp av kommadot *cp*
    
Nu har vi en färdig struktur för en hemsida som vi kan jobba med.

## Extrauppgifter

Gör ett bash skript för att skapa den här strukturen. Detta gör man genom att man skapar en fil där man skriver in alla kommandon som ni har använt och skriptet kommer köra dessa kommandon i tur och ordning uppifrån och ner.

Packa ihop er mapp med hjälp av terminalen och skapa en komprimerad fil. Här finns det olika vägar att ta:

    tar + gzip - Det vanligaste programmet i linux-världen är tar
    zip - Använder samma algoritm för komprimering som .zip filer i windows
    7zip - relativt nytt program för komprimering.

Ta själva reda på hur programmen fungerar och välj ett. *man* kommandot i linux kan ge er hjälp kring hur de fungerar.