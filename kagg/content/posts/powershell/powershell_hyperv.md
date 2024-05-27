+++
title = "Powershell övning med virtuella maskiner"
date = "2023-05-15"
author = "Alex"
authorTwitter = "" #do not include @
cover = ""
tags = ["EE", "Teknik", "Övning", "Powershell", "Windows"]
description = ""
showFullContent = false
+++

Hyper-V skapa virtuella maskiner med powershell
---
Skapa virtuella maskiner med kommandot New-VM. Hjälp och exempel ligger på https://learn.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/try-hyper-v-powershell

# Uppgift 1:
Skapa en virtuell maskin med namn "Kagg Maskin", 2048 MB minne samt 20 GB Hårddisk. Maskinen ska vara Generation: 1, den ska boota från en "CD". Lägg maskinen under "D:\Kagg Maskin". Gör detta med powershell. 

***
Gör så att maskinen startar med en iso-fil som är kopplad mot maskinen. Kommandot för detta är 

    Set-VMDvdDrive

När man ställer in minne och hårddisk så är default enheten "byte", vill man ändra detta till MegaByte tillexempel använd:

    $minne = $minne * 1Mb

# Uppgift 2:
Gör samma sak men gör det med hjälp av en funktion. Syntaxen för en funktion är:

    function MinFinaFunktion() {  
        param(  
            [string]$Meddelande  
        )  
        Write-Output $Meddelande  
        Write-Output $Meddelande.ToUpper()  
        Write-Output $Meddelande.ToLower()
    }
    MinFinaFunktion "Lars Kagg"

<div style="page-break-after: always;"></div>

# Uppgift 3:
Använd nu funktionen för att skapa virtuella maskiner utifrån en .csv fil. CSV-filen skall ha 3 stycken "kolumner". Dessa är Namn, Minne, Harddrive.
En csv-fil ser ut såhär:

    Namn, Minne, Harddrive
    Lars Kagg 1, 2048, 15000
    Lars Kagg 2, 2048, 16000

För att få in csv filen använd "Import-Csv" och kör sedan en foreach snurra på denna. Exempel för foreach:

    $lista = "Lars", "Kagg" 

    foreach ($strang in $lista) {
        Write-Output $strang.ToUpper()
    }
