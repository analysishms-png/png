# HMS SQL QUICK REFERENCE CARD

> **For developers working on HMS reverse engineering**
> Source: Live SQL Trace 2026-09-28 | App: 'Logic Pro (Win HMS)' | DB: MOONData2627

---

## TABLE → MODULE MAPPING

| Table | Module | Primary Operation |
|-------|--------|-------------------|
| JobSchedule | Background Jobs | SELECT (poll) |
| JobScheduledDetail | Background Jobs | SELECT (poll) |
| DBSendSMS | SMS | SELECT (outbox poll) |
| MenuHelp | Navigation | SELECT (menu tree) |
| Enviro | Settings | SELECT (full load) |
| UserMast | Security | SELECT (login) |
| User1 | Security | SELECT (permissions) |
| User_Module | Security | SELECT (form rights) |
| Company | Company | SELECT (company list) |
| GuestFolio | Front Office | SELECT (folio header) |
| RoomOcc | Rooms | SELECT (occupancy) |
| GuestProf | Guest | SELECT/UPDATE (profiles) |
| GuestFolioProfDetail | Guest | SELECT/DELETE (staging) |
| City | Master Data | SELECT (city list) |
| Booking | Reservation | SELECT (bookings) |
| Paycharge | POS | SELECT/UPDATE (charges) |
| ratelist | Revenue | SELECT (room rates) |
| RoomMast | Rooms | SELECT (room master) |
| RoomBlockOut | Rooms | SELECT (blocks) |
| RoomCat | Revenue | SELECT (categories) |
| GuestMessage | Guest | SELECT (messages) |
| RevMast | Revenue | SELECT/UPDATE (revenue heads) |
| SubGroup | Finance | SELECT (party master) |
| Depart | POS | SELECT/UPDATE (outlets) |
| HallBook | Banquet | SELECT (function bookings) |
| Voucher_Type | Finance | SELECT (voucher config) |
| Voucher_Prefix | Finance | SELECT (numbering) |
| ItemMast | Inventory | UPDATE (item master) |
| Stock | Inventory | UPDATE (stock) |
| Sale1 | POS | UPDATE (sales) |
| GuestReward | Guest | UPDATE (rewards) |
| SmartCardRegistration | Guest | UPDATE (card balance) |
| MarketSeg | Master Data | UPDATE (segments) |
| BussSource | Master Data | UPDATE (sources) |
| RoomDiscount | Revenue | UPDATE (discounts) |
| Item | Inventory | UPDATE (items) |
| ItemRate | Inventory | UPDATE (rates) |
| SunTranFacility | Banquet | UPDATE (transport) |
| FacilityBill1 | Banquet | UPDATE (facility bills) |
| PlanMast | Revenue | UPDATE (plans) |
| GrpBookingDetails | Reservation | UPDATE (group booking) |
| eInvoiceEnviro | GST | SELECT (GST config) |
| MemEnviro | Member | SELECT (member env) |
| Holiday | Master Data | SELECT (holidays) |
| ExpSheet | Finance | SELECT (expense) |
| CreditCardHistory | Finance | SELECT (card history) |
| Purch1 | Inventory | SELECT (purchase) |
| SubGroupCurrBal | Finance | SELECT (balances) |
| VenueMast | Banquet | SELECT (venues) |
| VenueOcc | Banquet | SELECT (venue occupancy) |
| HallSale1 | Banquet | SELECT (hall sales) |
| PayChargeH | Reservation | SELECT (advance) |
| DepartPay | POS | SELECT (payment config) |
| TaxStru | Revenue | SELECT (tax structure) |
| Messaging | Messaging | SELECT (inbox) |

---

## COMMON QUERIES PER MODULE

### LOGIN
```sql
select COUNT(*) from userMast
SELECT * FROM USERMAST WHERE USER_NAME='SA'
Select isnull(AllowDtChng,'') from UserMast where User_Name='SA'
SELECT User1.* FROM User1 LEFT JOIN User_Module ON User_Module.SrNo=User1.SrNo WHERE User1.User_Name='SA'
Select * from company order by STart_dt Desc
select * from company where comp_code='2'
select backcolor from usermast where (user_name='SA')
```

### MENU
```sql
Select [Option] Name,OPT1 from MenuHelp Where Flag<>'V' And OPT1<>0 And OPT2=0 And OPT3=0 And OPT4=0 And UserName='SA' And CompCode='2' Order By Code
SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='SA' AND CompCode='2' AND [Option]<>'-' AND ShowInList='Y' ORDER BY OPT1,OPT2,OPT3,OPT4
SELECT Param_Str AS UPrivilege,Module_Name,OutletCode FROM menuHelp WHERE UserName='SA' AND CompCode='2' AND Code=XXX
```

### ENVIRO
```sql
Select * From Enviro WHERE LOGSITE_CODE='KK'
SELECT * FROM ENVIRO WHERE SITECODE='KK'
```

### ROOM STATUS
```sql
SELECT roommast.*, RoomCat.Name AS RoomCategory, RoomCat.ShortName FROM roommast INNER JOIN RoomCat ON (roommast.Type = RoomCat.Type) AND (roommast.RoomCat = RoomCat.Code) WHERE (ROOMMAST.LOGSITE_CODE='KK') AND (((roommast.Type)='RO' AND RoomMast.InclCount='Y')) ORDER BY roommast.Code
SELECT RoomOcc.DocId as Code,RoomOcc.RoomNo,RoomOcc.FolioNo From RoomOcc WHERE (LOGSITE_CODE='KK' OR LOGSITE_CODE='HO') AND roomocc.type not in ('C','O') AND CHKOUTDATE IS NULL
```

### ROOM RATES
```sql
select R.Code as RoomNo,RC.Code as RoomCat,RC.Name as Category,RL.Rate2 as Rate from (RoomMast R left Join RoomCat RC on RC.Code=R.RoomCat) Left Join RateList RL on RC.Code=RL.RoomCat Where R.logsite_Code='KK' and R.Type='RO' And R.InclCount='Y' And RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****' Order By R.Code
Select Rate2 from ratelist where (LOGSITE_CODE='KK') and COde='*' and RoomNo='101' and RoomCat='KK003'
```

### RESERVATION / BANQUET
```sql
SELECT S.*, MarketSeg.Name AS SegmentName, BussSource.Name AS BussSourceName, FunctionType.Name AS EventName, SubGroup.Name as CompanyName, BA.Name as BookingAgentName FROM (((HallBook AS S LEFT JOIN MarketSeg ON S.MarketSeg = MarketSeg.Code) LEFT JOIN BussSource ON S.BussSource = BussSource.Code) LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) LEFT JOIN SubGroup ON S.CompanyCode = SubG...
Select S.DocId as SearchCode,S.DocID,* From HAllBook S WHERE LogSite_Code in ('KK') And restCode='KKBANQ' AND VType='IBOOK' Order by S.Docid
SELECT Sum(AmtCr-AmtDr) AS Advance FROM PayChargeH WHERE VType In ('AD','AR') AND ContraDocId='DKKIBOOK 2026      82'
```

### GUEST / SMART CARD
```sql
Select SubCode as Code,Name,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='KK' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='KK') Order By Name
SELECT P.*,P.Code as SearchCode,S.SubCode as LedgerCode,S.Name as LedgerName,PayType AS CCARD FROM REVMAST P Left join Subgroup S on S.SubCode=P.ACCode WHERE PayType<>'' AND PayType IS NOT NULL AND (P.LOGSITE_CODE='KK' or P.LOGSITE_CODE='HO') order by P.Name
```

### SUBGROUP / PARTY
```sql
SELECT S.SubCode as Code,S.Name FROM SubGroup S WHERE S.ActiveYN=1 And (S.LOGSITE_CODE='KK' or S.LOGSITE_CODE='HO') ORDER BY S.Name
SELECT SUBCODE as Code, NAME FROM SUBGROUP WHERE NATURE IN ('Cash','Bank') ORDER BY NAME
Select SubCode As Code,Name From SubGroup Where LogSite_Code in ('KK') And Nature='Customer' order by Name
```

### JOB SCHEDULER
```sql
Select JS.*,JD.Job_Id,JD.JobName From JobSchedule JS Inner Join JobScheduledDetail JD On JS.Schedule_Id=JD.Schedule_Id Where JS.LogSite_Code='KK' And '28/Sep/2026' Between JS.ScheduleStartDate And JS.ScheduleEndDate And JS.ScheduleEnabled=1
Select * from JOBScheduledDetail Where JobEnabled=1 And JobScheduledOn Is Not Null
```

### SMS
```sql
Select * from DBSENDSMS Where ISNULL(SENDTF,'')<>'TRUE'
```

### MESSAGING
```sql
SELECT * FROM Messaging Where Receiver='SA' and(Cleared is Null Or Cleared='' Or Cleared='N')And ReadYN='N' Order By VDATE DESC,VType DESC,VNo DESC,Sender
```

### REVENUE / TAX
```sql
SELECT R.*,R.Code as SearchCode,R.ACCode as LedgerCode,S.Name as LedgerName,R.PayableAc as PayableAcCode,SP.Name as PayableAcName,R.UnregisteredAc as UnregisteredAcCode,SU.Name as UnregisteredAcName,SundryMast.Code as SundryCode,SundryMast.Name as SundryName FROM RevMast R Left join Subgroup S on S.SubCode=R.ACCode Left Join SubGroup SP On SP.SubCode=R.PayableAc Left Join SubGroup SU On SU.SubCode
Select Roomcat.Code as SearchCode,Roomcat.Name,Revmast.TaxStru as RoomTaxStru From RoomCat Left Join Revmast On RoomCat.Revcode=Revmast.Code WHERE (RoomCat.LOGSITE_CODE='KK' OR RoomCat.LOGSITE_CODE='HO') Order by RoomCat.Name
```

---

## STORED PROCEDURE CALL CHAIN

```
Proc_WebService (12 actions)
├── action=1: Login → UserMast
├── action=2: Restaurants → menuHelp ⋈ Depart
├── action=3: Waiters → Waiter
├── action=4: Tables → RoomMast
├── action=5: Categories → ItemMast ⋈ ItemGrp ⋈ ItemCatMast
├── action=6: Subcategories → ItemMast ⋈ ItemGrp ⋈ ItemCatMast
├── action=7: Items → ItemMast ⋈ ItemGrp ⋈ ItemCatMast
├── action=8: Check → (validation)
├── action=9: KOT Voucher → Company, Enviro, Voucher_Type, Voucher_Prefix
├── action=10: Insert KOT → KOT + UPDATE Voucher_Prefix
└── action=11: Occupied Tables → RoomMast ⋈ KOT ⋈ Waiter

GetFieldNameAs(tableName, fieldName)
└── Returns matching field names from syscolumns

GetFieldNameAsStr(tableName, fieldName)
└── Returns comma-separated field names via cursor + TransferTable
```

---

## VIEWS QUICK REFERENCE

| View | Purpose | Key Join |
|------|---------|----------|
| BillDet | Bill details | PayCharge ⋈ RoomOcc ⋈ GuestFolio |
| BillSummary | Bill summary | BillDet ⋈ RoomOcc |
| Party_List | Party list | SubGroup ⋈ City |
| RoomOccDet | Room occupancy | RoomOcc (self-join) ⋈ GuestFolio |
| SunTransaction | Travel agency | SunTran ⋈ SunTranH |
| View_Booking | Bookings | Booking ⋈ GrpBookingDetails |
| ViewBooking | Bookings (filtered) | Booking ⋈ GrpBookingDetails |
| ViewLedger | Ledger | Ledger ⋈ LedgerM |
| ViewLedgerLog | Ledger log | LedgerLog ⋈ LedgerMLog UNION Ledger ⋈ LedgerM |
| ViewSubgroup | Party+Group | SubGroup ⋈ ACGROUP ⋈ City |

---

## KEY FINDINGS AT A GLANCE

| Finding | Value |
|---------|-------|
| Total statements captured | 17,525 |
| Unique SQL patterns | ~180 |
| Write statements | 40 (all startup/form cleanup) |
| Most polled table | JobSchedule (5,214 calls) |
| SMS outbox poll | DBSendSMS (1,048 calls) |
| Triggers in DB | 0 |
| Stored procedures | 3 |
| Views | 10 |
| Tables | 277 |
| Foreign keys | 0 (app-managed) |
| Site code | 'KK' (LIVE confirmed) |
| Company code | '2' |
| Active user | 'SA' |

---

## EVIDENCE LEVELS

| Level | Meaning |
|-------|---------|
| [VERIFIED-SQL] | Directly captured in live SQL trace |
| [INFERRED] | Business meaning inferred from SQL context |
| [UNKNOWN] | Cannot determine exact logic |

---

*Generated: 2026-09-29 | Source: HMS_SQL_Tracking.trc*
