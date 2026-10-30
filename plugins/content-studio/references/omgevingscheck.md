# Omgevingscheck

Elke skill behalve `cs-setup`, `cs-publiceren` en `cs-publiceren-metricool`
begint hiermee, vóór hij iets anders doet. De twee publiceerskills draaien als geplande taak
zonder lokale bestanden en hebben een eigen check, die bij een fout mailt in plaats van een
melding in het gesprek te geven. `cs-scrape` doet alleen de
Apify-controle uit stap 4. Eén
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
> Pillars in. Ga in de Claude-app naar Aanpassingen (Customize) > Connectors en verbind
> Notion. Roep me daarna opnieuw aan."

Stop.

## Stap 2: zijn Content Calendar en Content Pillars er?

Zoek beide databases op naam, met de varianten uit `notion-schema.md`. Eén van beide niet
gevonden:

> "Ik vind je [Content Calendar / Content Pillars] niet in Notion. Draai eerst
> `@setup`. Die controleert je Social Media Planner en zet
> de rest klaar."

Stop.

## Stap 3: is de map Content Studio er, met MEMORY.md?

Kijk in de mappen die aan dit project gekoppeld zijn naar een map **Content Studio** met
daarin `MEMORY.md`. Niet gevonden:

> "Ik vind de map Content Studio niet, of MEMORY.md ontbreekt erin. Draai
> `@setup`. Die maakt de map aan. Is de map er wel, maar
> zie ik hem niet? Controleer dan of hij aan dit project gekoppeld is."

Stop.

## Stap 4: wat deze skill zelf nodig heeft

| Skill | Controleert extra | Melding bij ontbreken |
|---|---|---|
| cs-hookgenerator | map Business DNA (met `SAMENVATTING.md` of `Origineel/`) | "Ik vind je Business DNA-map niet. Deze skill leunt daar volledig op. Doorloop eerst de Business DNA-omgeving (`@businessdna-setup` en de vijf DNA-skills) en koppel de map Business DNA aan dit project." |
| cs-hookgenerator | map `Content Studio/Goedgekeurde haakjes` | "De map Goedgekeurde haakjes ontbreekt in Content Studio. Draai `@setup` opnieuw; die vult aan wat mist." |
| cs-caption | map `Content Studio/Goedgekeurde captions` | "De map Goedgekeurde captions ontbreekt in Content Studio. Draai `@setup` opnieuw; die vult aan wat mist." |
| cs-save | niets extra | |
| cs-verhalen | niets extra | |
| cs-controle | voor de designcheck: Canva-connector en `design-system.md` | zie de skill zelf |
| cs-speuren | Apify-connector | zie de skill zelf |
| cs-analyse | Composio met Instagram; de map Content Studio is niet nodig | zie de skill zelf |
| cs-canva-links | Canva-connector; de map Content Studio is niet nodig | zie de skill zelf |
| cs-design | `design-system.md`; bij designroute Canva ook de Canva-connector en de bibliotheek | zie de skill zelf |
| cs-scrape | Apify-connector | "Ik heb geen verbinding met Apify, en die heb ik nodig om de post op te halen. Ga in de Claude-app naar Aanpassingen (Customize) > Connectors, zoek Apify en klik op Verbinden. Roep me daarna opnieuw aan." |

Faalt een controle, dan stop je. Geen enkele skill behalve de twee setup-skills maakt een map
aan.

## Alles in orde

Meld dat niet apart. Ga gewoon door met Fase 0 van de skill. De gebruiker wil aan het werk,
niet een lijstje groene vinkjes lezen.
