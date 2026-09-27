# 09 - Night Audit - Module Manual

## 1. Menu path (MenuHelp)

- Sidebar root: `night audit` (shell:1845).
- Module_Names: `NightAudit`, `NightAudito`, `NightAuditoR`, `NightAuditR`, `NightAuditRR`, `NightAuditL`, `NightAuditLR`, `NightAuditGST`, `NightAuditGSTR`, `NightAuditMenu`; `master_modules=()`.
- Counts: **masters=0, operations=1, reports=8, hidden=0, other=21**.
- Operations: `Night Audit Log` (`NightAuditLR`).
- Reports (8): `Occupancy Analysis`, `GSTR-1`, `GSTR-2(3)`, `GSTR-2(4A)`, `GSTR-2(4B)`, `Credit Report`, `Reconciliation (GSTR-2A)`, `EInvoice Report`.
- Other (21): `Night Audit`, `Operation`, `Guest Audit Ledger`, `Charges Posting`, `Night Audit Process`, `Account Posting`, `Reverse Night Audit`, `Reports`, `Daily Report`, `Guest Trail`, `Checkout Analysis`, `Market Segment Analysis`, `Business Source Analysis`, `Company Analysis`, `FOCC Report`, `Food Costing Report`, `FB Cost Statement`, `Log`, `Charges Remove Log`, `GST Reports`, `Upload Process`.
- **Curated leaves (fixed 2026-09-25):** ops `Night Audit Log` (shell:1071 → `_na`), reports `Occupancy Analysis` (shell:1073 → `_na`; earlier `Night Audit Reports` key nahi tha). `_na = lambda w: pna.open_na(w)` (shell:686).

## 2. Workflow (menu → screen → action → DB write)

| # | Leaf | Screen (opener) | Action | DB write |
|---|---|---|---|---|
| 1 | Night Audit Log (`Ctrl+Shift+N` shell:2123-2124) | `pna.open_na` → `NABrowser(QDialog)` (pos_na:149/:249) | Audit log browse | read-only `NightAuditLog` |
| 2 | Occupancy Analysis (`NightAuditRR`/`FDOMISRep`, Flag=R) | `pna.open_na` (same `_na`) | Report view | read-only |
| 3 | Night Audit Process (`NightAuditoR`) | `narep_ui.open_nightaudit_reports` (shell:1348) | Run NA | `nightaudit.run_night_audit` (:454): pre-checks → `post_room_charges_for_date` → `INSERT INTO PayCharge` (:299/:311/:323), `post_pos_revenue_for_date` (:395, PayCharge :432), `_log_night_audit` → `INSERT INTO NightAuditLog` (:153) |
| 4 | Reverse Night Audit | `_reverse_night_audit` confirm dialog (shell:990-1018) | Reverse NA | `nightaudit.reverse_night_audit` (:574) → `UPDATE Enviro SET [NCur] = ?` (:602, NCurr date -1) |
| 5 | Charges/Account Posting | `narep_ui.open_nightaudit_reports` (shell:1251/:1253) | Posting runs | `INSERT INTO PayCharge` (room/pos charges) |

## 3. Layers snapshot

| Layer | Count | registry hits |
|---|---|---|
| masters | 0 | — |
| operations | 1 | Night Audit Log |
| reports | 8 | Occupancy Analysis |
| hidden | 0 | — |
| other | 21 | see §1 (process/posting/reverse flows) |

## 4. Screenshot index (manifest `failed=[]`)

| File | Layer | Leaf | Status |
|---|---|---|---|
| `screenshots/10_operations_Night_Audit_Log.png` | operations | Night Audit Log | ok |
| `screenshots/20_reports_Occupancy_Analysis.png` | reports | Occupancy Analysis | ok |

## 5. Test status

- `TEST_RESULTS.md`: L1+L2b **fails=0**.
- Detail: [`TEST_RESULTS.md`](TEST_RESULTS.md); KI list: `00_Instructions/TEST_PLAN_MASTER.md` (KI-1 voucher prefix `_get_voucher_prefix` nightaudit:380 same family).

## 6. Related docs

- Database: [`DATABASE.md`](DATABASE.md) · Frontend: [`FRONTEND.md`](FRONTEND.md) · Backend: [`BACKEND.md`](BACKEND.md) · Tests: [`TEST_PLAN.md`](TEST_PLAN.md)
- Layers: [`01_Masters/README.md`](01_Masters/README.md) · [`02_Operations/README.md`](02_Operations/README.md) · [`03_Reports/README.md`](03_Reports/README.md)
- SOP: `00_Instructions/MANUAL_TEMPLATE.md` · capture: `00_Instructions/CAPTURE_GUIDE.md` · global map: `00_GLOBAL/MenuHelp_Module_Map.md`
