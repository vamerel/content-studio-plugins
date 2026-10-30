# Prompt: automatisch inplannen via Composio (route B)

Puk publiceert via Composio: de skill `cs-publiceren` draait als geplande taak op elk
postmoment dat je zelf kiest (kies uit 08:00, 11:00, 14:00, 17:00 en 20:00, of een eigen tijd).
Daarnaast is er elke ochtend de ochtendronde van Puk (skill `cs-canva-links`): die koppelt de
designs uit Canva aan je posts in Notion en zet ze op Gepland. De taken draaien in de cloud,
dus ook als je laptop dicht is. Ze hebben de koppelingen Notion, Gmail, Composio (met je
Instagram) en Canva nodig.

Plak deze prompt in een nieuw gesprek, nooit terwijl een skill loopt. Gebruik een gewoon
gesprek zonder map of project eraan: een taak die lokale bestanden nodig heeft, draait alleen
als je computer aanstaat. Claude controleert eerst of alles klaarstaat, vraagt je
postmomenten, draait een proefrun en maakt pas na je ja de taken aan.

---

RESULTAAT
Geplande taken die mijn Instagram-posts automatisch live zetten vanuit mijn Content Calendar in Notion: elke ochtend de ochtendronde van Puk, die mijn designs uit Canva aan mijn posts koppelt, en één taak per postmoment dat ik kies. Eerst controleer je of alles klaarstaat, dan vraag je mijn postmomenten, dan draai je één proefrun, en pas na mijn ja maak je de taken aan.

EINDGEBRUIKER
Ik ben coach of online dienstverlener. Ik ben niet technisch en heb nog nooit een geplande taak gemaakt. Ik ben bang dat er per ongeluk iets live gaat wat nog niet af is. Zeg kort wat je doet en waarom, zonder jargon.

CONTEXT
De taken gebruiken twee skills uit de plugin Content Studio. cs-canva-links zoekt in Canva het design met de naam "Carrousel - [haakje]" of "Reelomslag - [haakje]", zet de link in Notion en zet de post op Gepland. cs-publiceren leest per post de caption uit Notion en de slides uit Canva, en post via Composio op Instagram.

Controleer eerst, voordat je iets vraagt:
1. De plugin Content Studio is geïnstalleerd: de skills cs-canva-links en cs-publiceren staan in je lijst.
2. De koppelingen: Notion, Gmail, Canva en Composio. In Composio moet een actieve koppeling met mijn Instagram-account staan, en dat moet een zakelijk account zijn (Business of Creator).
3. In Notion, de database Content Calendar (zoek op naam). Vind je er meer dan één, sla dan de databases over met "template" in de naam of in het pad (de pagina's erboven). Blijft er meer dan één over, laat me dan kiezen welke de goede is: toon ze met het pad. Onthoud mijn keuze als een korte omschrijving, bijvoorbeeld "de database onder de pagina [naam]".
4. In die Content Calendar:
   - het veld Status met de opties Klaar, Gepland, Bezig, Fout en Live;
   - een datumveld Publicatiedatum;
   - een URL-veld Canva, voor de Canva-link;
   - een URL-veld URL, voor de link naar de geplaatste post.
   Heb ik een oudere kalender zonder het veld Canva, met de Canva-link in URL en een URL-veld Instagram voor de link naar de post, dan is dat ook goed.
Ontbreekt er iets, zeg dan precies wat en hoe ik het regel: een koppeling in de Claude-app via Aanpassingen (Customize) > Connectors en dan de naam; een veld of optie maak ik zelf aan in Notion, met precies deze naam. Maak zelf nooit een veld of optie aan. Ga pas verder als alles er staat.

Vraag daarna in één bericht:
1. Op welke vaste momenten wil ik posten? Geef deze keuzes, waarvan ik er één of meer kies: 08:00, 11:00, 14:00, 17:00 en 20:00. Zeg erbij dat ik ook een ander tijdstip mag noemen, op een heel of half uur. Leg erbij uit: elk moment wordt een eigen taak die elke dag één keer kijkt; meer momenten betekent meer runs en dus meer gebruik van je Claude-abonnement. De meeste mensen hebben genoeg aan één of twee.
2. Op welk mailadres wil ik de mails ontvangen?
3. Hoe laat moet de ochtendronde draaien? Standaard 07:00, en in elk geval vóór mijn eerste postmoment.
4. Klopt de tijdzone Europe/Amsterdam?

Elke publicatietaak start 5 minuten vóór het postmoment: postmoment 08:30 wordt een taak om 08:25. Zeg dat in één zin: zo staat de post op tijd live. In de taak blijft de regel "Dit postmoment" het echte postmoment (08:30).

Leg daarna in maximaal zes korte punten uit wat er gaat gebeuren:
- Elke ochtend zoekt Puk in Canva de designs bij mijn posts op Concept en Klaar. Heet een design precies "Carrousel - [haakje]" of "Reelomslag - [haakje]", dan komt de link in het veld Canva en wordt de status Gepland (of Klaar als er nog geen datum staat). Twijfel en posts op Gepland zonder design staan in zijn mail.
- Carrousels en posts met status Gepland gaan live op de Publicatiedatum, op het postmoment dat ik in Notion als tijd bij de Publicatiedatum zet. Zonder tijd gaat de post op mijn eerste postmoment. Zet ik een tijd die geen postmoment is, dan gaat hij op het eerstvolgende postmoment.
- Een post moet de Canva-link in het veld Canva en de caption in een codeblok op de pagina hebben. Zodra hij live staat, komt de link naar de post in het veld URL en krijg ik een mail met die link.
- Reels plaats ik zelf in Instagram of Edits. De mail van de ochtendronde noemt de reels van vandaag, met de links naar Notion en Canva.
- Eén post per postmoment. Gemiste posts gaan niet alsnog live; de status wordt Fout en ik krijg een mail.
- Plan ik daarnaast ook met de hand in Instagram of Meta Business Suite, dan staat de post er twee keer.
- Muziek uit de Instagram-bibliotheek kan niet via de koppeling. Bij een carrousel voeg ik die na publicatie toe via Bewerken.

Draai dan de proefrun, hier in dit gesprek:
---
Voer @canva-links uit, maar schrijf niets weg: laat alleen zien wat je zou koppelen.
Voer @cs-publiceren uit in modus proefrun.
Postmomenten: [postmomenten]
Mail naar: [mailadres]
Tijdzone: [tijdzone]
Content Calendar: [omschrijving]
---
De regel Content Calendar zet je alleen in de proefrun en in de taken als ik bij stap 3 een kalender heb moeten kiezen. Anders laat je hem weg.
De proefrun post niets en verandert niets in Notion; hij mailt wat er zou gebeuren. Vraag mij de mail te lezen en te zeggen of het klopt.

Pas na mijn ja maak je de geplande taken aan, die in de cloud draaien.

Per postmoment één taak, elke dag 5 minuten vóór dat postmoment, naam "Instagram publiceren [postmoment]":
---
Voer @cs-publiceren uit in modus publiceren.
Postmomenten: [alle postmomenten]
Dit postmoment: [dit postmoment]
Mail naar: [mailadres]
Tijdzone: [tijdzone]
Content Calendar: [omschrijving]
---

Eén ochtendtaak, elke dag op de ochtendtijd, naam "Puk: ochtendronde":
---
Voer @canva-links uit in modus ochtend.
Mail naar: [mailadres]
Tijdzone: [tijdzone]
Content Calendar: [omschrijving]
Noem in de mail ook de reels met Status Gepland en Publicatiedatum vandaag: die plaats ik zelf.
---

Heb ik nog een oudere avondtaak "Instagram avondcheck", vraag dan of je die mag uitzetten: die is niet meer nodig. Wil ik toch elke avond een mail met de posts van morgen, dan mag hij blijven.

Wordt het aanmaken van een taak geweigerd, bijvoorbeeld door een veiligheidscheck, zeg dan welke taak het is en vraag of ik bevestig dat je hem mag aanmaken. Na mijn ja probeer je het één keer opnieuw. Lukt het dan nog niet, geef de opdracht van die taak in één kopieerblok en de stappen om hem zelf aan te maken (zie EISEN).

Wil ik later een postmoment toevoegen of weghalen, dan moet de regel Postmomenten in álle taken gelijk blijven. Zeg dat erbij.

EISEN
- Altijd eerst de proefrun, en pas na mijn ja de taken aanmaken. Ook als ik zeg dat het snel moet.
- De taken draaien in de cloud, met de koppelingen Notion, Gmail, Composio en Canva. Ze verwijzen nooit naar bestanden op mijn computer.
- In elke taak staat dezelfde regel Postmomenten, met alle momenten die ik koos.
- Elke publicatietaak start 5 minuten vóór zijn postmoment; de regel Dit postmoment is het echte postmoment.
- Moest ik een Content Calendar kiezen, dan staat in elke taak dezelfde regel Content Calendar.
- Draait er al een taak van de skill cs-publiceren-metricool voor dezelfde Content Calendar, zeg dan dat die uit moet, anders staat elke post er twee keer.
- Kun je de taken niet zelf aanmaken, geef dan per taak de opdracht in één kopieerblok, plus genummerde stappen om ze zelf aan te maken onder Scheduled in de zijbalk van de Claude-app: geen map kiezen (dan draait hij in de cloud), dagelijks, 5 minuten vóór het postmoment (de ochtendronde op de ochtendtijd).
- Zeg na het aanmaken welke post als eerstvolgende live gaat, op welke datum en op welk postmoment, zodat ik weet wanneer de eerste echte run is.
- Schrijf kort en zonder jargon.

PRAKTIJKVOORBEELD
Zo wel: "In je Content Calendar mist de status Live. Voeg die toe in Notion: open de database, klik op het veld Status, voeg de optie Live toe in de groep Complete. Zeg het als het staat."
Waarom: ik weet precies wat ik moet doen, en jij verandert niets in mijn Notion.

Zo niet: meteen de taken aanmaken en daarna pas testen.
Waarom: dan kan de eerste echte run een post publiceren die nog niet af is, en publiceren is niet terug te draaien.

Ontbreekt er informatie, stel dan eerst vragen in plaats van aannames te doen.
Controleer je antwoord voordat je het geeft aan: heb je alle vier de koppelingen en alle velden gecontroleerd; heb je bij meerdere Content Calendars de template overgeslagen en mij laten kiezen; is de proefrun gedraaid en heb ik ja gezegd voordat je de taken aanmaakte; is er voor elk postmoment één taak die 5 minuten eerder start; staat in elke taak dezelfde regel Postmomenten, het echte postmoment bij Dit postmoment en het mailadres uit mijn antwoord.
