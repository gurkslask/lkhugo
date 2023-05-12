function createVM ()
{
    param (
        [string]$Name = "Default Name",
        [long]$Memory = 4096,
        [long]$Disksize = 20000
    )

    # Setup path to VMs
    $VMPath = "C:\HyperV\$Name"
    $VM_VHD_Path = $VMPath + "\$Name.vhdx"

    # Bytes - > MegaBytes
    $Memory = $Memory * 1Mb
    $Disksize = $Disksize * 1Mb

    $settings = @{
        Name = $Name;
        MemoryStartupBytes = $Memory;
        SwitchName = "Default Switch";
        Generation = 1;
        Path = $VMPath;
        NewVHDPath = $VM_VHD_Path;
        NewVHDSizeBytes = $Disksize;
        BootDevice = "CD";
    }
    New-VM @settings | Set-VMDvdDrive -Path "C:\Kagg-filer\W10Enterprise\17134.1.180410-1804.rs4_release_CLIENTENTERPRISEEVAL_OEMRET_x64FRE_en-us (1).iso"
    # Set-VMDvdDrive -VMName $Name -Path "C:\Kagg-filer\W10Enterprise\17134.1.180410-1804.rs4_release_CLIENTENTERPRISEEVAL_OEMRET_x64FRE_en-us (1).iso"
    }

    createVM -Name "virtuell maskin2"  



    # Här ställer vi oss på rätt ställe
    Set-Location $PSScriptRoot
    # Importera csv-filen
    $machines = Import-Csv("./machines.csv")
    # För varje maskin, skapa en VM
    <#foreach ($machine in $machines) {
        Write-Output "Nu ska vi skapa $machine"
        createVM -Name $machine.Name -Disksize $machine.Disksize -Memory $machine.Memory -WhatIf
}#>