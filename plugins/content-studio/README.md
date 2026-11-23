# Content Studio

Twaalf Cowork-skills, één agent en een eigen Content Studio waarmee je je Instagram- en
LinkedIn-content maakt met een team, op basis van je Business DNA. Viggo, Sam en Ruby leveren
aan, Hanna maakt haakjes, Cato schrijft captions, Koen controleert, Daan zet je Content Studio
neer en je slides klaar, en Puk plant in en publiceert op Instagram (route A met Metricool,
route B met Composio; de koper kiest één route). Het design system is een aparte plugin,
`content-designsystem` (skill `cs-designsystem`), omdat die in Claude Code draait en Claude
Code een eigen lijst heeft. De cijfers van je posts haalt Ruby, en Content Studio zelf, via
Composio uit Instagram; ze staan niet in Notion.

**Content Studio** is een artifact (`references/content-studio.html`, gebouwd uit
`studio-bron/`) met een menu links en een werkvlak rechts: Design Studio, Feed View, Analyses en
Team, en onderaan Instellingen en Vernieuwen. Daan zet hem neer bij de gebruiker en werkt hem
bij. In de Design Studio maak je carrousels en reelomslagen in je eigen huisstijl; met Klaar
gaan de slides als JPEG naar Google Drive, komt de link in Notion en gaat de status naar Klaar.
De afspraken tussen de skills en de studio staan in `references/content-studio-afspraken.md`.

## Het team

| Wie | Skill | Aanroepen met | Doet |
|---|---|---|---|
| Viggo | `cs-verhalen` | `@viggo`, `@verhalen` | haalt uit je week de momenten die een post waard zijn, stelt hoogstens drie vragen per verhaal, kijkt of het al verteld is, geeft door aan Hanna |
| Sam | `cs-speuren` | `@sam`, `@speuren` | zoekt via Apify populaire posts in je niche, analyseert opening, opbouw, wat weggegeven wordt en het einde, geeft patronen door aan Hanna |
| Ruby | `cs-analyse` | `@ruby`, `@analyse` | cijfers van je eigen posts via Composio, per 1.000 weergaven, per pillar, fase (Persoonlijk apart) en soort; geeft door aan Hanna |
| Hanna | `cs-hookgenerator` | `@hanna`, `@haakjes` | vijf haakjes voor één probleem, één per fase; een verhaal van Viggo wordt één tot drie haakjes met Fase Persoonlijk; Koen controleert; na akkoord op Idee |
| Cato | `cs-caption` | `@cato`, `@caption` | de caption volgens HVVA, hoogstens drie vragen met voorstel, Koen controleert als laatste stap; na akkoord vraagt ze welke status de post krijgt: Concept, Design of Video |
| Koen | `cs-controle` + agent `koen` | `@koen`, `@controle` | vijf checks (haakje, uniek, feiten, klank, klantreis), keurt feiten nooit af; controleert ook de slides in Drive en stelt aanvullingen voor het design system voor |
| Daan | `cs-design` | `@daan`, `@design`, `@inbox` | zet Content Studio neer en vult de huisstijl, zet voor posts op Design en Video de slides klaar (templates, tekst, foto's uit de Bibliotheek foto's), verwerkt de contentinbox |
| Puk | `cs-publiceren-metricool` | `@puk`, `@publiceren-metricool` | route A: elke ochtend Klaar naar Gepland, alles op Gepland in Metricool, Metricool gelijk houden aan Notion, gisteren geplaatst op Live |
| Puk | `cs-publiceren` | `@puk`, `@publiceren` | route B: elke ochtend Klaar naar Gepland, op je postmomenten de post van dat moment via Composio op Instagram, meteen op Live |
| | `cs-setup` | `@setup` | omgeving controleren, mappen maken (ook in Google Drive), Content Studio laten neerzetten, Content Pillars vullen, projectinstructies |
| | `cs-save` | `@save` | een idee of opgehaalde post bewaren als Idee |
| | `cs-scrape` | `@scrape` | een post van Instagram, LinkedIn of YouTube ophalen via Apify |

De oude skillnamen (content-caption, hookgenerator, content-publiceren en de andere) staan als
trigger in de beschrijvingen, zodat bestaande geplande taken de skills blijven vinden.

## Hoe het samenhangt

- **Notion is de bron van waarheid voor content:** de Notion-pagina Content Studio (in een
  oudere kopie Social Media Planner) heeft drie databases: Content Calendar, Content Pillars en
  Content Team. Haakjes, captions, status, fase, publicatiedatum, de link naar de slides in
  Google Drive (veld Design) en de link naar de post op Instagram (veld URL) staan in de Content
  Calendar. Een oudere kalender met het veld Drive of Canva in plaats van Design werkt ook: dan
  komt de Drive-link in dat veld. In Content Team heeft elk teamlid een eigen pagina met zijn
  updates. Cijfers staan niet in Notion.
- **De status zegt wie aan de beurt is:** Idee (Hanna klaar, Cato aan de beurt), Concept (nog
  bijschaven), Design of Video (klaar om te designen of eerst filmen; staat in de Design
  Studio), Klaar (slides in Drive), Gepland (Puk, in de ochtendronde), Bezig en Live (Puk),
  daarna leest Ruby de cijfers terug.
- **De pagina van een post** begint met de caption in één codeblok. Daaronder alleen
  ingeklapte blokken: Verhaal, Slidetekst en Rapport van Koen. Puk en Content Studio lezen de
  caption uit het codeblok.
- **Fase Persoonlijk** is een zesde optie naast de klantreisfases, voor persoonlijke
  verhalen. Een ander veld dan Pillar Persoonlijk.
- **Koen controleert met frisse ogen.** Zijn instructies staan op één plek, `agents/koen.md`.
  De skills roepen de agent aan; laadt die niet, dan geven ze de tekst aan een gewone
  subagent, en anders doen ze de controle als aparte stap. Akkoord geeft altijd de gebruiker.
- **`Content Studio/Design System/design-system.md` is de bron van waarheid voor het design
  system:** tekenlimieten, slides per format, cover en CTA. Daan leest het daar.
- **MEMORY.md in de map Content Studio** heeft vier secties: Hookgenerator, Caption, Design
  System en Sam. Elke skill leest en schrijft alleen zijn eigen sectie, na akkoord.
- **Alleen de twee setup-skills maken mappen aan.** `businessdna-setup` maakt Business DNA en
  Business Copybank; `cs-setup` maakt Business Brand Guidelines en Content Studio, en na ja de
  mappen in Google Drive. De studio maakt alleen een map per carrousel en zet daar de slides in.
- **Elke skill controleert bij de start** of de omgeving er is, en zegt anders precies wat
  ontbreekt en wat je moet doen. Skills noemen geen lesnamen, zodat de leeromgeving kan
  veranderen zonder de plugin te herbouwen. Het menu voor connectors heet overal
  Aanpassingen (Customize) > Connectors.

## Mappen bij de gebruiker

```
CLAUDE/
├── Business DNA/                  businessdna-setup · alleen-lezen
├── Business Copybank/             businessdna-setup · tekst · alleen-lezen
├── Business Brand Guidelines/     cs-setup · beeld · alleen-lezen
└── Content Studio/                cs-setup · output
    ├── Design System/
    ├── Goedgekeurde haakjes/
    ├── Goedgekeurde captions/
    ├── MEMORY.md
    ├── README.md                  met de regels Content Studio en Publiceren
    └── content-studio.html        de kopie die Daan publiceert

Google Drive/
└── Content Studio/                cs-setup, na ja
    ├── 1. Contentinbox/           de gebruiker zet er foto's en video's in; Daan (@inbox) verwerkt ze
    │   ├── Origineel/             iPhone-foto's (HEIC) na het omzetten door de studio
    │   └── Niet bruikbaar/
    ├── 2. Bibliotheek foto's/     Portret, Aan het werk, Werkplek, Onderweg, Met anderen, Details
    ├── 3. Bibliotheek video's/    video's uit de contentinbox, met naam en beschrijving
    └── 4. Designs en edits/
        ├── Carrousels/            per post een map JJJJ-MM-DD - haakje met 01.jpg, 02.jpg ...
        └── Reels/                 per post een map JJJJ-MM-DD - haakje met omslag.jpg en de video
```

De twee setup-skills draaien in een gewoon gesprek met de map **CLAUDE** gekoppeld. Het
project Content Studio koppelt ook de map **CLAUDE**; daarin mag het alleen schrijven in
Content Studio. Business DNA, Business Copybank en Business Brand Guidelines zijn er
alleen-lezen.

## Structuur van deze plugin

```
content-studio/
├── .claude-plugin/plugin.json
├── agents/koen.md                 de controleur, met tools Read en Grep
├── skills/<skill>/SKILL.md        twaalf skills
├── references/                    gedeeld door de skills
│   ├── content-studio.html        het artifact Content Studio (gebouwd, niet met de hand aanpassen)
│   ├── content-studio-afspraken.md  database, huisstijl.json, Drive-mappen en Notion: de afspraak met de studio
│   ├── notion-schema.md           de twee databases, naamvarianten, statussen, Fase Persoonlijk
│   ├── pagina-opbouw.md           de body van een kalenderpagina
│   ├── koen-aanroepen.md          hoe een skill Koen laat meekijken
│   ├── memory-regels.md           MEMORY.md: secties, grens van tien regels, wel en niet
│   ├── schrijfkwaliteit.md        zwarte lijst, test tegen generiek, stemcheck, stemcorrecties
│   ├── contentinbox.md            persoonlijke foto's in Drive: verwerken, naam en beschrijving
│   ├── vragen-met-knoppen.md      vragen met keuzeknoppen in de chat
│   └── omgevingscheck.md          de startcontrole en de meldingen per skill
└── docs/                          plakblokken voor de koper
    ├── installatie.md
    ├── projectinstructies-content-studio.md
    ├── readme-content-studio.md
    ├── geplande-taken-metricool.md  prompt voor de ochtendronde van Puk, route A (Metricool)
    ├── geplande-taken.md          prompt voor de taken van route B (Composio)
    ├── prompt-haakjesmail.md      prompt voor de taak Elke week haakjes in je inbox
    ├── prompt-contentmedewerker.md  prompt voor de zondagtaak: tien haakjes en een update van het team
    └── prompt-contentinbox.md     prompt voor de weektaak: Daan verwerkt de contentinbox
```

Let op bij publiceren: `publiceer-marketplace.ps1` neemt de map `agents/` mee, en niet de map
`studio-bron/`.

## Content Studio aanpassen

De studio wordt gebouwd uit `studio-bron/`: `kop.html` (opmaak en menu), `js/*.js` (de code per
scherm), `lib/fabric.min.js` (Fabric.js 5.3.0, MIT) en `team/*.jpg` (de teamportretten). Na een
wijziging: verhoog `content-studio-versie` in `kop.html` als bestaande studio's bijgewerkt moeten
worden, en draai `python studio-bron/bouw.py`. Dat schrijft `references/content-studio.html` en,
om lokaal te bekijken, `studio-bron/lokaal-bekijken.html` (voorbeeldweergave zonder koppelingen;
staat in `.gitignore`).

## Installeren

Zie `docs/installatie.md`. De plugin hoort bij de plugin `businessdna`; die installeer je apart en
draai je eerst.
