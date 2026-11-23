# Prompt: elke week je contentinbox verwerken

Daan (`cs-design`) verwerkt je contentinbox: de foto's en video's die je vanaf je telefoon in
Google Drive zet, in de map `Content Studio/Contentinbox`. Hij geeft elke foto een naam en een
beschrijving en zet hem in de juiste map van je Fotobibliotheek. Daaruit kiest hij foto's voor
je posts, en je ziet ze in je Design Studio bij "Kies foto". Met deze prompt gebeurt dat elke
maandag vanzelf. Los kan altijd: zeg in je project "verwerk mijn contentinbox".

Alles gaat via de koppeling met Google Drive. De taak draait in de cloud, dus ook als je computer
uitstaat.

Plak deze prompt in een nieuw gesprek in je project Content Studio.

---

RESULTAAT
Eén geplande taak die elke week mijn contentinbox in Google Drive verwerkt met Daan (cs-design). Eerst controleer je of alles klaarstaat, dan draai je één keer de verwerking hier in het gesprek, en pas na mijn ja maak je de taak aan.

EINDGEBRUIKER
Ik ben coach of online dienstverlener en niet technisch. Ik zet foto's vanaf mijn telefoon in Google Drive en wil daar verder niet naar omkijken. Zeg kort wat je doet, zonder jargon.

CONTEXT
De plugin Content Studio heeft de skill cs-design (Daan). Die verwerkt de map Content Studio/Contentinbox in mijn Google Drive: elke nieuwe foto krijgt een naam, een beschrijving en een plek in een submap van Content Studio/Fotobibliotheek. Video's gaan naar Contentinbox/Video's, onbruikbare foto's naar Contentinbox/Niet bruikbaar. iPhone-foto's (HEIC) blijven staan tot mijn Content Studio ze omzet. Er wordt nooit iets verwijderd.

Controleer eerst, voordat je iets vraagt:
1. De plugin Content Studio is geïnstalleerd: de skill cs-design staat in je lijst.
2. Google Drive is gekoppeld: probeer een zoekopdracht in Google Drive. Lukt dat niet, zeg dan dat ik Google Drive koppel in de Claude-app via Aanpassingen (Customize) > Connectors. Ga pas verder als het werkt.
3. In mijn Google Drive staat een map waarvan de naam eindigt op contentinbox, en een map Fotobibliotheek in Content Studio. Ontbreken ze, zeg dan dat ik @setup aanroep; die maakt de mappen aan. Ga pas verder als ze er staan.

Vraag daarna in één bericht:
1. Op welke dag en welk tijdstip? Stel maandag 08:30 voor: dan staan mijn foto's van het weekend klaar voor de week.

Draai dan één keer hier in het gesprek: "Verwerk mijn contentinbox" (Daan, cs-design). Staat er nog niets in de inbox, zeg dan dat ik een paar foto's vanaf mijn telefoon in de map zet, en draai daarna opnieuw. Laat me van twee of drie foto's de nieuwe naam en de beschrijving zien en vraag of het klopt.

Pas na mijn ja maak je de geplande taak aan, in de cloud, met de koppeling met Google Drive en Notion aan, wekelijks op het moment dat ik koos, naam "Daan: contentinbox verwerken":
---
Voer @inbox uit (cs-design, Daan) in modus taak: verwerk mijn contentinbox in Google Drive volgens de werkwijze van de plugin Content Studio. Verwijder niets en maak geen nieuwe mappen in de Fotobibliotheek. Is er niets nieuws, stop dan zonder melding.
---

Wordt het aanmaken van de taak geweigerd, zeg dan waarom en vraag of ik bevestig dat je hem mag aanmaken. Na mijn ja probeer je het één keer opnieuw. Lukt het dan nog niet, geef de opdracht in één kopieerblok en de stappen om hem zelf aan te maken onder Scheduled in de zijbalk van de Claude-app: wekelijks, op het moment dat ik koos, met de koppeling met Google Drive en Notion aan.

EISEN
- Altijd eerst de verwerking hier in het gesprek, en pas na mijn ja de taak aanmaken.
- De taak gebruikt de koppeling met Google Drive. Er hoeft geen map van mijn computer aan gekoppeld te zijn.
- Nooit iets verwijderen, ook niet uit Niet bruikbaar.
- Schrijf kort en zonder jargon.

PRAKTIJKVOORBEELD
Zo wel: "Ik zie je contentinbox niet in Google Drive. Roep @setup aan, die maakt de mappen voor je aan, en zeg het als hij er staat."
Waarom: ik weet precies wat ik moet doen.

Zo niet: vragen of ik een map van mijn computer koppel.
Waarom: Daan werkt via Google Drive, dus dat is niet nodig.

Ontbreekt er informatie, stel dan eerst vragen in plaats van aannames te doen.
Controleer je antwoord voordat je het geeft aan: werkt Google Drive, staan de mappen er, is de verwerking hier gedraaid en heb ik ja gezegd voordat je de taak aanmaakte, en draait de taak op het moment dat ik koos?
