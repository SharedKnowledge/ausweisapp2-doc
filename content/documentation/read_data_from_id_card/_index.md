---
title: "Lesen der Ausweisdaten"
menu:
  main:
    name: "Lesen der Ausweisdaten"
    parent: "documentation"
    identifier: "documentation/read_data_from_id_card"
    weight: -996
    pre: '<i class="fa fa-id-card-o"></i>'
---
## Technischer Ablauf beim lesen der Ausweisdaten

Ansich erfolgt nach erfolgreicher Authentifizierung mit dem Ausweis über die AusweisApp2 keine Übertragung von Daten aus dem Ausweis zurück an den Nutzer (Client)

Technischer Ablauf beim Online-Ausweisen (siehe Digitale Identifizierung mit dem deutschen Online-Ausweis):

![Technischer Ablauf der Online-Ausweisfunktionen](technischer_ablauf_online_ausweisfunktion.png#center)

Die Daten, die der Nutzer als Berechtigung freigibt, z.B. Name, Vorname, Pseudonym ID, werden nach der PIN eingabe durch den Nutzer an den Dienstanbieter übermittelt. Dieser kann abschließend diese Daten wiederum an den Nutzer zurückschicken (z.B. im Schritt 8).

Folgende Daten wären für einen Dienstanbieter möglich zu erhalten:

| Bürgerinnen und Bürger         | Dienstanbieter             | eID-Server                  |
|----------------|--------------------|-------------------------|
| Address        | Pseudonym          | AddressVerification     |
| BirthName      | ValidUntil         | AgeVerification         |
| FamilyName     | Nationality        | WriteAddress            |
| GivenNames     | IssuingCountry     | WriteCommunityID        |
| PlaceOfBirth   | DocumentType       | WriteResidencePermitI   |
| DateOfBirth    | ResidencePermitI   | WriteResidencePermitII  |
| DoctoralDegree | ResidencePermitII  |                         |
| ArtisticName   | CommunityID        |                         |

Das **Pseudonym** beschreibt eine ID, die zwischen Ausweiskarte und **Betreiberzertifikat** (das vom Dienstanbieter) generiert wird. Dieses dient als wiederkehrende Erkennung für Nutzer bei einem Dienst. Diese könnten wir als UUID nutzen.

Die **Selbstauskunft** ist ein ganz normaler Dienst, welcher z.B. durch die AusweisApp2 aufgerufen werden kann. Dieser Selbstauskunftsdienst (unter https://test.governikus-eid.de/AusweisAuskunft/WebServiceRequesterServlet?mode=json oder https://www.autentapp.de/AusweisAuskunft/WebServiceRequesterServlet?mode=json zu erreichen) fordert als Berechtigung einige Standardfelder, wie Adresse, Name, Vorname. Diese Daten werden dann, wie oben in der Grafik zu sehen, nach erfolgreicher PIN eingabe durch den Nutzer an den Selbstauskunftsdienst übermittelt. Und dieser überträgt anschließend diese Daten im JSON Format wieder zurück zum Nutzer/ Client, also in unserem Falle die Android App AusweisApp2.

Die **Selbstauskunft** an sich ist ein sogenannter **Workflow** in dieser App. Diese Workflows bestehen wiederum aus **States** und sind z.B. Auth → Enter PIN → Auth OK. Die AusweisApp2 SDK stellt für Android nur eine limitierte Funktionalität bereit; lediglich ein Workflow, also der Auth Workflow, der den Nutzer beim Dienstanbieter bestätigt, ist nutzbar.

Also stehen zwei Möglichkeiten bereit, um Daten vom Ausweis zu bekommen:

- Einen eigenen eID-Dienst zu registrieren und aufzusetzen, um im Idealfall nur die Pseudonym Funktion zu nutzen (wäre aber ein Single Point of Failure in dem dezentralen Messenger)
- Die Selbstauskunft zu nutzen (der Dienst bekommt von unserer Intention nichts mit, wofür wir letztendlich die Daten nutzen; und es sollte mehrere Selbstauskunftsdienst-Server geben)

Um die Selbstauskunft über die SDK in Android nutzbar zu machen, muss eine Erweiterung folgender Komponenten in der AusweisApp2 (https://github.com/Governikus/AusweisApp2) stattfinden:

- Erweiterung des JSON UI Plugins um einen “SelfAuth” Command
- * hinzufügen entsprechender Messages z.B. MsgHandlerSelfAuth
- * Integration von States, wie EnterPin im JSON UI Plugin, um den Workflow zu durchlaufen
- Hinzufügen/ Verändern von einem ActivationHandler, der das Signal fireSelfAuthenticationRequested emittiert; dieses wird im AppController verarbeitet und startet somit den SelfAuth Workflow

&nbsp;