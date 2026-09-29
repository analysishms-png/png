# 07 - Point Of Sale - Frontend Workflow

## 1. Shell wiring (shell.py)

- Sidebar root `point of sale`; `_on_sidebar_click` → `_safe_open` (shell:2194/:2284).
- Registry (`_form_registry` return dict, :1056+) POS keys:
  - `KOT Entry` → `kot.open_kot_entry(w, user=...)` (:1066); shell shortcut **Ctrl+T** (:2121-2122)
  - `Sales Register` → `_pos` = `pos_na.open_pos` (:684-685, :1068)
  - `Table Change Entry` → `kt_ui.open_table_change` (:1357); `KOT Transfer` → `kt_ui.open_kot_transfer` (:1358)
  - `Restaurant Master` → `misc_ui.open_restaurant_master` (:1447; misc_ui = `misc_sub_forms_ui`, shell:874)
  - `Department/Outlet` → `p2.open_depart` (:1096); `Setup Outlet` → `pm.open_session` (:1580); `Outlet Bill Sundry Setting` → `p2.open_sundry` (:1610)
- Report spreads: Settlement/Collection/KOT reports captions (shell:1318-1328); `Tax Register` etc. via PosTaxRep spreads.
- Shortcuts inside forms: KOT Entry Ctrl+N/S/D/Esc/F5 (kot_entry:113-118).

## 2. Forms

| Form | Class (line) | Opener | Fields / grid | Shortcuts |
|---|---|---|---|---|
| KOT Entry | `KOTEntryForm(QDialog)` kot_entry:33 | `open_kot_entry(...).exec()` (:570) | Header: Outlet*, Date (cal), Waiter (:58-65); lines grid 11-col SNo/Item Code/Item Name/Qty/Unit/Rate/Amount/Table/Waiter/NC Type/Remarks (:36-41, :69-74); state bar `Idle` (:77); save validation "Outlet zaroori hai" (:464) | Ctrl+N New, Ctrl+S Save, Ctrl+D Void, Esc Cancel, F5 reload (:113-118) |
| Table Change Entry | `TableChangeWindow(QMainWindow)` kot_transfer_ui:22 | `open_table_change` **show()** (:240-241 — non-modal) | Table-move window | — |
| KOT Transfer | `KOTTransferWindow(QMainWindow)` kot_transfer_ui:129 | `open_kot_transfer` **show()** (:243-244) | KOT transfer window | — |
| Restaurant Master | `RestaurantMasterWindow` misc_sub_forms_ui:406 | `open_restaurant_master` show() (:406-409) | Restaurant/outlet master CRUD window | — |
| Sales Register | `pos_na.open_pos` (shell:685) | registry `:1068` | POS/sales browse (Sale1/Sale2) | — |

- Opener mix: `exec()` modal (KOT Entry) vs `show()` non-modal (Table Change, KOT Transfer, Restaurant Master) — capture rescue handles both.

## 3. Capture screenshot mapping (manifest `failed=[]`)

```
00_shell_module.png                          sidebar 'point of sale'
10_masters_Restaurant_Master.png             RestaurantMasterWindow
20_operations_KOT_Entry.png                  KOTEntryForm (header+11-col grid)
30_operations_Table_Change_Entry.png         TableChangeWindow
40_operations_KOT_Transfer.png               KOTTransferWindow
50_reports_Sales_Register.png                pos_na POS/sales screen
```
Layer dirs `01_Masters/`, `02_Operations/`, `03_Reports/` = copies of leaf PNGs.
