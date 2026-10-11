# DragonMineZ Wiki — page map

The wiki is organised by **entities**: a hub page explains a concept and the shared mechanics, and every entity gets its own page (each race, master, boss, raid, saga…). The old GitHub wiki (`dragonminez.wiki` repository) is the source of facts; the mod source (`dmz22/`) can confirm details.

Titles below are fixed: link to them freely. Pages marked *(domain decides)* are created by the domain owner, who lists every title they create in `docs/registry/<domain>.txt` (one title per line).

## Infobox fields

All fields are optional. Use the exact field names (they are case sensitive).

- `{{Infobox Race}}` (adds Category:Races): Type, Parent race, Racial skill, Forms, Stack forms, Strengths, Playstyle, Fusion
- `{{Infobox Class}}` (adds Category:Classes): Passive, Playstyle, Recommended races, Strength, Strike Power, Resistance, Vitality, Ki Power, Energy
- `{{Infobox Form}}` (adds Category:Forms): Race, Group, Form type, Requirements, Multiplier, Drain, Mastery
- `{{Infobox Master}}` (adds Category:Masters): Location, Structure, Alignment, Locate, Teaches, Training, Services
- `{{Infobox Dimension}}` (adds Category:Dimensions): Gravity, Access, Biomes, Resources, Inhabitants, Structures, Bosses
- `{{Infobox Structure}}` (adds Category:Structures): Dimension, Biome, Location, Locate, Inhabitants, Purpose, Protection
- `{{Infobox Mob}}` (adds Category:Bestiary): Type, Dimension, Spawns, Behavior, Health, Damage, Ki damage, Abilities, Drops, TP reward
- `{{Infobox World Boss}}` (adds Category:World Bosses): World, Lair, Coordinates, How to find, Boss key, Respawn, Health, Transforms into, Transformed health, Minions, Signature moves, Reward, Drops, Techniques
- `{{Infobox Raid}}` (adds Category:Raids): Raid id, Dimension, Raid site, Waves, Bosses, Scout health, Scout melee, Scout ki, Rewards, Defeat penalty
- `{{Infobox Tournament}}` (adds Category:Tournaments): Tournament id, Host, Arena, Format, Ring, Difficulty, Fighters, Final, Rewards, Re-entry cooldown
- `{{Infobox Saga}}` (adds Category:Sagas): Order, Quests, Difficulty, Villains, Unlocks, Rewards, Previous, Next
- `{{Infobox Dragon}}` (adds Category:Dragons): Dimension, Dragon Balls, Radar, Wishes, Cooldown
- `{{Infobox Item}}` (adds Category:Items): Type, Effect, Duration, Stack size, Obtained, Crafting, Sold by
- `{{Infobox Weapon}}` (adds Category:Special Weapons): Moveset, Reach, Critical chance, Critical damage, Durability, Obtained, Required for
- `{{Infobox Armor}}` (adds Category:Armor): Pieces, Defense, Set bonus, Pattern, Crafted at, Materials
- `{{Infobox Skill}}` (adds Category:Skills): Type, Max level, Key, Taught by, Cost, Effect
- `{{Infobox Technique}}` (adds Category:Techniques): Type, Attack type, Taught by, Races, Ki cost, Damage, Cooldown, Charge time, Range
- `{{Infobox Fusion}}` (adds Category:Fusions): Method, Requirements, Duration, Item, Result, Ending
- `{{Infobox Effect}}` (adds Category:Effects): Type, Source, Duration, Effect, Stacks

## Domains

### D1 — Character
Source: `Races.md`, `Racial-Skills.md`, `Transformations-and-Mastery.md`, `Player-Classes.md` (+ config references to `General-Server.md`).

- **Races** (hub: what races are, choosing one, android upgrade summary, legendary forms, comparison table, card grid)
- Race pages (Infobox Race): **Human**, **Android** (sub-race of Human), **Saiyan**, **Namekian**, **Frost Demon**, **Bio-Android**, **Majin**, **Glind**. Each race page contains: lead, overview and strengths, its racial skill (full details from Racial-Skills), its transformations (table with every form and group, multipliers and costs when the source has them, requirements), race-specific notes (False Super Saiyan on Saiyan, Oozaru…), customization specifics, configuration pointers.
- **Transformations** (hub: how forms work, story requisites, energy consumption, descending, stackable forms, legendary forms, mastery; table linking each race's transformations section)
- **Racial Skills** (hub: active vs passive, how to use, resetting; summary table linking each race page section)
- **Classes** (hub: what classes do, default stat scaling comparison table, card grid)
- Class pages (Infobox Class): **Warrior**, **Martial Artist**, **Spiritualist**, **Berserker**, **Paladin**, **Tank**, **Cleric**, **Unversed**
- Stack forms *(domain decides)*: for example **Kaioken** and **Ultimate** when the source has enough for a page (Infobox Form).
- Navboxes: `Template:Navbox Races`, `Template:Navbox Classes`.

### D2 — World
Source: `Dimensions.md`, `Dimension-*.md`, `Structures.md`, `Masters.md`, `Training-Points-and-Mastery.md` (minigames), `Space-Pod-Destinations.md` (player side only).

- **Dimensions** (hub) + pages (Infobox Dimension): **Earth** (the Overworld), **Namek**, **Sacred Kai Planet**, **Hyperbolic Time Chamber**, **Otherworld**, **Demon Realm**
- **Structures** (hub: alignment, protection, finding structures, `/dmzlocate`, locator NPCs, table of every structure) + structure pages *(domain decides: one page per notable structure that has a master, boss, raid or unique function — Infobox Structure)*
- **Masters** (hub: where to find them, talking, alignment, services, comparison table) + pages (Infobox Master): **Master Roshi**, **Goku**, **King Kai**, **Korin**, **Piccolo**, **Gohan**, **Krillin**, **Vegeta**, **Trunks**, **Yamcha**, **Fortuneteller Baba**, **Old Kai**, **Babidi**, **Frieza**, **Cell**, **Toribot** (drop any that the source or the mod shows are not masters; add any missing one and register it)
- **Training Minigames** (Shadow Boxing, Ki Control, Gravity, Precision, Old Kai's Ultimate Challenge, Shadow Dummy and any other in the source)
- Navboxes: `Template:Navbox Dimensions`, `Template:Navbox Masters`, `Template:Navbox Structures`.

### D3 — Bestiary and challenges
Source: `Bestiary*.md`, `World-Bosses.md`, `Raids.md`, `Tournaments.md`, `Dimension-Demon-Realm.md`, `Dimension-Otherworld.md`.

- **Bestiary** (hub: how wild enemies spawn, how DMZ mobs fight, card grids per group) + pages (Infobox Mob): **Dinosaurs**, **Sabertooth Tiger**, **Giant Fish**, **Giant Turtle**, **Namek Frog**, **Bandit**, **Red Ribbon Army**, **Saibamen**, **Frieza Soldier**, **Gete Robot**, **Mini Buu**, **Hell Ogre**, **Mini Janemba**, **Gomah Soldier**, **Capsule Corp Assistant**, **Capsule Corp Namekian**, **Namekian Trader**, **Namekian Warrior**, **Demon Realm Villager**, **Time Patroller**. Extra categories: `Wildlife`, `Hostile mobs`, `NPCs`.
- **World Bosses** (hub: lairs, waking, respawning, fighting rules, knockouts, reviving, contribution, rewards, commands, config pointer) + pages (Infobox World Boss): **Janemba**, **Turles**, **Metal Cooler Core**, **Tamagami Number 3**, **Tamagami Number 2**, **Tamagami Number 1**, **Gomah**
- **Raids** (hub: how a raid plays out, difficulty, commands, config summary) + pages (Infobox Raid): **Saiyan Assault**, **Frieza's Invasion**, **Gomah's Army**
- **Tournaments** (hub: formats, entering, bouts, parties, winning, the tournament screen, arena protection, commands, config summary) + pages (Infobox Tournament): **Fortuneteller Baba's Tournament**, **Cell Games**, **Otherworld Tournament**
- Navboxes: `Template:Navbox Bestiary`, `Template:Navbox Challenges` (world bosses + raids + tournaments).

### D4 — Story
Source: `Sagas.md`, `Dragons-and-Wishes.md`, `Custom-Wishes.md` (player-facing parts only).

- **Sagas** (hub: saga order, difficulty, how saga fights work, enemy AI tiers, rewards, dying during the story, card grid) + pages (Infobox Saga): **Classic Saga**, **Saiyan Saga**, **Frieza Saga**, **Android Saga**, **Future Saga**, **Buu Saga**, **Movies Saga**, **GT Saga**, **Daima Saga** (each with its full quest list from the source)
- **Dragons and Wishes** (hub: how summoning works, Dragon Balls, radars) + pages (Infobox Dragon): **Shenron**, **Porunga** (full wish lists)
- Navboxes: `Template:Navbox Sagas`, `Template:Navbox Dragons`.

- **Sidequests** (hub: how side quests work, party scaling, repeatable quests, one table per in-game category). The tables come from `{{#invoke:Sidequests|category|<category>}}`; every quest-giver page (masters and **Bulma**) shows its own with `{{#invoke:Sidequests|giver|<npc id>}}`. The data (`Module:Sidequests/data`) is generated from the mod by `tools/questdump/run.py` + `tools/build_sidequests.py`; never edit it by hand. Translated quest names and descriptions go in `docs/registry/sidequests-i18n.tsv` (`key<TAB>en<TAB>es<TAB>pt`).
- **Bulma** (quest NPC, Infobox Mob, category NPCs).

### D5 — Gear
Source: `Items.md`, `Armors.md`, `Special-Weapons.md`, `Enchantments.md`, `Effects.md`, `Weights.md`, `Gravity-Device.md`, `Gravity-System.md` (player side).

- **Items** (hub with one section per item family and tables linking item pages) + item pages *(domain decides: one page per item, or per family of variants such as Scouters — Infobox Item)*. Must include pages for items other domains mention: **Senzu Bean**, **Dragon Radar**, **Scouters**, **Golden Carrot**, **Space Pod**, **Flying Nimbus**, **Capsules**.
- **Armor** (hub: crafting with the Pattern Station and Dr. Kikono's Station, defense and resistance) + armor pages *(domain decides — Infobox Armor)*
- **Special Weapons** (hub: the combat system, comparison table) + pages (Infobox Weapon): **Yajirobe's Katana**, **Brave Sword**, **Z Sword**, **Power Pole**, **Dimension Sword**, **Tamagami Sword**, **Tamagami Trident**, **Tamagami Hammer**
- **Enchantments** (single page)
- **Effects** (hub with every effect) + pages for complex ones *(domain decides, for example **Majin Mark** and **Mutant** — Infobox Effect)*
- **Weights**, **Gravity Device**, **Gravity** (gameplay: sources, penalties, training zones, drain; config keys go to Gravity Config)
- Navboxes: `Template:Navbox Items`, `Template:Navbox Weapons`.

### D6 — Abilities
Source: `Abilities.md`, `Techniques.md`, `Fusions.md`.

- **Skills** (hub: buying and levelling, table of every skill and passive ability) + skill pages *(domain decides: skills with real mechanics such as **Fly**, **Ki Sense**, **Instant Transmission**, **Potential Unlock**, **Meditation**, **Ki Manipulation** — Infobox Skill)*
- **Techniques** (hub: using techniques, charging, overcharge, ki attack types, technique XP and upgrades, creating your own ki attacks, terrain destruction, beam clashes) + **Ki Attacks**, **Strike Attacks**, **Evasion Techniques** (full tables, who teaches each) + pages for techniques with unique mechanics *(domain decides — Infobox Technique)*, **Fake Moon** and **Beam Clash** when the source has enough
- **Fusions** (hub: while fused, ending a fusion, comparison) + pages (Infobox Fusion): **Fusion Dance**, **Potara Earrings**, **Medi-Bug Beetles**
- Navbox: `Template:Navbox Abilities` (skills, techniques, fusions).

### D7 — Mechanics and reference
Source: `Stats-and-Attributes.md`, `Training-Points-and-Mastery.md`, `Combat.md` (player-facing parts), `Character-Customization.md`, `Menu.md`, `Controls.md`, `HUD-and-HUD-Editor.md`, `Commands.md`, `FAQ.md`, `CHANGELOG.md`, plus every other page for the beginner's guide.

- **Beginner's Guide** (new: first steps from character creation to the first master, first saga, training and transforming — built only from facts in other pages, linking them)
- **Stats and Attributes**, **Alignment** (own page: what changes it and what it gates: masters, NPCs, raids, Cell…), **Training Points and Mastery**, **Combat** (player-facing: melee, blocking, parry, poise, ki protection and infusion, knockback, dodge, ki charging and Ki Surge, combat flight, ki weapons), **Character Customization**, **Menus**, **Controls**, **HUD**, **Commands**, **FAQ**, **Changelog**
- Navbox: `Template:Navbox Mechanics`.

### D8 — Configuration
Source: `General-Server.md`, `General-User.md`, `Combat.md`, `Skills.md`, `Entities.md`, `Gravity-System.md`, `Dynamic-Growth.md`, `Gamerules.md`, `Permissions.md`, `Notice-to-server-owners-developers.md`, `Reloading-and-updating-changes.md`.

- **Configuration** (hub: where config lives, the files, how config reaches clients, card grid)
- **General Server Config** (`general-server.json`), **General User Config** (`general-user.json`), **Combat Config** (`combat.json`), **Skills Config** (`skills.json` and `techniques.json`), **Entities Config** (`entities.json`), **Gravity Config**, **Dynamic Growth** (player-facing explanation first, then config), **Gamerules**, **Permissions**, **Notice to Server Owners**, **Reloading and Updating Changes**
- Navbox: `Template:Navbox Configuration`.

### D9 — Modding, add-ons and project
Source: `How-to-JSON.md`, `Locating-specific-folders.md`, `Custom-*.md`, `NPC-*.md`, `Space-Pod-Destinations.md`, `Weapon-Attributes.md`, `Developer-Scope-and-Prerequisites.md`, `Getting-Started.md`, `Implementation-&-Events.md`, `Creating-a-DMZ-Addon.md`, `Contributing.md`, `Security.md`.

- **Modding** (hub: what you can add without code, card grid)
- **How to JSON**, **Locating Specific Folders**, **Custom Races**, **Custom Forms**, **Custom Quests**, **Custom Wishes**, **NPC Placement and Alignment**, **NPC Dialogue**, **Space Pod Destinations**, **Weapon Attributes**, **Custom Models and Assets**
- **Add-on Development** (hub) + **Developer Scope and Prerequisites**, **Add-on Getting Started**, **Implementation and Events**, **Creating a DMZ Addon**
- **Contributing**, **Security Policy**
- Navboxes: `Template:Navbox Modding`, `Template:Navbox Add-ons`.

## Reserved for the maintainer

`Main Page`, `MediaWiki:Sidebar` (and its `/es`, `/pt` versions), `Category:*` pages, `Module:*`, the infobox and utility templates.
