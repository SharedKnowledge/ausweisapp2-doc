---
title: "Fingerabdruck"
menu:
  main:
    name: "Fingerabdruck"
    parent: "documentation"
    identifier: "documentation/fingerprint"
    weight: -994
    pre: '<i class="fa fa-print"></i>'
---

## Identifikation mittels Fingerabruck

Der Fingerabdruck ist ein biometrisches Merkmal welches zur Identifkiation oder Verifikation einer Person benutzt wird. Die Papillarleisten und die Minuzien der Leistenhaut auf den Fingern bilden zusammen ein einzigartiges Muster. Fingerabdrücke werden in der Kriminalistik genutzt um mögliche Täter zu identifizieren oder in biometrischen Systemen um zu entscheiden, ob der Nutzer die nötige Berechtigung besitzt.

Die Identifikation eines Fingerabdrucks besteht aus drei Aufgabenbereichen:

- Fingerabdruckabtastung
- Fingerabdrucklassifizierung
- Fingerabdruckvergleich

In der Fingerabdruckabtastung werden Papillarlinien mithilfe eines Sensors auf der Sensoroberfläche hinterlassen. Die Fingerabdruckklassifizierung markiert die Position der Minuizien und ordnet den Fingerabdruck anhand der Papillarlinien ein.

Der Ablauf einer Fingerabdruckanalyse besteht aus sechs Schritten:

- Abtastung des Fingerabdruckbildes. Ein Bild des Fingerabdruckes wird aufgenommen und die Qualität des Bildes ist ein wichtiger Faktor für die automatische Identifikation.
- Bildqualitätsverbesserung: Die optische Verbesserung der Papillarlinien des aufgenommenen Bildes.
- Bildaufarbeitung: Vorbereitungsphase für den vierten und fünften Schritt der Prozesskette.
- Musterklassifizierung: Fingerabdrücke werden in einem der drei Hauptfingerklassen eingeordent. Die Musterklassifizierung kommt nicht bei Zutrittssystemen zum Einsatz.
- Merkmalextraktion: Die Position der Minuzien wird aufgefunden und extrahiert
- Verifikationsphase: Der Vergleich von zwei Merkmalsvektoren

![Schritte zur Erkennung eines Fingerabdrucks](schritte-fingerabruck-erkennung.png#center)
 
### Fingerabdruckanalyse in Smartphones { ##abtastung_in_smartphones }

Die Fingerabdruckanalyse verläuft bei Smartphones unterschiedlich. Hierbei kommt es darauf an welche Technologien benutzt werden.

Bei optischen Sensoren dient die Glasplatte auf der der Finger gelegt wird als Prisma.

Eine Lichtquelle beleuchtet den Finger und der Prisma reflektiert die auf ein Bildsensor, aber dort wo sich die Papillarleisten befinden wird die Reflektion gestört [3]. Der Bildsensor interpretiert das reflektierte Licht und erzeugt ein digitales Bild des Fingerabdrucks.

![Schritte zur Erkennung eines Fingerabdrucks](optische_abtastung.png#center)

Schematische Darstellung eines optischen Fingerabdrucksensors.

Kapazitive Sensoren bestehen aus kleinen Kondensatoren, die eine elektrische Ladung speichern. Der Finger wird auf eine Siliziumschicht gelegt und die elektrische Ladung verändert sich dort wo keine Rillen sind. Durch des Ladungsunterschied wird ein Muster berechnet und ein digitales Bild des Fingerabdrucks erstellt.

![Schritte zur Erkennung eines Fingerabdrucks](fingerabdruck-biometrie-sicherheit-technik-3f.png#center)

Ultraschallsensoren senden einen Schallimpuls gegen den Finger, der von den Papillarleisten, Rillen und Poren unterschiedlich aufgenommen und zurückgeworfen wird [3]. Mit dieser Methode wird im Gegensatz zu den anderen vorgestellten Methoden kein zwei Dimensionales, sondern ein drei Dimensionales Bild des Fingerabdruck erstellt.

#### Probleme bei Fingerabdrücken { ##probleme_fingerabdruck }

Ein Fingerabdruck kann nicht erkannt werden wenn der Finger beispielsweise dreckig oder feucht ist. Bei der Authenzifierung kann es dazu kommen, dass eine fälschlichen Akzeptanz oder eine fälschliche Züruckweisung stattfindet.

### Quellen:

- [BSI Fingerabdruckerkennung](https://www.bsi.bund.de/SharedDocs/Downloads/DE/BSI/Biometrie/Fingerabdruckerkennung_pdf.pdf?__blob=publicationFile)
- [BSI Studien](https://www.bsi.bund.de/SharedDocs/Downloads/DE/BSI/Publikationen/Studien/BioFinger/BioFinger_I_I_pdf.pdf;jsessionid=25FF596E82CA4FEA122FBEED02247AEF.2_cid369?__blob=publicationFile&v=2)
- [Fingerabdruck Scanning in Smartphones](https://www.connect.de/ratgeber/fingerabdruck-fingerprint-sensor-scanner-smartphone-finger-technik-3198730.html)
- [Fingerabdrucksensort Biometrisch](https://blog.deinhandy.de/fingerabdrucksensor-so-funktioniert-der-biometrische-scan)

&nbsp;
