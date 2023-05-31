+++
title = "Powershell övning med filer"
date = "2023-05-15"
author = "Alex"
authorTwitter = "" #do not include @
cover = ""
tags = ["Övning", "Powershell"]
description = ""
showFullContent = false
+++


# Övning powershell

## Mål

Ni ska med hjälp av powershell skapa olika funktioner som är beskrivna nedan.

### Övning 1:
Ett företag vill ha hjälp med att övervaka sina servrar, de behöver få ut en fil som talar om vilka processer som drar mest processorkraft för att kunna övervaka sina IT-system.<br>
Skapa en funktion som med hjälp av powershell printar ut de 5 processer som drar mest processorkraft. <br>
Kommandon som kan hjälpa er:

    Get-Process (lista alla processer som körs)
    Sort-Object (sortera objekt)
    Write-Output (skriv information i terminalen)
    Out-File (skriv information till en fil på filsystemet)
    | - pipe operatorn (används för att länka ihop funktioner, tex: write-output | sort-object)

De parametrar jag vill ha in i funktionen är vilken plats som filen ska lagras samt att det ska finnas funktionalitet för att printa ut fler eller mindre än 5 processer.

### Övning 2:
Ovanstående företag vill också ha hjälp med att få ut information till sina anställda. Företaget har information om varje anställd i en .csv-fil och vill därför kunna använda den informationen för att kunna ladda upp text-filer hos varje användare.<br>
Med hjälp av powershell och en csv-fil ska ni skapa filer på filsystemet. CSV står för "Komma-Separerade-Värden". Till exempel:

    fil, data
    C:\test\testfil.txt, Hello world
    C:\test\kagg.txt, Lars kagg


Kommandon som ni kan använda är:

    import-csv (importera csv-data)
    new-item (skapa en tom fil på filsystemet)
    set-content (lägg in text i en fil på filsystemet)

Med den här filen ska erat program skapa två stycken textfiler i en mapp som heter "test" på hårddisken, som ska innehålla texten "Hello world" samt "Lars kagg".<br>
Extra poäng om ni lyckas lösa så det går att skriva in om filen ska vara skrivskyddad eller inte.

## Sammanfattning

Extrapoäng får ni för väl dokumenterad och strukturerad kod och ett tydligt interface i terminal-programmet.


## Lite exempel

    # få ut processer som körs på datorn och skriv till en fil
    # get-process | out-file "c:\users\admin\documents\kagg-övningar\powershell\processer.txt"

    # få ut processer som körs på datorn, välj kolumnerna name, pm och cpu, printa ut det till en csv-fil
    # get-process | select-object -property "name", "pm", "cpu" | export-csv "c:\users\admin\documents\kagg-övningar\powershell\processer_csv.txt" -notypeinformation

        <# csv data som används för nedanstående kod:

        fil, data

        c:\test\test.txt, hej
        c:\test\test2.txt, test2

    #>
    # importera en csv fil och skriv ut datan för "fil" för varje rad
    # $csv = import-csv "c:\users\admin\documents\kagg-övningar\powershell\test.csv"
    # foreach ($rad in $csv) {
            # write-output $rad.fil
    # }



    # skapa en array och sortera den, uppifrån och ner
    # $lista = 1,5,2,6,3,6,8,13,5,341,3,123,5,1
    # $lista | sort-object -descending | write-output

    # Funktion
    <#function Write-Something {
        param (
            $Something
        )
        Write-Output("$Something")
    }
    Write-Something("Kalla på funktionen 1")
    Write-Something("Kalla på funktionen 2")
    Write-Something("Kalla på funktionen 3")#>

    function Show-Top5CPU {
        param (
            $path,
            $nrOfProcesses
        )
        $processer = Get-Process | Sort-Object -Top $nrOfProcesses -Descending 
        Write-Output $processer | Out-File -FilePath $path 
    }

    Show-Top5CPU -path "C:\test\processer.txt" -nrOfProcesses 5
    
    $csv_fil = Import-Csv -Delimiter "," -Path ./in.csv

    foreach ($i in $csv_fil) {
        Write-Output $i.fil
        New-Item -Path $i.fil -Force
        Set-Content -Path $i.fil $i.data
        if ($i.skrivskydd -eq "ja") {
            Set-ItemProperty -Path $i.fil -Name IsReadOnly -Value $true
        }
    }