# RESERVATION MODULE

## 1. Purpose

Reservation module HMS ka booking engine hai. Room reservation, cancellation, confirmation letters, registration card, aur availability forecast yahin manage hota hai. Front Office ke saath tightly integrated hai — booking se check-in tak ka complete flow is module se start hota hai.

**Evidence:** [VERIFIED-VB6] — 25 menu items, 4 sub-groups: Reservation Operations, Reservation Status Report, Advance Recd. Report, M.I.S.

## 2. Menu Structure (from MENU_INVENTORY.md)

```
Reservation (D)
├── Reservation Operations
│   ├── Reservation/Cancellation
│   ├── Look Up Room types
│   ├── Look Up Rooms
│   ├── Reservation with History
│   ├── Advance Deposit
│   ├── Confirmation Letters
│   ├── Cancellation Letters
│   ├── Registration Card
│   └── Reservation Status Screen
├── Reservation Status Report
│   ├── Reservation Status
│   ├── Reservation Status Arrival
│   ├── Reservation Status Arrival (duplicate)
│   └── Arrival List
├── Advance Recd. Report
│   ├── Advance Recd.
│   ├── Advance Recd. Arrival
│   └── Advance Recd. Arrival (duplicate)
└── M.I.S.
    ├── M.I.S.
    ├── 23 Day Room Availability Forecast
    ├── 23 Day Room Type Availability Forecast
    └── Package Forecast
```

## 3. Screens (from vb6_form_inventory.md)

### Reservation Forms (Rr*, res*)
- **RrRoomReservation** — Main reservation entry form
- **resRoomNo** — Room number selection
- **resRoomType** — Room type selection
- **resGroup** — Group reservation
- **resBanq** — Banquet reservation
- **rRepReserv** — Reservation report viewer
- **FrmRoomCatMast** — Room category master
- **FrmRoomMast** — Room master
- **FrmRoomFeatureMast** — Room features master
- **FrmLocationMast** — Location master
- **FrmLocationFacilities** — Location facilities
- **FrmVenueMast** — Venue master
- **FrmVenueFeat** — Venue features
- **frmRevGroup** — Revenue group

### Supporting Forms
- **FrmReservationStatus** — Reservation status screen
- **FrmBookingInquiry** — Booking inquiry
- **FrmMarketSeg** — Market segment
- **FrmBusinessSrc** — Business source
- **frmSeasonMast** — Season master
- **frmBlockMast** — Block master

## 4. Masters

| Master | Table | Evidence |
|--------|-------|----------|
| Room Category | RoomCat | [VERIFIED-VB6] |
| Room Master | RoomMast | [VERIFIED-VB6] |
| Room Features | RoomFeatureMast | [VERIFIED-VB6] |
| Location | LocationMast | [VERIFIED-VB6] |
| Location Facilities | LocationFacilities | [VERIFIED-VB6] |
| Venue Master | VenueMast | [VERIFIED-VB6] |
| Venue Features | VenueFeat | [VERIFIED-VB6] |
| Revenue Group | frmRevGroup | [VERIFIED-VB6] |
| Market Segment | MarketSeg | [VERIFIED-VB6] |
| Business Source | BussSource | [VERIFIED-VB6] |
| Season | SeasonMast | [VERIFIED-VB6] |
| Block | frmBlockMast | [VERIFIED-VB6] |

## 5. Transactions

| Transaction | Form | Table | Evidence |
|-------------|------|-------|----------|
| Reservation | RrRoomReservation | Booking | [VERIFIED-VB6] |
| Cancellation | RrRoomReservation | BookingCancelDetails | [VERIFIED-VB6] |
| Group Booking | resGroup | GrpBookingDetails | [VERIFIED-VB6] |
| Advance Deposit | RrRoomReservation | PayCharge | [VERIFIED-VB6] |
| Booking Inquiry | FrmBookingInquiry | Booking | [VERIFIED-VB6] |

## 6. Operations

- **Reservation/Cancellation** — Create/modify/cancel room reservations
- **Look Up Room Types** — Room type availability check
- **Look Up Rooms** — Room availability check
- **Reservation with History** — Reservation with guest history
- **Advance Deposit** — Advance payment against booking
- **Confirmation Letters** — Print confirmation letters
- **Cancellation Letters** — Print cancellation letters
- **Registration Card** — Print registration cards
- **Reservation Status Screen** — Real-time reservation status

## 7. Reports

| Report | Form | Evidence |
|--------|------|----------|
| Reservation Status | rRepReserv | [VERIFIED-VB6] |
| Reservation Status Arrival | rRepReserv | [VERIFIED-VB6] |
| Arrival List | rRepReserv | [VERIFIED-VB6] |
| Advance Recd. | rRepReserv | [VERIFIED-VB6] |
| Advance Recd. Arrival | rRepReserv | [VERIFIED-VB6] |
| 23 Day Room Availability Forecast | rRepReserv | [VERIFIED-VB6] |
| 23 Day Room Type Availability Forecast | rRepReserv | [VERIFIED-VB6] |
| Package Forecast | rRepReserv | [VERIFIED-VB6] |

## 8. Permissions

- Reservation module access UserPermission form se control hota hai [VERIFIED-VB6]
- Per-user menu hierarchy MenuHelp table me OPT1..OPT4 columns [VERIFIED-SQL]
- Reservation status ResMode/ResStatus fields se drive hota hai [VERIFIED-VB6]

## 9. Business Rules

1. **Booking table** — 56 columns me complete reservation data [VERIFIED-VB6]
2. **DocId pattern** — varchar(21) = site-prefix + Vtype + serial [VERIFIED-VB6]
3. **Audit columns** — Har transaction me U_Name, U_EntDt, U_AE ('A'/'E'/'D') [VERIFIED-VB6]
4. **Multi-site** — LogSite_Code filters every query [VERIFIED-VB6]
5. **Booking → Check-in** — BookingDocId field GuestFolio me link hota hai (arrival converts booking) [VERIFIED-VB6]
6. **Cancellation** — BookingCancelDetails table me cancellation record with CancelAmt, CancellationMode [VERIFIED-VB6]
7. **Group booking** — GrpBookingDetails table for multiple rooms under one booking [VERIFIED-VB6]
8. **Advance** — PayCharge table me advance payment stored with PayCode/PayType [VERIFIED-VB6]
9. **Room status** — RoomMast.roomStat: 'D' = Dirty, type 'C'/'O' = checked-out/clean [VERIFIED-VB6]
10. **OpenMode** — RrRoomReservation.OpenMode: 1 = Add, 2 = Edit [VERIFIED-VB6]

## 10. VB6 Logic (from EXTRAS.text)

### Reservation Save (RrRoomReservation)
```vb
' Insert Into Booking (Docid,Vtype,BookNo,Site_Code,Vprefix,Vdate,GroupCode,ArrDate,Arrtime,
'   DepDate,DepTime,NoDays,RoomCat,RoomType,Roomno,[Adult],[Child],NoOfRooms,RateCode,RoomRate,
'   remarks,[Authorization],Company,GuestProf,TravelAgency,BussSource,MarketSeg,ArrFrom,
'   Destination,BookedBy,ResMode,ResStatus,TravelMode,SplitFolio,DepositeReq,Guarantee,Cancel,
'   GuestName,U_Name,U_EntDt,U_AE,OccRoom,PackageCode,LogSite_Code,MobNo,Faxno,Email,OtherCont,
'   RRTaxInc,RRServiceChrg,RDisc,RSDisc,AdvDueDate,RefCode,BookStatus,RefBookNo) Values (...)
```

### Additional Guests
```vb
' Insert Into BookingMore (Docid,Sno,Name,...)
```

### Cancellation
```vb
' Insert Into BookingCancelDetails (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,
'   BookingDocID,Advance,CancelAmt,CancellationMode,U_Name,U_EntDt,U_AE,LogSite_Code)
```

### Group Booking
```vb
' GrpBookingDetails table for group booking rows
```

### Room Selection
```vb
' resRoomNo form for room number selection
' resRoomType form for room type selection
' RrRoomReservation.RoomTypeCode = arg_10
' RrRoomReservation.RoomTypeName = arg_14
' RrRoomReservation.oRoomNo = arg_1C
```

## 11. SQL Logic (from SQL_TRACKING_RESULTS.md)

### Booking Table
```sql
-- Booking: DocId, BookNo, ArrDate, DepDate, RoomCat, RoomType, RoomNo, Adult, Child, 
--          NoOfRooms, RateCode, RoomRate, ResStatus, Guarantee, Cancel, BookStatus
-- BookingMore: Docid, Sno, Name (additional guests)
-- BookingCancelDetails: DocId, BookingDocID, Advance, CancelAmt, CancellationMode
-- GrpBookingDetails: group booking rows
```

### Room Availability
```sql
-- RoomMast: Code, Type='RO', roomStat, LogSite_Code
-- RoomOcc: DocId, RoomNo, RoomCat, chkoutdate, Depdate, type ('C','O')
-- RoomBlockOut: room blocking
```

## 12. Tables (from DATABASE_INVENTORY.md)

| Table | Usage Count | Purpose |
|-------|-------------|---------|
| Booking | 91 | Reservation booking |
| RoomMast | 310 | Room master |
| RoomCat | 223 | Room category |
| RoomOcc | 457 | Room occupancy |
| RoomBlockOut | 53 | Room blocking |
| GrpBookingDetails | 43 | Group bookings |
| VenueMast | 55 | Venue master |
| MarketSeg | 58 | Market segment |
| BussSource | 70 | Business source |
| LocationMast | 37 | Location master (BUG-001: missing in DB) |

## 13. Fields

### Booking (Reservation Header)
- DocId, Vtype, BookNo, Site_Code, Vprefix, Vdate, GroupCode
- ArrDate, Arrtime, DepDate, DepTime, NoDays
- RoomCat, RoomType, RoomNo, Adult, Child, NoOfRooms
- RateCode, RoomRate, remarks, Authorization
- Company, GuestProf, TravelAgency, BussSource, MarketSeg
- ArrFrom, Destination, BookedBy, ResMode, ResStatus
- TravelMode, SplitFolio, DepositeReq, Guarantee, Cancel
- GuestName, U_Name, U_EntDt, U_AE, OccRoom, PackageCode
- LogSite_Code, MobNo, Faxno, Email, OtherCont
- RRTaxInc, RRServiceChrg, RDisc, RSDisc
- AdvDueDate, RefCode, BookStatus, RefBookNo [VERIFIED-VB6]

### BookingMore (Additional Guests)
- DocId, SNo, Name [VERIFIED-VB6]

### BookingCancelDetails
- DocId, SNo, Vtype, VNo, Site_Code, VPrefix, Vdate
- BookingDocID, Advance, CancelAmt, CancellationMode
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### RoomMast
- Code, Type='RO', roomStat ('D' dirty), LogSite_Code [VERIFIED-VB6]

### RoomOcc
- DocId, SNo, FolioNo, VType, Site_Code, vPrefix, GuestProf
- RoomCat, RoomType, RoomNo, RateCode, RoomRate
- ChkInDate, ChkInTime, Adult, Children, DepDate, DepTime
- Type ('C'/'O'), U_Name, U_EntDt, U_AE, Plancode, PlanAmt
- IncInRate, LOGSITE_CODE, PlanDisc, PlanDiscAmt, PlanDiscAppOn
- RRTaxInc, RRServiceChrg, ChngDate, RoomTarrif, RackRate, RoomTaxStru [VERIFIED-VB6]

## 14. Workflow

```
Reservation Entry (RrRoomReservation)
  ├── Select Room Type (resRoomType)
  ├── Select Room No (resRoomNo)
  ├── Enter Guest Details (GuestProf, Company, TravelAgency)
  ├── Enter Dates (ArrDate, DepDate, NoDays)
  ├── Enter Rate (RateCode, RoomRate)
  ├── Additional Guests (BookingMore)
  └── Save → Booking table
       ↓
Confirmation
  ├── Confirmation Letter print
  ├── Registration Card print
  └── Advance Deposit (PayCharge)
       ↓
Arrival (Front Office)
  ├── BookingDocId → GuestFolio link
  ├── Check-In (RoomOcc + GuestFolio)
  └── Room status update
       ↓
Cancellation (if needed)
  ├── BookingCancelDetails insert
  ├── CancelAmt calculation
  └── Cancellation Letter print
```

## 15. Screenshots

Screenshots folder me available hain:
- Reservation module ke screenshots `04_Reservation/screenshots/` me hain

## 16. Test Cases

| Test Case | Description | Evidence |
|-----------|-------------|----------|
| TC-RES-001 | Create reservation | [VERIFIED-VB6] |
| TC-RES-002 | Cancel reservation | [VERIFIED-VB6] |
| TC-RES-003 | Group booking | [VERIFIED-VB6] |
| TC-RES-004 | Advance deposit | [VERIFIED-VB6] |
| TC-RES-005 | Confirmation letter print | [VERIFIED-VB6] |
| TC-RES-006 | Registration card print | [VERIFIED-VB6] |
| TC-RES-007 | Room availability forecast | [VERIFIED-VB6] |
| TC-RES-008 | Reservation status screen | [VERIFIED-VB6] |
| TC-RES-009 | Booking inquiry | [VERIFIED-VB6] |
| TC-RES-010 | Package forecast | [VERIFIED-VB6] |

## 17. Known Issues

1. **BUG-001:** LocationMast table missing in database — FrmLocationMast form exists but table nahi mila [VERIFIED-SQL]
2. **Duplicate menu items:** "Reservation Status Arrival" aur "Advance Recd. Arrival" do baar appear hote hain [VERIFIED-VB6]
3. **No stored procedures** — Application inline ADODB SQL use karta hai [VERIFIED-VB6]

## 18. Migration Notes

1. **Booking system** — 56-column Booking table ko normalized schema me split karna chahihe (header, guests, cancellation, etc.)
2. **Room availability** — Real-time availability engine me upgrade karna hoga
3. **Confirmation letters** — Template-based letter generation me convert karna hoga
4. **Registration card** — Digital registration card / e-KYC integration karna hoga
5. **Advance deposit** — Payment gateway integration karna hoga
6. **Group booking** — Group booking management ko modern MICE system se replace karna hoga
