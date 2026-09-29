# 01 Finance - Operations

## Leaves (MenuHelp)

Bucket `Opt1=11` (`Module_Name='fate'`), classify operations = **2**:
`Voucher Entry`, `Bank Reconciliation`.
Registry-only extra: `Ledger Adjustment` (VB6 FaAdjust — menuHelp row nahi, shell:1433 se khulta hai).

| # | Option (caption) | Flag | Param_Str (sample) | Module_Name | Screenshot |
|---|---|---|---|---|---|
| 1 | Voucher Entry | E | AEDP / AE*P / A**P / ***P | fate | `screenshots/50_operations_Voucher_Entry.png` |
| 2 | Bank Reconciliation | E | AEDP / A**P / ***P | fate | `screenshots/60_operations_Bank_Reconciliation.png` |
| 3 | Ledger Adjustment | - (no menuHelp row) | - | - (registry leaf) | `screenshots/70_operations_Ledger_Adjustment.png` |

## Functioning

- **Voucher Entry** → `VoucherEntryDialog` (QDialog, modal `.exec()`): multi-line journal, validation (≥2 lines, Dr=Cr, nonzero, SubCode live) → `post_voucher` ek transaction me header+lines+prefix+balances.
- **Bank Reconciliation** → `BankReconDialog` (QDialog, modal): pending cheque list → mark cleared → `Ledger.Clg_Date/Chq_No/Chq_Date`.
- **Ledger Adjustment** → `FaAdjustWindow` (QMainWindow, non-modal): bill-wise pair select → `LEDGERADJ` insert; `adj_pending` balance guard.

## Database Tables (this layer)

`LedgerM` (3158), `Ledger` (40818), `Voucher_Prefix` (171), `SubGroupCurrBal` (6166), `AcGroupCurrBal` (2054) — post ke saath; `LedgerAdj` (264) — adjustment; `Voucher_Type` (171) type defs.

## Backend SQL pattern

```
post_voucher: INSERT LedgerM (:135) + INSERT Ledger (:147)
            + UPDATE Voucher_Prefix.Start_Srl_No (:174)
            + UPDATE/INSERT SUBGROUPCURRBAL (:253/:259) + ACGROUPCURRBAL (:276/:281)
cheque_mark_cleared -> UPDATE Ledger SET Clg_Date, Chq_No, Chq_Date      fa_voucher:711
ledgeradj_insert    -> INSERT LEDGERADJ (DocId1, V_SNo1, DocId2, ...)     fa_ledger_ops:148
```

## MenuHelp permission check

```sql
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name
FROM menuHelp WHERE RTRIM([Option]) IN ('Voucher Entry','Bank Reconciliation') AND UserName IN ('SA','Dinesh','kamlesh');
-- Voucher Entry -> Dinesh AEDP E fate ; kamlesh A**P E fate ; SA ***P (per-user rows, Opt1=11)
-- Ledger Adjustment: koi row nahi (permission check khali — documented gap)
```
Layer screenshots: `02_Operations/screenshots/` (root `../screenshots/` se, `ok`).
