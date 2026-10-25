# Plugin content-studio installeren

Je installeert de plugins niet meer uit een bestand, maar uit een marketplace van VA-Merel.
Een marketplace is een vaste plek waar de plugins staan. Voeg je hem één keer toe en zet je
automatisch synchroniseren aan, dan krijg je elke nieuwe versie vanzelf.

Er zijn twee marketplaces. De plek waar je de plugins installeert doet ertoe, want de
Claude-app heeft voor Chat & Cowork en voor Claude Code elk een eigen lijst:

| Plugin | Marketplace | Installeren in |
|---|---|---|
| `businessdna` | `vamerel/businessdna` | **Chat & Cowork** (heb je waarschijnlijk al) |
| `content-studio` | `vamerel/content-studio-plugins` | **Chat & Cowork** |
| `content-designsystem` | `vamerel/content-studio-plugins` | **alleen Claude Code**, zie de aparte installatie-instructie |
| `content-publiceren-metricool` | `vamerel/content-studio-plugins` | **Chat & Cowork**, alleen als je inplant via Metricool (route A) |
| `content-publiceren-composio` | `vamerel/content-studio-plugins` | **Chat & Cowork**, alleen als je inplant via Composio (route B) |

Van de twee publiceerplugins installeer je er één: die van de route die je kiest. Dat doe je
pas als je gaat inplannen. Installeer je ze allebei, dan staat elke post er twee keer.

## Had je de plugin al uit een bestand geïnstalleerd?

Verwijder dan eerst de oude. Anders heb je straks twee keer dezelfde skills.

1. Ga in de Claude-app naar Aanpassen (Customize) en dan Plugins.
2. Verwijder **content-studio**, en ook **businessdna** als je die uit een bestand had.
3. Ga verder met de stappen hieronder. Je mappen op het bureaublad en je Notion-databases
   blijven staan; de plugin raakt die niet aan.

## Eerste keer installeren

1. Open de Claude-app op je computer en ga naar **Chat & Cowork**.
2. Ga naar Aanpassen (Customize) en dan Plugins. De precieze namen kunnen per versie van de
   app iets verschillen.
3. Kies **Toevoegen** (Add) en dan de optie om een marketplace toe te voegen vanaf GitHub.
4. Vul in: `vamerel/content-studio-plugins` en bevestig.
5. Zet bij deze marketplace **automatisch synchroniseren** (Sync automatically) aan.
6. Installeer uit de marketplace **content-studio**.
7. Staat **businessdna** nog niet in je lijst? Voeg dan ook de marketplace
   `vamerel/businessdna` toe, op dezelfde manier, en installeer daaruit **businessdna**.
8. Start een nieuw gesprek en typ `@content-studio-setup`. Reageert de skill, dan is de
   installatie gelukt.

Content Studio bouwt voort op de plugin `businessdna`. De twee plugins werken naast elkaar;
Content Studio leest wat Business DNA maakt.

Plugins die je in Chat & Cowork installeert, verschijnen vanzelf ook in Claude Code. Daar
hoef je niets voor te doen.

## De skills die je krijgt

| Aanroepen met | Wat hij doet |
|---|---|
| `@content-studio-setup` | omgeving controleren, map Content Studio maken, pillars vullen, projectinstructies leveren |
| `@haakjes` | vijf haakjes voor één probleem, één per fase, opslaan als Idee |
| `@caption` | caption en slidetekst, opslaan als Concept, plakblok voor Claude Design |
| "maak de prompts voor Claude Design" | de prompts voor meerdere posts tegelijk, uit captions die al in Notion staan |
| `@save` | een idee uit het gesprek bewaren als Idee |
| `@scrape` | een post van Instagram, LinkedIn of YouTube ophalen via Apify |

Uit de publiceerplugin van je route:

| Plugin | Aanroepen met | Wat hij doet |
|---|---|---|
| `content-publiceren-metricool` (route A) | `@publiceren-metricool` | je geplande posts in Metricool inplannen op de tijd uit Notion, en 's avonds op Live zetten; "plan ze ook in Metricool" plant posts van later in de week meteen in |
| `content-publiceren-composio` (route B) | `@publiceren` | je geplande posts op vaste momenten via Composio op Instagram zetten, met een avondmail |

## Nieuwe versies

Staat automatisch synchroniseren aan, dan hoef je niets te doen: een nieuwe versie komt
vanzelf binnen. Start daarna een nieuw gesprek, want lopende gesprekken gebruiken soms nog de
oude versie.

Staat het uit, of wil je een update meteen hebben: ga naar Aanpassen (Customize), Plugins,
kies de marketplace van VA-Merel (per marketplace) en klik op **Controleren op updates** (Check for updates).

Je mappen op het bureaublad en je Notion-databases blijven bij een update staan.

## Als een skill niet reageert

- Typ de @-naam precies zoals in de tabel. Claude kiest de skill op basis van je vraag; met
  de @-naam is er geen twijfel.
- Kijk of de plugin nog in de lijst staat. Na een update van de app kan een plugin
  uitgeschakeld zijn.
- Zegt de skill dat er iets ontbreekt (Notion niet gekoppeld, map niet gevonden), dan zegt
  hij ook wat je moet doen. Doe dat eerst en roep de skill daarna opnieuw aan.
