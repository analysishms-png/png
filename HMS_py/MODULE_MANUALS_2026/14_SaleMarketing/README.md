# 14 - Sale & Marketing - Module Manual

## 1. Menu path (MenuHelp)

- Sidebar root: `extras` (plan ruling: VB6 Sale & Marketing ka dedicated HMS_py sidebar section nahi hai — `sidebar_buttons.py`/`_vb6_order` me `sale`/`marketing` key nahi).
- Module_Names: **`()` — zero dedicated rows** (discovery 2026-09-25: `Market Segment`/`Business Source` rows `Module_Name='Mas'` me hain = 02_MainSetup bucket; modules_map comment me documented). Counts: **masters=0 ops=0 reports=0 hidden=0 other=0**.
- Rows (per query, live): `Market Segment` → `SA AEDP E Mas` (+Risabh, htw_system), `Business Source` → `SA AEDP E Mas` (+htw_system, admin). `Guest Profile` → **NO ROW** (registry-only, shell:1069).
- Registry keys: `Market Segment` → `fm.open_marketsegment` (shell:1124, fm=finance_masters_ui), `Business Source` → `fm.open_businesssource` (shell:1125), `Guest Profile` → `fo.open_guestprof` (shell:1069 — 02_MainSetup me capture ho chuka hai).
- **Curated leaves (fixed 2026-09-25):** masters `Market Segment` (was empty), operations `Business Source` (was empty), reports [].
- Cross-module note: yeh do rows **02_MainSetup ke masters bucket me classify** hote hain (Module_Name='Mas') par 02 ke curated 5 captures (Room Master/Room Category/Plan Master/Guest Profile/Department Master) me shamil nahi the — 14 dono ko alag se capture karta hai (VB6 Sale & Marketing parity).

## 2. Workflow (menu → screen → action → DB write)

| # | Leaf | Screen (opener) | Action | DB write |
|---|---|---|---|---|
| 1 | Market Segment (`Mas`) | `fm.open_marketsegment` (shell:1124) → `BaseMasterForm(marketsegment_config)` (finance_masters_ui:85) | Code/Name/Active CRUD | `marketsegment.insert/update/delete` → `MarketSeg` (insert :72 `INSERT INTO MarketSeg (Code, Name, Active, ...)`, exists :62) |
| 2 | Business Source (`Mas`) | `fm.open_businesssource` (shell:1125) → `businesssource_config` (:101) | Code/Name/Active CRUD | `businesssource.insert/update/delete` → `BussSource` (:71 `INSERT INTO BussSource (Code, Name, Active, ...)`) |
| 3 | Guest Profile (registry-only, NO ROW) | `fo.open_guestprof` (shell:1069) → `BaseMasterForm(guestprof_config)` (frontoffice.py:31) | Guest profile CRUD | `guestprof.insert` → `GuestProf` (dup mobile/phone/email guards :62-76) — **02 captured** |
| 4 | (launcher) Market Segment Master / Business Source Master buttons | finance_masters_ui:239-240 | same openers | same tables |

## 3. Layers snapshot

| Layer | Count | registry hits |
|---|---|---|
| masters | 0 (rows live in `Mas`=02) | Market Segment |
| operations | 0 (rows live in `Mas`=02) | Business Source |
| reports | 0 | — |
| hidden | 0 | — |
| other | 0 | — |

## 4. Screenshot index (manifest `failed=[]`)

| File | Layer | Leaf | Status |
|---|---|---|---|
| `screenshots/10_masters_Market_Segment.png` | masters | Market Segment | ok |
| `screenshots/20_operations_Business_Source.png` | operations | Business Source | ok |

## 5. Test status

- `TEST_RESULTS.md`: L1 **434 passed** + L2b **27 passed**, **fails=0**.
- Detail: [`TEST_RESULTS.md`](TEST_RESULTS.md); KI list: `00_Instructions/TEST_PLAN_MASTER.md`.

## 6. Related docs

- Database: [`DATABASE.md`](DATABASE.md) · Frontend: [`FRONTEND.md`](FRONTEND.md) · Backend: [`BACKEND.md`](BACKEND.md) · Tests: [`TEST_PLAN.md`](TEST_PLAN.md)
- Layers: [`01_Masters/README.md`](01_Masters/README.md) · [`02_Operations/README.md`](02_Operations/README.md) · [`03_Reports/README.md`](03_Reports/README.md)
- SOP: `00_Instructions/MANUAL_TEMPLATE.md` · capture: `00_Instructions/CAPTURE_GUIDE.md` · global map: `00_GLOBAL/MenuHelp_Module_Map.md`
