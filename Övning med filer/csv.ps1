$csv_fil = Import-Csv -Delimiter "," -Path ./in.csv

foreach ($i in $csv_fil) {
    Write-Output $i.fil
    New-Item -Path $i.fil -Force
    Set-Content -Path $i.fil $i.data
    if ($i.skrivskydd -eq "ja") {
        Set-ItemProperty -Path $i.fil -Name IsReadOnly -Value $true
    }
}