# 05_Front_Office — Screens Inventory

Evidence: runtime menu `MenuHelp` user=SA, `OPT1=14` (63 rows, `19_VB6_Logic/MenuHelp_SA_tree.txt`
L141–L200 + L361–L363) `[VERIFIED-SQL]`; builder menu `menu_tree_raw.txt` hex `E` (66 rows)
`[VERIFIED-VB6]`; caption→form dispatch L477728–L478348 `[VERIFIED-VB6]`;
captures in `screenshots/05_Front_Office/` `[VERIFIED-UI]`.

Flag legend: `N`=group node, `E`=executable screen, `R`=report leaf.

## Runtime tree (OPT1=14, user SA)

### Front Office (root, L141, N)
#### Operations (o2=11, L142, N)
| o3 | Flag | Caption | Form | PNG |
|---|---|---|---|---|
| 11 | E | WalkIn CheckIn | `fdWalkInEntry` | B034, C3_S1, C4 |
| 12 | E | Room Status | `InHouseGuestFolio` | B036, C2, C3_02 |
| 13 | E | Expense Entry | `FrmExpense` | B038, C2, C3_03 |
| 15 | E | Display Rack | `FdRoomDisplay` (builder L197; rack=`Display Rack`) | B039, C2, C3_04 |
| 18 | E | Bill Reprint | `frmFomB` | B040, C2, C3_05 |
| 19 | E | Reverse Check Out | `FdRevCheckOut` | B041 |
| 20 | E | Merge Room | `FrmMergeCharge` | B042 |
| 21 | E | Bill Re-Settlement | `FdReSetlement` | B043 |
| 22 | E | Reverse Room Merge | `FrmRevMergeCharge` | B044 |
| 23 | E | Plan Meal Tokens | `rFomRepView` (report-like but flag E) | B047 |
| 24 | E | GRC Printing | report leaf (builder L230) | B046 |
| 25 | E | Blank GRC | `FrmGrcBlank` | B048 |

o3=14,16,17 absent → **gaps in numbering** (rows deleted historically, IDs preserved) `[INFERRED]`.

#### Reports (o2=12, L155, N) — 21 leaves, all flag R, all → `rFomRepView`
o3: 11 Instant House Count · 12 Room Inventory · 16 Charge Payment Detail ·
17 Payments By Cashier · 18 Cashier Report · 19 Settlement Report · 20 Cancel Bill Details ·
21 Room Change History · 23 FOM Sales Register · 24 Room Wise Plan Detail ·
26 Occupancy Report · 27 Bill Change Report · 28 Check Out Register · 29 Check In Register ·
30 Expected Check Out · 32 Guest Extra Charges · 33 Checked In Guest Detail ·
34 Room Rent Audit Report · 35 Sales Report · 36 Guest Payments.
(o3=15,22,25,31 missing = deleted rows.)

#### Tourism Forms (o2=13, L176, N) — 10 leaves, flag E
Form C (11) · Tourism Form 1 (12) · Tourism Form 2 (13) · Tourism Form 5 (14) ·
Tourism Form 6 (16) · Tourism Form 4 (17) · Luxury Tax Report (18) · Monthly Return (19) ·
L.T. FORM II (20) · L.T. FORM IV (21).

#### M.I.S. (o2=14, L187, N) — 13 leaves, flag R
11 Occupancy Display · 12 Guest wise Analysis · 13 Company wise Analysis ·
14 Guestwise Charges Detail · 15 Room Occupancy · 16 Room Type Occupancy ·
17 Room Wise Room Revenue · 18 Occupancy Analysis · 19 Company wise Nights ·
20 Revenue During the stay · **21 Room Type Occupancy Analysis (L361)** ·
**22 Plan Report (L362)** · **23 Business Source Occupancy Report (L363)**.
Rows 21–23 sit **after** the Tax Reports block in the file (non-contiguous) — appended later `[INFERRED]`.

#### Tax Reports (o2=15, L198, N) — 2 leaves, flag E
11 FOM Tax Detail · 12 Tax Wise Charge Detail.
**Not present in builder hex `E`** → runtime-only group `[VERIFIED-VB6]`.

## Builder-only rows (menu_tree_raw hex E, absent from SA runtime)

Front Desk Operations (L195): `Forex Receive Entry` (L199), `House Keeping Screen` (L201),
`Travel Agency Posting` (L202). → Form mapping: `FrmForExRec`, `HHouseKeeping` (shared 06),
travel agency posting `[INFERRED]` (no standalone arm found).

Builder Reports group (L208) has 31 leaves vs runtime 21 — extras include
`Arrival & Departure List`, `Arrival And Departure Register`, `GRC Printing`, `Plan Meal Tokens`,
`Tax Wise Charge Detail`, `Extra Charges During Stay`, `Expected Plan/Package F&B Details`,
`Company wise Nights` (moved to runtime M.I.S.), etc.

Builder stray rows (order artifacts): L8 `Room Type Occupancy Analysis`, L15 `Plan Report`,
L16 `Business Source Occupancy Report` — these are the same captions as runtime M.I.S. 21–23,
declared at file top under hex `E` `[VERIFIED-VB6]`.

## Dispatch chain A — `If var_188` (L477776–L478348)

Full caption→form table: `module_manual.md` §3. Dead arms: `Advance Deposit` (L477776),
`Check In Group With Reservation` (L478248), `Change Guest Information` (L478284).

## Dispatch chain B — `Loop Until var_188` (L480210–L480459)

`Charges Posting`→`fdPostChrg` (L480211) · `Room Status`→`InHouseGuestFolio` (L480384) ·
`Bill Reprint`→`frmFomB` (L480391) · `Reverse check-out`→`FdRevCheckOut` (L480396) ·
`Settelment Report`→`rFomRepView`+`GRepFormName="SettleRep"` (L480401) ·
`Night Audit Process`→Enviro gate + `fdAcPostChrg` (L480406–480423, see 10_Night_Audit) ·
`Reverse Night Audit`→`frmReNightAudit` (L480425).

## Screenshot coverage (37 PNGs)

Covered: strip tab, Operations dropdown, WalkIn CheckIn, Room Status, Expense Entry,
Display Rack, Bill Reprint, Reverse Check Out, Merge Room, Bill Re-Settlement,
Reverse Room Merge, GRC Printing, Meal Tokens, Blank GRC, Reports row, misc. bar states.
**Not captured**: Tourism Forms leaves (10), M.I.S. leaves (13), Tax Reports (2),
report viewer output for any leaf → see `screenshots/README.md`.
