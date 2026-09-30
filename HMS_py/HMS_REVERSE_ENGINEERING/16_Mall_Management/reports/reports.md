# 16_Mall_Management — Reports

## 1. Menu report rows — 1

`menu_tree_raw.txt` hex `19`, group `Reports` at L513, single row L514:
`Facility Bill Register` (`type=1`). `[VERIFIED-VB6]`

| Report | menu line | Dispatch caption line | Host form | line | Evidence |
|---|---|---|---|---|---|
| Facility Bill Register | L514 | L480819 | `rFomRepView` | L480820 | `[VERIFIED-VB6]` |

**`rFomRepView` is the shared Front-O/Mall report viewer** (not a Mall-specific host) —
the same form serves FO tax reports (`GRepFormName = "FOMTaxWiseChargeDetail"` at L480737)
and Mall register. `[VERIFIED-VB6]`

## 2. On-disk Crystal reports

Scanned `HMS2526\Reports\` (371 `.rpt`) and `REPORTS_TXT/` (233 extracts) for
`Facility`/`Meter`/`Location`/`Mall`: **0 matches** under Mall-owned names.
`[VERIFIED-UI]`

`[INFERRED]` the register resolves a `GRepFormName` at runtime; either the `.rpt` ships
under a generic name or it is absent from this installation.

## 3. Report SQL that backs this area

Even without the `.rpt`, the report engine's SQL is in `EXTRAS.text`:

| Line | Content | Evidence |
|---|---|---|
| L670698 | register/enquiry select: `Fb.Docid, Fb.Partycode, L.name as Party, Fb.Vdate, Fb1.vtype+'/'+cast(Fb1.Vno as varchar) as BillNo, Fb1.ForPeriod` | `[VERIFIED-VB6]` |
| L723667-L723910 | tax-report union over `SunTranFacility` + `FacilityBill1`, filter `SL.Nature In ('Luxury Tax','Sale Tax','Service Tax')` | `[VERIFIED-VB6]` |
| L670777-L670790 | bill-preview aggregates (Tax/Disc/ROff/NetAmt) | `[VERIFIED-VB6]` |

Full statements in `sql/queries.sql` §8-§11.

## 4. Runtime reachability

`MenuHelp` for SA: `OPT1 = 25` → **0 rows** → the report has **no runtime menu entry**.
`[VERIFIED-SQL]`

| Surface | Report rows | Evidence |
|---|---|---|
| Builder | 1 (`Facility Bill Register`) | `[VERIFIED-VB6]` |
| Runtime (SA) | 0 | `[VERIFIED-SQL]` |
| Disk (`.rpt` under Mall name) | 0 | `[VERIFIED-UI]` |

## 5. Would it produce output on this site?

**No.** `FacilityBill`/`FacilityBill1`/`FacilityBill2`/`SunTranFacility` = **0 rows**
(`[VERIFIED-SQL]`) → the register would render empty even if reachable.

## 6. Gap summary (spec §16/§27)

- `[INFERRED]` Missing/renamed `.rpt` for `Facility Bill Register`.
- `[VERIFIED-SQL]` Report unreachable in SA's menu.
- `[VERIFIED-SQL]` Zero backing data.
- `[UNKNOWN]` Report rows for other user profiles (`MenuHelp` sweep) — likely also 0.
