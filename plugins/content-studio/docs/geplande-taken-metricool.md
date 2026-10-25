# Prompt: automatisch inplannen via Metricool (route A)

De skill `content-publiceren-metricool` draait als twee geplande taken in Claude: elke ochtend
plant hij de posts van vandaag in Metricool in, en elke avond controleert hij wat er live
staat. Metricool plaatst de post zelf, op de minuut die jij in Notion kiest (bijvoorbeeld
14:30). De taken draaien in de cloud, dus ook als je laptop dicht is. Ze hebben de
koppelingen Notion, Gmail, Canva en Metricool nodig. Composio heb je hiervoor niet nodig.

Metricool is een aparte tool met een eigen account. Het gratis plan plaatst 20 berichten per
maand: carrousels, posts en stories tellen allemaal mee, en het gaat om gepubliceerde
berichten. Wil je meer, dan heb je een betaald plan nodig (de goedkoopste beginnen rond € 16
per maand bij jaarbetaling, exclusief btw; kijk op metricool.com voor de actuele prijzen).
Zonder Metricool kun je de andere route kiezen: de skill `content-publiceren`, die op vaste
postmomenten via Composio plaatst. Kies één van de twee, niet allebei.

Plak deze prompt in een nieuw gesprek, nooit terwijl een skill loopt. Gebruik een gewoon
gesprek zonder map of project eraan: een taak die lokale bestanden nodig heeft, draait alleen
als je computer aanstaat. Claude controleert eerst of alles klaarstaat, vraagt je tijden,
draait een proefrun en maakt pas na je ja de taken aan.

---

RESULTAAT
Twee geplande taken die mijn Instagram-posts via Metricool inplannen vanuit mijn Content Calendar in Notion: elke ochtend plant een taak de posts van vandaag in op de tijd die ik in Notion zet, en elke avond zet een taak geplaatste posts op Live en mailt me de Instagram-link. Eerst controleer je of alles klaarstaat, dan vraag je mijn tijden, dan draai je één proefrun, en pas na mijn ja maak je de taken aan.

EINDGEBRUIKER
Ik ben coach of online dienstverlener. Ik ben niet technisch en heb nog nooit een geplande taak gemaakt. Ik ben bang dat er per ongeluk iets live gaat wat nog niet af is. Zeg kort wat je doet en waarom, zonder jargon.

CONTEXT
De taken gebruiken de skill content-publiceren-metricool uit de plugin Content Studio. Die leest per post de caption uit Notion en de slides uit Canva, en zet de post in Metricool met de datum en tijd uit Notion. Metricool plaatst hem zelf op Instagram.

Controleer eerst, voordat je iets vraagt:
1. De plugin Content Studio is geïnstalleerd: de skill content-publiceren-metricool staat in je lijst.
2. De koppelingen: Notion, Gmail, Canva en Metricool. Metricool koppel ik in de Claude-app via Aanpassingen (Customize) > Connectors en dan Metricool; ik heb daarvoor een eigen Metricool-account nodig, dat maak ik zelf aan op metricool.com. In Metricool moet mijn Instagram-account gekoppeld zijn (zakelijk, Business of Creator). Haal met de Metricool-koppeling mijn merken op en controleer dat Instagram eraan gekoppeld is. Heb ik meer dan één merk, laat me dan kiezen welk merk het is en onthoud de naam.
3. In Notion, de database Content Calendar (zoek op naam). Vind je er meer dan één, sla dan de databases over met "template" in de naam of in het pad (de pagina's erboven). Blijft er meer dan één over, laat me dan kiezen welke de goede is: toon ze met het pad. Onthoud mijn keuze als een korte omschrijving, bijvoorbeeld "de database onder de pagina [naam]".
4. In die Content Calendar:
   - het veld Status met de opties Gepland, Bezig, Fout en Live;
   - een datumveld Publicatiedatum, waar ik ook een tijd in kan zetten (in Notion: klik op de datum en zet Tijd opnemen aan);
   - een URL-veld Canva, voor de Canva-link;
   - een URL-veld URL, voor de link naar de geplaatste post.
   Heb ik een oudere kalender zonder het veld Canva, met de Canva-link in URL en een URL-veld Instagram voor de link naar de post, dan is dat ook goed.
Ontbreekt er iets, zeg dan precies wat en hoe ik het regel: een koppeling in de Claude-app via Aanpassingen (Customize) > Connectors en dan de naam; een veld of optie maak ik zelf aan in Notion, met precies deze naam. Maak zelf nooit een veld of optie aan. Ga pas verder als alles er staat.

Vraag daarna in één bericht:
1. Hoe laat moet de ochtendtaak draaien? Standaard 07:00. Leg uit: de ochtendtaak plant de posts van vandaag in, dus een post kan pas een half uur na de ochtendtaak live. Een post die vroeger moet, plant de avondtaak de dag ervoor in.
2. Hoe laat moet de avondtaak draaien? Standaard 20:00.
3. Welke tijd gebruik je voor een post waar in Notion alleen een datum staat, geen tijd? Standaard 12:00.
4. Op welk mailadres wil ik de mails ontvangen?
5. Klopt de tijdzone Europe/Amsterdam?

Leg daarna in maximaal zes korte punten uit wat er gaat gebeuren:
- Carrousels en posts met status Gepland gaan op de Publicatiedatum en de tijd die ik in Notion zet in Metricool, en Metricool plaatst ze zelf. Zodra een post in Metricool staat, wordt de status Bezig en krijg ik een mail met een link naar Metricool. Zodra Instagram hem heeft geplaatst, wordt de status Live en komt de link naar de post in het veld URL in Notion, met een mail.
- Een post moet de Canva-link in het veld Canva en de caption in een codeblok op de pagina hebben. Een post waarvan de tijd al voorbij is, wordt niet ingepland: de status wordt Fout en ik krijg een mail. Wil ik posts van later in de week meteen inplannen, dan zeg ik in een gesprek: "plan ze ook in Metricool".
- Wil ik iets aanpassen nadat een post in Metricool staat, dan pas ik het eerst aan in Notion en zeg ik in een gesprek met Claude: "pas aan in Metricool". De taak past het niet zelf aan.
- Reels plaats ik zelf in Instagram of Edits. De ochtendmail zet de links naar Notion en Canva klaar, met de stappen.
- Het gratis plan van Metricool plaatst 20 berichten per maand. Stories en carrousels tellen mee. Staat het maximum bereikt, dan wordt de post niet geplaatst en krijg ik een mail.
- Plan ik daarnaast ook met de hand in Instagram of Meta Business Suite, dan staat de post er twee keer. Muziek uit de Instagram-bibliotheek kan niet via de koppeling; bij een carrousel voeg ik die na publicatie toe via Bewerken.

Draai dan de proefrun, hier in dit gesprek:
---
Voer @content-publiceren-metricool uit in modus proefrun.
Mail naar: [mailadres]
Tijdzone: [tijdzone]
Standaardtijd: [standaardtijd]
Ochtendrun: [ochtendtijd]
Metricool-merk: [merk]
Content Calendar: [omschrijving]
---
De regels Metricool-merk en Content Calendar zet je alleen in de proefrun en in de taken als ik daar iets heb moeten kiezen. Anders laat je ze weg.
De proefrun plant niets in en verandert niets in Notion of Metricool; hij mailt wat er zou gebeuren. Vraag mij de mail te lezen en te zeggen of het klopt.

Pas na mijn ja maak je twee geplande taken aan, die in de cloud draaien.

Taak 1, elke dag op de ochtendtijd, naam "Instagram inplannen (Metricool)":
---
Voer @content-publiceren-metricool uit in modus inplannen.
Mail naar: [mailadres]
Tijdzone: [tijdzone]
Standaardtijd: [standaardtijd]
Ochtendrun: [ochtendtijd]
Metricool-merk: [merk]
Content Calendar: [omschrijving]
---

Taak 2, elke dag op de avondtijd, naam "Instagram avondcheck (Metricool)":
---
Voer @content-publiceren-metricool uit in modus avondcheck.
Mail naar: [mailadres]
Tijdzone: [tijdzone]
Standaardtijd: [standaardtijd]
Ochtendrun: [ochtendtijd]
Metricool-merk: [merk]
Content Calendar: [omschrijving]
---

Wordt het aanmaken van een taak geweigerd, bijvoorbeeld door een veiligheidscheck, zeg dan welke taak het is en vraag of ik bevestig dat je hem mag aanmaken. Na mijn ja probeer je het één keer opnieuw. Lukt het dan nog niet, geef de opdracht van die taak in één kopieerblok en de stappen om hem zelf aan te maken (zie EISEN).

EISEN
- Altijd eerst de proefrun, en pas na mijn ja de taken aanmaken. Ook als ik zeg dat het snel moet.
- Maak zelf nooit een Metricool-account aan en maak in Metricool zelf nooit een testpost of concept: een post is via de koppeling niet te verwijderen.
- De taken draaien in de cloud, met de koppelingen Notion, Gmail, Canva en Metricool. Ze verwijzen nooit naar bestanden op mijn computer.
- In beide taken staan dezelfde regels Tijdzone, Standaardtijd en Ochtendrun.
- Moest ik een merk of een Content Calendar kiezen, dan staat in beide taken dezelfde regel.
- Kun je de taken niet zelf aanmaken, geef dan per taak de opdracht in één kopieerblok, plus genummerde stappen om ze zelf aan te maken onder Scheduled in de zijbalk van de Claude-app: geen map kiezen (dan draait hij in de cloud), dagelijks, op de ochtendtijd en op de avondtijd.
- Draait er al een taak van de skill content-publiceren (via Composio) voor dezelfde Content Calendar, zeg dan dat die uit moet, anders staat elke post er twee keer.
- Zeg na het aanmaken welke post als eerstvolgende in Metricool komt, op welke datum en tijd, zodat ik weet wanneer de eerste echte run is.
- Schrijf kort en zonder jargon.

PRAKTIJKVOORBEELD
Zo wel: "In je Content Calendar kan de Publicatiedatum nog geen tijd bevatten. Open de database, klik op een datum in dat veld en zet Tijd opnemen aan. Zeg het als het staat."
Waarom: ik weet precies wat ik moet doen, en jij verandert niets in mijn Notion.

Zo niet: meteen de taken aanmaken en daarna pas testen.
Waarom: dan kan de eerste echte run een post inplannen die nog niet af is, en wat live staat is niet terug te draaien.

Ontbreekt er informatie, stel dan eerst vragen in plaats van aannames te doen.
Controleer je antwoord voordat je het geeft aan: heb je alle vier de koppelingen en alle velden gecontroleerd, en Instagram in Metricool; heb je bij meerdere Content Calendars de template overgeslagen en mij laten kiezen; is de proefrun gedraaid en heb ik ja gezegd voordat je de taken aanmaakte; staan in beide taken dezelfde regels Tijdzone, Standaardtijd en Ochtendrun en het mailadres uit mijn antwoord; heb je geen Metricool-account of testpost gemaakt.
