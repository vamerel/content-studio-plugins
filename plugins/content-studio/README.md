# Content Studio

Dertien Cowork-skills en één agent waarmee je je Instagram- en LinkedIn-content maakt met een
team, op basis van je Business DNA. Viggo, Sam en Ruby leveren aan, Hanna maakt haakjes, Cato
schrijft captions, Koen controleert, Daan maakt het design (via Claude Design of zelf in
Canva) en Puk koppelt de designs en publiceert op Instagram (route A met Metricool, route B
met Composio; de koper kiest één route). Het design system is een aparte
plugin, `content-designsystem` (skill `cs-designsystem`), omdat die in Claude Code draait en
Claude Code een eigen lijst heeft. De cijfers van je posts haalt Ruby, en de feedplanner, via
Composio uit Instagram; ze staan niet in Notion.

## Het team

| Wie | Skill | Aanroepen met | Doet |
|---|---|---|---|
| Viggo | `cs-verhalen` | `@viggo`, `@verhalen` | haalt uit je week de momenten die een post waard zijn, stelt hoogstens drie vragen per verhaal, kijkt of het al verteld is, geeft door aan Hanna |
| Sam | `cs-speuren` | `@sam`, `@speuren` | zoekt via Apify populaire posts in je niche, analyseert opening, opbouw, wat weggegeven wordt en het einde, geeft patronen door aan Hanna |
| Ruby | `cs-analyse` | `@ruby`, `@analyse` | cijfers van je eigen posts via Composio, per 1.000 weergaven, per pillar, fase (Persoonlijk apart) en soort; geeft door aan Hanna |
| Hanna | `cs-hookgenerator` | `@hanna`, `@haakjes` | vijf haakjes voor één probleem, één per fase; een verhaal van Viggo wordt één tot drie haakjes met Fase Persoonlijk; Koen controleert; na akkoord op Idee |
| Cato | `cs-caption` | `@cato`, `@caption` | de caption volgens HVVA, hoogstens drie vragen met voorstel, Koen controleert als laatste stap, na akkoord op Concept met het Rapport van Koen; geeft door aan Daan |
| Koen | `cs-controle` + agent `koen` | `@koen`, `@controle` | vijf checks (haakje, uniek, feiten, klank, klantreis), keurt feiten nooit af; controleert ook designs en stelt aanvullingen voor het design system voor |
| Daan | `cs-design` | `@daan`, `@design` | slide-indeling in het zijscherm, layout en foto's met afwisseling op basis van de feed, de prompt voor Claude Design of het design zelf in Canva; ook voor meerdere posts |
| Puk | `cs-canva-links` | `@puk`, `@canva-links` | koppelt designs uit Canva aan posts op naam en zet ze op Gepland; in de ochtendronde alleen bij een exacte naam |
| Puk | `cs-publiceren-metricool` | `@publiceren-metricool` | route A: elke ochtend alles op Gepland in Metricool, Metricool gelijk houden aan Notion, gisteren geplaatst op Live |
| Puk | `cs-publiceren` | `@publiceren` | route B: op je postmomenten de post van dat moment via Composio op Instagram, meteen op Live |
| | `cs-setup` | `@setup` | omgeving controleren, mappen maken (ook in Canva), designroute kiezen, Content Pillars vullen, projectinstructies |
| | `cs-save` | `@save` | een idee of opgehaalde post bewaren als Idee |
| | `cs-scrape` | `@scrape` | een post van Instagram, LinkedIn of YouTube ophalen via Apify |

De oude skillnamen (content-caption, hookgenerator, content-publiceren en de andere) staan als
trigger in de beschrijvingen, zodat bestaande geplande taken de skills blijven vinden.

## Hoe het samenhangt

- **Notion is de bron van waarheid voor content:** haakjes, captions, status, fase,
  publicatiedatum, de Canva-link (veld Canva) en de link naar de post op Instagram (veld URL)
  staan in de Content Calendar. Een oudere kopie van de template met de Canva-link in URL en
  de postlink in Instagram werkt ook. Cijfers staan niet in Notion.
- **De status zegt wie aan de beurt is:** Idee (Hanna klaar, Cato aan de beurt), Concept (Cato
  en Koen klaar, Daan aan de beurt), Gepland (Puk koppelde het design), Bezig en Live (Puk),
  daarna leest Ruby de cijfers terug.
- **De pagina van een post** begint met de caption in één codeblok. Daaronder alleen
  ingeklapte blokken: Verhaal, Slidetekst en Rapport van Koen. Publiceren en de feedplanner
  lezen de caption uit het codeblok.
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
  mappen in Canva.
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
    └── README.md

Canva/
└── Content Studio/                cs-setup, na ja
    ├── Bibliotheek/               de pagina's waar Daan uit bouwt (designroute Canva)
    ├── Carrousels/
    └── Reelomslagen/
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
├── skills/<skill>/SKILL.md        dertien skills
├── references/                    gedeeld door de skills
│   ├── notion-schema.md           de twee databases, naamvarianten, Fase Persoonlijk
│   ├── pagina-opbouw.md           de body van een kalenderpagina
│   ├── koen-aanroepen.md          hoe een skill Koen laat meekijken
│   ├── slide-indeling.html        het zijscherm voor de slide-indeling van een carrousel
│   ├── memory-regels.md           MEMORY.md: secties, grens van tien regels, wel en niet
│   ├── schrijfkwaliteit.md        zwarte lijst, test tegen generiek, stemcheck, stemcorrecties
│   └── omgevingscheck.md          de startcontrole en de meldingen per skill
└── docs/                          plakblokken voor de koper
    ├── installatie.md
    ├── projectinstructies-content-studio.md
    ├── readme-content-studio.md
    ├── geplande-taken-metricool.md  prompt voor de ochtendronde van Puk, route A (Metricool)
    ├── geplande-taken.md          prompt voor de taken van route B (Composio)
    ├── prompt-haakjesmail.md      prompt voor de taak Elke week haakjes in je inbox
    └── prompt-contentmedewerker.md  prompt voor de zondagtaak, met de standen Ik denk mee en Doe maar
```

Let op bij publiceren: `publiceer-marketplace.ps1` neemt de map `agents/` mee.

## Installeren

Zie `docs/installatie.md`. De plugin hoort bij de plugin `businessdna`; die installeer je apart en
draai je eerst.
