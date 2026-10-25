---
name: content-publiceren-metricool
description: >
  Zet je geplande Instagram-posts vanuit je Content Calendar in Notion in via Metricool, op de
  minuut die jij in Notion kiest (bijvoorbeeld 14:30). Draait als geplande taak, zonder dat jij
  iets hoeft te doen: elke ochtend gaan de carrousels en posts van vandaag naar Metricool
  (caption uit Notion, slides uit Canva), Metricool plaatst ze zelf op het tijdstip, en een
  tweede run 's avonds zet geplaatste posts in Notion op Live met de Instagram-link. Je
  krijgt mails over wat is ingepland en wat live staat. Reels plaats je zelf. In een gesprek
  plant hij op verzoek ook posts van later in de week meteen in. Kent vier modi: inplannen,
  avondcheck, proefrun en vooruit. Voor wie Metricool gebruikt; zonder Metricool is er de
  skill content-publiceren. TRIGGERS op @publiceren-metricool,
  @content-publiceren-metricool, "plan mijn posts in via Metricool", "plan ze ook in
  Metricool", "avondcheck Metricool", "proefrun Metricool", "pas aan in Metricool", of een
  geplande taak die deze skill aanroept.
---

# Publiceren via Metricool - Claude Content Studio

De Content Calendar in Notion is de planning. Metricool is de klok: de skill zet de post met
datum en tijd in Metricool, en Metricool plaatst hem zelf via Instagram op dat moment. Er
draait op het postmoment dus geen Claude-taak. De skill draait twee keer per dag: 's ochtends
om in te plannen, 's avonds om te controleren wat er live staat. In een gesprek kan de
gebruiker posts ook eerder laten inplannen (Modus vooruit).

Een post in Metricool plaatsen is openbaar en niet terug te draaien zodra hij live is.
Daarom zijn de controles hieronder hard: bij twijfel wordt er niets ingepland en krijgt de
gebruiker een mail.

**Gebruik één route.** Draait ook de skill `content-publiceren` (Composio) voor dezelfde
Content Calendar, dan staat elke post er twee keer. Zeg dat bij de proefrun, als je beide
skills ziet.

---

## Hoe de skill wordt aangeroepen

Meestal door een geplande taak, met een prompt als:

```
Voer @content-publiceren-metricool uit in modus inplannen.
Mail naar: naam@domein.nl
Tijdzone: Europe/Amsterdam
Standaardtijd: 12:00
Ochtendrun: 07:00
```

Lees uit de aanroep:

| Instelling | Waarden | Standaard |
|---|---|---|
| Modus | `inplannen`, `avondcheck`, `proefrun`, `vooruit` | geen: vraag het, of stop bij een geplande taak. "Plan ze ook in Metricool" in een gesprek is `vooruit` |
| Mail naar | een e-mailadres | geen: zonder adres stop je, want fouten moeten iemand bereiken. In modus `vooruit` niet nodig: je meldt in het gesprek |
| Tijdzone | een IANA-tijdzone | `Europe/Amsterdam` |
| Standaardtijd | `UU:MM`: het tijdstip voor een post waarbij in Notion alleen een datum staat | `12:00` |
| Ochtendrun | `UU:MM`: de starttijd van de ochtendtaak; alleen de avondcheck gebruikt hem | `07:00` |
| Metricool-merk | de naam van het merk in Metricool, alleen nodig bij meer dan één merk | geen |
| Content Calendar | optioneel: een omschrijving van welke database bedoeld is, bijvoorbeeld "de database onder de pagina [naam]" | geen: dan kies je zoals beschreven in de Omgevingscheck |

**Vandaag, morgen en de huidige tijd** reken je altijd uit in de tijdzone uit de aanroep, niet
in de tijd van de server. De cloud draait vaak op UTC. Vraag de huidige tijd op met een
commando (bijvoorbeeld `TZ=Europe/Amsterdam date`) in plaats van te schatten.

**Draait de skill als geplande taak, dan is er niemand om vragen aan te stellen.** Stel geen
vragen en wacht nergens op akkoord. Alles wat niet klopt, gaat in de mail.

In een gesprek (zonder geplande taak) mag je wel vragen stellen, en gelden de regels onder
Aanpassen in een gesprek.

---

## Wat deze skill niet doet

- **Geen lokale bestanden.** Niet de map Content Studio, niet MEMORY.md. Een geplande taak
  die lokale bestanden nodig heeft, draait alleen als de computer aanstaat, en deze taak moet
  ook draaien als de laptop dicht is. Alles wat de skill nodig heeft, staat in Notion, Canva
  en Metricool.
- **Geen tekst aanpassen.** De caption gaat letterlijk zoals hij in Notion staat. Geen
  verbeteringen, geen hashtags erbij, geen emoji's eraf.
- **Geen opties of properties aanmaken** in Notion. Ontbreekt er een status, dan stop je en
  meld je het.
- **Geen concepten of testposts maken in Metricool.** Een post is via de koppeling niet te
  verwijderen. Alleen wat echt moet plaatsen, maak je aan.
- **Geen reels plaatsen.** Die zet de gebruiker zelf.
- **Geen andere netwerken.** Alleen Instagram, ook als Metricool er meer heeft gekoppeld.

---

## Omgevingscheck

Doe dit vóór alles. Faalt een stap, stuur dan één mail (zie Mails) met precies wat er
ontbreekt, en stop. Plan nooit in met een halve omgeving.

1. **Notion:** zoek de Content Calendar op naam, met de varianten uit
   `references/notion-schema.md`, en kies de juiste database:
   - **Staat de instelling Content Calendar in de aanroep**, dan gaat die voor. Kies de
     treffer die bij die omschrijving past. Past er geen, of meer dan één, dan stop je.
   - **Zonder die instelling en met meerdere treffers:** sla elke database over met
     "template" in de naam of in het pad (de pagina's erboven), hoofdletterongevoelig. Blijft
     er precies één over, gebruik die. Blijft er meer dan één over, stop dan.
   - **Een database met "template" in de naam of het pad kies je nooit**, ook niet als hij
     als enige overblijft of bij de omschrijving lijkt te passen. Dan stop je.

   Stoppen betekent hier: plan niets in en stuur de mail `Publiceren gestopt: welke Content
   Calendar?`. Zet daarin de gevonden databases, elk met het pad en een klikbare link "Open in
   Notion", en zeg dat de gebruiker in de taak de regel `Content Calendar:` toevoegt met een
   omschrijving van de goede database.

   Haal daarna het live schema op.
2. **Statussen en velden:** de Status-property moet de opties `Gepland`, `Bezig`, `Live` en
   `Fout` hebben, en Publicatiedatum moet een datumveld zijn. Bepaal welk veld de Canva-link
   is en welk de postlink, volgens **Welk veld is de Canva-link, welk de postlink?** in
   `references/notion-schema.md`: met een URL-property `Canva` is dat `Canva` en `URL`,
   zonder `Canva` is het `URL` en `Instagram`. Lees `URL` nooit als Canva-link zonder deze
   controle. Mist er iets: noem het bij naam en zeg dat het met de hand in Notion toegevoegd
   moet worden (Bezig en Fout in de groep In progress, Live in Complete; ontbreekt het
   postlinkveld, dan een URL-property Canva voor de Canva-links, zodat de postlink in URL
   komt).
3. **Metricool-connector** beschikbaar. Haal met `getBrandSettings` de merken op. Kies het
   merk waar Instagram aan gekoppeld is (`networksData.instagramData` is gevuld). Is dat er
   precies één, gebruik dat. Zijn het er meer: gebruik het merk uit de instelling
   Metricool-merk; ontbreekt die of past er geen, dan stop je en noem je de merken in de mail.
   Is er geen merk met Instagram: stop, en zeg dat Instagram in Metricool gekoppeld moet
   worden. Onthoud het `id` van het merk: dat is de `blogId` voor alle Metricool-calls.
4. **Canva-connector** beschikbaar (`resolve-shortlink`, `get-export-formats`,
   `export-design`).
5. **Gmail-connector** beschikbaar om te mailen.

Composio is voor deze skill niet nodig.

In modus `avondcheck` zijn stap 4 alleen nodig voor het inplannen van vroege posts van
morgen (zie Modus avondcheck). Ontbreekt Canva, dan slaat de avondcheck dat over en meldt het
in de mail.

---

## Welke rijen tellen mee

Een rij in de Content Calendar is een **kandidaat** als:

- Kanaal = `Instagram`
- Soort = `Carrousel` (ook `Carroussel`) of `Post`, of `Story` als die optie in de database
  bestaat (zie Stories)
- Status = `Gepland`
- Publicatiedatum is ingevuld

**Alleen carrousels, posts en stories gaan automatisch.** Een rij met Soort `Reel` is geen
kandidaat: die plaatst de gebruiker zelf (zie Reels hieronder). Een rij met Kanaal Instagram
en Status Gepland waarvan Soort leeg is of een andere waarde heeft, wordt niet ingepland;
noem hem in de mail onder Niet ingepland, met de vraag Soort in te vullen.

**Welk tijdstip hoort bij een rij?** Kijk naar de tijd in de Publicatiedatum, in de tijdzone
uit de aanroep:

- **Een datum met tijd:** precies die tijd. 14:30 is 14:30, niet het dichtstbijzijnde uur.
- **Alleen een datum, geen tijd:** de Standaardtijd uit de aanroep.

**Twee of meer kandidaten op precies dezelfde tijd:** dat mag in Metricool, maar Instagram
plaatst ze dan vlak na elkaar. Plan ze allemaal in en zeg het in de mail onder Aandacht nodig,
zodat de gebruiker kan kiezen.

**Reels plaatst de gebruiker zelf.** Automatisch plaatsen van reels staat voorlopig uit. Een
reel met Status Gepland en een Publicatiedatum plant de gebruiker zelf in Instagram of Edits,
met een eigen omslag en eventueel muziek uit Instagram. De skill plant niets in, zet de
status niet op Bezig en ziet het niet als fout. Hij herinnert eraan in de ochtendmail (zie
Zelf plaatsen).

**Muziek uit de Instagram-bibliotheek** kan niet mee. Bij een carrousel kan de gebruiker die
na publicatie toevoegen via Bewerken in de Instagram-app.

**Links, vermeldingen en stickers in een Story** kan Instagram niet automatisch plaatsen.
Metricool stuurt zo'n Story als melding naar de telefoon van de gebruiker, die hem zelf
afmaakt. Plan alleen stories in die een afbeelding zijn, zonder stickers.

---

## Controles per post

Doe deze controles in deze volgorde. Faalt er één, dan wordt de post niet ingepland.

1. **Canva-link.** Het Canva-linkveld (`Canva`, of `URL` in een oudere kalender, zie de
   Omgevingscheck) bevat een link naar canva.link of canva.com/design. Een
   shortlink (`canva.link/<id>`) zet je om met `resolve-shortlink`; het ontwerp-ID begint
   met `D` en staat na `/design/`.
2. **Caption** (niet bij een Story). Haal de pagina op met `notion-fetch`. De caption is de
   tekst binnen het codeblok in de body (zie `references/pagina-opbouw.md`). Staan er
   meerdere codeblokken, neem dan het laatste. Geen codeblok: oudere pagina's kunnen
   `## Caption` als kopje hebben; neem dan de tekst tussen dat kopje en het volgende `##`.
   Niets gevonden: geen caption, de post wordt niet ingepland.
3. **Lengte.** Maximaal 2200 tekens en maximaal 30 hashtags. Tel tekens zoals Instagram:
   elk teken en elke emoji telt.
4. **Formaat in Canva.** Vraag de exportformaten op met `get-export-formats`.
   - **Carrousel** (Soort Carroussel of Carrousel, of meer dan één pagina): `jpg` moet
     beschikbaar zijn. 2 tot en met 10 pagina's.
   - **Post** met één pagina: `jpg` moet beschikbaar zijn.
   - **Story:** `jpg` moet beschikbaar zijn, één pagina.
5. **Nog niet gepubliceerd.** Het postlinkveld is leeg, en ook het Canva-linkveld bevat geen
   instagram.com-link (oudere rijen). Staat er al een Instagram-link, dan is de post al
   geplaatst: zet de status op Live en sla hem over.
6. **Tijd in de toekomst.** Het tijdstip van de post ligt minstens 10 minuten na het moment
   van de run. Metricool weigert een tijdstip in het verleden, en een post vlak voor het
   moment is te riskant. Ligt het tijdstip eerder, dan is de post **gemist**: plan hem niet in,
   zet de status op `Fout` en mail met de reden en wat de gebruiker moet doen (een nieuwe
   tijd kiezen in Notion en de status terugzetten op Gepland).
7. **Nog niet in Metricool.** Haal met `getScheduledPosts` de posts van `datum min één dag`
   tot `datum plus één dag` op (merk, tijdzone uit de aanroep). Staat er al een Instagram-post
   waarvan de caption met dezelfde eerste zestig tekens begint (bij een Story: dezelfde tijd
   en hetzelfde type STORY), dan is hij al ingepland. Plan hem niet nog een keer in; zet de
   rij op `Bezig` en ga verder bij Bevestigen.

---

## Bevestigen wat Metricool plaatste

Doe dit aan het begin van elke run, in alle modi behalve proefrun (die rapporteert alleen).
Zo komen posts op Live in Notion, ook als de run van gisteren al klaar was. Het geldt voor
elke rij op `Bezig`, welke dag hij ook heeft: ook posts die met Modus vooruit voor later in de
week zijn ingepland.

1. Zoek alle rijen met Kanaal Instagram en Status `Bezig`. Geen rijen: sla deze stap over.
2. Haal met `getScheduledPosts` de posts op van de oudste datum van die rijen min één dag tot
   de nieuwste datum plus één dag, en minstens tot morgen (merk, tijdzone uit de aanroep). De
   lijst bevat ook posts die al gepubliceerd zijn. Een post die vooruit is ingepland voor
   vrijdag, staat er zo ook tussen.
3. Zoek per rij de bijbehorende post: caption met dezelfde eerste zestig tekens (bij een
   Story: dezelfde tijd en type STORY). Kijk naar de provider met `network` gelijk aan
   `instagram`.

| Metricool zegt | Wat jij doet |
|---|---|
| `PUBLISHED`, met een `publicUrl` | Status `Live`, `publicUrl` in het postlinkveld (`URL`, in de API `userDefined:URL`; in een oudere kalender `Instagram`). De Canva-link en de Publicatiedatum blijven staan. Voeg de post toe aan de Live-mail. |
| `PENDING` of `PUBLISHING`, en het tijdstip ligt in de toekomst of minder dan 15 minuten geleden | Niets. Hij komt nog. |
| `PENDING` of `PUBLISHING`, maar het tijdstip is meer dan 15 minuten geleden | Status blijft `Bezig`. Noem de post in de mail onder Aandacht nodig, met de link naar Metricool. |
| Een andere status (een fout) | Status `Fout`. Mail de `detailedStatus` letterlijk onder Technische melding. Voeg toe: zit je op je maandlimiet? Het gratis plan van Metricool plaatst 20 berichten per maand. |
| De post staat er niet (meer) en het tijdstip ligt in de toekomst | Zet de status terug op `Gepland`: de rij wordt weer een kandidaat en de controles beslissen. Doordat Controle 7 dubbel plaatsen voorkomt, is dit veilig. |
| De post staat er niet (meer) en het tijdstip is voorbij | Status `Fout`. Mail dat de post niet in Metricool staat en dus mogelijk niet geplaatst is, met `Open in Notion`. Laat de gebruiker in Instagram kijken. |

Lukt het bijwerken van Notion niet, maar staat de post wel live: mail dat met de link, zodat
de gebruiker de rij zelf op Live kan zetten. Zet hem niet terug op Gepland of Bezig.

---

## Modus inplannen

Bedoeld voor de ochtendtaak (standaard 07:00).

### 1. Bevestigen

Doe eerst het onderdeel Bevestigen hierboven.

### 2. Kandidaten

Zoek de kandidaten met Publicatiedatum = vandaag. Alleen rijen op `Gepland` zijn kandidaat:
een rij op `Bezig` staat al in Metricool (bijvoorbeeld via Modus vooruit) en wordt alleen
bevestigd, nooit opnieuw ingepland. Kandidaten met een datum vóór vandaag zijn **gemist** (een
run viel uit, of ze zijn te laat op Gepland gezet): zet ze op `Fout` met een mail, zie
Controle 6. Kandidaten met een datum later dan vandaag laat je met rust.

Geen kandidaten, niets bevestigd en niets dat aandacht nodig heeft: stop zonder mail.

### 3. Controleren en klaarzetten

Doe de controles per post. Faalt er een: status `Fout`, vermeld de reden in de mail, ga door
met de volgende post.

Slaagt alles: zet de status op **`Bezig`**, vóór je iets naar Metricool stuurt. Zo kan een
tweede run dezelfde post nooit nog een keer inplannen.

### 4. Exporteren en inplannen

Exporteer pas nu, zodat de laatste versie uit Canva meegaat. Metricool haalt de afbeeldingen
zelf op en bewaart ze, dus de verlopende downloadlinks van Canva zijn geen probleem, maar
roep `createScheduledPost` meteen na het exporteren aan.

1. `export-design` met `{"type": "jpg", "quality": 90, "width": 1080}`. Je krijgt één link per
   pagina, in de goede volgorde.
2. Roep `createScheduledPost` aan met:
   - `blogId`: het merk uit de Omgevingscheck.
   - `date`: het tijdstip als ISO 8601 met de verschuiving van de tijdzone op die dag, bijvoorbeeld
     `2026-10-21T14:30:00+02:00`. Reken de verschuiving uit voor die specifieke datum
     (zomertijd, wintertijd), niet op gevoel.
   - `info`: een JSON-tekst met deze velden. Een carrousel is een `POST` met meer dan één
     afbeelding in `media`.

```json
{
  "autoPublish": true,
  "draft": false,
  "descendants": [],
  "firstCommentText": "",
  "hasNotReadNotes": false,
  "shortener": false,
  "smartLinkData": {"ids": []},
  "providers": [{"network": "instagram"}],
  "publicationDate": {"dateTime": "2026-10-21T14:30:00", "timezone": "Europe/Amsterdam"},
  "instagramData": {"type": "POST"},
  "mediaAltText": [],
  "media": ["<link pagina 1>", "<link pagina 2>"],
  "text": "<de caption, letterlijk>"
}
```

   `autoPublish` moet `true` zijn: bij `false` plaatst Metricool niet zelf, maar stuurt het de
   gebruiker een melding om het met de hand te doen. `draft` moet `false` zijn.
3. Het antwoord bevat de post met een `plannerUrl`. Bewaar die voor de mail. Een fout van
   Metricool: maak niet nog een keer dezelfde post aan, zet de rij op `Fout` en mail de
   foutmelding letterlijk mee.
4. **Controleer na het aanmaken** met `getScheduledPosts` voor die dag dat de post er staat
   met het juiste tijdstip, de juiste caption en het juiste aantal afbeeldingen. Klopt iets
   niet: status `Fout` en mail.

**De caption** geef je letterlijk door, zoals hij in Notion staat, met dezelfde witregels.

### 5. Zelf plaatsen

Zoek de reels met Status Gepland en Publicatiedatum = vandaag. Ze komen in de mail onder
Zelf plaatsen, met de stappen. Zet niets in Metricool en wijzig de status niet.

### 6. Mail

Stuur één mail met alles van deze run (zie Mails). Geen mail als er niets te melden is.

---

## Modus avondcheck

Bedoeld voor de avondtaak: standaard om 20:00. Hij bevestigt wat er overdag live ging, en
plant vroege posts van morgen in.

1. Doe **Bevestigen**. Dit zet de posts die overdag live gingen op Live, met de Instagram-link.
2. **Vroege posts van morgen.** De ochtendtaak start om `Ochtendrun` (standaard 07:00). Een
   post van morgen met een tijdstip eerder dan Ochtendrun plus 30 minuten haalt die taak niet
   meer. Plan die posts nu in, op dezelfde manier als in Modus inplannen (stap 3 en 4), met
   datum morgen. Alles later dan dat blijft voor de ochtendtaak.
3. **Aandacht nodig:** zoek rijen op `Fout`, rijen op `Bezig` met een tijdstip van vandaag
   dat al ruim voorbij is (komt uit Bevestigen), en rijen op Gepland met een datum vóór
   vandaag (gemist).
4. Mail alleen als er iets te melden is: posts die live gingen, vroege posts die zijn
   ingepland, of iets dat aandacht nodig heeft.

---

## Modus proefrun

Om te testen. Doet alles van de modus inplannen, behalve iets naar Metricool sturen en iets
in Notion wijzigen. Maak ook **geen** concept aan in Metricool: een post is via de koppeling
niet te verwijderen.

1. Neem de kandidaten van vandaag. Zijn die er niet, neem dan de eerstvolgende geplande
   datum en zeg dat erbij.
2. Doe de controles, inclusief Controle 6 en 7. Leest de proefrun een tijdstip dat al voorbij
   is, zeg dan dat een echte run die post zou markeren als gemist.
3. Exporteer uit Canva en controleer dat de links bereikbaar zijn.
4. Haal met `getBrandSettings` het merk op en bevestig dat Instagram eraan gekoppeld is. Lees
   met `getScheduledPosts` de komende week, zodat je kunt melden wat er al staat.
5. Stuur één mail met het onderwerp `Proefrun publiceren via Metricool`. Daarin: welke post
   het zou zijn, op welke dag en tijd, de uitkomst van elke controle, het aantal geëxporteerde
   bestanden, en een voorbeeld van de ingepland-mail zoals die bij een echte run verstuurd zou
   worden (zonder link naar Metricool, want de post bestaat nog niet).
6. Staat ook de skill `content-publiceren` in je lijst met geplande taken of skills? Zeg dan
   dat je één van de twee routes moet kiezen.

Wordt de proefrun in een gesprek gestart in plaats van door een geplande taak, toon dan
hetzelfde verslag ook in het gesprek.

---

## Modus vooruit

In een gesprek, als de gebruiker zegt "plan ze ook in Metricool" (bijvoorbeeld nadat de
Canva-links in Notion zijn gezet), of "plan [deze posts] nu in Metricool". Dan wacht je niet
op de ochtendtaak: je zet de genoemde posts nu in Metricool, ook als ze pas later in de week
live gaan. Er is iemand om vragen aan te stellen; mailen hoeft niet.

1. **Omgevingscheck**, stap 1 tot en met 3. Canva is ook nodig. Zonder `Mail naar` in de
   aanroep is Gmail niet nodig. Tijdzone `Europe/Amsterdam`, tenzij de gebruiker een andere
   noemt. Meer dan één merk met Instagram: vraag welk.
2. **Bevestigen** (zie boven), zodat posts die al live staan op Live komen.
3. **Welke posts.** Precies de posts die de gebruiker noemt, of die net in dit gesprek zijn
   klaargezet (bijvoorbeeld de posts waar zojuist de Canva-link bij kwam). Noemt de gebruiker
   geen posts, vraag dan welke. Een post doet mee als:
   - Status `Gepland`;
   - een Canva-link in het Canva-linkveld;
   - een Publicatiedatum **met tijd**, minstens 10 minuten na nu. Staat er alleen een datum,
     plan hem dan niet vooruit in: zeg dat er een tijd bij moet, of dat de ochtendtaak hem op
     die dag oppakt op de Standaardtijd;
   - Kanaal Instagram en Soort Carrousel (ook `Carroussel`) of Post. Een reel plant de
     gebruiker zelf in.
   Een post die niet meedoet, noem je met de reden. Een post op `Bezig` staat al in Metricool;
   die plan je niet nog een keer in.
4. **Controles** 1 tot en met 7 per post, met de datum en tijd van die post.
5. **Akkoord.** Heeft de gebruiker in dit gesprek al akkoord gegeven op precies deze posts,
   met hun dag en tijd (bijvoorbeeld in het overzicht van de Canva-links), ga dan door. Anders
   toon je eerst één lijst: per post het haakje, de dag en de tijd, en vraag je één keer om
   akkoord. Inplannen is openbaar zodra het tijdstip komt.
6. **Inplannen** zoals in Modus inplannen, stap 3 en 4: per post eerst de status op `Bezig`,
   dan exporteren uit Canva, `createScheduledPost` met de datum en tijd van die post, en
   controleren met `getScheduledPosts`. Een post die faalt: status `Fout` en de reden in het
   gesprek.
7. **Melden** in het gesprek, kort: per post het haakje, de dag en tijd, en de links `Open in
   Metricool` en `Open in Notion`. Daaronder wat niet is ingepland, met de reden.

De ochtendtaak pakt alleen posts op `Gepland`, dus een post die nu op `Bezig` staat wordt niet
nog een keer ingepland. De avondcheck en de volgende ochtendtaak zetten hem op `Live` zodra
Metricool hem heeft geplaatst, ook als dat later in de week is.

---

## Aanpassen in een gesprek

Zegt de gebruiker in een gesprek "pas aan in Metricool" of "verzet die post", dan werk je de
post in Metricool bij. Notion is leidend: neem de nieuwe waarden uit de rij in Notion over.

1. Zoek de rij in Notion en de post met `getScheduledPosts` (zie Controle 7 voor het
   matchen).
2. Staat de post op `PUBLISHED`: zeg dat een geplaatste post niet meer te wijzigen is via de
   koppeling. Wijzigen kan alleen in de Instagram-app.
3. Toon wat er verandert (tijdstip, caption, afbeeldingen), oud tegenover nieuw, en vraag om
   akkoord. Het bijwerken overschrijft direct en kan niet ongedaan worden gemaakt.
4. Na ja: roep `updateScheduledPost` aan met de `id` en de `uuid` uit `getScheduledPosts`, en
   in `info` de **volledige** inhoud van de post met alleen de gewijzigde velden aangepast
   (anders verdwijnen velden). Het `id` verandert bij elke update; de `uuid` blijft gelijk.
5. Lees de post terug met `getScheduledPosts` en bevestig dat de wijziging er staat.

Verwijderen kan de koppeling niet. Verwijs naar de planner in Metricool (`Open in Metricool`)
en zeg dat de status in Notion dan terug op Klaar moet.

---

## Mails

Altijd via Gmail, naar het adres uit de aanroep, in het Nederlands en in de je-vorm. De
mails worden op de telefoon gelezen: in één oogopslag zie je welke post wanneer live gaat, en
met één tik ben je in Notion, Canva, Metricool of Instagram.

### Opmaak

- **Altijd twee versies:** eenvoudige HTML in `htmlBody` en een platte-tekstversie in `body`.
- **HTML:** alleen eenvoudige tags (`<p>`, `<b>`, `<a>`, `<br>`, `<ol>`, `<li>`), geen
  tabellen, geen kleuren, geen stylesheets. Kopjes zijn vetgedrukt (`<b>`).
- **Links zijn klikbare tekst**, nooit een kale URL in de HTML-versie. Gebruik altijd deze
  teksten: `Open in Notion`, `Open in Canva`, `Open in Metricool`, `Bekijk je post op
  Instagram`. Meerdere links naast elkaar scheid je met ` | `.
- **In de platte-tekstversie** staat dezelfde tekst, met de URL achter de linktekst:
  `Open in Notion: https://...`.
- **Het haakje** staat altijd op een eigen regel achter 🪝.
- **Alleen informatie over de post en wat de gebruiker moet doen.** Geen uitleg over hoe de
  run werkt of welke stappen de skill heeft gezet.

### Mail na het inplannen (ochtend)

Eén mail per run. Per post die is ingepland:

```
<b>[haakje]</b>
Ingepland voor vandaag om [tijd] via Metricool
[Soort], [n] slides
Open in Metricool | Open in Notion | Open in Canva
Aanpassen? Zeg in een gesprek met Claude: "pas aan in Metricool".
Wil je muziek? Voeg die na [tijd] toe via Bewerken in de Instagram-app.   (alleen bij een carrousel)
```

Bij een post met één afbeelding laat je "[n] slides" weg. Een Story heeft geen haakje: noem
hem "Story" met de Notion-titel.

Daarna alleen de kopjes die inhoud hebben, vetgedrukt:

- **Live gegaan:** posts die de Bevestigen-stap op Live zette, met `Bekijk je post op
  Instagram` en `Open in Notion`.
- **Niet ingepland:** posts die een controle niet haalden, of die gemist zijn, met de reden in
  gewone taal en wat de gebruiker moet doen ("de caption is 2.340 tekens, haal er 140 af in
  Notion", "de tijd 07:30 was al voorbij; kies een nieuwe tijd en zet de status terug op
  Gepland").
- **Zelf plaatsen:** de reels van vandaag, met de stappen hieronder.
- **Aandacht nodig:** Fout, en Bezig dat blijft hangen, met per rij wat er aan de hand is.

Bij **Zelf plaatsen** krijgt elke reel deze stappen:

```
🪝 [haakje]
Reel, vandaag om [tijd]
Open in Notion | Open in Canva
1. Open de Notion-pagina en kopieer de caption.
2. Download de reelomslag via Canva.
3. Plaats je video in Instagram of Edits.
4. Voeg de reelomslag toe.
5. Plak je caption.
6. Zet de status in Notion daarna op Live en plak de link van de reel in het veld [naam van het postlinkveld, meestal URL].
```

Ontbreekt de Canva-link, laat dan `Open in Canva` en stap 2 weg en zeg dat er geen omslag in
Notion staat.

### Mail van de avondcheck

Alleen de kopjes met inhoud: **Live gegaan** (met `Bekijk je post op Instagram`),
**Ingepland voor morgen** (de vroege posts, in dezelfde opmaak als de ochtendmail),
**Niet ingepland** en **Aandacht nodig**.

### Proefrunmail

Dezelfde opmaak. Per post: het haakje, het tijdstip, de uitkomst van elke controle in één
korte regel, het aantal geëxporteerde bestanden en de links, en daaronder onder het
vetgedrukte kopje **Zo ziet je mail eruit** de ingepland-mail zoals hij bij een echte run
verstuurd zou worden.

### Onderwerpen

| Wanneer | Onderwerp |
|---|---|
| Omgevingscheck faalt | `Publiceren gestopt: [wat ontbreekt]` |
| Ochtendrun met ingeplande posts | `Ingepland op Instagram: [haakje]` (bij meer posts: het haakje van de eerste, plus "en [n] meer") |
| Alleen posts die live gingen | `Live op Instagram: [haakje]` (bij meer: "en [n] meer") |
| Een post is niet ingepland of faalt | `Niet ingepland: [haakje]`; staan er ook andere dingen in de mail, gebruik dan het onderwerp van de ingeplande post |
| Alleen iets dat aandacht nodig heeft | `Contentplanning: aandacht nodig` |
| Proefrun | `Proefrun publiceren via Metricool` |

Een foutmail noemt in gewone taal wat er met de post aan de hand is en wat de gebruiker moet
doen, met `Open in Notion`. Foutmeldingen van Metricool of Canva komen letterlijk onder het
vetgedrukte kopje **Technische melding**, na de uitleg.

Schrijfregels: geen em-dashes, geen jargon zonder uitleg, geen "Helaas".

---

## Stories

Stories kunnen via deze skill automatisch, als je in Notion bij Soort de optie `Story` hebt
toegevoegd (de skill maakt hem niet aan).

- Een Story is **één afbeelding** uit Canva (jpg, formaat 1080 x 1920), zonder caption.
- In `info`: `"instagramData": {"type": "STORY"}`, en laat `text` weg: een Story heeft geen
  tekst van zichzelf, en tekst bij een Story als enige netwerk wordt niet geplaatst.
- Een Story heeft Controle 2 en 3 niet. Controle 1, 4 tot en met 7 wel.
- Match een Story in Metricool op tijdstip en type, niet op caption.
- De Instagram-link van een Story werkt zolang de Story zichtbaar is (24 uur). Zet hem toch
  in het postlinkveld.
- Stories tellen mee in het maximum van het gratis plan van Metricool (20 gepubliceerde
  berichten per maand, alle formaten bij elkaar).

---

## Vermijd

- Een post inplannen die een controle niet haalt, ook niet als de fout klein lijkt.
- Een post twee keer inplannen. Bij twijfel: Fout en mail.
- Een gemiste post alsnog inplannen.
- De caption aanpassen.
- `autoPublish` op `false` zetten of een post als concept (`draft`) aanmaken.
- Een concept of testpost maken in Metricool, ook niet bij een proefrun.
- Vragen stellen of op akkoord wachten tijdens een geplande taak.
- Lokale bestanden lezen of schrijven.
- Een nieuwe status, optie of property aanmaken.
- Bestanden uit `references/` bij naam noemen in mails of antwoorden.
- Een kale URL in de HTML-versie van een mail, of de caption in een mail.
- Een database met "template" in de naam of het pad als Content Calendar gebruiken.
- `URL` lezen als Canva-link of `Instagram` als postlink zonder te kijken of er een property
  `Canva` is.
- In Modus vooruit een post inplannen zonder tijd in de Publicatiedatum, of een post die niet
  op `Gepland` staat.

## Referentiebestanden

In `references/` van deze plugin, twee niveaus boven deze skill: `notion-schema.md`,
`pagina-opbouw.md`.
