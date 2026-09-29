# 01 - Finance - Backend (core/)

## 1. Module map (core file → responsibility → public API)

| File | Responsibility | Public API (line) |
|---|---|---|
| `fa_voucher.py` | Voucher post/edit/delete, VNo, cheque, TB | `next_vno` 48, `post_voucher` 79, `delete_voucher` 442, `get_voucher` 537, `find_voucher` 580, `edit_voucher` 616, `cheque_pending/cleared` 659/676, `cheque_mark_cleared` 693, `trial_balance` 717 |
| `fa_ledger_ops.py` | LEDGERADJ/LEDGERREF/LEDGERTDS/curr-bal CRUD | `ledgeradj_list/get/insert/delete` 64/78/138/157, `adj_pending` 89, `pending_adjustments` 107, `ledgerref_*` 198-262, `ledgertds_*` 304-345, `subgroupcurrbal_list/get/upsert` 372/385/393 |
| `fa_masters_ops.py` | FA masters (TDS cat, a/c group, SubGroup, NarrMast) | `tdscat_*` 26-89, `acgroup_*` 98-189, `subgroup_*` 197-281, `narr_list/insert/delete` 304-323 |
| `fa_tds_ops.py` | TDS challan + TDS detail reports | `tdschal_list/get/insert/update/delete` 52-102, `tds_amt` 211, `tds_detail` 217, `tds_categories` 252 |
| `fa_enviro.py` | FaEnviro settings | `get` 21, `get_setting` 48, `update_settings` 62, `update_setting` 86, `snapshot` 92 |
| `fa_reports.py` | BS/P&L/TB aggregates | `balance_sheet` 192, `profit_and_loss` 219, `trial_balance_group` 329 + `_ledger_summary/_group_summary` 31/84 |
| `tally_export.py` | Tally XML export | `fetch_groups/ledgers/vouchers/voucher_lines` 73/90/101/134, `group_xml/ledger_xml/entry_xml` 148/174/203, `esc/voucher_type/mdate` 50/56/66 |
| `ledger.py` | SubGroup standalone CRUD | `list_all/search/get/exists/insert/update/delete` 85-156 (`INSERT INTO SubGroup` 116) |
| `acgroup.py` | ACGROUP standalone CRUD | `list_all/get/exists/insert/update/delete` 44-83 (`INSERT INTO ACGROUP` 66) |
| `narr.py` | NarrMast standalone CRUD | `list_all/get/exists/insert/update/delete` 32-68 (`INSERT INTO NarrMast` 54) |
| `tdscat.py` | TDSCat standalone CRUD | `list_all/get/exists/insert/update/delete` 51-87 (`INSERT INTO TDSCat` 69) |
| `tdscerti.py` | TDS certificate CRUD | `list_all/get/exists/insert/update/delete` 74-113 (`INSERT INTO TDSCerti` via `_validate` 55) |

(Mapping note: `Ledger Accounts Entry` UI `fa_masters_ops.subgroup_*` use karta hai (partial_forms_ui.py:35 `fmo`), `ledger.py` standalone legacy path hai — dono `SubGroup` pe likhte hain.)

## 2. Key flows (function-level logic)

1. **post_voucher** (fa_voucher.py:79): validate ≥2 lines + Dr=Cr + nonzero (:95/:102/:105) → `next_vno` (:48) → `INSERT LedgerM` (:135) → per-line `INSERT Ledger` (:147) → `UPDATE Voucher_Prefix` consume (:174) → curr-bal `SUBGROUPCURRBAL`/`ACGROUPCURRBAL` update-or-insert (:253-281).
2. **delete_voucher** (:442): reverse curr-bal + `DELETE Ledger/LedgerM` ek transaction me (rollback `except` :438/:464/:470).
3. **cheque_mark_cleared** (:693): pending cheque pe `UPDATE Ledger SET Clg_Date/Chq_No/Chq_Date` (:711); cleared-over-check via `cheque_cleared` (:676).
4. **ledgeradj_insert** (fa_ledger_ops.py:138): `adj_pending` balance (:89) check → zero/already-adjusted guards (:142/:146) → `INSERT LEDGERADJ` (:148).
5. **Ledger Accounts Entry** (partial_forms_ui → `fmo.subgroup_insert` fa_masters_ops.py:233): name-required guard (:236) → `INSERT SubGroup` (dup-name check VB6 FaSubGroup validate pattern).
6. **acgroup_delete** (:185-189): child-groups guard + "ledgers hain → delete nahi" guard.
7. **tally_export.fetch_vouchers** (tally_export.py:101): date-range `SELECT LedgerM/Ledger` → `entry_xml` lines (:203) — read-only export.

## 3. Guards & invariants

| Guard | Where |
|---|---|
| Voucher ≥2 lines / Dr==Cr / amount≠0 / SubCode required + live-SubGroup check | fa_voucher.py:95,102,105,117,125 |
| Cheque date ≤ voucher date | fa_voucher.py:111 |
| TDS: TDSCode+TDSDrCode + TDS Vr.Type required | fa_voucher.py:354,368 |
| Dup-name (TDS cat) `Name Already Exists` | fa_masters_ops.py:60,80 |
| Group Nature sirf `A/E/L/R/O` | fa_masters_ops.py:140 |
| Delete group: pehle children transfer, ledger-wala group delete-band | fa_masters_ops.py:185,189 |
| Adjustment: DocId/SubCode required, amount≠0, `* Amount Already Adjusted *` | fa_ledger_ops.py:57,61,142,146 |
| `adj_pending` → live outstanding balance hi adjust ho sakta hai | fa_ledger_ops.py:89,99 |
| Invariant: `Voucher_Prefix.Start_Srl_No` monotone consume (race window legacy — DATABASE.md §4) | fa_voucher.py:174 |

## 4. Error handling

- Validators `raise ValueError(...)` (VB6 `MsgBox` validation parity) — UI inhe dialog dikhata hai; koi crash nahi.
- DB round-trips transaction ke andar `except Exception:` → `rollback` (fa_voucher.py:177,186,194,197 partial-bal steps; :438/:464/:470 delete path).
- Row-missing cases: `adj_pending` → `ValueError("Ledger line ... nahi mila")` (fa_ledger_ops.py:99); `get_voucher` → `None` (fa_voucher.py:537).
- `_map`/`_validate` row-normalize pattern (fa_tds_ops.py:21/47, tdscerti.py:22/55, tdscat.py:18/35) — pyodbc rows → dict, field-level `ValueError` before write.
- Known issues impacting this module: `test_fa_voucher` 8/9, `test_reports_engine` 374/447, `test_tally_export` 20/22, `test_inventory_registers` 5/8 → `TEST_RESULTS.md` + KI list `00_Instructions/TEST_PLAN_MASTER.md`.
