# 04_Reservation — SQL / Schema Notes

Database: **MOONData2627** (INI key 6) `[VERIFIED-CONFIG]`
Extracts read (never executed against the live DB):
`18_Database\tables_rowcounts.txt`, `columns_dictionary.txt`, `indexes_pks.txt`,
`foreign_keys.txt`, `views_procs.txt`, `view_proc_definitions.txt`.

**`foreign_keys.txt` is 0 bytes → MOONData2627 declares ZERO foreign keys.** `[VERIFIED-SQL]`
Every parent/child relationship below is enforced only by VB6 code paths.

---

## 1. Core tables owned / heavily used by Reservation

| Table | Rows | Columns | PK (`indexes_pks.txt`) | Role |
|---|---|---|---|---|
| `Booking` | 25 | 62 | `PK_Booking = DocId,LogSite_Code` | reservation header |
| `GrpBookingDetails` | 56 | 27 | (see note §1.1) | per-room-line detail |
| `BookingPlanDetails` | 0 | 39 | `PK_BookingPlanDetails = BookingDocId,Sno,Sno1,Chrgcode` | plan / package / charge split per room-line |
| `BookingMore` | 0 | 8 | `PK_BookingMore = DocId,Sno` | extra names / remarks rows |
| `BookingCancelDetails` | 149 | 15 | (see note §1.2) | cancellation audit + refund voucher |
| `BookingLog` | 403 | 8 | — | change log; **not written by `RrRoomReservation`** |
| `BookingDetail` | 0 | — | `Code,VenueCode` | banquet-side, not reservation `[INFERRED]` |
| `BookingInquiry` | 0 | — | `Code` | enquiry queue, unused in this object range |
| `ViewBooking` | view | — | — | header+detail read model (see §3) |

`[VERIFIED-SQL]` all row counts and PKs.

### 1.1 `GrpBookingDetails`
`columns_dictionary.txt` shows `BookingDocid varchar(21)` + `Sno float` as the natural key, but
`indexes_pks.txt` has **no `GrpBookingDetails` entry** → the table has no declared PK.
`[VERIFIED-SQL]` This is why the app must issue its own `DELETE FROM GrpBookingDetails WHERE BookingDocid=…`
(cited in `logic/vb6_logic.md` §4.4).

### 1.2 `BookingCancelDetails`
Also absent from `indexes_pks.txt` → no declared PK. `[VERIFIED-SQL]`
Application key is `BookingDocId` (all DELETEs use that column).

---

## 2. Column inventory (reservation-owned tables)

### `Booking` — 62 columns `[VERIFIED-SQL]`
Identity / voucher: `DocId nvarchar(21)`, `Vtype nvarchar(5)`, `BookNo int`, `Site_Code nvarchar(2)`,
`Vprefix nvarchar(5)`, `VDate smalldatetime`, `LogSite_Code nvarchar(2)`.
Stay: `ArrDate`, `ArrTime`, `DepDate`, `DepTime`, `NoDays smallint`, `OccRoom nvarchar(5)`.
Room: `RoomCat nvarchar(5)`, `RoomType nvarchar(2)`, `RoomNo nvarchar(5)`, `RateCode nvarchar(1)`,
`RoomRate float`, `NoofRooms int`, `PackageCode nvarchar(5)`.
Guest/sales: `GroupCode`, `Company`, `GuestProf`, `TravelAgency`, `BussSource`, `MarketSeg`,
`ArrFrom`, `Destination`, `BookedBy`, `ResMode`, `TravelMode`, `GuestName nvarchar(50)`,
`MobNo`, `Email`, `FaxNo`, `OtherCont`.
Commercial: `Adult`, `Child`, `DepositeReq float`, `Guarantee`, `CardNo`, `ExpDate`,
`RRTaxInc varchar(3)`, `RRServiceChrg varchar(3)`, `RDisc float`, `RSDisc float`,
`AdvDueDate datetime`, `SplitFolio`, `Authorization`, `Remarks nvarchar(30)`.
Status: `Cancel nvarchar(1)`, `CancelDate smalldatetime`, `CancelUName varchar(10)`,
`ResStatus varchar(30)`, `BookStatus varchar(20)`, `Verified varchar(1)`,
`RefCode varchar(20)`, `RefBookNo varchar(20)`, `MyRectNo float`.
Audit: `U_Name nvarchar(10)`, `U_EntDt smalldatetime`, `U_AE nvarchar(1)`.

Notes:
- `Verified varchar(1)` has DEFAULT `''` — the code queries it as both `= 'N'` and `ISNULL(...,'')=''`
  (EXTRAS.text L90592 vs L91603). `[VERIFIED-VB6]`
- `Cancel varchar(1)` DEFAULT `''`; values observed in code: `'Y'`, `'N'`. `[VERIFIED-VB6]`
- `U_EntDt` DEFAULT `((0))` → 1900-01-01 if the app omits it. `[VERIFIED-SQL]`

### `GrpBookingDetails` — 27 columns `[VERIFIED-SQL]`
`BookingDocid`, `Sno`, `RoomDet`, `Adults`, `Childs`, `Tarrif`, `IncTax varchar(3)`,
`ServiceChrg varchar(3)`, `RoomCat`, `Plan_Package varchar(15)`, `RoomNo`, `RateCode`,
`ArrDate`, `ArrTime`, `DepDate`, `DepTime`, `NoDays`, `RoomTaxStru varchar(6)`,
`Cancel`, `CancelDate`, `CancelUName`, `Remarks varchar(255)`,
`Site_Code`, `LogSite_Code`, `U_Name`, `U_EntDt`, `U_AE`.

### `BookingPlanDetails` — 39 columns `[VERIFIED-SQL]`
`BookingDocId`, `Sno`, `Sno1`, `Revcode varchar(6)`, `Chrgcode varchar(5)`, `TaxInc`, `TaxStru`,
`PrintOption`, `PostingMethod`, `ChargeType`, `FlatRate`, `Adult`, `Child`, `ExtraAdult`,
`ExtraChild`, `NoOfDays`, `PlanPer`, `App_Date`, `Amount`, `PlanCode varchar(5)`,
`PlanPkgMode varchar(25)`, `RPackageAmt`, `NetPackageAmount`, `PlanDiscPer`, `PlanDiscAmt`,
`PlanDiscAppOn varchar(75)`, `IncInRoomRate`, `RoomRate`, `NetRoomRate`,
`Comment1/Comment2 varchar(75)`, `DiscAmt`, `NetAmt`, `FixRate varchar(3)`,
`Site_Code`, `U_Name`, `U_EntDt`, `U_AE`, `LogSite_Code`.

### `BookingMore` — 8 columns `[VERIFIED-SQL]`
`DocId`, `Sno smallint`, `Name varchar(50)`, `Site_Code`, `U_Name`, `U_EntDt`, `U_AE`, `LogSite_Code`.

### `BookingCancelDetails` — 15 columns `[VERIFIED-SQL]`
`DocId`, `VNo int`, `SNo int`, `VType`, `VPrefix`, `VDate`, `Site_Code`, `BookingDocId`,
`Advance float`, `CancelAmt float`, `CancellationMode varchar(50)`, `LogSite_Code`,
`U_Name`, `U_EntDT`, `U_AE`.

### `BookingLog` — 8 columns `[VERIFIED-SQL]`
`Id int`, `BookingDocid`, `Flag varchar(1)`, `Site_Code`, `U_Name`, `U_EntDt`, `U_AE`, `LogSite_Code`.
Row count 403 with only 25 `Booking` rows → the log retains history from deleted bookings.
`[INFERRED]`

---

## 3. `ViewBooking` — the read model `[VERIFIED-SQL]`

`18_Database\view_proc_definitions.txt` line 28:

```sql
CREATE VIEW [dbo].[ViewBooking] AS
SELECT TOP 100 PERCENT
  B.DocId, B.Vtype, B.BookNo, B.Site_Code, B.Vprefix, B.VDate, B.GroupCode, B.RoomType,
  IsNull(G.Remarks,'') AS Remarks, B.Company, B.GuestProf, B.TravelAgency, B.BussSource,
  B.MarketSeg, B.ArrFrom, B.Destination, B.BookedBy, B.ResMode,
  IsNull(B.ResStatus,'') As ResStatus, B.SplitFolio, B.DepositeReq, B.Guarantee,
  IsNull(B.CardNo,'') AS CardNo, B.ExpDate, B.GuestName, B.U_Name, B.U_EntDt, B.U_AE,
  B.OccRoom, B.LogSite_Code, B.MobNo, B.Email, B.FaxNo, B.OtherCont, B.RDisc, B.RSDisc,
  CASE WHEN G.ArrDate IS NULL THEN B.ArrDate ELSE G.ArrDate END AS ArrDate,
  ... (same coalesce pattern for ArrTime, DepDate, DepTime, NoDays, RoomNo, RateCode,
       CancelDate, Cancel, RRTAXINC, ADULT, CHILD, ROOMRATE, ROOMCAT, NoOfRooms) ...,
  G.Plan_Package AS PackageCode, G.Sno
FROM dbo.Booking B
LEFT OUTER JOIN dbo.GrpBookingDetails G ON B.DocId = G.BookingDocid
WHERE (B.Cancel <> 'Y') AND (ISNull(G.Cancel,'') <> 'Y')
ORDER BY B.VDate, B.BookNo;
```

Business meaning `[INFERRED]`:
* group-line (`G.`) values **override** header (`B.`) values whenever present → the reservation grid shows
  the *most specific* stay data;
* `Cancel <> 'Y'` at **both** levels → a partially-cancelled booking disappears entirely from the view;
* `Sno` is selected but not aggregated → one row per room-line.

Migration note: `ORDER BY` inside a view with `TOP 100 PERCENT` is not guaranteed by SQL Server; any port
must move ordering to the query. `[VERIFIED-SQL]`

---

## 4. `RoomOcc` / `GuestFolio` — read-only from Reservation

| Table | Rows | Columns | PK |
|---|---|---|---|
| `RoomOcc` | 11464 | 42 | (see `indexes_pks.txt`) |
| `GuestFolio` | 11043 | 43 | (see `indexes_pks.txt`) |
| `PayCharge` | 28550 | 61 | (see `indexes_pks.txt`) |

Reservation **reads** them (occupancy list L89426, cancel-block L90303/L90314) and **writes only `PayCharge`**
for advances (L89963 / L90019). `[VERIFIED-VB6]`

---

## 5. `RoomBlockOut` — cross-module dependency

| Table | Rows | Columns |
|---|---|---|
| `RoomBlockOut` | **1** | 12 |

Written exclusively by `06_House_Keeping`
(`HHouseKeeping` EXTRAS.text L80755 / L80890, `HKRoomBlock` L831984); read by Reservation at L97971.
`[VERIFIED-VB6]` Only 1 row exists in the live DB → the block feature is effectively unused in production
data. `[VERIFIED-SQL]`

---

## 6. Multi-site rule

Every query filters `LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO'`.
`MemVar_1F81078` = current log-site, `MemVar_1F81070` = current site code.
`HO` is the head-office pseudo-site that every location can also read. `[VERIFIED-VB6]`

---

## 7. `Booking` data observed in the extract

`tables_rowcounts.txt`: `Booking|25`, `GrpBookingDetails|56`, `BookingMore|0`,
`BookingPlanDetails|0`, `BookingCancelDetails|149`, `BookingLog|403`.

Anomalies `[INFERRED]`:
* 149 cancellation rows against 25 live bookings → historic bookings were hard-deleted while their
  `BookingCancelDetails` rows were retained (the cascade in §4.4 of `logic/vb6_logic.md` does delete them,
  so those 149 rows come from an older code path or manual cleanup).
* `BookingPlanDetails` and `BookingMore` are empty → the plan-split and extra-name features have never been
  used in this database, although the save routine always writes `BookingMore` (up to 6 rows).

---

## 8. Statements NOT parameterised

All statements in `queries.sql` are built by VB6 string concatenation with values interpolated
(`"...'" & var & "'"`). `[VERIFIED-VB6]` There is no evidence of any `?`-parameter / prepared statement in the
`RrRoomReservation` object range. Migration note: re-implement with bound parameters.

---

## 9. Untouched / unknown in this pass

* Which code writes `BookingLog` — `[UNKNOWN]` (0 references inside EXTRAS.text L88969–L107257).
* Full SQL inside `FrmReservationStatus` (L586572–L587255) — `[UNKNOWN]`, object not grepped this pass.
* `.ttx` field lists for `Reservation.ttx`, `ReservStatus.ttx`, `BookingDetail.ttx`, `CancellLetter.ttx`,
  `ConfirmLetter.ttx`, `RegistrCard.ttx`, `Advance Reciept Reservation.ttx` — `[UNKNOWN]`
  (files exist under `<HMS2526>\Reports\`, 566 files total).
