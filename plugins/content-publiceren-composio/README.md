# Content publiceren via Composio (route B)

Route B van Claude Content Studio. De skill `content-publiceren` zet je geplande carrousels en
posts uit je Content Calendar in Notion automatisch live op Instagram, op vaste postmomenten
die je zelf kiest. Hij draait als geplande taken in de cloud, dus ook als je laptop dicht is.
Reels plaats je zelf.

| Skill | Aanroepen met | Doet |
|---|---|---|
| `content-publiceren` | `@publiceren` | op je postmomenten de carrousel of post van vandaag op Instagram zetten (Notion, Canva, Composio), daarna Live met de link en een mail; 's avonds een mail met de posts van morgen. Modi: publiceren, avondcheck, proefrun |

## Wat je nodig hebt

- De plugin `content-studio` uit dezelfde marketplace, en je Social Media Planner in Notion.
- De koppelingen Notion, Gmail, Canva en Composio (met je zakelijke Instagram-account).
- In je Content Calendar: Status met Gepland, Bezig, Fout en Live, een datumveld
  Publicatiedatum, een URL-veld Canva voor de Canva-link en een URL-veld URL voor de link naar
  de post. Een oudere kopie met de Canva-link in URL en de postlink in Instagram werkt ook.

## Instellen

Zie `docs/geplande-taken.md`: plak de prompt in een nieuw gesprek zonder map of project.
Claude controleert alles, draait een proefrun en maakt pas na je ja de taken aan.

Kies één route. Gebruik je Metricool, installeer dan de plugin `content-publiceren-metricool`
in plaats van deze. Draaien ze allebei, dan staat elke post er twee keer.

## Structuur

```
content-publiceren-composio/
├── .claude-plugin/plugin.json
├── skills/content-publiceren/SKILL.md
├── references/                 notion-schema.md en pagina-opbouw.md, gelijk aan content-studio
└── docs/geplande-taken.md      prompt om de taken in te stellen
```
