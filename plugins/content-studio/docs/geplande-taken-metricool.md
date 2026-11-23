# Prompt: automatisch inplannen via Metricool (route A)

Eén geplande taak in Claude: de ochtendronde van Puk (skill `cs-publiceren-metricool`). Elke
ochtend zet Puk wat gisteren live ging op Live, zet hij de posts die af zijn van Klaar op
Gepland, plant hij alles wat op Gepland staat in Metricool in (ook voor de dagen erna) en houdt
hij Metricool gelijk aan Notion. Metricool plaatst de post zelf, op de minuut die jij in Notion
kiest (bijvoorbeeld 14:30). De taak draait in de cloud, dus ook als je laptop dicht is. Hij
heeft de koppelingen Notion, Gmail, Google Drive en Metricool nodig. Composio heb je hiervoor
niet nodig.

Metricool is een aparte tool met een eigen account. Het gratis plan plaatst 20 berichten per
maand: carrousels, posts en stories tellen allemaal mee, en het gaat om gepubliceerde
berichten. Wil je meer, dan heb je een betaald plan nodig (de goedkoopste beginnen rond € 16
per maand bij jaarbetaling, exclusief btw; kijk op metricool.com voor de actuele prijzen).
Zonder Metricool kun je de andere route kiezen: de skill `cs-publiceren`, die op vaste
postmomenten via Composio plaatst. Kies één van de twee, niet allebei.

Plak deze prompt in een nieuw gesprek, nooit terwijl een skill loopt. Gebruik een gewoon
gesprek zonder map of project eraan: een taak die lokale bestanden nodig heeft, draait alleen
als je computer aanstaat. Claude controleert eerst of alles klaarstaat, vraagt je tijden,
draait een proefrun en maakt pas na je ja de taak aan.

---

RESULTAAT
Eén geplande taak, de ochtendronde van Puk, die elke ochtend mijn posts die af zijn van Klaar op Gepland zet en mijn Instagram-posts via Metricool inplant vanuit mijn Content Calendar: alles wat op Gepland staat gaat meteen naar Metricool, ook voor de dagen erna, wat ik in Notion verander past hij in Metricool aan, en wat gisteren live ging komt op Live met de Instagram-link. Eerst controleer je of alles klaarstaat, dan vraag je mijn tijden, dan draai je één proefrun, en pas na mijn ja maak je de taak aan.

EINDGEBRUIKER
Ik ben coach of online dienstverlener. Ik ben niet technisch en heb nog nooit een geplande taak gemaakt. Ik ben bang dat er per ongeluk iets live gaat wat nog niet af is. Zeg kort wat je doet en waarom, zonder jargon.

CONTEXT
De taak gebruikt de skill cs-publiceren-metricool uit de plugin Content Studio. Mijn slides maak ik in de Design Studio van mijn Content Studio. Die zet ze als JPEG's in Google Drive (een map per carrousel, één bestand per reelomslag), zet de link in het veld Drive en de post op Klaar. cs-publiceren-metricool zet een post van Klaar op Gepland als hij compleet is, leest per post de caption uit Notion en de slides uit Drive, en zet de post in Metricool met de datum en tijd uit Notion. Metricool plaatst hem zelf op Instagram.

Controleer eerst, voordat je iets vraagt:
1. De plugin Content Studio is geïnstalleerd: de skill cs-publiceren-metricool staat in je lijst.
2. De koppelingen: Notion, Gmail, Google Drive en Metricool. Metricool koppel ik in de Claude-app via Aanpassingen (Customize) > Connectors en dan Metricool; ik heb daarvoor een eigen Metricool-account nodig, dat maak ik zelf aan op metricool.com. In Metricool moet mijn Instagram-account gekoppeld zijn (zakelijk, Business of Creator). Haal met de Metricool-koppeling mijn merken op en controleer dat Instagram eraan gekoppeld is. Heb ik meer dan één merk, laat me dan kiezen welk merk het is en onthoud de naam.
3. In Notion, de database Content Calendar (zoek op naam). Vind je er meer dan één, sla dan de databases over met "template" in de naam of in het pad (de pagina's erboven). Blijft er meer dan één over, laat me dan kiezen welke de goede is: toon ze met het pad. Onthoud mijn keuze als een korte omschrijving, bijvoorbeeld "de database onder de pagina [naam]".
4. In die Content Calendar:
   - het veld Status met de opties Design, Video, Klaar, Gepland, Bezig, Fout en Live;
   - een datumveld Publicatiedatum, waar ik ook een tijd in kan zetten (in Notion: klik op de datum en zet Tijd opnemen aan);
   - een URL-veld Design, voor de link naar de slides in Google Drive;
   - een URL-veld URL, voor de link naar de geplaatste post.
   Heb ik een oudere kalender met een URL-veld Drive of Canva in plaats van Design, dan is dat ook goed: de Design Studio zet de Drive-link dan in dat veld. Zeg erbij dat ik het veld mag hernoemen naar Design. Heb ik een heel oude kalender zonder Design, Drive en Canva, met de link in URL en een URL-veld Instagram voor de link naar de post, dan is dat ook goed.
Ontbreekt er iets, zeg dan precies wat en hoe ik het regel: een koppeling in de Claude-app via Aanpassingen (Customize) > Connectors en dan de naam; een veld of optie maak ik zelf aan in Notion, met precies deze naam. Maak zelf nooit een veld of optie aan. Ga pas verder als alles er staat.

Vraag daarna in één bericht:
1. Hoe laat moet de ochtendronde draaien? Standaard 07:00. Een post die ik pas op de dag zelf op Klaar zet, moet minstens tien minuten na de ochtendronde staan; anders zeg ik in een gesprek "@puk, plan ze in".
2. Welke tijd gebruik je voor een post waar in Notion alleen een datum staat, geen tijd? Standaard 12:00.
3. Op welk mailadres wil ik de mails ontvangen?
4. Klopt de tijdzone Europe/Amsterdam?

Leg daarna in maximaal zes korte punten uit wat er gaat gebeuren:
- Elke ochtend kijkt Puk naar mijn posts op Klaar. Heeft een post een publicatiedatum, slides in Drive en een caption zonder [VUL AAN, dan zet hij hem op Gepland. Posts die binnenkort live gaan maar nog geen slides in Drive hebben, staan in zijn mail onder "ontwerp ontbreekt".
- Alles op Gepland gaat meteen naar Metricool, op de Publicatiedatum en de tijd die ik in Notion zet, ook als het pas volgende week is. Dan wordt de status Bezig. Metricool plaatst de post zelf. De ochtend erna wordt de status Live en komt de link naar de post in het veld URL.
- Verander ik in Notion het tijdstip of de caption van een post die al in Metricool staat, dan past Puk het de volgende ochtend in Metricool aan en zegt hij het in de mail. Maak ik nieuwe slides in de Design Studio, dan zeg ik in een gesprek met Claude: "pas aan in Metricool". Zet ik een post terug naar Concept, dan haal ik hem zelf uit Metricool; Puk zegt het in de mail.
- Een post waarvan de tijd al voorbij is, wordt niet ingepland: de status wordt Fout en ik krijg een mail.
- Ik krijg alleen een mail als er iets veranderd is of iets ontbreekt. Reels plaats ik zelf in Instagram of Edits; de mail zet de link naar Notion en naar de reelomslag in Drive klaar, met de stappen.
- Het gratis plan van Metricool plaatst 20 berichten per maand. Plan ik daarnaast ook met de hand in Instagram of Meta Business Suite, dan staat de post er twee keer. Muziek uit de Instagram-bibliotheek kan niet via de koppeling; bij een carrousel voeg ik die na publicatie toe via Bewerken.

Draai dan de proefrun, hier in dit gesprek:
---
Voer @cs-publiceren-metricool uit in modus proefrun.
Mail naar: [mailadres]
Tijdzone: [tijdzone]
Standaardtijd: [standaardtijd]
Ochtendrun: [ochtendtijd]
Metricool-merk: [merk]
Content Calendar: [omschrijving]
---
De regels Metricool-merk en Content Calendar zet je alleen in de proefrun en in de taak als ik daar iets heb moeten kiezen. Anders laat je ze weg.
De proefrun plant niets in en verandert niets in Notion, Google Drive of Metricool; hij mailt wat er zou gebeuren, ook wat de ochtendronde op Gepland zou zetten. Vraag mij de mail te lezen en te zeggen of het klopt.
De proefrun test ook of Metricool mijn slides met een directe link kan ophalen. Werkt dat, dan krijgt de taak de regel "Slidelinks: direct" en hoef ik Google Drive niet in Metricool te koppelen. Werkt het niet, dan laat je die regel weg en zeg je dat ik Google Drive in Metricool koppel (in Metricool, bij de koppelingen van mijn merk).

Pas na mijn ja maak je één geplande taak aan, die in de cloud draait, elke dag op de ochtendtijd, met de naam "Puk: ochtendronde (Metricool)":
---
Voer @cs-publiceren-metricool uit in modus inplannen.
Mail naar: [mailadres]
Tijdzone: [tijdzone]
Standaardtijd: [standaardtijd]
Ochtendrun: [ochtendtijd]
Slidelinks: direct
Metricool-merk: [merk]
Content Calendar: [omschrijving]
---

Heb ik nog een oudere ochtendtaak die eerst "@canva-links" aanroept, vraag dan of je die mag vervangen door deze taak: de skill cs-canva-links bestaat niet meer. Heb ik nog een oudere avondtaak "Instagram avondcheck (Metricool)", vraag dan of je die mag uitzetten: die is niet meer nodig.

Wordt het aanmaken van de taak geweigerd, bijvoorbeeld door een veiligheidscheck, zeg dan wat er gebeurde en vraag of ik bevestig dat je hem mag aanmaken. Na mijn ja probeer je het één keer opnieuw. Lukt het dan nog niet, geef de opdracht in één kopieerblok en de stappen om hem zelf aan te maken (zie EISEN).

EISEN
- Altijd eerst de proefrun, en pas na mijn ja de taak aanmaken. Ook als ik zeg dat het snel moet.
- Maak zelf nooit een Metricool-account aan en maak in Metricool zelf nooit een testpost of concept: een post is via de koppeling niet te verwijderen.
- De taak draait in de cloud, met de koppelingen Notion, Gmail, Google Drive en Metricool. Hij verwijst nooit naar bestanden op mijn computer.
- De regel Slidelinks: direct staat alleen in de taak als de proefrun liet zien dat de directe link werkt.
- Kun je de taak niet zelf aanmaken, geef dan de opdracht in één kopieerblok, plus genummerde stappen om hem zelf aan te maken onder Scheduled in de zijbalk van de Claude-app: geen map kiezen (dan draait hij in de cloud), dagelijks, op de ochtendtijd.
- Draait er al een taak van de skill cs-publiceren (via Composio) voor dezelfde Content Calendar, zeg dan dat die uit moet, anders staat elke post er twee keer.
- Zeg na het aanmaken welke post als eerstvolgende in Metricool komt, op welke datum en tijd, zodat ik weet wanneer de eerste echte run is.
- Schrijf kort en zonder jargon.

PRAKTIJKVOORBEELD
Zo wel: "In je Content Calendar kan de Publicatiedatum nog geen tijd bevatten. Open de database, klik op een datum in dat veld en zet Tijd opnemen aan. Zeg het als het staat."
Waarom: ik weet precies wat ik moet doen, en jij verandert niets in mijn Notion.

Zo niet: meteen de taak aanmaken en daarna pas testen.
Waarom: dan kan de eerste echte run een post inplannen die nog niet af is, en wat live staat is niet terug te draaien.

Ontbreekt er informatie, stel dan eerst vragen in plaats van aannames te doen.
Controleer je antwoord voordat je het geeft aan: heb je alle vier de koppelingen en alle velden gecontroleerd, en Instagram in Metricool; heb je bij meerdere Content Calendars de template overgeslagen en mij laten kiezen; is de proefrun gedraaid en heb ik ja gezegd voordat je de taak aanmaakte; staan in de taak de regels Tijdzone, Standaardtijd en Ochtendrun en het mailadres uit mijn antwoord, en Slidelinks alleen als de directe link werkte; heb je geen Metricool-account of testpost gemaakt.
