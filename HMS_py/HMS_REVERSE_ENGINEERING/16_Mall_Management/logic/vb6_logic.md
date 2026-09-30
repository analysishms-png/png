# 16_Mall_Management — VB6 Logic

Evidence: `EXTRAS.text`, `menu_tree_raw.txt`, `MenuHelp_SA_tree.txt`,
`tables_rowcounts.txt`. Tags `[VERIFIED-VB6]` `[VERIFIED-SQL]` `[INFERRED]`.

## 1. Footprint

| Metric | Value | Evidence |
|---|---|---|
| builder menu rows (hex 19) | **11** (1 header + 2 groups + 7 ops + 1 report) | `[VERIFIED-VB6]` L504-L514 |
| caption-dispatch arms | **8** L480784-L480820 | `[VERIFIED-VB6]` |
| runtime rows for SA (`OPT1=25`) | **0** | `[VERIFIED-SQL]` |
| tables with rows | **none** (all Mall tables = 0) | `[VERIFIED-SQL]` |
| on-disk reports | `Facility Bill Register` → `rFomRepView` (shared host) | `[VERIFIED-VB6]` |

## 2. Caption → form map

```
L480784 "Location-Master"        -> New FrmLocationMast          L480785
L480789 "Facility Master"        -> New FrmFacilityMast          L480790
L480794 "Location Facilities"    -> New FrmLocationFacilities    L480795
L480799 "Party Locations"        -> New FrmPartyLocations        L480800
L480804 "Meter Reading"          -> New FrmMeterReading          L480805
L480809 "Facility Billing"       -> New frmFacilityBillAdv       L480810
L480814 "Facility Sundry Setting"-> New FacilitySundry           L480815
L480819 "Facility Bill Register" -> New rFomRepView              L480820   (report)
```

`[VERIFIED-VB6]` Unlike Members/SMS, every arm uses a direct `New <Form>` — no `MemVar_*`
indirection. Cleanest dispatcher block in the codebase.

### Defect: row-1 caption mismatch

Builder menu row says `Operations` (L506); dispatch matches `"Location-Master"`.
Registration at L476955 also says `Location-Master`. So the **menu row** is the odd one
out. `[VERIFIED-VB6]`

`[INFERRED]` if the runtime menu supplies `Location-Master` (from `menuHelp`, which has no
Mall rows for SA anyway) the arm matches; if it supplies `Operations`, row 1 is dead.

## 3. SQL owned by this module

### Masters — `FacilityMast`

| Line | Statement | Kind | Evidence |
|---|---|---|---|
| **L932289** | `SELECT Code,Name FROM FacilityMast WHERE (LOGSITE_CODE='…' or LOGSITE_CODE='HO')` | read (HO fallback) | `[VERIFIED-VB6]` |
| **L932614** | `Select F.Code As SearchCode, F.Name, F.ChargeType, F.UnitRate FROM FacilityMast F WHERE (F.LOGSITE_CODE='…` | search grid | `[VERIFIED-VB6]` |
| **L932867** | `Select iif(IsNull(Max(val(MID(Code,3)))),1,Max(val(MID(Code,3)))+1) AS MyCode From FacilityMast Where SITE_CODE='…` | next code **variant A** | `[VERIFIED-VB6]` |
| **L932876** | `Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From FacilityMast Where SITE_CODE='…` | next code **variant B** | `[VERIFIED-VB6]` |
| **L932924** | `Insert Into FacilityMast(Code,Name,ShortName,SACCode,ChargeType,ChargeUnit,UnitRate,AcCode,TaxStru,RoundOff,ROffType,MeterRea…` | insert | `[VERIFIED-VB6]` |
| **L932516** | `Delete From FacilityMast Where Code='…'` | **delete** | `[VERIFIED-VB6]` |

**Two different next-code formulas** (`MID(Code,3)` numeric-parse vs
`CAST(SUBSTRING(Code,3,4) AS INT)`) for one table — `[INFERRED]` two screens or two code
paths; only safe if code format is fixed-width. Divergence risk if codes vary in length.

**Delete path exists** (L932516) → QA must never click Delete on Facility Master
(covered in `screens/screens.md` §5).

### Billing — `FacilityBill*`

| Line | Statement | Purpose | Evidence |
|---|---|---|---|
| **L10924** | `Update FacilityBill1 Set FacilityBill1.LocationCode=Q.LocationCode From (Select FacilityBill.DocId, …)` | post-insert location fix-up | `[VERIFIED-VB6]` |
| **L670698** | `select Fb.Docid, Fb.Partycode, L.name as Party, Fb.Vdate, Fb1.vtype + '/' + cast(Fb1.Vno as varchar) as BillNo, Fb1.ForPeriod, …` | bill enquiry/register | `[VERIFIED-VB6]` |
| **L670777** | `select sum(Amount) as Tax from suntranfacility S left join Revmast R on S.Suncode=R.Sundry where S.docid='…` | tax total | `[VERIFIED-VB6]` |
| **L670782** | `select Sum(Amount) as Disc from suntranfacility s where … Suncode='…` | discount total | `[VERIFIED-VB6]` |
| **L670786** | `select Sum(Amount) as ROff from suntranfacility s where …` | round-off total | `[VERIFIED-VB6]` |
| **L670790** | `select Sum(Amount) as NetAmt from suntranfacility s where …` | net amount | `[VERIFIED-VB6]` |
| **L723667-L723910** | report SQL: `FacilityBill1 S1`, `SunTranFacility`, `RevMast`, tax `Case When SL.Nature In ('Luxury Tax','Sale Tax','Service Tax')` | report engine | `[VERIFIED-VB6]` |

### Location facilities search

| Line | Statement | Evidence |
|---|---|---|
| **L860829**, **L900649** | `Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103)) AS SearchCode, SITE_CODE, LOGSITE_CODE…` | `[VERIFIED-VB6]` — composite `SearchCode` = `LcCode` padded to 6 + `**` + `AppDate` |

`LcCode` = location-code + approval date composite key. `[INFERRED]` from column names.

## 4. Billing document shape (Mall)

```
FacilityBill   (header: DocId, Partycode, Vdate, ...)
FacilityBill1  (line : Vtype, Vno, ForPeriod, LocationCode, ...)
FacilityBill2  (tax/detail — referenced in report joins)
SunTranFacility(DocId, Suncode->RevMast.Sundry, Amount, SValue, TaxPer, BaseValue)
```

Same 3-level pattern as `MemBill`/`MemBill1`/`MemBill2` and POS `Sale1`/`Sale2`.
`[VERIFIED-VB6]` `[INFERRED]`

Revenue/tax lookups join **`RevMast`** (`FieldType='T'` tax rows) and **`Revmast`** via
`Sundry` code — `[VERIFIED-VB6]` L670777, L723883.

## 5. Table census — module fully dormant

| Table | Rows | Evidence |
|---|---|---|
| `FacilityMast` | **0** | `[VERIFIED-SQL]` |
| `FacilityBill` | **0** | `[VERIFIED-SQL]` |
| `FacilityBill1` | **0** | `[VERIFIED-SQL]` |
| `FacilityBill2` | **0** | `[VERIFIED-SQL]` |
| `LocationFacility` | **0** | `[VERIFIED-SQL]` |
| `SunTranFacility` | **0** | `[VERIFIED-SQL]` |
| `RWParameter` | 0 | `[VERIFIED-SQL]` |

Combined with `OPT1=25 → 0 menu rows`: **the module was never used at this site.**
`[VERIFIED-SQL]` `[INFERRED]`

No FKs DB-wide → `FacilityBill1.LocationCode` fix-up (L10924) is the only integrity
mechanism, and it runs in application code. `[VERIFIED-SQL]` `[INFERRED]`

## 6. Writes are Night-Audit-adjacent

`FacilityBill*` posting + `Update FacilityBill1` + `Delete From FacilityMast` →
spec §7 blocklist applies: **no Save/Delete/Post/Settle/Print/Yes** during QA on
`frmFacilityBillAdv`, `FrmFacilityMast`. `[INFERRED]` from statement kinds.

## 7. Open questions

1. `[UNKNOWN]` Which caption the runtime menu would supply for row 1 (`Operations` vs
   `Location-Master`) — unreachable for SA, so untested.
2. `[UNKNOWN]` Are `FacilityBill2` columns known? Not selected in found code (only joined
   in reports). `[UNKNOWN]`
3. `[UNKNOWN]` Which user profile (if any) has `OPT1=25` menu rows — profile sweep
   `SELECT … GROUP BY UserName` needed.
4. `[UNKNOWN]` `RWParameter` (0 rows) — whose table is it? Not referenced by found Mall SQL.
