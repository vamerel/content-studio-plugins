# Claude Content Studio van VA-Merel

Deze marketplace bevat vier plugins:

| Plugin | Wat | Installeren in |
|---|---|---|
| `content-studio` | Claude Content Studio: haakjes, captions, prompts voor Claude Design, ideeën bewaren | Chat & Cowork |
| `content-designsystem` | De skill `@designsystem` voor Claude Content Studio | **alleen** Claude Code |
| `content-publiceren-metricool` | Route A: automatisch inplannen via Metricool | Chat & Cowork, alleen bij route A |
| `content-publiceren-composio` | Route B: automatisch publiceren via Composio | Chat & Cowork, alleen bij route B |

Van de twee publiceerplugins installeer je er één: die van de route die je kiest. Installeer je
ze allebei, dan staat elke post er twee keer.

Content Studio werkt op basis van je Business DNA. Die plugin staat in een eigen marketplace:
`vamerel/businessdna`.

De installatie-instructies en de uitleg vind je in de leeromgeving van de training.

## Kort

- Voeg in de Claude-app de marketplace `vamerel/content-studio-plugins` toe en installeer
  `content-studio`.
- Zet automatisch synchroniseren aan, dan krijg je nieuwe versies vanzelf.
- Installeer `content-designsystem` alleen in Claude Code.
- Ga je automatisch inplannen, installeer dan de publiceerplugin van je route.

## Voor de beheerder

Deze repo wordt gevuld door `publiceer-marketplace.ps1` vanuit de bronmappen. Pas hier niets
met de hand aan in `plugins/`: de volgende publicatie overschrijft het. `marketplace.json` en
deze README beheer je zelf; het script neemt ze mee in de publicatiecommit.
