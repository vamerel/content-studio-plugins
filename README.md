# Claude Content Studio van VA-Merel

Deze marketplace bevat twee plugins:

| Plugin | Wat | Installeren in |
|---|---|---|
| `content-studio` | Claude Content Studio: je contentteam. Viggo (verhalen), Sam (speuren), Ruby (cijfers), Hanna (haakjes), Cato (captions), Koen (controle), Daan (designs via Claude Design of Canva) en Puk (Canva-links, inplannen via Metricool of publiceren via Composio) | Chat & Cowork |
| `content-designsystem` | De skill `cs-designsystem` (`@designsystem`) voor Claude Content Studio | **alleen** Claude Code |

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
