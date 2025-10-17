+++
title = "Fix_mdt"
date = "2025-10-17T10:40:34+02:00"
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["", ""]
keywords = ["", ""]
description = ""
showFullContent = false
readingTime = false
hideComments = false
color = "" #color from the theme settings
+++

# Fixa windows deploy server funktionalitet

## Syfte
Nya versioner av *MDT* och *ADK* gör så att de ursprungliga instruktionerna inte fungerar, här följer en guide på hur man åtgärdar detta.

**Mycket av guiden fungerar, vi ska bara ändra så vi installerar nya versioner av mjukvaran**

## Installera nya versionen av ADK och ADKPE

[Ladda ner de nya versionerna här](https://learn.microsoft.com/en-us/windows-hardware/get-started/adk-install)

Dessa filerna ska ni ladda ner:
 - Download the Windows ADK 10.1.26100.2454 (December 2024)
 - Download the Windows PE add-on for the Windows ADK 10.1.26100.2454 (December 2024)

## Installera nya versionen av MDT

[Ladda ner nya versionen av Microsoft MDT](https://www.microsoft.com/en-us/download/details.aspx?id=54259)

## Kopiera och döp om en mapp

Följ dessa stegen för att mjukvaran ska fungera, *detta är en workaround som microsoft rekomenderar*.
 - Öppna *utforskaren* (File explorer)
 - Navigera till sökvägen *C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment*
 - Kopiera **och klistra in** mappen *amd64*
 - Döp om den kopierade mappen till **x64**