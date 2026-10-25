---
name: content-caption
description: "Schrijft de caption en de slidetekst van een post vanuit een haakje uit je Content Calendar of een nieuw haakje, volgens HVVA (Herkenning, Verlangen, Vertrouwen, Actie) in de stem uit je Tone of Voice voor social content, toetst aan je Content Pillars en Business DNA, slaat na akkoord de caption op als Concept in Notion en bij Goedgekeurde captions, en levert de prompt voor Claude Design in één kopieerbaar blok, met een andere layout dan de vorige post. Bij een carrousel zet hij de slide-indeling eerst in een zijscherm dat je zelf aanpast en opslaat. Maakt ook de prompts voor meerdere posts tegelijk, uit captions die al af in Notion staan. TRIGGERS op @caption, @content-caption, \"schrijf de caption\", \"maak er een post van\", \"werk dit haakje uit\", \"maak de carrousel\", \"maak een reel van dit haakje\", \"maak de prompts voor Claude Design\", of elke vraag om van een haakje of idee een volledige post te maken binnen Claude Content Studio.\n"
---

# Caption - Claude Content Studio

Van haakje naar afgeronde post: eerst de caption, na akkoord opslaan, daarna de slidetekst
in één prompt voor Claude Design.
Caption eerst, daarna verdelen over de slides. Nooit andersom. Elke caption is opgebouwd
volgens HVVA: Herkenning, Verlangen, Vertrouwen, Actie.

**Meerdere posts tegelijk.** Zegt de gebruiker "maak de prompts voor Claude Design" (voor
deze week, voor deze posts), dan staan de captions al af in Notion. Volg dan **Meerdere posts:
prompts voor Claude Design** onderaan stap 7. Eén losse post gaat zoals hieronder.

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
> 3. Een prompt maken voor Claude Design, zodat je je slides kunt genereren. Bij een
>    carrousel zet ik eerst de indeling van je slides klaar in het zijscherm"

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
precies twee dingen:

- **Reel of losse post:** de link naar de Notion-pagina en één codeblok met de prompt.
- **Carrousel:** de link naar de Notion-pagina en één regel over het zijscherm (zie 7d). Na
  haar akkoord op de indeling volgt alleen het codeblok met de prompt.

Geen samenvatting, geen uitleg over layout of foto, geen tekentelling.

Stop alleen als iets niet lukt, en zeg dan in één zin wat en wat de gebruiker moet doen.
Vóór de prompt mag je nog wel vragen: bij een carrousel één vraag als een opgeslagen slide
meer dan tien tekens over de limiet gaat of als er te veel slides zijn (zie 7d); bij een reel
of losse post een ingekorte versie van de zin (zie **Reel en losse post**); en een foto als er
geen brandfoto meer vrij is (zie 7c).

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
- **Soort** is de optienaam uit het live schema. Een carrousel kan in de kalender van de
  gebruiker `Carrousel` of `Carroussel` heten: neem de optie die met `Carr` begint, gespeld
  zoals hij er staat. Nooit een optie aanmaken.
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
maximum uit het design system. Die indeling zet je in het zijscherm, volgens 7d. Daar past de
gebruiker hem aan en slaat ze hem op; de prompt maak je pas daarna, op wat zij opsloeg. Leg bij
een carrousel nooit een ingekorte versie of een verplaatsing voor in de chat. Reel of losse
post: één zin, in de chat, volgens **Reel en losse post** hieronder.

**Emoji's en icoontjes gaan mee.** Staat er in de caption of in wat de gebruiker aanleverde
een emoji of icoon bij een zin, opsommingsregel of CTA, neem die dan letterlijk en op
dezelfde plek over in de slidetekst. Niet weglaten, niet vervangen door bolletjes, niet
toevoegen waar ze niet stonden. Een emoji telt mee als twee tekens voor de limiet.

**De prompt**, in één codeblok, niets anders erin. Bij een carrousel maak je hem pas na het
akkoord op de opgeslagen indeling (7d), met de tekst per slide letterlijk uit die indeling.
Vul alles in; laat geen haken staan. Zet per slide het layouttype, de HVVA-rol, de kop en de
tekst apart, en wijs per tekstslide één kernwoord of kernzin aan voor de nadruk. Onderdelen die niet bestaan in het design system
(geen serielabel, geen handschriftregel) laat je weg. Bij een reel of losse post vervalt het
slidedeel en beschrijf je de omslag of het beeld op dezelfde manier: rol, kop, handschriftregel.

```
Naam: [Carrousel - [Hook] / Reelomslag - [Hook]]
Exporteer het design onder precies deze naam naar Canva.

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
Kop: "[de tekst van slide 1, letterlijk]"
[Handschriftregel: "[regel]"]
Foto: [naam uit fotos.md / de foto die ik upload]

Slide 2 · [Tekstslide / Statement / Opsomming / Grote vorm]
[Kop: "[een zin uit deze slide]"  of: Geen kop.]
Tekst: "[de rest van de tekst van deze slide, met de regelafbrekingen en emoji's]"
[Nadruk: "[kernwoord of kernzin]"]
[Foto: [naam]]   [alleen als het design system op dit type slide een foto zet]

...

Slide n · CTA
[Kop: "[een zin uit deze slide]"  of: Geen kop.]
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

**De naam.** Altijd `Carrousel - [Hook]` of `Reelomslag - [Hook]`. De Hook is de titel van de
Notion-pagina, letterlijk, zoals die na 7b in Notion staat. Laat alleen de emoji's weg (en een
dubbele spatie die daardoor ontstaat); verder verandert er niets: niet inkorten, geen andere
woorden, dezelfde leestekens. Een gewoon streepje met een spatie ervoor en erna. Schrijf
`Carrousel` altijd zo, ook als de optie bij Soort anders gespeld is. Een losse post krijgt ook
`Carrousel - [Hook]` (een design van één pagina), een reel `Reelomslag - [Hook]`. Met deze naam
vindt de prompt die de Canva-links in Notion zet het design terug; een ingekorte of
herschreven naam wordt niet gevonden.
- Zo wel: `Naam: Carrousel - Dit is de grootste fout die ondernemers maken met AI.`
- Zo niet: `Naam: Carrousel - De grootste fout met AI`

**Opnieuw maken.** Vraagt de gebruiker om nieuwe slidetekst of een nieuwe prompt: lees de
caption zoals die nu is en houd de layout aan. Bij een carrousel vul je hetzelfde zijscherm
opnieuw (7d); bij een reel of losse post lever je weer alleen het codeblok. Is de caption zelf
veranderd, vraag dan in één zin of je Notion en Goedgekeurde captions bijwerkt.

### 7d - Slide-indeling in het zijscherm (alleen bij een carrousel)

Een carrousel verdeel je niet in de chat. Je zet de indeling in het **zijscherm**: een vaste
pagina naast de chat met per slide een kopje, de tekst en een teller. Daar past de gebruiker
de tekst aan, verplaatst ze zinnen, voegt ze tussen cover en CTA een slide toe of haalt er een
weg, en slaat ze op. Bij een reel of losse post sla je 7d over.

Het zijscherm kan één carrousel tonen of meerdere (bij **Meerdere posts**). Bij meerdere klikt
de gebruiker door met Vorige en Volgende, slaat ze per post op en ziet ze per post of hij
opgeslagen is. In de database staat één document `reeks/huidig` met de volgorde van de posts,
en per post een document in de collectie `posts`.

Het zijscherm is `references/slide-indeling.html` van deze plugin. Je hebt de Artifact-tool
nodig (publiceren en openen) en de ArtifactData-tool (de indeling lezen en schrijven). Zie je
ze niet, zoek ze dan eerst op met ToolSearch ("Artifact", "ArtifactData"). Zijn ze er niet,
ga dan naar **Terugval** hieronder.

**Eén vast zijscherm per gebruiker.** Dat vul je bij elke carrousel opnieuw. Publiceer nooit
per post een nieuw zijscherm, anders loopt haar artifactgalerij vol.

1. Zoek in `Content Studio/README.md` de regel `Slide-indeling: [link] · versie [n]`.
2. **Staat hij er**, vergelijk [n] dan met de versie in `references/slide-indeling.html` (de
   regel `<meta name="slide-indeling-versie" content="[n]">`). Gelijk: gebruik de link. Is de
   versie in de plugin hoger, werk het zijscherm dan bij op dezelfde link: kopieer het bestand
   zoals in stap 3, lees het zijscherm eerst met de Artifact-tool (action `read`, `url` de
   link) en publiceer daarna met `url` de link en `file_path` de kopie. Zet het nieuwe
   versienummer in de regel. De indeling die erin stond, blijft bewaard.
3. **Staat hij er niet**, maak het zijscherm één keer aan. Kopieer
   `references/slide-indeling.html` ongewijzigd naar `Content Studio/slide-indeling.html`: de
   Artifact-tool publiceert alleen bestanden uit de gekoppelde map. Lees het bestand helemaal
   en publiceer het met de Artifact-tool: `file_path` dat bestand, `capabilities`
   `{"db": {}}`, `icon` `slides`, `description` "Slide-indeling van je carrousel: pas per slide
   de tekst aan en sla op." Zet daarna onderaan `Content Studio/README.md` de regel
   `Slide-indeling: [link uit het resultaat] · versie [n]`. Bestaat README.md niet, maak hem
   dan aan met alleen die regel.

**De indeling klaarzetten.** Voor één carrousel, of voor alle carrousels uit **Meerdere posts**
in één keer.

1. Verdeel per carrousel de caption volgens **Regels bij een carrousel** en **Tekenlimieten**.
   Per slide een rol en een tekst. De rol is het layouttype: `Cover`, `Tekstslide`,
   `Opsomming`, `Quote`, `Grote vorm`, `CTA` (en de andere layouttypes die het design system
   noemt). De tekst bestaat uit letterlijke zinnen uit de caption, met regelafbrekingen en
   emoji's. Bij de CTA staat de kop en de actie samen in de tekst; bij een tekstslide de kop en
   de tekst samen.
2. Limieten per rol, uit het blok TEKENLIMIETEN in het design system: Cover = `Cover`;
   Tekstslide = `Tekstslide tekst`; Opsomming = het aantal regels keer de lengte per regel;
   Quote en Grote vorm = `Quote`; CTA = `CTA kop` plus `CTA actie`; een ander layouttype = zijn
   kop plus zijn tekst. Ontbreekt een limiet, laat die rol dan weg uit de limieten.
3. Lees wat er nu staat: ArtifactData, action `list`, `url` de link, collection `posts`, en
   action `get`, collection `reeks`, doc_id `huidig`. Onthoud van elk document de `version`.
4. Schrijf alles in één keer: ArtifactData, action `batch`, met deze writes:
   - per carrousel een `set` in collection `posts`, doc_id `p` plus het id van de
     Notion-pagina zonder streepjes, met `if_version` als dat document al bestond:

     ```
     {
       "haakje": "[de Hook van de Notion-pagina]",
       "notion": "[link naar de Notion-pagina]",
       "nr": [het nummer van de post in je lijst in de chat; bij één post 1],
       "soort": "Carrousel",
       "voorbeeld": false,
       "versie": [het veld versie van dat document plus 1, of 1],
       "status": "concept",
       "opgeslagenOp": null,
       "limieten": {"Cover": [n], "Tekstslide": [n], "CTA": [n], ...},
       "maxSlides": [maximaal aantal slides uit het design system],
       "slides": [{"rol": "Cover", "tekst": "..."}, ..., {"rol": "CTA", "tekst": "..."}]
     }
     ```

   - een `set` in collection `reeks`, doc_id `huidig`, met `if_version` als hij al bestond:
     `{"posts": ["p...", "p...", ...], "versie": [vorige versie plus 1, of 1], "gemaaktOp":
     "[nu, ISO 8601]"}`. De volgorde is de volgorde van je lijst.
   - een `delete` met `if_version` voor elk ander document in `posts` (van een vorige keer).
     Meer dan 50 writes: doe de deletes in een tweede batch.

   Weigert de batch omdat een document intussen veranderd is, lees dan opnieuw en schrijf nog
   één keer.
5. Open het zijscherm: Artifact-tool, action `open`, `url` de link.
6. Zet in de chat alleen deze regel, bij één carrousel onder de link naar de Notion-pagina:
   - één carrousel: "De indeling staat in het zijscherm. Pas aan, druk op Opslaan en typ
     akkoord."
   - meerdere: "De indeling van je [n] carrousels staat in het zijscherm. Klik door met Vorige
     en Volgende, druk per post op Opslaan en typ akkoord voor alles, of akkoord [nummer] voor
     één post."
   Zijn er bij een post meer slides dan het maximum, zet er dan achter: "Post [nummer] heeft
   [n] slides, je design system staat er [max] toe: haal er [n min max] weg."

Meer niet. Geen tellingen, geen voorstellen om in te korten of te verplaatsen. De teller in het
zijscherm laat zien wat te lang is; de gebruiker beslist.

**Na akkoord.** Typt de gebruiker "akkoord" (of iets wat daarop lijkt):

1. Welke posts: "akkoord" is elke carrousel in het zijscherm waarvan je de prompt nog niet gaf;
   "akkoord 2" of "akkoord [haakje]" is alleen die post.
2. Lees per post het document in `posts` met ArtifactData, action `get` (of `list` voor
   allemaal).
3. **Staat de status nog op `concept`**, zeg dan per post alleen: "Post [nummer] is nog niet
   opgeslagen. Druk in het zijscherm op Opslaan en typ dan akkoord." Bij één post wacht je.
   Bij meerdere ga je door met de opgeslagen posts en noem je de andere onderaan.
4. **Staat hij op `opgeslagen`**, dan is de opgeslagen indeling leidend. Neem de tekst per
   slide letterlijk over, in de volgorde waarin hij staat, met de slides die zij toevoegde of
   weghaalde en de zinnen die zij verplaatste. Zet niets terug naar jouw eerste verdeling,
   herformuleer niets en laat niets weg, ook niet als een zin niet meer letterlijk in de caption
   staat.
5. **Tel opnieuw**, inclusief spaties, met een emoji als twee tekens. Tot tien tekens boven de
   limiet: gewoon door. Gaat een slide er meer dan tien overheen, of zijn er meer slides dan het
   maximum, stel dan vóór de prompt één vraag voor alles samen, bijvoorbeeld: "Slide 4 is 18
   tekens te lang. Laat je hem zo, of pas je hem aan in het zijscherm?" Bij te veel slides: "Het
   zijn 11 slides, je design system staat er 10 toe. Haal er in het zijscherm één weg en typ
   akkoord." Het maximum is hard: met te veel slides maak je geen prompt. Zegt zij bij een te
   lange slide "laat zo", ga dan door.
6. **Maak nu pas de prompt** (zie **De prompt** in 7c). Het layouttype per slide is de rol uit
   de indeling. Een slide die de gebruiker toevoegde heet `Tekstslide`; is die tekst een
   opsomming of heel kort, kies dan het layouttype volgens **Regels bij een carrousel**. Kop,
   tekst en kernwoord bepaal je nu, op de opgeslagen tekst: een kop is een zin uit die slide,
   letterlijk, en niet elke slide heeft er een. De foto's kies je nu ook, volgens **Foto's
   kiezen**, voor de slides zoals ze zijn opgeslagen. Lever alleen het codeblok (bij meerdere
   posts zoals beschreven onder **Meerdere posts**).

Vraagt de gebruiker later een nieuwe indeling voor dezelfde post, doe dan dezelfde stappen in
hetzelfde zijscherm.

**Terugval: geen zijscherm.** Zijn de Artifact-tool of de ArtifactData-tool er niet,
bijvoorbeeld in Claude Code of in een gewone chat, of lukt publiceren, lezen of schrijven niet,
zeg dan één keer: "Het zijscherm werkt hier niet, dus ik zet de indeling in de chat." Toon de
indeling dan zo, slide voor slide (bij meerdere posts eerst per post een vet kopje met het
nummer en het haakje):

```
**Slide 1 · Cover**
[de tekst, met regelafbrekingen en emoji's]
35 / 45 tekens

**Slide 2 · Tekstslide**
[de tekst]
212 / 300 tekens
```

Zet onder de laatste slide: "Wil je iets anders? Zeg welke slide en wat er moet staan. Klopt
het, typ dan akkoord." Verwerk wat de gebruiker zegt letterlijk en toon daarna de hele
indeling opnieuw. Doe zelf geen voorstellen om in te korten of te verplaatsen, ook niet bij een
slide boven de limiet: de telling laat het zien. Na akkoord volg je stap 5 en 6 van **Na
akkoord**, op de indeling zoals die nu in de chat staat.

### Meerdere posts: prompts voor Claude Design

Zegt de gebruiker "maak de prompts voor Claude Design" (voor deze week, voor deze posts), dan
maak je de prompts voor meerdere posts in één gesprek. De captions staan al in Notion en zijn
af. Eén losse post met `@caption` gaat zoals hierboven.

**Wat anders is dan bij één post:**

- Je schrijft geen caption en herschrijft er geen. Je vraagt niet opnieuw om akkoord op de
  caption: stap 1 tot en met 6 vallen weg. De caption is de tekst in het codeblok op de
  Notion-pagina, letterlijk (zie `references/pagina-opbouw.md`).
- In Notion verander je niets: niet de status, niet de Soort, niet de Hook, niet de body.
  Slidetekst en prompts gaan nooit naar Notion.
- De akkoordvraag uit stap 6 stel je niet; het akkoord op de slide-indeling (en bij een reel
  op de omslag) is het enige akkoord.

**1. Inlezen.** De Omgevingscheck. Daarna alleen wat je voor de prompts nodig hebt:
`MEMORY.md` (sectie Caption), `goedgekeurde-captions.md`, het design system (controle zoals in
7c; ontbreekt het, zeg dat dan één keer en stop), `fotos.md` en `fotogebruik.md`.

**2. Posts kiezen.**

- Noemt de gebruiker posts (haakjes, links of de posts uit haar mail), neem dan precies die.
- Anders: de pagina's in de Content Calendar met Status `Concept` en een gekozen Soort
  (carrousel, `Reel` of `Post`). Zegt ze "voor deze week", dan alleen de pagina's met een
  Publicatiedatum in deze week (maandag tot en met zondag) en die zonder Publicatiedatum.
- Volgorde: op Publicatiedatum, daarna de posts zonder datum in de volgorde waarin ze zijn
  aangemaakt. Nummer ze 1, 2, 3 en houd die nummers aan, ook in het zijscherm (veld `nr`).
- **Sla over, met de reden in één regel:**
  - een caption met een regel die begint met `[VUL AAN`: "[haakje]: overgeslagen, in de
    caption staat nog [VUL AAN: ...]. Vul hem aan in Notion en vraag de prompt daarna
    opnieuw.";
  - een pagina zonder caption in een codeblok;
  - een pagina zonder Soort, of met een andere Soort dan carrousel, Reel of Post.
- Blijft er geen post over: zeg het en stop.

**3. Indeling en omslag.** Zet alles klaar en stuur één bericht:

- **Carrousels:** volgens 7d, allemaal tegelijk in hetzelfde zijscherm, in de volgorde van je
  lijst. Publiceer nooit een tweede zijscherm.
- **Reel of losse post:** één zin voor de omslag of het beeld, volgens **Reel en losse post**.
- Het bericht: de genummerde lijst met per post het haakje en de soort. Bij een reel of losse
  post daaronder de zin met de telling; gaat hij meer dan tien tekens over de limiet, zet er
  dan één ingekorte versie bij, die bij akkoord geldt tenzij de gebruiker een andere zin
  geeft. Heeft het design system een handschriftregel op de cover, stel die per post voor.
  Dan de overgeslagen posts met hun reden. Dan de regel over het zijscherm uit 7d, stap 6.
  Zonder carrousels: "Typ akkoord, dan maak ik de prompts."

**4. Na akkoord.** "akkoord" geldt voor alle posts waarvan je de prompt nog niet gaf;
"akkoord [nummer]" of "akkoord [haakje]" alleen voor die post. Werk per post, in de volgorde
van de lijst:

- carrousel: **Na akkoord** in 7d, stap 2 tot en met 6. Een post die nog niet is opgeslagen,
  sla je over en noem je onderaan;
- layout kiezen volgens 7c. **De layout wisselt ook binnen de reeks**: de vorige post is de post
  die je net in deze reeks deed. Kies dus per post opnieuw, met de keuzes van de posts ervoor
  meegeteld;
- foto's kiezen volgens **Foto's kiezen**, en het logboek meteen bijwerken, zodat de volgende
  post in de reeks geen foto van deze post krijgt;
- Goedgekeurde captions bijwerken zoals in 7a: de caption erbij met de regel `Layout:`. Staat
  dezelfde caption er al, werk dan alleen zijn regel `Layout:` bij. Doe dit per post vóór je de
  volgende kiest;
- de prompt maken volgens **De prompt** in 7c, met de naam `Carrousel - [Hook]` of
  `Reelomslag - [Hook]`.

Het antwoord is per post, in volgorde, precies dit en niets ertussen:

````
**[nummer]. [haakje]**
[Open in Notion](link)
```
[de prompt]
```
````

Onderaan, alleen als het van toepassing is, één regel per post die nog wacht (niet opgeslagen
in het zijscherm) of is overgeslagen. Typt de gebruiker later "akkoord" voor de rest, dan geef
je alleen de prompts die nog ontbraken.

---

## Regels bij een carrousel

- **Caption eerst, daarna verdelen.** De slidetekst bestaat uit **letterlijke zinnen uit de
  caption**. Zinnen weglaten mag, herformuleren niet, samenvatten niet, een zin erbij
  verzinnen niet.
- **Koppen niet verzinnen.** Een kop is een zin uit de caption die je als kop markeert, omdat hij
  kort en stellig is. Leent geen zin zich daarvoor, dan heeft de slide geen kop en schrijf je
  "Geen kop". Nooit een kop bedenken die de slide samenvat; niet elke slide heeft een kop.
- **Alleen de slidetekst wordt ingekort, nooit de caption.** Bij een carrousel kort de
  gebruiker zelf in, in het zijscherm. Jij zet de indeling klaar met hele, letterlijke zinnen;
  de teller laat zien waar het te lang is.
- **Slide 1 is de eerste regel van de definitieve caption.** Letterlijk. Niet het Hook-veld
  uit Notion en niet het haakje uit de historie als die anders zijn (zie stap 6). Gaat de
  eerste regel meer dan tien tekens over de coverlimiet, dan kies je geen andere zin: zet hem
  zo in het zijscherm.
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
  samen kunnen. Lukt dat niet, zet de indeling dan toch in het zijscherm en zeg in je ene
  regel hoeveel slides er weg moeten (zie 7d). Kies niet zelf wat weg moet. Nooit een prompt
  met meer slides dan het maximum, en nooit stil iets weglaten.
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
  zes of zeven regels blijft het één slide, ook als hij te lang is; de gebruiker kort hem in
  het zijscherm in. Nooit splitsen.
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
   een extra slide. Is het één blok, zet hem dan zo in de indeling. Niet inkorten en niets
   voorstellen in de chat: de teller in het zijscherm laat het zien en de gebruiker beslist.
   Na het opslaan geldt stap 5 van **Na akkoord** in 7d.

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
- Slidetekst herformuleren of samenvatten; alleen letterlijke zinnen uit de caption. Wat de
  gebruiker in het zijscherm opslaat, neem je wel letterlijk over, ook als het anders is.
- Bij een carrousel in de chat voorstellen om in te korten of te verplaatsen, zoals "zal ik
  van dit woord tot dat woord naar slide 4 zetten?".
- De prompt maken van je eigen verdeling in plaats van de opgeslagen indeling.
- Per post een nieuw zijscherm publiceren, of een tweede zijscherm voor meerdere posts.
- Bij meerdere posts een caption uit Notion herschrijven, opnieuw om akkoord vragen op de
  caption, of iets in Notion wijzigen.
- Een prompt maken voor een post met een regel `[VUL AAN` in de caption.
- De naam van het design inkorten, herschrijven of een andere zin nemen dan de Hook.
- Een optie bij Soort gebruiken die niet in het live schema staat.
- Slidetekst tonen vóór het akkoord.
- Na het akkoord meer teruggeven dan de link en één codeblok met de prompt, of bij een
  carrousel de link en de ene regel over het zijscherm.
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
`notion-schema.md`, `pagina-opbouw.md`, `memory-regels.md`, `schrijfkwaliteit.md`,
`slide-indeling.html` (het zijscherm).
