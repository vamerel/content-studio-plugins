---
name: content-designsystem
description: >
  Bouwt in Claude Code de map Content Studio/Design System die je in Claude Design uploadt,
  afgeleid uit je eigen carrousels, reelomslagen en brandfoto's in Business Brand Guidelines.
  Je echte posts gaan mee als voorbeeld; daarnaast kleuren, fonts, de compositie per
  layouttype, tekenlimieten als richtlijn, en een fotobibliotheek met wat er op elke
  brandfoto staat. Werkt zonder iets te installeren. Levert design-system.md en fotos.md
  voor de caption-skill en de twee teksten voor het instelscherm van Claude Design. Voor
  Instagram-carrousels en reels. TRIGGERS op @designsystem, @content-designsystem, "design
  system maken", "mijn huisstijl vastleggen", "tekenlimieten bepalen", "layout van mijn
  carrousels", of elke vraag over het vastleggen van je visuele stijl voor Claude Content
  Studio.
---

# Design System - Claude Content Studio

Deze skill draait in **Claude Code**, met de map CLAUDE als werkmap. Uit wat de gebruiker al
heeft (carrousels, reelomslagen, brandfoto's, Canva Brand Kit, lettertypes, logo, website)
leid je af hoe zijn content eruitziet en hoeveel tekst er per layouttype past. Daar bouw je
een **map** van: het design system dat de gebruiker in Claude Design uploadt, zodat elk
design dat daar gemaakt wordt op zijn echte posts lijkt. Eén bestand in die map,
`design-system.md`, is de norm waar `content-caption` tegen schrijft.

Waarom dit ertoe doet: zonder design system in Claude Design krijgt de gebruiker generieke
slides in een willekeurige stijl. En schrijf je eerst en ontwerp je daarna, dan past de tekst
niet in de slide. Met deze map ontwerpt Claude Design in zijn huisstijl en schrijft de
caption-skill tegen een bekende limiet.

De gebruiker is geen ontwerper en gaat niet zelf bijsturen. Wat uit Claude Design komt, moet
dus in één keer lijken op haar eigen posts. Dat lukt alleen als Claude Design haar **echte
posts als voorbeeld** ziet en de compositie daar afkijkt: hoe groot de tekst is, waar hij
staat, en waar de persoon in beeld blijft. Beschrijvingen en regels vullen aan; ze vervangen
de voorbeelden nooit. Teken nooit zelf slides of onderdelen voor haar: een nabouwsel maakt het
resultaat slechter dan haar eigen werk.

De scope is **carrousels en reels** op Instagram. LinkedIn-carrousels alleen als er
LinkedIn-materiaal is. Geen websites, geen decks, geen mails: daar gaat deze cursus niet
over, en een design system dat alles wil dekken is voor niets scherp.

---

## Stap 0 - Kijk wat er is, vereis niets

Deze skill werkt **zonder installatie**. Alles wat hij nodig heeft kan Claude Code zelf: een
webpagina ophalen, de opmaakcode lezen, beelden bekijken, foto's verkleinen, bestanden
kopiëren en schrijven.

Er is één uitzondering, en die komt zelden voor: Firecrawl, alleen als de website meegaat
en de opmaakcode daarvan niets bruikbaars oplevert (zie stap 2). Gereedschap installeren
doe je alleen als het het resultaat beter maakt; levert het hetzelfde op als zonder, dan
zonder. Vraag de gebruiker nooit om zelf iets te installeren.

Controleer stil, zonder er iets over te zeggen, of Firecrawl er al staat:

```bash
firecrawl --status 2>/dev/null | head -3 || echo "GEEN_FIRECRAWL"
```

---

## Omgevingscheck

1. **Werkmap.** Je staat in de map CLAUDE, of die staat direct onder de werkmap. Anders:

> "Open Claude Code in de map CLAUDE op je bureaublad: kies bij het openen van Claude Code
> de map CLAUDE als werkmap. Roep me daar opnieuw aan."

Stop.

2. **Map Business Brand Guidelines** met minstens één van: `carrousels/`, `reelomslagen/`,
   `canva-brandkit/`. Anders:

> "Ik vind geen beeldmateriaal in Business Brand Guidelines. Zet je carrousels,
> reelomslagen en een screenshot van je Canva Brand Kit in de submappen daarvan, en roep me
> daarna opnieuw aan. Zonder je eigen carrousels of
> reelomslagen kan ik geen design system afleiden dat van jou is."

Stop.

3. **Map Content Studio** met `MEMORY.md`. Anders: `@content-studio-setup` in Cowork
   aanroepen, stop.

4. **Business DNA** met `SAMENVATTING.md`. Anders: melding, want BRAND-SUMMARY.md komt daaruit. Ga wel
   door; laat dat bestand dan weg en zeg dat.

Notion is voor deze skill niet nodig.

---

## Fase 0 - Inlezen

- `Content Studio/MEMORY.md`, alleen de sectie `## Design System`. Regels daar wegen zwaarder
  dan de richtlijnen hieronder.
- `Business DNA/SAMENVATTING.md`: de kernzin, de doelgroep en de kernboodschap voor BRAND-SUMMARY.md
  en voor veld 1 in stap 9.

---

## Stap 1 - Inventariseer Brand Guidelines

De map heeft zeven vaste submappen, en soms een achtste (`achtergronden/`). Kijk wat erin zit
en bekijk de beelden.

| Submap | Wat je eruit haalt | Als hij leeg is |
|---|---|---|
| `carrousels/` | layouttypes, tekst per slide, aantal slides, cover- en CTA-positie | geen tekenlimieten af te leiden; je stelt een startwaarde voor en zegt dat die na de eerste carrousel bijgesteld moet worden |
| `reelomslagen/` | de omslaglayout, hoeveel tekst erop past, waar de tekst staat | limiet voor de reelomslag wordt een startwaarde |
| `brandfotos/` | alle bruikbare foto's: wat erop staat, waar de persoon staat, welke ruimte ze laten voor tekst. Ze worden de fotobibliotheek (`fotos.md`) | geen fotobibliotheek; de caption-skill vraagt dan per post om een eigen foto |
| `canva-brandkit/` | kleuren met hexcodes, fontnamen | kleuren en fonts uit de website-extractie (stap 2) |
| `lettertypes/` | de exacte fontbestanden en -namen | fontnamen uit de website-extractie of de Brand Kit |
| `logo/` | logo-varianten en waar het staat op de slides | logo-URL uit de website-extractie; download hem dan naar `logo/` |
| `websitepaginas/` | schermafbeeldingen van de website, ter bevestiging | stap 2 maakt ze zelf |
| `achtergronden/` (optioneel) | de texturen die onder de slides zitten: korrel, grunge, papier, verloop; per bestand welke kleur | geen gevolg; een gekleurd vlak wordt dan een effen vlak in de hexcode |

Meld daarna in één bericht wat je hebt aangetroffen, per submap met het aantal bestanden, en
wat er ontbreekt met wat dat kost voor het resultaat (startwaarde in plaats van gemeten
limiet, geschatte in plaats van gemeten kleuren, geen logoregel). Sluit af met één vraag en
wacht:

> "Wil je dit eerst aanvullen, of ga ik door met wat er is?"

**Aanvullen:** wacht tot de gebruiker zegt dat het klaar is en inventariseer opnieuw.
**Doorgaan:** verder naar stap 1a met wat er is. Stop alleen als **zowel** carrousels **als**
reelomslagen **als** de Brand Kit ontbreken; dan is er niets om uit af te leiden, en zeg je
dat de gebruiker eerst haar carrousels, reelomslagen en Brand Kit in Business Brand
Guidelines zet.

Brandfoto's hoeven in Brand Guidelines geen bijzondere bestandsnamen te hebben. Je hernoemt
daar niets: in stap 8 kopieer je ze, verkleind, onder een vaste naam naar de map Design
System. Tel ze wel. De caption-skill gebruikt een foto op de cover of omslag niet opnieuw
binnen negen posts; met minder dan vijftien brandfoto's loopt hij daar snel tegenaan. Zeg dat
in het bericht hieronder, met het advies om meer foto's toe te voegen.

### Schermafbeeldingen van Instagram

Veel gebruikers leveren geen exports maar schermafbeeldingen van hun telefoon. Daar staat
dan interface van Instagram op die niets met het design te maken heeft. Herken per beeld of
het er een is en welke elementen erop staan:

- een teller rechtsboven, zoals `5/10`, in een donker afgerond vlak
- een geluidsicoon rechtsonder, een luidsprekertje in een rond vlak
- een klein telefoonscherm linksonder: een schermafbeelding waar nog een schermafbeelding
  in zit
- een balk boven met de accountnaam, of een balk onder met de knoppen voor liken, reageren
  en delen

Die elementen zijn van Instagram, niet van het merk. Ze tellen nergens mee: niet als
label, niet als kleur, niet als logo, niet als tekstpositie. Noteer per beeld welke er op
staan, zodat je ze in stap 8 kunt benoemen in de map. Zeg de gebruiker één keer:

> "Een deel van je carrousels zijn schermafbeeldingen met de interface van Instagram erop.
> Ik kijk daar doorheen, maar Claude Design krijgt ze straks ook te zien. Beter is de export
> van Instagram zelf: dezelfde beelden, zonder teller en
> icoontjes. Vervang ze zodra je die hebt; ik bouw de map dan opnieuw."

### Meer dan tien carrousels

Kwaliteit komt van consistentie, niet van aantal. Staan er meer dan tien carrousels, vraag
dan welke de gebruiker nu nog precies zo zou maken, en werk alleen met die. Een oude stijl
erbij trekt de limieten en de stijlregels scheef. Noem de carrousels op mapnaam en laat de
gebruiker kiezen; kies niet zelf.

---

## Stap 1a - Website meenemen, of niet

Vraag, in een apart bericht:

> "Wil je je website meenemen in het design system? Dan lees ik daar je kleuren, fonts en
> logo uit. Is je website verouderd of past hij niet bij hoe je posts er nu uitzien, zeg dan
> nee; dan werk ik alleen met je posts, je Brand Kit en je fontbestanden."

**Ja:** vraag de URL van de homepage en van maximaal twee andere pagina's die de huisstijl
het beste laten zien (een salespagina, een over-mij-pagina). Ga dan naar stap 2.

**Nee, of geen website:** noteer dat. Stap 2 vervalt en in stap 6 vervallen de bronnen uit
de website. Zeg er niets meer over.

---

## Stap 2 - Haal de website op

Alleen als de gebruiker in stap 1a ja zei. Anders sla je deze stap over zonder er iets over
te zeggen. Gebruik de URL's uit stap 1a.

### Uit de opmaakcode

Haal per pagina de HTML op met de ophaalfunctie van Claude Code, of met curl, dat op Windows
en macOS standaard aanwezig is:

```bash
curl -sL "<url>" -o "Content Studio/Design System/research/<paginanaam>.html"
```

Zoek in de HTML de stylesheets (`<link rel="stylesheet" href="...">`) en haal die ook op,
plus alles wat in `<style>`-blokken staat. Lees daaruit:

- **Fonts:** elke `font-family`, en welke bij koppen hoort (`h1`, `h2`) en welke bij lopende
  tekst (`body`, `p`). Een Google Fonts-link in de `<head>` noemt de fonts vaak letterlijk.
- **Kleuren:** elke hexcode (`#rrggbb` of `#rgb`), geteld op hoe vaak hij voorkomt. Zuiver
  wit en zuiver zwart tellen alleen als ze duidelijk de achtergrond of de tekstkleur zijn.
- **Logo:** een `<img>` in de header, of een bestand met "logo" in de naam. Download hem naar
  `Business Brand Guidelines/logo/`, alleen als die map leeg is.

Schrijf wat je vond naar `research/website-css.md`: per font en per kleur waar je hem
tegenkwam. Dit zijn **gemeten** waarden: ze staan letterlijk in de code, je hebt ze niet
geschat.

Schermafbeeldingen maak je zo niet. Gebruik wat de gebruiker zelf in
`websitepaginas/` heeft gezet. Staat daar niets, ga dan door
zonder, en noem het in de slotmelding.

### Alleen als de code niets oplevert: Firecrawl

Sommige websites worden pas in de browser opgebouwd (vaak bij Wix, Framer of Squarespace).
De opgehaalde code bevat dan bijna geen opmaak: geen fonts, nauwelijks kleuren. Alleen in
dat geval kan Firecrawl iets toevoegen, want die laat de pagina eerst opbouwen.

Bied hem alleen aan als **beide** waar zijn: de code leverde geen fonts of geen kleuren op,
**en** wat ontbreekt staat ook niet in de Brand Kit of in `lettertypes/`. Staat het daar wel,
dan voegt Firecrawl niets toe; ga door zonder en zeg er niets over. Staat Firecrawl er al
(stap 0), gebruik hem dan zonder te vragen.

Het aanbod, in een apart bericht:

> "Je website wordt pas in de browser opgebouwd, en daardoor kan ik er je [fonts / kleuren]
> niet uit lezen. In je Brand Kit en fontbestanden staan ze ook niet. Ik kan dit oplossen met
> Firecrawl, een programma dat de pagina eerst opbouwt. Daarvoor installeer ik Node.js en
> Firecrawl, en log jij één keer in bij Firecrawl (gratis account, dit kost 3 tot 5 van de 500
> pagina's per maand). Dat duurt een paar minuten. Zonder schat ik de [fonts / kleuren] uit
> je posts en zeg ik erbij dat het schattingen zijn. Zal ik het installeren?"

**Ja:** installeer volgens "Firecrawl installeren" onderaan en draai daarna per URL:

```bash
firecrawl scrape <url> --format markdown,branding --full-page-screenshot --wait-for 5000 -o "Content Studio/Design System/research/<paginanaam>.json" --json
```

Het `branding`-format geeft kleuren, fonts en de logo-URL. Sla de schermafbeeldingen op in
`Business Brand Guidelines/websitepaginas/` als `{jjjj-mm-dd}-{paginanaam}.png`, alleen als
ze er nog niet staan.

**Nee, of geen duidelijk antwoord:** schat wat ontbreekt uit de posts, markeer het als
geschat, en stel de vraag niet opnieuw.

In alle gevallen: verander verder niets in Brand Guidelines; die map is van de gebruiker. De
ruwe uitvoer blijft in `Content Studio/Design System/research/`. Daar kijkt de gebruiker
nooit in, maar jij kunt er later op terugvallen.

---

## Stap 3 - Analyseer per layouttype

Bekijk de carrousels en reelomslagen en deel elke slide in bij een **layouttype**, niet bij
een slidenummer. Slide 3 van de ene carrousel kan een quote zijn en van de andere een
opsomming; het gaat om het type.

De vijf layouttypes:

| Layouttype | Herken je aan |
|---|---|
| Cover | eerste slide, het haakje, vaak met foto, grote letter |
| Tekstslide | kop plus één alinea, of alleen een alinea |
| Quote | één uitspraak, vaak groter gezet, soms met naam |
| Opsomming | genummerde of gebullete regels, of regels met een emoji ervoor |
| CTA | laatste slide, één actie, vaak met logo of handle |

Ziet de gebruiker andere types (bijvoorbeeld een lege kleurslide als adempauze), voeg die
toe onder een eigen naam. Verzin er geen die niet in het materiaal voorkomen.

Noteer per slide: layouttype, aantal tekens van de tekst inclusief spaties, aantal regels,
of er een foto onder zit, of er een handschrift- of scriptregel op staat, en of er een accent
op staat (een markeerbalk, een woord in de accentkleur, een gekleurd vlak achter een zin). Tel
aan het eind op hoeveel van alle slides een accent staat; dat aandeel is de **accentmaat** van
de gebruiker en komt zo in het design system.

Noteer daarbij **per soort achtergrond** hoe het accent eruitziet: op de primaire kleur, op de
accentkleur, op zwart en op een foto. Op een achtergrond in de accentkleur kan een accent in
die kleur niet: kijk wat de gebruiker daar doet (vet wit, een woord in de primaire kleur, of
geen accent). Zie je op een soort achtergrond geen enkel accent, dan is "geen accent op die
achtergrond" de regel.

Noteer ook wat er als **afzender** op de slides staat (een handle, een woordmerk, een
programmanaam) en waar. Kijk of die afwisselt: staat er in elke carrousel hetzelfde, verschilt
het per carrousel, of wisselt het binnen één carrousel (andere tekst, boven of onder, soms
geen)? Wat afwisselt leg je vast als afwisseling, met alle varianten letterlijk, nooit als één
vaste standaard: anders zet Claude Design overal de standaard. De elementen van Instagram uit stap 1 (teller, geluidsicoon,
telefoonscherm, balken) laat je buiten elke meting: ze zijn geen tekst, geen kleur en geen
layout. Meet de slide alsof ze er niet staan.

**Reelomslagen apart.** Noteer per omslag: waar de tekst staat (boven, midden, onder), hoeveel
tekens, of er een foto of een kleurvlak onder zit, en of er iets in de bovenste of onderste
250 pixels staat. Dat laatste is belangrijk: daar zet Instagram zijn eigen interface
overheen, en tekst die daar staat is in de feed onleesbaar.

### Compositie per layouttype

Tekens tellen is niet genoeg. Wat een slide van haar maakt, is de compositie, en die moet
Claude Design kunnen overnemen. Leg per layouttype vast, gemeten op haar posts, in
verhouding tot de slide:

- **Tekstgrootte:** hoe hoog een hoofdletter van de kop en van de lopende tekst is, als deel
  van de slidehoogte ("kop ongeveer een twintigste van de slidehoogte"). Kapitalen of gewone
  letters, per tekstsoort.
- **Tekstblok:** waar het staat (boven, midden, onder; links, gecentreerd) en hoeveel van de
  slide het vult ("het tekstblok vult de middelste helft van de slide").
- **Vlak achter de tekst:** ja of nee. Zo ja: welke textuur of kleur, hoe groot (een smalle
  band van één of twee regels over bijna de hele breedte, of een groot vlak), en waar.
- **De persoon in de foto:** waar die staat, hoeveel ervan zichtbaar is, en of tekst of een
  vlak ooit gezicht of lichaam bedekt. Op vrijwel alle posts doet dat het niet: dan is "een
  vlak of tekst bedekt nooit gezicht of lichaam" een harde regel.
- **Foto's per carrousel:** één doorlopende foto, een foto alleen op de cover, of een foto op
  meerdere slides.
- **De coverkop:** hoe groot (als deel van de slidehoogte), op hoeveel regels (meestal twee),
  en, als hij in een band of vlak staat, hoeveel ruimte er binnen dat vlak rondom de tekst
  blijft (als deel van de slidebreedte). Tekst die tegen de rand van een band aan staat, komt
  op haar posts vrijwel nooit voor.

Kies per layouttype één echte post die dit het best laat zien. Die wordt het voorbeeld waar
`applications/carrousels.md` naar verwijst.

### Startlijn en witruimte op de tussenslides

Bij het swipen leest de tekst prettig als hij op elke slide op dezelfde ooghoogte begint: de
lezer hoeft niet te zoeken en haakt minder snel af. Maar niet elke slide heeft evenveel tekst.
Een slide met weinig tekst die op die hoogte begint, houdt onderin veel lege ruimte over. Dat
lost de caption-skill op door slides tot ongeveer de limiet te vullen, niet Claude Design door
tekst op te rekken. Wat je hier meet, zorgt dat beide dezelfde maat aanhouden.
Meet over alle tussenslides (niet de cover en de CTA):

- **Startlijn:** op welke hoogte de eerste regel (kop of tekst) begint, als deel van de
  slidehoogte ("een kwart van boven"). Neem de hoogte die het vaakst voorkomt. Begint de
  tekst op haar posts op wisselende hoogtes, neem dan de hoogste die bij de tekstrijke slides
  voorkomt en zeg dat erbij in stap 7.
- **Onderrand:** tot waar de tekst op een volle slide loopt, als deel van de slidehoogte, en
  hoeveel lege ruimte er op haar minst volle tekstslide onder de tekst overblijft. Dat laatste
  is de **grootste witruimte** die bij haar stijl past.
- **Lettergrootte van de lopende tekst:** is die binnen één carrousel op alle tussenslides
  gelijk? Bijna altijd wel. Leg de grootte vast als deel van de slidehoogte.
- **Waar ze witregels zet:** tussen twee gedachten, na de kop, voor de accentzin. Een witregel
  is altijd één lege regel, nooit meer. Noteer welke van deze plekken ze gebruikt.
- **Hoe vol een tekstslide is:** hoeveel regels lopende tekst er op haar volste tekstslide
  staan die er nog goed uitziet, en hoeveel tekens per regel passen. Daar komt de limiet in
  stap 4 uit.
- **Grote vorm:** zet ze een slide met weinig tekst helemaal groot, in de vorm van een quote of
  kop (de hele tekst in het kopfont, of groter gecentreerd)? Op welke slides gebeurt dat
  (tussenslide, CTA) en hoe vaak per carrousel?

---

## Stap 4 - Leid de tekenlimieten af

De limiet is **wat er op een slide past**, niet wat er toevallig op stond. Per layouttype:
neem de **volste** slide van dat type die er nog goed uitziet (marges zoals op de andere
slides, niets tegen de rand, dezelfde lettergrootte) en tel de tekens. Toets dat aan de ruimte:
aantal regels tussen de startlijn en de onderrand, min één regel per witregel die ze daar
gebruikt, maal het aantal tekens per regel (stap 3). Neem de laagste van de twee en rond naar
beneden af op een vijftal. Vier tekstslides met 132, 118, 241 en 125 tekens, waarvan de
volste er goed uitziet en de ruimte zo'n 260 tekens toelaat, geven een limiet van 240.

Waarom de volste en niet de krapste: de caption-skill vult elke slide tot ongeveer de limiet.
Met de krapste waarde wordt elke slide zo leeg als de leegste die de gebruiker ooit maakte,
en krijgt een carrousel te veel, te lege slides.

Bij een opsomming: aantal regels en tekens per regel apart. Bij een tekstslide met kop: kop
en tekst apart. Bij de CTA: kop en actie apart. Bij de reelomslag: de tekst die in de veilige
zone past.

Staat er een handschrift- of scriptregel op de cover of de reelomslag, meet die apart.

**De limiet is een richtlijn, geen harde grens.** Tot tien tekens erboven moet visueel passen,
zonder overlap en zonder kleinere letter. Kijk daarom bij de volste slide of er nog ruimte is
voor tien tekens; is dat niet zo, zet de limiet dan zoveel lager dat het wel past.

Heb je van een type maar één voorbeeld, zeg dat erbij: de limiet is dan een schatting op
basis van één slide.

Heb je van een type geen voorbeeld, stel dan een startwaarde voor en markeer die als
"startwaarde, nog niet getoetst aan eigen materiaal":

| Layouttype | Startwaarde |
|---|---|
| Cover | 50, scriptregel 25 |
| Tekstslide kop | 35, tekst 120 |
| Quote | 90 |
| Opsomming | 4 regels van 30 |
| CTA kop | 35, actie 50 |
| Reelomslag | 40, scriptregel 20 |

---

## Stap 5 - Leid de formats af

Uit het materiaal:

- **Aantal slides per carrousel:** het meest voorkomende aantal als standaard, plus minimum
  en maximum uit het materiaal. Nooit onder 4, nooit boven 10.
- **Welke slide de cover is:** in de praktijk altijd slide 1. Bevestig het.
- **Welke slide de CTA is:** de laatste. Bevestig het.
- **Of er een quote-slide tussen zit** en waar die meestal staat.
- **Of er een opsomming voorkomt.**
- **Reelomslag:** 1080 x 1920 px, één zin of twee regels, en waar de tekst staat. Standaard
  staat een omslag op een brandfoto; alleen als de omslagen in het materiaal vrijwel allemaal
  een kleurvlak hebben, is dat de standaard. De veilige zone is het middenstuk: bovenaan en onderaan ongeveer 250 px
  vrij, en rechts een strook van ongeveer 150 px voor de knoppen van Instagram.
- **Losse post:** als die in het materiaal voorkomt, anders weglaten.

---

## Stap 6 - Kleuren en fonts

Bronnen, in volgorde van betrouwbaarheid:

1. Fontbestanden in `lettertypes/`: de exacte fontnaam.
2. De waarden uit de opmaakcode van de website (stap 2), in `research/website-css.md`:
   gemeten. Vervalt als de website niet meegaat (stap 1a).
3. Het `branding`-format van Firecrawl, alleen als die in stap 2 nodig was.
4. De screenshot van de Canva Brand Kit: lees de hexcodes; kun je ze niet lezen, schat ze
   en zeg dat het schattingen zijn.

Leg vast:

- **Kleuren** met hexcode en een naam per kleur: primair, accent, tekst op donker,
  achtergrond licht, en wat er verder in het materiaal terugkomt.
- **Fonts:** de naam van het kopfont en het tekstfont, met gewicht als dat zichtbaar is.
- **Logo:** welke variant op de slides staat en waar (bijvoorbeeld rechtsonder op de CTA).
  Het logo is wat het is: beschrijf het, verander er niets aan en stel geen "verbeterde"
  versie voor.

### Botsingen

De bronnen spreken elkaar soms tegen: de website gebruikt een ander font dan de carrousels,
de Brand Kit een groen dat op de slides donkerder is, de reelomslagen hebben een andere
opbouw dan de carrousels. Verzwijg dat niet en kies niet stilzwijgend. Schrijf
`research/reconciliatie.md` en toon de tabel:

| Onderdeel | Website (gemeten) | Brand Kit | Carrousels | Voorstel |
|---|---|---|---|---|
| Kopfont | Montserrat | Montserrat | Montserrat Bold, kapitalen | Montserrat Bold, kapitalen op de cover |
| Primair | #2B4C7E | #2A4A7A | #2B4C7E | #2B4C7E |

Volgorde bij twijfel: wat de gebruiker recent heeft gepubliceerd (carrousels, reelomslagen)
weegt zwaarder dan de website, en een expliciete huisstijlregel van de gebruiker zelf weegt
zwaarder dan alles wat jij afleidt. Leg het voorstel voor; de gebruiker beslist.

---

## Stap 7 - Leg alles ter bevestiging voor

Toon één overzicht, in gewone taal, en vraag per onderdeel of het klopt: layouttypes en hun
limieten, de compositie per layouttype met het voorbeeld dat je koos, formats, kleuren,
fonts, logo en afzender (vast of afwisselend), het aantal brandfoto's, en de
reconciliatietabel als die er is. Vraag
concreet:

> "Klopt dit? Wil je ergens ruimer of krapper zitten? En zijn er slides in je materiaal die
> ik verkeerd heb ingedeeld?"

Pas aan op wat de gebruiker zegt. Ga pas naar stap 8 als hij akkoord is.

---

## Stap 8 - Bouw de map Design System

Het resultaat van deze skill is een **map**, geen tekstblok. Claude Design heeft in het
instelscherm voor een design system een uploadveld waar je een hele map in zet; alles wat
erin staat leest hij mee bij elk design dat hij daarna maakt. Deze map is dus het design
system zelf. De caption-skill leest er één bestand uit, `design-system.md`.

Bouw hem in `Content Studio/Design System/`, precies zo. Laat weg wat tussen haken als
optioneel staat en er niet is; maak nooit een leeg bestand om de boom compleet te maken.

```
Content Studio/Design System/
├── design-system.md              blok A: formaten, tekenlimieten, kleuren, fonts, stijlregels
├── fotos.md                      de fotobibliotheek: per brandfoto wat erop staat en waar hij past
├── README.md                     wat deze map is en hoe je hem in Claude Design zet
├── CLAUDE.md                     leesvolgorde en harde regels voor Claude Design
├── BRAND-SUMMARY.md              het merk op één pagina, uit SAMENVATTING.md
├── foundations/
│   ├── color.md                  elke kleur met hexcode, naam, rol, en waar hij niet komt
│   ├── typography.md             fonts, gewichten, kapitalen of niet, groottes per layouttype
│   ├── imagery.md                hoe de foto's eruitzien en wat er nooit in komt
│   └── voice.md                  de stem in het kort, uit Tone of Voice, met verboden woorden
├── tokens/
│   ├── tokens.json               kleuren, fonts en formaten als data
│   └── tokens.css                dezelfde waarden als CSS-variabelen
├── logo/
│   ├── [de logobestanden, gekopieerd uit Brand Guidelines/logo]
│   └── usage.md                  welke variant waar, minimale grootte, wat nooit
├── applications/
│   ├── carrousels.md             layouttypes, slides, cover en CTA, limieten, stijlregels
│   ├── reels.md                  de reelomslag: formaat, veilige zone, tekstpositie, limiet
│   └── linkedin.md               [alleen als er LinkedIn-materiaal is]
├── assets/
│   └── templates/
│       ├── README.md             index: dit zijn echte posts, geen nabouwsels
│       ├── carrousels/           [kopieën van de carrousels, één submap per carrousel]
│       ├── reelomslagen/         [kopieën van de reelomslagen]
│       ├── brandfotos/           [alle bruikbare brandfoto's, verkleind, als foto-01.jpg, foto-02.jpg ...]
│       ├── achtergronden/        [alleen als er texturen zijn; achtergrond-<kleur>-<n>.png]
│       └── lettertypes/          [alleen als een font niet op Google Fonts staat]
└── research/
    ├── reconciliatie.md          de tabel uit stap 6, met de keuzes
    └── [de opgehaalde websitecode, en de Firecrawl-uitvoer als die nodig was]
```

### De regel boven alles: echt materiaal is de template

De carrousels en reelomslagen in Brand Guidelines zijn de beste versie van de huisstijl die
bestaat. Je **kopieert** ze naar `assets/templates/`, je bouwt ze niet na, je tekent geen
voorbeeldslides en je maakt geen "verbeterde" versie. Claude Design bouwt op de echte posts;
een nabouwsel ernaast maakt het resultaat slechter, niet beter.

Hetzelfde geldt voor het logo: kopiëren uit `Brand Guidelines/logo/`, niets aan veranderen,
geen variant verzinnen die er niet is. Ontbreekt een variant (bijvoorbeeld geen witte versie
voor op donker), zeg dat dan in `usage.md` in plaats van er een te maken. Is er alleen een
logo van de website, dan is dat het logo; teken er geen SVG van na.

### De regels komen uit het materiaal, niet uit een handboek

Alles wat je in de map vastlegt is wat je in stap 1 tot 6 hebt gezien en wat de gebruiker in
stap 7 heeft bevestigd. Gebruikt zij kapitalen op de cover, dan is dat de regel. Gebruikt zij
twee fonts, dan zijn het er twee. Heeft zij een verloop op elke slide, dan hoort dat verloop
erin. Leg geen algemene designwetten op ("één font", "geen verlopen", "zinsopmaak") die niet
uit haar eigen posts blijken. Deze map beschrijft haar huisstijl, niet de jouwe.

### Wat er in elk bestand staat

**`design-system.md`** is blok A, in exact dit format. `content-caption` opent dit bestand en
zoekt op de twee markeringsregels en op de labels; wijk daar niet van af.

```
=== DESIGN SYSTEM ===
Status: ingevuld op [jjjj-mm-dd]

FORMATEN
Carrousel: 1080 x 1350 px (4:5) · standaard [n] slides · minimaal [n] · maximaal [n]
  Slide 1 = cover (het haakje) · laatste slide = CTA · quote-slide: [ja, meestal slide n / nee]
  Tussenslides: tekst begint op [deel] van boven · lopende tekst één grootte per carrousel · één witregel tussen gedachten, nooit oprekken · weinig tekst: [grote vorm als statement of quote / nee]
Reelomslag: 1080 x 1920 px (9:16) · [1 zin / 2 regels] · tekst [boven / midden / onder], binnen de veilige zone
Post: 1080 x 1350 px (4:5) · 1 zin   [weglaten als het niet voorkomt]

TEKENLIMIETEN (inclusief spaties, richtlijn: tot 10 tekens erboven past)
Cover: [n]
Cover scriptregel: [n]   [weglaten als er geen scriptregel is]
Tekstslide kop: [n]
Tekstslide tekst: [n]
Quote: [n]
Opsomming: [n] regels van [n]
CTA kop: [n]
CTA actie: [n]
Reelomslag: [n]
Reelomslag scriptregel: [n]   [weglaten als er geen scriptregel is]

KLEUREN
Primair: #[hex] ([naam])
Accent: #[hex] ([naam])
Tekst op donker: #[hex]
Achtergrond licht: #[hex]

FONTS
Kop: [naam] ([gewicht])
Tekst: [naam] ([gewicht])

LOGO
[variant] · [positie]   [weglaten als er geen logo is]
Afzender: [de varianten letterlijk] · [vast / wisselt per carrousel / wisselt per slide] · [boven / onder / beide]   [weglaten als er geen afzender is]

FOTO'S
[n] brandfoto's · zie fotos.md   [of: geen brandfoto's]

STIJLREGELS
[3 tot 5 regels die uit het materiaal blijken, bijvoorbeeld: "Covertekst in kapitalen op
een korrelig groen vlak" · "Foto's altijd in kleur, nooit zwart-wit" · "Eén foto per
carrousel, alleen op de cover" · "Logo alleen op de CTA-slide"]
=== EINDE DESIGN SYSTEM ===
```

Startwaarden die niet aan eigen materiaal getoetst zijn krijgen `(startwaarde)` achter het
getal.

**`README.md`**: drie korte alinea's. Wat deze map is (het design system van [naam],
afgeleid uit haar eigen posts en haar website op [datum]). Hoe je hem in Claude Design zet
(het instelscherm, de map uploaden, de twee teksten uit stap 9 plakken). Hoe je hem bijwerkt
(nieuwe posts in Brand Guidelines, skill opnieuw draaien). Daaronder de boom hierboven.

**`CLAUDE.md`**: het eerste bestand dat Claude Design leest. Begin met deze regel, letterlijk:
"Wat ik in het gesprek vraag, gaat altijd voor. Deze map is het startpunt, geen grens. Vraag
ik iets wat er niet in staat, voer het dan uit in mijn fonts en kleuren; weiger nooit omdat
iets niet in het design system past, en zeg in één zin wat je anders deed." Daarna zes
onderdelen:

1. **Leesvolgorde**: BRAND-SUMMARY, dan foundations/color en typography, dan
   applications/carrousels of reels (welke van toepassing is), dan de echte voorbeelden in
   assets/templates. De voorbeelden wegen zwaarder dan de beschrijvingen: wijkt een
   beschrijving af van wat op de posts staat, dan winnen de posts.
2. **Harde regels**: de stijlregels uit blok A, de kleuren met hexcode, de fonts, de
   logoregel, de veilige zone van de reelomslag. Alleen wat bevestigd is in stap 7. Zijn er
   texturen in `assets/templates/achtergronden`, dan ook, letterlijk: "Een gekleurd vlak is
   altijd een van de texturen uit assets/templates/achtergronden (noem de bestandsnamen),
   paginavullend als achtergrondafbeelding onder de tekst. Nooit een effen kleurvlak in de
   hexcode." Zonder die regel leest Claude Design "korrelig vlak" en tekent het een effen
   vlak. Leverde stap 3 de regel op dat tekst of vlakken de persoon nooit
bedekken, neem dan letterlijk op: "Een tekstvlak of tekst bedekt nooit het gezicht of het
lichaam van de persoon op de foto. Zet de tekst in de vrije ruimte van de foto, of in een
smalle band zoals op de voorbeelden." Plus altijd deze vier, letterlijk: "Een kop is altijd een zin uit de aangeleverde tekst, als kop gemarkeerd. Niet elke slide heeft een kop; staat er geen kop in de aanlevering, zet er dan geen. Verzin nooit een kop en vat een slide nooit samen in een kop.", "Emoji's in de aangeleverde tekst worden letterlijk overgenomen, op dezelfde plek, ook als opsommingsteken. Nooit vervangen door een streepje, bolletje of icoon, nooit weglaten.", "Een opsomming staat altijd in zijn geheel op één slide; splits hem nooit over twee slides." en "Gebruik precies de foto's die de prompt per slide noemt. Kies alleen zelf een foto als ik daarom vraag, en dan nooit een die de prompt al ergens anders noemt."
3. **Standaarden bij twijfel**: het standaardaantal slides, welke slide de cover is en welke
   de CTA, de verhouding, of er een foto op de cover hoort, waar de reeltekst staat. Altijd
   ook deze twee, met de waarden uit stap 3 ingevuld: "**Startlijn en witruimte.** Op alle
   tussenslides begint de eerste regel (kop of tekst) op de startlijn, [deel] van boven, zodat
   de tekst bij het swipen op dezelfde ooghoogte staat. Centreer de tekst nooit verticaal en
   laat hem nooit lager beginnen. De lopende tekst heeft op alle tussenslides van een
   carrousel dezelfde grootte, zoals op het voorbeeld; pas die nooit per slide aan. Tekst
   staat [links uitgelijnd / gecentreerd], zoals op de voorbeelden. **Witregels:** precies één
   witregel tussen twee gedachten, [na de kop] en [voor de accentzin], op elke slide op
   dezelfde manier. Nooit twee witregels achter elkaar, nooit extra regelafstand, en nooit
   tekst oprekken om een slide te vullen. Woorden veranderen nooit. Blijft er onderin ruimte
   over, laat die dan staan; is het meer dan [grootste witruimte], zeg dan dat die slide te
   weinig tekst heeft en met een andere samen kan. Is de tekst te lang voor het gebied tot
   [onderrand], meld het en maak de letter niet kleiner. Cover en CTA mogen afwijken." en, alleen als stap 3 een grote vorm opleverde: "**Grote
   vorm.** Een slide die de prompt als Grote vorm aanduidt, zet je in de grote vorm
   zoals op [voorbeeldpost]: de hele tekst groter, in [het kopfont / de quotestijl]. Dat mag
   op [een tussenslide en de CTA], hooguit [n] keer per carrousel en nooit twee slides achter
   elkaar." Zonder grote vorm op de posts laat je die tweede regel weg en eindigt de eerste
   zonder die verwijzing. Neem ook altijd de coverregel op, met de waarden uit stap 3:
   "**Cover.** De kop staat op hooguit [twee] regels, ongeveer [deel] van de slidehoogte, zoals
   op het voorbeeld. Staat hij in een band of vlak, dan blijft er rondom minstens [binnenmarge]
   ruimte binnen dat vlak; tekst raakt nooit de rand. Past de kop niet op [twee] regels, maak
   hem dan kleiner; maak de band niet voller en voeg geen regel toe." En deze: de accentmaat uit stap 3, als "Accent (markeerbalk,
   accentkleur) op ongeveer [aandeel] van de slides, zoals op de echte posts; één per slide.
   Per achtergrond: [op de primaire kleur: …; op de accentkleur: …; op zwart: …; op een foto:
   …]. Gebruik nooit een kleurcombinatie voor een accent die niet op de voorbeelden staat."
   (viel er niets te meten, dan "spaarzaam, op hooguit een derde van de slides"); "Een
   reelomslag staat op de brandfoto die de prompt noemt, nooit op een effen vlak of textuur,
   tenzij ik daarom vraag." (tenzij stap 5 een kleurvlak als standaard opleverde); "Tekst
   nooit kleiner dan op de echte posts. De tekenlimieten zijn een richtlijn: tot tien tekens
   erboven moet passen, in dezelfde lettergrootte en zonder overlap. Past het toch niet, meld
   het dan en maak de letter niet kleiner."; en de afzenderregel: bij een vaste afzender
   "Afzender: [variant] [boven/onder], vanaf slide 2, nooit op de cover.", bij een afzender die
   wisselt "Afzender: wissel af tussen [de varianten letterlijk][, boven of onder][, of geen],
   [per carrousel / per slide], zoals op de voorbeelden. Nooit op de cover." Sluit af met: "Krijg je een hele caption in plaats van tekst per slide, verdeel
   hem dan volgens applications/carrousels.md, Verdeling van de tekst over de slides."
4. **Wat niet van het merk is**: alleen als er schermafbeeldingen tussen de voorbeelden
   zitten. Benoem letterlijk welke elementen op die beelden van Instagram zijn (de teller
   rechtsboven, het geluidsicoon rechtsonder, een telefoonscherm linksonder, balken boven of
   onder) en dat die nooit in een design komen. Zonder deze regel bouwt Claude Design ze na
   als onderdeel van de stijl.
5. **Weergave en export**: altijd opnemen, letterlijk zo:
   - De pagina om de slides heen (het werkblad, de titel, de toelichting) is neutraal:
     lichtgrijs of de standaardachtergrond van Claude Design, met neutrale donkergrijze tekst.
     Geen huisstijlkleuren en geen koppen in de accentkleur. De kleur-, font- en
     achtergrondregels gelden alleen binnen de slides. (Zonder deze regel past Claude Design
     de kleurregels ook op het werkblad toe en wordt de hele pagina huisstijlkleur.)
   - Carrousels altijd naast elkaar van links naar rechts in één horizontale rij, zoals je op
     Instagram swipet. Weergave zo geschaald dat ongeveer drie slides tegelijk in beeld
     passen, met kleine ruimte ertussen en het slidenummer eronder. Horizontaal scrollen als
     ze niet passen. Dit is alleen de weergave; het formaat van de slides verandert niet.
   - Het design heet precies zoals de regel `Naam:` in de prompt, met een gewoon streepje:
     `Carrousel - [eerste zin van de caption]` of `Reelomslag - [eerste regel van de
     caption]`. Staat er geen regel `Naam:`, maak de naam dan zelf zo. Die naam wordt de
     titel van het design, van het Canva-ontwerp en van het exportbestand.
   - Binnen een carrousel heet elke slide slide-01, slide-02, enzovoort, in de volgorde van
     de carrousel. Nooit de kop of de tekst als slidenaam.
   - Reelomslagen los tonen.
   - Bij "exporteer als png": elke slide als losse PNG op ware grootte (carrousel 1080 x 1350
     px, reelomslag 1080 x 1920 px). Een carrousel wordt `[Naam].zip` met daarin slide-01.png,
     slide-02.png enzovoort; een reelomslag wordt `[Naam].png`. Laat in bestandsnamen de
     tekens ? : " / \ * < > | weg, want die mogen niet in een bestandsnaam. Geen PDF of
     PowerPoint, tenzij daar zelf om gevraagd wordt.
   - Bij "exporteer naar Canva": als bewerkbaar ontwerp met de naam uit `Naam:` (daar mogen
     alle tekens in), één pagina per slide op ware grootte, zonder de weergave eromheen. Tekst
     blijft echte tekst in losse tekstlagen, met de fontnaam precies zoals in het fontbestand;
     achtergrond en foto worden losse afbeeldingen. Nooit één platte afbeelding.[ Staat een
     font niet op Google Fonts, voeg toe: "[font] zit niet standaard in Canva. Zeg bij een
     export naar Canva dat ik het daar moet uploaden, anders vervangt Canva het."]
6. **Controle voor oplevering**: deze vragen. Past elke tekst binnen zijn limiet? Is het
   coverkop even groot als op het voorbeeld, op hooguit [twee] regels, met ruimte rondom binnen
   de band? Staat de reeltekst binnen de veilige zone? Staan
   alleen de kleuren uit color.md erin? Is het logo onveranderd? Lijkt het op de echte posts
   in assets/templates? Staat er niets op dat van Instagram is? Staan de slides naast elkaar
   van links naar rechts? Begint de tekst op elke tussenslide op de startlijn, zonder
   verticaal te centreren? Is de lopende tekst op alle tussenslides even groot? Staat er
   tussen twee gedachten overal precies één witregel, en nergens twee of extra regelafstand? Staat elke
   zin en elke emoji uit de aangeleverde tekst erin, en staat elke foto die de prompt noemt op
   de genoemde slide? Is de tekst even groot als op het voorbeeld van dat layouttype? Bedekt
   geen tekst of vlak het gezicht of lichaam van de persoon? Staat elke opsomming heel op één
   slide? Heet het design zoals de regel `Naam:`?
   Is de pagina om de slides heen neutraal, en is elk gekleurd vlak een textuur uit
   assets/templates/achtergronden (als die map er is)?

**`fotos.md`**: de fotobibliotheek. De caption-skill kiest hieruit per post de foto's, op
onderwerp en op de ruimte die de tekst nodig heeft; Claude Design leest erin wat er op een
foto staat. Bekijk elke foto en schrijf per foto één blok, in dit format:

```
# Fotobibliotheek
[n] brandfoto's in assets/templates/brandfotos. Bron: Business Brand Guidelines/brandfotos.

## foto-01
Bron: [oorspronkelijke bestandsnaam]
Wat: [wie en wat, in één zin: "lachend bij het raam, leren jas, staand"]
Uitstraling: [lachend en open / serieus / denkend / aan het werk ...]
Persoon: [links / midden / rechts], [van top tot teen / tot het middel / alleen het gezicht]
Vrij voor tekst: [boven / onder / links / rechts / geen]
Staand of liggend: [staand / liggend]
Past bij: [de pillars of onderwerpen waar hij bij past, uit SAMENVATTING.md of de Content Pillars]
```

Wees concreet: de caption-skill kiest hierop, en "mooie foto" helpt hem niet. Een foto zonder
vrije ruimte voor tekst is alleen bruikbaar voor een tussenslide met een vlak.

**`BRAND-SUMMARY.md`**: één pagina uit `Business DNA/SAMENVATTING.md`: wie dit is, voor wie, wat ze
verkoopt, de kernboodschap letterlijk, en de stem in één alinea. Niets nieuws verzinnen; dit
is een uittreksel, geen herschrijving.

**`foundations/color.md`**: elke kleur uit blok A met hexcode, naam en rol, plus per kleur
waar hij wél en níet komt ("oranje alleen op de CTA-slide en in de haakjeskleur, nooit als
achtergrond van een tekstslide"). Zeg per kleur uit welke bron hij komt (gemeten, Brand Kit,
geschat).

**`foundations/typography.md`**: kopfont en tekstfont met gewicht, of de cover in kapitalen
staat, en per layouttype de grootte zoals die op de posts staat (geschat in verhouding tot
de slide: "cover ongeveer een tiende van de slidehoogte"), uit de compositiemeting van stap 3.
Staat een font niet op Google Fonts, zeg dat hier en verwijs naar
`assets/templates/lettertypes/`; zeg er dan ook bij dat Canva dat font niet kent en het bij
een export vervangt, tenzij de gebruiker het in Canva heeft geüpload.

**`foundations/imagery.md`**: wat er op de brandfoto's staat (persoon, omgeving, licht,
kleurtoon), hoe ze op de slides en omslagen gebruikt worden (alleen cover, met of zonder
overlay), en wat er nooit in komt. Alleen wat je in `brandfotos/` en op de posts ziet.
Plus de regel: welke foto op welke slide komt, staat in de prompt; `fotos.md` beschrijft
elke foto. Uploadt de gebruiker zelf een foto bij een prompt, dan gebruikt Claude Design die.

**`foundations/voice.md`**: geen kopie van Tone of Voice. Vijf tot tien regels: aanspreekvorm,
de verboden woorden volledig, twee signature-uitdrukkingen, en de zin dat de tekst altijd uit
de caption-skill komt en letterlijk overgenomen wordt. Verwijs naar Tone of Voice als bron.

**`tokens/tokens.json`** en **`tokens/tokens.css`**: de kleuren, fonts en formaten uit blok A
als data. In de CSS in deze vorm:

```css
:root {
  --[slug]-primair: #[hex];
  --[slug]-accent: #[hex];
  --[slug]-tekst-op-donker: #[hex];
  --[slug]-achtergrond-licht: #[hex];
  --[slug]-font-kop: '[naam]', sans-serif;
  --[slug]-font-tekst: '[naam]', sans-serif;
  --[slug]-carrousel: 1080px 1350px;
  --[slug]-reel: 1080px 1920px;
}
```

De slug is de bedrijfsnaam in kleine letters zonder spaties. Meer variabelen alleen als er
meer kleuren in blok A staan. De JSON bevat dezelfde waarden, met per kleur de bron.

**`logo/usage.md`**: welke bestanden er zijn en welke variant op welke achtergrond, de positie
op de slides zoals die in het materiaal voorkomt, een minimale grootte (een tiende van de
slidebreedte als er niets anders blijkt), en de lijst wat nooit mag: vervormen, herkleuren,
draaien, een effect eroverheen, iets toevoegen dat er niet in zit.

**`applications/carrousels.md`**: het hart van de map. Per layouttype (cover, tekstslide,
quote, opsomming, CTA, en eigen types uit stap 3) wat erop staat, de compositie uit stap 3
(tekstgrootte, plek en omvang van het tekstblok, vlak of niet, waar de persoon staat), de
tekenlimiet, en **het voorbeeld**: het pad van de echte slide in `assets/templates/` die het
het best laat zien, met de zin "Bouw dit type op dit voorbeeld." Daarna een sectie
**Startlijn en witruimte** met de regel uit CLAUDE.md, de gemeten waarden, en per
plek voor een witregel (tussen gedachten, na de kop, voor de accentzin) en voor de grote vorm een verwijzing naar een echte slide waar
je het ziet. Daarna: het
standaardaantal slides, waar de quote-slide staat, en de stijlregels uit blok A
uitgeschreven met per regel een verwijzing naar een echte post in `assets/templates/` waar
je het ziet. Daarna een sectie **Verdeling van de tekst over de slides**, letterlijk deze tekst
met de limieten en het minimum en maximum van de gebruiker ingevuld:

```
## Verdeling van de tekst over de slides

Komt de tekst niet kant-en-klaar per slide uit de caption-skill, verdeel hem dan zo:

- **Eerst blokken, dan slides.** Deel de tekst eerst in blokken op betekenis: een opsomming
  (twee of meer regels achter elkaar die met hetzelfde teken of dezelfde aanhef beginnen), een
  vraag met het antwoord erop, een aankondiging met een dubbele punt plus wat erop volgt, of
  een alinea. Een blok wordt nooit gesplitst. Een slide bestaat uit één of meer hele blokken.
- **Slides vullen:** zet opeenvolgende blokken samen op een slide zolang ze samen binnen de
  limiet passen (met tien tekens marge). Begin pas een nieuwe slide als het volgende blok er
  niet meer bij past. Liever minder, vollere slides dan veel lege.
- **Aantal slides:** volgt uit het vullen, binnen het minimum en maximum. Het maximum is hard:
  kom je erboven, meld dat dan; laat nooit stil tekst weg.
- **Cover:** de eerste regel van de caption, letterlijk.
- **CTA:** de laatste oproep of vraag uit de caption, letterlijk.
- **Statement:** één korte, stellige zin die het omslagpunt van het verhaal is (een conclusie,
  een one-liner), binnen de quote-limiet. Hooguit één per carrousel, niet op slide 2.
- **Weinig tekst:** een korte zin die niet bij een blok ervoor of erna past, of een korte CTA,
  krijgt de grote vorm uit CLAUDE.md (als die er is).
- **Opsomming:** twee of meer opeenvolgende regels met hetzelfde teken ervoor (emoji, puntje,
  streepje, cijfer) of dezelfde aanhef worden één opsommingsslide, met de tekens erbij. Is de
  slide te vol, dan gaat de andere tekst naar een extra slide, nooit een deel van de
  opsomming.
- **Tekstslides:** de rest, in de volgorde van de caption. Evenveel tekst per slide telt alleen
  als twee indelingen allebei de blokken heel laten. Een kop alleen als een zin uit die tekst zich ervoor leent,
  letterlijk; anders geen kop. Nooit een kop verzinnen.
- **Nadruk:** één kernwoord of kernzin gemarkeerd op het deel van de slides dat de accentmaat
  in CLAUDE.md aangeeft. Niet op elke slide; dan valt niets meer op.
- **Emoji's** blijven staan waar ze in de caption staan.
- Alles letterlijk. Herschrijven of samenvatten mag niet; weglaten alleen met melding.
```

Sluit af met: "De tekst per slide komt kant-en-klaar uit de caption-skill. Neem hem letterlijk
over, herschrijf niets."

**`applications/reels.md`**: de reelomslag. Formaat 1080 x 1920, de veilige zone met maten,
waar de tekst staat, de limiet, de standaard uit stap 5 (op de brandfoto die de prompt noemt),
de regel dat tekst de persoon niet bedekt, en hoe de omslag zich verhoudt tot de
cover van een carrousel (zelfde haakje, ander formaat). Verwijs naar de echte omslagen in
`assets/templates/reelomslagen/`. Sluit af met dezelfde zin over de caption-skill.

**`applications/linkedin.md`**: alleen als er LinkedIn-materiaal in Brand Guidelines staat.
Zelfde opbouw als carrousels.md. Is er niets, dan maak je dit bestand niet en zeg je dat in
README.md.

**`assets/templates/README.md`**: opent met de zin "Dit zijn de echte posts van [naam], geen
nabouwsels. Maak je een nieuw design, open dan het voorbeeld dat er het dichtst bij ligt en
bouw daarop voort. Teken de look niet vanaf nul na." Daaronder per submap een regel wat erin
zit, en per carrousel één regel welk layouttype op welke slide staat, zodat Claude Design
weet welk voorbeeld hij pakt. Zijn er schermafbeeldingen bij, zet dan per carrousel welke
elementen erop van Instagram zijn (teller, geluidsicoon, telefoonscherm, balken) en de zin:
"Die horen niet bij het design. Neem ze nooit over."

### Kopiëren

Uit `Business Brand Guidelines/`:

- `carrousels/` volledig naar `assets/templates/carrousels/`, met dezelfde submappen en
  bestandsnamen.
- `reelomslagen/` volledig naar `assets/templates/reelomslagen/`.
- Uit `brandfotos/` **alle bruikbare foto's** (scherp, de persoon of het werk herkenbaar; geen
  mislukte opnames of dubbele bijna-gelijke), verkleind naar 1600 px aan de lange kant,
  naar `assets/templates/brandfotos/` als `foto-01.jpg`, `foto-02.jpg` enzovoort. Met alleen
  een handvol foto's gaat dezelfde foto snel terugkomen in het feed. Verkleinen zonder iets te
  installeren:

  ```powershell
  # Windows
  Add-Type -AssemblyName System.Drawing
  $img = [System.Drawing.Image]::FromFile($bron); $f = 1600 / [Math]::Max($img.Width, $img.Height)
  if ($f -gt 1) { $f = 1 }; $bmp = New-Object System.Drawing.Bitmap $img, ([int]($img.Width*$f)), ([int]($img.Height*$f))
  $bmp.Save($doel, [System.Drawing.Imaging.ImageFormat]::Jpeg); $bmp.Dispose(); $img.Dispose()
  ```

  ```bash
  # macOS
  sips -Z 1600 "$bron" --out "$doel"
  ```

  **Vaste namen.** Bestaat er al een `fotos.md` van een eerdere bouw, houd dan voor elke foto
  met dezelfde bron dezelfde naam, en geef nieuwe foto's het volgende vrije nummer. Een naam
  wordt nooit hergebruikt voor een andere foto: de caption-skill houdt in een logboek bij welke
  foto wanneer gebruikt is, en dat klopt alleen als de namen blijven.
- `logo/` volledig naar `logo/`.
- Uit `lettertypes/` alleen de bestanden van fonts die niet op Google Fonts staan, naar
  `assets/templates/lettertypes/`.
- `achtergronden/` volledig naar `assets/templates/achtergronden/`, hernoemd naar wat erop
  staat: `achtergrond-<kleur>-<n>.png`, bijvoorbeeld achtergrond-groen-1.png of
  achtergrond-zwart-grunge.png. Claude Design leest de bestandsnaam mee; een exportnaam als
  "IG TEMPLATES (3).png" zegt niets. Noem de nieuwe namen in color.md en in CLAUDE.md.

Kopieer, verplaats niet. Brand Guidelines blijft zoals hij was.

### Voorleggen en schrijven

Toon vóór je schrijft in één bericht: de boom zoals hij gaat worden, met per bestand één
regel wat erin komt en het aantal bestanden dat je kopieert. Vraag:

> "Zal ik de map Design System zo aanmaken in Content Studio?"

Bestaat de map al met inhoud, vraag dan of je hem mag vervangen. Zo ja, hernoem de oude
eerst naar `Design System (vervangen [datum])` en bouw daarna de nieuwe. Overschrijf nooit
zonder de oude te bewaren.

Schrijf na akkoord alle bestanden en doe de kopieën. Meld daarna het volledige pad van de map
en het aantal bestanden.

---

## Stap 9 - De twee teksten voor Claude Design

Het instelscherm van Claude Design heeft drie velden: een korte omschrijving van het bedrijf,
een upload van je design system, en een vrij notitieveld. De map uit stap 8 gaat in het
uploadveld. Voor de twee tekstvelden lever je twee blokken, elk in een eigen codeblok, in
het Nederlands.

**Veld 1: bedrijfsnaam en omschrijving.** Maximaal 80 woorden, één alinea. De naam met een
dubbele punt, wat ze doet, voor wie, in de woorden van SAMENVATTING.md (de kernzin uit Personal
Brand). Sluit af met: "Ik ontwerp hiermee: Instagram-carrousels en reelomslagen." Voeg
LinkedIn toe als dat in de map zit.

**Veld 3: notities.** 200 tot 300 woorden. Begin met: "Wat ik in het gesprek vraag, gaat altijd
voor; deze map is het startpunt, geen grens. Lees eerst CLAUDE.md in de map; daar staat de
leesvolgorde." Daarna in korte regels: de kleuren met hexcode, de fonts, de
stijlregels uit blok A, de logoregel, de veilige zone van de reelomslag, en de zin dat de
echte posts in assets/templates de template zijn en dat er niets vanaf nul nagetekend wordt.
Zijn er schermafbeeldingen bij de voorbeelden, dan ook: welke elementen daarop van Instagram
zijn en dat die nooit in een design komen.
Neem altijd deze regels op: "Toon carrousels naast elkaar van links naar rechts, zoals op
Instagram.", "De pagina om de slides heen is neutraal lichtgrijs, zonder huisstijlkleuren; de
kleur- en fontregels gelden alleen binnen de slides.", "Tussenslides: de tekst begint altijd op de
startlijn, nooit verticaal gecentreerd; de lopende tekst is op alle tussenslides even groot;
tussen twee gedachten precies één witregel, nooit meer en nooit tekst oprekken; een slide
die de prompt Grote vorm noemt zet je groot zoals op mijn posts.", "Cover: de kop op hooguit
twee regels, met ruimte rondom binnen de band; past hij niet, dan kleiner.", "Tekst nooit kleiner dan op mijn posts; tot tien
tekens boven de limiet moet passen.", "Een opsomming staat altijd heel op één slide.",
"Gebruik precies de foto's die de prompt per slide noemt.", "Het design en elk exportbestand
heten zoals de regel Naam: in de prompt; bij png wordt een carrousel [Naam].zip met
slide-01.png enzovoort." en "Naar Canva altijd als bewerkbaar ontwerp, nooit als platte
afbeelding." Uit stap 3 ook de afzenderregel en, als die gemeten is, "Tekst of een vlak
bedekt nooit het gezicht of lichaam van de persoon."
Zijn er texturen in `assets/templates/achtergronden`, dan ook: "Een gekleurd vlak is altijd een
PNG uit assets/templates/achtergronden als paginavullende achtergrondafbeelding, nooit een
effen kleurvlak."
Sluit af met: "De tekst per slide komt uit mijn caption-skill. Neem die letterlijk over."

**Fontregel:** staat een font (kop, tekst of handschrift) niet op Google Fonts, zeg dan dat de
fontbestanden in `assets/templates/lettertypes/` zitten en apart in het fontveld van Claude
Design geüpload moeten worden, anders valt Claude Design terug op een ander font. Staat het
font wel op Google Fonts, zeg dan dat de fontupload overgeslagen kan worden. Zo'n font kent
Canva ook niet: dat komt als aparte stap in de handleiding van stap 10.

Lever de twee blokken elk in een eigen codeblok, met erboven alleen "Veld 1" en "Veld 3".
De uitleg wat ermee te doen komt in de slotmelding van stap 10, niet hier.

---

## Stap 10 - Slotmelding

Begin met één regel: "Klaar. Je design system staat in Content Studio/Design System,
[n] bestanden." Geef daarna deze handleiding, met de vier plekken tussen haken ingevuld uit
wat je zojuist hebt gebouwd: de eerste woorden van veld 1, de eerste woorden van veld 3, en
de fontsituatie uit de fontregel van stap 9. Geen font dat geüpload moet worden? Laat stap 4
en stap 7 dan weg en hernummer.

> **Het design system instellen**
>
> 1. **Open het instelscherm.** Ga in Claude Design naar het instellen van een design system.
>    Je ziet drie velden: een omschrijving van je bedrijf, een uploadveld en een notitieveld.
> 2. **Eerste veld.** Plak de korte tekst die begint met "[de eerste woorden van veld 1]".
> 3. **Uploadveld.** Sleep de map Design System erin vanuit Content Studio. De map research
>    mag je weglaten, want daar staat alleen werkmateriaal van mij in. Je brandfoto's zitten
>    er verkleind in; je hoeft ze per post niet meer apart te uploaden.
> 4. **Font.** Zoek het fontveld en upload [bestandsnaam] uit de map
>    assets/templates/lettertypes/[submap]. [Eén bestand is genoeg, want je gebruikt alleen
>    het gewone gewicht / Upload elk gewicht dat je gebruikt.] [Naam van het andere font] hoef
>    je niet te uploaden, dat staat op Google Fonts.
> 5. **Notitieveld.** Plak de lange tekst die begint met "[de eerste woorden van veld 3]".
> 6. **Opslaan.** Kijk daarna wat Claude Design heeft opgepikt. Staan je kleuren er met de
>    goede hexcodes en herkent hij [kopfont] en [tekstfont]? Zo niet, zeg het hem direct in
>    het gesprek.
> 7. **Canva.** [Alleen als een font niet op Google Fonts staat:] [Font] zit niet in Canva.
>    Exporteer je naar Canva, upload dan eerst [bestandsnaam] in Canva bij Merkpakket (Brand
>    Kit), onder Fonts. Daarvoor heb je Canva Pro nodig, en je fontlicentie moet uploaden
>    toestaan. Doe je dat niet, dan zet Canva er een ander font voor in de plaats.
>
> **Testen voordat je hem echt gebruikt**
>
> 8. **Maak één proefcarrousel.** Neem een caption die je al hebt en laat de caption-skill de
>    slides en de prompt maken. Plak de prompt in Claude Design.
> 9. **Leg hem naast je eigen carrousel.** Open een van je eigen carrousels ernaast en check:
>    is de tekst even groot? Begint hij op elke tussenslide op dezelfde hoogte? Staat er
>    tussen zinnen nergens meer dan één witregel? Zijn de slides ongeveer zo vol als die van
>    jou? Staat de coverkop op twee regels, met ruimte rondom? Sta je zelf vrij in beeld, zonder
>    vlak of tekst over je heen? Staat elke opsomming heel op één slide? Zie je een verschil,
>    zeg het me dan; ik pas de map aan en jij uploadt hem opnieuw.
>
> Pas je later je layout aan, zet dan de nieuwe posts in Brand Guidelines en roep me opnieuw
> aan in Claude Code. Ik bouw de map dan opnieuw en jij uploadt hem opnieuw in Claude Design.

---

## Firecrawl installeren

Alleen na een ja op het aanbod in stap 2. Je installeert zelf; de gebruiker logt alleen in.

1. **Node.js**, de laag waar Firecrawl op draait. Controleer eerst met `node --version`; staat
   hij er al, sla dit over. Windows: `winget install --id OpenJS.NodeJS.LTS -e
   --accept-package-agreements --accept-source-agreements`. macOS met Homebrew:
   `brew install node`. Geen winget of Homebrew: geef de link nodejs.org, LTS-versie, en
   wacht. Ziet de huidige sessie Node daarna nog niet, open dan een nieuwe shell; lukt het
   dan nog niet, vraag de gebruiker de Claude-app te herstarten en de skill opnieuw aan te
   roepen.
2. **Firecrawl:** `npx -y firecrawl-cli init --all --browser`. Dat opent de browser: zeg de
   gebruiker dat ze daar een gratis account maakt of inlogt, en dat je wacht tot ze "klaar"
   zegt. Controleer daarna met `firecrawl --status` op "Authenticated".

Mislukt een installatie, zeg dan precies wat er misging en ga door zonder: schat wat
ontbreekt uit de posts en markeer het als geschat.

---

## Fase 11 - Leren

Volgens `references/memory-regels.md`, sectie `## Design System`. Maximaal drie regels, alleen
over layoutkeuzes die terugkomen ("quote-slide altijd op slide 3", "reeltekst altijd
bovenin"). Voorleggen, wegschrijven na akkoord. Weinig feedback: overslaan.

---

## Vermijd

- De gebruiker vragen om zelf iets te installeren, of iets installeren zonder ja.
- Firecrawl aanbieden als de code van de website, de Brand Kit of de fontbestanden al geven
  wat nodig is.
- Kleuren of fonts schatten terwijl ze uit de opmaakcode gelezen kunnen worden.
- Analyseren per slidenummer in plaats van per layouttype.
- De krapste waarde als limiet nemen: dan wordt elke slide zo leeg als de leegste.
- Witregels inzetten om een slide op te vullen. Een witregel hoort tussen twee gedachten,
  meer niet.
- Een limiet naar boven afronden.
- Een voorbeeldslide, een logo-variant of een template zelf tekenen of nabouwen. Kopiëren
  wat er is, meer niet.
- Algemene designregels opleggen die niet uit het materiaal van de gebruiker blijken.
- Iets wat op de posts afwisselt (afzender, foto, achtergrond) vastleggen als één vaste
  standaard.
- Een regel alleen voor carrousels schrijven terwijl hij ook voor de reelomslag geldt.
- Een tekenlimiet als harde grens neerzetten.
- Het accent maar voor één achtergrond vastleggen: op een achtergrond in de accentkleur
  verzint Claude Design dan zelf een kleur.
- Alleen "koppen op dezelfde hoogte" vastleggen zonder te zeggen wat er gebeurt bij weinig of
  veel tekst: dan centreert Claude Design per slide en springt de tekst.
- Een foto een andere naam geven dan bij de vorige bouw, of een naam hergebruiken.
- Iets in Business Brand Guidelines wijzigen, hernoemen of verplaatsen. Je kopieert eruit,
  en je zet er alleen iets bij (schermafbeeldingen, logo) als de map leeg was.
- Een leeg bestand aanmaken om de boom compleet te maken.
- Blok A in een ander format leveren dan hierboven.
- Wegschrijven zonder akkoord, of een bestaande map Design System overschrijven zonder de
  oude te bewaren.
- Bestanden uit `references/` of `scripts/` bij naam noemen in je antwoorden.

## Referentiebestanden

In `references/` naast dit bestand: `memory-regels.md`.
