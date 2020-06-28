---
title: "SelfAuth workflow"
menu:
  main:
    name: "SelfAuth workflow"
    parent: "documentation/read_data_from_id_card"
    identifier: "documentation/read_data_from_id_card/self_auth_workflow"
    weight: -900
    #pre: '<i class="fa fa-id-badge"></i>'
---
## SelfAuth Workflow

Der SelfAuth Workflow, wie er z.B. in der AusweisApp2 (Android) erfolgt:
{{< br >}}{{< br >}}

- In SelfAuthModel.cpp werden in resetContext fireSelfAuthenticationDataChanged & onSelfAuthenticationDataChanged connected.
- Wurden Daten vom Dienst zurück übermittelt, wird onSelfAuthenticationDataChanged aufgerufen.
- Diese Methode bekommt einen String (im JSON Format?) übergeben
- In der SelfAuthenticationData.qml werden die Daten entsprechend visualisiert
