# Content publiceren via Metricool (route A)

Route A van Claude Content Studio. De skill `content-publiceren-metricool` zet je geplande
carrousels en posts uit je Content Calendar in Notion in Metricool, op de minuut die je in
Notion kiest. Metricool plaatst ze zelf. Twee geplande taken in de cloud: 's ochtends
inplannen, 's avonds controleren wat live staat. Reels plaats je zelf.

| Skill | Aanroepen met | Doet |
|---|---|---|
| `content-publiceren-metricool` | `@publiceren-metricool` | als geplande taak elke ochtend de carrousels en posts van vandaag in Metricool zetten op de tijd uit Notion, 's avonds geplaatste posts op Live zetten met de link; mailt wat is ingepland en wat live staat. In een gesprek: "plan ze ook in Metricool" plant genoemde posts nu al in (modus vooruit), "pas aan in Metricool" werkt een ingeplande post bij. Modi: inplannen, avondcheck, proefrun, vooruit |

## Wat je nodig hebt

- De plugin `content-studio` uit dezelfde marketplace, en je Social Media Planner in Notion.
- Een Metricool-account met je zakelijke Instagram eraan gekoppeld. Het gratis plan plaatst
  20 berichten per maand.
- De koppelingen Notion, Gmail, Canva en Metricool. Composio is voor deze route niet nodig.
- In je Content Calendar: Status met Gepland, Bezig, Fout en Live, een datumveld
  Publicatiedatum (met tijd), een URL-veld Canva voor de Canva-link en een URL-veld URL voor
  de link naar de post. Een oudere kopie met de Canva-link in URL en de postlink in Instagram
  werkt ook.

## Instellen

Zie `docs/geplande-taken-metricool.md`: plak de prompt in een nieuw gesprek zonder map of
project. Claude controleert alles, draait een proefrun en maakt pas na je ja de taken aan.

Kies één route. Zonder Metricool installeer je de plugin `content-publiceren-composio` in
plaats van deze. Draaien ze allebei, dan staat elke post er twee keer.

## Structuur

```
content-publiceren-metricool/
├── .claude-plugin/plugin.json
├── skills/content-publiceren-metricool/SKILL.md
├── references/                         notion-schema.md en pagina-opbouw.md, gelijk aan content-studio
└── docs/geplande-taken-metricool.md    prompt om de taken in te stellen
```
