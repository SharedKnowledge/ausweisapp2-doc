---
title: "Angriffsszenarien"
menu:
  main:
    name: "Angriffsszenarien"
    parent: "documentation"
    identifier: "documentation/attack_scenarios"
    weight: -900
    #pre: '<i class="fa fa-id-badge"></i>'
---


## Manipulation der AusweisApp2

Laut dem zweiten Paragraphen hier wird von dem BSI selbst empfohlen, den Hashwert der AusweisApp2 (Desktop Varianten) selbst zu überprüfen. Man könnte also grundsätzlich eine manipulierte Version der AusweisApp2 erstellen und diese als echte AusweisApp2 vergaukeln. Da die App Open Source ist, kann man auch einfach die App für seine eigenen bösen Absichten umgestalten

## Beschaffung von Fingerabdrücken

Wenn es auf irgendeine Weise möglich ist, an den Fingerabdruck bzw. die Daten des Fingerabdruckes der Person zu kommen, so ist eines der größten (zukünftigen) Sicherheitsaspekte umgangen. Man hat nur einen Fingerabdruck und kann diesen nicht einfach ändern. Theoretisch könnte man auch die Fingerabdruckdaten aus Android herauslesen (mittels unbekannten exploits).Oder einfach wie hier den Abdruck aus einem Foto extrahieren :)


## Beschaffung der PIN / CAN

Beispielsweise durch beobachten beim eintippen, verteilen einer manipulierten AusweisApp2, oder aber wieder durch Android Exploits / Sicherheitslücken etc.

## NFC cloning

Die NFC Daten aus dem elektronischen Personalausweis herauslesen und seinen eigenen NFC Chip damit befüllen. Dadurch braucht man nicht mehr den echten Ausweis der Person und kann mittels Daten aus 2) oder 3) die Sicherheit der AusweisApp2 komplett aushebeln. Natürlich muss man dafür zunächst an die Daten kommen. Durch 1) könnte eine böse Person aber einfach seine eigene App schreiben, die die Daten ausliest und speichert.

## Denial of Service

Es reicht schon aus den elektronischen Personalausweis geklont zu haben (4), und schon kann man den Personalausweis Sperren lassen, indem man einfach 3x die falsche PIN eintippt. Das ist zwar “nur nervig”, aber schon eine ärgerliche Sache, wenn die Person die PUK vergessen hat. Dann muss man mehrere Monate auf eine neue warten.

## Umgehung der Gesichtserkennung

Es wurde bereits häufig demonstriert, wie einfach eine simple Gesichtserkennung, wie sie auf Android Smartphones zu finden ist, ausgetrickst werden kann. Beispielsweise durch ranhalten einer Videoaufnahme der Person. Oft reicht auch schon ein Bild. Auch FaceID von Apple wurde bereits ausgetrickst.

## Fazit

Angesichts der enormen Konsequenzen, die durch das umgehen der Sicherheitsmaßnahmen  entstehen können, erscheint es momentan noch viel zu einfach, die Sicherheitsmaßnahmen zu umgehen und Zugriff zu erhalten. Natürlich kann man nicht einfach so zufällig Leute hacken, jedoch ist es möglich, gezielte Angriffe auf spezielle Personen durchzuführen.
Am unsichersten erscheint die Gesichtserkennung. Diese scheint außerdem nur schwer umsetzbar auf mobilen Geräten.
