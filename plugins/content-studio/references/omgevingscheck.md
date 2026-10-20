# Omgevingscheck

Elke skill behalve `content-studio-setup`, `content-publiceren` en `content-publiceren-metricool` begint hiermee, vóór hij iets anders doet.
`content-publiceren` en `content-publiceren-metricool` draaien als geplande taak zonder lokale bestanden en heeft een eigen
check, die bij een fout mailt in plaats van een melding in het gesprek te geven. Eén
controle, één melding als er iets mist, en dan stoppen. Nooit doorwerken met een halve
omgeving, want dan loopt het gesprek halverwege vast op een fout die de gebruiker niet
begrijpt.

De meldingen zijn Nederlands, noemen precies wat er mist, en geven één vervolgstap in gewone
woorden: wat de gebruiker waar moet aanklikken of aanroepen. Noem geen lesnamen. Geen
algemene "er ging iets mis".

---

## Stap 1: is Notion gekoppeld?

Probeer een zoekopdracht in Notion. Foutmelding of geen Notion-connector:

> "Ik heb geen verbinding met Notion, en daar staan je Content Calendar en je Content
> Pillars in. Koppel eerst de Notion-connector: Instellingen, Connectors, Notion. Roep me
> daarna opnieuw aan."

Stop.

## Stap 2: zijn Content Calendar en Content Pillars er?

Zoek beide databases op naam, met de varianten uit `notion-schema.md`. Eén van beide niet
gevonden:

> "Ik vind je [Content Calendar / Content Pillars] niet in Notion. Draai eerst
> `@content-studio-setup`. Die controleert je Social Media Planner en zet
> de rest klaar."

Stop.

## Stap 3: is de map Content Studio er, met MEMORY.md?

Kijk in de mappen die aan dit project gekoppeld zijn naar een map **Content Studio** met
daarin `MEMORY.md`. Niet gevonden:

> "Ik vind de map Content Studio niet, of MEMORY.md ontbreekt erin. Draai
> `@content-studio-setup`. Die maakt de map aan. Is de map er wel, maar
> zie ik hem niet? Controleer dan of hij aan dit project gekoppeld is."

Stop.

## Stap 4: wat deze skill zelf nodig heeft

| Skill | Controleert extra | Melding bij ontbreken |
|---|---|---|
| hookgenerator | map Business DNA (met `SAMENVATTING.md` of `Origineel/`) | "Ik vind je Business DNA-map niet. Deze skill leunt daar volledig op. Doorloop eerst de Business DNA-omgeving (`@businessdna-setup` en de vijf DNA-skills) en koppel de map Business DNA aan dit project." |
| hookgenerator | map `Content Studio/Goedgekeurde haakjes` | "De map Goedgekeurde haakjes ontbreekt in Content Studio. Draai `@content-studio-setup` opnieuw; die vult aan wat mist." |
| content-caption | map `Content Studio/Goedgekeurde captions` | "De map Goedgekeurde captions ontbreekt in Content Studio. Draai `@content-studio-setup` opnieuw; die vult aan wat mist." |
| content-caption | `Content Studio/Design System/design-system.md`, **pas bij stap 7** | zie de skill zelf; stap 1 tot 6 werken zonder |
| content-save | niets extra | |

Faalt een controle, dan stop je. Geen enkele skill behalve de twee setup-skills maakt een map
aan.

## Alles in orde

Meld dat niet apart. Ga gewoon door met Fase 0 van de skill. De gebruiker wil aan het werk,
niet een lijstje groene vinkjes lezen.
