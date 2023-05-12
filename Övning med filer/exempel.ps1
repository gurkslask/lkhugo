# Få ut processer som körs på datorn och skriv till en fil
# Get-Process | Out-File "C:\Users\admin\Documents\kagg-övningar\powershell\processer.txt"

# Få ut processer som körs på datorn, välj kolumnerna name, PM och CPU, printa ut det till en csv-fil
# Get-Process | Select-Object -Property "Name", "PM", "CPU" | Export-Csv "C:\Users\admin\Documents\kagg-övningar\powershell\processer_csv.txt" -NoTypeInformation

<# CSV data som används för nedanstående kod:

fil, data

C:\test\test.txt, hej
C:\test\test2.txt, test2

#>
# Importera en csv fil och skriv ut datan för "fil" för varje rad
# $csv = Import-Csv "C:\Users\admin\Documents\kagg-övningar\powershell\test.csv"
# foreach ($rad in $csv) {
    # Write-Output $rad.fil
# }



# Skapa en array och sortera den, uppifrån och ner
# $lista = 1,5,2,6,3,6,8,13,5,341,3,123,5,1
# $lista | Sort-Object -Descending | Write-Output







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