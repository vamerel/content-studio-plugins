# Content Studio: afspraken tussen de skills en de studio

Dit bestand is de afspraak waar de studio (het artifact `references/content-studio.html`), Daan
(`cs-design`), de setup (`cs-setup`), Puk (`cs-publiceren`, `cs-publiceren-metricool`) en de
design system-skill (`cs-designsystem`, plugin content-designsystem) zich aan houden. Verander je
hier iets, pas dan alle vijf aan.

## 1. Namen

- **Content Studio**: het artifact als geheel (het dashboard).
- **Design Studio, Feed View, Analyses, Team**: de schermen in Content Studio. Onderaan het menu
  staan **Instellingen** en **Vernieuwen**.
- Reel Editor en Story Designer bestaan nog niet. Ze staan nergens in het menu.

## 2. De studio bij de gebruiker

- Daan kopieert `references/content-studio.html` naar `Content Studio/content-studio.html` en
  publiceert die met de Artifact-tool. De link komt onderaan `Content Studio/README.md`:

  ```
  Content Studio: [link] · versie [n]
  ```

- Puk zet er na het vragen een regel onder met de route om in te plannen:
  `Publiceren: Metricool` of `Publiceren: Composio`.
- `[n]` is de waarde van `<meta name="content-studio-versie" content="n">` in het bestand. Is de
  versie in de plugin hoger, dan werkt Daan de studio bij op dezelfde link: eerst Artifact `read`
  met de link, dan publiceren met `url` = de link. Wat de gebruiker in de studio deed, staat in de
  database en blijft.
- Capabilities bij het eerste publiceren (exact zo):

  ```json
  {
    "mcp": {"servers": [
      {"server": "Notion", "tools": ["notion-fetch", "notion-query-data-sources", "notion-update-page", "notion-search"]},
      {"server": "Google Drive", "tools": ["create_file", "share_file", "search_files", "download_file_content", "update_file", "trash_file"]},
      {"server": "Composio", "tools": ["COMPOSIO_MULTI_EXECUTE_TOOL"]}
    ]},
    "sample": {"images": true},
    "db": {},
    "assets": {},
    "downloads": true,
    "user": {}
  }
  ```

  Getest op 17 november 2026 in een artifact: `COMPOSIO_MULTI_EXECUTE_TOOL`, `download_file_content`
  en `notion-query-data-sources` heten in het artifact precies zo. Bij een bijwerking laat je
  `capabilities` weg, tenzij de lijst hierboven veranderd is.

## 3. De database van de studio

Alle documenten zijn gedeeld binnen het artifact. Het artifact is privé van de gebruiker; wie het
niet kan openen, ziet ook de database niet. Paden: collectie/document.

| Document | Wie schrijft | Inhoud |
|---|---|---|
| `huisstijl/basis` | Daan | `{versie, bijgewerkt, huisstijl}`; `huisstijl` volgt sectie 4, met per bestand ook `asset` (de url van het geüploade asset) |
| `huisstijl/eigen` | de studio | dezelfde vorm; wat de gebruiker onder Instellingen aanpaste. Bestaat dit document, dan gebruikt de studio dit. "Terug naar mijn design system" verwijdert het |
| `instellingen/profiel` | de studio | `{naam, foto}` (`foto` = asset-url) |
| `instellingen/koppelingen` | Daan, setup, de studio | `{kalender, kalenderDb, kalenderView, pillars, pillarsDb, pillarsView, team, teamDb, teamView, analysesPagina, drive: {contentStudio, contentinbox, fotobibliotheek, carrousels, reelomslagen}, instagramId}`. `kalender`, `pillars` en `team` zijn `collection://...`-adressen; `analysesPagina` en de Drive-waarden zijn id's |
| `instellingen/doel` | de studio | het doel van de gebruiker: `{doel, maanddoel: {id: n}, tekst, cijfer, getal, fases, uitleg}` |
| `analyses/afgevinkt` | de studio | de focuspunten van Ruby die de gebruiker afvinkte |
| `voorstellen/p<notion-id zonder streepjes>` | Daan | voorstel voor een post op Design of Video, zie sectie 5 |
| `designs/p<notion-id zonder streepjes>` | de studio | het design in bewerking, zelfde vorm als een voorstel plus `klaarOp`, `driveMap`, `driveLink` |
| `cijfers/posts` | de studio | `{opgehaald, posts: {<instagram-id>: {permalink, datum, soort, begin, views, reach, saved, shares, likes, comments, interacties}}}` |
| `cijfers/account` | de studio | `{opgehaald, volgers, dagen: {"jjjj-mm-dd": {bereik, nieuweVolgers, weergaven, kliks}}}`; dagen stapelen op |

Cijfers staan nooit in Notion (besluit 25 oktober 2026).

## 4. huisstijl.json

`cs-designsystem` schrijft `Content Studio/Design System/huisstijl.json`. Daan zet het in de
database (`huisstijl/basis`). Alle maten zijn een deel van de breedte of hoogte van de slide
(0 tot 1), zodat dezelfde template op elke maat werkt.

```json
{
  "versie": 1,
  "naam": "Naam van het merk",
  "bijgewerkt": "2026-11-17",
  "afzender": "@account",
  "kleuren": [
    {"id": "donkergroen", "naam": "Donkergroen", "hex": "#1f3f36"},
    {"id": "oranje", "naam": "Oranje", "hex": "#ff6b00"},
    {"id": "wit", "naam": "Wit", "hex": "#ffffff"}
  ],
  "fonts": {
    "kop":    {"familie": "Rajdhani", "gewicht": 700, "bron": "google"},
    "tekst":  {"familie": "Arimo", "gewicht": 400, "bron": "google"},
    "accent": {"familie": "Biro Script Plus", "gewicht": 400, "bron": "bestand", "bestand": "assets/templates/lettertypes/BiroScriptPlus.ttf"}
  },
  "logos": [
    {"id": "logo-wit", "naam": "Logo wit", "bestand": "logo/logo-wit.png"}
  ],
  "achtergronden": [
    {"id": "achtergrond-groen-1", "naam": "Groene textuur", "bestand": "assets/templates/achtergronden/achtergrond-groen-1.png"}
  ],
  "themas": [
    {"id": "donker", "naam": "Donker", "achtergrond": "donkergroen", "kop": "wit", "tekst": "wit", "accent": "oranje", "achtergrondafbeelding": null},
    {"id": "licht", "naam": "Licht", "achtergrond": "wit", "kop": "donkergroen", "tekst": "donkergroen", "accent": "oranje", "achtergrondafbeelding": null}
  ],
  "standaardThema": "donker",
  "limieten": {"cover": 50, "tekst": 120, "kop": 35, "quote": 90, "lijst": "4x30", "cta": 50, "reelomslag": 40},
  "templates": [
    {
      "id": "cover", "naam": "Cover", "formaat": "carrousel",
      "vlakken": [{"x": 0, "y": 0.6, "b": 1, "h": 0.4, "kleur": "achtergrond", "dekking": 0.9}],
      "vakken": [
        {"id": "foto", "rol": "foto", "x": 0, "y": 0, "b": 1, "h": 1, "uitsnede": "vullen"},
        {"id": "kop", "rol": "kop", "x": 0.08, "y": 0.66, "b": 0.84, "h": 0.22, "font": "kop", "grootte": 0.075, "kleur": "kop", "uitlijning": "links", "hoofdletters": false, "maxTekens": 50},
        {"id": "afzender", "rol": "afzender", "x": 0.08, "y": 0.92, "b": 0.5, "h": 0.04, "font": "tekst", "grootte": 0.028, "kleur": "accent", "uitlijning": "links"}
      ]
    }
  ]
}
```

- **Kleuren in templates zijn rollen**, geen hexcodes: `achtergrond`, `kop`, `tekst`, `accent`.
  Het thema zegt welke kleur bij welke rol hoort. Wissel je van thema, dan verandert de slide mee.
  Een vak mag ook een vaste kleur-id hebben (bijvoorbeeld `"kleur": "oranje"`) als het merk dat zo
  doet.
- **Templates:** precies deze `id`'s, in deze volgorde: `cover`, `tekst`, `quote`, `lijst`, `stap`,
  `cta` (formaat `carrousel`, 1080x1350) en `reelomslag` (formaat `reel`, 1080x1920). Extra
  templates mogen erbij (bijvoorbeeld `kopslide`, `statement`).
- **Rollen van vakken:** `kop`, `ondertitel`, `tekst`, `quote`, `naam` (bij een quote), `lijst`
  (één regel per punt), `nummer` (bij een stap), `actie` (bij de CTA), `afzender`, `foto`, `logo`.
- **Velden van een tekstvak:** `font` (`kop`, `tekst` of `accent`), `grootte` (lettergrootte als
  deel van de slidebreedte), `kleur`, `uitlijning` (`links`, `midden`, `rechts`), `hoofdletters`
  (true/false), `maxTekens`.
- **Velden van een fotovak:** `uitsnede` (`vullen` of `passen`); van een logovak: `logo` (id).
- **Vlakken** zijn gekleurde rechthoeken achter de tekst: `x, y, b, h, kleur, dekking`.
- **Bestanden** (`bestand`) zijn paden vanaf de map Design System. Daan uploadt ze als asset en
  zet in de database bij elk bestand `"asset": "<url>"`.
- **Wissel template:** de studio houdt de tekst per rol. Heeft het nieuwe template die rol niet,
  dan gaat `quote` naar `kop`, `kop` naar `quote`, `lijst` naar `tekst` en andersom, en wat dan
  nog over is, achter de tekst.
- **Type (optioneel):** een template mag een veld `type` hebben (`cover`, `tekst`, `quote`, `lijst`,
  `stap`, `cta`, `reelomslag`). Het raster met varianten in de Design Studio toont bij een carrousel
  alleen covers: templates met `type: "cover"`, of zonder type met `cover`, `kopslide` of
  `statement` in de id of naam.
- **Basisbibliotheek (19 nov 2026):** de studio levert zelf 23 rustige layouts mee, 3 tot 5 per type
  (foto vol, foto half, grote kop, kleurvlak, foto opzij, citaat met naam, lijst met nummers, groot
  getal, afsluiter op kleur, reelomslag met band of kop boven). Ze hebben een id met `basis-`,
  `bron: "basis"` en een `type`, en werken alleen met kleurrollen, zodat ze in elke huisstijl passen.
  De studio zet ze achter de eigen templates van de gebruiker (bij een gelijke id wint het eigen
  template). Ze staan niet in `huisstijl.json` en worden nooit in `huisstijl/eigen` bewaard; zet ze
  er dus ook niet in. Een slide die op een basistemplate staat, verwijst gewoon naar zijn id.

## 5. Een slide in een voorstel of design

```json
{
  "haakje": "Het haakje uit Notion",
  "soort": "carrousel",
  "notion": "<page-id>",
  "thema": "donker",
  "slides": [
    {"template": "cover", "teksten": {"kop": "...", "afzender": "@account"},
     "foto": {"driveId": "...", "naam": "merel-laptop-cafe-lachend-2026-11-14-01.jpg"},
     "aanpassingen": {"kop": {"x": 0.08, "y": 0.6, "b": 0.84, "h": 0.25, "grootte": 0.08, "font": "kop", "kleur": "accent"}}}
  ],
  "door": "Daan",
  "gemaaktOp": "2026-11-17T09:00:00Z"
}
```

`soort` is `carrousel` of `reelomslag`. `aanpassingen` is wat de gebruiker in de editor verschoof
of veranderde, per vak-id. Daan schrijft nooit `aanpassingen`.

### Velden die de Design Studio erbij zet (vanaf 17 november 2026, fase 1)

Een slide in een design kan deze velden ook hebben. Ze zijn allemaal optioneel: een slide (of een
voorstel van Daan) zonder deze velden werkt zoals hiervoor. Alle maten zijn weer een deel van de
slide: `x` en `b` van de breedte, `y` en `h` van de hoogte.

```json
{
  "id": "s4k2j9a",
  "template": "cover",
  "thema": "zwart",
  "textuur": {"id": "achtergrond-oranje-2", "sterkte": 0.6},
  "foto": {"driveId": "...", "naam": "..."},
  "fotoPositie": {"px": 0.5, "py": 0.3, "zoom": 1.4},
  "overlay": {"kleur": "donkergroen", "donkerte": 0.4},
  "aanpassingen": {"kop": {"x": 0.08, "y": 0.6, "hoek": -4, "voor": true}, "ondertitel": {"weg": true}},
  "elementen": [
    {"id": "e8f2k1q", "soort": "tekst", "tekst": "Zo simpel kan het zijn", "font": "accent", "grootte": 0.06, "kleur": "accent", "uitlijning": "midden", "hoofdletters": false, "x": 0.15, "y": 0.62, "b": 0.7, "h": 0.07, "hoek": -4},
    {"id": "e1m3p0z", "soort": "hoektekst", "tekst": "@vamerel.automatiseringsexpert", "plek": "rechtsonder", "font": "tekst", "grootte": 0.02, "kleur": "accent", "hoofdletters": true, "b": 0.5, "groep": "g7d1x2c"},
    {"id": "e5r8t2w", "soort": "logo", "logo": "logo-mrl-wit-transparant", "x": 0.44, "y": 0.9, "b": 0.12, "h": 0.05, "hoek": 0, "groep": "g2k9s1v"},
    {"id": "e0q4n7b", "soort": "vorm", "vorm": "rechthoek", "kleur": "wit", "dekking": 0.9, "x": 0.1, "y": 0.2, "b": 0.8, "h": 0.2, "hoek": 0, "achter": true},
    {"id": "e6c2v8m", "soort": "lijn", "kleur": "oranje", "dekking": 1, "x": 0.3, "y": 0.5, "b": 0.4, "h": 0.004, "hoek": 0},
    {"id": "e3z7k5d", "soort": "emoji", "tekst": "✨", "grootte": 0.12, "x": 0.43, "y": 0.45, "b": 0.14, "h": 0.11, "hoek": 0}
  ]
}
```

- **`thema`** (per slide): het kleurthema van deze slide. Ontbreekt het, dan geldt `thema` van het
  design.
- **`textuur`**: een achtergrond uit `achtergronden` van de huisstijl (`id`) met een `sterkte` van
  0 tot 1 (doorzichtigheid over de achtergrondkleur). `"id": null` betekent: geen textuur. Ontbreekt
  `textuur`, dan geldt de `achtergrondafbeelding` van het thema, zoals hiervoor.
- **`fotoPositie`**: `px` en `py` (0 tot 1) zeggen hoe de foto binnen het fotovak verschoven is;
  `zoom` (1 tot 3) hoe ver hij is ingezoomd. Oude designs zonder `zoom` gebruiken 1.
- **`overlay`**: een kleurvlak over het fotovak van de slide. `kleur` is een kleur-id, een rol of
  een hexcode; `donkerte` (0 tot 0,85) is hoe dekkend het vlak is. Zonder foto tekent de studio
  geen overlay.
- **`aanpassingen`** kent er drie velden bij: `hoek` (gedraaid, in graden), `weg: true` (het vak
  is weggehaald; "Terug naar het template" zet het terug) en `voor: true` (het tekstvak staat vóór
  de losse elementen in plaats van erachter). Een `logo`-vak kan ook `logo` (een ander logo-id)
  krijgen.
- **`elementen`**: losse dingen die de gebruiker toevoegde, van onder naar boven getekend. Elk
  element heeft `id`, `soort` en de plaats `x, y, b, h, hoek` (`x, y` is linksboven van het niet
  gedraaide element; draaien gaat om het midden).
  - `tekst`: `tekst, font (kop|tekst|accent), grootte, kleur, uitlijning, hoofdletters`.
  - `hoektekst`: dezelfde tekstvelden plus `plek`: `linksboven`, `bovenmidden`, `rechtsboven`,
    `linksonder`, `ondermidden` of `rechtsonder`. De plek bepaalt waar hij staat (5,5% van de
    breedte van de rand); `x` en `y` doen dan niet mee.
  - `logo`: `logo` (id uit `logos`); `b` en `h` volgen de verhouding van het logo.
  - `vorm`: `vorm` (`rechthoek` of `cirkel`), `kleur`, `dekking`.
  - `lijn`: `kleur`, `dekking`; `h` is de dikte.
  - `emoji`: `tekst` (de emoji) en `grootte`.
  - `achter: true`: het element staat achter de tekst van het template (maar boven de foto).
  - `groep`: elementen met dezelfde `groep` staan op meerdere slides ("op alle slides") en
    veranderen samen mee.
- **Volgorde van tekenen**: achtergrondkleur, textuur, foto en overlay, elementen met `achter`,
  vlakken van het template, logo van het template, tekstvakken, de andere elementen, tekstvakken
  met `voor`.
- De eigen hoekteksten van de gebruiker staan in de database onder `instellingen/hoekteksten`:
  `{"teksten": ["BEELD EN TECH", "..."], "bijgewerkt": "<iso-datum>"}`.
- Een voorstel van Daan heeft `elementen`, `overlay`, `textuur` en `aanpassingen` niet nodig; de
  studio voegt ze toe als de gebruiker iets verandert.

## 6. Google Drive

```
Content Studio/
├── Contentinbox/          de gebruiker zet hier zelf foto's in
│   ├── Origineel/         iPhone-foto's (HEIC) nadat de studio er een JPEG van maakte
│   ├── Niet bruikbaar/
│   └── Video's/           video's blijven hier tot de Reel Editor er is
├── Fotobibliotheek/
│   ├── Portret/
│   ├── Aan het werk/
│   ├── Werkplek/
│   ├── Onderweg/
│   ├── Met anderen/
│   └── Details/
├── Carrousels/
│   └── JJJJ-MM-DD - haakje/   01.jpg, 02.jpg ...
└── Reelomslagen/
    └── JJJJ-MM-DD - haakje.jpg
```

- **Datum:** de Publicatiedatum, of vandaag als die er nog niet is.
- **Haakje in een naam:** hoogstens 60 tekens, zonder emoji en zonder `/ \ : * ? " < > |`.
- **Fotonamen:** `wie-wat-waar-stemming-jjjj-mm-dd-nn.jpg`, kleine letters, koppeltekens, zoals
  `merel-laptop-cafe-lachend-2026-11-14-01.jpg`. De beschrijving (vrij voor tekst, staand of
  liggend, persoon links/midden/rechts) staat in het veld Beschrijving van het bestand in Drive.
- **Delen:** de map van een carrousel en een reelomslag deelt de studio met `anyoneWithLink`, rol
  `reader`. De link in Notion is de link naar de map (carrousel) of het bestand (reelomslag).
- **Links voor Instagram:** per slide `https://lh3.googleusercontent.com/d/<id>`, met als terugval
  `https://drive.google.com/uc?export=download&id=<id>`. Getest op 14 en 17 november 2026.
- **JPEG's:** kwaliteit 0,9, verlaagd tot het bestand onder 700 kB is (een aanroep vanuit een
  artifact mag hoogstens 1 MB meesturen). Carrousel 1080x1350, reelomslag 1080x1920.

## 7. Notion

- Statussen in de Content Calendar: Idee, Concept, Design, Video, Klaar, Gepland, Bezig, Fout, Live.
- De Design Studio toont posts op **Design** en **Video**. Soort bepaalt de maat: een optie die met
  `Carr` begint is een carrousel, `Reel` is een reelomslag. Klaar zet de status op **Klaar**.
- Het linkveld heet **Design** (huidige template). Bestaat dat veld niet, dan gebruikt alles het
  veld **Drive**, en bestaat dat ook niet het veld **Canva** (oudere
  kalenders). Lees altijd het live schema; maak nooit velden of opties aan.
- De ochtendronde van Puk zet een post van Klaar op **Gepland** als hij compleet is: een
  Publicatiedatum, een Drive-link, een caption en geen `[VUL AAN`.
- Lezen gebeurt met `notion-query-data-sources` in modus `view`, op een weergave zonder filters
  van de database. Modus `rows` en SQL vallen onder een limiet per werkruimte (Merel liep daar op
  17 november 2026 tegen aan); modus `view` niet. De weergaven staan in `instellingen/koppelingen`
  als `kalenderView`, `pillarsView` en `teamView` (met `kalenderDb`, `pillarsDb`, `teamDb`); de
  studio zoekt ze zelf op als ze ontbreken, en kiest een tabelweergave zonder actieve filters.
