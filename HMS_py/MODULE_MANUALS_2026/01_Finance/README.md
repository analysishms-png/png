# 01 - Finance - Module Manual

## 1. Menu path (MenuHelp)

- Sidebar root: `finance` (Opt1=11, group caption `Finance`, `Module_Name='FA'`; QA user SA/KANPUR ke sidebar me root par).
- menuHelp buckets: `Opt1=11` (Finance: operations + reports), `Opt1=12` (FA masters: `Ledger Accounts`, `Group Accounts`, `Narration Master`, `T.D.S. Category` — `Module_Name='fame'`/`'UTL'`).
- Module_Names (`_logic.json`): `FA`, `FAT`, `fate`, `farp`, `FAREPORT`, `fae`, `fame`, `TallyRPTS`, `TallyPOSRPT`; masters bucket = `fame`.
- Counts (`_logic.json`, classify): **masters=10, operations=2, reports=26, hidden=0, other=8**.
- `other=8` (compulsory likha hua): `Finance` (group header, ×2 dup rows), `Transaction`, `Expense Voucher`, `T.D.S. Challan Entry`, `T.D.S. Certificate Entry`, `Reports` (group header), `Tally Reports` (group header) — headers/misc, `V`/`R` flag nahi; `T.D.S. Challan/Certificate Entry` registry openers shell:1241/1242 par hain (menuHelp Opt1=11 rows exist, classify `other` me kyunki `Flag`/layer rule me nahi aate).

## 2. Workflow (menu → screen → action → DB write)

| # | Menu leaf | Screen (opener) | Action | DB write |
|---|---|---|---|---|
| 1 | Ledger Accounts (menuHelp, `Opt1=12`) | `Ledger Accounts Entry` → `partial_forms_ui.LedgerAccountsWindow` (shell.py:1226) | New/Edit ledger a/c | `fa_masters_ops.subgroup_insert/update` → `INSERT/UPDATE SubGroup` (fa_masters_ops.py:233) |
| 2 | Group Accounts | `Group Accounts Entry` → `partial_forms_ui` (shell.py:1225) | New/Edit a/c group | `fmo.acgroup_insert/update` → `INSERT/UPDATE AcGroup` (fa_masters_ops.py:134/145) |
| 3 | Narration Master | `Global Narration` → `GlobalNarrationWindow` (shell.py:1227) | Add/delete narration text | `fmo.narr_insert/delete` → `INSERT/DELETE NarrMast` (fa_masters_ops.py:309/318) |
| 4 | T.D.S. Category | `T.D.S.Category Entry` → `partial_forms_ui` (shell.py:1224) | New/Edit TDS category | `fmo.tdscat_insert/update` → `INSERT/UPDATE TDSCAT` (fa_masters_ops.py:54/63) |
| 5 | Voucher Entry (`Opt1=11`, `fate`) | `Voucher Entry` → `fa_voucher_ui.open_voucher_entry` (shell.py:1505, fa_voucher_ui.py:311) | Post journal/voucher lines | `fa_voucher.post_voucher` → `INSERT LedgerM` (fa_voucher.py:135) + `INSERT Ledger` (:147) + `UPDATE Voucher_Prefix.Start_Srl_No` (:174) + `UPDATE/INSERT SUBGROUPCURRBAL` (:253/259) + `UPDATE/INSERT ACGROUPCURRBAL` (:276/281) |
| 6 | Bank Reconciliation | `Bank Reconciliation` → `fa_voucher_ui.open_bank_recon` (shell.py:1239, fa_voucher_ui.py:315) | Mark cheque cleared | `fa_voucher.cheque_mark_cleared` → `UPDATE Ledger SET Clg_Date, Chq_No, Chq_Date` (fa_voucher.py:711) |
| 7 | Ledger Adjustment (registry-only, menuHelp row nahi) | `Ledger Adjustment` → `fa_sub_forms_ui.open_fa_adjust` (shell.py:1433) | Bill-wise adj pair save | `fa_ledger_ops.ledgeradj_insert` → `INSERT LEDGERADJ` (fa_ledger_ops.py:138/148) |
| 8 | Trial Balance (`FAREPORT`, `Flag=R`) | `Trial Balance` → `fa_voucher_ui.open_trial_balance` (shell.py:1273) | Date-range report | read-only: `fa_voucher.trial_balance` (fa_voucher.py:717) |
| 9 | Ledger / Cash Book (`FAREPORT`, `Flag=R`) | reports engine via `_open_report` + `menu_caption_map` spread (shell.py:1512-1513, 1541-1542) | Report view/print | read-only: reports engine SELECT |

## 3. Layers snapshot

| Layer | Count | registry hits (`_logic.json`) |
|---|---|---|
| masters | 10 | Ledger Accounts Entry, Group Accounts Entry, Global Narration, T.D.S.Category Entry |
| operations | 2 | Voucher Entry, Bank Reconciliation, Ledger Adjustment |
| reports | 26 | Trial Balance, Ledger, Cash Book |
| hidden (`V`) | 0 | — |
| other (unclassified) | 8 | see §1 |

## 4. Screenshot index

Live capture (SA/KANPUR, manifest `screenshots/manifest.json`, `failed=[]`):

| File | Layer | Leaf | Status |
|---|---|---|---|
| `screenshots/00_shell_module.png` | shell | Finance sidebar root | ok |
| `screenshots/10_masters_Ledger_Accounts_Entry.png` | masters | Ledger Accounts Entry | ok |
| `screenshots/20_masters_Group_Accounts_Entry.png` | masters | Group Accounts Entry | ok |
| `screenshots/30_masters_Global_Narration.png` | masters | Global Narration | ok |
| `screenshots/40_masters_T.D.S.Category_Entry.png` | masters | T.D.S.Category Entry | ok |
| `screenshots/50_operations_Voucher_Entry.png` | operations | Voucher Entry | ok |
| `screenshots/60_operations_Bank_Reconciliation.png` | operations | Bank Reconciliation | ok |
| `screenshots/70_operations_Ledger_Adjustment.png` | operations | Ledger Adjustment | ok |
| `screenshots/80_reports_Trial_Balance.png` | reports | Trial Balance | ok |
| `screenshots/90_reports_Ledger.png` | reports | Ledger | ok |
| `screenshots/100_reports_Cash_Book.png` | reports | Cash Book | ok |

(Layer copies: `01_Masters/screenshots/`, `02_Operations/screenshots/`, `03_Reports/screenshots/`.)

## 5. Test status

- `TEST_RESULTS.md` (Task 12 step: full layers run): L1/L2/L2b/L2c sab me 4 failing test files → `fails=4`:
  - `test_fa_voucher` 8/9, `test_inventory_registers` 5/8, `test_reports_engine` 374/447, `test_tally_export` 20/22.
- KI-9 (`PayChargeLog` VNo PK recurrence) `test_receive_payment` ke andar fix hua — fixture line `00_Instructions/TEST_PLAN_MASTER.md`/progress ledger me.
- Detail + per-layer counts: [`TEST_RESULTS.md`](TEST_RESULTS.md); baseline: `00_Instructions/TEST_PLAN_MASTER.md`.

## 6. Related docs

- Database: [`DATABASE.md`](DATABASE.md) · Frontend: [`FRONTEND.md`](FRONTEND.md) · Backend: [`BACKEND.md`](BACKEND.md) · Tests: [`TEST_PLAN.md`](TEST_PLAN.md)
- Layers: [`01_Masters/README.md`](01_Masters/README.md) · [`02_Operations/README.md`](02_Operations/README.md) · [`03_Reports/README.md`](03_Reports/README.md)
- SOP: `00_Instructions/MANUAL_TEMPLATE.md` · capture: `00_Instructions/CAPTURE_GUIDE.md` · global menu map: `00_GLOBAL/MenuHelp_Module_Map.md`
