# Claude Content Studio van VA-Merel

Deze marketplace bevat twee plugins:

| Plugin | Wat | Installeren in |
|---|---|---|
| `content-studio` | Claude Content Studio: haakjes, captions, prompts voor Claude Design, ideeën bewaren, automatisch publiceren (route A met Metricool, route B met Composio) | Chat & Cowork |
| `content-designsystem` | De skill `@designsystem` voor Claude Content Studio | **alleen** Claude Code |

Content Studio werkt op basis van je Business DNA. Die plugin staat in een eigen marketplace:
`vamerel/businessdna`.

De installatie-instructies en de uitleg vind je in de leeromgeving van de training.

## Kort

- Voeg in de Claude-app de marketplace `vamerel/content-studio-plugins` toe en installeer
  `content-studio`.
- Zet automatisch synchroniseren aan, dan krijg je nieuwe versies vanzelf.
- Installeer `content-designsystem` alleen in Claude Code.

## Voor de beheerder

Deze repo wordt gevuld door `publiceer-marketplace.ps1` vanuit de bronmappen. Pas hier niets
met de hand aan in `plugins/`: de volgende publicatie overschrijft het. `marketplace.json` en
deze README beheer je zelf; het script neemt ze mee in de publicatiecommit.
