# HMS Module Inventory (PHASE 8)

Generated: 2026-10-08 — based on Analysis.ini key 9 sidebar modules + actual `ui/`/`core/` files.
No modules invented; absence means absent.

## Sidebar modules (Analysis.ini key 9) vs code

| Sidebar module | Status | Evidence |
|---|---|---|
| Finance | ✅ Present | `fa_voucher_ui`, `fa_ledger_ui`, `fa_enviro_ui`, `finance_masters_ui`, `core/fa_ledger_ops` |
| Main Setup | ✅ Present | `general_setup_ui`, `general_setup_tabs_ui`, `enviro_ui`, `company_profile_ui`, `p2_masters`, main-setup test wave |
| Reservation | ✅ Present | `booking_ops_ui`, `core/reservation` refs, `output/res_status_*.pdf` reports |
| Front Office | ✅ Present | `frontoffice`, `front_office_dashboard`, `fo_sub_forms_ui`, `folio_ui`, `checkout_ui`, `guest_*`, `block_master_ui`, merge/reverse-merge forms |
| House Keeping | ⚠️ Partial | no dedicated `housekeeping` module; cleaning forms only (`frm_item_issued_on_cleaning_ui`) + dashboard status |
| Inventory | ✅ Present | `core/inventory_registers` (tests), stock/depart/godown paths |
| Point Of Sale | ✅ Present | 19 `ui/` + 16 `core/` POS modules |
| Banquet | ✅ Present | `banquet_masters_ui`, `banquet_ops_ui`, `catering_booking_ui`, `core/hall_booking` |
| Night Audit | ✅ Present | `core/nightaudit`, NA menubar tests |
| HR & PayRoll | ✅ Present | 3 `ui/` + 2 `core/` (incl. attendance parity test) |
| EPABX | ✅ Present | `epabx_ui`, 2 core modules |
| Messaging | ✅ Present | `messaging_ui`-family + `core/sms_http` |
| Members Mgmt | ✅ Present | 4 `ui/` + 6 `core/` member modules |
| Sale & Marketing | ⚠️ Partial | 1 `ui/` + 2 `core/` (marketing light) |
| Mall Management | ❌ Missing | only incidental string mentions — no module files |

## Other real modules (beyond sidebar)

- **Login / shell**: `main.py` flow (User Information → Company Details → MDI shell), `ui/shell.py` menu + form registry.
- **Reports**: `core/reports.py`, `Reports/` output, PDF exports in `output/`.
- **Channel manager** (OTA): `ui/channel_ui`, `core/channel/*` (phases 1–4 docs in `docs/`).
- **Door locks**: `door_lock_ui`, `frm_godrej_lock_settings_ui`, `core/smartcard` (tests pass).
- **DB tools**: `db_backup_ui`, `db_maintenance_ui`, year-end, `core/year_end`.
- **Dashboard**: `ui/dashboard.py`.

## Test coverage vs modules

Well covered: unit registry/wiring, database parity tests (96/98 live), POS, front office merge,
membership revenue, year end. Thin/none: House Keeping, Mall Management, integration/ and regression/ dirs empty.

## Known broken right now

- Excise Gate Pass screen: file `core/excise_gate_pass.py` does not compile (PY-01) — module unusable until fixed.
