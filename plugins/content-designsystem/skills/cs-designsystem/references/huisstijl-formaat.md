# huisstijl.json: het formaat

Dit is een letterlijke kopie van sectie 4 van `references/content-studio-afspraken.md` in de plugin
content-studio. De twee plugins worden apart geïnstalleerd; daarom staat het formaat hier ook.
**Houd dit bestand gelijk aan dat bestand.** Verandert sectie 4 daar, kopieer hem dan opnieuw
hierheen (en andersom).

---

## 4. huisstijl.json

`cs-designsystem` schrijft `Content Studio/Design System/huisstijl.json`. Daan zet het in de
database (`huisstijl/basis`). Alle maten zijn een deel van de breedte of hoogte van de slide
(0 tot 1), zodat dezelfde template op elke maat werkt.

```json
{
  "versie": 1,
  "naam": "Naam van het merk",
  "bijgewerkt": "2026-11-17",
  "afzender": "@account",
  "kleuren": [
    {"id": "donkergroen", "naam": "Donkergroen", "hex": "#1f3f36"},
    {"id": "oranje", "naam": "Oranje", "hex": "#ff6b00"},
    {"id": "wit", "naam": "Wit", "hex": "#ffffff"}
  ],
  "fonts": {
    "kop":    {"familie": "Rajdhani", "gewicht": 700, "bron": "google"},
    "tekst":  {"familie": "Arimo", "gewicht": 400, "bron": "google"},
    "accent": {"familie": "Biro Script Plus", "gewicht": 400, "bron": "bestand", "bestand": "assets/templates/lettertypes/BiroScriptPlus.ttf"}
  },
  "logos": [
    {"id": "logo-wit", "naam": "Logo wit", "bestand": "logo/logo-wit.png"}
  ],
  "achtergronden": [
    {"id": "achtergrond-groen-1", "naam": "Groene textuur", "bestand": "assets/templates/achtergronden/achtergrond-groen-1.png"}
  ],
  "themas": [
    {"id": "donker", "naam": "Donker", "achtergrond": "donkergroen", "kop": "wit", "tekst": "wit", "accent": "oranje", "achtergrondafbeelding": null},
    {"id": "licht", "naam": "Licht", "achtergrond": "wit", "kop": "donkergroen", "tekst": "donkergroen", "accent": "oranje", "achtergrondafbeelding": null}
  ],
  "standaardThema": "donker",
  "limieten": {"cover": 50, "tekst": 120, "kop": 35, "quote": 90, "lijst": "4x30", "cta": 50, "reelomslag": 40},
  "templates": [
    {
      "id": "cover", "naam": "Cover", "formaat": "carrousel",
      "vlakken": [{"x": 0, "y": 0.6, "b": 1, "h": 0.4, "kleur": "achtergrond", "dekking": 0.9}],
      "vakken": [
        {"id": "foto", "rol": "foto", "x": 0, "y": 0, "b": 1, "h": 1, "uitsnede": "vullen"},
        {"id": "kop", "rol": "kop", "x": 0.08, "y": 0.66, "b": 0.84, "h": 0.22, "font": "kop", "grootte": 0.075, "kleur": "kop", "uitlijning": "links", "hoofdletters": false, "maxTekens": 50},
        {"id": "afzender", "rol": "afzender", "x": 0.08, "y": 0.92, "b": 0.5, "h": 0.04, "font": "tekst", "grootte": 0.028, "kleur": "accent", "uitlijning": "links"}
      ]
    }
  ]
}
```

- **Kleuren in templates zijn rollen**, geen hexcodes: `achtergrond`, `kop`, `tekst`, `accent`.
  Het thema zegt welke kleur bij welke rol hoort. Wissel je van thema, dan verandert de slide mee.
  Een vak mag ook een vaste kleur-id hebben (bijvoorbeeld `"kleur": "oranje"`) als het merk dat zo
  doet.
- **Templates:** precies deze `id`'s, in deze volgorde: `cover`, `tekst`, `quote`, `lijst`, `stap`,
  `cta` (formaat `carrousel`, 1080x1350) en `reelomslag` (formaat `reel`, 1080x1920). Extra
  templates mogen erbij (bijvoorbeeld `kopslide`, `statement`).
- **Rollen van vakken:** `kop`, `ondertitel`, `tekst`, `quote`, `naam` (bij een quote), `lijst`
  (één regel per punt), `nummer` (bij een stap), `actie` (bij de CTA), `afzender`, `foto`, `logo`.
- **Velden van een tekstvak:** `font` (`kop`, `tekst` of `accent`), `grootte` (lettergrootte als
  deel van de slidebreedte), `kleur`, `uitlijning` (`links`, `midden`, `rechts`), `hoofdletters`
  (true/false), `maxTekens`.
- **Velden van een fotovak:** `uitsnede` (`vullen` of `passen`); van een logovak: `logo` (id).
- **Vlakken** zijn gekleurde rechthoeken achter de tekst: `x, y, b, h, kleur, dekking`.
- **Bestanden** (`bestand`) zijn paden vanaf de map Design System. Daan uploadt ze als asset en
  zet in de database bij elk bestand `"asset": "<url>"`.
- **Wissel template:** de studio houdt de tekst per rol. Heeft het nieuwe template die rol niet,
  dan gaat `quote` naar `kop`, `kop` naar `quote`, `lijst` naar `tekst` en andersom, en wat dan
  nog over is, achter de tekst.
