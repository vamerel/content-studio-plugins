---
name: cs-save
description: >
  Slaat een idee, haakje of stuk tekst uit het gesprek op als Idee in je Content Calendar in
  Notion, ook een post die je met @scrape hebt opgehaald. Eén bestemming, één status. Vult
  Hook en Pillar in, laat Soort, Kanaal en de body leeg tenzij je die noemt (bij een opgehaalde
  post staat de bron in de body), en toont de rij vóór het wegschrijven. Haalt zelf geen links
  op: dat doet @scrape. TRIGGERS op @save, @cs-save, de oude naam @content-save, "sla dit op", "bewaar dit idee",
  "bewaar dit", "zet dit in mijn contentkalender", "zet dit in Notion", of elke variant van
  iets uit het gesprek willen bewaren als contentidee binnen Claude Content Studio.
---

# Save - Claude Content Studio

Iets uit het gesprek bewaren als Idee in de Content Calendar. Meer doet deze skill niet.
Geen routering naar andere databases, geen classificatie, geen uitwerking.

**Een link ophalen doet deze skill niet.** Plakt de gebruiker een link van Instagram, LinkedIn
of YouTube en is die post nog niet opgehaald, roep dan eerst `cs-scrape` (`@scrape`) aan.
Die haalt de post op en geeft hem daarna aan deze skill om te bewaren.

---

## Omgevingscheck

Doe dit vóór alles, volgens `references/omgevingscheck.md`:

1. Notion gekoppeld? Anders: melding: koppel Notion in de Claude-app via Aanpassingen
   (Customize) > Connectors, stop.
2. Content Calendar en Content Pillars gevonden? Anders: `@setup`
   aanroepen, stop.
3. Map Content Studio met `MEMORY.md`? Anders: `@setup`, stop.

Niets extra. Is alles er, meld dat dan niet.

---

## Stap 1 - Wat wordt er bewaard?

Bepaal uit het gesprek wat het item is:

- **Een haakje of invalshoek:** één zin die de post opent. Dat wordt de Hook.
- **Een idee zonder haakje:** een onderwerp of gedachte. Maak er één korte, concrete titel
  van (maximaal twaalf woorden) als Hook. Verzin geen haakje in de stijl van `cs-hookgenerator`;
  een werktitel is genoeg. Wil de gebruiker een echt haakje, verwijs dan naar `@haakjes`.
- **Een stuk tekst** (een alinea, een uitgewerkte gedachte): de eerste regel of een korte
  titel wordt de Hook. De tekst zelf gaat alleen in de body als de gebruiker specifiek zegt:
  zet dit in de body.

- **Een opgehaalde post** (van `@scrape`): een korte, concrete werktitel over waar de post
  over gaat wordt de Hook (maximaal twaalf woorden, in de woorden van de gebruiker als ze die
  gaf). Neem niet de eerste zin van iemand anders over als haakje. In de body komt de bron,
  zie stap 4.

Is niet duidelijk wat bewaard moet worden (bijvoorbeeld "sla dit op" na een lang gesprek),
vraag dan in één zin welk deel: "Bedoel je het haakje over [x], of het hele idee over [y]?"

---

## Stap 2 - Pillar, Fase, Soort en Kanaal

**Pillar vul je in.** Haal de namen en de body van de pillarpagina's op uit Content Pillars
(Wat past hier wel in, Wat past hier niet in) en leid de pillar af uit het idee en het
gesprek. Twijfel je tussen twee, kies de meest waarschijnlijke en noem de andere in stap 3.
Past er geen, laat het veld leeg en meld het.

**Fase** vul je alleen in als de gebruiker die noemt of als het onmiskenbaar is (een haakje
uit een `cs-hookgenerator`-sessie heeft er een). Anders leeg laten, niet vragen. Een
persoonlijk verhaal of moment uit het eigen leven van de gebruiker krijgt Fase `Persoonlijk`,
als die optie in het live schema staat; dat is een ander veld dan de Pillar Persoonlijk.

**Soort en Kanaal** blijven leeg, tenzij de gebruiker specifiek noemt wat erin moet. Vraag er
niet naar.

---

## Stap 3 - Toon de rij

Vóór je schrijft, laat je zien wat er komt te staan:

```
Content Calendar, nieuwe rij
Hook:    [de hook]
Status:  Idee
Pillar:  [de afgeleide pillar, of leeg]
Fase:    [alleen als bekend, anders weglaten]
Soort:   [alleen als genoemd, anders leeg]
Kanaal:  [alleen als genoemd, anders leeg]
Body:    leeg [of, als de gebruiker erom vroeg: de eerste regel van wat erin komt]
         [bij een opgehaalde post: Bron: [platform] · [van wie] · [link]]
```

Vraag: "Zal ik dit zo opslaan?" Wacht op ja. Bij een aanpassing: toon de rij opnieuw.

---

## Stap 4 - Wegschrijven

1. Zoek de Content Calendar op naam volgens `references/notion-schema.md`. Nooit een ID
   hardcoderen.
2. Haal het live schema op en map de opties op wat er staat. Bestaat `Idee` niet, gebruik dan
   de eerste optie in de to-do-groep en meld dat. Bestaat een Soort- of Kanaal-optie niet
   met die naam (bijvoorbeeld "Carroussel" in plaats van "Carrousel"), gebruik dan de optie
   die er wel staat en meld het niet apart; nooit een nieuwe optie aanmaken.
3. Maak de pagina aan.
4. **Body: leeg.** Zegt de gebruiker specifiek "zet dit in de body", dan zet je precies dat
   erin, letterlijk en zonder kopje, en niets meer. Verzin geen samenvatting.
   **Bij een opgehaalde post** zet je in de body één regel `Bron: [platform] · [van wie] ·
   [link]` en daaronder de opgehaalde tekst als citaat, ingekort tot hooguit 600 tekens. Geen
   codeblok: een codeblok is op deze pagina's alleen voor je eigen caption.

5. Deel de directe link uit de API-response. Construeer of gok geen URL's. Geeft de API geen
   url terug, gebruik dan het page-id: `https://www.notion.so/{id-zonder-streepjes}`.

Eén bevestigingsregel met de link. Klaar.

---

## Meerdere items tegelijk

Vraagt de gebruiker om meerdere ideeën uit het gesprek te bewaren, toon dan één tabel met
alle rijen, vraag één keer akkoord, en maak ze daarna in één keer aan. Per rij een link
terug.

---

## Vermijd

- Routeren naar een andere database dan de Content Calendar.
- Een andere status dan Idee, tenzij de gebruiker expliciet om Concept vraagt omdat de tekst
  al af is. Dan Concept, en de body volgens `references/pagina-opbouw.md`.
- Soort, Kanaal of de body invullen zonder dat de gebruiker daar specifiek om vraagt.
- Een haakje herschrijven of verbeteren. Bewaren is bewaren.
- Zelf een link ophalen via Apify of een andere tool. Dat doet `@scrape`.
- Wegschrijven zonder dat de rij is getoond en goedgekeurd.
- Een map aanmaken of in MEMORY.md schrijven. Deze skill leert niet.
- Bestanden uit `references/` bij naam noemen in je antwoorden.

## Referentiebestanden

In `references/` van deze plugin, twee niveaus boven deze skill: `omgevingscheck.md`,
`notion-schema.md`, `pagina-opbouw.md`.
