# 09 - Night Audit - Backend Workflow

## 1. Core modules (HMS_py/core/)

| File | Role | Key APIs |
|---|---|---|
| `nightaudit.py` | NA engine | `get_night_audit_flags` (:51), `check_pending_kots` (:75), `check_unsettled_bills` (:92), `_next_vno` (:129), `_next_sno` (:134), `_make_rc_docid`/`_make_ppos_docid` (:141/:146), `_log_night_audit` (:150, `INSERT NightAuditLog` :153), `uncharged_rooms` (:164), `cancel_tentative_no_shows` (:185, `UPDATE Booking` :215), `get_inhouse_rooms` (:224), `post_room_charges_for_date` (:248, `INSERT PayCharge` :299/:311/:323), `get_pos_revenue` (:348), `_get_voucher_prefix` (:380), `post_pos_revenue_for_date` (:395, `INSERT PayCharge` :432), `run_night_audit` (:454), `reverse_night_audit` (:574, `UPDATE Enviro` :602), `na_log` (:613) |
| `guest_folio.py` | Guest folio CRUD | `list_all/get/search` (:69-89), `insert` (:95, `INSERT GuestFolio` :104), `update` (:138, dynamic `UPDATE GuestFolio SET` :158), `delete` (:164), `list_prof_details/insert_prof_detail` (:188/:196) |
| `folio.py` | Folio charges/settlement | `next_billno` (:27), `folio_charges` (:34), `folio_balance` (:65), `settle_folio` (:92, `INSERT FOMBillDetails` :132 + `UPDATE PayCharge` :140), `_log` (:153, `INSERT FolioLog` :158), `post_room_charge` (:177, `INSERT PayCharge` :214), `make_pc_docid` (:241), `charges_detail` (:248) |
| `year_end.py` | FY close | `get_fy_dates` (:31), `check_datelock` (:55), `get_subgroup_balances`/`get_acgroup_balances` (:66/:85), `carry_forward_balances` (:103, `UPDATE SubGroupCurrBal/ACGroupCURRBal/LastVoucher` :115/:121/:127), `reset_budget` (:139, `INSERT Budget` :162), `year_end_summary` (:180) |

## 2. Write flows (see DATABASE.md §3)

- `run_night_audit(date_from, date_to, user)` (:454) — full NA pipeline (pre-checks → no-show cancel → room charges → POS revenue → log) in one cn transaction.
- `reverse_night_audit` (:574) — `Enviro.NCur - 1` (VB6 `DateAdd('D', -1, NCur)` :580 documented).
- `folio.settle_folio` (:92) — bill + charge update + FolioLog.
- `year_end.carry_forward_balances` (:103) + `reset_budget` (:139).

## 3. Validation & error handling

- `guest_folio._validate` (:64); `update` raises `ValueError("Koi field update nahi diya")` (:154) when empty sets.
- Pre-checks gate NA run: pending KOTs / unsettled bills block (`check_*` :75/:92).
- `check_datelock` (year_end:55) — date-lock guard before postings.
- `_reverse_night_audit` UI: ImportError → warning; FY-guard docstring (:991); confirm dialog before critical action.
- cn-managed commit/rollback across multi-table postings.

## 4. Race-safety (KI-1 family)

- `_get_voucher_prefix(vtype, vdate)` (:380) — SELECT-then-consume (room/POS charge VNo) — same as Finance `Voucher_Prefix` (KI-1).
- `nightaudit._next_vno` (:129) / `_next_sno` (:134); `folio.next_billno` (:27) — same pattern.
- `Enviro` singleton row (1 row) — reverse-NA date update race if concurrent NA runs (no explicit lock observed).
