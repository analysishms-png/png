# 13 - Members Management - Frontend Workflow

## 1. Shell wiring (shell.py)

- Sidebar root `extras` (extras group shared with EPABX/Messaging/SaleMarketing); `_on_sidebar_click` → `_safe_open` (:2194/:2284).
- UI import: `member_billing_ui as memb_ui` (shell:764).
- Registry keys:
  - `Member Billing` → `memb_ui.open_member_billing` (:1505); aliases same opener: `Member Bill Printing` (:1584), `Member Visit Entry` (:1585), `Member Renewal Entry` (:1586), `Member Assistant` (:1587)
  - `Member Select Category` → `hr.open_memcat` (:1526); `Corporate Member Master` → same (:1588)
  - `Category Master` → `hr.open_empcat` (:1141)
  - `Environment Settings` → `gs.open_enviro` (:1604 — overrides earlier `_coming_soon` tuple entry)
  - `Auto Settle Card Balance` → `pm.open_auto_settle_card_balance` (:1529)
  - **Blocked:** `Member Master`, `Corporate Member Master` (tuple), `Member Age Wise Revenue`, `Category wise Facility/Revenue`, `Member Bill Sundry Setting` in `_coming_soon` "Truly blocked (no DB tables)" spread (:1370-1396)

## 2. Forms

| Leaf | Opener | Notes |
|---|---|---|
| Member Select Category | `hr.open_memcat` (shell:1526) | Member category CRUD window |
| Member Billing | `memb_ui.open_member_billing` (shell:1505) | Billing hub (member bill/visit/renewal/assistant all route here) |
| Environment Settings | `gs.open_enviro` (shell:1604) | Enviro dialog (desktop-surface WIP from concurrent workstream) |
| Member Master | `_coming_soon` (tuple :1388) | Blocked — no DB table |

## 3. Capture screenshot mapping (manifest `failed=[]`)

```
10_masters_Member_Select_Category.png   hr.open_memcat window
20_operations_Member_Billing.png        member_billing_ui hub
```
Layer dirs `01_Masters/`, `02_Operations/` = copies; reports layer empty (03_Reports README notes none).
