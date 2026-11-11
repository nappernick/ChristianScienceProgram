# The Scrolls Beneath the Sea

A novel in two timelines: **2075** (Miriam Calder, the dive and what follows) and **Year 304 of the Pilgrimage** (Wren, aboard the ship).

Start every session by reading `STATE.md`, then `HOW_WE_WRITE.md`.

## Map

| Path | What it holds | Who may change it |
| --- | --- | --- |
| `STATE.md` | Where the work stands, what is next, what is waiting on the author | Anyone, every session |
| `HOW_WE_WRITE.md` | Method: principles, rules, tests | Author |
| `canon/bible.md` | The story Bible. The book | Author only |
| `canon/ledger.md` | Every decision, every invention awaiting a ruling, every known conflict | Anyone adds; author rules |
| `canon/sealed.md` | What is actually true behind the book's open questions | Author only |
| `canon/timeline.md` | One chronology for both eras | Follows the ledger |
| `canon/numbers.md` | Every figure, with its derivation | Follows the ledger |
| `canon/names.md` | Every name, placeholder and unnamed thing | Follows the ledger |
| `canon/characters/` | One folder per person, eight files each, plus `_ensemble.md` | Proposals, until ruled |
| `canon/lore/` | Ship customs and their lineage. `_index.md` maps each to its 2075 source | Proposals, until ruled |
| `canon/ship-era/` | The Christian Space Program material (ships, sacraments, aliens, technology) | Status undecided: see ledger C6 |
| `book/outline.md` | The spine and one card per chapter | Author and collaborators |
| `book/threads.md` | Setups and payoffs, dead ends, and who knows what | Updated with every chapter |
| `book/chapters/` | The manuscript. One file per chapter, prose only | Author has final say on every line |
| `book/drafts/` | Alternate drafts of a chapter not yet chosen | |
| `book/notes/` | Editorial notes, one file per chapter | |
| `art/` | Image prompts, style guides, generated images | |
| `archive/` | Originals as received, superseded files. Never edited | |
| `tools/book.sh` | Word counts and a compiled manuscript | |

## Precedence

When two sources disagree, the higher one wins and the conflict goes in the ledger.

1. `canon/bible.md`
2. `book/chapters/` (a chapter the author has approved)
3. A ledger entry marked **Accepted**
4. Everything else, which is **Proposed**

## Status words

- **Fixed:** in the Bible or an approved chapter.
- **Accepted:** proposed by a collaborator and approved by the author in the ledger.
- **Proposed:** written down, usable in drafts, not yet ruled on.
- **Overruled:** rejected. Stays in the ledger so it is not proposed again.

## Conventions

- A chapter file is `NN-slug.md` with a short header (chapter, era, pov, status, pending). Body is prose only.
- A fact lives in one file. Other files point to it.
- Anything new a draft invents is added to the ledger in the same session.
- Markdown is the source. Word and e-book files are built from it, never edited by hand.
