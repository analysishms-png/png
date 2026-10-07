# 02_Main_Setup — Reports

## 1. Menu census: Main Setup (hex `C`) has ZERO report rows

Type distribution over `19_VB6_Logic/menu_tree_raw.txt` rows with column 1 = `C`
(124 rows total): **type 0 = 105, type 2 = 8, type 3 = 10, type 4 = 1, type 1 = 0.**
`[VERIFIED-SQL]`

Per spec §25 legend (type 1 = report), Main Setup therefore declares **no reports of its
own** — it is a pure master/maintenance module. `[VERIFIED-SQL]`

### The 8 type-2 rows (report-variant ` [INFERRED]`)

| menu_tree_raw.txt | Caption | Group |
|---|---|---|
| L55 | Revenue Wise Budget Entry | General Setup |
| L110 | Member Bill Sundry Setting | Members Mgmt Setup |
| L119 | Consumption Master | Material Mgmt Setup |
| L155 | Data Transfer | Utility |
| L157 | POS Bill Deletion | Utility |
| L165 | Data Transfer (POS) | Utility |
| L166 | PLU File (W.Scale) | Utility |
| L167 | POS Recycle | Utility |

Type `2` is treated as a screen variant by the capture tool (`hms_capture.py`
`only_type == "screens"` accepts `typ in (0, 2)`), so these are **not** Crystal reports.
Their exact semantic vs type 0 is `[UNKNOWN] — no legend found in PROMT.txt, INI or source`.

## 2. Where Main Setup output actually goes

Setup screens do not print via `GRepFormName` report dispatch; they write/inspect data:

- **User Master / Permissions** → `UserMast`, `UserPermission` tables
  (`EXTRAS.text` L264826 `UserPermission.FacilityBilling varchar(4)` field registration)
  `[VERIFIED-VB6]`
- **Backup Data** (Utility, L151) → `BACKUP DATABASE` path `[UNKNOWN] — backup SQL not
  extracted; see notes/notes.md item N-4`
- **Inconsistency Check** (L153) → referential/ledger repair utility `[UNKNOWN] —
  routine body not located`
- **Year End Updation** (L140 Financial Setup + L154 Utility — two menu rows, same caption)
  → `FaLib` year-end routine `[INFERRED]`

## 3. Reports that Main Setup *feeds* (cross-module)

The masters created here are the parameter lists for every other module's reports:

| Setup master | Consuming reports (module) |
|---|---|
| Tax Master / Tax Structure (L48–L49) | POS/Banquet tax-wise reports (08/09) |
| Group/Ledger Accounts (L134–L135) | Finance Day Book, Trial Balance (03) |
| Revenue Group Setting (L52) | Members revenue reports (14) |
| Employee/Designation/Category (L125–L128) | HR Payroll Register, PF, Form C (11) |
| Extension/Call Type/Call Code (L130–L132) | EPABX Call Report (12) |
| Facility/Revenue masters (L106–L112) | Members + Mall facility bills (14/16) |

`[INFERRED]` — FKs are **not** declared in the DB (`18_Database/foreign_keys.txt` = 0 bytes,
`[VERIFIED-SQL]`), so these are name-based couplings only.

## 4. Report viewers used by setup-adjacent screens

Generic viewers listed in `19_VB6_Logic/vb6_form_inventory.md`: `REPVIEW`, `GridPrint`,
`rFomRepView`, `rMemberRepView`, `rRepTel`, `rRepPayRoll`, `rRepReserv`, `rRepHouse`.
Main Setup screens that preview lists use `GridPrint` (VB6 intrinsic-style grid printing)
`[INFERRED]`.

> Cross-references: 03_Finance/reports/reports.md (25 FA report rows),
> 17_Reports/REPORTS_ANALYSIS.md (371 `.rpt` files on disk), module_manual.md §7.
