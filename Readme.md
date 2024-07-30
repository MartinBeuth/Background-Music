
# Readme

## Inhalt

|  |  |
|--|--|
| [Ordnerstruktur](#ordnerstruktur) | [Ansatz](#ansatz) |
| [Hintergrund](#hintergrund) | [Samples](#samples) |
| [Filterung](#filterung) | [Audionetzwerk](#audionetzwerk) |
| [3D](#3d) | [Kompressor](#kompressor) |
| [Mehrfachverwendung](#mehrfachverwendung) | [Mix](#mix) |

---






### Ordnerstruktur
Das Projekt besteht aus drei selbsterklärenden Ordnern: **code**, **result**, **snds**. 
**snds** befindet sich aufgrund seiner Größe bei den Releases.
In **result** finden sich zwei Testresultate: *result1*, *result2* mit je 3 Minuten Länge.

---

### Ansatz

SuperCollider hilft dabei, komplexe Audiosynthese in kleinere, wiederverwendbare Teile zu zerlegen. Das macht es einfacher, den Code zu testen und zu debuggen.
Funktionen können gleichzeitig ausgeführt werden. Das ist wichtig für die Verarbeitung von Audio in Echtzeit.  Außerdem können die Hardware-Ressourcen besser genutzt werden.
Der gesamte Code unterliegt somit dem Programmierparadigma der funktionalen Programmierung. Funktionen werden definiert und kontinuierlich als Daten übergeben. Das hörbare Ergebnis ist ebenfalls ein Funktionsergebnis. 

Der generelle Aufbau wird mit diesem Sequenzdiagramm verdeutlicht:

```mermaid
sequenceDiagram
    participant ReadSamples
    participant FilterSamples
    participant SpecificMix
    participant GeneralMix
    participant Compressor and Limiter
    participant Output
    ReadSamples->>FilterSamples: passed on as data
    FilterSamples->>SpecificMix:passed on as data
    SpecificMix->>GeneralMix: passed on as data
    GeneralMix->>Compressor and Limiter: passed on as data
    Compressor and Limiter->>Output: passed on as data
```

---


### Hintergrund
Es gibt spezielle Musikprogramme, die auf die Bedürfnisse der Kunden zugeschnitten sind, sei es, um die Produktivität der Mitarbeiter zu steigern oder um die Kunden zu animieren und beim Lernen zu unterstützen.

Ein Trend der letzten Jahre ist zudem die Hintergrundmusik auf der Plattform Youtube.

Vom Lofi Girl ([Lofi Girl](https://www.youtube.com/watch?v=jfKfPfyJRdk)) über Sci-Fi-Ambient ([Secret Planet](https://www.youtube.com/watch?v=9OHPfCa6BZs)) bis hin zu Ambience-Videos, die dem Zuhörer das Gefühl vermitteln sollen, in einem Café zu sitzen ([Cozy Fall Coffee Shop Ambience](https://www.youtube.com/watch?v=VMAPTo7RVCo)). \
Hintergrundmusik boomt und die Playlists erreichen zum Teil mehrere Millionen Aufrufe.

Der nachfolgende Code simuliert den Aufenthalt in einem Café. 

---
### Samples

Alle verwendeten Samples befinden sich im Ordner **snds** (siehe Releases).
Sie unterteilen sich thematisch in *technical*, *voices*, *barrista*, *chatter* und *background*. 


|Thema                         |Name       |Quelle|
|---------------------|-----------------------------|--
|technical||
||pour_coffee|[X](https://www.youtube.com/watch?v=G5oV9iTnin4)|
||cups|[X](https://www.youtube.com/watch?v=Dcs7HvRqy-E)|
||coffee_mill|[X](https://www.youtube.com/watch?v=E9Ya6y_vVpE)|
||more_cups|[X](https://www.youtube.com/watch?v=j7kGlSF7MTg)|
||machines_ready|[X](https://www.youtube.com/watch?v=ukXuk6mGfkM)|
||plates|[X](https://www.youtube.com/watch?v=nUCnw7fG2VY)|
|voices||
||some_water|[X](https://www.youtube.com/watch?v=o7m6d_GEzVA)|
||hot_chocolate|[X](https://www.youtube.com/watch?v=ukXuk6mGfkM)|
||male_voice|[X](https://www.youtube.com/watch?v=4FimBgEXk2s)|
|barrista||
||baked_goods|[X](https://www.youtube.com/watch?v=nUCnw7fG2VY)|
||own_blend|[X](https://www.youtube.com/watch?v=G5oV9iTnin4)|
||anecdote|[X](https://www.youtube.com/watch?v=6uPjAjbM1Mg)|
|chatter||
||chatter|[X](https://www.youtube.com/watch?v=qMSrFGT2FK0)|
||chatter_two|[X](https://www.youtube.com/watch?v=ZSrVznkaMEM)|
||chatter_three|[X](https://www.youtube.com/watch?v=TwUv7JvgmKA)|
|background||
||ppltalking|[X](https://www.youtube.com/watch?v=_otFi2e263A)|
||jazz|[X](https://www.youtube.com/watch?v=j4r1nwARENE)|




Jedes Samples durchläuft einen Filterungsprozess. 

Der Prozess nach dem Laden: 

```mermaid
graph LR
A[Sample_geladen] --> B((Pitch))
B((Pitch)) --> C(Ausdehnung)
C{Splay.ar} --> D((width)) --> G[Sample_verarbeitet]
C{Splay.ar} --> E((position)) --> G[Sample_verarbeitet]
C{Splay.ar} --> F((volumne)) --> G[Sample_verarbeitet]

```
Der *Pitch* wird einmalig festgelegt. Die Eigenschaften *width*, *position* und *volume* oszillieren in einem bestimmten Intervall, das von Sample zu Sample variiert. 

Für das Oszillieren wird ein nicht-bandbegrenzter Sägezahn-Oszillator verwendet. 



---
### Filterung 
Mit Ausnahme der Samples im Bereich *chatter* und *background* werden alle Samples durch einen Resonator gefiltert. Dadurch werden bestimmte Frequenzen mit größerer Amplitude wiedergegeben. Das Ergebnis ist eine teils klare, teils dumpfe Klangqualität.

Der Prozess:

```mermaid
graph LR
A[Sample_ungefiltert] 
A[Sample_ungefiltert] --> C{Resonz.ar}
C{Resonz.ar} --> D((frequency)) --> G[Sample_gefiltert]

```

Die Frequenzbereiche, in denen die Abtastwerte schwingen, sind aufeinander abgestimmt und schwingen mit einem nicht bandbegrenzten Sägezahnoszillator in einem bestimmten Intervall.

---
### Audionetzwerk
Nach der Filterung durch den Resonator werden die Samples in die dafür vorgesehenen Audionetzwerke eingespeist. 

Es existieren:

 - network technical
 - network voice
 - network chatter
 - network barrista
 - network general
 
Jedes Audionetzwerk verwendet eine Reihe von zweikanaligen Crossfadern. Die Netzwerke unterscheiden sich in ihrer Struktur. Die Netze *technical, voice, chatter und barrista* werden schließlich im *general* Netzwerk verarbeitet.

Die schematische Darstellung verzichtet aus Gründen der Übersichtlichkeit auf die Faderklasse.

Aufbau *network technical*: 

```mermaid
graph LR
A[filter_cups] -->AAA[x_technical] 
B[filter_pourcoffee] -->AAA[x_technical] 
D[filter_coffeemill] -->AAB[x_technical] 
E[filter_morecups] -->AAB[x_technical]
F[filter_machinesready] -->AAC[x_technical3]
G[filter_plates] -->AAC[x_technical3]
AAA[x_technical] -->AAAA[x_tech]
AAB[x_technical2] --> AAAA[x_tech]
AAC[x_technical3] --> AAAB[x_tech2]
AAAA[x_tech] --> AAAB[x_tech2]
AAB[x_technical2] --> AAAC[x_tech3]
AAAA[x_tech] --> AAAC[x_tech3]
AAAB[x_tech2] --> AAAD[x_tech4]
AAAC[x_tech3] --> AAAD[x_tech4]
AAC[x_technical3] -->AAAE[x_tech5]
AAAD[x_tech4] --> AAAE[x_tech5]
AAAD[x_tech4] --> AAAF[x_tech6]
AAAE[x_tech5] --> AAAF[x_tech6]
AAC[x_technical3] --> AAAG[x_tech7]
AAAE[x_tech5] --> AAAG[x_tech7]
AAAF[x_tech6] -->AAAH[x_tech8]
AAAG[x_tech7] --> AAAH[x_tech8]

```
Aufbau *network voice*: 
```mermaid
graph LR
AA[filter_somewater]-->A[x_voice]
AB[filter_hotchoc]-->A[x_voice]
AC[filter_male]-->B[x_voice2]
AD[jazz]-->B[x_voice2]
```

Aufbau *network chatter*: 
```mermaid
graph LR
A[filter_chatter] -->AA[x_chatter1]
A[filter_chatter] -->AB[x_chatter2]
AA[x_chatter1]-->AB[x_chatter2]
B[filter_chatter2] -->AA[x_chatter1]
B[filter_chatter2] -->AC[x_chatter3]
AA[x_chatter1]-->AC[x_chatter3]
AB[x_chatter2]-->AD[x_chatter4]
AC[x_chatter3]-->AD[x_chatter4]
AC[x_chatter3]-->AE[x_chatter5]
AD[x_chatter4]-->AE[x_chatter5]
AD[x_chatter4]-->AF[x_chatter6]
AE[x_chatter5]-->AF[x_chatter6]
C[filter_chatter3]-->AG[x_chatter7]
AE[x_chatter5]-->AG[x_chatter7]
AF[x_chatter6]-->AH[x_chatter8]
AG[x_chatter7]-->AH[x_chatter8]

```

Aufbau *network barrista*: 
```mermaid
graph LR
A[filter_barrista]-->AA[x_barrista1]
A[filter_barrista]-->AB[x_barrista2]
AA[x_barrista1]-->AB[x_barrista2]
B[filter_barrista2]-->AA[x_barrista1]
AA[x_barrista1] -->AC[x_barrista3]
AB[x_barrista2]-->AC[x_barrista3]
AB[x_barrista2]-->AD[x_barrista4]
AC[x_barrista3]-->AD[x_barrista4]
C[filter_barrista3]-->AE[x_barrista5]
AD[x_barrista4]-->AE[x_barrista5]

```
Aufbau *network general*: 
```mermaid
graph LR
A[x_tech8]-->AA[x_general]
AA[x_general]-->AB[x_general2]
B[x_voice]-->AA[x_general]
C[x_voice2]
D[x_chatter8]-->AB[x_general2]
AB[x_general2]-->AC[x_general3]
B[x_voice]-->AC[x_general3]
AB[x_general2]-->AD[x_general4]
AC[x_general3]-->AD[x_general4]
AD[x_general4]-->AE[x_general5]
E[x_barrista5]-->AE[x_general5]
AD[x_general4]-->AF[x_general6]
AE[x_general5]-->AF[x_general6]
AE[x_general5]-->AG[x_general7]
E[x_barrista5]-->AG[x_general7]
AF[x_general6]-->AH[x_general8]
AG[x_general7]-->AH[x_general8]
AH[x_general8]-->AI[x_general9]
D[x_chatter8]-->AI[x_general9]
AH[x_general8]-->AJ[x_general10]
AI[x_general9]-->AJ[x_general10]
AI[x_general9]-->AK[x_general11]
C[x_voice2]-->AK[x_general11]
AJ[x_general10]-->AL[x_general12]
x_general11-->AL[x_general12]


```

---

### 3D
Nach der Erstellung der Audionetzwerke werden sowohl das Netzwerk *x_general12* als auch das Sample *backgroundnoise* in zwei separate Gleichungen eingesetzt, die den Klang links und rechts bzw. oben und unten abwechseln lassen. Bei *x_general12* wird sowohl links und rechts als auch oben und unten mit einem Sägezahnoszillator gearbeitet. Bei *backgroundnoise* wird der Klang nur links und rechts variiert.

Aufbau *roomnoise*
```mermaid
graph LR
D((fader_room1))--> C{Pan4.ar}
A[x_general12] --> C{Pan4.ar}
E((fader_room2))--> C{Pan4.ar}
C{Pan4.ar}-->roomnoise
```

Aufbau *roombackground*
```mermaid
graph LR
D((0))--> C{Pan4.ar}
A[x_general12] --> C{Pan4.ar}
E((fader_background))--> C{Pan4.ar}
C{Pan4.ar}-->roombackground
```

---
### Kompressor
Der nächste Schritt ist die Übergabe von *roombackground* und *roomnoise* an Kompressor und Limiter. In beiden Fällen werden die Werte nur einmal gesetzt. Die entsprechenden Variablen heißen *compressor* und *normal*. 

Aufbau *compressor*:

```mermaid
graph LR
A[roombackground]-->C{Compander.ar}-->D[compressor]
B[roomnoise]-->C{Compander.ar}

```

Aufbau *normal*: 
```mermaid
graph LR
A[compressor]-->C{Limiter.ar}-->D[normal]
```

---

### Mehrfachverwendung
Die Klasse *Splay.arFill* ermöglicht es eine Reihe von Audiokanälen über das Stereofeld zu verteilen. Die Variable *normal*, die das bisher erzeugte Audiosignal enthält, wird nun 30 mal verwendet und in der Variable *spread* gelagert. Die sonstigen Werte wurden gesetzt. 

Aufbau *spread*: 
```mermaid
graph LR
A[normal]-->C{Splay.arFill}-->D[spread]
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}
A[normal]-->C{Splay.arFill}

```

---
### Mix
Im letzten Schritt mischt *Mix.new* eine Reihe von Kanälen, in dem Fall 12 mal *spread* auf einen einzigen Kanal herunter.

Aufbau *Mix.new*:
```mermaid
graph LR
A[spread]-->C{Mix.new}
A[spread]-->C{Mix.new}
A[spread]-->C{Mix.new}
A[spread]-->C{Mix.new}
A[spread]-->C{Mix.new}
A[spread]-->C{Mix.new}
A[spread]-->C{Mix.new}
A[spread]-->C{Mix.new}
A[spread]-->C{Mix.new}
A[spread]-->C{Mix.new}
A[spread]-->C{Mix.new}
A[spread]-->C{Mix.new}
```

