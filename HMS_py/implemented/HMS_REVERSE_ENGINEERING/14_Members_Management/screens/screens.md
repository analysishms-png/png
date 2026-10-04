# 14_Members_Management — Screens

Module hex `17` · builder caption `Members Mgmt` · `menu_tree_raw.txt` L475-L497 (+ stray L18).
**Builder rows: 24.** Runtime reachability differs sharply — see §4. `[VERIFIED-VB6]` `[VERIFIED-SQL]`

## 1. Operations screens (builder tree)

| # | Menu caption | type | menu line | Opening code (caption-dispatch arm) | Screen form | Evidence |
|---|---|---|---|---|---|---|
| 1 | Member Visit Entry | 0 | L477 | `L480533` caption → `L480534` | `MemVisitEntry` | `[VERIFIED-VB6]` |
| 2 | Member Renewal Entry | **2** | L478 | `L480538` → `L480539` | `MemRenewalEntry` | `[VERIFIED-VB6]` |
| 3 | Member Used Facility Entry | 0 | L479 | `L480543` → `L480544` | `MemFacilityEntry` | `[VERIFIED-VB6]` |
| 4 | Member Facility Billing | 0 | L480 | `L480548` → `L480549` | `MemFacilityBilling` | `[VERIFIED-VB6]` |
| 5 | Member Bill Printing | 0 | L481 | `L480553` → `L480554` | `MemBillPrintingModule` | `[VERIFIED-VB6]` |
| 6 | Member Assistant | 0 | L482 | `L480558` → `L480559` | `MemAssistant` | `[VERIFIED-VB6]` |
| 7 | Outstation Member Entry | 0 | L483 | `L480563` → `L480564` | `memOutStationEntry` | `[VERIFIED-VB6]` |
| 8 | Member Category Change Entry | 0 | L484 | `L480568` → `L480569` | `memCatChngEntry` | `[VERIFIED-VB6]` |
| 9 | Payment Receive Entry | 0 | L485 | `L480573` → `L480574` | `MemPaymentReceive` | `[VERIFIED-VB6]` |
| 10 | **Revenue Change Entry** | 0 | L486 | **no dispatch arm anywhere** | — | `[VERIFIED-VB6]` **dead row** |
| 11 | Payment Due Letter Entry | 0 | L487 | `L480583` → `L480584` | `MemTagadaLetter` | `[VERIFIED-VB6]` |
| 12 | Member Category Change (Conditional) | 0 | L488 | `L480588` → `L480589` | `memCatChngCond` | `[VERIFIED-VB6]` |
| — | **Auto Settle Card Balance** | 0 | **L18 (stray)** | `L480578` → `L480579` | `MemAutoSettleCardBalance` | `[VERIFIED-VB6]` |

`type=2` on #2 = builder "screen variant" (same family, alternate entry).

## 2. Masters (registered under Members, NOT in the hex-17 menu rows)

Caption-dispatch arms `L480484`-`L480529` `[VERIFIED-VB6]`:

| Menu caption | Form | Dispatch line | Note |
|---|---|---|---|
| Category Master | `MemCatMast` | L480485 | |
| **Member Master** | **`MemCatMast`** | L480490 | **same form as Category Master** |
| Revenue Master | `MemberShipRevenueMast` | L480495 | |
| Facility Master | `memFacilityMast` **and** `FrmFacilityMast` | L480501 + L480504 | **two forms, one caption** |
| Category wise Revenue | `memCatRevMast` | L480509 | |
| Category wise Facility | `memCategoryFacilities` | L480514 | |
| Member Age Wise Revenue | `memAgeRevMast` | L480519 | |
| Member Select Category | `MemSelectCategory` | L480524 | |
| Environment Settings | `MemberEnviro` | L480529 | |

None of these 9 captions appear in `menu_tree_raw.txt` hex-17 rows (L477-L488) — they are
reachable only through **Main Setup → Members Mgmt** (runtime) — see §4.

## 3. Second dispatcher — `Proc_1_122_10724C8`

`EXTRAS.text` **L8494-L8556** — a dedicated, index-based Members switch (prefix `"Memb+"`,
L8499):

| `arg_C` | Form | line |
|---|---|---|
| 0 | `MemVisitEntry` | L8503 |
| 1 | `MemRenewalEntry` | L8511 |
| 2 | `MemFacilityEntry` | L8519 |
| 3 | `MemFacilityBilling` | L8527 |
| 4 | `MemBillPrintingModule` | L8535 |
| 5 | `MemAssistant` | L8543 |

`[VERIFIED-VB6]` The **same 6 forms** are reachable both by caption (§1) and by index (this
proc) — two parallel dispatch paths for one module (maintenance hazard).

## 4. Runtime reachability for user SA — the important part

Three different menu surfaces exist; only the second one decides what a user sees:

| Surface | Source | What it defines |
|---|---|---|
| Strip tab | `Analysis.ini` key `9=` (`…#EPABX#&Messaging#Members Mgmt#Sale && Marketing#Mall Management#`) | 15 module tabs incl. **Members Mgmt** `[VERIFIED-UI]` |
| **Runtime menu** | `MenuHelp` table, user `SA` — `MenuHelp_SA_tree.txt` (440 rows) | menu contents `[VERIFIED-SQL]` |
| Design-time menu | `menu_tree_raw.txt` (builder `Proc_165_0_14C1708` calls) | what the VB6 designer registered `[VERIFIED-VB6]` |

Runtime facts for **SA** `[VERIFIED-SQL]`:

- `OPT1 = 23` (the Members module id): **exactly 1 row** —
  `Auto Settle Card Balance|23|0|11|0|E`, and **no root row** (`…|23|0|0|0|N` absent).
- The other 12 operations + all 8 reports of the builder tree: **0 rows** in `MenuHelp`.
- Members **masters** are visible, but filed under **Main Setup**:
  - `Members Mgmt|12|14|0|0|N` (group) with children
    `Category Master|12|14|11`, `Member Master|12|14|12`, `Environment Settings|12|14|19`,
    `Member Select Category|12|14|20`.

**Consequence `[INFERRED]`:** for user SA the *Members Mgmt* strip tab opens with an
effectively empty menu (one orphan row), while its masters live under Main Setup. The
12 transaction screens and 8 reports are **not reachable through the menu** on this site —
they would require another user profile, a shortcut, or direct form launch.

| Builder row | Reachable for SA? | Evidence |
|---|---|---|
| 9 masters | **yes** (via Main Setup `12\|14`) | `[VERIFIED-SQL]` |
| 12 operations | **no** (except `Auto Settle Card Balance`, orphan row) | `[VERIFIED-SQL]` |
| 8 reports | **no** | `[VERIFIED-SQL]` |

This mismatch is the module's single biggest issue — recorded in `notes/notes.md` §1.

## 5. Runtime capture status

| File | Shows | Evidence |
|---|---|---|
| `13-Members_MenuTab.png` (510797 B) | Members Mgmt strip tab | `[VERIFIED-UI]` |

No member screen captured yet (0 of 21 screens). See `screenshots/README.md`.

## 6. Verification checklist for QA (spec §21)

- [ ] Click **Members Mgmt** tab as SA → observe actual menu (expected: empty / 1 orphan row)
- [ ] Open Members masters via Main Setup → Members Mgmt (Category Master, Member Master)
- [ ] Confirm `Member Master` opens `MemCatMast` — is caption passed as mode switch?
- [ ] Confirm **Revenue Change Entry** does nothing if ever shown (no dispatch arm)
- [ ] Confirm no Save/Delete invoked on `MemBill*` screens (Night-Audit-adjacent billing)
