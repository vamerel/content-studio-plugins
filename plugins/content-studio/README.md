# Content Studio

Zeven Cowork-skills waarmee je je Instagram- en LinkedIn-content systematiseert op basis van je
Business DNA. Het design system is een aparte skill, `content-designsystem`, omdat die
in Claude Code draait en Claude Code een eigen lijst heeft. Haakjes en captions in Notion, visuals via Claude Design, automatisch publiceren op
Instagram. De cijfers van je posts staan in de feedplanner en in de Content Calendar.

## Wat zit erin

| Skill | Aanroepen met | Doet |
|---|---|---|
| `content-studio-setup` | `@content-studio-setup` | controleert Notion en de Social Media Planner, maakt de map Content Studio, vult de Content Pillars uit Business DNA, levert de projectinstructies |
| `hookgenerator` | `@haakjes` | vijf haakjes voor één probleem, één per fase van de klantreis, opslaan als Idee |
| `content-caption` | `@caption` | caption en slidetekst, toetsen aan de pillars, opslaan als Concept, plakblok voor Claude Design |
| `content-scrape` | `@scrape` | een post van Instagram, LinkedIn of YouTube ophalen via Apify; daarna bewaren met `@save` |
| `content-save` | `@save` | een idee uit het gesprek of een opgehaalde post bewaren als Idee |
| `content-publiceren-metricool` | `@publiceren-metricool` | route A, met Metricool: als geplande taak elke ochtend de carrousels en posts van vandaag in Metricool zetten op de tijd uit Notion (Notion, Canva, Metricool), 's avonds geplaatste posts op Live zetten met de Instagram-link; mailt wat is ingepland en wat live staat; reels plaats je zelf |
| `content-publiceren` | `@publiceren` | route B, met Composio: als geplande taak op je eigen postmomenten de carrousel of post van vandaag op Instagram zetten (Notion, Canva, Composio) en mailen met de link, 's avonds een mail met de posts van morgen; reels plaats je zelf |

## Hoe het samenhangt

- **Notion is de bron van waarheid voor content:** haakjes, captions, status, publicatiedatum,
  de Instagram-link en de cijfers (Views, Likes, Comments, Opgeslagen, Gedeeld) staan in de
  Content Calendar. De uitleg per pillar staat in de body van de pillarpagina's in Content
  Pillars.
- **De pagina van een post** bevat alleen de caption, in één codeblok. Publiceren en de
  feedplanner lezen hem daar.
- **`Content Studio/Design System/design-system.md` is de bron van waarheid voor het design
  system:** tekenlimieten, slides per format, cover en CTA. `content-caption` leest het daar.
- **MEMORY.md in de map Content Studio** heeft één sectie per skill. Elke skill leest en
  schrijft alleen zijn eigen sectie, na akkoord.
- **Alleen de twee setup-skills maken mappen aan.** `businessdna-setup` maakt Business DNA en
  Business Copybank; `content-studio-setup` maakt Business Brand Guidelines en Content Studio.
- **Elke skill controleert bij de start** of de omgeving er is, en zegt anders precies wat
  ontbreekt en wat je moet doen. Skills noemen geen lesnamen, zodat de leeromgeving kan
  veranderen zonder de plugin te herbouwen. Het menu voor connectors heet overal
  Aanpassingen (Customize) > Connectors.

## Mappen bij de gebruiker

```
CLAUDE/
├── Business DNA/                  businessdna-setup · alleen-lezen
├── Business Copybank/             businessdna-setup · tekst · alleen-lezen
├── Business Brand Guidelines/     content-studio-setup · beeld · alleen-lezen
└── Content Studio/                content-studio-setup · output
    ├── Design System/
    ├── Goedgekeurde haakjes/
    ├── Goedgekeurde captions/
    ├── MEMORY.md
    └── README.md
```

De twee setup-skills draaien in een gewoon gesprek met de map **CLAUDE** gekoppeld. Het
project Content Studio koppelt ook de map **CLAUDE**; daarin mag het alleen schrijven in
Content Studio. Business DNA, Business Copybank en Business Brand Guidelines zijn er
alleen-lezen.

## Structuur van deze plugin

```
content-studio/
├── .claude-plugin/plugin.json
├── skills/<skill>/SKILL.md        zeven skills
├── references/                    gedeeld door de skills
│   ├── notion-schema.md           de twee databases, naamvarianten, pillar-kopjes
│   ├── pagina-opbouw.md           de body van een kalenderpagina: alleen de caption
│   ├── memory-regels.md           MEMORY.md: secties, grens van tien regels, wel en niet
│   ├── schrijfkwaliteit.md        zwarte lijst, test tegen generiek, stemcheck, stemcorrecties
│   └── omgevingscheck.md          de startcontrole en de meldingen per skill
└── docs/                          plakblokken voor de koper
    ├── installatie.md
    ├── projectinstructies-content-studio.md
    ├── readme-content-studio.md
    ├── geplande-taken-metricool.md  prompt om de taken van route A in te stellen (Metricool)
    ├── geplande-taken.md          prompt om de taken van route B in te stellen (Composio)
    └── prompt-haakjesmail.md      prompt voor de taak Elke week haakjes in je inbox
```

## Installeren

Zie `docs/installatie.md`. De plugin hoort bij de plugin `businessdna`; die installeer je apart en
draai je eerst.
