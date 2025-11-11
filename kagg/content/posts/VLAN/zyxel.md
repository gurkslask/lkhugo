+++
title = "Zyxel"
date = "2024-04-18T09:36:00+02:00"
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["VLAN", "EE", "nätverk", "hårdvara"]
keywords = ["", ""]
description = ""
showFullContent = false
readingTime = false
hideComments = false
color = "" #color from the theme settings
+++

# Konfigurera VLAN för Zyxel Switch

## Fabriksåterställ switchen

Om man vill göra så switchen får tillbaka alla inställningar som om den vore splitter ny så **håll in restore-knappen till PWR lampan lyser fast orange**.
Släpp sen restore knappen och låt switchen starta om. Kan ta två minuter.

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

För trunkporten måste den vara **Fixed** mot de VLAN som ska skickas vidare. **TX Tagging** måste vara ibockat för alla VLAN som den ska trunka. Under **VLAN Port Setup** måste också **VLAN Trunking** för porten vara ibockad.

## Spara inställningar i switchen

**Alla** inställningar man gör i switchen **försvinner** om man startar om den. Detta är ett beteende som är *default* i switchen för att **om** man gör en fel-konfiguration ska man lätt kunna komma tillbaka in i switchen. Om man vill **spara** så att switchen kommer ihåg:

    Maintenance -> Configuration -> Save Configuration -> Config 1

Nu är konfigurationen sparad och om man startar om switchen så kommer den starta upp **med den konfigurationen som du just sparat**

## Management port

Det är vanligt när man jobbar med switchar att man ställer in en port som är dedikerad till att komma in och göra inställningar i switchen. Detta brukar man kalla **management** port. Det är alltså en port där det enda nätverket man kommer åt är management nätverket.

Det första vi ska göra är att skapa ett eget VLAN som bara är för management.
För att lägga till ett VLAN gå in på **VLAN Setup**. Tryck **Add/Edit**. Lägg till namn och ett nummer för VLAN ID. De portar som ska användas för detta VLAN ska vara **Fixed** och bocka ur **TX Tagging**.

En **otaggad** port får bara finnas på ett VLAN, **otaggad** port är en port som används till bara en enhet, tillexempel dator. **Därför** måste vi ta bort de portarna från VLAN 1. Bocka i VLAN 1 och tryck på **Add/Edit**, ställ in portarna som du vill använda som **Forbidden** på VLAN 1. Nu är portarna bara medlemmar av ditt nya VLAN.

Du måste också ställa in porten så att den använder rätt VLAN, det gör vi under **VLAN Port Setup**. Här byter vi ut siffran som står under **PVID** mot det nya VLANet vi har skapat.

Nu har vi skapat ett nytt VLAN, nu kan det vara en bra ide att spara inställningarna.
Gör detta först [först]({{ <ref "#Spara inställningar i switchen">}}).

Nästa steg är att säga till switchen att den ska bara kommas åt via det nya VLAN'et. Detta gör vi genom att klicka oss fram till:

    System -> IP Setup -> IP Setup

Här kan man ändra vilken IP-adress switchen ska svara på. **Se till så du kommer ihåg den här**, här ska du också ställa in **VID** till det management-VLAN du skapat. När du trycker **Apply** så sparas detta och du måste ni se till att din dator **är inkopplad på rätt port och att ni har rätt VLAN på datorn**.