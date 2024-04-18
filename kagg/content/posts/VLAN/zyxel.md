+++
title = "Zyxel"
date = "2024-04-18T09:36:00+02:00"
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["VLAN", "EE"]
keywords = ["", ""]
description = ""
showFullContent = false
readingTime = false
hideComments = false
color = "" #color from the theme settings
+++

# Konfigurera VLAN för Zyxel Switch

## Åtkomst till webb-interface

Switchen har följande default inställningar

   IP: 192.168.1.1
   Username: admin
   Password: 1234

Så ställ in er dator på IP-adress: *192.168.1.xxx* och öppna en webbläsare och öppna switchens IP-Adress.

## Inställningar i switch

För att ställa in VLAN gå till **Switching -> VLAN -> VLAN Status**. Här ser ni statusen för VLAN. På en fabriksåterställd switch finns bara VLAN 1.

För att lägga till ett VLAN gå in på **VLAN Setup**. Tryck **Add/Edit**. Lägg till namn och ett nummer för VLAN ID. De portar som ska användas för detta VLAN ska vara **Fixed** och bocka ur **TX Tagging**. För trunk porten så ska **TX Tagging** vara ibockad.

En **otaggad** port får bara finnas på ett VLAN, **otaggad** port är en port som används till bara en enhet, tillexempel dator. **Därför** måste vi ta bort de portarna från VLAN 1. Bocka i VLAN 1 och tryck på **Add/Edit**, ställ in portarna som du vill använda som **Forbidden** på VLAN 1. Nu är portarna bara medlemmar av ditt nya VLAN.

Du måste också ställa in porten så att den använder rätt VLAN, det gör vi under **VLAN Port Setup**. Här byter vi ut siffran som står under **PVID** mot det nya VLANet vi har skapat.

För trunkporten måste den vara **Fixed** mot de VLAN som ska skickas vidare. **TX Tagging** Måste vara ibockat för alla VLAN. Under **VLAN Port Setup** måste också **VLAN Trunking** för porten vara ibockad.