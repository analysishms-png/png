# 15_Sales_Marketing — Notes (open questions, dead code, site-specific facts)

## 1. Identity confusion is this module's defining trait

| Surface | Name | Identifier | Evidence |
|---|---|---|---|
| Builder menu | `SMS` | hex `18` (= decimal 24) | `[VERIFIED-VB6]` L498 |
| Strip tab | `Sale && Marketing` | 13th of 15 names in `Analysis.ini` key 9 | `[VERIFIED-UI]` |
| Runtime menu (SA) | `EXTRAs` → `SMS` | `OPT1 = 27` | `[VERIFIED-SQL]` |
| Documentation folder | `15_Sales_Marketing` | — | — |
| Module counter in INI list | 15th entry | — | `[VERIFIED-UI]` |

**`OPT1=24` (decimal of hex 18) has 0 rows at runtime** — the builder id was abandoned;
the live module sits at 27 under a root called `EXTRAs`. `[VERIFIED-SQL]`

`[INFERRED]` the product once had a "Sale & Marketing" feature set (hence the tab label
and `salmarCompProfile`), later reduced to pure SMS; the tab label and folder naming
survive the reduction.

## 2. Dead code inventory

| Item | Line(s) | Why dead | Evidence |
|---|---|---|---|
| `salmarCompProfile` arm | L480741→L480742 | caption `Company Profile` exists in **no** menu | `[INFERRED]` |
| `Happy Hours [ Fee Items ]` branch | L480752 | menu says `Fee Items`, dispatch tests `Free Items` | `[VERIFIED-VB6]` |
| Builder module id `18`/24 | — | 0 runtime menu rows | `[VERIFIED-SQL]` |
| `Company Profile` menu entry | — | absent from `menu_tree_raw` **and** `MenuHelp` | `[VERIFIED-VB6]` `[VERIFIED-SQL]` |
| `DBSendSMS` drain | no `UPDATE SENDTF` found | 18810 rows stuck pending | `[INFERRED]` |

Cross-module arms that are **alive but not this module's** (code proximity trap):
`pHappyHours`, `NewHappyHours`, `frmComboMast` (Main Setup → POS Setup),
`FrmBdayLookup` (Main Setup → Utility → `Guest LookUp`). See `logic/vb6_logic.md` §3.

## 3. Typo catalogue (this module)

| Location | Written | Should be | Evidence |
|---|---|---|---|
| Runtime group | `Sstup` | Setup | `[VERIFIED-SQL]` MenuHelp L340 |
| Runtime group parent | `EXTRAs` | Extras | `[VERIFIED-SQL]` MenuHelp L338 |
| Strip tab | `Sale && Marketing` | (escaped `&` in INI) | `[VERIFIED-UI]` Analysis.ini key 9 |
| Dispatch caption | `Happy Hours [ Free Items ]` | Fee Items | `[VERIFIED-VB6]` L480753 vs menu L89 |

Runtime proof of the `Sstup` path: screenshot filename
`C3_P6S1_EXTRAs__SMS__Sstup__SMS_API.png`. `[VERIFIED-UI]`

## 4. Site-specific data state

- `DBSendSMS` = **18810 rows** — the largest single-feature data residue found so far in
  the smaller modules. `[VERIFIED-SQL]`
- `SMSEnviro` = **1 row** → gateway was configured. `[VERIFIED-SQL]`
- Queue never drained → sending stopped (or never started) at some point.
  `[INFERRED]`
- **No reports** exist to surface any of it. `[VERIFIED-VB6]` `[VERIFIED-UI]`

## 5. Security-adjacent note (spec §26)

`SMSEnviro` likely holds gateway URL/API key/username. Its value was **not** dumped into
any documentation file during this work; `queries.sql` `V5` counts rows only.
`[VERIFIED-SQL]` `[INFERRED]` — keep it that way in any future export.

## 6. Open questions (spec §27)

1. `[UNKNOWN]` Which concrete form each `MemVar_*` slot holds (name-based `[INFERRED]`).
2. `[UNKNOWN]` Who sets `SENDTF='TRUE'` — external service not in this codebase?
3. `[UNKNOWN]` Why module id moved 24 → 27 (version change?) and whether other users'
   menus still have OPT1 24 (`V8` in `queries.sql` answers it read-only).
4. `[UNKNOWN]` Is `salmarCompProfile` reachable by any keyboard shortcut or MDI child?
5. `[UNKNOWN]` Should the strip tab be renamed to match the runtime module (`SMS`)? —
   modernization decision, not a defect.
