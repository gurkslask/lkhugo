# Kör igång remote session mot Virtuell maskin

Kör igång Hyper-V och starta en virtuell maskin med windows 10.

På den virtuella maskinen starta powershell som administratör. I powershell skriv in 

    Enable-PSRemoting -force -SkipNetworkProfileCheck

Nu är den virtuella maskinen redo att ta emot en nätverkssession. Vi behöver dock lite uppgifter för att kunna fjärra in på maskinen. För det första behöver vi datornamnet. Skriv in 

    hostname

i powershell, det som printas ut på skärmen är datornamnet. Det kommer behövas till senare. Vi behöver också ta reda på IP-adressen. Skriv in

    ipconfig

i powershell. Nätverksinställningarna för nätverkskortet kommer nu upp. Vi är intresserade av vad som står som "IPv4 Address". Detta är IP-adressen till maskin den kommer vi behöva senare.

<div style="page-break-after: always;"></div>

**Starta fjärrsession**
___

Nu ska vi fjärra in på den virtuella maskinen. Vi ska vara i den windows 11 och jobba nu så minimera fönstret med windows 10 så länge.

Det första vi ska göra är att dra igång tjänsten "Windows Remote Management". I startmenyn skriv in "Tjänster". Ett fönster med alla tjänster för datorn kommer nu upp, hitta "Windows Remote Management" och högerklicka på den och välj "Starta". Nu är tjänsten startad och vi kan gå vidare.

Vi måste nu säga till datorn att vi litar på den virtuella maskinen så att vi kan ansluta. Öppna upp powershell som **administratör**. Vi ska börja med att lagra undan lite värden, några av värdena får vi från den virtuella maskinen. Skriv in detta i powershell:

    $RemoteManPath = "WSMan:\localhost\Client\TrustedHosts"
    $ComputerName = <Skriv in datornamnet på den virtuella maskinen omgiven av fnuttar (")>
    $IPaddr = <Skriv in IP-adressen på den virtuella maskinen omgiven av fnuttar (")>

Nu ska vi lägga till så att vi litar på datorn. Skriv in i powershell:

    Set-Item $RemoteManPath -value $IPaddr

Märk här att vi använder variablerna som vi skapade innan. Nu ska vi testa ansluta mot datorn. Skriv in

    Enter-PSSession -ComputerName $IPaddr -Credential "$CompName\admin"

i powershell och nu är vi inne. Om vi skriver 