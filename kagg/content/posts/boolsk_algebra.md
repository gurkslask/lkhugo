+++
title = "Boolsk_algebra"
date = "2025-10-02T13:32:45+02:00"
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["EE", ""]
keywords = ["programmering", ""]
description = "Material för boolsk algebra"
showFullContent = false
readingTime = false
hideComments = false
color = "" #color from the theme settings
+++

# Boolsk algebra

## Syfte

Boolsk algebra inom datortekniken och logiskt tänkande för att förklara relationen mellan olika ingångar och en utgång. De booleska operatorerna vi kommer gå igenom är:
 - **AND**
 - **OR**
 - **NOT**
 - **XOR**
 - **NAND**

 ## AND
**AND** är samma sak som **OCH** på svenska. **OCH** kan användas om man seriekopplar två knappar till en lampa.

Sanningstabellen:

X |Y|Z|
---|---|---|
0|0|0|
0|1|0|
1|0|0|
1|1|1|

## OR
**OR** är samma sak som **ELLER** på svenska. **ELLER** kan användas om man parallellkopplar två knappar till en lampa.

X |Y|Z|
---|---|---|
0|0|0|
0|1|1|
1|0|1|
1|1|1|

## NOT
**NOT** är samma sak som **INTE** på svenska. **INTE** kan användas om man kopplar en *NC* kontakt till en lampa. **INTE** *inverterar* en signal

X |Z|
---|---|
0|1|
1|0|

## XOR
**XOR** är samma sak som **OR**(**ELLER**) med skillnaden att om båda ingångarna är till så blir utgången 0. Exempel på detta är att det förreglas så bara en knapp kan vara till på samma gång.

X |Y|Z|
---|---|---|
0|0|0|
0|1|1|
1|0|1|
1|1|0|


 ## NAND
**NAND** är samma sak som **OCH INTE** på svenska. **OCH INTE** kan användas om man seriekopplar två knappar till en lampa.

Sanningstabellen:

X |Y|Z|
---|---|---|
0|0|0|
0|1|0|
1|0|0|
1|1|1|
