# 15_Sales_Marketing — Reports

## 1. Menu report rows

**None.** `menu_tree_raw.txt` hex `18` = 6 rows total (L498 header, L499/L502 groups,
L500/L501/L503 screens), all `type=4`, `3`, or `0` — **zero `type=1` rows**.
`[VERIFIED-VB6]`

## 2. On-disk Crystal reports

Scanned `HMS2526\Reports\` (371 `.rpt`) and `REPORTS_TXT/` (233 extracts) for
`Sms`, `SMS`, `Message` names: **0 matches.** `[VERIFIED-UI]`

## 3. Runtime menu report rows

`MenuHelp_SA_tree.txt` OPT1=27 rows (7): `EXTRAs`, `SMS`, `Sstup`, `SMS (API)`,
`Operations`, `SMS (Scheduled)`, `SMS (Conditional)` — flags `N`/`E` only, **no `R`
(report) rows**. `[VERIFIED-SQL]`

## 4. Verdict

This module has **no reports on any of the three menu surfaces** and no `.rpt` file.

| Surface | Report rows | Evidence |
|---|---|---|
| Builder (`menu_tree_raw`) | 0 | `[VERIFIED-VB6]` |
| Runtime (`MenuHelp`, SA) | 0 (no `Flag=R`) | `[VERIFIED-SQL]` |
| Disk (`.rpt`) | 0 matching | `[VERIFIED-UI]` |

## 5. Data exists but nothing reports it

`DBSendSMS` holds **18810 rows** — an entire SMS delivery history with no report, no
viewer, and no drain. `[VERIFIED-SQL]` `[INFERRED]`

Suggested (not implemented) deliverables, for the modernization backlog:

- Sent/pending SMS register (day/outlet/templated-wise)
- Gateway failure report (`SENDTF` state breakdown) — `V1` in `queries.sql` is the seed
- `SMSEnviro` config audit (masked)

## 6. Adjacent report arms — not this module's

| Arm | Line | Owner |
|---|---|---|
| `rFomRepView` with `GRepFormName = "FOMTaxWiseChargeDetail"` | L480736-L480737 | Front Office |
| `rFomRepView` (Mall) | L480820 | Mall Management |

Code proximity in the shared dispatcher does not imply module ownership — see
`logic/vb6_logic.md` §3. `[VERIFIED-VB6]`
