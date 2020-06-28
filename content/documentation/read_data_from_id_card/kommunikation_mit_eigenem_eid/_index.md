---
title: "Communication with own eid service"
menu:
  main:
    name: "Communication with own eid service"
    parent: "documentation/read_data_from_id_card"
    identifier: "documentation/read_data_from_id_card/communication_with_own_eid_service"
    weight: -900
    #pre: '<i class="fa fa-id-badge"></i>'
---

Dieser Workflow kann auch als Wegweiser für die Integration mit einem eigenen Dienst genutzt werden, da nur eine theoretische Ablaufbeschreibung unter BSI TR-03124 existiert (Technical Guideline BSI TR-03124):

- Der Nutzer klickt auf den Link vom Dienst mit einem tcTokenUrl Verweis.
- Der eID Client (z.B. die AusweisApp2) öffnet sich und lädt die TC Token Datei (im XML Format) unter der angegebenen Adresse ab.
- Dieser TC Token (Seite 11; Seite 13 als Beispiel; oder reales Beispiel: https://test.governikus-eid.de/AusweisAuskunft/WebServiceRequesterServlet?mode=json) beinhaltet die Adresse des eID-Server (z.B. https://testpaos.governikus-eid.de:443/ecardpaos/paosreceiver) und eine zugehörige Session ID (TODO: Wie genau genutzt?). Die angegebene RefreshAddress (z.B. https://test.governikus-eid.de/AusweisAuskunft/WebServiceReceiverServlet?refID=XXXXXXXXXXX) ist die Adresse, die der eID-Client anschließend zum Browser/ Nutzer zurückgibt/ aufruft (anderes Beispiel: Login mit eigens generierter Session ID für Online Shop: www.exampleshop.com/login?id=123456).
- Der Nutzer Authentifiziert sich entsprechend.
- Der Client ruft die RefreshAddress auf. Der Dienst-Server hat sicher zu stellen, dass der Aufruf der RefreshAddress auch legitimiert wurde (durch das OK vom eID-Server).
- Dienst und Client (Nutzer) kommunizieren miteinander (z.B. Nutzer besuchte exampleshop.com/login?id=123456 und Server weiß nun, dass sich dahinter beispielsweise Max Mustermann verbirgt. Nutzer kann nun ohne zusätzliches Login einkaufen).
