---
title: "Ausweis als Key"
menu:
  main:
    name: "Ausweis als Key"
    parent: "documentation"
    identifier: "documentation/identity_card_as_key"
    weight: -995
    pre: '<i class="fa fa-key"></i>'
---

## Ausweis als Schlüssel

Staatliche eIDs stehen digitalen Identitaeten aus dem Umfeld sozialer Netzwerken gegenueber, wenn es um elektronische Partizipation geht (vgl. S. 113). Im Gegensatz zu Social IDs sind die eIDs eindeutig zuzuordnen und rechtssicher (vgl. S. 114). “Anbieter, die die Online-Ausweisfunktion in einen Dienst einbinden moechten, benoetigen ein Berechtigungszertifikat, das vom Bundesverwaltungsamt mit der Vergabestelle fuer Berechtigungszertifikate (VfB) vergeben wird. [...] Zur Kommunikation wird dabei das sogenannte eCard-API-Framework eingesetzt, welches aus einer Reihe plattformunabhaengiger Schnittstellen besteht” (S. 115). Das eCard-API-Framework wird vom eID-Server implementiert, der zur Bereitstellung eines Dienstes neben der eID-Clientsoftware (zB. AusweisApp2) vorliegen muss. Der eID-Server dient ebenfalls als Schnittstelle zur Public-Key-Infrastructure. (Vgl. S. 115). D.h. es muss ein eigener eID-Server genutzt werden, um die PKI zu nutzen, die mit dem neuen elektronischen Personalausweis verbunden ist.


Als Middleware zwischen Kartenleser, eID und Onlineservice kann die AusweisApp2 eine eindeutige Identifzierung durchfuehren, aber auch eine eindeutige aber pseudonymisierte Kennung generieren. (Vgl. (Wikipedia)AusweisApp2#Verfahren) In diesem Sinne kann gleichzeitig die Identitaet geschuetzt werden, als auch verifiziert werden, dass der Inhaber der Identitaet einen gueltigen deutschen Pass besitzt. Diese Funktion waere ein denkbarer Anwendungsfall fuer einen dezentralen anonymen (bzw. pseudonymisierten) Messenger.
{{<br>}} {{<br>}}

## Quellen: 
(Wikipedia)AusweisApp2: https://de.wikipedia.org/wiki/AusweisApp2 [abgerufen am 30.4.2020]

 Arndt Bonitz et al. 2018: Technologien fuer digitale Buergerbeteiligungsverfahren, in: Maria Leitner (Hrsg.), Digitale Buergerbeteiligung. Forschung und Praxis - Chancen und Herausforderungen der elektronischen Partizipation, Springer Vieweg: Wiesbaden, S. 99 - 126.

Ansgar Tessmer (2020): Digitaler Vertragsabschluss mit eID & eIDAS, https://www.ausweisapp.bund.de/fileadmin/user_upload/Anwenderforen/2020/TESSMER_2020-01-20_eID_eIDAS_Anbieterforum_BV.pdf [abgerufen am 30.04.2020].
- Versuch eID zur Signierung und Siegelung einzusetzen.

Christian Kahlo (2020): Mobile Identitaet mit der AusweisApp2 - ein Prototyp, https://www.ausweisapp.bund.de/fileadmin/user_upload/Anwenderforen/KAHLO_AA2AF_meID_20200120.pdf [abgerufen am 30.04.2020].
- Mobil Personenbezogene Daten abrufen.
