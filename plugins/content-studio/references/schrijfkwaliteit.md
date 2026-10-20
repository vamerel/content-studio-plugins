# Schrijfkwaliteit

Gedeeld door `hookgenerator` en `content-caption`. Vier dingen die elke tekst uit deze plugin
doorloopt voor hij getoond wordt: de zwarte lijst, de test tegen generiek, de stemcheck en het
teruggeven van stemcorrecties.

De stem komt altijd van de gebruiker, uit haar Tone of Voice. Dit bestand voegt geen toon toe;
het haalt weg wat de stem verdringt.

---

## 1. De zwarte lijst, in twee lagen

### Laag 1: altijd weg

Typische AI-taal en lege contenttaal. Weg, tenzij de gebruiker het woord zelf in het gesprek
gebruikt of het in haar Tone of Voice bij de kernwoorden of signature-uitdrukkingen staat.

**Clichéopeningen**
- wist je dat, stel je voor dat, veel mensen denken dat, het geheim van, deze gouden tip
- hier is waarom, dit verandert alles, laat dat even bezinken, lees dat nog eens
- spoiler, plot twist, unpopular opinion (als vertaalde of geleende opener)

**Lege woorden**
- naar een hoger niveau tillen, level up, game changer, ontgrendel, unlock
- duik in, ontdek, in een wereld waar, jouw reis, jouw journey
- transformatie, transformeren (als de klant dat woord zelf niet gebruikt)
- moeiteloos, naadloos, holistisch, impactvol, krachtig (als losse versterker)

**Lege wendingen**
- laten we eerlijk zijn, de waarheid is, en dat is oké, je bent niet de enige
- het is geen X, het is Y (als vaste truc, meer dan één keer per tekst)
- drie bijvoeglijke naamwoorden of drie korte zinnen achter elkaar als stijlfiguur
  ("Simpel. Snel. Effectief.")

**Leestekens**
- em-dashes (—)
- uitroeptekens als vervanging voor energie

### Laag 2: weg voor deze gebruiker

- De verboden woorden uit haar Tone of Voice (basis en social-document).
- Alles wat ze in dit gesprek heeft geschrapt of afgekeurd.
- De regels in haar sectie van MEMORY.md die over woorden gaan.

### Hoe je de lijst gebruikt

Lees de tekst na het schrijven terug op beide lagen. Staat er iets in, herschrijf dan de zin.
Vervang het woord niet door een synoniem dat hetzelfde lege doet: "ontgrendel" wordt niet
"open", de zin wordt concreter.

---

## 2. De test tegen generiek

Stel bij elk haakje, de eerste regel van een caption en de zin die het verlangen draagt deze
vraag:

> Kan een collega in hetzelfde vak deze zin letterlijk overnemen en posten?

**Ja:** de zin is generiek. Maak hem specifiek met één van deze:
- een letterlijke zin uit de klanttaal (Ideal Client of wat de gebruiker in het gesprek gaf)
- een concreet moment: een dag, een tijdstip, een plek, een handeling
- een getal of termijn van de gebruiker zelf
- een detail uit haar eigen ervaring of werkwijze

Niet verzinnen: komt het detail niet uit Business DNA of het gesprek, gebruik het dan niet.

| Generiek | Specifiek |
|---|---|
| "Meer rust in je bedrijf" | "Vrijdagmiddag je laptop dicht zonder drie openstaande offertes" |
| "Je post maar niemand reageert" | "Drie keer per week posten en alleen je moeder liket" |

---

## 3. De stemcheck

Een korte toets op de stem, vóór je iets toont. Corrigeer wat niet klopt; meld het niet als
fout.

- **Opening:** past de opening bij haar haakpatronen uit het social-document (de vormen die ze
  het vaakst gebruikt)?
- **Zinslengte:** binnen de bandbreedte die in haar Tone of Voice gemeten is?
- **Aanspreekvorm en verhouding:** je/jij/jullie zoals zij het doet; naast, boven of tegenover
  de lezer zoals zij het doet?
- **Emoji, leestekens, hoofdletters:** zoals in het social-document. Staat er niets, dan niet.
- **Afsluiter:** zoals onder Afsluitingen en actie in het social-document?
- **Naast de stijlvoorbeelden:** zou deze tekst tussen haar vijf stijlvoorbeelden niet opvallen?

Ontbreekt het social-document, toets dan aan het basisdocument van de Tone of Voice.

---

## 4. Stemcorrecties teruggeven

Business DNA is voor deze plugin alleen-lezen. Corrigeert de gebruiker iets aan de stem (een
woord dat ze nooit gebruikt, te formeel, andere afsluiter) en staat dat niet in haar Tone of
Voice, dan houd je het bij en geef je het aan het eind van de sessie terug als korte lijst,
letterlijk geformuleerd als regel:

> "Deze dingen heb je gecorrigeerd en staan nog niet in je Tone of Voice:
> - Geen uitroeptekens in het haakje
> - 'Ondernemer' in plaats van 'onderneemster'
>
> Wil je ze daar toevoegen? Dat kan met `@businessdna-tone-of-voice`; kies daar aanvullen en
> plak dit lijstje erin."

Je zet ze zelf nergens in. Correcties die over het vak gaan (lengte van haakjes, vorm van een
afsluiter, aantal slides) zijn geen stemregels: die gaan via MEMORY.md, volgens de
MEMORY-regels. Waren er geen stemcorrecties, sla dit over.
