---
title: "Integration der SharkNet2Android in die AusweisApp2"
menu:
  main:
    name: "Integration der SharkNet2Android in die AusweisApp2"
    parent: "documentation"
    identifier: "documentation/sharknet2android_integration_into_ausweisapp2"
    weight: -991
    pre: '<div class="shark"></div>'
---
## Integration der SharkNet2Android in die AusweisApp2
SharkNet2Android basiert auf dem ASAP Protokoll, das einen Austausch von Daten zwischen zwei Entitäten ermöglicht. Das Protokoll besitzt eine [Java Implementierung](https://github.com/SharedKnowledge/ASAPJava), diese wird von einer [Android Implementierung](https://github.com/SharedKnowledge/ASAPAndroid) integriert, auf die [SharkNet2Android](https://github.com/SharedKnowledge/SharkNet2Android) zugreift.

Es soll ein Paket net.sharksystem.android.eID eingerichtet werden, das Funktionalitäten zum Auslesen des elektronischen Personalausweises enthält.

## Use Cases für eine Intgration in SharkNet2Android

- Als Besitzer eines Gerätes auf dem SharkNet2Android installiert ist, möchte ich mich registrieren, indem ich einen Personalausweis auslese.
- Als Besitzer eines Gerätes auf dem SharkNet2Android installiert ist, möchte ich Kontakte hinzufügen, indem ich einen Personalausweis auslese.

## Ansatzpunkt für die Integration

Die Klasse net.sharksystem.persons.android.PersonsStorageAndroid enthält Funktionen, um Kontakte zu verwalten. Die Klasse net.sharksystem.sharknet.android.SharkNetApp enthält eine Subklasse OwnerStorage, auf die die Klasse net.sharksystem.persons.android.OwnerActivity zugreift, um den Benutzernamen zu speichern. In der onSaveClick Methode soll der Owner wahlweise über das Package android.eID als alternative Eingabemethode gesetzt werden können.

## Funktion zum Setzen des Benutzernamens in der AusweisApp2Activity

### In der Datei **app/src/main/AndroidManifest.xml** wird der Einstiegspunkt der App per Intent-Filter in folgender Form festgelegt:

```xml
<activity
    android:name=".makan.android.MakanListActivity"
    android:launchMode="singleTask">
    <intent-filter>
        <action android:name="android.intent.action.MAIN" />
        <category android:name="android.intent.category.LAUNCHER" />
    </intent-filter>
</activity>
```

Es wird zunächst die MakanListActivity gestartet.

![Android main intend](android_main_intend.png#center)

### Beim Erstellen der MakanListActivity wird in der onCreate Methode zunächst die onCreate Methode der Oberklasse SharkNetActivity ausgeführt.

![Android main intend](sharknetnctivity_oncreate.png#center)

### Ist ein Nutzer (Owner) nicht bereits festgelegt, wird im weiteren Verlauf die InitActivity gestartet, in der der Owner durch Eingabe des Nutzernamens festgelegt wird.

![SharkNetActivity onCreate starts init activity](sharknetactivity_oncreate_starts_initactivity.png#center)

### Integration der AusweisApp2 als Activity in SharkNet2Android

Die Klasse muss von SharkNetActivity erben.

Der Konstruktor muss zunächst den Konstruktor von SharkNetActivity ausführen.

Die onCreate Methode muss zunächst onCreate von SharkNetActivity ausführen.

Damit eine Aktivität einen Rückgabewert erzeugt, muss die aufrufende Methode

- diese mit startActivityForResult() aufrufen
- eine onActivityResult() Methode besitzen, die nach dem Beenden der aufgerufenen Aktivität den Rückgabewert von dieser auswertet

Die Aktivität, die einen Rückgabewert liefert

- muss eine setResult() Methode besitzen, die in der finish() Methode einen Rückgabewert in Form eines Intents an die aufrufende Methode übergibt

**In aufrufender Klasse (InitActivity)**

```java
public String getUsername(View view) {
    Intent i = new Intent(this, AusweisApp2Activity.class);
        i.putExtra("username", "Value");
    startActivityForResult(i, REQUEST_CODE);
    return i.getExtras().getString(“username”);
}

@Override
protected void onActivityResult(int requestCode, int resultCode, Intent data) {
    if (resultCode == RESULT_OK && requestCode == REQUEST_CODE) {
        if (data.hasExtra("username")) {
            data.getExtras().getString("username");
        }
    }
}
```

**In aufgerufener Klasse (AusweisApp2Activity)**

```java
@Override
public void finish() {
    Intent data = new Intent();
    data.putExtra("username", getUsername().toString());
    setResult(RESULT_OK, data);
    super.finish();
}
```

## Quellen:

- https://www.vogella.com/tutorials/AndroidIntent/article.html#retrieving-result-data-from-a-sub-activity
