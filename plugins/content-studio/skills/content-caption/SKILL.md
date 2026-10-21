---
name: content-caption
description: "Schrijft de caption en de slidetekst van een post op basis van een haakje uit je Content Calendar of een nieuw haakje, schrijft volgens de HVVA-structuur (Herkenning, Verlangen, Vertrouwen, Actie) in de stem uit je Tone of Voice voor social content, toetst aan je Content Pillars en Business DNA, slaat na akkoord de caption op als Concept in Notion en bij Goedgekeurde captions, en levert daarna de prompt voor Claude Design in één kopieerbaar blok, met een andere layout dan de vorige post. Vraagt eerst of het een carrousel of een reel wordt. TRIGGERS op @caption, @content-caption, \"schrijf de caption\", \"maak er een post van\", \"werk dit haakje uit\", \"schrijf de post\", \"maak de carrousel\", \"maak een reel van dit haakje\", of elke vraag om van een haakje of idee een volledige post te maken binnen Claude Content Studio.\n"
---

# Caption - Claude Content Studio

Van haakje naar afgeronde post: eerst de caption, na akkoord opslaan, daarna de slidetekst
in één prompt voor Claude Design.
Caption eerst, daarna verdelen over de slides. Nooit andersom. Elke caption is opgebouwd
volgens HVVA: Herkenning, Verlangen, Vertrouwen, Actie.

## Twee definities

- **Caption:** de tekst onder de post. Haakje als eerste regel, dan het verhaal, dan de
  afsluiter. Maximaal 2100 tekens inclusief spaties. Dit is de bron voor de slides.
- **Slidetekst:** wat op de carrousel staat, afgeleid uit de caption. Slide 1 is gelijk aan
  het haakje, de laatste slide is de CTA. Bij een reel is het de ene zin op de omslag.

---

## Omgevingscheck

Doe dit vóór alles, volgens `references/omgevingscheck.md`:

1. Notion gekoppeld? Anders: melding: koppel Notion in de Claude-app via Aanpassingen
   (Customize) > Connectors, stop.
2. Content Calendar en Content Pillars gevonden? Anders: `@content-studio-setup`
   aanroepen, stop.
3. Map Content Studio met `MEMORY.md`? Anders: `@content-studio-setup`, stop.
4. Map `Content Studio/Goedgekeurde captions`? Anders: `@content-studio-setup` opnieuw
   draaien, stop.

Het bestand `Content Studio/Design System/design-system.md` controleer je **pas bij stap 7**,
niet nu. Stap 1 tot 6 werken zonder.

Is alles er, meld dat dan niet. Ga door.

---

## Fase 0 - Inlezen

1. `Content Studio/MEMORY.md`, alleen de sectie `## Caption`. Deze regels wegen zwaarder dan
   de richtlijnen hieronder.
2. `Content Studio/Goedgekeurde captions/goedgekeurde-captions.md`: de laatste twintig
   captions die de gebruiker heeft goedgekeurd, nieuwste bovenaan. Dit is hoe hij het nú
   doet; de Stijlvoorbeelden in Tone of Voice - Social content - voorbeelden zijn de norm. Gebruik als stijlreferentie,
   niet om te kopiëren. Dit bestand en Goedgekeurde haakjes zijn **historie**: je leest ze
   voor toon, ritme en patronen. Je haalt er nooit een haakje of zin uit om in de post van nu
   te zetten. Wat in het gesprek staat is leidend, altijd. Bestaat het bestand nog niet? Prima; het wordt aangemaakt bij de
   eerste caption die wordt opgeslagen.
3. Business DNA, in deze volgorde en alle vier volledig:
   - `SAMENVATTING.md`: met welk merk werk je, voor wie, wat verkoopt ze.
   - `Origineel/Tone of Voice.md`: de stem zelf.
   - `Origineel/Tone of Voice - Social content.md`: wat op social anders is en de skeletten.
     Dit document is de norm voor elke caption.
   - `Origineel/Tone of Voice - Social content - voorbeelden.md`: de **Stijlvoorbeelden**,
     de vijf posts die de gebruiker zelf het sterkst vindt.
   Ontbreekt het social-kanaaldocument, meld dat dan één keer: "Ik vind geen Tone of Voice
   voor social content. Ik schrijf nu op basis van je algemene Tone of Voice, maar zonder je
   stijlvoorbeelden wordt het minder van jou. Draai `@businessdna-tone-of-voice` en kies
   daar het kanaal social content." Ga daarna door.
   Staat het kanaaldocument er wel maar ontbreekt het voorbeeldendocument, meld dan één keer:
   "Ik vind je Tone of Voice voor social content, maar niet het document met je vijf
   stijlvoorbeelden. Ik schrijf nu zonder die posts naast me, en dan wordt het minder van jou.
   Draai `@businessdna-tone-of-voice`, kies het kanaal social content en kies daar je vijf
   sterkste posts." Ga daarna door.
   Lees daarnaast altijd `Origineel/Ideal Client.md`, vooral de klanttaal (letterlijke
   zinnen), de verlangens en de bezwaren. Daar komen de woorden van Herkenning en Verlangen
   vandaan.
4. Content Pillars in Notion: de namen én de body van elke pillarpagina (Wat past hier wel
   in, Wat past hier niet in, Klanttaal, Do's, Don'ts). Is een pillar leeg of missen de
   kopjes, meld dat één keer en verwijs naar `@content-studio-setup`.
5. `references/schrijfkwaliteit.md`: de zwarte lijst, de test tegen generiek, de stemcheck en
   het teruggeven van stemcorrecties. Die gebruik je in stap 4 en fase 8.

---

## Stap 1 - Carrousel of reel?

Vraag het vooraan, niet aan het eind:

> "Wordt dit een carrousel, een reel of een losse post?"

Blijkt het al uit het gesprek, dan vraag je het niet. Bij een reel schrijf je straks de
caption plus één zin voor de omslag. Bij een losse post de caption plus één zin voor het
beeld. Bij een carrousel de caption plus de slidetekst.

Vraag in hetzelfde bericht het kanaal (Instagram of LinkedIn), tenzij dat al bekend is.

---

## Stap 2 - Heb je een haakje?

**Eigen caption?** Plakt de gebruiker een afgemaakte caption, of zegt ze dat de caption al af
is, dan sla je stap 2 tot en met 5 over. De caption is af. Je herschrijft niets: geen andere
opening, geen ander haakje, geen zin erbij, ook niet als hij niet aan HVVA of aan een skelet
voldoet. Valt je iets op, dan mag je dat in één regel zeggen ("Ik zie dat de afsluiter geen
vraag is; wil je dat ik dat aanpas, of laat ik hem zo?") en je wacht op het antwoord. Vraag
alleen wat je nog niet weet: carrousel of reel, kanaal, en of hij bij een bestaande pagina in
de Content Calendar hoort. Ga dan naar stap 6.

**Ja, uit de Content Calendar:** haal de laatste vijf pagina's met Status `Idee` op,
nieuwste eerst, en toon ze genummerd met Hook en Fase. Voeg als optie 6 "een nieuw haakje"
toe. Laat kiezen op nummer. Matchen op de exacte tekst van een haakje is fragiel; doe dat
niet.

Zijn er meer dan vijf ideeën en staat het gezochte er niet bij, vraag dan een woord uit het
haakje en zoek daarop.

**Nee, of "nieuw haakje":** bedenk samen een haakje. Vraag waar de post over moet gaan
(inspreken mag; een halve zin is genoeg), kies met de gebruiker een pillar en een fase (die
vul je bij het opslaan in), en stel één haakje voor. Zelfde regels als `hookgenerator`: over het probleem, niet over het
aanbod (behalve Product Aware en Fully Aware), klanttaal, kort, geen clou verklappen.
Eén haakje, geen drie.

Vraag daarna in beide gevallen waar de caption over gaat: welk verhaal, welk voorbeeld, welk
inzicht. Eén vraag. Inspreken mag.

**Eén scherpe vervolgvraag als het antwoord vaag is.** Zit er in het antwoord geen concreet
moment, geen voorbeeld en geen letterlijke zin, vraag dan precies één keer door, met de
aanleiding erbij:

> "Daar kan ik mee verder, maar het wordt sterker met één concreet moment. Wanneer zag je dit
> voor het laatst, bij jezelf of bij een klant? Wat werd er letterlijk gezegd?"

Komt er nog steeds niets concreets, ga dan door met wat er is en gebruik de klanttaal uit
Ideal Client. Vraag niet een derde keer.

---

## Stap 3 - Caption schrijven volgens HVVA

Elke caption volgt dezelfde inhoudelijke volgorde: **Herkenning, Verlangen, Vertrouwen,
Actie**. Dat is de volgorde van wat je zegt. Hoe het klinkt en hoe het op het scherm staat,
komt uit het social-kanaaldocument: skeletten, ritme, witregels, afsluiters. Botst een skelet
van de gebruiker met HVVA, dan wint het skelet op vorm en HVVA op inhoud: elk van de vier
elementen moet erin zitten, in deze volgorde, ook als het skelet ze anders benoemt.

1. **Herkenning.** Het haakje als eerste regel, letterlijk. Daarna een mini-scène die de
   volger direct herkent: een frustratie, een gedachte, een situatie die zij regelmatig
   meemaakt. Twee tot vier zinnen mag. Klanttaal uit Ideal Client en uit de pillar. De
   lezer moet denken: dit ben ik.
2. **Verlangen.** Hoe het eruitziet als het anders is. Beeldend en concreet: wat voelt
   lichter, wat gebeurt er dan wel. Niet "stel je voor dat het beter gaat", maar de scène
   van het betere. Uit Ideal Client: de verlangens en wat de klant echt voor elkaar wil
   krijgen.
3. **Vertrouwen.** Laat zien dat de schrijver dit snapt: een eigen ervaring, een
   klantvoorbeeld, een inzicht dat alleen iemand met ervaring heeft. Tonen, niet beweren.
   Dit komt uit het verhaal dat de gebruiker in stap 2 gaf; verzin geen ervaringen en geen
   cijfers.
4. **Actie.** Eén zachte maar duidelijke volgende stap. Niet "koop dit", wel "wil jij dit
   ook?". Per fase:
   - Unaware, Problem Aware, Solution Aware: verbinding. Een vraag, een uitnodiging om te
     reageren of te bewaren. Geen aanbod.
   - Product Aware en Fully Aware: het aanbod mag, in de woorden uit het kanaaldocument
     onder Afsluitingen en actie.

Niet elk element weegt even zwaar. Bij Unaware draagt Herkenning de post, bij Fully Aware
Vertrouwen en Actie. Maar alle vier zijn aanwezig, altijd.

Regels:

- **Lees eerst de Stijlvoorbeelden** uit Tone of Voice - Social content - voorbeelden, vóór je schrijft. Dat zijn
  de posts waarvan de gebruiker zelf zegt: zo klink ik. Kies er twee die het dichtst bij de
  fase en het onderwerp van deze post liggen en houd die naast je. Kopieer geen zinnen; neem
  het ritme, de openingen en de manier van afsluiten over. Lees daarna de goedgekeurde
  captions: wijken die af van de Stijlvoorbeelden (korter, andere afsluiter), dan is dat de
  richting waarin de gebruiker beweegt en schrijf je daarnaartoe.
- **Lengte is een bandbreedte.** Standaard: Instagram 500 tot 2100 tekens, LinkedIn 800 tot
  3000 tekens, inclusief spaties. Staat onder Lengte en ritme in het social-document een
  gemeten lengte, dan geldt die (binnen de harde limiet van het platform). Vraagt de gebruiker
  om korter of langer, dan volg je dat. Tel na het schrijven. Zit je boven de harde limiet
  (Instagram 2100, LinkedIn 3000), kort dan in vóór je toont en zeg erbij: "De caption was
  [n] tekens, ik heb hem ingekort tot [n] zodat hij binnen de limiet past." Zit je onder het
  minimum, kijk dan welk HVVA-element dun is en vul dat aan met wat de gebruiker gaf, niet met
  opvulling.
- Niets van de zwarte lijst, beide lagen, uit `schrijfkwaliteit.md`. Laag 2 bevat de
  verboden woorden uit Tone of Voice.
- Geen aannames over de doelgroep die niet uit Business DNA komen.
- LinkedIn: geen emoji's, langer mag, het haakje moet af zijn binnen de eerste twee regels.
  Instagram: korter, hashtags alleen als de gebruiker erom vraagt.
- Eén uitwerking. Geen drie varianten.

---

## Stap 3b - Stemcheck vooraf bij een nieuwe gebruiker

Bestaat `goedgekeurde-captions.md` nog niet, of staan er minder dan drie captions in, dan weet
je nog niet goed hoe deze gebruiker klinkt. Schrijf dan eerst alleen het haakje plus het deel
Herkenning, toon dat, en vraag:

> "Voor ik de hele caption schrijf: klinkt dit begin als jij? Wat zou jij anders zeggen?"

Pas aan tot het klopt. Correcties op de stem gelden voor de rest van de caption; houd ze bij
voor fase 8. Schrijf daarna de volledige caption en ga naar stap 4.

Staan er drie of meer goedgekeurde captions, sla dit over.

---

## Stap 4 - Toetsen vóór je toont

Loop deze vier toetsen na op de volledige caption. Corrigeer wat niet klopt vóór het tonen.
Meld het niet achteraf als een fout; zeg alleen bij de pillartoets in één regel wat je hebt
aangepast en waarom.

1. **Pillar.** Lees de body van de gekozen pillar. Toets tegen **Wat past hier niet in** en
   **Don'ts**. Weet je niet zeker in welke pillar de post hoort? Toets dan tegen de twee meest
   waarschijnlijke en zeg welke je hebt gebruikt.
2. **Stemcheck** uit `schrijfkwaliteit.md`: opening volgens haar haakpatronen, zinslengte
   binnen haar bandbreedte, aanspreekvorm, emoji en leestekens, afsluiter zoals in het
   social-document, en valt hij niet op tussen haar stijlvoorbeelden.
3. **Test tegen generiek** op de eerste regel en op de zin die het Verlangen draagt.
4. **Zwarte lijst**, beide lagen, en de lengte binnen de bandbreedte.

---

## Stap 5 - Caption tonen en aanpassen

Toon alleen de caption, met het aantal tekens. Geen slidetekst, geen prompt, geen uitleg.
Pas aan op verzoek tot de gebruiker tevreden is.

---

## Stap 6 - Akkoord vragen

Vraag, letterlijk en zonder toelichting:

> "Ben je akkoord? Als je ja zegt, doe ik dit:
> 1. De caption opnemen in Goedgekeurde captions in je lokale map
> 2. De caption opnemen in je Content Calendar in Notion
> 3. Een prompt maken voor Claude Design, zodat je je slides kunt genereren"

Voeg onder die vraag alleen regels toe als ze van toepassing zijn:

- **Wijkt het gesprek af van Notion of van de historie?** Bijvoorbeeld: het Hook-veld van de
  pagina is een andere zin dan de eerste regel van de caption, of in Goedgekeurde haakjes staat
  een andere versie. Dan: "In Notion staat als haakje \"[zin]\". Jouw caption begint met
  \"[eerste regel]\". Zal ik het haakje in Notion en in Goedgekeurde haakjes bijwerken naar
  de eerste regel?" Je past nooit iets aan zonder deze vraag, en je gebruikt nooit de oude
  zin in de slides. Het gesprek wint; de historie volgt, na een ja.
- **Handschriftregel.** Heeft het design system een handschriftregel op de cover, dan is dat de
  enige tekst die niet uit de caption komt. Stel hem voor: "Handschriftregel op de cover:
  \"[voorstel]\". Goed zo, of wil je een andere?"

**Bij nee:** vraag wat er nog anders moet en ga terug naar stap 5.

---

## Stap 7 - Uitvoeren na ja

Voer alles uit zonder tussenberichten. Het antwoord aan de gebruiker bestaat daarna uit
precies twee dingen: **de link naar de Notion-pagina** en **één codeblok met de prompt**.
Geen samenvatting, geen uitleg over layout of foto, geen tekentelling.

Stop alleen als iets niet lukt, en zeg dan in één zin wat en wat de gebruiker moet doen.
Twee vragen mogen vóór de prompt nog wel: een ingekorte versie van een slide die meer dan tien
tekens over de limiet gaat, en een foto als er geen brandfoto meer vrij is (zie 7c).

### 7a - Goedgekeurde captions

Voeg de caption toe aan `Content Studio/Goedgekeurde captions/goedgekeurde-captions.md`,
nieuwste bovenaan, maximaal twintig (de oudste gaat eruit). Volg de opbouw die al in het
bestand staat; zet onder het haakje een regel `Layout:` met de keuze uit 7c. Nieuw bestand:

```
# Goedgekeurde captions
De laatste twintig, nieuwste bovenaan. Stijlreferentie voor volgende sessies.

## [jjjj-mm-dd] · [fase] · [soort] · [kanaal]
Haakje: [de eerste regel van de caption]
Layout: [achtergrond] · [cover- of omslagvariant] · foto's [cover of omslag: naam, tussenslides: namen, of: eigen]

[de volledige caption, letterlijk]
```

Geen design system: `Layout: geen design system`. Bestaat de map niet: melden, verwijzen
naar `@content-studio-setup`, de map niet zelf maken.

### 7b - Content Calendar

- **Bestaande pagina** (haakje uit stap 2): Status `Concept`, Soort en Kanaal invullen, hele
  body vervangen door de caption in een codeblok. Pillar laten staan; leeg, dan de pillar uit
  stap 4.
- **Nieuwe pagina:** Hook, Status `Concept`, Fase, Pillar, Soort, Kanaal, caption in een
  codeblok als body.

De body is altijd **één codeblok** met daarin de caption, letterlijk: regelafbrekingen,
witregels en emoji's precies zoals goedgekeurd. Zo kopieert de gebruiker hem met één klik naar
Instagram, zonder dat Notion de opmaak verandert. Schrijf de body precies zo, met `plain text`
als taal:

````
```plain text
[de caption, letterlijk]
```
````

**Controle na het schrijven:** haal de pagina direct op en kijk of de body met een codeblok
begint en de hele caption erin staat. Staat de caption als gewone tekst in de body, vervang de
body dan alsnog door het codeblok. Lever de link pas als dat klopt.
Niets erboven of eronder: geen kopjes, slidetekst of prompt (zie
`references/pagina-opbouw.md`). Database op naam zoeken, live schema ophalen, nooit een optie
aanmaken. Bewaar de link uit de API-response.

### 7c - Prompt voor Claude Design

**Controle.** Open `Content Studio/Design System/design-system.md` en zoek het blok tussen
`=== DESIGN SYSTEM ===` en `=== EINDE DESIGN SYSTEM ===`. Ontbreekt het, of staat er
`[nog invullen` in: geef de link en daaronder alleen "Nog geen prompt: je design system
ontbreekt. Maak het met `@designsystem` in Claude Code." Verzin geen
limieten of layout.

**Layout afwisselen**, zonder er iets over te zeggen:
- Opties: achtergrondsystemen en covervarianten uit `applications/carrousels.md`,
  omslagvarianten uit `applications/reels.md`; ontbreken die, de stijlregels uit het blok.
- Geschiedenis: de regels `Layout:` in goedgekeurde-captions.md. Kijk naar de vorige post,
  de vorige carrousel en de vorige reel.
- Kies een achtergrond die anders is dan de vorige post en de vorige van dezelfde soort, een
  andere cover dan de vorige carrousel of een andere omslag dan de vorige reel, en zet de
  quote of opsomming op een andere plek dan vorige keer. Meerdere opties over: de langst niet
  gebruikte.
- Foto's kies je apart, volgens **Foto's kiezen** hieronder.
- Staat deze caption zelf al in goedgekeurde-captions.md met een regel `Layout:` (je maakt de
  prompt opnieuw voor dezelfde post), houd die layout dan aan. De vorige post is dan de eerste
  andere caption eronder.
- Controle vóór je levert: is de achtergrond in je prompt dezelfde als in de bovenste regel
  `Layout:` van een andere caption? Dan is de keuze fout. Kies opnieuw.

**Foto's kiezen.** Jij kiest elke foto, niet Claude Design: de foto op de cover of omslag en
de foto op elke tussenslide of CTA waar het design system een foto zet. Zo wordt er nooit
willekeurig gekozen en nooit dubbel.

- **Bibliotheek:** `Content Studio/Design System/fotos.md`. Per foto staat daar wat erop
  staat, de uitstraling, waar de persoon staat, wat vrij is voor tekst en bij welke
  onderwerpen hij past.
- **Logboek:** `Content Studio/fotogebruik.md`. Bestaat het niet, maak het dan aan met de
  kop `# Fotogebruik` en de regel "Bijgehouden door de caption-skill. Nieuwste bovenaan." Per
  post één regel:
  `[jjjj-mm-dd] · [Carrousel / Reelomslag] · [haakje] · cover [naam] · slides [namen of -]`.
  Een eigen foto van de gebruiker schrijf je als `eigen`.
- **Niet te kiezen:** de foto op een cover of omslag mag niet voorkomen in de laatste
  **negen** regels van het logboek, op welke plek ook: dat is wat je in drie rijen van het
  feed naast elkaar ziet. Een foto op een tussenslide of de CTA mag niet voorkomen in de
  laatste **drie** regels. Binnen één post gebruik je een foto nooit twee keer.
- **Noemt de gebruiker zelf brandfoto's** uit `fotos.md` (bij naam of beschrijving), gebruik
  die dan en zet ze in het logboek, ook als ze binnen het venster vallen; zeg dat dan in één
  zin. Foto's van buiten het design system komen niet in de prompt en niet in het logboek;
  die zijn een uitzondering die de gebruiker zelf in Claude Design regelt.
- **Kiezen uit wat overblijft:** eerst op onderwerp (pillar en de toon van het haakje tegen
  `Past bij` en `Uitstraling`), dan op ruimte (`Vrij voor tekst` moet passen bij waar de tekst
  op die slide staat), dan de langst niet gebruikte.
- **Te weinig foto's over:** hergebruik er geen. Vraag in één zin: "Voor deze post is geen
  brandfoto meer over die niet in je laatste negen posts zat. Upload je er zelf een bij de
  prompt, of voeg je brandfoto's toe?" Lever de prompt pas daarna. Uploadt de gebruiker een
  foto, dan wordt het `eigen`.
- **Opnieuw maken voor dezelfde post:** staat het haakje al bovenaan in het logboek, houd dan
  dezelfde foto's aan en vervang die regel; voeg geen nieuwe toe.
- **Geen `fotos.md`:** dan zet het design system geen brandfoto's klaar. Vraag de gebruiker
  per post een foto te uploaden en schrijf `eigen` in het logboek.
- Werk het logboek bij op het moment dat je de prompt levert.

**Slidetekst.** Carrousel: verdeel de caption in blokken en de blokken over slides, volgens
de regels bij een carrousel hieronder; het aantal slides volgt daaruit, binnen het minimum en
maximum uit het design system. Reel of losse post: één zin. Toets aan de limieten volgens
**Tekenlimieten** hieronder. Moet er iets ingekort worden, leg dan je ingekorte versie voor
en lever de prompt pas na een ja.

**Emoji's en icoontjes gaan mee.** Staat er in de caption of in wat de gebruiker aanleverde
een emoji of icoon bij een zin, opsommingsregel of CTA, neem die dan letterlijk en op
dezelfde plek over in de slidetekst. Niet weglaten, niet vervangen door bolletjes, niet
toevoegen waar ze niet stonden. Een emoji telt mee als twee tekens voor de limiet.

**De prompt**, in één codeblok, niets anders erin. Vul alles in; laat geen haken staan. Zet
per slide het layouttype, de HVVA-rol, de kop en de tekst apart, en wijs per tekstslide één
kernwoord of kernzin aan voor de nadruk. Onderdelen die niet bestaan in het design system
(geen serielabel, geen handschriftregel) laat je weg. Bij een reel of losse post vervalt het
slidedeel en beschrijf je de omslag of het beeld op dezelfde manier: rol, kop, handschriftregel.

```
Naam: [Carrousel - eerste zin van de caption / Reelomslag - eerste regel van de caption]

Maak een [carrousel van n slides / reelomslag / post] voor [kanaal] met mijn design system.
Lees eerst CLAUDE.md en [applications/carrousels.md / applications/reels.md]. Bouw elke slide
op het voorbeeld van dat layouttype uit mijn eigen posts.

Formaat: [breedte x hoogte px] per slide, naast elkaar van links naar rechts.
Achtergrond: [gekozen achtergrondsysteem], op alle slides.
[Cover: [covervariant] / Omslag: [omslagvariant]]
[Serielabel: "[label]" [positie], slide 2 tot en met n.]
Tussenslides: de tekst begint op de startlijn uit mijn design system, nooit verticaal
gecentreerd. De lopende tekst is op alle tussenslides even groot. Tussen twee gedachten precies
één witregel, nooit meer en nooit tekst oprekken; woorden veranderen niet.

Gebruik exact de tekst hieronder. Verzin geen nieuwe tekst, herschrijf niets, kort niets in.
Emoji's letterlijk overnemen op dezelfde plek, ook als opsommingsteken; nooit vervangen door
een streepje of bolletje. Alleen een kop waar "Kop:" staat; verzin er nergens een bij.

Slide 1 · Cover
Kop: "[eerste regel van de caption, letterlijk]"
[Handschriftregel: "[regel]"]
Foto: [naam uit fotos.md / de foto die ik upload]

Slide 2 · [Tekstslide / Statement / Opsomming / Grote vorm]
[Kop: "[zin uit de caption]"  of: Geen kop.]
Tekst: "[tekst, met de regelafbrekingen en emoji's zoals in de caption]"
[Nadruk: "[kernwoord of kernzin]"]
[Foto: [naam]]   [alleen als het design system op dit type slide een foto zet]

...

Slide n · CTA
[Kop: "[zin uit de caption]"  of: Geen kop.]
Actie: "[actie]"
[DM-woord: "[WOORD]"]

Foto's: gebruik precies de foto's die per slide genoemd staan, uit assets/templates/brandfotos,
en kies er zelf geen bij. Zet de tekst in de vrije ruimte van de foto; tekst of een vlak
bedekt nooit het gezicht of lichaam.
Fonts, kleuren en hoofdlettergebruik: zoals in mijn design system. Tekst nooit kleiner dan
op mijn posts; een tekst tot tien tekens boven de limiet hoort te passen.
Een opsomming staat heel op één slide.
Controleer voor je oplevert: is de tekst even groot als op het voorbeeld, is het haakje op
staat de coverkop op hooguit twee regels met ruimte rondom, staat de tekst letterlijk zo, begint de tekst op elke tussenslide op de startlijn, staat elke foto op de genoemde slide,
en heet het design zoals de regel Naam:.
```

**De naam.** Carrousel: `Carrousel - ` plus de eerste zin van de caption: alles tot en met
het eerste punt, vraagteken of uitroepteken, of de hele eerste regel als die eerder eindigt.
Reelomslag: `Reelomslag - ` plus de eerste regel van de caption, het haakje. Letterlijk, met
een gewoon streepje, emoji's weggelaten.

**Opnieuw maken.** Vraagt de gebruiker om nieuwe slidetekst of een nieuwe prompt: lees de
caption zoals die nu is, houd de layout aan, en lever weer alleen het codeblok. Is de caption
zelf veranderd, vraag dan in één zin of je Notion en Goedgekeurde captions bijwerkt.

---

## Regels bij een carrousel

- **Caption eerst, daarna verdelen.** De slidetekst bestaat uit **letterlijke zinnen uit de
  caption**. Zinnen weglaten mag, herformuleren niet, samenvatten niet, een zin erbij
  verzinnen niet.
- **Koppen niet verzinnen.** Een kop is een zin uit de caption die je als kop markeert, omdat hij
  kort en stellig is. Leent geen zin zich daarvoor, dan heeft de slide geen kop en schrijf je
  "Geen kop". Nooit een kop bedenken die de slide samenvat; niet elke slide heeft een kop.
- **Alleen de slidetekst wordt ingekort, nooit de caption.** En inkorten is: minder zinnen,
  niet andere zinnen. Lukt het niet zonder herformuleren, dan vraag je het.
- **Slide 1 is de eerste regel van de definitieve caption.** Letterlijk. Niet het Hook-veld
  uit Notion en niet het haakje uit de historie als die anders zijn (zie stap 6). Gaat de
  eerste regel meer dan tien tekens over de coverlimiet, dan kies je geen andere zin maar
  leg je een ingekorte versie voor.
- **De laatste slide is de CTA.** Eén concrete actie, passend bij de fase.
- **Eerst blokken, dan slides.** Deel de caption (zonder de eerste regel en de CTA) eerst in
  blokken op betekenis:
  - een **opsomming**: twee of meer regels achter elkaar die met hetzelfde teken beginnen (een
    emoji, een puntje •, een streepje, een cijfer) of met dezelfde aanhef;
  - een **vraag met het antwoord** erop;
  - een **aankondiging met een dubbele punt** plus wat erop volgt;
  - een **alinea**: wat tussen twee witregels staat.
  Een blok wordt **nooit gesplitst**. Een tussenslide bestaat uit één of meer hele blokken.
- **Slides vullen tot ongeveer de limiet.** Zet opeenvolgende blokken samen op een slide
  zolang ze samen binnen de tekstslidelimiet passen (met de marge van tien tekens). Begin pas
  een nieuwe slide als het volgende blok er niet meer bij past. Liever minder, vollere slides
  dan veel lege: een slide met veel lege ruimte onderin heeft te weinig tekst. Tel per witregel
  die je tussen twee blokken laat staan ongeveer een halve regel aan tekens mee.
- **Het maximum aantal slides is hard.** Het aantal slides volgt uit het vullen, binnen het
  minimum en maximum uit het design system. Kom je erboven, kijk dan eerst of blokken nog
  samen kunnen; lukt dat niet, vraag dan vóór de prompt welk blok weg mag. Nooit meer slides
  leveren dan het maximum, en nooit stil iets weglaten.
- **Past een blok niet samen met de andere tekst op een slide**, zet de andere tekst dan op
  een extra slide. Nooit een deel van het blok naar de volgende slide. Alleen een lange
  gewone alinea mag gesplitst worden, en dan op een zinsgrens.
- **Weinig tekst op een slide.** De lopende tekst is op alle tussenslides even groot en
  witregels worden niet opgerekt, dus een slide met weinig tekst houdt lege ruimte over. Dat
  los je op met vullen (hierboven), niet met witruimte. Is een tussenslide of de CTA zo kort
  dat hij niet bij een blok ervoor of erna past (één of twee korte zinnen, minder dan
  ongeveer een derde van de tekstslidelimiet), geef hem dan het layouttype
  **Grote vorm**, als het design system die heeft (regel "Tussenslides" in het blok): de hele
  tekst groot, zoals een quote of kop. Hooguit zo vaak als het blok zegt, nooit twee achter
  elkaar. Heeft het design system geen grote vorm, voeg de korte slide dan samen met een
  blok ervoor of erna, als ze bij elkaar horen.
- **Evenveel tekst per slide** is het laatste criterium: alleen als je twee indelingen hebt
  die allebei elk blok heel laten, kies je de meest gelijke. Cover en CTA tellen niet mee.
- **Nadruk volgens het design system.** Lees in het blok of in `CLAUDE.md` hoe vaak de gebruiker
  een accent gebruikt (de accentmaat) en zet op dat deel van de slides één kernwoord of kernzin
  als `Nadruk:`. Staat er niets over, dan op hooguit een derde van de slides. De andere slides
  krijgen geen regel `Nadruk:`.
- **Statement:** één korte, stellige zin die het omslagpunt van het verhaal is, binnen de
  quote-limiet. Zo'n zin staat meestal al in de caption; zoek hem, verzin hem niet.
- **Opsomming:** zo'n blok wordt één opsommingsslide, met de tekens ervoor erbij. Ook met
  zes of zeven regels blijft het één slide; past dat echt niet, leg dan een ingekorte versie
  voor (regels weglaten, niet herformuleren) in plaats van te splitsen.
- **Emoji's en icoontjes uit de caption gaan mee** naar de slide waar die zin terechtkomt.
- **De slides volgen HVVA.** Slide 1 is Herkenning (het haakje), de tussenslides dragen
  Verlangen en Vertrouwen, de laatste slide is Actie. Bij weinig tussenslides mogen Verlangen
  en Vertrouwen één slide delen; Herkenning en Actie nooit.
- **Layouttype per slide** uit het design system-blok: cover, tekstslide, quote, opsomming,
  grote vorm, CTA. Maximaal één quote-slide, nooit als slide 2.

### Tekenlimieten

Staat `Content Studio/Design System/design-system.md` er, dan gelden de limieten daaruit als
**richtlijn**. Het design system is zo gemeten dat tot tien tekens erboven past, in dezelfde
lettergrootte en zonder overlap.

Werkwijze per slide:

1. Schrijf de slidetekst.
2. Tel de tekens inclusief spaties. Het aantal is voor jou; in de prompt komt het niet.
3. Vergelijk met de limiet van dat layouttype.
4. **Tot tien tekens erboven:** gewoon doorgaan. Niets vragen, niets melden.
5. **Meer dan tien erboven:** staat er op die slide meer dan één blok, zet dan een blok op
   een extra slide. Is het één blok, leg dan zelf een ingekorte versie voor: zinnen of regels
   weglaten, nooit herformuleren, en alleen de slidetekst, nooit de caption. Zeg in één zin
   wat je weglaat en vraag "Goed zo?". Lever de prompt pas na een ja.

### Reel en losse post

Eén zin op de omslag of het beeld, meestal het haakje. Limiet uit het blok (Reelomslag), als
richtlijn met tien tekens marge. Meer dan tien erboven: leg een ingekorte versie voor. De
omslag krijgt een brandfoto volgens **Foto's kiezen**, net als een cover.

---

## Fase 8 - Leren

Pas ná de link en de prompt, in één bericht met hooguit twee onderdelen.

**Vakregels.** Alleen als de gebruiker iets corrigeerde dat vaker terugkomt, in één korte
vraag. Volgens `references/memory-regels.md`. Maximaal drie regels over captions: lengte,
ritme, openingen, afsluiters, wat de gebruiker altijd schrapt. Voorleggen als letterlijke
regel, wegschrijven naar `## Caption` in MEMORY.md na akkoord. Sectie vol: vervanging
voorstellen, niet toevoegen.

**Stemcorrecties.** Correcties op de stem zelf (een woord, de toon, de aanspreekvorm) die niet
in de Tone of Voice staan, horen niet in MEMORY.md. Geef ze terug volgens **Stemcorrecties
teruggeven** in `references/schrijfkwaliteit.md`.

Was er weinig feedback: overslaan.

---

## Vermijd

- De volgorde omdraaien: eerst slides, dan caption.
- Een aangeleverde caption herschrijven, aanvullen of van een ander haakje voorzien.
- Een zin uit Notion, Goedgekeurde haakjes of Goedgekeurde captions in de slides zetten die
  niet in het gesprek is aangeleverd.
- Notion of de historiebestanden bijwerken zonder de vraag uit stap 6.
- Slidetekst herformuleren of samenvatten; alleen letterlijke zinnen uit de caption.
- Slidetekst tonen vóór het akkoord.
- Na het akkoord meer teruggeven dan de link en één codeblok met de prompt.
- Uitleg over de gekozen layout, de foto of de tekentelling.
- Emoji's of icoontjes uit de caption weglaten in de slidetekst.
- Een prompt met lege haken, of met de slidetekst als één regel per slide zonder kop, tekst en nadruk apart.
- Dezelfde achtergrond of variant kiezen als de vorige post, terwijl er een andere is.
- Een foto kiezen die in het logboek binnen het venster staat, of Claude Design zelf een foto
  laten kiezen.
- Een opsomming, een vraag met antwoord of een aankondiging met dubbele punt over twee slides
  splitsen.
- Vragen of melden bij een tekst die tot tien tekens boven de limiet zit.
- De caption inkorten om de slides passend te krijgen.
- Drie varianten leveren waar om één gevraagd is.
- Een pillar overschrijven die al op de pagina staat.
- Slidetekst of de prompt voor Claude Design in Notion zetten. In de body staat alleen de
  caption, in één codeblok.
- De caption als gewone tekst in de body zetten in plaats van in een codeblok.
- Stap 7 uitvoeren zonder design system-blok.
- Een tekst tot tien tekens boven de limiet inkorten of erover vragen; de limiet is een
  richtlijn. Het maximum aantal slides is wel een grens.
- Iets wegschrijven zonder akkoord: niet naar Notion, niet naar MEMORY.md.
- Een caption tonen die de toetsen uit stap 4 niet heeft doorlopen.
- Een detail, ervaring of cijfer verzinnen om een caption specifieker te maken.
- Meer dan één vervolgvraag stellen als het antwoord in stap 2 vaag blijft.
- Stemregels in MEMORY.md zetten, of zelf in Business DNA.
- Een map aanmaken.
- Bestanden uit `references/` bij naam noemen in je antwoorden.

## Referentiebestanden

In `references/` van deze plugin, twee niveaus boven deze skill: `omgevingscheck.md`,
`notion-schema.md`, `pagina-opbouw.md`, `memory-regels.md`, `schrijfkwaliteit.md`.
