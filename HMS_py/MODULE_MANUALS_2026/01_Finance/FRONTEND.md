# 01 - Finance - Frontend (PyQt6)

## 1. Shell integration

- Sidebar root `finance` → `_on_sidebar_click` → `_safe_open(caption)` → `_form_registry()[caption](self)` (shell.py:2194/2284).
- Registry keys jo Finance ke leaves serve karte hain:
  - Masters (partial_forms_ui, shell.py:1224-1227): `T.D.S.Category Entry`, `Group Accounts Entry`, `Ledger Accounts Entry`, `Global Narration`.
  - Operations: `Voucher Entry` (shell.py:1505 → `fa_voucher_ui.open_voucher_entry`), `Bank Reconciliation` (shell.py:1239), `Ledger Adjustment` (shell.py:1433 → `fa_sub_forms_ui.open_fa_adjust`).
  - Reports: `Trial Balance` (shell.py:1273 → `fvu.open_trial_balance`), `Ledger`/`Cash Book` = reports-engine caption spread (shell.py:1512-1513, 1541-1542 → `_open_report` shell.py:907 → `reports_ui.open_reports` reports_ui.py:167).
- Opener imports: `fa_voucher_ui as fvu` (shell.py:714), `fa_sub_forms_ui as fasub_ui` (shell.py:846), `partial_forms_ui as pfui` (shell.py:720).
- `_reg_ci` lookup (`capture_leaf`) har leaf ka normalized key chahiye — capture me `Ledger Adjustment Entry` (map typo) miss hua tha, `modules_map` fix (`Ledger Adjustment`) ke baad `failed=[]`.

## 2. Screen inventory (leaf → Qt class → file:line)

| Leaf (manifest) | Qt class / opener | File:line |
|---|---|---|
| Ledger Accounts Entry | `LedgerAccountsWindow(QMainWindow)` → `open_ledger_accounts` (show) | partial_forms_ui.py:286/1112 |
| Group Accounts Entry | `GroupAccountsWindow(QMainWindow)` → `open_group_accounts` (show) | partial_forms_ui.py:1108 |
| Global Narration | `GlobalNarrationWindow(QMainWindow)` → `open_global_narration` (show) | partial_forms_ui.py:408/1116 |
| T.D.S.Category Entry | `TdsCategoryWindow(QMainWindow)` → `open_tds_category` (show) | partial_forms_ui.py:1104 |
| Voucher Entry | `VoucherEntryDialog(QDialog)` → `open_voucher_entry` (exec) | fa_voucher_ui.py:37/311 |
| Bank Reconciliation | `BankReconDialog(QDialog)` → `open_bank_recon` (exec) | fa_voucher_ui.py:152/315 |
| Ledger Adjustment | `FaAdjustWindow(QMainWindow)` → `open_fa_adjust` (show) | fa_sub_forms_ui.py:220/215 |
| Trial Balance | `ReportViewer(QDialog)` → `open_trial_balance` (exec) | fa_voucher_ui.py:215/325 |
| Ledger | `ReportsCenter(QDialog)` → `reports_ui.open_reports` (exec) | reports_ui.py:167 |
| Cash Book | `ReportsCenter(QDialog)` → `reports_ui.open_reports` (exec) | reports_ui.py:167 |

(Shell screenshot: `screenshots/00_shell_module.png` — Finance root expanded.)

## 3. Navigation & shortcuts

- Sidebar: `finance` root → child leaf buttons → `_safe_open` (registry click path).
- Alt+7.. (module shortcut `Alt+{idx}` sidebar_buttons.py:189 — Finance root pe assign, individual FA leaf shortcuts VB6 `Alt+F/F/A` block ka port **abhi nahi** hai — capture dropdown se hi khulta hai).
- Global shortcuts (shell.py:2106-2112) FA ke liye nahi — `Ctrl+N/F/I/O/R/P`, `F5` front-office actions hain.
- `Alt+1..6` = ACTIONS buttons (sidebar_buttons.py:179), FA ke report leaves keyboard-se nahi — menu click path.

## 4. Modal vs non-modal

| Kind | Leaves | Evidence |
|---|---|---|
| **Modal** (`QDialog.exec`) | Voucher Entry, Bank Reconciliation, Trial Balance (+fvu report viewers), Ledger, Cash Book | fa_voucher_ui.py:312/316/321, reports_ui.py:169 |
| **Non-modal** (`QMainWindow.show`) | Ledger Accounts Entry, Group Accounts Entry, Global Narration, T.D.S.Category Entry, Ledger Adjustment | partial_forms_ui.py:1104-1116, fa_sub_forms_ui.py:220 |

Capture notes: non-modal masters windows `show()` + `grab()` se rescue hote hain (capture_module `capture_leaf` direct-call path); modal `.exec()` ke andar `capture_leaf` `fn()` call karta hai — exec returns hone par widget hi grab hota hai (Task 5 rescue). Koi leaf `failed` nahi — sab `ok`.
