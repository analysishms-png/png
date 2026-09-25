# 06 - Inventory - Module Manual

## 1. Menu path (MenuHelp)

- Sidebar root: `inventory` (group captions `Inventory` + `Operations` + `Reports`).
- Module_Names (`_logic.json`): `Purchase`, `Matop`, `Purch`, `MatLok`, `MatStat`, `MatReports`, `MatVat`, `MatVatR`; `master_modules` = `MatLok`, `MatStat`.
- Counts (`_logic.json`, classify): **masters=5, operations=1, reports=0, hidden=0, other=17**.
- `other=17` (compulsory): `Inventory`, `Operations`, `Reports` (headers) + `Purchase Order`, `M.R. Entry`, `Purchase Bill`, `Requisition Slip`, `Stock Issue on Requisition`, `Kitchen Closing Stock`, `Finish Material Receive Entry`, `Tax Reports`, `VAT Register`, `VAT Register II`, `VAT Register III`, `Form24 Annexure-A`, `Form III`, `UPVAT XXIV` (feature/report captions jo classify rule me buckets nahi aate).
- Classify lists: masters = `Indent`, `Look Ups`, `Pending Indent`, `Pending M.R.`, `Pending Purchase Order`; operations = `Stock Transfer`.
- Curated registry hits: masters `Indent` (shell:1166), ops `GIN / Purchase Receipt` (shell:1174), `Stock Transfer` (:1177), reports `Stock Summary`/`Stock Register`/`Purchase Register` (:1170/:1171/:1169 — InvBrowser path, classify reports=0 kyun ki menuHelp rows ke caption/bucket mismatch).

## 2. Workflow (menu → screen → action → DB write)

| # | Menu leaf | Screen (opener) | Action | DB write |
|---|---|---|---|---|
| 1 | Indent (`Purch`, `Flag=E`) | `IndentForm(QDialog)` → `open_indent_ui` exec (shell.py:1166, inventory.py:807) | New/edit indent | `inventory.indent_create/update` → `INSERT INTO Indent (DocId, Vtype, VNo, ...)` (inventory.py:188) / `UPDATE Indent` (:209); VNo via `_next_vno_table` (:141) |
| 2 | GIN / Purchase Receipt (registry-only, menuHelp row nahi) | `GINForm(QDialog)` → `open_gin` exec (shell.py:1174, inventory.py:811) | Goods receipt (MRCR) | `inventory.gin_create` → `INSERT INTO GIN (DocId, Vtype, VNo, PartyCode, PartyName, GodownCode, ...)` (inventory.py:298) + lines (`_next_vno_table('GIN','MRCR')` :290); **port bug fixed 2026-09-25** — `GINForm.reload` `party_name` KeyError → `party` key (inventory.py:484) |
| 3 | Stock Transfer (`Purch`) | `StockTransferForm(QDialog)` → `open_stock_transfer` exec (shell.py:1177, inventory.py:916) | Godown-to-godown transfer | `inventory.stock_transfer` (called ui:900) — stock rows move |
| 4 | Stock Summary / Stock Register / Purchase Register (`MatRep`, `Flag=R`) | `InvBrowser(QDialog)` → `open_inv` exec (shell.py:1169-1171, inventory.py:803) | Report browse | read-only: `purchase_list` (GIN MRCR, inventory.py:232), stock/register SELECTs |
| 5 | Purchase Order / M.R. Entry (`Purch`, other bucket) | registry openers (`_inv`/`purchase` paths) | PO/MR entry | `purchase.py`: `INSERT PORDER1` (:904), `INSERT Purch1/Purch2/Stock` (purchase.py:135/271/298) |

## 3. Layers snapshot

| Layer | Count | registry hits (`_logic.json`) |
|---|---|---|
| masters | 5 | Indent |
| operations | 1 (+ GIN registry leaf) | GIN / Purchase Receipt, Stock Transfer |
| reports | 0 classify / 3 registry | Stock Summary, Stock Register, Purchase Register |
| hidden (`V`) | 0 | — |
| other (unclassified) | 17 | see §1 |

## 4. Screenshot index

Live capture (SA/KANPUR, manifest `screenshots/manifest.json`, `failed=[]`):

| File | Layer | Leaf | Status |
|---|---|---|---|
| `screenshots/00_shell_module.png` | shell | Inventory sidebar root | ok |
| `screenshots/10_masters_Indent.png` | masters | Indent | ok |
| `screenshots/20_operations_GIN_-_Purchase_Receipt.png` | operations | GIN / Purchase Receipt | ok |
| `screenshots/30_operations_Stock_Transfer.png` | operations | Stock Transfer | ok |
| `screenshots/40_reports_Stock_Summary.png` | reports | Stock Summary | skipped_messagebox |
| `screenshots/50_reports_Stock_Register.png` | reports | Stock Register | ok |
| `screenshots/60_reports_Purchase_Register.png` | reports | Purchase Register | ok |

(Layer copies: `01_Masters/`, `02_Operations/`, `03_Reports/` screenshots.)

## 5. Test status

- `TEST_RESULTS.md` (L1, L2b): `fails=0`.
- Coverage: `tests/database/test_inventory_registers.py` (L2c — batch me nahi: 5/8 KI-2 data-gap), unit validation (`test_validation_crud.py` standalone, gap), L1 registry wiring.
- Detail: [`TEST_RESULTS.md`](TEST_RESULTS.md); KI list: `00_Instructions/TEST_PLAN_MASTER.md` (KI-2 = yahi module ke inventory register checks).

## 6. Related docs

- Database: [`DATABASE.md`](DATABASE.md) · Frontend: [`FRONTEND.md`](FRONTEND.md) · Backend: [`BACKEND.md`](BACKEND.md) · Tests: [`TEST_PLAN.md`](TEST_PLAN.md)
- Layers: [`01_Masters/README.md`](01_Masters/README.md) · [`02_Operations/README.md`](02_Operations/README.md) · [`03_Reports/README.md`](03_Reports/README.md)
- SOP: `00_Instructions/MANUAL_TEMPLATE.md` · capture: `00_Instructions/CAPTURE_GUIDE.md` · global menu map: `00_GLOBAL/MenuHelp_Module_Map.md`
