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