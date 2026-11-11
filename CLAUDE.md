# The Scrolls Beneath the Sea

A novel in two timelines, kept as a Markdown repository. Read `STATE.md` first, then `HOW_WE_WRITE.md`, then the files `STATE.md` points to. `README.md` has the full map.

## Standing instruction

Work through the queue in `STATE.md` without stopping to ask. Where a decision is the author's and has not been made, use the default listed in `STATE.md` under "Defaults in force," record the choice in `canon/ledger.md` as Proposed, and keep going. Stop only for a change to what the artifact is, who Miriam is, or the history of the war.

## Precedence

1. `canon/bible.md`
2. An approved chapter in `book/chapters/`
3. A ledger entry marked Accepted
4. Everything else, which is Proposed

## Never

- Edit `canon/bible.md`, `canon/sealed.md`, or anything in `archive/`.
- Delete a ledger row or change a ruling. Add notes to the Status cell.
- State in prose anything `canon/sealed.md` holds open.
- Let the artifact act. Water, rock and people do the work.
- Let the 2075 narrator know the future.

## For every chapter

1. Reread the Bible passages it draws on.
2. Read the folder of every person in it. Each choice a person makes should trace to a line there.
3. Write it to `book/chapters/NN-slug.md` with the header block (chapter, title, era, pov, status, pending). Body is prose only.
4. Alternate drafts go to `book/drafts/NN-slug.draftN.md`. Each draft gets its own plan, and the plans go in `book/notes/NN-slug.md`.
5. Run `tools/book.sh count` and `tools/book.sh check`.
6. Update in the same session: `canon/ledger.md` (everything invented), `book/threads.md` (all three tables), `book/outline.md` (the chapter card), `canon/numbers.md`, `canon/names.md`, `canon/timeline.md`, `canon/lore/_index.md`.
7. A new person gets a folder of eight files under `canon/characters/`. A new custom gets a lore file with its 2075 source, each hand it passed through, and why it changed.
8. Write editorial notes to `book/notes/NN-slug.md`.
9. Rewrite `STATE.md`.
10. Commit, one commit per chapter.

## Voice

Chapter 2 of the original (`archive/chapter_two_draft.md`) is the model: close third person, restrained, data before sight, a professional judgment in place of a cliffhanger. The comparison is *Sphere* meets *The Sparrow*, with hard science that survives a hostile oceanographer. Use "Not X. Not Y. Something else" at most once a chapter.

## Commands

| Command | Does |
| --- | --- |
| `tools/book.sh count` | Words per chapter and per era |
| `tools/book.sh check` | Superseded names and the negation tic |
| `tools/book.sh build` | `book/build/manuscript.md`, and `.docx` if pandoc is installed |
