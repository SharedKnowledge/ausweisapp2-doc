---
title: "Unsere Anforderungen an die AusweisApp2"
menu:
  main:
    name: "Unsere Anforderungen an die AusweisApp2"
    parent: "documentation"
    identifier: "documentation/our_requirements_for_the_ausweisapp2"
    weight: -998
    pre: '<i class="fa fa-list-alt"></i>'
---

## Gewünschte Anforderungen an die AusweisApp2

**Validation**

Bei der Validierung mit der Ausweisapp werden die Nutzerdaten als JSON mit den auf einem Server hinterlegten Daten abgegelichen.
Hierbei werden nur die Daten verglichen, die man mit dem “ACCESS_RIGHTS” command definiert hat. 
Der Server gleicht dann die entschlüsselten Daten mit den zu validierenden Daten ab, und schickt entweder ein result mit “ok” oder "invalide" zurück. 

Durch diesen Workflow bleibt der Schutz der persönlichen Daten bestehen, da nicht authorisierte Dienstanbieter keinen willkürlichen Zugriff auf die Daten bekommen. Gleichzeitig können 3rd Party Anbieter die AusweisApp2 AndroidSDK verwenden ohne Selbst Dienstanbieter zu werden. 
So kann man beispielsweise sicherstellen, dass ein Nutzer echt ist und sich auch mit seinen echten Daten beim entsprechenden online Dienst angemeldet hat. Derzeit ist dies als nicht-Dienstanbieter **nicht** möglich.


## Was wir im Idealfall von der Ausweisapp2 haben wollen

Zur Feststellung der Identität einer Person können drei verschiedene Verfahren verwendet werden: kontaktbehaftete, berührungslose und biometrische Systeme.
In einem Personalausweis werden ein digitales Lichtbild und, sofern gewünscht der digitale Fingerabdruck einer Person gespeichert. Anhand dieser Daten können Personen genau Identifiziert werden. Idealerweise würde der Ausweis diese Daten zur verfügung stellen. Anhand der zur Verfügung gestellten Daten könnte innerhalb einer Anwendung ein Abgleich stattfinden mit welcher sich die Echtheit einer Person weitgehend zweifellos feststellen ließe. 
Im Ausweisportal des Bundesministeriums des Inneren, für Bau und Heimat wird beschrieben, dass sich folgende Daten mit der Online-Ausweisfunktion übermitteln lassen: Familienname, Vorname, Geburtsdatum und -ort, Anschrift und Postleitzahl, Geburtsname, Ordens-bzw. Künstlername und Doktorgrad. Biometrische Daten wie der Fingerabdruck und das Lichtbild werden ausschließlich an Staatliche Stellen, wie Polizeivollzugsbehörden, der Zollverwaltung, Steuerfahndungsstellen der Länder und Personalausweis-,Pass- und Meldebehörden zur Feststellung der Identität weitergegeben.


## Quellen:
{{<br>}}
- [Bundesministerium des Inneren, für Bau und Heimat](https://www.personalausweisportal.de/DE/Buergerinnen-und-Buerger/Der-Personalausweis/Details/DatenChip/datenChip_artikel.html)
- [Bundesministerium der Justiz und für Verbraucherschutz](https://www.gesetze-im-internet.de/pauswg/BJNR134610009.html)
- [Validierung durch die Ausweisapp](https://www.ausweisapp.bund.de/sdk/android.html)