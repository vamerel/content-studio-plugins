# Prompt: automatisch inplannen via Metricool (route A)

Eén geplande taak in Claude: de ochtendronde van Puk. Elke ochtend koppelt Puk de designs uit
Canva aan je posts in Notion (skill `cs-canva-links`), zet hij wat gisteren live ging op Live,
plant hij alles wat nieuw op Gepland staat in Metricool in (ook voor de dagen erna) en houdt hij
Metricool gelijk aan Notion (skill `cs-publiceren-metricool`). Metricool plaatst de post zelf,
op de minuut die jij in Notion kiest (bijvoorbeeld 14:30). De taak draait in de cloud, dus ook
als je laptop dicht is. Hij heeft de koppelingen Notion, Gmail, Canva en Metricool nodig.
Composio heb je hiervoor niet nodig.

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
Eén geplande taak, de ochtendronde van Puk, die elke ochtend mijn designs uit Canva aan mijn posts in Notion koppelt en mijn Instagram-posts via Metricool inplant vanuit mijn Content Calendar: alles wat op Gepland staat gaat meteen naar Metricool, ook voor de dagen erna, wat ik in Notion verander past hij in Metricool aan, en wat gisteren live ging komt op Live met de Instagram-link. Eerst controleer je of alles klaarstaat, dan vraag je mijn tijden, dan draai je één proefrun, en pas na mijn ja maak je de taak aan.

EINDGEBRUIKER
Ik ben coach of online dienstverlener. Ik ben niet technisch en heb nog nooit een geplande taak gemaakt. Ik ben bang dat er per ongeluk iets live gaat wat nog niet af is. Zeg kort wat je doet en waarom, zonder jargon.

CONTEXT
De taak gebruikt twee skills uit de plugin Content Studio. cs-canva-links zoekt in Canva het design met de naam "Carrousel - [haakje]" of "Reelomslag - [haakje]", zet de link in Notion en zet de post op Gepland. cs-publiceren-metricool leest per post de caption uit Notion en de slides uit Canva, en zet de post in Metricool met de datum en tijd uit Notion. Metricool plaatst hem zelf op Instagram.

Controleer eerst, voordat je iets vraagt:
1. De plugin Content Studio is geïnstalleerd: de skills cs-canva-links en cs-publiceren-metricool staan in je lijst.
2. De koppelingen: Notion, Gmail, Canva en Metricool. Metricool koppel ik in de Claude-app via Aanpassingen (Customize) > Connectors en dan Metricool; ik heb daarvoor een eigen Metricool-account nodig, dat maak ik zelf aan op metricool.com. In Metricool moet mijn Instagram-account gekoppeld zijn (zakelijk, Business of Creator). Haal met de Metricool-koppeling mijn merken op en controleer dat Instagram eraan gekoppeld is. Heb ik meer dan één merk, laat me dan kiezen welk merk het is en onthoud de naam.
3. In Notion, de database Content Calendar (zoek op naam). Vind je er meer dan één, sla dan de databases over met "template" in de naam of in het pad (de pagina's erboven). Blijft er meer dan één over, laat me dan kiezen welke de goede is: toon ze met het pad. Onthoud mijn keuze als een korte omschrijving, bijvoorbeeld "de database onder de pagina [naam]".
4. In die Content Calendar:
   - het veld Status met de opties Klaar, Gepland, Bezig, Fout en Live;
   - een datumveld Publicatiedatum, waar ik ook een tijd in kan zetten (in Notion: klik op de datum en zet Tijd opnemen aan);
   - een URL-veld Canva, voor de Canva-link;
   - een URL-veld URL, voor de link naar de geplaatste post.
   Heb ik een oudere kalender zonder het veld Canva, met de Canva-link in URL en een URL-veld Instagram voor de link naar de post, dan is dat ook goed.
Ontbreekt er iets, zeg dan precies wat en hoe ik het regel: een koppeling in de Claude-app via Aanpassingen (Customize) > Connectors en dan de naam; een veld of optie maak ik zelf aan in Notion, met precies deze naam. Maak zelf nooit een veld of optie aan. Ga pas verder als alles er staat.

Vraag daarna in één bericht:
1. Hoe laat moet de ochtendronde draaien? Standaard 07:00. Een post die ik pas op de dag zelf op Gepland zet, moet minstens tien minuten na de ochtendronde staan; anders zeg ik in een gesprek "plan ze ook in Metricool".
2. Welke tijd gebruik je voor een post waar in Notion alleen een datum staat, geen tijd? Standaard 12:00.
3. Op welk mailadres wil ik de mails ontvangen?
4. Klopt de tijdzone Europe/Amsterdam?

Leg daarna in maximaal zes korte punten uit wat er gaat gebeuren:
- Elke ochtend zoekt Puk in Canva de designs bij mijn posts op Concept en Klaar. Heet een design precies "Carrousel - [haakje]" of "Reelomslag - [haakje]", dan komt de link in het veld Canva en wordt de status Gepland (of Klaar als er nog geen datum staat). Twijfel koppelt hij niet; die staat in de mail.
- Alles op Gepland gaat meteen naar Metricool, op de Publicatiedatum en de tijd die ik in Notion zet, ook als het pas volgende week is. Dan wordt de status Bezig. Metricool plaatst de post zelf. De ochtend erna wordt de status Live en komt de link naar de post in het veld URL.
- Verander ik in Notion het tijdstip of de caption van een post die al in Metricool staat, dan past Puk het de volgende ochtend in Metricool aan en zegt hij het in de mail. Verander ik het design in Canva, dan zeg ik in een gesprek met Claude: "pas aan in Metricool". Zet ik een post terug naar Concept, dan haal ik hem zelf uit Metricool; Puk zegt het in de mail.
- Een post op Gepland zonder design meldt Puk vanaf drie dagen van tevoren. Een post waarvan de tijd al voorbij is, wordt niet ingepland: de status wordt Fout en ik krijg een mail.
- Ik krijg alleen een mail als er iets veranderd is of iets ontbreekt. Reels plaats ik zelf in Instagram of Edits; de mail zet de links naar Notion en Canva klaar, met de stappen.
- Het gratis plan van Metricool plaatst 20 berichten per maand. Plan ik daarnaast ook met de hand in Instagram of Meta Business Suite, dan staat de post er twee keer. Muziek uit de Instagram-bibliotheek kan niet via de koppeling; bij een carrousel voeg ik die na publicatie toe via Bewerken.

Draai dan de proefrun, hier in dit gesprek:
---
Voer @canva-links uit, maar schrijf niets weg: laat alleen zien wat je zou koppelen.
Voer @cs-publiceren-metricool uit in modus proefrun.
Mail naar: [mailadres]
Tijdzone: [tijdzone]
Standaardtijd: [standaardtijd]
Ochtendrun: [ochtendtijd]
Metricool-merk: [merk]
Content Calendar: [omschrijving]
---
De regels Metricool-merk en Content Calendar zet je alleen in de proefrun en in de taak als ik daar iets heb moeten kiezen. Anders laat je ze weg.
De proefrun plant niets in en verandert niets in Notion, Canva of Metricool; hij mailt wat er zou gebeuren. Vraag mij de mail te lezen en te zeggen of het klopt.

Pas na mijn ja maak je één geplande taak aan, die in de cloud draait, elke dag op de ochtendtijd, met de naam "Puk: ochtendronde (Metricool)":
---
Voer eerst @canva-links uit in modus ochtend, en geef het verslag mee aan de volgende stap.
Voer daarna @cs-publiceren-metricool uit in modus inplannen, en zet het verslag van de Canva-links bovenaan de mail.
Mail naar: [mailadres]
Tijdzone: [tijdzone]
Standaardtijd: [standaardtijd]
Ochtendrun: [ochtendtijd]
Metricool-merk: [merk]
Content Calendar: [omschrijving]
---

Heb ik nog een oudere avondtaak "Instagram avondcheck (Metricool)", vraag dan of je die mag uitzetten: die is niet meer nodig.

Wordt het aanmaken van de taak geweigerd, bijvoorbeeld door een veiligheidscheck, zeg dan wat er gebeurde en vraag of ik bevestig dat je hem mag aanmaken. Na mijn ja probeer je het één keer opnieuw. Lukt het dan nog niet, geef de opdracht in één kopieerblok en de stappen om hem zelf aan te maken (zie EISEN).

EISEN
- Altijd eerst de proefrun, en pas na mijn ja de taak aanmaken. Ook als ik zeg dat het snel moet.
- Maak zelf nooit een Metricool-account aan en maak in Metricool zelf nooit een testpost of concept: een post is via de koppeling niet te verwijderen.
- De taak draait in de cloud, met de koppelingen Notion, Gmail, Canva en Metricool. Hij verwijst nooit naar bestanden op mijn computer.
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
Controleer je antwoord voordat je het geeft aan: heb je alle vier de koppelingen en alle velden gecontroleerd, en Instagram in Metricool; heb je bij meerdere Content Calendars de template overgeslagen en mij laten kiezen; is de proefrun gedraaid en heb ik ja gezegd voordat je de taak aanmaakte; staan in de taak de regels Tijdzone, Standaardtijd en Ochtendrun en het mailadres uit mijn antwoord; heb je geen Metricool-account of testpost gemaakt.
