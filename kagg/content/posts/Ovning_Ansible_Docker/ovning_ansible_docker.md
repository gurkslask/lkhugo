+++
title = "Övning ansible docker"
date = "2024-03-20T09:48:49+01:00"
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["EE", "teknik"]
keywords = ["", ""]
description = ""
showFullContent = false
readingTime = false
hideComments = false
color = "" #color from the theme settings
+++

# Övning med Ansible och docker

## Mål

Få igång ett system som körs igång med hjälp av ansible och docker.

## Grundförutsättningar

 - Ni ska ha gjort en playbook (för ansible) som gör en grundkonfiguration av en dator. [Ansible youtube](https://www.youtube.com/watch?v=jqOLpHYFxpE&list=PLksAuwgipquXjL3FSS_DaOparRCm60Rrc)
 - Ni ska ha gjort en dockerfile som drar igång en webb-sida. [Docker youtube](https://www.youtube.com/playlist?list=PLksAuwgipquX2Qvzq5gapvGqujpluQmJN)
 - Ni ska ha fått IP-adress eller URL till en server av läraren

 ## Vad behövs göras

  - Ändra i er "hosts"-fil, som ansible använder för att veta vilken IP-adress den ska ansluta till. I filen **/etc/ansible/hosts** Ska ni skriva in den nya IP-adressen ni har fått.
   - Ni behöver ändra i er playbook så att docker installeras på servern.
   - Ni kan behöva lägga till en mapp där ni lägger dockerfilerna *(till exempel /srv/minadockerfiler)*, för att läsa mer om det [finns det här](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/file_module.html#examples)
   - Ni behöver ändra i er playbook så att dockerfilen bygger och körs **eller** docker-compose körs. Läs mer om *docker*-modulen [här](https://docs.ansible.com/ansible/latest/collections/community/docker/docsite/scenario_guide.html#ansible-collections-community-docker-docsite-scenario-guide) 
   - Ni behöver kopiera över er *docker-compose.yml* eller *dockerfile* och *html*-mapp. Se tll så att de ligger på samma ställe. För att kopiera filer med ansible kan man använda *copy* modulen som ni kan läsa om [här](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/copy_module.html) 
       
## När är ni färdiga?
Ni är färdiga när ni kan köra playbooken och hemsidan automagiskt på serverns IP-adress hoppar igång. Med hjälp av den här automatiseringen så kan ni utan problem köra samma playbook på vilken server som helst (så länge den kör ubuntu pga *apt*) och hemsidan hoppar i gång. 

På det här sättet har ni säkerställt ett arbetssätt för serverkonfiguration, och ni har också dokumenterat ert arbete med hjälp av en dockerfil och playbook.

## Vad göra sedan

 - Lägg tid på kommentarer i din dockerfile och playbook. Beskriv vad varje steg gör och översätt till svenska.
 - Lägg till en dockerfile eller docker-compose för den tjänst som ni gjorde under docker-lektionen (wordpress eller eget val)