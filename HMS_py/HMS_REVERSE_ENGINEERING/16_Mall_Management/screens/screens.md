# 16_Mall_Management — Screens

Module hex `19` · builder caption `Mall Management` · `menu_tree_raw.txt` L504-L514
(**11 rows**). Runtime reachability: **0 rows** for user SA. `[VERIFIED-VB6]` `[VERIFIED-SQL]`

## 1. Builder menu (design-time) — 11 rows

| # | Caption | group | type | menu line | Dispatch caption line | Screen form | Evidence |
|---|---|---|---|---|---|---|---|
| — | `Mall Management` (header) | — | 4 | L504 | — | — | `[VERIFIED-VB6]` |
| — | `Operations` (group) | — | 3 | L505 | — | — | `[VERIFIED-VB6]` |
| 1 | **Operations** *(caption literally "Operations")* | Operations | 0 | L506 | **L480784** `Location-Master` | `FrmLocationMast` | `[VERIFIED-VB6]` **caption drift** |
| 2 | Facility Master | Operations | 0 | L507 | L480789 | `FrmFacilityMast` | `[VERIFIED-VB6]` |
| 3 | Location Facilities | Operations | 0 | L508 | L480794 | `FrmLocationFacilities` | `[VERIFIED-VB6]` |
| 4 | Party Locations | Operations | 0 | L509 | L480799 | `FrmPartyLocations` | `[VERIFIED-VB6]` |
| 5 | Meter Reading | Operations | 0 | L510 | L480804 | `FrmMeterReading` | `[VERIFIED-VB6]` |
| 6 | Facility Billing | Operations | 0 | L511 | L480809 | `frmFacilityBillAdv` | `[VERIFIED-VB6]` |
| 7 | Facility Sundry Setting | Operations | **2** | L512 | L480814 | `FacilitySundry` | `[VERIFIED-VB6]` |
| — | `Reports` (group) | — | 3 | L513 | — | — | `[VERIFIED-VB6]` |
| 8 | **Facility Bill Register** | Reports | **1** | L514 | L480819 | `rFomRepView` | `[VERIFIED-VB6]` |

Counts: **7 operations + 1 report + 2 groups + 1 header = 11 rows.**
`type=2` on #7 = screen variant; `type=1` on #8 = report.

## 2. Caption drift on row 1

Three spellings of the same thing, on three surfaces `[VERIFIED-VB6]`:

| Surface | Caption | Evidence |
|---|---|---|
| Builder menu row (L506) | `Operations` | `menu_tree_raw.txt` |
| Builder registration + dispatch arm | **`Location-Master`** | L476955 (registration), L480784 (dispatch) |
| Form object | `Location Master` (no hyphen) | L477752, L931608 |

The dispatch chain matches on `"Location-Master"` (hyphen). If the runtime menu supplies
`Operations` (as the builder row does), **the arm never matches and row 1 opens nothing.**
`[INFERRED]` — confirm at runtime; if `menuHelp` supplies a different caption for this
row, the outcome changes (no `MenuHelp` row exists for this module at all → §3).

## 3. Runtime reachability for user SA — module invisible

`MenuHelp_SA_tree.txt` (440 rows, `[VERIFIED-SQL]`):

- `OPT1 = 25` (decimal of builder hex `19`): **0 rows** — no root, no group, no items.
- Consequently **no Mall screen, group or report is reachable from the SA menu.**
- `Analysis.ini` key `9=` still lists the strip tab `Mall Management` → tab present,
  menu empty. `[VERIFIED-UI]`

| Surface | Mall content | Evidence |
|---|---|---|
| Strip tab (`Analysis.ini` 9) | `Mall Management` present (15th name) | `[VERIFIED-UI]` |
| Runtime menu (SA, `OPT1=25`) | **0 rows** | `[VERIFIED-SQL]` |
| Builder menu (hex 19) | 11 rows | `[VERIFIED-VB6]` |

`[INFERRED]` the module is delivered but disabled/unlicensed at this site (consistent with
`FacilityBill*`/`FacilityMast` = 0 rows).

## 4. Runtime capture status

| File | Bytes | Shows | Evidence |
|---|---|---|---|
| `15-Mall_MenuTab.png` | 511356 | **Mall Management** strip tab | `[VERIFIED-UI]` |

0 of 7 operation screens + 0 of 1 report captured. See `screenshots/README.md`.

## 5. Verification checklist for QA (spec §21)

- [ ] Click **Mall Management** tab as SA → capture whatever renders (expected: empty menu)
- [ ] Confirm `Location-Master` / `Operations` caption mismatch if the row ever appears
- [ ] Confirm no screen opens without a Save/Delete click (all 7 are masters/billing)
- [ ] **`Facility Billing` is billing** → Night-Audit blocklist: Cancel/Esc only
- [ ] `FacilityMast` delete path exists (`Delete From FacilityMast`, L932516) — never click
      Delete on that screen during QA
