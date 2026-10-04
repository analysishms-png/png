# 05_Front_Office — Reports

Evidence: runtime `MenuHelp` OPT1=14 report leaves (flag `R`, plus E-flag report-like rows)
`[VERIFIED-SQL]`; builder `menu_tree_raw` hex E `[VERIFIED-VB6]`; dispatch to
`rFomRepView` (Crystal viewer) `[VERIFIED-VB6]`; `.rpt` names from
`17_Reports/REPORTS_DEEP_CATALOG.md` + `Reports/` folder scan.

## Viewer pattern

All FO reports open the shared host `rFomRepView` (or `rRepHousePreview`, `rFomRepView`
variants) with `GRepFormName = "<rpt base name>"` — e.g. Settlement Report → `"SettleRep"`
(L480402). One form, N reports `[VERIFIED-VB6]`.

## Runtime report leaves (34)

### Reports group (o2=12, flag R, 21)
| o3 | Caption | Viewer / note |
|---|---|---|
| 11 | Instant House Count | `rFomRepView` |
| 12 | Room Inventory | `rFomRepView` |
| 16 | Charge Payment Detail | `rFomRepView` |
| 17 | Payments By Cashier | `rFomRepView` |
| 18 | Cashier Report | `rFomRepView` (L478348) |
| 19 | Settlement Report | `rFomRepView` + `GRepFormName="SettleRep"` (L480401) |
| 20 | Cancel Bill Details | `rFomRepView` (L478362, dup arm L478427) |
| 21 | Room Change History | `rFomRepView` (L478434) |
| 23 | FOM Sales Register | `rFomRepView` (L478369, dup L478448) |
| 24 | Room Wise Plan Detail | `rFomRepView` (L478376) |
| 26 | Occupancy Report | `rFomRepView` (L478390) |
| 27 | Bill Change Report | `rFomRepView` |
| 28 | Check Out Register | `rFomRepView` |
| 29 | Check In Register | `rFomRepView` |
| 30 | Expected Check Out | `rFomRepView` |
| 32 | Guest Extra Charges | builder: `Extra Charges During Stay` |
| 33 | Checked In Guest Detail | `rFomRepView` |
| 34 | Room Rent Audit Report | `rFomRepView` |
| 35 | Sales Report | `rFomRepView` |
| 36 | Guest Payments | runtime-only caption |

### M.I.S. group (o2=14, flag R, 13)
Occupancy Display (L478455) · Guest wise Analysis (L478462) · Company wise Analysis (L478469) ·
Guestwise Charges Detail (L478476) · Room Occupancy (L478483) · Room Type Occupancy (L478490) ·
Room Wise Room Revenue (L478497) · Occupancy Analysis (L478504) · Company wise Nights ·
Revenue During the stay (L478404) · Room Type Occupancy Analysis · Plan Report ·
Business Source Occupancy Report. — all `rFomRepView`.

### Tourism Forms (o2=13, flag E — form-output leaves, 10)
Form C · Tourism Form 1/2/4/5/6 · Luxury Tax Report · Monthly Return · L.T. FORM II · L.T. FORM IV.
Regulatory/statutory outputs; `.rpt` names in `17_Reports/` catalog (state tourism returns).

### Tax Reports (o2=15, flag E, 2)
FOM Tax Detail · Tax Wise Charge Detail (L478518 region: `rRepHousePreview` used for
`Room Status Report`/`Complaint Detail` nearby — FOM Tax reports route via `rFomRepView`).

## Builder-only report rows (not in SA runtime)

`Arrival & Departure List` (type=2 subtree), `Arrival And Departure Register` (L478441),
`GRC Printing` (L230), `Plan Meal Tokens` (L233), `Expected Plan/Package F&B Details` (L478383),
`Occupancy Report` duplicates, `Revenue During the stay` (M.I.S. L253), `Bill Change Report` (L227),
`Payments By Cashier`, `Extra Charges During Stay`, `Tax Wise Charge Detail` (L238),
`Company wise Nights` (L225). Report leaves in builder: 31 under Reports + 9 M.I.S.

## `.rpt` assets (from `Reports/` + catalog)

BillPrint.rpt · BillTokenPrint.rpt · BOOKINGPrint.rpt · Advance Reciept.rpt · SettleRep*.rpt ·
Cashier report, Occupancy, Room Rent Audit etc. — full 371–524 file inventory (count basis
differs; see `17_Reports/REPORTS_DEEP_CATALOG.md`) + 233 text extracts in `REPORTS_TXT/`.

## Coverage

Captured report output PNG: **0** for FO (only menu states B054 `_FO_Reports_Row2`).
Report rendering is `[VERIFIED-VB6]` (viewer wiring) but `[UNKNOWN]` visually —
QA note in `notes/notes.md`.
