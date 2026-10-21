# Pagina-opbouw in de Content Calendar

De body van een kalenderpagina bevat **alleen de caption**. Geen kopjes, geen slidetekst, geen
Claude Design-prompt, geen probleem of uitleg. Alles wat over de post zelf gaat, staat in de
properties: Hook, Status, Fase, Pillar, Soort, Kanaal.

---

## Wie schrijft wat in de body

| Skill | Body |
|---|---|
| `hookgenerator` | leeg |
| `content-save` | leeg; bij een post van `@scrape` één regel Bron en de opgehaalde tekst als citaat, nooit in een codeblok |
| `content-caption` | de caption, letterlijk, in één codeblok |

**Leeg, tenzij de gebruiker het vraagt.** Zegt de gebruiker bij `hookgenerator` of
`content-save` specifiek "zet dit in de body", dan zet je precies dat erin en niets meer.

**Slidetekst en het Claude Design-blok** komen alleen in het gesprek en, bij een carrousel, in
het zijscherm met de slide-indeling. Die schrijf je nergens in Notion weg.

---

## De caption

De tekst onder de post. Haakje als eerste regel, dan het verhaal, dan de afsluiter. Maximaal
2100 tekens inclusief spaties. `content-caption` zet hem in één codeblok, zonder kopje ervoor
en zonder label bovenaan, zodat hij met één klik te kopiëren is.

---

## Hoe een skill de body leest en bijwerkt

- **content-caption** bij een bestaande pagina: vervang de **hele body** door de caption.
  Staat er al iets anders in, zeg dan in je aankondigingsregel dat dat vervangen wordt.
- **content-publiceren** en de feedplanner lezen de caption: de tekst binnen het codeblok.
  Staan er meerdere codeblokken, dan het laatste. Oudere pagina's kunnen nog met
  `## Caption` beginnen: lees dan de tekst tussen `## Caption` en het volgende `##`-kopje.
  De eerste regel is het haakje; daarmee wordt een zelf geplaatste post aan zijn rij
  gekoppeld.
