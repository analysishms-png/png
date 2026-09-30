# 14_Members_Management — Notes (open questions, dead code, site-specific facts)

## 1. The headline finding: three menu surfaces disagree

| Surface | Members content | Evidence |
|---|---|---|
| **Strip tab** (`Analysis.ini` key `9=…#Members Mgmt#…`) | tab **exists** | `[VERIFIED-UI]` |
| **Runtime menu** (`MenuHelp`, user SA) | `OPT1=23` → **1 orphan row** (`Auto Settle Card Balance`), **no root row**; masters moved under **Main Setup `12\|14`** (4 rows) | `[VERIFIED-SQL]` |
| **Builder menu** (`menu_tree_raw.txt` hex 17) | **24 rows**: 12 ops + 8 reports + groups | `[VERIFIED-VB6]` |

**Net effect `[INFERRED]`:** the Members Mgmt tab renders with an effectively empty menu
for user SA, while its masters are reachable only through Main Setup. The 12 transaction
screens and 8 reports documented in the builder tree are **not menu-reachable** on this
site.

Also recorded: `Auto Settle Card Balance` sits at `OPT1=23, OPT2=0, OPT3=11` with **no
module root row** (`…|23|0|0|0|N` missing) — an orphan that would not render as a tab.
`[VERIFIED-SQL]`

## 2. Dispatch defects (from `logic/vb6_logic.md` §2)

1. **`Member Master` → `MemCatMast`** (same form as `Category Master`).
   `var_90.CAPTION = arg_10` is passed — form *may* switch mode by caption. `[INFERRED]`
2. **`Facility Master` → two `.Show` calls** (`memFacilityMast` L480501 then
   `FrmFacilityMast` L480504) — one of them is likely a leftover. `[VERIFIED-VB6]`
3. **`Revenue Change Entry` is a dead menu row** — registered (L476913) and in the builder
   menu (L486) but has **no caption-dispatch arm** anywhere in `EXTRAS.text`.
   `[VERIFIED-VB6]`
4. Two parallel dispatch paths for the same 6 screens (caption chain vs
   `Proc_1_122_10724C8` index switch) — divergence risk. `[VERIFIED-VB6]`

## 3. Site-specific data state

- `MemberFamily` = **37 rows** — the only populated member table. `[VERIFIED-SQL]`
- Every transaction/billing table = **0 rows**. `[VERIFIED-SQL]`
- `[INFERRED]` Site used HMS members for *registration* only; billing/visits/reports never
  ran. This is consistent with the empty runtime menu (§1).
- Zero FKs DB-wide → `MemBill*` orphan risk unguarded. `[VERIFIED-SQL]`

## 4. Report host split

7 reports → `rMemberRepView`, 1 (`Member Ledger`) → `FaReports` (Finance host).
`[VERIFIED-VB6]` L480595-L480638. No `Mem*.rpt` file found on disk. `[VERIFIED-UI]`

Only `Member Mailing Labels` + `Member Birthday/Anniversary Details` could return data
(both driven by `MemberFamily`). `[VERIFIED-SQL]` `[INFERRED]`

## 5. Naming notes

- Builder module caption `Members Mgmt`; folder `14_Members_Management`; strip-tab string
  `Members Mgmt`; dispatcher prefix `"Memb+"` (L8499); module hex `17` = **23 decimal** =
  `MenuHelp.OPT1`. `[VERIFIED-VB6]` `[VERIFIED-SQL]`
- Stray builder row at `menu_tree_raw.txt` **L18** belongs to this module (457 lines before
  its block). `[VERIFIED-VB6]`
- Form-name casing is inconsistent: `memFacilityMast` vs `MemCatMast` vs
  `MemberShipRevenueMast` (VB6 is case-insensitive; keep source casing when searching).
  `[VERIFIED-VB6]`

## 6. Open questions (spec §27)

1. `[UNKNOWN]` Does `MemCatMast` really dual-serve Category/Member master via caption?
2. `[UNKNOWN]` Which screen writes `MemberFamily` (37 rows) — no insert found?
3. `[UNKNOWN]` Is `OPT1=23`'s orphan row visible anywhere at runtime (tab-less root)?
4. `[UNKNOWN]` Are the 8 member reports reachable via **another user's** `MenuHelp`
   (Deepak 157 rows, htw_system 374) — worth a read-only query per profile.
5. `[UNKNOWN]` Where are the `.rpt` files for `rMemberRepView` report names?
