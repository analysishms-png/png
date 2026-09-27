# 13 - Members Management - Backend Workflow

## 1. Core modules (HMS_py/core/)

| File | Role | Key APIs |
|---|---|---|
| `members_masters.py` | Category/facility/revenue masters | **MemCat:** `memcat_list/get/exists/insert/update/delete` (:79-132, `INSERT MemCatMast` :100, `DELETE` :132, `_map_memcat` :55). **Facility:** `facility_list/get/exists/insert/update/delete` (:188-238, `INSERT FacilityMast` :209, `DELETE` :238, `_map_facility` :164). **Revenue:** `memrev` helpers (:278+, `RevMast`/`MembershipRevMast`) |
| `member_billing.py` | Member billing engine | **Family:** `list_family/insert_family/delete_family` (:20-38, `INSERT MemberFamily` :29). **Bill:** `list_membill/get_membill/insert_membill/delete_membill` (:55-82, `INSERT MemBill` :72). **Enviro:** `list/get/update_memenviro` (:96-106). **Catch:** `list_catchng/insert_catchng` (:130-136) |
| `facility_billing.py` | Facility billing engine | `list_fbill/get_fbill/insert_fbill/delete_fbill` (:20-54, `INSERT FacilityBill` :42); lines `INSERT FacilityBill1` (:79), `INSERT FacilityBill2` (:117); `list_locfac/insert_locfac/delete_locfac` (:143-159, `INSERT LocationFacility` :151); `_map_locfac` (:133), `_map_sunfac` (:164) |

## 2. Write flows (see DATABASE.md §3)

- `memcat_insert` exists-guard single-table insert; facility same.
- `insert_membill` — MemBill header (+ MemBill1 lines family pattern).
- `insert_fbill` — 3-table transaction (FacilityBill + Bill1 + Bill2) — orphan risk pattern (KI-7 analog) unless cn-managed (it is: cn param + rollback).
- `insert_family` — MemberFamily rows keyed SubCode+SNo.

## 3. Validation & error handling

- exists-guards (`memcat_exists`, `facility_*_exists`) prevent duplicate codes.
- `_map_*` normalizers (:55/:164/:9/:43/:87/:120/:133/:164) for legacy columns.
- cn-managed commit/rollback on all insert/update/delete (multi-table `insert_fbill` included).
- UI: `memb_ui` None-guard (shell:1505) + `_coming_soon` for blocked leaves.

## 4. Race-safety (KI-1 family)

- `MemBill.vno/vprefix`, `FacilityBill.vno/vprefix` — select-then-consume counters (Finance `Voucher_Prefix` analog).
- `MemberFamily` (SubCode, SNo) composite — `_next_sno`-style guard.
- `MemEnviro` singleton per site — update race if concurrent config edits (no lock observed).
