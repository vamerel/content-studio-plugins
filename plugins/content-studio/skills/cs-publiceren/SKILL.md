---
name: cs-publiceren
description: >
  Puk via Composio (route B). Publiceert je geplande Instagram-posts automatisch vanuit je
  Content Calendar in Notion. Draait als geplande taak, zonder dat jij iets hoeft te doen: elke
  ochtend zet Puk de posts die af zijn van Klaar op Gepland, en op je vaste postmomenten (zelf
  te kiezen, bijvoorbeeld 08:00 en 19:00) gaat de carrousel of post live (caption uit Notion,
  slides uit je Drive-map, posten via Composio). Daarna staat hij in Notion meteen op Live met
  de link naar de post en krijg je een mail met die link. Reels plaats je zelf. Vooruit plannen
  kan op deze route niet. Kent vier modi: ochtend, publiceren, avondcheck (optioneel) en
  proefrun. Bij @puk vraagt hij welke route je gebruikt als dat niet in je Content
  Studio-README staat. TRIGGERS op @puk, @publiceren, @cs-publiceren, de oude naam
  @content-publiceren of content-publiceren, "publiceer de post van vandaag", "ochtendronde",
  "avondcheck", "proefrun publiceren", of een geplande taak die deze skill aanroept.
---

# Puk via Composio - Claude Content Studio

De Content Calendar in Notion is de planning. Instagram kan via de koppeling niet inplannen,
alleen direct publiceren. Deze skill doet dat op het geplande moment: hij leest Notion op dat
moment, dus de laatste versie van de caption en van de slides in Drive gaat mee.

De slides maakt de gebruiker in de Design Studio, een scherm in Content Studio. Die zet ze als
JPEG's in Google Drive (`Content Studio/Carrousels/JJJJ-MM-DD - haakje/01.jpg`, `02.jpg` ...,
of één bestand `Content Studio/Reelomslagen/JJJJ-MM-DD - haakje.jpg`), deelt ze, zet de link
in het linkveld (Design, in oudere kalenders Drive of Canva) en de post op Klaar.

Publiceren is openbaar en niet terug te draaien. Daarom zijn de controles hieronder hard: bij
twijfel gaat er niets live en krijgt de gebruiker een mail.

**Vragen met knoppen.** Moet de gebruiker kiezen, akkoord geven of laten weten dat iets klaar is,
stel de vraag dan met keuzeknoppen in de chat, volgens `references/vragen-met-knoppen.md`.
Laat de gebruiker niet "akkoord" of "ja" typen.

---

## @puk in een gesprek

Roept de gebruiker in een gesprek @puk aan (of "plan mijn posts in"), dan gaat het om
publiceren of inplannen, via de route die de gebruiker heeft.

1. **Welke route?** Kijk onderaan `Content Studio/README.md` (als de map aan het project
   gekoppeld is) naar de regel `Publiceren:`.
   - `Publiceren: Metricool`: ga verder met `cs-publiceren-metricool`, sectie @puk in een
     gesprek.
   - `Publiceren: Composio`: ga verder met deze skill.
   - Geen regel, of de map is er niet: vraag met knoppen "Hoe plaats je je posts?", met
     **Via Metricool (route A)** en **Via Composio (route B)**. Is er een Metricool-connector,
     zet Metricool dan voorop; anders Composio. Na het antwoord vraag je met knoppen of je de
     regel `Publiceren: Metricool` of `Publiceren: Composio` onderaan de README mag zetten.
     Gebruik de skill die bij het antwoord hoort.
2. **Omgevingscheck** stap 1 tot en met 3. Gmail en Composio zijn in een gesprek niet nodig.
3. **Klaar naar Gepland**, zoals in Modus ochtend stap 1, maar eerst tonen: per post het
   haakje, wat het wordt (Gepland, of blijft Klaar met wat ontbreekt) en `Open de slides`.
   Vraag één keer akkoord, met knoppen. Na ja zet je de statussen.
4. **Wat er live gaat:** per dag van de komende week de posts op Gepland, met het postmoment,
   en de posts zonder slides in Drive als "ontwerp ontbreekt", met de tip om de post in de
   Design Studio op Klaar te zetten. Zeg erbij dat de taak van het postmoment de post plaatst:
   vooruit plannen bij Instagram kan op deze route niet.

---

## Hoe de skill wordt aangeroepen

Meestal door een geplande taak, met een prompt als:

```
Voer @cs-publiceren uit in modus publiceren.
Postmomenten: 08:00, 19:00
Dit postmoment: 19:00
Mail naar: naam@domein.nl
Tijdzone: Europe/Amsterdam
```

Lees uit de aanroep:

| Instelling | Waarden | Standaard |
|---|---|---|
| Modus | `ochtend`, `publiceren`, `avondcheck`, `proefrun` | geen: vraag het, of stop bij een geplande taak |
| Postmomenten | alle vaste tijden waarop de gebruiker post, als `UU:MM`, gescheiden door komma's | `08:00` |
| Dit postmoment | het moment waarvoor deze run draait; alleen in modus publiceren | het eerste postmoment als er maar één is; zijn er meer en ontbreekt dit, stop dan en mail |
| Mail naar | een e-mailadres | geen: zonder adres stop je, want fouten moeten iemand bereiken |
| Tijdzone | een IANA-tijdzone | `Europe/Amsterdam` |
| Content Calendar | optioneel: een omschrijving van welke database bedoeld is, bijvoorbeeld "de database onder de pagina [naam]" | geen: dan kies je zoals beschreven in de Omgevingscheck |

Voor elk postmoment is er een eigen geplande taak. Die start een paar minuten vóór het
postmoment, zodat de post op tijd live staat. Gebruik **Dit postmoment** uit de aanroep, niet
de klok: de starttijd van een geplande taak wijkt altijd een paar minuten af.

**Vandaag en morgen** reken je altijd uit in de tijdzone uit de aanroep, niet in de tijd van
de server. De cloud draait vaak op UTC.

**Draait de skill als geplande taak, dan is er niemand om vragen aan te stellen.** Stel geen
vragen en wacht nergens op akkoord. Alles wat niet klopt, gaat in de mail.

---

## Wat deze skill niet doet

- **Geen lokale bestanden.** Niet de map Content Studio, niet MEMORY.md. Een geplande taak
  die lokale bestanden nodig heeft, draait alleen als de computer aanstaat, en deze taak moet
  ook draaien als de laptop dicht is. Alles wat de skill nodig heeft, staat in Notion, Google
  Drive en Instagram. (De README lezen in een gesprek, bij @puk, is de enige uitzondering.)
- **Geen cijfers.** Cijfers komen nooit in Notion. Content Studio haalt ze zelf op.
- **Geen slides maken of aanpassen.** Ontbreken de slides in Drive, dan meldt Puk dat; de
  gebruiker maakt ze in de Design Studio.
- **Geen tekst aanpassen.** De caption gaat letterlijk zoals hij in Notion staat. Geen
  verbeteringen, geen hashtags erbij, geen emoji's eraf.
- **Geen opties of properties aanmaken** in Notion. Ontbreekt er een status, dan stop je en
  meld je het.
- **Niet naast Metricool draaien.** Gebruikt de gebruiker Metricool om in te plannen, dan
  hoort daar de skill `cs-publiceren-metricool` bij. Draaien allebei voor dezelfde
  Content Calendar, dan staat elke post er twee keer.

---

## Omgevingscheck

Doe dit vóór alles. Faalt een stap, stuur dan één mail (zie Mails) met precies wat er
ontbreekt, en stop. Publiceer nooit met een halve omgeving.

1. **Notion:** zoek de Content Calendar op naam, met de varianten uit
   `references/notion-schema.md`, en kies de juiste database:
   - **Staat de instelling Content Calendar in de aanroep**, dan gaat die voor. Kies de
     treffer die bij die omschrijving past. Past er geen, of meer dan één, dan stop je.
   - **Zonder die instelling en met meerdere treffers:** sla elke database over met
     "template" in de naam of in het pad (de pagina's erboven), hoofdletterongevoelig. Blijft
     er precies één over, gebruik die. Blijft er meer dan één over, stop dan.
   - **Een database met "template" in de naam of het pad kies je nooit**, ook niet als hij
     als enige overblijft of bij de omschrijving lijkt te passen. Dan stop je.

   Stoppen betekent hier: publiceer niets en stuur de mail `Publiceren gestopt: welke Content
   Calendar?`. Zet daarin de gevonden databases, elk met het pad en een klikbare link "Open in
   Notion", en zeg dat de gebruiker in de taak de regel `Content Calendar:` toevoegt met een
   omschrijving van de goede database.

   Haal daarna het live schema op.
2. **Statussen en velden:** de Status-property moet de opties `Klaar`, `Gepland`, `Bezig`,
   `Live` en `Fout` hebben. Bepaal welk veld de Drive-link is en welk de postlink, volgens
   **Welk veld is de Drive-link, welk de postlink?** in `references/notion-schema.md`: met een
   URL-property `Design` (huidige template) is dat `Design` en `URL`; zonder `Design` maar met
   `Drive` is het `Drive` en `URL`; zonder beide maar met `Canva` is het `Canva` (alleen als
   veldnaam) en `URL`; bij een heel oude kopie `URL` en `Instagram`. Alleen een url-property
   telt; de status Design is geen veld. Lees `URL` nooit als Drive-link zonder deze controle.
   Overal waar hieronder "het veld Drive" of "het Drive-linkveld" staat, is dat het linkveld
   dat je hier vond. Mist er iets: noem het bij naam en zeg dat het met de hand in Notion
   toegevoegd moet worden (Bezig en Fout in de groep In progress, Live in Complete; ontbreekt
   het linkveld, dan een URL-property Design).
3. **Google Drive-connector** beschikbaar (`search_files`, `get_file_metadata`,
   `share_file`). Ontbreekt hij: "Ik heb geen verbinding met Google Drive, en daar staan je
   slides. Ga in de Claude-app naar Aanpassingen (Customize) > Connectors, zoek Google Drive en
   klik op Verbinden."
4. **Composio met een actieve Instagram-koppeling.** Zoek de Instagram-tools via
   Composio en controleer dat de verbinding actief is. Haal met `INSTAGRAM_GET_USER_INFO`
   (`ig_user_id: "me"`) het numerieke account-ID en de gebruikersnaam op. Dat ID gebruik je
   in alle volgende Instagram-calls.
5. **Gmail-connector** beschikbaar om te mailen.

In modus `avondcheck` zijn stap 3 en 4 alleen nodig voor de controles; een avondcheck mag
doorgaan zonder Instagram, maar meldt dan bovenaan de mail dat de koppeling ontbreekt en dat
de post morgen niet live kan. In modus `ochtend` is stap 4 (Composio) niet nodig.

---

## Welke rijen tellen mee

Een rij in de Content Calendar is een **kandidaat** als:

- Kanaal = `Instagram`
- Soort = `Carrousel` (ook `Carroussel`) of `Post`
- Status = `Gepland`
- Publicatiedatum is ingevuld

**Alleen carrousels en posts gaan automatisch.** Een rij met Soort `Reel` is geen kandidaat:
die plaatst de gebruiker zelf (zie Reels hieronder). Een rij met Kanaal Instagram en Status
Gepland waarvan Soort leeg is of een andere waarde heeft, gaat niet live; noem hem in de
avondmail onder Gaat morgen niet live, met de vraag Soort in te vullen.

**Bij welk postmoment hoort een rij?** Kijk naar de tijd in de Publicatiedatum, in de
tijdzone uit de aanroep:

- **Geen tijd:** het eerste postmoment van die dag.
- **Een tijd die gelijk is aan een postmoment:** dat postmoment.
- **Een andere tijd:** het eerstvolgende postmoment daarna (10:00 hoort bij 12:00).
- **Later dan het laatste postmoment:** bij geen enkel moment. De rij gaat niet live; de
  avondcheck meldt hem onder Gaat morgen niet live, met de vraag een postmoment te kiezen.

**Twee of meer kandidaten op hetzelfde postmoment:** de rij die het eerst is aangemaakt in
Notion (`createdTime`) gaat live. De andere worden **tegengehouden**: status blijft Gepland,
ze gaan niet live en ze staan in de avondmail met de vraag om een ander moment te kiezen.
Posts op verschillende postmomenten van dezelfde dag gaan allemaal.

**Reels plaatst de gebruiker zelf.** Automatisch publiceren van reels staat voorlopig uit.
Een reel met Status Gepland en een Publicatiedatum plant de gebruiker zelf in Instagram of
Edits, met de reelomslag die als JPEG in Drive staat en eventueel muziek uit Instagram. De
skill publiceert niets, zet de status niet op Bezig en ziet het niet als fout. Hij herinnert
eraan in de ochtendmail en de avondmail (zie
Zelf plaatsen) en koppelt de reel aan Notion zodra hij live staat (zie Zelf geplaatste posts
koppelen).

Een reel telt mee voor de regel van één post per postmoment: staat er op hetzelfde moment
ook een carrousel of post, dan wordt de later aangemaakte tegengehouden. Is dat de reel, dan
meldt de avondmail dat.

**Muziek uit de Instagram-bibliotheek** kan via de koppeling niet mee. Bij een carrousel kan
de gebruiker die na publicatie toevoegen via Bewerken in de Instagram-app.

---

## Controles per post

Doe deze controles in deze volgorde. Faalt er één, dan gaat de post niet live.

1. **Slides in Drive.** Het Drive-linkveld (zie de Omgevingscheck) bevat een link naar
   drive.google.com. Haal het id uit de link: bij een map staat het na `/folders/`, bij een
   bestand na `/file/d/` of na `id=`. Is het geen Drive-link (bijvoorbeeld een Canva-link (canva.com of canva.link)
   bij een oudere post), dan gaat de post niet live: "ontwerp ontbreekt". De gebruiker zet de
   post in de Design Studio op Klaar; dan komt de Drive-link er vanzelf in.
   - **Carrousel** (de link wijst naar een map): zoek de slides met `search_files`, query
     `parentId = '<map-id>' and mimeType = 'image/jpeg' and trashed = false`. Sorteer op
     bestandsnaam: 01.jpg, 02.jpg ... is de volgorde van de slides. Er moeten 2 tot en met 10
     JPEG's zijn; Instagram accepteert via de koppeling niet meer dan 10.
   - **Post met één afbeelding** (de link wijst naar een bestand): `get_file_metadata` met het
     id; het bestand is een JPEG (`image/jpeg`). Wijst de link naar een map met precies één
     JPEG, gebruik die.
   - **Reel:** de skill publiceert hem niet, dus deze controle vervalt. De reelomslag is één
     JPEG in Drive; die gebruikt de gebruiker zelf.
2. **Gedeeld met iedereen met de link.** De map (carrousel) of het bestand (post) moet gedeeld
   zijn met iedereen met de link, als lezer. Anders kan Instagram de slides niet ophalen.
   Controleer het met `get_file_metadata` met `includeRichMetadata: true` (veld `visibility`
   is `anyoneWithLink` of `anyone`), of met `search_files` en `visibility = 'anyoneWithLink'`.
   Is hij niet gedeeld, deel hem dan met `share_file`: `fileId` het map- of bestands-id,
   `permissionId` `anyoneWithLink`, `role` `reader`. In modus proefrun deel je niets: meld
   alleen dat een echte run hem deelt. Lukt delen niet: de post gaat niet live.
3. **Caption.** Haal de pagina op met `notion-fetch`. De caption is de tekst binnen het
   codeblok in de body (zie `references/pagina-opbouw.md`). Staan er meerdere codeblokken,
   neem dan het laatste. Geen codeblok: oudere pagina's kunnen `## Caption` als kopje
   hebben; neem dan de tekst tussen dat kopje en het volgende `##`. Niets gevonden: geen
   caption, de post gaat niet live.
4. **Lengte.** Maximaal 2200 tekens en maximaal 30 hashtags. Tel tekens zoals Instagram:
   elk teken en elke emoji telt. Bij een reel gelden controle 3 en 4 in de avondcheck wel,
   want de gebruiker plakt die caption straks zelf.
5. **Nog niet live.** Het postlinkveld is leeg, en ook het Drive-linkveld bevat geen
   instagram.com-link (oudere rijen). Staat er al een Instagram-link, dan is de post al
   geplaatst: zet de status op Live en sla hem over.

---

## Zelf geplaatste posts koppelen

Doe dit aan het begin van de modus publiceren en van de avondcheck. Zo komen ook posts die
de gebruiker zelf plaatste (reels uit Edits, posts met Instagram-muziek) op Live in Notion.

1. Haal de posts van de laatste drie dagen op met `INSTAGRAM_GET_IG_USER_MEDIA` (velden
   `id,caption,permalink,timestamp,media_product_type`).
2. Sla posts over waarvan de permalink al in het postlinkveld van een rij staat.
3. Zoek voor elke overgebleven post een rij met Kanaal Instagram en Status Gepland of Klaar
   waarvan de caption (de tekst in het codeblok) met dezelfde eerste zestig tekens begint,
   of waarvan de Hook gelijk is aan de eerste regel van de caption. Vergelijk
   hoofdletterongevoelig, zonder emoji's en zonder leestekens aan het eind.
4. **Precies één match:** zet die rij op Live en zet de permalink in het postlinkveld. Wijkt de
   datum van de post af van de Publicatiedatum, zet dan de datum van de post erin.
5. **Geen match of meer dan één:** niets wijzigen. Noem de post in de avondmail onder
   Aandacht nodig, met de link, zodat de gebruiker hem zelf kan koppelen.

---

## Modus ochtend

De ochtendronde van Puk, één keer per dag (standaard 07:00, vóór het eerste postmoment):

```
Voer @cs-publiceren uit in modus ochtend.
Mail naar: naam@domein.nl
Tijdzone: Europe/Amsterdam
```

Niemand kijkt mee: geen vragen, alles wat aandacht nodig heeft gaat in de mail. Cijfers doet
de ochtendronde niet: die haalt Content Studio zelf op.

### 1. Klaar naar Gepland

Zoek de rijen met Kanaal Instagram en Status `Klaar`. Zet een rij op **Gepland** als hij
compleet is:

- een Publicatiedatum;
- een Drive-link met slides (controle 1: bij een carrousel 2 tot en met 10 JPEG's in de map,
  bij een post of reel één JPEG);
- een caption in een codeblok (controle 3);
- geen regel met `[VUL AAN` in de caption.

Is de map of het bestand nog niet gedeeld met iedereen met de link, deel hem dan (controle 2).
Mist er iets, laat de rij dan op Klaar en zet hem in de mail onder **Blijft op Klaar**, met
wat er mist. Een rij op Klaar zonder Publicatiedatum is gewoon nog niet ingepland: noem hem
alleen als er ook iets anders mist.

Wijzig niets anders dan de status: geen Hook, geen caption, geen links.

### 2. Ontwerp ontbreekt

Zoek de rijen met Kanaal Instagram, Status `Gepland` of `Bezig` en een Publicatiedatum binnen
drie dagen (vandaag meegeteld) die geen slides in Drive hebben: het Drive-linkveld is leeg,
het is geen Drive-link (bijvoorbeeld nog een Canva-link (canva.com of canva.link)), of de map is leeg. Zet ze in de
mail onder **Ontwerp ontbreekt**, met de tip: "Maak de slides in de Design Studio en zet de
post daar op Klaar." De status pas je niet aan: op het postmoment zet de modus publiceren hem
op `Fout`.

### 3. Reels van vandaag

Zoek de reels met Status Gepland en Publicatiedatum vandaag. Ze komen in de mail onder **Zelf
plaatsen**, met de stappen (zie Mails). Wijzig de status niet.

### 4. Mail

Eén mail, alleen als er iets in staat. Onderwerp: `Puk: [aantal] gepland, [aantal] vragen
aandacht`, of `Puk: reels van vandaag` als er alleen reels zijn. De opmaak staat onder Mails,
bij Ochtendmail.

---

## Modus publiceren

Bedoeld voor de taak van een postmoment. Elk postmoment heeft een eigen taak.

### 1. Eerst opruimen

Staat er nog een rij op `Bezig`, dan is een eerdere run halverwege gestopt. Publiceer die
**nooit** opnieuw zonder te controleren:

1. Haal de laatste 10 posts van het account op met `INSTAGRAM_GET_IG_USER_MEDIA` (velden
   `id,caption,permalink,timestamp`).
2. Begint een van die captions met dezelfde eerste zestig tekens als de caption van de rij:
   de post staat er al. Zet de rij op Live met die permalink (zie stap 4).
3. Staat hij er niet tussen: zet de rij op `Fout` en mail. Niet opnieuw proberen; dat
   beslist de gebruiker.

### 2. Kandidaten van dit postmoment

Zoek de kandidaten met Publicatiedatum = vandaag die bij **dit postmoment** horen. Geen
kandidaten: stop, zonder mail. Meerdere: alleen de eerste gaat live, de rest wordt
tegengehouden (zie boven).

Kandidaten met een datum vóór vandaag, of van vandaag bij een eerder postmoment, zijn
**gemist** (die taak draaide niet, of ze werden tegengehouden). Publiceer ze niet. Ze komen in
de avondmail. Kandidaten van een later postmoment van vandaag laat je met rust; die pakt de
taak van dat moment.

### 3. Controleren en klaarzetten

Doe de controles per post. Faalt er een: status `Fout`, mail meteen met de reden, stop.

Slaagt alles: zet de status op **`Bezig`**, vóór je iets naar Instagram stuurt. Zo kan een
tweede run dezelfde post nooit nog een keer plaatsen.

### 4. Slides ophalen en publiceren

Lees de slides pas nu uit Drive (controle 1), zodat de laatste versie meegaat. Instagram haalt
elke slide zelf op via een directe link:

```
https://lh3.googleusercontent.com/d/<bestands-id>
```

Lukt het niet met die link (de container komt op ERROR met een melding over de afbeelding),
gebruik dan als terugval `https://drive.google.com/uc?export=download&id=<bestands-id>`. Beide
zijn getest op 14 november 2026. Probeer de terugval alleen met een nieuwe container, nooit
door een container op ERROR te publiceren.

**Carrousel**

1. Per slide, in naamvolgorde (01.jpg, 02.jpg ...), de directe link.
2. `INSTAGRAM_CREATE_CAROUSEL_CONTAINER` met `ig_user_id`, `caption` en
   `child_image_urls` (de links, in volgorde).
3. `INSTAGRAM_POST_IG_USER_MEDIA_PUBLISH` met `ig_user_id` en `creation_id` (het ID uit
   stap 2).

**Post met één afbeelding**

1. De directe link van de JPEG.
2. `INSTAGRAM_POST_IG_USER_MEDIA` met `ig_user_id`, `image_url` en `caption`.
3. `INSTAGRAM_POST_IG_USER_MEDIA_PUBLISH`.

**Reel:** niets publiceren. Zet de status niet op Bezig. De reel blijft op Gepland tot hij
live staat en gekoppeld wordt.

**De caption** geef je letterlijk door, zoals hij in Notion staat, met dezelfde witregels.

**Bij een fout van Instagram:** maak nooit twee keer een publicatie aan voor dezelfde post.
Een container die op ERROR staat, publiceer je niet opnieuw. Zet de rij op `Fout` en mail
de foutmelding van Instagram letterlijk mee.

### 5. Live zetten

1. Haal de gepubliceerde post op met `INSTAGRAM_GET_IG_MEDIA` (velden
   `id,permalink,timestamp`).
2. Werk de rij in Notion bij: Status `Live`, en de permalink in het postlinkveld (`URL`, in
   de API `userDefined:URL`; in een heel oude kalender `Instagram`). De Drive-link blijft
   staan, zodat de slides vanuit Feed View in je Content Studio te openen blijven. Schrijf de
   permalink nooit in het Drive-linkveld. Publicatiedatum blijft staan. Andere velden
   ongewijzigd.

Lukt het bijwerken in Notion niet, maar staat de post wel live: mail dat met de permalink,
zodat de gebruiker de rij zelf op Live kan zetten. Zet hem niet terug op Gepland.

### 6. Mail dat hij live staat

Staat de post live en is Notion bijgewerkt, stuur dan één korte mail met het onderwerp
`Live op Instagram: [haakje]`. De opmaak staat onder Mails, bij Live-mail.

---

## Modus avondcheck

Bedoeld voor de avondtaak: standaard om 20:00, altijd na het laatste postmoment. Controleert
wat morgen live gaat, en verstuurt alleen een
mail als er iets te melden is.

1. Zoek de rijen met Kanaal Instagram, Status Gepland en Publicatiedatum = morgen: de
   kandidaten (Carrousel en Post), de reels, en rijen zonder bruikbare Soort. Bepaal per rij
   bij welk postmoment hij hoort.
2. Doe voor elke kandidaat de controles 1 tot en met 5: de slides in Drive tellen, delen als
   dat nog niet gebeurd is, caption en lengte. Voor een reel alleen controle 3 en 4.
3. Zoek ook wat aandacht nodig heeft:
   - rijen op `Fout`
   - rijen op `Bezig`
   - **gemiste** kandidaten: Status Gepland met een datum vóór vandaag, of van vandaag met
     een postmoment dat al voorbij is (die is niet live gegaan). Een reel van vandaag die nog
     niet gekoppeld is, noem je als herinnering, niet als gemist: de gebruiker kan hem later
     op de avond plaatsen.

**Stuur geen mail** als er morgen niets gepland staat (automatisch of zelf) en niets
aandacht nodig heeft.

Anders één mail. De opmaak staat onder Mails, bij Avondmail. Wat erin komt, in deze volgorde:

1. **Morgen op Instagram:** per postmoment, op volgorde van tijd, de post die live gaat. Geen
   caption: die staat al in Notion.
2. **Tegengehouden:** staan er morgen meer posts op hetzelfde postmoment, de posts die niet
   live gaan, met de vraag ze een ander moment of een andere datum te geven.
3. **Gaat morgen niet live:** posts van morgen die een controle niet halen, met de reden in
   gewone taal en wat de gebruiker moet doen ("de caption is 2.340 tekens, haal er 140 af in
   Notion").
4. **Zelf plaatsen:** de reels van morgen, met de stappen om ze zelf te plaatsen.
5. **Aandacht nodig:** Fout, Bezig, gemist, en zelf geplaatste posts die niet gekoppeld
   konden worden, met per rij wat er aan de hand is.

Een kopje zonder inhoud laat je weg.

---

## Modus proefrun

Om te testen. Doet alles van de modus publiceren, behalve iets naar Instagram sturen en iets
in Notion wijzigen.

1. Neem de kandidaten van vandaag, met per kandidaat het postmoment waarbij hij hoort. Zijn
   die er niet, neem dan de eerstvolgende geplande datum en zeg dat erbij.
2. Doe de controles. Deel niets in Drive; meld alleen of een echte run moet delen.
3. Zet per slide de directe link klaar (zie Modus publiceren, stap 4) en controleer dat de
   links bereikbaar zijn.
4. Haal het Instagram-account op, maar maak **geen** container aan en publiceer niets.
5. Kijk ook welke posts de modus ochtend van Klaar op Gepland zou zetten, en welke onder
   Ontwerp ontbreekt zouden komen.
6. Stuur één mail met het onderwerp `Proefrun publiceren`, in de opmaak onder Mails. Daarin:
   welke post het zou zijn, de uitkomst van elke controle, het aantal slides in Drive, wat de
   ochtendronde zou doen, en een voorbeeld van de Live-mail zoals die bij een echte run
   verstuurd zou worden (met "Bekijk je post op Instagram" als tekst zonder link, want de post
   bestaat nog niet).

Wordt de proefrun in een gesprek gestart in plaats van door een geplande taak, toon dan
hetzelfde verslag ook in het gesprek.

---

## Mails

Altijd via Gmail, naar het adres uit de aanroep, in het Nederlands en in de je-vorm. De
mails worden op de telefoon gelezen: in één oogopslag zie je welke post wanneer live gaat, en
met één tik ben je in Notion, bij je slides in Drive of op Instagram.

### Opmaak

- **Altijd twee versies:** eenvoudige HTML in `htmlBody` en een platte-tekstversie in `body`.
- **HTML:** alleen eenvoudige tags (`<p>`, `<b>`, `<a>`, `<br>`, `<ol>`, `<li>`), geen
  tabellen, geen kleuren, geen stylesheets. Kopjes zijn vetgedrukt (`<b>`).
- **Links zijn klikbare tekst**, nooit een kale URL in de HTML-versie. Gebruik altijd deze
  teksten: `Open in Notion`, `Open de slides` (de Drive-link), `Bekijk je post op Instagram`.
  Twee links naast elkaar scheid je met ` | `.
- **In de platte-tekstversie** staat dezelfde tekst, met de URL achter de linktekst:
  `Open in Notion: https://...`.
- **Het haakje** staat altijd op een eigen regel achter 🪝.
- **Alleen informatie over de post en wat de gebruiker moet doen.** Geen uitleg over hoe de
  run werkt, waarom een post bij een postmoment hoort, of welke stappen de skill heeft gezet.

### Live-mail

```
<b>[haakje]</b>
Live om [tijd]
[Soort], [n] slides
Bekijk je post op Instagram | Open in Notion
Wil je muziek? Voeg die nu toe via Bewerken in de Instagram-app.   (alleen bij een carrousel)
```

Meer niet. Bij een post met één afbeelding laat je "[n] slides" weg.

### Ochtendmail

Alleen de kopjes die inhoud hebben, vetgedrukt, in deze volgorde:

```
<b>Gepland</b>
🪝 [haakje]
[Soort], [dag en datum] om [postmoment]
Open in Notion | Open de slides

<b>Blijft op Klaar</b>
🪝 [haakje]
[wat mist, in gewone taal: "er staat nog geen publicatiedatum", "de caption heeft nog een regel [VUL AAN"]
Open in Notion

<b>Ontwerp ontbreekt</b>
🪝 [haakje]
Gaat [dag en datum] live en heeft nog geen slides in Drive. Maak ze in de Design Studio en zet de post daar op Klaar.
Open in Notion
```

Daarna **Zelf plaatsen** met de reels van vandaag, zoals bij de Avondmail, met "vandaag" in
plaats van "morgen".

### Avondmail

Per post die morgen live gaat, in deze volgorde:

```
<b>Morgen op Instagram om [postmoment]</b>
🪝 [haakje]
[Soort], [n] slides
Open in Notion | Open de slides
Wil je hem tegenhouden? Zet hem in Feed View in je Content Studio of in Notion terug op Klaar.
Wil je muziek? Voeg die na [postmoment] toe via Bewerken in de Instagram-app.   (alleen bij een carrousel)
```

Daarna alleen de kopjes die inhoud hebben, vetgedrukt: **Tegengehouden**, **Gaat morgen niet
live**, **Zelf plaatsen**, **Aandacht nodig**. Elke rij daaronder heeft 🪝 met het haakje,
in één korte zin wat er speelt of wat de gebruiker moet doen, en de klikbare links (`Open in
Notion`, en waar dat helpt `Open de slides` of `Bekijk je post op Instagram`).

Bij **Zelf plaatsen** krijgt elke reel deze stappen:

```
🪝 [haakje]
Reel, morgen om [postmoment]
Open in Notion
1. Open de Notion-pagina en kopieer de caption.
2. De reelomslag staat in Drive: [link als klikbare tekst "Open de reelomslag"]. Zet hem op je telefoon.
3. Plaats je video in Instagram of Edits.
4. Voeg de reelomslag toe.
5. Plak je caption.
```

Staat er geen Drive-link, laat dan stap 2 weg en zeg dat de reelomslag nog niet in Drive
staat: "Maak hem in de Design Studio en zet de post daar op Klaar." Zodra de reel live staat,
koppelt de skill hem vanzelf in Notion.

### Proefrunmail

Dezelfde opmaak. Per post: het haakje, het postmoment, de uitkomst van elke controle in één
korte regel, het aantal slides in Drive, de links, en daaronder onder het vetgedrukte
kopje **Zo ziet je Live-mail eruit** de Live-mail zoals hij bij een echte run verstuurd zou
worden.

### Onderwerpen

| Wanneer | Onderwerp |
|---|---|
| Omgevingscheck faalt | `Publiceren gestopt: [wat ontbreekt]` |
| Ochtendronde | `Puk: [aantal] gepland, [aantal] vragen aandacht`, of `Puk: reels van vandaag` |
| Post gaat niet live (controle of Instagram-fout) | `Niet geplaatst: [haakje]` |
| Post staat live en Notion is bijgewerkt | `Live op Instagram: [haakje]` |
| Post staat live, Notion niet bijgewerkt | `Geplaatst, maar Notion niet bijgewerkt: [haakje]` |
| Avondcheck | `Morgen op Instagram: [haakje]` (bij meer posts: het haakje van de eerste, plus "en [n] meer"), of `Contentplanning: aandacht nodig` als er morgen niets live gaat |
| Proefrun | `Proefrun publiceren` |

Een foutmail (gestopt, niet geplaatst, Notion niet bijgewerkt) noemt in gewone taal wat er
met de post aan de hand is en wat de gebruiker moet doen, met `Open in Notion`. Foutmeldingen
van Instagram of Google Drive komen letterlijk onder het vetgedrukte kopje **Technische melding**,
na de uitleg.

Schrijfregels: geen em-dashes, geen jargon zonder uitleg, geen "Helaas".

---

## Vermijd

- Een post publiceren die een controle niet haalt, ook niet als de fout klein lijkt.
- Een post twee keer publiceren. Bij twijfel: Fout en mail.
- Een gemiste post alsnog publiceren.
- De caption aanpassen.
- Vragen stellen of op akkoord wachten tijdens een geplande taak.
- Lokale bestanden lezen of schrijven.
- Een nieuwe status, optie of property aanmaken.
- Bestanden uit `references/` bij naam noemen in mails of antwoorden.
- Een kale URL in de HTML-versie van een mail, of de caption in de avondmail.
- Een database met "template" in de naam of het pad als Content Calendar gebruiken.
- `URL` lezen als Drive-link of `Instagram` als postlink zonder te kijken of er een property
  `Design`, `Drive` of `Canva` is.
- Slides uit een andere bron dan de Drive-map halen, of een Canva-link (canva.com of canva.link) gebruiken.
- Een post op Gepland zetten zonder Publicatiedatum, zonder slides in Drive of met een
  `[VUL AAN`-regel.
- In de ochtendronde iets anders wijzigen dan de status.

## Referentiebestanden

In `references/` van deze plugin, twee niveaus boven deze skill: `notion-schema.md`,
`pagina-opbouw.md`, `content-studio-afspraken.md` (sectie 6 en 7: Drive en Notion).
