+++
title = "Powershell Ip-changer"
date = "2023-05-11"
author = "Alex"
authorTwitter = "" #do not include @
cover = ""
tags = ["EE", "Teknik", "Övning", "Powershell"]
keywords = ["", ""]
description = ""
showFullContent = false
+++

# Mål

Skapa ett powershell-skript som frågar efter IP-adress och byter IP-adress på ett nätverkskort.

# Beskrivning

Ni ska nu använda powershell för att ändra IP-adress på er windows dator, det finns många sätt att ändra IP-adress i windows, men nu ska ni använda skript-språket *powershell* för att göra detta.

# Tillvägagångssätt

Använd programmet *Powershell ISE* för att skapa ett powershell skript.

# Pseudo-kod

Här kommer ordningen ni behöver göra saker i för att få det att funka. Denna ordningen är bara ett förslag som funkade för mig, får ni det att funka på annat sätt så är det också OK.

 - Lista vilka nätverkskort som finns på datorn **(Get-Netadapter)**
 - Fråga användaren vilket nätverkskort den vill ändra på **(Read-Host, Write-Output)**
 - Fråga användaren vilken IP-adress den vill ställa in. **(Read-Host)**
 - Ta bort den gamla IP-adressen på nätverkskortet **(Remove-NetIPAdress, Remove-NetRoute)** 
 - Ställ in den nya IP-adressen på nätverkskortet **(New-NetIPAdress)**

# När är ni klara
Ni är klara då ni skapat ett skript som byter IP-adress till den man vill ha. 

När man är färdig med detta så:
 - Lägg till funktion för att ändra *nätmask* och *default gateway*
 - Lägg till så att programmet kollar om man skriver in en giltig ip-adress (4 siffror som är mellan 0-255)
 - Kommentera koden på svenska eller engelska