# 13 - Members Management - Module Manual

## 1. Menu path (MenuHelp)

- Sidebar root: `extras` (shared extras group; capture used `sidebar 'extras'`).
- Module_Names: `Mem`, `MemMas`, `MemOpr`; `master_modules` = `MemMas`.
- Counts: **masters=4, ops=0, reports=0, hidden=0, other=2**.
- Masters (`MemMas`): `Member Select Category`, `Category Master`, `Member Master`, `Environment Settings`.
- Other (2): `Members Mgmt` (header), `Auto Settle Card Balance`.
- Registry family (member_billing_ui, shell:1505/1584-1587): `Member Billing` → `memb_ui.open_member_billing`, aliases `Member Bill Printing`, `Member Visit Entry`, `Member Renewal Entry`, `Member Assistant` (same opener).
- **Curated leaves (fixed 2026-09-25):** masters `Member Select Category` (shell:1526 → `hr.open_memcat`; earlier masters=[]), ops `Member Billing` (shell:1505 — key exists ✓).
- Blocked leaf: `Member Master` is in the `_coming_soon` tuple (shell:1370-1388 "Truly blocked (no DB tables)") — no member master table in DB (subscription core absent); member data lives in `MemCatMast`/`MemberFamily`/`MemEnviro`.

## 2. Workflow (menu → screen → action → DB write)

| # | Leaf | Screen (opener) | Action | DB write |
|---|---|---|---|---|
| 1 | Member Select Category (`MemMas`) | `hr.open_memcat` (shell:1526) | Member category CRUD | `members_masters.memcat_insert/update/delete` → `INSERT INTO MemCatMast (Code, Name, ShortName, Subscription, ...)` (members_masters:100) |
| 2 | Member Billing (registry-only, NO ROW) | `memb_ui.open_member_billing` (shell:1505) | Member billing hub | `member_billing.insert_membill` → `INSERT INTO MemBill (Docid, vdate, vno, vprefix, Vtype, MemCode, MemCatCode, cardno, MthYear, NetAmount, ...)` (:72) + `MemBill1` lines; family `INSERT INTO MemberFamily` (:29) |
| 3 | (aliases) Member Bill Printing/Visit Entry/Renewal/Assistant | same `memb_ui` opener (shell:1584-1587) | Print/visit/renewal flows | `MemVisitEntry`, renewal update, `MemBill` |
| 4 | Facility billing (`MemOpr` family) | facility UI | Facility charges | `facility_billing.insert_fbill` → `INSERT INTO FacilityBill` (:42) + `FacilityBill1` (:79) + `FacilityBill2` (:117); `LocationFacility` (:151) |

## 3. Layers snapshot

| Layer | Count | registry hits |
|---|---|---|
| masters | 4 | Member Select Category (curated) |
| operations | 0 classify (registry-only `Member Billing` + 4 aliases) | Member Billing |
| reports | 0 | — |
| hidden | 0 | — |
| other | 2 | `Members Mgmt` header, `Auto Settle Card Balance` (shell:1529 → `pm.open_auto_settle_card_balance`) |

## 4. Screenshot index (manifest `failed=[]`)

| File | Layer | Leaf | Status |
|---|---|---|---|
| `screenshots/10_masters_Member_Select_Category.png` | masters | Member Select Category | ok |
| `screenshots/20_operations_Member_Billing.png` | operations | Member Billing | ok |

## 5. Test status

- `TEST_RESULTS.md`: L1 `413 passed` + L2b `27 passed`, **fails=0** (first run recorded fails=1 — transient: concurrent workstream's untracked desktop-surface TDD test `test_main_setup_desktop_ui.py` was red mid-edit; rerun green).
- Detail: [`TEST_RESULTS.md`](TEST_RESULTS.md); KI list: `00_Instructions/TEST_PLAN_MASTER.md`.

## 6. Related docs

- Database: [`DATABASE.md`](DATABASE.md) · Frontend: [`FRONTEND.md`](FRONTEND.md) · Backend: [`BACKEND.md`](BACKEND.md) · Tests: [`TEST_PLAN.md`](TEST_PLAN.md)
- Layers: [`01_Masters/README.md`](01_Masters/README.md) · [`02_Operations/README.md`](02_Operations/README.md) · [`03_Reports/README.md`](03_Reports/README.md)
- SOP: `00_Instructions/MANUAL_TEMPLATE.md` · capture: `00_Instructions/CAPTURE_GUIDE.md` · global map: `00_GLOBAL/MenuHelp_Module_Map.md`
