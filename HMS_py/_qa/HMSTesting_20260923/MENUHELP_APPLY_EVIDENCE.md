# menuHelp Module-Wise Apply — Evidence (2026-09-23)

**Directive:** MENU HELP table se module-wise logic samajh, VB6 se code nikal, Python me apply, testing karo.

## VB6 evidence (FODER)

| Source | Logic |
|--------|-------|
| `FaVoucher.bas` | `SELECT Param_Str AS UPrivilege, Module_Name FROM menuHelp WHERE UserName=? AND CompCode=? AND [Option]=?` |
| `UserPermission.frm` | Param_Str[1]=A(Add), [2]=E(Edit), [3]=D(Delete), [4]=P(Print) |
| `HMS.bas` / `MDIForm1.frm` | Flag E/N → `AEDP`; Flag R → `***P` |
| `menuHelp` | per-user (8475 rows); `menuHelp1` = SA template (1234) |
| Flag | E=Entry, R=Report, N=Node, V=Hidden |

## Python apply

### 1. `core/menu_help.py` (new)

API: `entries` · `by_caption` · `flag_for` · `rights` · `can(user,cap,right)` · `can_open` · `module_tree` · `modules` · `clear_cache`

- No row / missing leaf → full `AEDP` (User1 full-access pattern)
- Flag `V` → `can_open=False` (shell disables action)
- SA live: entries=456 · flags E=242 R=137 N=61 V=16 · 97 Module_Name groups

### 2. `shell._add_item` rights hook

Menu banate waqt `menu_help.can_open(user, leaf)` — Flag V hide, baaki open.

### 3. Report aliases (`reports.VB6_CAPTION_ALIASES`)

All 14 menuHelp Flag=R SOON captions → live engine keys:

| Caption | Key |
|---------|-----|
| Arrival List | ArrivalDepList |
| Attendence Report (VB6 typo) | AttendanceRep |
| Cashier  Report (double space) | CashierSummary |
| Charge Payment Detail | GuestPayments |
| Collection Summary | CashierCollection |
| Group Wise Sale | ItemWiseGroupWiseSaleReport |
| Item Wise Sales Report | ItemWiseSale |
| KOT Change Report | KOTRateChange |
| Monthwise Sales | MonthOutletWiseSale |
| Room Wise Plan Detail | PlanReport |
| Sale Summary | SaleSumm |
| Settlement Summary | CashierSettlement |
| Stewardwise Sale | WaiterWiseSale (ModuleAdd.bas GRepFormName) |
| Taxwise Details | TaxDetails |

### 4. Flag=E SOON leaves → live openers (shell dict-spread)

Setup Outlet→`p2.open_depart` · Party Master→`p2.open_sundry` · Item Entry →`p2.open_item` · Environment Settings→`_open_enviro` · Events→`bm.open_func_type` · Banquet Booking→`hall_ui` · Guest Comments→`gsvc_ui` · Customer History→`ghu` · Leave/Attendance/Loan/Advance/Over Time/Leave Encashment/Salary Creation→`payroll_ui` · SMS (API/Scheduled)→DBSendSMS list · SMS (Conditional)→EmailSMSForward list · Venue Availability→HallBook list.

**Evidence:** `_qa/HMSTesting_20260923/evidence_menu_help_apply.py` — all 14 R + all 18 wired E = **LIVE**.

## Gates (post-apply)

| Gate | Result |
|------|--------|
| `pytest -q` | **201 passed** |
| `param_audit` | **0** |
| `api_mismatch_audit` | **0** |
| `registry_audit` | MISSING **0** · LIVE 413 · SOON 134 |
| `mdi_leaf_gaps` | OPEN **547/547** · CLOSED **0** |
| `test_menu_help.py` | 2 passed (synthetic AEDP/V rights) |

## Still SOON (documented, not bugs)

No-table / DB-empty: Members full flow, SmartCard, Card*, HR Leave tables (Attendence/Leave_Ench empty), Banquet billing sundry, Table Master, Godrej/Door locks, Windows tile cascade (need MDI manager), PlanPopup blank captions, Messaging InBox/OutBox (`&` accelerator captions), MDI/Manage MDI, Sale Bill Modification (VB6 form not ported).

## Scripts

- `evidence_menu_help_apply.py`
- `test_menu_help_live.py`
- `soon_flag_map.json` (work queue)
- `list_soon_by_flag.py`
