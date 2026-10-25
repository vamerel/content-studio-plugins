# Notion-schema

Wat er in de Social Media Planner-template hoort te staan en hoe elke skill het terugvindt.
De koper dupliceert de template zelf; de skills bouwen niets na.

---

## Twee databases

```
Social Media Planner            (pagina)
├── Content Pillars             (database, in de template geschreven als CONTENT PILLARS)
└── Content Calendar            (database)
```

**Zoek altijd op naam, nooit op ID.** ID's verschillen per workspace. Zoek met
`notion-search` en probeer de naamvarianten:

| Database | Zoek op (hoofdletterongevoelig) |
|---|---|
| Content Calendar | "Content Calendar", "Content Kalender", "Contentkalender" |
| Content Pillars | "Content Pillars", "CONTENT PILLARS", "Pillars", "Content Pijlers" |

Meerdere treffers? Sla eerst elke database over met "template" in de naam of in het pad (de
pagina's erboven), hoofdletterongevoelig. De template is nooit de werkplek van de gebruiker,
dus die kies je ook niet als hij als enige overblijft. Blijft er precies één over, gebruik
die. Blijven er meer over:

- **In een gesprek:** toon de opties, met het pad, en laat de gebruiker kiezen.
- **In een geplande taak** (`content-publiceren`): er is niemand om te vragen. Staat in de
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
| Fase | Select | Unaware, Problemaware, Solutionaware, Productaware, Fullyaware |
| Pillar | Select | Persoonlijk, Autoriteit, Expertise, Aanbod, Social Proof |
| Soort | Select | Carrousel, Reel, Post, Email |
| Kanaal | Select | Instagram, LinkedIn, Emailmarketing, Facebook |
| Status | Status | Idee (to-do) → Concept → Klaar → Gepland → Bezig → Fout (in progress) → Live (complete). Sommige kalenders hebben ook Designen |
| Publicatiedatum | Date | met tijd (Tijd opnemen aan) als je een vrij tijdstip per post wilt; `content-publiceren-metricool` plant op die tijd in |
| Canva | URL | de Canva-link van het ontwerp; blijft staan na publicatie |
| URL | URL | in de API heet dit veld `userDefined:URL`. De link naar de post op Instagram, gezet zodra hij live staat |

Cijfers (views, likes, reacties, opgeslagen, gedeeld) staan niet in Notion. De feedplanner en
de geplande taken halen ze via Composio uit Instagram.

### Welk veld is de Canva-link, welk de postlink?

De template had eerst andere namen: de Canva-link stond in `URL` en de link naar de post in
`Instagram`. Een koper met die oudere kopie moet blijven werken. Kijk daarom in het live schema
welke properties er zijn, en lees **nooit** zonder deze controle `URL` als Canva-link:

| Staat er een URL-property `Canva`? | Canva-link | Postlink (Instagram) |
|---|---|---|
| Ja (huidige template) | `Canva` | `URL` |
| Nee (oudere kopie) | `URL` | `Instagram` |

- Bestaat `Canva`, dan gelden de nieuwe namen, ook als er nog een property `Instagram` staat.
  Die laat je dan met rust.
- Bestaat `Canva` niet en ontbreekt ook `Instagram`, dan is er geen veld voor de postlink.
  Noem dat en zeg wat de gebruiker toevoegt: een URL-property **Canva**, waar de Canva-links
  in komen; de link naar de post komt dan in `URL`. Maak hem nooit zelf aan.
- Een link naar instagram.com in het Canva-linkveld is geen Canva-link. Een post met een
  instagram.com-link in het Canva-linkveld of het postlinkveld is al geplaatst.
- Noem in meldingen en mails het veld bij de naam die het in de kalender van de gebruiker
  heeft.

**Soort lees je uit het live schema.** De template heeft `Carrousel`; in een eigen kalender kan
de optie anders gespeld zijn, bijvoorbeeld `Carroussel`. Een optie die met `Carr` begint, is de
carrousel. Schrijf altijd de optienaam zoals die in het live schema staat.

**Wie vult wat:**

| Skill | Schrijft | Status |
|---|---|---|
| hookgenerator | Hook, Fase, Pillar | Idee |
| content-save | Hook, Pillar, Fase als die genoemd is of onmiskenbaar; bij een post van `@scrape` de bron in de body | Idee |
| content-caption | Soort, Kanaal, body (alleen de caption); bij een nieuwe pagina ook Hook, Fase en Pillar | Concept |
| content-publiceren (plugin content-publiceren-composio) | Status, en na publicatie de postlink | Gepland → Bezig → Live, of Fout |
| content-publiceren-metricool (plugin content-publiceren-metricool) | Status, en zodra Metricool geplaatst heeft de postlink | Gepland → Bezig (staat in Metricool) → Live (Metricool bevestigt), of Fout |

**Pillar leidt de skill zelf af** uit het haakje of het gesprek, door het naast de body van de
pillarpagina's te leggen (Wat past hier wel in, Wat past hier niet in). Toon de pillar vóór het
wegschrijven, zodat de gebruiker hem kan corrigeren. Past er geen, laat het veld dan leeg en
meld het. Een pillar die al op een pagina staat, overschrijf je niet.

**Soort en Kanaal** vullen `hookgenerator` en `content-save` alleen in als de gebruiker
specifiek noemt wat erin moet. Anders blijven ze leeg. `content-caption` vraagt ze in stap 1 en
vult ze dus wel in.

**Body:** zie `pagina-opbouw.md`. Bij `hookgenerator` en `content-save` blijft hij leeg, tenzij
de gebruiker specifiek zegt dat er iets in moet of het een opgehaalde post is.

**Fase-namen mappen** op de live opties door spaties weg te halen en hoofdletters te negeren:
"Problem Aware" wordt `Problemaware`. Bestaat de optie niet, laat het veld leeg en meld het
één keer.

**Status:** bestaat `Idee` of `Concept` niet, gebruik dan de eerste optie in dezelfde groep
(to-do of in progress) en meld dat kort.

**Statussen voor publiceren:** `content-publiceren` en `content-publiceren-metricool` hebben `Gepland`, `Bezig`, `Live` en
`Fout` nodig en hebben geen terugvaloptie. `Bezig` voorkomt dat een post twee keer geplaatst
wordt. Ontbreekt er één, dan publiceert de skill niets en meldt hij welke status in Notion
toegevoegd moet worden.

**Soort Story:** de optie `Story` staat niet in de template. Heeft de gebruiker hem zelf
toegevoegd, dan plant `content-publiceren-metricool` stories in. Zonder die optie slaat hij
stories over; hij maakt de optie nooit aan.

---

## Content Pillars

| Property | Type | Opties |
|---|---|---|
| Content Pillar | Title | de naam van de pillar |
| Status | Select | Compleet, In progress, Leeg |
| Laatst bijgewerkt | Date | |
| Gewenst % | Number | welk deel van de posts over deze pillar gaat, als heel getal (25 = 25%); samen 100 |

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

`content-studio-setup` vult de body en zet Status op Compleet en Laatst bijgewerkt op
vandaag. De andere skills lezen de body alleen. Een pillar met Status Leeg of zonder de vijf
kopjes telt als niet gevuld: meld dat en verwijs naar `@content-studio-setup`.

---

## Wanneer iets ontbreekt

- **Database niet gevonden:** verwijs naar `@content-studio-setup`. Die geeft de
  duplicatielink en controleert de template.
- **Property ontbreekt:** noem de property bij naam en zeg dat hij in de template hoort te
  staan. Maak hem niet zelf aan; dat is de template van de gebruiker.
- **Optie ontbreekt:** laat het veld leeg en meld het één keer. Nooit een optie toevoegen.
