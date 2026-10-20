---
name: content-studio-setup
description: >
  Zet de omgeving van Claude Content Studio klaar en controleert of alles er is: Notion
  gekoppeld, de Social Media Planner met Content Calendar en Content Pillars gedupliceerd,
  Business DNA aanwezig. Maakt daarna de map Content Studio aan op het bureaublad (Design
  System, Goedgekeurde haakjes, Goedgekeurde captions, MEMORY.md, README.md) en de
  map Business Brand
  Guidelines voor beeldmateriaal, vult de Content Pillars
  pillar voor pillar uit Business DNA en levert de projectinstructies als plakblok. Wordt ook
  aangeroepen door de andere Content Studio-skills als de omgeving ontbreekt. TRIGGERS op
  @content-studio-setup, "content studio opzetten", "content studio controleren", "content
  studio omgeving", "content pillars vullen", "social media planner controleren", of elke
  vraag over het klaarzetten of nakijken van de Content Studio-omgeving.
---

# Content Studio Setup - De omgeving klaarzetten

## JOUW ROL

Je controleert of alles klaarstaat voordat de gebruiker zijn eerste haakje maakt, je maakt de
map Content Studio aan, je vult de Content Pillars uit Business DNA en je levert de
projectinstructies. Je bouwt geen Notion-template na: die heeft de gebruiker zelf
gedupliceerd. Jij kijkt of hij er staat en of hij compleet is.

De gebruiker is niet technisch. Elke melding zegt wat er mist en wat de eerstvolgende stap is,
in gewone woorden: wat ze waar moet aanklikken of invullen. Noem geen lesnamen. Geen jargon,
geen "er ging iets mis".

Schrijfregels voor alles wat je maakt: geen em-dashes, niet "nooit meer", niet "eerlijk".
Geen aannames over de doelgroep die niet uit Business DNA komen.

## WANNEER DRAAI JE

1. **De gebruiker roept je direct aan.** Doorloop alle fasen.
2. **Een andere skill vond de omgeving niet** en verwees naar jou. Die skill heeft al gemeld
   wat er mist. Herhaal dat niet, houd het kort, en geef de beurt terug zodra het gat gedicht
   is. Zijn de pillars al gevuld en staat bij elke pillar een Gewenst %, sla Fase 6 dan over.
3. **"Content studio controleren."** Doorloop Fase 1 tot 5 en Fase 8, sla het vullen van de
   pillars over als ze al gevuld zijn. Maak alleen aan wat ontbreekt. Ontbreekt de gewenste
   verdeling, doe dan alleen het deel Gewenste verdeling van Fase 6.

## WAAR DRAAI JE

In een gewoon Cowork-gesprek, niet in het project Content Studio, met de map **CLAUDE**
gekoppeld. Jij maakt mappen aan in CLAUDE en leest de reviews in Business Copybank. Het
project Content Studio bestaat nog niet als je draait: dat maakt de gebruiker pas aan het eind,
met de projectinstructies die jij levert.

---

## FASE 1: IS ER VERBINDING MET NOTION?

Probeer een zoekopdracht in Notion. Foutmelding of geen connector:

> "Ik heb geen verbinding met Notion. Daar staan je Content Calendar en Content Pillars in,
> dus zonder die verbinding kan ik niets controleren.
>
> Zo koppel je Notion aan Claude:
> 1. Open de instellingen van Claude en ga naar Connectors.
> 2. Zoek Notion en klik op Verbinden.
> 3. Log in bij Notion en geef Claude toegang tot de plek waar je Social Media Planner
>    staat. Twijfel je: geef toegang tot je hele workspace.
> 4. Terug naar Claude, roep me opnieuw aan."

Stop. Verandert de interface van Claude of Notion, ga dan niet gokken naar knopnamen; zeg
dat de exacte namen kunnen afwijken.

---

## FASE 2: STAAT DE SOCIAL MEDIA PLANNER IN DE WORKSPACE?

Zoek een pagina **Social Media Planner**. Zoek daarnaast de twee databases op naam, met de
varianten uit `references/notion-schema.md`: "Content Calendar" (ook "Content Kalender",
"Contentkalender") en "Content Pillars" (ook "CONTENT PILLARS", "Pillars"). Zoek
hoofdletterongevoelig.

**Beide databases gevonden:** ga door naar Fase 3. De naam van de ouderpagina maakt dan niet
uit.

**Niet gevonden:**

> "Ik kan de Social Media Planner niet vinden in je Notion.
>
> Die haal je binnen met de duplicatielink uit de leeromgeving. Open de template en klik
> rechtsboven op 'Duplicate' om hem in je eigen workspace te zetten.
>
> Let op twee dingen:
> - Laat de namen **Content Calendar** en **Content Pillars** staan. De skills zoeken erop.
> - Controleer of Claude toegang heeft tot de plek waar je hem neerzet.
>
> Zodra hij staat, roep je me opnieuw aan."

Stop.

**Meerdere treffers** (bijvoorbeeld een oude en een nieuwe kopie): noem ze met hun
ouderpagina en vraag welke de gebruiker bedoelt. Kies niet zelf.

**Gelijkende naam** ("Content Calender", "Contentplanning"): noem hem en vraag of dat 'm is.
Hernoem nooit zelf iets in de workspace.

---

## FASE 3: KLOPPEN DE TWEE DATABASES?

Haal van beide databases het live schema op en vergelijk met `references/notion-schema.md`.

**Content Calendar** moet hebben: Hook (title), Fase (select), Pillar (select), Soort
(select), Kanaal (select), Status (status), Publicatiedatum (date), URL (url), Instagram (url).

**Content Pillars** moet hebben: Content Pillar (title), Status (select), Laatst bijgewerkt
(date), Gewenst % (number).

**Gewenst % ontbreekt:** dit veld zit pas sinds oktober 2026 in de template, dus oudere
kopieën missen het. Dit is de enige uitzondering op "ik maak het niet zelf aan": vraag of je
het mag toevoegen, en voeg na ja een kolom **Gewenst %** van het type number toe aan Content
Pillars. Zegt de gebruiker nee, ga dan door en meld bij de afvinklijst dat de feedplanner
zonder gewenste verdeling werkt.

**Alles aanwezig:** meld het in één regel en ga door.

**Eén of meer ontbreken:** noem ze precies, per database, met het type.

> "Je Content Calendar mist deze velden: [naam (type)], [naam (type)].
>
> Waarschijnlijk is er iets gewijzigd na het dupliceren. Zet ze terug met precies deze naam
> en dit type, dan vinden de skills ze weer. Ik maak ze niet zelf aan, want dit is jouw
> template. Zodra ze er staan, roep je me opnieuw aan."

Stop bij een ontbrekend veld dat een skill nodig heeft om te schrijven: Hook, Status, Fase,
Soort, Kanaal, Content Pillar. Bij URL, Instagram of Publicatiedatum meld je het
en ga je door; die zijn pas nodig voor de feedplanner en automatisch inplannen.

**Verkeerd type** (bijvoorbeeld Publicatiedatum als tekst in plaats van datum): noem het, met wat het
moet zijn. Zelfde afweging als hierboven.

**Optienamen** controleer je niet streng. De skills lezen ze live. Wel één uitzondering:
staat er in het Pillar-veld van de Content Calendar een optie die niet overeenkomt met een
pillar in Content Pillars (of andersom), meld dat dan:

> "In je Content Calendar heet een pillar-optie '[optie]', maar in Content Pillars staat
> '[naam]'. Trek die gelijk, anders kan de feedplanner ze niet koppelen."

Vergelijk op het eerste woord, hoofdletterongevoelig. "Autoriteit / Inspiratie" en
"Autoriteit" zijn een match; "Authoriteit" en "Autoriteit" niet.

---

## FASE 4: IS BUSINESS DNA ER?

Twee plekken, allebei nodig:

1. **In Notion:** een pagina **Business DNA** met daaronder Personal Brand, Tone of Voice,
   Ideal Client, Product Ladder en Brand Positioning.
2. **In de map CLAUDE:** de map **Business DNA** met `SAMENVATTING.md` of de map
   `Origineel/` met de vijf documenten.

**Beide gevonden en minstens Ideal Client, Product Ladder en Tone of Voice gevuld:** ga door.

**Niet gevonden, of leeg:**

> "Ik vind je Business DNA niet [in Notion / in je map CLAUDE]. Content Studio
> bouwt daar volledig op: de pillars, de haakjes en de captions komen allemaal uit je
> merkdocumenten.
>
> Maak eerst je Business DNA: roep `@businessdna-setup` aan en daarna de vijf
> Business DNA-skills, te beginnen met `@businessdna-personal-brand`. Roep me daarna opnieuw
> aan, in een gesprek met de map CLAUDE gekoppeld."

Stop. Ga niet zelf vragen stellen over het merk; daar zijn de DNA-skills voor.

**Gedeeltelijk gevuld** (bijvoorbeeld Tone of Voice ontbreekt nog): meld welk document mist
en wat dat betekent, en ga door. De pillars worden dan dunner op dat punt; zeg dat erbij.

**Tone of Voice - Social content.md ontbreekt in `Origineel/`:** dat is het kanaaldocument
waar de caption-skill uit schrijft. Meld het precies zo en ga door:

> "Je Tone of Voice heeft nog geen document voor social content. De caption-skill leest dat
> document; zonder schrijft hij op je algemene stem en mist hij je vijf stijlvoorbeelden.
> Roep de Tone of Voice-skill aan voor social content: typ `@businessdna-tone-of-voice` in een
> gewoon Cowork-gesprek en kies bij de eerste vraag het kanaal social content."

**Alleen Tone of Voice - Social content - voorbeelden.md ontbreekt:** dat is het document met
de vijf stijlvoorbeelden die de caption-skill leest vóór hij schrijft. Meld het precies zo en
ga door:

> "Je Tone of Voice voor social content staat er, maar het document met je vijf
> stijlvoorbeelden nog niet. De caption-skill leest die posts voor hij schrijft; zonder klinkt
> het minder als jij. Roep de Tone of Voice-skill aan voor social content: typ
> `@businessdna-tone-of-voice` in een gewoon Cowork-gesprek, kies het kanaal social content en
> wijs daar je vijf sterkste posts aan."

Zet het in beide gevallen ook op de afvinklijst onder NOG NIET.

---

## FASE 5: MAAK DE MAPPEN CONTENT STUDIO EN BUSINESS BRAND GUIDELINES

Maak in de map **CLAUDE** op het bureaublad (die staat er sinds `@businessdna-setup`) twee
mappen: Business Brand Guidelines en Content Studio.

```
CLAUDE/
├── Business Brand Guidelines/
│   ├── carrousels/
│   ├── reelomslagen/
│   ├── brandfotos/
│   ├── canva-brandkit/
│   ├── lettertypes/
│   ├── logo/
│   └── websitepaginas/
└── Content Studio/
    ├── Design System/
    ├── Goedgekeurde haakjes/
    ├── Goedgekeurde captions/
    ├── MEMORY.md
    └── README.md
```

**Business Brand Guidelines** is de plek voor beeldmateriaal: voorbeelden van carrousels en
reelomslagen, brandfoto's, een screenshot van de Canva Brand Kit, lettertypes, logo's en
screenshots van websitepagina's. De gebruiker vult hem zelf; `content-designsystem` leidt er daarna het design system uit af. De mapnamen
liggen vast, want die skill zoekt erop. Jij maakt alleen de lege map met de zeven submappen
aan. Bestaat de map al (bijvoorbeeld uit een oudere versie van Business DNA, of omdat de
gebruiker al beeld heeft verzameld), vul dan alleen de ontbrekende submappen aan en laat de
rest met rust.

Zoek het bureaubladpad op via het systeem, hardcodeer het nooit. Op Windows kan het
bureaublad omgeleid zijn naar OneDrive.

- **Windows:** `[Environment]::GetFolderPath('Desktop')`
- **macOS en Linux:** `~/Desktop`

Kijk eerst naar de map die aan dit gesprek of project gekoppeld is; dat hoort CLAUDE te
zijn. Bestaat de map CLAUDE niet, of ontbreken Business DNA en Business Copybank erin, dan
is Business DNA nog niet ingericht: zeg dat de gebruiker een map CLAUDE op het bureaublad
maakt, die als werkmap kiest en `@businessdna-setup` aanroept, en stop. Maak CLAUDE nooit zelf aan.

Zie je alleen de mappen Content Studio en Business DNA gekoppeld, dan draai je in het project
Content Studio. Maak dan niets aan, ook niet in de gekoppelde mappen, en zeg:

> "Ik draai nu in je project Content Studio, en daar zie ik je map CLAUDE niet. Start een
> nieuw gesprek buiten het project, koppel de map CLAUDE en roep me daar opnieuw aan."

Stop.

Maak de mappen in deze volgorde, en sla er geen over:

1. Business Brand Guidelines, met de zeven submappen.
2. Content Studio.
3. Content Studio/Design System.
4. Content Studio/Goedgekeurde haakjes.
5. Content Studio/Goedgekeurde captions.
6. Content Studio/MEMORY.md en Content Studio/README.md.

Vraag daarna een maplisting op van beide mappen en controleer dat alle tien er staan. In je
rapport noem je alleen wat je werkelijk hebt aangetroffen; ontbreekt er een, maak hem alsnog
aan.

**De submappen blijven leeg.** Zet er geen LEESMIJ.md, README.md, .gitkeep of ander bestand
in om ze "zichtbaar" te maken; een lege map is een lege map. De enige bestanden die jij
maakt zijn MEMORY.md en README.md, direct in Content Studio. De skills die later in de
submappen schrijven, maken hun eigen bestanden.

Bestaat een map of bestand al, laat het dan met rust. Maak alleen aan wat ontbreekt.
Verwijder of overschrijf nooit iets.

**MEMORY.md** krijgt precies dit, en verder niets:

```markdown
# MEMORY — Content Studio

## Hookgenerator

## Caption

## Design System
```

**README.md** krijgt de tekst uit `docs/readme-content-studio.md` van deze plugin.

De drie submappen blijven leeg. `content-designsystem` bouwt later de map `Design System/`,
`hookgenerator` maakt
`Goedgekeurde haakjes/goedgekeurde-haakjes.md` aan bij de eerste opgeslagen haakjes, en
`content-caption` maakt `Goedgekeurde captions/goedgekeurde-captions.md` en `fotogebruik.md`
aan bij de eerste caption die de gebruiker goedkeurt.

Kan een map niet worden aangemaakt (rechten): meld het, ga door met Fase 6, en zet de map op
de afvinklijst als openstaand.

---

## FASE 6: VUL DE CONTENT PILLARS

Dit is het inhoudelijke deel. Werk **pillar voor pillar**, niet alles tegelijk. Zo kan de
gebruiker stoppen en later verder, en gaat er niets verloren.

### Voorbereiding

1. Lees Business DNA: `SAMENVATTING.md`, en waar je meer nodig hebt `Origineel/Personal Brand.md`,
   `Origineel/Ideal Client.md`, `Origineel/Product Ladder.md`, `Origineel/Tone of Voice.md`.
2. Haal de rijen uit Content Pillars op. Gebruik de namen die daar staan; verzin geen
   pillars en voeg er geen toe. Staan er geen rijen, meld dat en verwijs naar het opnieuw
   dupliceren van de template.
3. Sla pillars met Status Compleet over, tenzij de gebruiker vraagt ze opnieuw te doen.

### Per pillar

Leid uit Business DNA af wat je kunt, en toon het in dit format:

```
PILLAR: [naam]

Wat past hier wel in
[3 tot 6 regels, concreet, afgeleid uit Personal Brand, Ideal Client en Product Ladder]

Wat past hier niet in
[wat ik hieruit kan afleiden, of: "Dit kan ik niet uit Business DNA halen."]

Klanttaal
[letterlijke uitspraken uit Ideal Client die bij deze pillar passen]

Do's
[3 tot 5 regels]

Don'ts
[3 tot 5 regels, waaronder de verboden woorden uit Tone of Voice die hier relevant zijn]
```

Vraag daarna **alleen naar de gaten**. Wat je hebt afgeleid hoeft de gebruiker alleen te
bevestigen of te corrigeren.

**Vraag altijd expliciet naar "Wat past hier niet in".** Dat veld wordt overgeslagen als je er
niet naar vraagt, en het is het veld dat `content-caption` het meest gebruikt om te toetsen
of een caption in de pillar past. Stel de vraag concreet:

> "Wat hoort volgens jou juist níet in [pillar]? Denk aan onderwerpen die je bewust vermijdt,
> of dingen die op deze pillar lijken maar ergens anders horen."

Betekenis van de vijf standaardpillars, als hulp bij het afleiden (de gebruiker mag afwijken):

| Pillar | Doel | Komt vooral uit |
|---|---|---|
| Persoonlijk | de mens achter het merk, verbinding | Personal Brand: vormend verhaal, menselijke kant, waarden |
| Autoriteit | visie, standpunten, de doelgroep anders laten kijken | Personal Brand: waarom en missie; Brand Positioning |
| Expertise | kennis, uitleg, hoe het werkt | Product Ladder: wat de klant leert; Ideal Client: vragen |
| Social Proof | bewijs van anderen, resultaten | Ideal Client: verlangens; reviews uit de Copybank |
| Aanbod | het aanbod zelf, uitnodigen | Product Ladder: treden, doorstroom; Ideal Client: bezwaren |

### Wegschrijven

Na akkoord op één pillar schrijf je die meteen weg, niet pas aan het eind:

- **Body van de pillarpagina:** de vijf kopjes, exact zo, in deze volgorde, als `##`:
  `Wat past hier wel in` · `Wat past hier niet in` · `Klanttaal` · `Do's` · `Don'ts`.
  Vervang wat er stond; dit is de enige inhoud van de pagina.
- **Status:** `Compleet`.
- **Laatst bijgewerkt:** vandaag.

Meld het in één regel en ga naar de volgende pillar. Wil de gebruiker stoppen, dan staat wat
af is al in Notion; zeg welke pillars nog openstaan.

### Gewenste verdeling

Zijn alle pillars gevuld, vraag dan welk deel van de posts over elke pillar moet gaan. De
feedplanner vergelijkt dit met wat er gepost en gepland is.

Doe een voorstel in één blok, afgeleid uit Business DNA (wat het doel van de gebruiker is en
waar het aanbod staat in de Product Ladder), en vraag of het klopt:

```
GEWENSTE VERDELING
Persoonlijk   25%
Autoriteit    25%
Expertise     15%
Aanbod        20%
Social Proof  15%
Samen        100%
```

Hele getallen, samen precies 100. Komt het antwoord van de gebruiker niet op 100 uit, zeg dat
en vraag welke pillar je aanpast; reken het niet zelf om. Schrijf daarna per pillar het getal
in het veld **Gewenst %** (25, niet 0,25). Status en Laatst bijgewerkt laat je hierbij staan.

---

## FASE 7: LEVER DE PROJECTINSTRUCTIES

Neem het plakblok uit `docs/projectinstructies-content-studio.md` van deze plugin, alles onder
de streep, en lever het in zijn geheel. Je vult niets in en je laat niets weg: de instructies
verwijzen naar Business DNA, naar de pillars in Notion en naar `design-system.md`, en de
skills lezen die bronnen zelf. Een samenvatting ervan in de instructies zou een kopie zijn
die veroudert.

Lever het als één plakblok in een codeblok, met deze instructie erboven:

> "Dit zijn je projectinstructies. Maak in Claude een project **Content Studio** aan, koppel
> de map **CLAUDE** van je bureaublad, en plak dit blok in het veld projectinstructies. Met
> de map CLAUDE ziet het project in één keer je Business DNA, je Business Copybank, je
> Business Brand Guidelines en Content Studio."

Schrijf de projectinstructies niet zelf weg in een bestand, tenzij de gebruiker daarom
vraagt. Dan komen ze in `Content Studio/projectinstructies.md`.

---

## FASE 8: AFVINKLIJST

Sluit af met een lijst. Per punt: klaar of nog niet, en bij nog niet de eerstvolgende actie,
in gewone woorden.

```
KLAAR
✓ Notion gekoppeld
✓ Content Calendar en Content Pillars gevonden, alle velden aanwezig
✓ Business DNA gevonden
✓ Map Business Brand Guidelines aangemaakt met zeven submappen
✓ Map Content Studio aangemaakt (Design System, Goedgekeurde haakjes, Goedgekeurde captions, MEMORY.md, README.md)
✓ Content Pillars gevuld: [namen]
✓ Gewenste verdeling ingevuld: [pillar %, pillar %, ...]
✓ Projectinstructies geleverd

NOG NIET
○ Project Content Studio aanmaken → project aanmaken, map CLAUDE koppelen, het blok hierboven plakken in projectinstructies
○ Beeldmateriaal verzamelen in Business Brand Guidelines → carrousels, reelomslagen, brandfoto's, Brand Kit, lettertypes en logo in de submappen zetten; de checklist staat in de leeromgeving
○ [alleen als het ontbreekt] Tone of Voice voor social content maken → @businessdna-tone-of-voice aanroepen en het kanaal social content kiezen
○ [alles wat in deze sessie is blijven liggen, met de reden]
```

Ben je aangeroepen door een andere skill, houd het dan kort:

> "Je omgeving staat klaar. We gaan verder waar we gebleven waren."

---

## ALS ER IETS MISGAAT

**Notion-verbinding valt weg halverwege.** Meld wat je wel en niet hebt kunnen doen. De
pillars die al zijn weggeschreven staan er; ga bij een nieuwe poging verder waar je was.

**De gebruiker zegt dat de template er staat, maar jij ziet hem niet.** Bijna altijd een
rechtenkwestie:

> "Volgens jou staat de Social Media Planner er, maar ik zie hem niet. Dat betekent meestal
> dat de Notion-connector geen toegang heeft tot die plek. Ga in Claude naar Connectors,
> open de instellingen van Notion en controleer welke pagina's gedeeld zijn."

**Business DNA is er, maar dun.** Ga door en zeg per pillar wat je niet kon afleiden. Verzin
niets over de doelgroep dat er niet staat.

---

## EEN VRAAG ZONDER ANTWOORD IS NIET VERVALLEN

Stel je een vraag en komt daar geen antwoord op, omdat de gebruiker iets anders vertelt of
maar een deel beantwoordt, dan staat die vraag nog open. Rond een pillar of de setup nooit af
zolang er een vraag van jou openstaat. Benoem hem opnieuw vóór je afrondt:

> "Voor ik dit vastzet: [de vraag] staat nog open."

Wil de gebruiker de vraag niet beantwoorden, dan mag het gat blijven. Maar dan is dat zijn
keuze, niet iets wat jij hebt laten liggen.

---

## DOET NIET

- Connectors instellen. Alleen controleren en uitleggen.
- Het design system maken. Dat is `@designsystem`, in Claude Code.
- Business Brand Guidelines vullen. Dat doet de gebruiker zelf.
- Iets aanmaken, hernoemen of verplaatsen in Notion buiten de body en properties van de
  pillarpagina's.
- Een nieuwe pillar of een nieuwe optie aanmaken.
- Inhoudelijke merkvragen stellen. Daar is Business DNA voor.
- Bestaande mappen of bestanden overschrijven.
- Bestanden in submappen zetten. Lege mappen blijven leeg.
- Iets wegschrijven zonder akkoord.
- Bestanden uit `references/` of `docs/` bij naam noemen in je antwoorden aan de gebruiker.

---

## REFERENTIEBESTANDEN

Staan in de map `references/` en `docs/` van deze plugin, twee niveaus boven deze skill.

| Bestand | Inhoud |
|---|---|
| `references/notion-schema.md` | de twee databases, properties, naamvarianten, pillar-kopjes |
| `references/memory-regels.md` | de opbouw van MEMORY.md |
| `docs/projectinstructies-content-studio.md` | het plakblok dat je in Fase 7 in zijn geheel levert |
| `docs/readme-content-studio.md` | de README die je in Fase 5 in de map zet |
