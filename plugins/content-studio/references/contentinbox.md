# Contentinbox: je eigen foto's in je Fotobibliotheek

De gebruiker zet foto's en video's vanaf de telefoon in Google Drive, in de map
`Content Studio/Contentinbox`. Daan bekijkt elke nieuwe foto, geeft hem een naam en een
beschrijving, en zet hem in de juiste submap van `Content Studio/Fotobibliotheek`. Daaruit kiest
Daan foto's voor de posts, en de Design Studio laat ze zien bij "Kies foto". Gebruikt door
`cs-design` (Daan) en door de geplande taak "Daan: contentinbox verwerken".

Alles gaat via de Google Drive-koppeling, in de cloud. De map hoeft niet op de computer te staan,
en de geplande taak mag in de cloud draaien. Getest op 17 november 2026: een foto bekijken met
`download_file_content` lukt, ook bij een telefoonfoto van 3,5 MB, en hernoemen en verplaatsen in
één stap met `update_file` (`title` en `parentId`) lukt ook bij telefoonfoto's.

## Wat je nodig hebt

De Google Drive-connector, met `search_files`, `download_file_content`, `update_file` en
`create_file`. Lukt een zoekopdracht niet:

> "Ik heb geen verbinding met Google Drive, en daar staat je contentinbox. Ga in de Claude-app
> naar Aanpassingen (Customize) > Connectors, zoek Google Drive en klik op Verbinden. Zeg het als
> hij gekoppeld is."

Stop dan. In een geplande taak zet je alleen die melding in het verslag van de taak.

Voor `Past bij` in de beschrijving lees je de namen van de pillars uit Content Pillars in Notion.
Lukt dat niet, schrijf dan de onderwerpen in je eigen woorden.

## De mappen vinden

- **Contentinbox:** zoek met `search_files` naar mappen met `contentinbox` in de naam
  (`title contains 'contentinbox' and mimeType = 'application/vnd.google-apps.folder'`) en houd
  alleen de mappen waarvan de naam eindigt op `contentinbox`, hoofdletterongevoelig. Zo werkt
  ook een map `0.contentinbox` uit een eerdere versie. Meer dan één: neem de map in
  `Content Studio`.
- **Fotobibliotheek:** de map `Fotobibliotheek` in `Content Studio`, met zijn submappen
  (`parentId = '<id van Fotobibliotheek>'`).

Opbouw (zie ook sectie 6 van `content-studio-afspraken.md`):

```
Content Studio/
├── Contentinbox/          de gebruiker zet hier zelf foto's en video's in
│   ├── Origineel/         iPhone-foto's (HEIC) nadat de studio er een JPEG van maakte
│   ├── Niet bruikbaar/
│   └── Video's/
└── Fotobibliotheek/
    ├── Portret/
    ├── Aan het werk/
    ├── Werkplek/
    ├── Onderweg/
    ├── Met anderen/
    └── Details/
```

**Niet gevonden.** Ontbreekt de Contentinbox of de Fotobibliotheek:

> "Ik vind je [Contentinbox / Fotobibliotheek] niet in Google Drive. Zeg @setup, die maakt de
> mappen voor Content Studio in je Drive aan."

Stop dan. Ontbreekt alleen een van de vaste submappen hierboven, maak die dan aan met
`create_file` (`title` de naam, `mimeType` `application/vnd.google-apps.folder`, `parentId` de
bovenliggende map). Dat mag ook in een geplande taak. Andere mappen maak je niet zelf.

## Wat is nieuw

Alles wat direct in de Contentinbox staat, dus niet in een submap, en geen map is. Submappen
(ook een oude map `Foto's` van een eerdere versie) laat je met rust.

## Per bestand

1. **Soort.** Kijk naar het mimeType en de extensie:
   - **foto** (`image/jpeg`, `image/png`, `image/webp`): verder met stap 2;
   - **iPhone-foto** (`image/heic`, `image/heif`, of de extensie `.heic` of `.heif`): niet
     bekijken, laten staan en tellen voor de melding. De studio zet hem om naar JPEG zodra de
     gebruiker Content Studio opent (het origineel gaat dan naar `Contentinbox/Origineel`). De
     volgende ronde pakt de JPEG op;
   - **video** (`video/...`): verplaatsen naar `Contentinbox/Video's` met `update_file`
     (`parentId`), naam ongewijzigd. Video's blijven daar;
   - **iets anders** (een document, een Google-bestand): laten staan en noemen in de melding.
2. **Bekijken** met `download_file_content`. Lukt dat niet, laat het bestand dan staan en noem
   het in de melding met de reden.
3. **Bruikbaar of niet.** Niet bruikbaar: een screenshot, een foto van een scherm of document,
   onscherp, ogen dicht, of een bijna gelijke tweede versie van een foto die je net verwerkte.
   Verplaats die naar `Contentinbox/Niet bruikbaar` (`parentId`), naam ongewijzigd. Twijfel je,
   dan is hij bruikbaar.
4. **Naam:** `wie-wat-waar-stemming-jjjj-mm-dd-nn.jpg`, kleine letters, koppeltekens, zonder
   accenten, zoals `merel-laptop-cafe-lachend-2026-11-14-01.jpg`.
   - **wie:** de voornaam van de gebruiker als zij in beeld is (zoals die al in de namen in de
     Fotobibliotheek staat, of uit Business DNA). Staan er alleen anderen op: `anderen`. Staat er
     niemand op, begin dan met wat;
   - **wat:** een of twee woorden: wat de persoon doet of wat er te zien is (`laptop`,
     `koffie`, `workshop`);
   - **waar:** het soort plek (`cafe`, `kantoor`, `thuis`, `buiten`, `trein`). Geen plaatsnamen
     die je niet ziet;
   - **stemming:** een woord (`lachend`, `rustig`, `denkend`, `serieus`, `druk`);
   - **datum:** de opnamedatum uit de gegevens van het bestand als die er is, anders de datum
     waarop hij in Drive kwam;
   - **nn:** 01, 02 ... per datum. Zoek in de Fotobibliotheek naar namen met dezelfde datum en
     neem het eerstvolgende nummer.
   Een PNG of WebP houdt zijn eigen extensie.
5. **Beschrijving**, voor het veld Beschrijving van het bestand in Drive. Kort en concreet, wat
   je ziet, precies in deze vorm:

   ```
   Wat: [plek, wat de persoon doet, wat er nog in beeld is]
   Vrij voor tekst: [boven / onder / links / rechts / geen]
   Formaat: [staand / liggend / vierkant]
   Persoon: [links / midden / rechts / geen], [hoe groot: hoofd en schouders / tot het middel / helemaal]
   Past bij: [een tot drie pillars, met de namen uit Content Pillars]
   ```

   Staan er andere mensen op, schrijf dan "met iemand anders in beeld", zonder naam. Verzin niets
   wat je niet ziet: geen plaatsnamen, niet wie iemand is.
6. **Submap kiezen** in de Fotobibliotheek:
   - **Portret:** de persoon staat centraal en kijkt in de camera of poseert;
   - **Aan het werk:** de persoon werkt: achter de laptop, in een call, schrijvend, lesgevend;
   - **Werkplek:** het bureau, de kamer of het kantoor, zonder persoon of met de persoon klein;
   - **Onderweg:** buiten, reizen, wandelen, in de trein of de auto;
   - **Met anderen:** meer mensen in beeld;
   - **Details:** handen, voorwerpen, close-ups.
   Twijfel je, kies dan wat het meest in beeld is. Past een foto echt nergens:
   - **in een gesprek:** stel na het verwerken één vraag met knoppen: "[n] foto's passen in geen
     van je mappen. Zal ik een map [naam] maken?" met **Ja, maak de map** en **Nee, kies zelf**.
     Maak de map pas na ja, met `create_file` in de Fotobibliotheek, en verplaats de foto's
     daarna. Bij nee kies je de map die er het dichtst bij komt;
   - **in een geplande taak:** maak geen map. Kies de map die er het dichtst bij komt.
7. **Hernoemen, beschrijven en verplaatsen** in één aanroep van `update_file`: `title` de nieuwe
   naam, `description` de beschrijving en `parentId` de submap. Lukt het niet in één keer, doe
   dan eerst `title` en `parentId` en daarna `description`.
8. **Melden.** Eén regel: "Contentinbox: [n] foto's in je Fotobibliotheek gezet, [n] video's naar
   Video's, [n] in Niet bruikbaar." Geen lijst. Daaronder alleen als het van toepassing is:
   - bij iPhone-foto's: "[n] iPhone-foto's laat ik nog staan. Open je Content Studio, dan zet hij
     ze om; de volgende keer verwerk ik ze. Tip: zet je camera op Meest compatibel (Instellingen,
     Camera, Formaten), dan worden het meteen JPEG's.";
   - per bestand dat je niet kon openen of dat geen foto of video is: de naam en de reden.

In een geplande taak: is er niets nieuws en staan er geen iPhone-foto's, stop dan zonder melding.

## Niet

- Niets verwijderen of naar de prullenbak zetten, ook niet uit `Niet bruikbaar`.
- Geen foto bewerken (bijsnijden, filters): de originelen blijven zoals ze zijn.
- Geen iPhone-foto (HEIC) bekijken, omzetten of verplaatsen. Dat doet de studio.
- Geen map Privé, en geen andere nieuwe map dan hierboven staat.
- Niets wijzigen buiten de Contentinbox en de Fotobibliotheek.
- Geen namen van anderen in de bestandsnaam of de beschrijving.
