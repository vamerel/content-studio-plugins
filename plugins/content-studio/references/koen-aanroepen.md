# Koen aanroepen

Hoe een skill Koen, de controleur, laat meekijken. Gedeeld door `cs-controle`,
`cs-hookgenerator` en `cs-caption`. Koen controleert altijd met frisse ogen: hij krijgt het
resultaat, niet de redenering van de schrijver.

De instructies van Koen staan op één plek: `agents/koen.md` in de root van deze plugin. Pas ze
nergens anders aan.

---

## 1. Verzamel wat Koen nodig heeft

Koen kan alleen bestanden lezen. Notion kan hij niet openen. Geef daarom mee, als tekst:

- **Modus:** `haakjes` of `caption`.
- **Tekst:** de haakjes, genummerd, of de caption letterlijk.
- **Haakje** (bij een caption): de Hook van de pagina.
- **Fase** per haakje of van de post. Bij een persoonlijk verhaal: `Persoonlijk`.
- **Pillar** met de tekst van de pillarpagina: Wat past hier wel in, Wat past hier niet in.
- **Bestaande haakjes:** de Hooks uit de Content Calendar, zonder de Hook van de post zelf.
  Die heb je in Fase 0 al opgehaald.
- **Stem:** de tekst van Tone of Voice - Social content.
- **Stijlvoorbeelden:** de tekst van Tone of Voice - Social content - voorbeelden.
- **Feitenbronnen:** wat je las in Business DNA, Business Copybank (de map op de computer of
  de pagina in Notion), de stijlvoorbeelden en eerdere posts over het bedrijf, klanten,
  resultaten en cijfers; wat de gebruiker in dit gesprek vertelde; het blok Verhaal als dat er
  is. Kort, als opsomming.
- **Regels:** de regels uit MEMORY.md, secties Hookgenerator en Caption.

En als pad, als ze er zijn (alleen in een gesprek met de map Content Studio):
`Content Studio/Goedgekeurde haakjes`, `Content Studio/Goedgekeurde captions` en
`references/schrijfkwaliteit.md` van deze plugin.

## 2. Roep Koen aan, in deze volgorde

1. **De agent `koen`** uit deze plugin (in Cowork en Claude Code heet hij
   `content-studio:koen`). Geef de lijst uit stap 1 als opdracht.
2. **Laadt de agent niet**, of is hij niet te vinden: lees `agents/koen.md` en geef die tekst
   plus de lijst uit stap 1 aan een algemene subagent. Zeg erbij dat hij alleen mag lezen.
3. **Kun je geen subagent starten** (bijvoorbeeld in een geplande taak zonder die
   mogelijkheid): voer de checks uit `agents/koen.md` zelf uit, als aparte stap. Lees daarvoor
   alleen de tekst en de bronnen, niet je eigen redenering van daarvoor, en schrijf het rapport
   precies in de vorm van Koen.

Noem in het gesprek niet welke van de drie het werd, tenzij de gebruiker ernaar vraagt.

## 3. Wat je met het rapport doet

- **Uitslag GOED:** ga door. Toon het rapport kort bij het resultaat.
- **Uitslag AANPASSEN:**
  - haakje afgekeurd: terug naar Hanna. Maak één nieuw haakje volgens de regels van
    `cs-hookgenerator` (Fase 3, Kwaliteit van een haakje) en laat Koen opnieuw kijken;
  - iets anders afgekeurd: terug naar Cato. Herschrijf alleen wat Koen noemde en laat Koen
    opnieuw kijken.
- **Hoogstens twee rondes.** Is het na de tweede ronde nog AANPASSEN, toon dan het resultaat
  met het laatste rapport en zeg welke punten nog openstaan. De gebruiker beslist.
- **Let op bij feiten** los je niet zelf op. Stel de vraag van Koen letterlijk aan de
  gebruiker, samen met het resultaat.

## 4. Akkoord blijft bij de gebruiker

Koen keurt niets definitief goed. Na zijn rapport vraag je de gebruiker om akkoord, voor
alles in één keer:

> "Koen heeft haakje 1, 2 en 4 goedgekeurd. Haakje 3 en 5 gingen terug naar Hanna; dit zijn
> de nieuwe. Ben je akkoord?"

Pas na ja gaat het volgende teamlid aan de slag of schrijf je iets weg.

## 5. Het rapport in Notion

Alleen bij een caption. Onder het codeblok met de caption komt een ingeklapt blok
**Rapport van Koen** met het rapport als gewone tekst, zonder codeblok. Zie
`pagina-opbouw.md`. Het rapport van haakjes komt niet in Notion; dat staat in het gesprek of
in de mail.
