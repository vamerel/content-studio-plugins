# Notion-schema

Wat er in de Content Studio-template hoort te staan en hoe elke skill het terugvindt.
De koper dupliceert de template zelf; de skills bouwen niets na.

---

## Drie databases

```
Content Studio                  (pagina; in een oudere kopie heet hij Social Media Planner)
├── Content Pillars             (database, in oudere kopieën geschreven als CONTENT PILLARS)
├── Content Team                (database, één rij per teamlid; mag ontbreken in een oudere kopie)
└── Content Calendar            (database)
```

**De pagina** heet in de huidige template **Content Studio**, in een oudere kopie **Social Media
Planner**. Zoek op beide. Waar een skill of prompt "de Social Media Planner" zegt, is het deze
pagina, hoe hij ook heet. De map Content Studio op de computer is iets anders: die bedoel je
alleen als het over bestanden gaat.

**Zoek altijd op naam, nooit op ID.** ID's verschillen per workspace. Zoek met
`notion-search` en probeer de naamvarianten:

| Database | Zoek op (hoofdletterongevoelig) |
|---|---|
| Content Calendar | "Content Calendar", "Content Kalender", "Contentkalender" |
| Content Pillars | "Content Pillars", "CONTENT PILLARS", "Pillars", "Content Pijlers" |
| Content Team | "Content Team", "Team", "Contentteam" |

Een naam met een getal tussen haakjes erachter, zoals "Content Calendar (1)", is een kopie die
Notion bij het dupliceren maakt. Die telt gewoon mee; noem in een gesprek één keer dat de
gebruiker hem mag hernoemen.

Meerdere treffers? Sla eerst elke database over met "template" in de naam of in het pad (de
pagina's erboven), hoofdletterongevoelig. De template is nooit de werkplek van de gebruiker,
dus die kies je ook niet als hij als enige overblijft. Blijft er precies één over, gebruik
die. Blijven er meer over:

- **In een gesprek:** toon de opties, met het pad, en laat de gebruiker kiezen.
- **In een geplande taak** (`cs-publiceren`): er is niemand om te vragen. Staat in de
  aanroep de instelling `Content Calendar`, kies dan de treffer die bij die omschrijving past.
  Zonder die instelling, of als er niet precies één past: publiceer niets en mail de gevonden
  databases (zie de skill).

Gok nooit.

**Haal het live schema op** met `notion-fetch` op de database voordat je een veld invult.
De optienamen die je hieronder ziet zijn de standaard uit de template; in de workspace van
de gebruiker kunnen ze afwijken. Wat in het live schema staat wint. Maak nooit een nieuwe
optie of property aan.

---

## Content Calendar

| Property | Type | Opties in de template |
|---|---|---|
| Hook | Title | het haakje, de eerste regel van de post |
| Fase | Select | Unaware, Problemaware, Solutionaware, Productaware, Fullyaware, Persoonlijk |
| Pillar | Select | Persoonlijk, Autoriteit, Expertise, Aanbod, Social Proof |
| Soort | Select | Carrousel, Reel, Post, Email |
| Kanaal | Select | Instagram, LinkedIn, Emailmarketing, Facebook |
| Status | Status | Idee (to-do) → Concept → Design → Video → Klaar → Gepland → Bezig → Fout (in progress) → Live (complete). Sommige oudere kalenders hebben ook Designen |
| Publicatiedatum | Date | met tijd (Tijd opnemen aan) als je een vrij tijdstip per post wilt; `cs-publiceren-metricool` plant op die tijd in |
| Design | URL | de link naar de slides in Google Drive: de map van een carrousel, of het bestand van een reelomslag of losse post. Gezet door de Design Studio; blijft staan na publicatie. In oudere kopieën heet dit veld Drive of Canva |
| URL | URL | in de API heet dit veld `userDefined:URL`. De link naar de post op Instagram, gezet zodra hij live staat |

**Statussen Design en Video.** Een post op Design of Video staat in de Design Studio (een
scherm in Content Studio): Design voor een carrousel of losse post, Video voor een reel (eerst
filmen, dan de omslag). Klaar in de Design Studio zet de slides in Drive, de link in het
linkveld en de status op Klaar. Let op: **Design** is zowel een status als (in de huidige
template) de naam van het linkveld. Uit de context is altijd duidelijk welke je bedoelt; noem in
meldingen "het veld Design" of "de status Design".

Cijfers (views, likes, reacties, opgeslagen, gedeeld) staan nooit in Notion. Content Studio
haalt ze zelf via Composio uit Instagram, en de zondagtaak doet dat voor Ruby.

### Welk veld is de Drive-link, welk de postlink?

De template had eerst andere namen. Een koper met een oudere kopie moet blijven werken. Kijk
daarom in het live schema welke URL-properties er zijn, loop deze tabel van boven naar beneden
af en neem de eerste rij die past. Lees **nooit** zonder deze controle `URL` als Drive-link:

| Welke URL-property staat er? | Drive-link (het linkveld) | Postlink (Instagram) |
|---|---|---|
| `Design` (huidige template) | `Design` | `URL` |
| geen `Design`, wel `Drive` | `Drive` | `URL` |
| geen `Design` of `Drive`, wel `Canva` (oudere kopie) | `Canva` | `URL` |
| geen `Design`, `Drive` of `Canva` (heel oude kopie) | `URL` | `Instagram` |

- Alleen een property van het type **url** telt als linkveld. `Design` is ook een optie van
  Status; dat is geen veld.
- In elke skill, prompt en melding waar "het veld Drive" of "het Drive-linkveld" staat, bedoel
  je het linkveld uit deze tabel, met de naam die het in de kalender van de gebruiker heeft.
- Een canva.com- of canva.link-link in het linkveld is een oude post zonder slides in Drive: de
  publiceerskills behandelen die als "ontwerp ontbreekt". De gebruiker zet zulke posts zelf om,
  door de post in de Design Studio af te maken. Een post op Live met zo'n link laat je staan.
- Bestaat `Design`, `Drive` of `Canva`, dan is `URL` de postlink, ook als er nog een property
  `Instagram` staat. Die laat je dan met rust.
- Bestaat geen van de drie en ontbreekt ook `Instagram`, dan is er geen veld voor de postlink.
  Noem dat en zeg wat de gebruiker toevoegt: een URL-property **Design**, waar de links naar de
  slides in komen; de link naar de post komt dan in `URL`. Maak hem nooit zelf aan.
- Heeft de kalender `Drive` of `Canva` en geen `Design`, dan werkt alles. Meld in een gesprek
  hoogstens één keer dat de gebruiker het veld mag hernoemen naar Design; het hoeft niet.
- Een link naar instagram.com in het Drive-linkveld is geen slidelink. Een post met een
  instagram.com-link in het Drive-linkveld of het postlinkveld is al geplaatst.
- Noem in meldingen en mails het veld bij de naam die het in de kalender van de gebruiker
  heeft.

**Soort lees je uit het live schema.** De template heeft `Carrousel`; in een eigen kalender kan
de optie anders gespeld zijn, bijvoorbeeld `Carroussel`. Een optie die met `Carr` begint, is de
carrousel. Schrijf altijd de optienaam zoals die in het live schema staat.

**Wie vult wat:**

| Skill | Schrijft | Status |
|---|---|---|
| cs-hookgenerator | Hook, Fase, Pillar; bij een verhaal van Viggo het blok Verhaal | Idee |
| cs-save | Hook, Pillar, Fase als die genoemd is of onmiskenbaar; bij een post van `@scrape` de bron in de body | Idee |
| cs-caption | Soort, Kanaal, body (de caption en het Rapport van Koen); bij een nieuwe pagina ook Hook, Fase en Pillar | Concept, Design of Video (de gebruiker kiest) |
| cs-design | het blok Slidetekst in de body | (laat de status staan) |
| Content Studio (Design Studio) | het Drive-linkveld | Klaar |
| Content Studio (Feed View) | alleen als de gebruiker het kiest | Klaar, Gepland of Live |
| cs-controle | alleen na ja: het blok Rapport van Koen | (laat de status staan) |
| ochtendronde (cs-publiceren modus ochtend, cs-publiceren-metricool modus inplannen) | alleen de status | Klaar → Gepland als de post compleet is |
| cs-publiceren | Status, en na publicatie de postlink | Gepland → Bezig → Live, of Fout |
| cs-publiceren-metricool | Status, en zodra Metricool geplaatst heeft de postlink | Gepland → Bezig (staat in Metricool) → Live (Metricool bevestigt), of Fout |

**Compleet** (Klaar naar Gepland): een Publicatiedatum, een Drive-link met slides in het
linkveld (Design, Drive of Canva; een
carrousel 2 tot en met 10 JPEG's in de map, een post, story of reelomslag één JPEG), een
caption in een codeblok en geen regel met `[VUL AAN` in de caption.

**Pillar leidt de skill zelf af** uit het haakje of het gesprek, door het naast de body van de
pillarpagina's te leggen (Wat past hier wel in, Wat past hier niet in). Toon de pillar vóór het
wegschrijven, zodat de gebruiker hem kan corrigeren. Past er geen, laat het veld dan leeg en
meld het. Een pillar die al op een pagina staat, overschrijf je niet.

**Soort en Kanaal** vullen `cs-hookgenerator` en `cs-save` alleen in als de gebruiker
specifiek noemt wat erin moet. Anders blijven ze leeg. `cs-caption` vraagt ze in stap 1 en
vult ze dus wel in.

**Body:** zie `pagina-opbouw.md`. Bij `cs-hookgenerator` en `cs-save` blijft hij leeg, tenzij
de gebruiker specifiek zegt dat er iets in moet of het een opgehaalde post is.

**Fase-namen mappen** op de live opties door spaties weg te halen en hoofdletters te negeren:
"Problem Aware" wordt `Problemaware`. Bestaat de optie niet, laat het veld leeg en meld het
één keer.

**Fase Persoonlijk** is voor een persoonlijk verhaal dat niet over de klantreis gaat, meestal
van Viggo. Het is een zesde optie naast de vijf klantreisfases. Ruby en Content Studio tellen
hem apart, niet mee in de klantreis. Let op: er is ook een **Pillar** Persoonlijk. Dat zijn twee
velden; een post kan Pillar Persoonlijk hebben met een klantreisfase, of Fase Persoonlijk met
een andere pillar. Ontbreekt de optie Persoonlijk bij Fase in het live schema (een oudere
kopie van de template), laat de fase dan leeg en meld: "In je Content Calendar ontbreekt de
optie Persoonlijk bij Fase. Voeg hem toe in Notion: klik op het veld Fase en kies een nieuwe
optie." Maak hem nooit zelf aan.

**Status:** bestaat `Idee` of `Concept` niet, gebruik dan de eerste optie in dezelfde groep
(to-do of in progress) en meld dat kort. Ontbreekt `Design`, `Video` of `Klaar`, toon dan
alleen de statussen die er wel zijn en zeg waar de gebruiker de optie toevoegt (in Notion, in
de groep In progress). Maak hem nooit zelf aan.

**Statussen voor publiceren:** `cs-publiceren` en `cs-publiceren-metricool` hebben `Klaar`,
`Gepland`, `Bezig`, `Live` en `Fout` nodig en hebben geen terugvaloptie. `Bezig` voorkomt dat een post twee keer geplaatst
wordt. Ontbreekt er één, dan publiceert de skill niets en meldt hij welke status in Notion
toegevoegd moet worden.

**Soort Story:** de optie `Story` staat niet in de template. Heeft de gebruiker hem zelf
toegevoegd, dan plant `cs-publiceren-metricool` stories in. Zonder die optie slaat hij
stories over; hij maakt de optie nooit aan.

---

## Content Pillars

| Property | Type | Opties |
|---|---|---|
| Pillar | Title | de naam van de pillar. In oudere kopieën heet de titelkolom Content Pillar |
| Status | Status of Select | Compleet, In progress, Leeg |
| Laatst bijgewerkt | Date | |
| Gewenst | Number | welk deel van de posts over deze pillar gaat, als heel getal (25 = 25%); samen 100. In oudere kopieën heet dit veld Gewenst % |

**Veldnamen lees je uit het live schema.** De titelkolom is de property van het type title,
hoe hij ook heet. Het verdeelveld is de number-property die met `Gewenst` begint (`Gewenst` of
`Gewenst %`). Waar een skill "Gewenst %" schrijft, bedoel je dat veld. Noem het in meldingen
bij de naam die het bij de gebruiker heeft.

De template bevat vijf rijen: Persoonlijk, Autoriteit, Expertise, Aanbod, Social Proof. De
naam op de pillarpagina kan afwijken van de optienaam in het Pillar-veld van de Content
Calendar (bijvoorbeeld "Autoriteit / Inspiratie" tegenover "Autoriteit"). Match op het eerste
woord, hoofdletterongevoelig.

**De uitleg per pillar staat in de body van de pillarpagina**, met vaste kopjes in deze
volgorde:

```
## Wat past hier wel in
## Wat past hier niet in
## Klanttaal
## Do's
## Don'ts
```

`cs-setup` vult de body en zet Status op Compleet en Laatst bijgewerkt op
vandaag. De andere skills lezen de body alleen. Een pillar met Status Leeg of zonder de vijf
kopjes telt als niet gevuld: meld dat en verwijs naar `@setup`.

---

## Content Team

Eén rij per teamlid: Viggo, Sam, Ruby, Hanna, Cato, Koen, Daan en Puk. Elke rij is de eigen
pagina van dat teamlid. Daar zet het team zijn updates op, de nieuwste bovenaan, onder een kopje
met de datum. Ruby zet haar analyses als subpagina onder Analyses, met de datum in de titel.
Content Studio toont op Team en Home de update met de nieuwste datum (kopje of subpagina) en de Rol;
het kopje Doel is geen update.

| Property | Type | Wat erin staat |
|---|---|---|
| Naam | Title | de voornaam van het teamlid; match op het eerste woord, hoofdletterongevoelig |
| Rol | Text | wat het teamlid doet, bijvoorbeeld "de Designer". De gebruiker vult dit; skills laten het staan |
| Laatste update | Date of Text | **Date:** de datum van de laatste update. **Text:** één of twee zinnen uit de laatste update. Kijk in het live schema welk type het is |
| Bijgewerkt | Date | optioneel, alleen in sommige kopieën: de datum van de laatste update |

- De database mag ontbreken; dan slaan skills en taken het bijwerken van de teampagina's over.
- Een teamlid zonder rij sla je over. Maak nooit een rij, veld of optie aan.
- Een skill of taak die een update op een teampagina zet, vult daarna het veld Laatste update
  (datum of zinnen, naar het type) en, als dat veld bestaat, Bijgewerkt met de datum van vandaag.
  Bestaat een veld niet, sla het over. Rol en Naam wijzig je nooit.

---

## Wanneer iets ontbreekt

- **Database niet gevonden:** verwijs naar `@setup`. Die geeft de
  duplicatielink en controleert de template.
- **Property ontbreekt:** noem de property bij naam en zeg dat hij in de template hoort te
  staan. Maak hem niet zelf aan; dat is de template van de gebruiker.
- **Optie ontbreekt:** laat het veld leeg en meld het één keer. Nooit een optie toevoegen.
