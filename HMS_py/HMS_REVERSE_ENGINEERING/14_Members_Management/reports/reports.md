# 14_Members_Management — Reports

## 1. Menu report rows (builder tree) — 8 rows

`menu_tree_raw.txt` hex `17`, group `Reports` at L489, rows L490-L497, all `type=1`.
`[VERIFIED-VB6]`

| # | Report caption | menu line | Dispatch caption line | Report host form | line | Evidence |
|---|---|---|---|---|---|---|
| 1 | Member Visit Details | L490 | L480593 | `rMemberRepView` | L480595 | `[VERIFIED-VB6]` |
| 2 | Member Mailing Labels | L491 | L480600 | `rMemberRepView` | L480601 | `[VERIFIED-VB6]` |
| 3 | Member Bill Missing Report | L492 | L480606 | `rMemberRepView` | L480607 | `[VERIFIED-VB6]` |
| 4 | Member Sales Register | L493 | L480612 | `rMemberRepView` | L480613 | `[VERIFIED-VB6]` |
| 5 | **Member Ledger** | L494 | L480618 | **`FaReports`** | L480619 | `[VERIFIED-VB6]` |
| 6 | Member Tax Report | L495 | L480625 | `rMemberRepView` | L480626 | `[VERIFIED-VB6]` |
| 7 | Payment Due Letter Report | L496 | L480631 | `rMemberRepView` | L480632 | `[VERIFIED-VB6]` |
| 8 | Member Birthday/Anniversary Details | L497 | L480637 | `rMemberRepView` | L480638 | `[VERIFIED-VB6]` |

**7 of 8 use `rMemberRepView`; `Member Ledger` alone is served by the Finance report host
`FaReports`** — `[INFERRED]` because a ledger is an accounting artefact shared with
Finance.

Additional report-name assignment: `global_52.GRepFormName = "MemBillMissingReport"`
at **EXTRAS.text L7647**. `[VERIFIED-VB6]`

## 2. On-disk Crystal reports

Scanned `HMS2526\Reports\` (371 `.rpt`) for member-related names:

| Candidate | Present? | Evidence |
|---|---|---|
| `MemBillMissingReport` style `.rpt` | **not found by name** | `[VERIFIED-UI]` |
| any `Mem*.rpt` | not found in the report folder listing | `[VERIFIED-UI]` |
| `REPORTS_TXT/` catalog extracts for members | 0 matched `Mem` | `[VERIFIED-UI]` |

`[INFERRED]` the 7 `rMemberRepView` reports resolve `GRepFormName` at runtime against a
report registry; the corresponding `.rpt` files either live under different filenames or
are missing from this installation. **Gap flagged.**

## 3. Runtime reachability

All 8 reports are **absent from `MenuHelp` for user SA** (`OPT1=23` has 1 non-report row).
So none of these reports can be launched from the menu on this site. `[VERIFIED-SQL]`

## 4. What the reports would show on this site

| Report | Backing data | Usable? |
|---|---|---|
| Member Visit Details | `MemVisitEntry` = 0 rows | empty `[VERIFIED-SQL]` |
| Member Bill Missing Report | `MemBill`/`MemBill1` = 0 | empty `[VERIFIED-SQL]` |
| Member Sales Register | `MemBill` = 0 | empty `[VERIFIED-SQL]` |
| Member Ledger | `MemBill1.AcPosting` = 0 | empty `[VERIFIED-SQL]` |
| Member Tax Report | `MemBill2` = 0 | empty `[VERIFIED-SQL]` |
| Member Mailing Labels | `MemberFamily` = **37 rows** | **would produce output** `[VERIFIED-SQL]` |
| Member Birthday/Anniversary Details | `MemberFamily` = 37 (if bday columns exist) | **likely output** `[INFERRED]` |
| Payment Due Letter Report | no payment/due tables populated | empty `[VERIFIED-SQL]` |

**Only 2 of 8 reports could return data** — the two driven by `MemberFamily`.

## 5. Gap summary (spec §16/§27)

- `[INFERRED]` Missing `.rpt` files for `rMemberRepView` names, or non-obvious filenames.
- `[VERIFIED-SQL]` Reports unreachable in SA's menu.
- `[INFERRED]` No member report appears in `REPORTS_DEEP_CATALOG.md` (524-report catalog is
  built from the FO/POS/Finance menu set) — cross-check in `notes/notes.md`.
