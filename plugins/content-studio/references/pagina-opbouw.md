# Pagina-opbouw in de Content Calendar

De body van een kalenderpagina begint met **de caption, in één codeblok**. Daaronder staan
hooguit drie ingeklapte blokken, in deze volgorde, als gewone tekst en nooit in een codeblok.
Alles wat over de post zelf gaat, staat in de properties: Hook, Status, Fase, Pillar, Soort,
Kanaal.

```
[codeblok: de caption]
▸ Verhaal              (van Viggo, via Hanna)
▸ Slidetekst           (van Daan)
▸ Rapport van Koen     (van Cato, na de controle door Koen)
```

Geen andere kopjes, geen Claude Design-prompt, geen probleem of uitleg.

---

## Wie schrijft wat in de body

| Skill | Body |
|---|---|
| `cs-hookgenerator` | leeg; bij een verhaal van Viggo alleen het blok **Verhaal** |
| `cs-save` | leeg; bij een post van `@scrape` één regel Bron en de opgehaalde tekst als citaat, nooit in een codeblok |
| `cs-caption` | de caption in één codeblok bovenaan, het blok **Verhaal** laten staan, het blok **Rapport van Koen** eronder |
| `cs-design` | het blok **Slidetekst** |
| `cs-controle` | alleen na ja van de gebruiker: het blok **Rapport van Koen** vervangen of toevoegen |

**Leeg, tenzij de gebruiker het vraagt.** Zegt de gebruiker bij `cs-hookgenerator` of
`cs-save` specifiek "zet dit in de body", dan zet je precies dat erin en niets meer.

**De Claude Design-prompt** komt alleen in het gesprek. Die schrijf je nergens in Notion weg.

---

## De caption

De tekst onder de post. Haakje als eerste regel, dan het verhaal, dan de afsluiter. Maximaal
2100 tekens inclusief spaties. `cs-caption` zet hem in één codeblok, zonder kopje ervoor
en zonder label bovenaan, zodat hij met één klik te kopiëren is.

## De ingeklapte blokken

- **Verhaal:** het moment zoals de gebruiker het aan Viggo vertelde: waar, wanneer, wie, wat
  er gezegd werd, wat de gebruiker dacht. Hooguit 800 tekens. Cato gebruikt het als bron.
- **Slidetekst:** per slide één regel `Slide [n] · [layouttype]: [tekst]`, zoals de gebruiker
  de indeling opsloeg. Daan gebruikt het als hij het design opnieuw maakt.
- **Rapport van Koen:** het laatste rapport, één regel per check en de uitslag.

Een ingeklapt blok is een toggle in Notion: de titel is de naam van het blok, de inhoud staat
erin. Bestaat het blok al, vervang dan de inhoud; maak geen tweede.

---

## Hoe een skill de body leest en bijwerkt

- **cs-caption** bij een bestaande pagina: zet de caption in het codeblok bovenaan (vervang
  een oud codeblok of oude tekst), laat het blok Verhaal staan en vervang het blok Rapport van
  Koen. Staat er iets anders in, zeg dan in je aankondigingsregel dat dat vervangen wordt.
- **cs-publiceren**, **cs-publiceren-metricool**, **cs-canva-links** en de feedplanner lezen
  de caption: de tekst binnen het codeblok. Staan er meerdere codeblokken, dan het laatste. De
  ingeklapte blokken hebben geen codeblok en tellen dus niet mee. Oudere pagina's kunnen nog
  met `## Caption` beginnen: lees dan de tekst tussen `## Caption` en het volgende `##`-kopje.
  De eerste regel is het haakje; daarmee wordt een zelf geplaatste post aan zijn rij
  gekoppeld.
