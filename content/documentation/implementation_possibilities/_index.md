---
title: "Umsetzungsmöglichkeiten"
menu:
  main:
    name: "Umsetzungsmöglichkeiten"
    parent: "documentation"
    identifier: "documentation/implementation_possibilities"
    weight: -992
    pre: '<i class="fa fa-check-circle"></i>'
---

# Diensteanbieter werden

Zur Nutzung, der Funktionen der Ausweisapp2 müssen wir Diensanbieter werden, das heißt, wir benötigen ein Berechtigungszertifikat. Dieses kann bei der Vergabestelle für Berechtigungszertifikate des Bundesverwaltungsamtes beantragt werden.
Auf Nachfrage beim BVA wurde uns die Auskunft gegeben, dass es auch als Projektgruppe einer Universität möglich sei, ein solches Zertifikat zu erhalten.

## Voraussetzungen { #diensteanbieter_voraussetzungen }

Grundsätzlich müssen jedoch folgende Voraussetzungen erfüllt sein, um ein Zertifikat zu erhalten:

- Der Vergabestelle die Identität des Dienstanbieters mitteilen und nachweisen
- * Angaben über Antragsteller, Ansprechpartner
- Das dem Antrag zu Grunde liegende Interesse an einer organisationsbezogenen Nutzung der Online-Ausweisfunktion kurz darlegen
- Die Einhaltung des betrieblichen Datenschutzes versichern
- * Angaben über Maßnahmen bezüglich der IT-Sicherheit und des Datenschutzes und über den Datenschutzbeauftragter
- Der Vergabestelle dürfen keine Anhaltspunkte für eine missbräuchliche Verwendung der Daten vorliegen

Formular: [Personalausweisportal](https://www.personalausweisportal.de/SharedDocs/Downloads/DE/Material-Dienstleister/Formularpaket_Erstantrag.pdf;jsessionid=E0983962021DE94D285A041EF07B6EA3.2_cid340?__blob=publicationFile&v=3)

## Schritte zum Diensteanbieten { #schritte_zum_diensteanbieter }

![Schritte um ein Diensteanbieter zu werden](diensteanbieter_werden.png#center)

Um ein Dienstanbieter zu werden, müssen folgende Schritte durchlaufen werden:

- Festlegen, welche Datenfelder wir aus dem Personalausweis auslesen möchten (z.B. Vorname, Familienname, …). Um eine zweifelsfreie Identifizierung zu gewährleisten, müssten die Datenfelder Name, Vorname, Adresse und Geburtsdatum ausgelesen werden.
- Berechtigung beantragen (die oben genannten Voraussetzungen müssen  dafür erfüllt sein)
In der Liste aller erteilten gültigen Berechtigungen wird vermerkt, dass wir eine Berechtigung erhalten haben
- Berechtigungszertifikateanbieter auswählen
Nach einer positiven Rückmeldung der Vergabestelle muss nun ein Anbieter für das Berechtigungszertifikat ausgewählt werden, in dem Fall D-Trust GmbH (Bundesdruckerei). Mit diesem Anbieter muss ein Vertrag abgeschlossen werden, um das technische Berechtigungszertifikat zu erhalten.
{{<br>}}{{<br>}}

**eID-Server**
- * Es muss entweder ein eigener eID-Server eingerichtet werden, oder es besteht die Möglichkeit zur Nutzung eines Servers eines eID-Service-Providers (Liste von [Providern](https://www.personalausweisportal.de/DE/Verwaltung/Technik/eID-Server/eID-Server_node.html;jsessionid=E0983962021DE94D285A041EF07B6EA3.2_cid340))
- * Aufwand für das Betreiben eines eigenen Servers: Einen eigenen eID-Server aufzusetzen und zu betreiben ist sehr aufwändig, sowohl im Bezug auf die Kosten, als auch auf das Wissen, welches dafür benötigt wird. Die einzelnen Komponenten des eID-Servers müssen bestimmten Standards entsprechen und vom Bundesamt für Sicherheit in der Informationstechnik (BSI) zertifiziert werden. Es gibt diverse Vorgaben, die an einen eID-Server gestellt werden ([mehr dazu:](https://www.die-eid-funktion.de/eid-technologie-fuer-webdienstanbieter/eid-server/)).
- * Kosten eines eID-Services: Die Kosten für die Nutzung eines eID-Services setzen sich aus den einmaligen Beratungs- und Implementierungskosten sowie den laufenden Kosten zusammen. Auf den Websites der vom Personalausweisportal empfohlenen Dienstanbieter lassen sich leider keine konkreten Kosten ermitteln, jedoch deutet der Anbieter OpenLimit durch die Aussage „Die laufenden Kosten bleiben dabei überschaubar. Schon bei wenigen angeschlossenen Mandanten rechnen sich die Investitionen schnell und Sie kommen bereits in den ersten drei Betriebsjahren auf Ihren ROI.“ ([Siehe](https://www.openlimit.com/de/produkte/eid-server.html)) an, dass die Kosten vermutlich relativ hoch sind.
- **eID-Anbindung vom Dienst zum eID-Server implementieren**
- **Dienst betreiben**

## Fazit

Es scheint durchaus realistisch zu sein, ein Berechtigungszertifikat zu erhalten, jedoch wird die Umsetzung wie bereits erläutert vermutlich am eID-Server scheitern.

##Bildquelle 
[Digitale Identifizierung mit dem deutschen Online-Ausweis](https://www.personalausweisportal.de/SharedDocs/Downloads/DE/Material-Dienstleister/anwenderhandbuch.pdf?__blob=publicationFile&v=2)

&nbsp;
