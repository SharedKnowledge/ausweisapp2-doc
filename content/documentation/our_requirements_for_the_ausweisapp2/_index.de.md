---
title: "Unsere Anforderungen an die AusweisApp2"
menu:
  main:
    name: "Unsere Anforderungen an die AusweisApp2"
    parent: "documentation"
    identifier: "documentation/our_requirements_for_the_ausweisapp2"
    weight: -900
    #pre: '<i class="fa fa-id-badge"></i>'
---

## Neuer Workflow

**Validation**

Hierbei überträgt mit Hilfe eines zusätzlichen commands JSON Daten, die man gerne mit den eigentlichen Daten auf dem Ausweis abgleichen lassen will. 

Hierbei werden nur die Daten verglichen, die man mit dem “ACCESS_RIGHTS” command definiert hat. 

Der Server gleicht dann die entschlüsselten Daten mit den zu validierenden Daten ab, und schickt entweder ein result mit “ok” oder eben nicht ok zurück. 

Durch diesen Workflow bleibt der Datenschutz erhalten, da weiterhin nicht-Dienstanbieter nicht willkürlich Zugriff auf Daten bekommen und es wird 3rd parties möglich, die AusweisApp2 AndroidSDK sinnvoll zu nutzen, ohne selbst ein Dienstanbieter zu werden.

So kann man beispielsweise sicherstellen, dass ein Nutzer echt ist und sich auch mit seinen echten Daten beim entsprechenden online Dienst angemeldet hat. Derzeit ist dies als nicht-Dienstanbieter **nicht** möglich.
