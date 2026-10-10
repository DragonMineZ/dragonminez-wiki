# DragonMineZ Wiki — writing guide

Rules for every page in `content/pages/`. The wiki runs MediaWiki 1.43 with the DragonMineZ skin, Scribunto, ParserFunctions, Cite, SyntaxHighlight, TemplateStyles and **Translate** (content is written in English and translated to Spanish and Portuguese).

## 1. Files and titles

- One page = one file: `content/pages/Main/<Title>.wiki` (main namespace), `content/pages/Template/<Name>.wiki`, `content/pages/Category/<Name>.wiki`.
- Titles use **Title Case** and the in-game names (check `en_us.json` of the mod when unsure): `Saiyan`, `Master Roshi`, `Hyperbolic Time Chamber`, `Training Points and Mastery`. No slashes in titles (a slash means "subpage" and `/es`, `/pt` are reserved for translations). Use `and` instead of `&` in titles.
- Only titles listed in `docs/IA.md` or created by you in your domain may be linked. If something has no page, write it as plain bold text instead of a red link.

## 2. Page skeletons

**Entity page** (a race, a master, a boss, a raid, a weapon…):

```
{{Infobox <Type>
|quote=<translate>One-line flavour or summary (optional).</translate>
|Field=<translate>text value</translate>
|Numeric field=72000
}}
<translate>
'''Name''' is … (2–4 sentence lead: what it is, where/how players meet it, why it matters).
</translate>

<translate>
== Section ==
</translate>
<translate>
Body text…
</translate>

{{Navbox <Domain>}}
```

**Hub page** (Races, Masters, World Bosses…): short lead explaining the concept and the shared mechanics, then a card grid linking every entity page, then shared mechanics sections (moved here from the old page), then the navbox.

```
<div class="dmz-cards">
{{Card|Saiyan|<translate>A warrior race that grows stronger after every battle.</translate>}}
{{Card|Namekian|<translate>Peaceful regenerators with a deep link to magic.</translate>}}
</div>
```

**Topic/mechanics page** (Stats and Attributes, Combat…) and **config/modding pages**: lead, sections, tables, `{{Config|...}}` hatnotes, navbox.

Every page must start with an infobox or a lead paragraph — never with a heading. The table of contents appears automatically once a page has 4+ headings; do not add `__TOC__`. Use `__NOTOC__` only on hub pages that are mostly cards.

## 3. Translate markup (critical)

- Wrap every piece of human-readable English in `<translate>…</translate>`. Translators work unit by unit; a unit is a paragraph separated by a blank line inside a `<translate>` block.
- Put each heading in its own unit: a blank line before and after `== Heading ==` inside the block, or its own block.
- Keep markup that must not be translated **outside** the tags: templates, `{| |}` table syntax, `<div>`, infobox field names, numbers, file names, JSON/code blocks.
- Tables: keep the table syntax outside and wrap each text cell: `| <translate>Summons Mini Janembas.</translate> || 6,720,000`.
- Infobox: wrap text values (`|Lair=<translate>The bottom of Hell</translate>`); leave numbers, ids and code as they are.
- Code, JSON, commands and config keys inside prose are fine inside a unit (`<code>/dmzreload</code>`); translators keep them unchanged. Multi-line code blocks (`<syntaxhighlight>`) always go **outside** `<translate>`.
- Never write `<!--T:n-->` markers yourself; the Translate extension adds them.
- Do not use `<languages/>`; the skin shows the language switch.

## 4. Links and templates

- Internal links: `[[Special:MyLanguage/Saiyan|Saiyan]]` (sends readers to their language). Inside a sentence you may write the visible text freely: `[[Special:MyLanguage/Saiyan|Saiyans]]`.
- `{{L|Page}}` renders a link with the page name already translated (use it in tables, infobox values, card lists and navboxes; inside prose prefer the explicit `Special:MyLanguage` link so translators can adjust grammar).
- Section links: `[[Special:MyLanguage/Raids#Commands|raid commands]]`.
- External links: `[https://example.com text]`.
- Hatnotes at the top of a section: `{{Main|Transformations}}`, `{{See also|Weights|Gravity Device}}`, `{{Config|General Server Config|worldBoss}}`.
- Keys: `{{Key|V}}`, `{{Key|Alt}} + {{Key|F}}`. Commands: `{{Command|/dmzlocate}}`.
- Notes: `{{Note|type=tip|title=<translate>Tip</translate>|<translate>Text.</translate>}}`; types `info` (default), `tip`, `warning`, `danger`, `config`. They replace the old `>` quotes.
- Infoboxes: `{{Infobox Race}}`, `{{Infobox Class}}`, `{{Infobox Form}}`, `{{Infobox Master}}`, `{{Infobox Dimension}}`, `{{Infobox Structure}}`, `{{Infobox Mob}}`, `{{Infobox World Boss}}`, `{{Infobox Raid}}`, `{{Infobox Tournament}}`, `{{Infobox Saga}}`, `{{Infobox Dragon}}`, `{{Infobox Item}}`, `{{Infobox Weapon}}`, `{{Infobox Armor}}`, `{{Infobox Skill}}`, `{{Infobox Technique}}`, `{{Infobox Fusion}}`, `{{Infobox Effect}}`. Their fields are listed in `docs/IA.md`. Leave fields you can't fill empty (omit them). Do not pass `image`: the infobox shows `File:<Page name>.png` when it exists and a placeholder otherwise; the team uploads the real images later.
- Infoboxes add the category automatically. Add extra categories at the very bottom: `[[Category:Hostile mobs{{#translation:}}]]` (always with `{{#translation:}}`).

## 5. Content rules

- **Only facts from the source** (the old GitHub wiki in `repos/wiki-src/` or the mod's code in `dmz22/`). Never invent numbers, names, drops or mechanics. If the source is vague, stay vague.
- Player-facing pages explain what players see and do. JSON keys and config details belong in the config pages (link them with `{{Config|...}}`).
- Tone: clear, concise, second person for instructions ("Hold the transform key…"), present tense. No marketing language, no emojis.
- Numbers: thousands with commas (`1,350,000`), units spelled (`blocks`, `seconds`, `minutes`), percentages as `25%`.
- Headings in sentence case: `== Finding the lair ==`.
- Each page ends with its domain navbox. Keep "Related:" link lines out; the navbox and the right rail do that job.
