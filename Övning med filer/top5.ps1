function Show-Top5CPU {
    param (
        $path,
        $nrOfProcesses
    )
    $processer = Get-Process | Sort-Object -Top $nrOfProcesses -Descending 
    Write-Output $processer | Out-File -FilePath $path 
}

Show-Top5CPU -path "C:\test\processer.txt" -nrOfProcesses 5