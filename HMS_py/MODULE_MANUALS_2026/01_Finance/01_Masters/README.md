# 01 Finance - Masters

## Leaves (MenuHelp)

Bucket `Opt1=12` (`Module_Name='fame'`/`'UTL'`), classify masters = **10**:
`Group Accounts`, `Ledger Accounts`, `Narration Master`, `T.D.S. Category`, `FA Environment`, `Voucher Environment`, `Year End Updation`, `Current Balance Updation`, `Account Merging`, `Voucher Serialisation`.
Curated capture leaves (registry hits): `Ledger Accounts Entry` (shell:1226), `Group Accounts Entry` (:1225), `Global Narration` (:1227), `T.D.S.Category Entry` (:1224).

| # | Option (caption) | Flag | Param_Str (sample) | Module_Name | Screenshot |
|---|---|---|---|---|---|
| 1 | Ledger Accounts | E | AEDP / AE*P / A**P / ***P (per-user rows) | fame, UTL | `screenshots/10_masters_Ledger_Accounts_Entry.png` |
| 2 | Group Accounts | E | AEDP / AE*P / A**P / ***P | fame | `screenshots/20_masters_Group_Accounts_Entry.png` |
| 3 | Narration Master | E | AEDP / AE*P / A**P / ***P | fame | `screenshots/30_masters_Global_Narration.png` |
| 4 | T.D.S. Category | E | AEDP / AE*P / A**P / ***P | fame | `screenshots/40_masters_T.D.S.Category_Entry.png` |

(`FA Environment`..`Voucher Serialisation` ke curated capture leaves nahi — registry me `Finance Reports`/`Environment`-type openers alag captions se; capture list `modules_map` curated.)

## Functioning

- Ledger Accounts → `LedgerAccountsWindow` (QMainWindow, non-modal): SubGroup CRUD, `Under` (AcGroup) + City dropdown fill-join.
- Group Accounts → `GroupAccountsWindow`: AcGroup CRUD, parent options, `GroupNature` validation.
- Global Narration → `GlobalNarrationWindow`: NarrMast add/delete picker.
- T.D.S. Category → `TdsCategoryWindow`: TDSCat CRUD (limit + %).
- Sabhi `partial_forms_ui` openers `.show()` se non-modal (FRONTEND.md §4).

## Database Tables (this layer)

`SubGroup` (3238 rows), `AcGroup` (73), `NarrMast` (2), `TDSCat` (4); fill joins `SubGroup LEFT JOIN AcGroup LEFT JOIN City`, dropdown ke liye `AcGroup` parent options. `FaEnviro` (1) = FA Environment leaf ka backing (menu leaf `FA Environment`, opener `Finance Reports`/Enviro path — capture me shamil nahi).

## Backend SQL pattern

```
subgroup_insert -> INSERT INTO SubGroup (SubCode, Name, ShortName, GroupCode, ...)   fa_masters_ops:233
acgroup_insert  -> INSERT INTO AcGroup (GroupCode, Site_Code, GroupName, ...)        fa_masters_ops:145
narr_insert     -> INSERT INTO NarrMast (Name) VALUES (?)                            fa_masters_ops:318
tdscat_insert   -> INSERT INTO TDSCAT (code, name, TDSLimit, TDSPercentage, ...)     fa_masters_ops:63
```
Guards: name-required, dup `Name Already Exists`, `GroupNature ∈ A/E/L/R/O`, delete: children/ledgers check (BACKEND.md §3).

## MenuHelp permission check

```sql
SELECT RTRIM(Module_Name), RTRIM(Flag), RTRIM(Param_Str), COUNT(*) n
FROM menuHelp WHERE RTRIM([Option])='Ledger Accounts'
GROUP BY RTRIM(Module_Name), RTRIM(Flag), RTRIM(Param_Str);
-- rows: fame|E|AEDP, fame|E|AE*P, fame|E|A**P, fame|E|***P, UTL|E|... (Opt1=12)
```
Layer screenshots copy: `01_Masters/screenshots/` (root `../screenshots/` se, manifest status `ok`).
