# 07 - Point Of Sale - Module Manual

## 1. Menu path (MenuHelp)

- Sidebar root: `point of sale`.
- Module_Names: `Restaurant`, `POSEnt`, `POSMas`, `POSRep`, `POSReports`, `POSMIS`, `MISREP`, `PosTax`, `PosTaxRep`; `master_modules` = `POSMas`.
- Counts: **masters=13, operations=0, reports=28, hidden=1, other=12** (unclassified=12).
- Masters: `Setup Outlet`, `Outlet Bill Sundry Setting`, `Server Master`, `Table Master`, `Item List`, `Menu Group`, `Menu Category`, `Menu Item`, `Menu Item Rate`, `Session Master`, `Open Item Consumption`, `NC Type`, `Customer History`.
- Reports (28): `Sales Register`, `Stewardwise Sale`, `Table wise Sale`, `Settlement Summary`, `KOT Wise Details`, `Cover Analysis`, `Pending KOT`, `Item wise Sale`, `Deleted Unsettled Bill`, `NC KOT Detail/SUMMARY`, `Group Wise Sale`, `Customer Detail`, `Bill Wise Adjustment Report`, `Order Detail Report`, `Collection Summary`, `Open Item Sales`, `Void Bills`, `KOT Change Report`, `Discount Summary`, `Monthwise Sales`, `ABC Analysis`, `Sale Summary`, `Edited Bills`, `Tax Report`, `Tax Register`, `Taxwise Details`, `Tax Summary`.
- Hidden (`Flag=V`): `Payment Receive`.
- Operations classify=0 — KOT/Tax ops captions fall in `other`; curated ops leaves are registry-backed: `KOT Entry`, `Table Change Entry`, `KOT Transfer` (shell:1066/1357/1358).
- **Curated leaves:** masters `Restaurant Master` (registry-only, no menuHelp row — shell:1447 → `misc_sub_forms_ui.open_restaurant_master` :406), ops `KOT Entry`/`Table Change Entry`/`KOT Transfer`, reports `Sales Register` (shell:1068 → `_pos` = `pos_na.open_pos`, shell:684-685).

## 2. Workflow (menu → screen → action → DB write)

| # | Leaf | Screen (opener) | Action | DB write |
|---|---|---|---|---|
| 1 | Restaurant Master (registry-only) | `RestaurantMasterWindow` → `show()` (misc_sub_forms_ui:406) | Restaurant/outlet master CRUD | restaurant/outlet mast table (misc_sub_forms_ui save path) |
| 2 | KOT Entry (`Ctrl+T`, shell:2121-2122) | `KOTEntryForm(QDialog)` → `open_kot_entry(...).exec()` (kot_entry:33/:570) | Kitchen Order Ticket | `INSERT INTO KOT` + `KOTLog` (core pos_kot) |
| 3 | Table Change Entry | `TableChangeWindow(QMainWindow)` → `show()` (kot_transfer_ui:22/:240) | Move table | table-state update (KOT/table rows) |
| 4 | KOT Transfer | `KOTTransferWindow(QMainWindow)` → `show()` (kot_transfer_ui:129/:243) | Transfer KOT | `KOT` row transfer |
| 5 | Sales Register (`POSRep`, Flag=R) | `pos_na.open_pos` (shell:685/:1068) | Sales browse | read-only `Sale1/Sale2` |

- Sale billing core (`core/pos*.py`): `INSERT INTO Sale1/Sale2` (bill header/lines), `PayCharge` (payment), `SunTran` (sundry ledger), `Stock` posting, split/packing/scheme detail tables.
- VB6 sub-flows ported: happy hours, delivery (`DeliveryBoy/AssignDelivery`), packing (`PackingOrder`), schemes (`SchemeMast`), split bill, NC type.

## 3. Layers snapshot

| Layer | Count | registry hits |
|---|---|---|
| masters | 13 (classify) + Restaurant Master (registry) | Restaurant Master |
| operations | 0 classify + 3 registry | KOT Entry, Table Change Entry, KOT Transfer |
| reports | 28 | Sales Register |
| hidden | 1 (`Payment Receive`) | — |
| other | 12 | headers + feature captions (see `_logic.json`) |

## 4. Screenshot index (manifest `failed=[]`)

| File | Layer | Leaf | Status |
|---|---|---|---|
| `screenshots/00_shell_module.png` | shell | point of sale root | ok |
| `screenshots/10_masters_Restaurant_Master.png` | masters | Restaurant Master | ok |
| `screenshots/20_operations_KOT_Entry.png` | operations | KOT Entry | ok |
| `screenshots/30_operations_Table_Change_Entry.png` | operations | Table Change Entry | ok |
| `screenshots/40_operations_KOT_Transfer.png` | operations | KOT Transfer | ok |
| `screenshots/50_reports_Sales_Register.png` | reports | Sales Register | ok |

## 5. Test status

- `TEST_RESULTS.md`: L1 `410 passed`, L2b `27 passed`, **fails=0**.
- Detail: [`TEST_RESULTS.md`](TEST_RESULTS.md); KI list: `00_Instructions/TEST_PLAN_MASTER.md`.

## 6. Related docs

- Database: [`DATABASE.md`](DATABASE.md) · Frontend: [`FRONTEND.md`](FRONTEND.md) · Backend: [`BACKEND.md`](BACKEND.md) · Tests: [`TEST_PLAN.md`](TEST_PLAN.md)
- Layers: [`01_Masters/README.md`](01_Masters/README.md) · [`02_Operations/README.md`](02_Operations/README.md) · [`03_Reports/README.md`](03_Reports/README.md)
- SOP: `00_Instructions/MANUAL_TEMPLATE.md` · capture: `00_Instructions/CAPTURE_GUIDE.md` · global map: `00_GLOBAL/MenuHelp_Module_Map.md`
