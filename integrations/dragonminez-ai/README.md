# dragonminez-ai: wiki sync from MediaWiki

`mediawiki-sync.patch` moves BulmaAI's wiki knowledge sync from the GitHub wiki
(a `git clone` of `dragonminez.wiki.git`) to the self-hosted MediaWiki at
https://wiki.dragonminez.com, read through `api.php`. It is made against
`DragonMineZ/dragonminez-ai` `main` at `5096a97` and has not been committed or
pushed anywhere.

## What changes

| File | Change |
|---|---|
| `src/bulmaai/services/wiki_knowledge.py` | New `load_mediawiki_pages(api_url, *, base_url, session=None)` and `clean_wikitext()`. Slugs use `_` for spaces. New uploads are tagged `source="mediawiki"`; legacy `github-wiki` files count as managed so they get cleaned up. The sync plan also deletes duplicate copies of a slug. |
| `scripts/sync_wiki_knowledge.py` | Reads from the API (`--api-url`, default `WIKI_API_URL`). The git clone path, `--wiki-dir` and `--wiki-git-url` are gone. It still refuses to sync an empty page set. |
| `src/bulmaai/config.py` | New `wiki_api_url` setting (`WIKI_API_URL`, default `https://wiki.dragonminez.com/api.php`). The `wiki_base_url` default becomes `https://wiki.dragonminez.com/wiki/Special:MyLanguage`. `wiki_git_url` / `WIKI_GIT_URL` is removed. |
| `src/bulmaai/web/settings_meta.py` | Updates the panel hints for the wiki settings. |
| `.github/workflows/wiki-sync.yml` | The schedule is now the main trigger (`17 */6 * * *`). `workflow_dispatch` (with `dry_run`) and `repository_dispatch: wiki-updated` stay as manual or external triggers. Fixes the comment that pointed to the gollum workflow. |
| `src/bulmaai/configs/prompts/support_facts_en.txt`, `README.md`, `data/knowledge/README.md` | Point to wiki.dragonminez.com instead of the GitHub wiki. |
| `tests/test_wiki_knowledge.py`, `tests/test_config_settings.py`, `tests/test_ai_guard.py` | Tests for the new behaviour (details below). |

### Behaviour

- **Pages synced:** every page in namespace 0 that is not a redirect (`list=allpages`, continuation followed). Page content is fetched in batches of 50 titles (`prop=revisions|info|pageprops`, `rvslots=main`, continuation followed).
- **Pages skipped:**
  - The main page, taken from `siteinfo`.
  - Translate translation pages. A page is skipped if it has the `translate-is-translation` page prop, or if its `pagelanguage` differs from the site content language. The page prop is required because Translate's source-language copy (`Janemba/en`) has `pagelanguage=en`, the same as the site, so a language check alone would sync it as a duplicate.
  - Pages that are empty once cleaned.
- **Cleaning:** removes `<translate>`/`</translate>`, `<!--T:n-->` markers, `<languages/>` and behaviour switches such as `__NOTOC__`. Unwraps `<tvar name=…>x</tvar>` to `x`, strips `Special:MyLanguage/` inside `[[links]]` and collapses blank lines. Templates and tables are kept as they are.
- **File names and links:** the title `Frost Demon` becomes `wiki--Frost_Demon.md`, with the source link `https://wiki.dragonminez.com/wiki/Special:MyLanguage/Frost_Demon`. Discord shows it as `[Frost Demon](<…>)`. Hyphens are kept (`Bio-Android`), and an apostrophe is URL-encoded as `%27`.
- **Link guard:** `ai_guard` trusts links on the host of `wiki_base_url`. That host used to be `github.com`, which meant any GitHub link was trusted. It is now `wiki.dragonminez.com`, so only the `github.com/dragonminez…` prefixes stay trusted.
- **Requests:** every API request sends the User-Agent `BulmaAI wiki knowledge sync (+https://github.com/DragonMineZ/dragonminez-ai)`.

### Why `wiki_git_url` could be removed

`load_settings()` only applies stored panel overrides for fields that still exist on `Settings`. The panel also only lists, sets and resets those fields. So a leftover `"wiki_git_url"` entry in `data/settings_overrides.json`, or a `WIKI_GIT_URL` line in `.env`, is ignored and does not break startup. `test_stored_override_for_removed_wiki_git_url_is_ignored` covers this. The same approach was used when the Dyno settings were removed in `40a556d`. You can delete those leftovers, but you don't have to.

## Apply

From a clean `dragonminez-ai` checkout on `main`:

```bash
git apply --check "path/to/mediawiki-sync.patch"
git apply "path/to/mediawiki-sync.patch"
PYTHONPATH=src DISCORD_TOKEN=dummy OPENAI_KEY=dummy GH_APP_PRIVATE_KEY_PEM=dummy python -m unittest discover -s tests
```

## Deploy

1. **Fill the production wiki first.** The first real sync deletes every legacy `github-wiki` file from the vector store. If only a few pages are on the wiki at that point, the bot loses most of its documentation.
2. **Check that GitHub Actions can reach the API.** The wiki sits behind Cloudflare. From a machine outside the VPS, run `curl -A "BulmaAI wiki knowledge sync" "https://wiki.dragonminez.com/api.php?action=query&meta=siteinfo&format=json"`. You should get JSON back, not a challenge page. If Cloudflare challenges it, add a WAF skip rule for `/api.php` (GET only).
3. **Check for overrides of the wiki settings.** In the panel, go to Settings → Advanced → *Wiki URL* and *Wiki API URL*. Neither should be overridden. Also make sure the bot's `.env` does not set `WIKI_BASE_URL` to the old GitHub address. An override there would keep the source links on GitHub.
4. **Merge the change into `main`.** The patch touches `bulmaai.config`, so the self-updater treats it as a full restart that waits for the owner, not a hot reload.
5. **Dry run.** Actions → *Wiki Knowledge Sync* → *Run workflow* with `dry_run` checked. Expect one `upload` per wiki page and a `delete` for every old `Stats-and-Attributes`-style slug.
6. **Restart the bot, then run the real sync straight away.** Run the same workflow without `dry_run`. Between these two steps, citations and file names come from different schemes, so source links can briefly point to missing pages. Keep the gap short.
7. **From then on**, the sync runs every 6 hours at minute 17, so wiki edits reach the bot within about 6 hours. To sync sooner, use *Run workflow*, or send a dispatch: `gh api repos/DragonMineZ/dragonminez-ai/dispatches -f event_type=wiki-updated`.

### Clean up in the mod repo (not part of this patch)

`.github/workflows/wiki-sync.yml` in `DragonMineZ/dragonminez` ("Trigger AI knowledge sync", `on: gollum`) becomes obsolete once the GitHub wiki is retired. Delete it, along with its `DRAGONMINEZ_AI_DISPATCH_TOKEN` secret, and revoke the token. This patch does not touch that repo.

## Notes

- Only source-language (English) pages are synced. The model answers in the user's language, and `Special:MyLanguage` links open the reader's translation when one exists.
- A page title containing `/` that is not a translation would produce a file name with `/` in it. No wiki page is named like that today.
- GitHub pauses scheduled workflows after 60 days without activity in the repository. If the bot repo goes quiet for that long, re-enable the workflow.

## Verification done

- `pytest tests`: 865 passed, 1 failed. The failure is `test_raid_guard.py::test_raid_mode_extends_while_joins_keep_coming`, which is timing-dependent on Windows (coarse `time.monotonic()` resolution). It also fails on unpatched `main` and does not touch this change.
- The touched suites pass under `unittest`: `test_wiki_knowledge`, `test_ai_guard`, `test_config_settings`, `test_openai_client_tools` (67 tests) and `test_settings_meta` (6 tests).
- The patch applies cleanly with `git apply --check` on a fresh clone of `main`.
- Live run against the local lab (`http://127.0.0.1:8080/api.php`). It listed 5 titles (`Janemba`, `Janemba/en`, `Janemba/es`, `Main Page`, `Main Page/en`) and loaded one page, `wiki--Janemba.md` → `https://wiki.dragonminez.com/wiki/Special:MyLanguage/Janemba`. The cleaned body had no Translate markup left, and no `/en`, `/es`, `/pt` or main page was included.
