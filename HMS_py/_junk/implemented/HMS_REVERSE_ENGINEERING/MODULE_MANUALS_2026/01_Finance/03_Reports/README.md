# 01 Finance - Reports

## Leaves (MenuHelp)

Bucket `Opt1=11` (`Module_Name='FAREPORT'`, `Flag='R'`), classify reports = **26**:
`Trial Balance`, `Ledger`, `Cash Book`, `Bank Book`, `Journal Books`, `Annexure`, `Bank Register`, `Ageing Analysis for Debtors`, `Ageing Analysis for Creditors`, `Outstanding Report For Debtors`, `Outstanding Report For Creditors`, `Detailed Trial Ledger`, `Bill Wise Outstanding Report For Debtors`, `Cheque Cleared Register`, `Cheque Not Cleared Register`, `Journal Books Log`, `Cash Flow`, `Fund Flow`, `Daily Transaction Summary`, `Non Transaction Report`, `Reference Report`, `A/c Check List`, `Control Ledger`, `Roz Namcha`, `TDS Report`, `Tally POS Report`.
Curated capture leaves (registry hits): `Trial Balance` (shell:1273), `Ledger`, `Cash Book` (reports-engine caption spread shell:1512/1541).

| # | Option (caption) | Flag | Param_Str (sample) | Module_Name | Screenshot |
|---|---|---|---|---|---|
| 1 | Trial Balance | R | ***P | FAREPORT | `screenshots/80_reports_Trial_Balance.png` |
| 2 | Ledger | R | ***P | FAREPORT | `screenshots/90_reports_Ledger.png` |
| 3 | Cash Book | R | ***P | FAREPORT | `screenshots/100_reports_Cash_Book.png` |

(Baki 23 reports `fvu.open_*` / `_open_report` registry openers par hain — capture list curated 3 hai, gap-count §TEST_PLAN `other`/manual.)

## Functioning

- `Trial Balance` → `fvu.open_trial_balance` → `ReportViewer(QDialog)` → `fa_voucher.trial_balance(d_from,d_to)` date-range aggregation (fa_voucher.py:717).
- `Ledger`, `Cash Book` → `_open_report(cap)` → `menu_caption_map().get(cap)` → `reports_ui.ReportsCenter(QDialog).exec()` (reports_ui.py:167) → engine SQL.
- Read-only: koi INSERT/UPDATE nahi; `Cash Flow`/`Fund Flow` → `fvu.open_cash_bank_books` (shell:1269/1270), `Control Ledger`/`Trial Ledger` → `fvu.open_trial_balance` aliases (shell:1268/1280).

## Database Tables (this layer)

Reads: `Ledger`, `LedgerM`, `AcGroup`, `SubGroup`, `SubGroupCurrBal`, `AcGroupCurrBal` + engine-specific joins (reports engine wider — `test_reports_engine` 447 checks). `TDSReport` path `LedgerTDS` (338) + `TDSCat` (4).

## Backend SQL pattern

```
trial_balance   -> SELECT aggregates FROM Ledger JOIN LedgerM (date-range)   fa_voucher:717
reports engine  -> _open_report(cap): menu_caption_map -> report_key -> open_reports(report_key)
group/ledger TB -> fa_reports._group_summary/_ledger_summary (fa_reports:84/31)
TDS Report      -> fa_tds_ops.tds_detail(subcode, d_from, d_to) (fa_tds_ops:217)
```
Sab queries read-only (SELECT), parametrized `db.query(sql, params)`.

## MenuHelp permission check

```sql
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name, COUNT(*) n
FROM menuHelp WHERE RTRIM([Option]) IN ('Trial Balance','Ledger','Cash Book')
GROUP BY UserName, RTRIM([Option]), Param_Str, Flag, Module_Name;
-- -> all Flag='R', Param_Str='***P', Module_Name='FAREPORT' (SA/AMIT rows, Opt1=11)
```
Layer screenshots: `03_Reports/screenshots/` (root `../screenshots/` se, `ok`).
