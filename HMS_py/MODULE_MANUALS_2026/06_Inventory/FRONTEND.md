# 06 - Inventory - Frontend Workflow

## 1. Shell wiring (shell.py)

- Sidebar root `inventory` (shell sidebar tree); `_on_sidebar_click` → `_safe_open` (:2194/:2284).
- Registry (`_form_registry`, return :1056) inventory block (shell.py:1166-1182):
  - `Indent` / `Indent Entry` → `_inv.open_indent_ui(w)` (:1166-1167)
  - `Pending Indent` / `Purchase Register` / `Stock Summary` / `Stock Register` / `Stock Register Detailed` / `Purchase Register Detailed` → `_inv.open_inv(w)` (browser, :1168-1173)
  - `GIN / Purchase Receipt` → `_inv.open_gin(w)` (:1174)
  - `Stock Transfer` → `_inv.open_stock_transfer(w)` (:1177)
  - `eInvoice Config` → `_inv.open_einvoice_config(w)` (:1178); `Kitchen Stock Report` → `_inv.open_kitchen_stock_report(w)` (:1182)
- Report captions `Stock Summary`/`Stock Register`/`Stock In Hand` also spread via reports-caption block (:1331).
- Shortcuts inside `InvBrowser`: Ctrl+I/U/B/R/P (ui:736-740).

## 2. Forms (HMS_py/ui/inventory.py)

| Form | Class (line) | Opener | Fields / grid | Shortcuts |
|---|---|---|---|---|
| Indent | `IndentForm(QDialog)` (:86) | `open_indent_ui` exec (:807) | Header: Department*, Date (cal popup), Godown, Remarks, Cleared Y/N (:101-114); browse grid 5-col DocId/VNo/Date/Department/Cleared (:118-123, double-click → edit :123); **line grid Indent1** 5-col (VB6 PIndent FGrid, :126-131) | — |
| GIN (Purchase Receipt) | `GINForm(QDialog)` (:366) | `open_gin` exec (:811) | Header: Party Code*, Party Name, Date, Godown, OC DocId, PO DocId, Remarks (:382-402); lines grid 10-col SNo/Item/Qty/Unit/Rate/Amount/Tax%/Disc%/Godown/Remarks (:406-414); `Add Line (Ins)`/`Del Line (Del)` (:418-427); browse list VNo/Date/Party/DocId (:430-431); Ctrl+N/S/Esc (:463-466); browse `reload()` (:478) | Ctrl+N, Ctrl+S, Esc |
| Stock Transfer | `StockTransferForm(QDialog)` (:819) | `open_stock_transfer` exec (:916) | Item* (combo, first 500 items :872), From Godown*, To Godown*, Qty, Rate, Date, Remark (:844-850); Save/Cancel; validations: required trio, from≠to, qty>0 (:890-898) | — |
| Inventory Browser | `InvBrowser(QDialog)` (:690) | `open_inv` exec (:803) | Buttons+shortcuts: Indents (Ctrl+I), Purchase Register (Ctrl+U), Stock Summary (Ctrl+B), Stock Register (Ctrl+R), Purchase Register (Ctrl+P), Close; grid 5-col read-only (:699-704); state label (:706-709) | Ctrl+I/U/B/R/P |
| eInvoice Config | `EInvoiceConfigForm` (:923) | `open_einvoice_config` exec (:1028) | Config form (e-Invoice settings) | — |
| Kitchen Stock | `KitchenStockReportForm` (:1035) | `open_kitchen_stock_report` exec | Report form | — |

- Dark-table helper `_dark_item` (browse cells).
- Opener style: `*.exec()` modal (FD analogue: `fd_forms_ui` hidden-widget rescue works for these).
- **Capture note:** `Stock Summary` (InvBrowser Ctrl+B) → `skipped_messagebox` (direct QMessageBox, shell `_open_report` analog) — manual me note karo ki browser khulta hai + message box aata hai.

## 3. Capture screenshot mapping (manifest)

```
00_shell_module.png           sidebar 'inventory' root
10_masters_Indent.png         Indent Form (header+grid+line-grid)
20_operations_GIN_-_Purchase_Receipt.png  GIN Form (header+lines grid)
30_operations_Stock_Transfer.png  StockTransferForm
40_reports_Stock_Summary.png  (skipped_messagebox — no PNG)
50_reports_Stock_Register.png InvBrowser (Ctrl+R state)
60_reports_Purchase_Register.png InvBrowser (Ctrl+P state)
```
Layer dirs `01_Masters/`, `02_Operations/`, `03_Reports/` = same PNGs copied from `screenshots/`.
