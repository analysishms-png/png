# 14 - Sale & Marketing - Frontend Workflow

## 1. Shell wiring (shell.py)

- Sidebar root `extras` (no dedicated `sale`/`marketing` sidebar key — `sidebar_buttons.py` sections + `_vb6_order` shell:1856 me absent; plan Task 12 line 1580: 14 capture `sidebar="extras"` use karta hai).
- UI imports: `finance_masters_ui as fm`, `frontoffice as fo` (None-guarded).
- Registry keys:
  - `Market Segment` → `fm.open_marketsegment` (shell:1124) — curated masters leaf
  - `Business Source` → `fm.open_businesssource` (shell:1125) — curated operations leaf
  - `Guest Profile` → `fo.open_guestprof` (shell:1069, also Ctrl+F shortcut shell:2117) — captured under 02_MainSetup
- Finance masters set (shell:588-589): `Tax Master, Tax Structure, Payment Type, Market Segment, Business Source, Guest Status, Forex Master` — VB6 Main Setup ke andar Sale & Marketing-adjacent rows.

## 2. Forms

| Leaf | Opener | Notes |
|---|---|---|
| Market Segment | `fm.open_marketsegment` (finance_masters_ui:208-209) | `BaseMasterForm(marketsegment_config :85)` — title "Market Segment Master - HMS_py"; fields Code (max `marketsegment.LIMITS["code"]`) / Name / Active; `api=marketsegment`, `pk_key` code |
| Business Source | `fm.open_businesssource` (:212-213) | `businesssource_config :101` — title "Business Source Master - HMS_py"; Code/Name/Active; `api=businesssource` |
| Guest Profile | `fo.open_guestprof` (frontoffice.py:64-65) | `BaseMasterForm(guestprof_config :31)` — title "Guest Profile (P4-a) - HMS_py"; Name/Address/City/Type/Phone/Mobile/Email/Nationality; dup guards in `guestprof._validate` |
| Launcher buttons | finance_masters_ui:239-240 | `("Market Segment Master", open_marketsegment)`, `("Business Source Master", open_businesssource)` — VB6 Finance Masters window buttons |

## 3. Capture screenshot mapping (manifest `failed=[]`)

```
10_masters_Market_Segment.png     fm.open_marketsegment window (BaseMasterForm)
20_operations_Business_Source.png fm.open_businesssource window (BaseMasterForm)
```
Layer dirs `01_Masters/`, `02_Operations/` = copies; reports layer empty (03_Reports README notes none).
