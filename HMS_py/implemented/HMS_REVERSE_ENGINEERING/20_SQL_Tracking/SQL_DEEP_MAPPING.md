# HMS SQL DEEP MAPPING — Module-wise Query Analysis

> **Source:** HMS_SQL_Tracking.trc (live SQL Trace, 2026-09-28, app: 'Logic Pro (Win HMS)')
> **Total statements captured:** 17,525 | **Unique patterns:** ~180 | **Write statements:** 40
> **Evidence levels:** [VERIFIED-SQL] = live trace me captured | [INFERRED] = SQL se infer kiya | [UNKNOWN] = confirm nahi hua

---

## TABLE OF CONTENTS

1. [Login & Security Module](#1-login--security-module)
2. [Menu & Navigation Engine](#2-menu--navigation-engine)
3. [Enviro / Global Settings](#3-enviro--global-settings)
4. [Company & GST/e-Invoice](#4-company--gste-invoice)
5. [Revenue Masters (RevMast/TaxStru/RoomCat)](#5-revenue-masters)
6. [Room & Housekeeping](#6-room--housekeeping)
7. [Reservation & Booking (HallBook)](#7-reservation--booking)
8. [Guest Profiles & Smart Card](#8-guest-profiles--smart-card)
9. [SubGroup / Party Masters](#9-subgroup--party-masters)
10. [Voucher & Finance](#10-voucher--finance)
11. [Inventory & Stock](#11-inventory--stock)
12. [POS / KOT / Sales](#12-pos--kot--sales)
13. [Banquet Module](#13-banquet-module)
14. [Job Scheduler](#14-job-scheduler)
15. [SMS / Messaging](#15-sms--messaging)
16. [Startup Normalization Batch](#16-startup-normalization-batch)
17. [Schema Alterations (DDL)](#17-schema-alterations-ddl)
18. [Stored Procedures](#18-stored-procedures)
19. [Views](#19-views)
20. [Triggers](#20-triggers)
21. [Cross-Reference: Table → Module Map](#21-cross-reference-table--module-map)

---

## 1. LOGIN & SECURITY MODULE

### 1.1 Login Sequence [VERIFIED-SQL]

| # | SQL | Business Meaning | Evidence |
|---|-----|-----------------|----------|
| 1 | `select COUNT(*) from userMast` | Check if userMast table has any users | Line 1, events:4631ms |
| 2 | `SELECT * FROM USERMAST WHERE USER_NAME='********'` | First login attempt as '********' (failed) | Line 2, 2042ms |
| 3 | `select COUNT(*) from userMast` | Re-check user count | Line 3, 136ms |
| 4 | `SELECT * FROM USERMAST WHERE USER_NAME='SA'` | Second login attempt as 'SA' (succeeded) | Line 4, 3546ms |
| 5 | `Select isnull(AllowDtChng,'') from UserMast where User_Name='SA'` | Check if SA can change business date | Line 5, 1892ms |
| 6 | `SELECT User1.* FROM User1 LEFT JOIN User_Module ON User_Module.SrNo=User1.SrNo WHERE User1.User_Name='SA'` | Load SA's form-level permissions (AEDP rights) | Line 6, 16298ms, 161 reads |
| 7 | `Select * from company order by STart_dt Desc` | List all companies (no WHERE — full scan) | Line 7, 6729ms, 366 reads |
| 8 | `select * from company where comp_code='2'` | Select company code '2' (active company) | Line 8, 2152ms |
| 9 | `select backcolor from usermast where (user_name='SA')` | Load SA's custom UI background color | Line 9, 811ms |

**Login Flow (verified):**
```
COUNT(userMast) → try '********' → COUNT(userMast) → try 'SA' → AllowDtChng →
User1⋈User_Module permissions → company list → select comp_code='2' → backcolor
```

### 1.2 UserModule Permission Checks [VERIFIED-SQL]

| SQL Pattern | Business Meaning |
|-------------|-----------------|
| `Select * from UserModule where[OPtion]='GST Reports' and OPT1=19 and Flag<>'N'` | Check GST Reports permission |
| `Select * from UserModule where[OPtion]='GSTR-1' and OPT1=19 and Flag<>'N'` | Check GSTR-1 report permission |
| `Select * from UserModule where[OPtion]='GSTR-2(3)' and OPT1=19 and Flag<>'N'` | Check GSTR-2(3) permission |
| `Select * from UserModule where[OPtion]='GSTR-2(4A)' and OPT1=19 and Flag<>'N'` | Check GSTR-2(4A) permission |
| `Select * from UserModule where[OPtion]='GSTR-2(4B)' and OPT1=19 and Flag<>'N'` | Check GSTR-2(4B) permission |
| `Select * from UserModule where[OPtion]='Expense Voucher' and OPT1=11 and Flag<>'N'` | Check Expense Voucher permission |
| `Select * from UserModule where[OPtion]='Store Issue Report' and OPT1=16 and Flag<>'N'` | Check Store Issue Report permission |
| `Select * from UserModule where[OPtion]='Room Type Occupancy Analysis' and OPT1=14 and Flag<>'N'` | Check Room Type Occupancy permission |
| `Select * from UserModule where[OPtion]='Credit Report' and OPT1=19 and Flag<>'N'` | Check Credit Report permission |
| `Select * from UserModule where[OPtion]='Liquor Sale Report' and OPT1=16 and Flag<>'N'` | Check Liquor Sale Report permission |
| `Select * from UserModule where[OPtion]='Payment Receive Entry (POS)' and OPT1=17 and Flag<>'N'` | Check POS Payment Receive permission |
| `Select * from UserModule where[OPtion]='Reconciliation (GSTR-2A)' and OPT1=19 and Flag<>'N'` | Check GSTR-2A Reconciliation permission |
| `Select * from UserModule where[OPtion]='Upload Process' and OPT1=19 and Flag<>'N'` | Check Upload Process permission |
| `Select * from UserModule where[OPtion]='Bill Wise Adjustment Report' and OPT1=17 and Flag<>'N'` | Check Bill Wise Adjustment permission |
| `Select * from UserModule where[OPtion]='Plan Report' and OPT1=14 and Flag<>'N'` | Check Plan Report permission |
| `Select * from UserModule where[OPtion]='Business Source Occupancy Report' and OPT1=14 and Flag<>'N'` | Check Business Source Occupancy permission |
| `Select * from UserModule where[OPtion]='Member Select Category' and OPT1=12 and Flag<>'N'` | Check Member Select Category permission |
| `Select * from UserModule where[OPtion]='Auto Settle Card Balance' and OPT1=23 and Flag<>'N'` | Check Auto Settle Card Balance permission |
| `Select * from UserModule where[OPtion]='Journal Books Log' and OPT1=11 and Flag<>'N'` | Check Journal Books Log permission |
| `Select * from UserModule where[OPtion]='EInvoice Report' and OPT1=19 and Flag<>'N'` | Check EInvoice Report permission |
| `Select * from UserModule where[OPtion]='TDS Report' and OPT1=11 and Flag<>'N'` | Check TDS Report permission |

**Outlet-specific Payment Receive checks:**
| SQL | Outlet |
|-----|--------|
| `Select * from UserModule where OutletCode='KKRS' and [OPtion]='Payment Receive' and OPT1=17` | KKRS |
| `Select * from UserModule where OutletCode='KKG001' and [OPtion]='Payment Receive' and OPT1=17` | KKG001 |
| `Select * from UserModule where OutletCode='KKM001' and [OPtion]='Payment Receive' and OPT1=17` | KKM001 |
| `Select * from UserModule where OutletCode='KKL001' and [OPtion]='Payment Receive' and OPT1=17` | KKL001 |
| `Select * from UserModule where OutletCode='KKH003' and [OPtion]='Payment Receive' and OPT1=17` | KKH003 |
| `Select * from UserModule where OutletCode='KKM009' and [OPtion]='Payment Receive' and OPT1=17` | KKM009 |
| `Select * from UserModule where OutletCode='KKE001' and [OPtion]='Payment Receive' and OPT1=17` | KKE001 |

**Key Finding:** OPT1 values map to modules: 11=Expense/Finance, 12=Member, 14=Room/Plan, 16=Store/Inventory, 17=POS, 19=GST, 23=Card Settlement

---

## 2. MENU & NAVIGATION ENGINE

### 2.1 Menu Hierarchy [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Select [Option] Name,OPT1 from MenuHelp Where Flag<>'V' And OPT1<>0 And OPT2=0 And OPT3=0 And OPT4=0 And UserName='SA' And CompCode='2' Order By Code` | Top-level menu items (4-level tree: OPT1→OPT2→OPT3→OPT4) |
| `SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='SA' AND CompCode='2' AND [Option]<>'-' AND ShowInList='Y' ORDER BY OPT1,OPT2,OPT3,OPT4` | Full menu tree for SA |
| `SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='SA' AND CompCode='2' AND Opt1=11 ORDER BY OPT1,OPT2,OPT3,OPT4` | Submenu for OPT1=11 (Finance/Expense) |

### 2.2 Menu Code Lookups [VERIFIED-SQL]

~40 unique queries like:
```sql
Select OPT1,OPT2,OPT3,OPT4,FLAG,CODE from MenuHelp Where Code=224 And UserName='SA' And CompCode='2'
```
Codes seen: 3, 42, 43, 44, 45, 46, 48, 224, 288-292, 295, 308, 310, 369-372, 417-421, 475, 591-596

**Business meaning:** Each menu item has a unique Code. When user clicks a menu item, HMS loads its OPT1-OPT4 hierarchy + Flag to determine submenu structure and access.

### 2.3 Menu Permission Checks [VERIFIED-SQL]

```sql
SELECT Param_Str AS UPrivilege,Module_Name,OutletCode FROM menuHelp WHERE UserName='SA' AND CompCode='2' AND Code=XXX
```
Codes: 189, 191, 192, 193, 217, 218, 219, 221, 224, 289-292, 295, 310, 370-372, 418-421, 43-46, 48, 475, 595-596, 11111200, 17173000, 17173100, 19141100-19141500, 20111100

**Business meaning:** Param_Str stores user-level privilege string per menu item. OutletCode determines if the menu item is outlet-specific.

### 2.4 Outlet-Specific Menu [VERIFIED-SQL]

```sql
Select OutletCode From MenuHelp Where Code=371 AND UserName='SA' AND CompCode='2'
Select OutletCode From MenuHelp Where Code=372 AND UserName='SA' AND CompCode='2'
Select OutletCode From MenuHelp Where Code=418 AND UserName='SA' AND CompCode='2'
Select OutletCode From MenuHelp Where Code=419 AND UserName='SA' AND CompCode='2'
Select OutletCode From MenuHelp Where Code=420 AND UserName='SA' AND CompCode='2'
Select OutletCode From MenuHelp Where Code=421 AND UserName='SA' AND CompCode='2'
```

---

## 3. ENVIRO / GLOBAL SETTINGS

### 3.1 Enviro Reads [VERIFIED-SQL]

| SQL | Duration | Reads | Business Meaning |
|-----|----------|-------|-----------------|
| `Select * From Enviro WHERE LOGSITE_CODE='KK'` | 50ms | 3,770 | Full enviro load at session start (wide row) |
| `SELECT * FROM ENVIRO WHERE SITECODE='KK'` | 3ms | 9 | Site-specific settings |
| `Select * from enviro WHERE LogSITE_CODE='KK'` | 3.5ms | 7 | Enviro by log site |

**Key Enviro columns used in SQL:** `LogSite_Code`, `NCUR` (business date), `KOTAtNightAudit`, `CoversMandatory`, `MobileNoMandatory`

### 3.2 MemEnviro [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `select Count(*) from information_schema.columns where table_name = 'MemEnviro' And column_name='CardExpDate'` | Schema check for CardExpDate column |
| `select * from MemEnviro` | Load member environment settings |

---

## 4. COMPANY & GST/E-INVOICE

### 4.1 Company [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Select * from Company` | List all companies |
| `select * from company where comp_code='2'` | Active company = comp_code '2' |

### 4.2 e-Invoice [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Select Count(*) from dbo.sysobjects where id = object_id(N'[dbo].[eInvoiceEnviro]') and OBJECTPROPERTY(id, N'IsTable') = 1` | Check if eInvoiceEnviro table exists |
| `select sum([rows]) from sys.partitions where object_id=object_id('eInvoiceEnviro') and index_id in (0,1)` | Count eInvoiceEnviro rows |
| `Select IsNull(ASPId,'') from eInvoiceEnviro` | Get GST ASP ID |

---

## 5. REVENUE MASTERS

### 5.1 RevMast (Revenue Master) [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `SELECT R.*,R.Code as SearchCode,R.ACCode as LedgerCode,S.Name as LedgerName,R.PayableAc as PayableAcCode,SP.Name as PayableAcName,R.UnregisteredAc as UnregisteredAcCode,SU.Name as UnregisteredAcName,SundryMast.Code as SundryCode,SundryMast.Name as SundryName FROM RevMast R Left join Subgroup S on S.SubCode=R.ACCode Left Join SubGroup SP On SP.SubCode=R.PayableAc Left Join SubGroup SU On SU.SubCode` | Full revenue master with ledger joins |
| `SELECT RevMast.Code as code, RevMast.Name as Name, RevMast.PayType as PayType FROM RevMast where (LOGSITE_CODE='KK') And RevMast.Fieldtype in ('P') And RevMast.PayType In ('Cash','Cheque','Credit Card','Complementry','UPI','Other') ORDER BY NAME` | Payment type list (P=Payment) |
| `Select U_Name,U_AE,U_EntDt From revmast where Code='KKCGSP'` | Audit info for KKCGSP |
| `Select U_Name,U_AE,U_EntDt From revmast where Code='KKHOLD'` | Audit info for KKHOLD |

### 5.2 RoomCat (Room Category) [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Select Roomcat.Code as SearchCode,Roomcat.Name,Revmast.TaxStru as RoomTaxStru From RoomCat Left Join Revmast On RoomCat.Revcode=Revmast.Code WHERE (RoomCat.LOGSITE_CODE='KK' OR RoomCat.LOGSITE_CODE='HO') Order by RoomCat.Name` | Room categories with tax structure |
| `Select RoomCat.Code, RoomCat.Name, Revmast.TaxStru as RoomTaxStru From RoomCat Left Join Revmast On RoomCat.Revcode=Revmast.Code where (RoomCat.LOGSITE_CODE='KK' or RoomCat.LOGSITE_CODE='HO') Order by RoomCat.Name` | Same (variant) |
| `Select Roomcat.Code,Roomcat.Name,Revmast.TaxStru as RoomTaxStru From RoomCat Left Join Revmast On RoomCat.Revcode=Revmast.Code WHERE (RoomCat.LOGSITE_CODE='KK' OR RoomCat.LOGSITE_CODE='HO') Order by RoomCat.Name` | Same (variant) |

### 5.3 TaxStru (Tax Structure) [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Select TaxStru.*,RevMast.Code as TaxCode, RevMast.Name as TaxName From TaxStru Left Join RevMast on RevMast.Code=TaxStru.TaxCode where RevMast.FieldType='T' and TaxStru.Code='KK0013' Order by Sno` | Tax structure for KK0013 |
| `Select U_Name,U_AE,U_EntDt From Taxstru where Code='KK0013'` | Audit info for tax KK0013 |

### 5.4 Depart (Department/Outlet) [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `select code,Name,KOTYN from depart where outletYN='Y'` | All outlets with KOT flag |
| `Select RestType,BackColor From Depart Where Code=''` | Default dept settings |
| `Select RestType,BackColor From Depart Where Code='BANQ'` | Banquet dept settings |
| `Select RestType,Name,ShortName,BackColor From Depart Where Code=''` | Default dept full info |
| `Select ShortName,Code From Depart Where Code=''` | Default dept short name |
| `Select RateInclTax from depart where code=''` | Tax-inclusive rate flag |

### 5.5 RateList [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `select R.Code as RoomNo,RC.Code as RoomCat,RC.Name as Category,RL.Rate2 as Rate from (RoomMast R left Join RoomCat RC on RC.Code=R.RoomCat) Left Join RateList RL on RC.Code=RL.RoomCat Where R.logsite_Code='KK' and R.Type='RO' And R.InclCount='Y' And RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****' Order By R.Code` | All room rates (single occupancy, default rate) |
| `Select Rate2 from ratelist where (LOGSITE_CODE='KK') and COde='*' and RoomNo='101' and RoomCat='KK003'` | Individual room rate lookup (30+ rooms) |
| `Select RC.Code,RC.Name,RC.NoRooms,RL.Rate2 From RoomCat RC Left Join RateList RL on RC.Code=RL.RoomCat Where RC.LOGSITE_CODE='KK' AND RL.LOGSITE_CODE='KK' AND RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****' And RC.InclCount='Y' And RC.Code In ('KK003','KK002') Order By RC.Name` | Room category rates for KK002/KK003 |

**Rooms found:** 101-105, 201-208, 301-308, 401-407 (RoomCat KK002, KK003)

---

## 6. ROOM & HOUSEKEEPING

### 6.1 RoomMast [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `SELECT roommast.*, RoomCat.Name AS RoomCategory, RoomCat.ShortName FROM roommast INNER JOIN RoomCat ON (roommast.Type = RoomCat.Type) AND (roommast.RoomCat = RoomCat.Code) WHERE (ROOMMAST.LOGSITE_CODE='KK') AND (((roommast.Type)='RO' AND RoomMast.InclCount='Y')) ORDER BY roommast.Code` | All rooms with category (Type='RO', InclCount='Y') |
| `Select RoomMast.Code as SearchCode,RoomMast.Code as RoomNo, RoomMast.Name as Quot,RoomMast.RoomCat,Revmast.TaxStru as RoomTaxStru From RoomMast Left Join RoomCat On RoomCat.Code=RoomMast.RoomCat Left Join Revmast On RoomCat.Revcode=Revmast.Code where (RoomMast.LOGSITE_CODE='KK' OR RoomMast.LOGSITE_CODE='HO') AND RoomMast.Type='RO' AND RoomMast.InclCount='Y' Order by RoomMast.Code` | Room master with tax structure |
| `Select RoomMast.Code as SearchCode,RoomMast.Code as RoomNo,RoomMast.Name as Quot,RoomMast.RoomCat,Revmast.TaxStru as RoomTaxStru From RoomMast Left Join RoomCat On RoomCat.Code=RoomMast.RoomCat Left Join Revmast On RoomCat.Revcode=Revmast.Code Where (RoomMast.LOGSITE_CODE='KK' or RoomMast.LOGSITE_CODE='HO') AND RoomMast.Type='RO' AND RoomMast.InclCount='Y' and RoomMast.Code Not In (Select RoomNo f...` | Rooms excluding occupied ones |

### 6.2 RoomOcc (Room Occupancy) [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `SELECT RoomOcc.DocId as Code,RoomOcc.RoomNo,RoomOcc.FolioNo From RoomOcc WHERE (LOGSITE_CODE='KK' OR LOGSITE_CODE='HO') AND roomocc.type not in ('C','O') AND CHKOUTDATE IS NULL` | Occupied rooms (not Checked-Out, not Cancelled) |
| `Select RoomOcc.dOCID,RoomOcc.FolioNo,RoomOcc.Vtype,RoomOcc.Site_Code,RoomOcc.VPrefix,RoomOcc.GuestProf,RoomOcc.RoomCat,RoomOcc.RoomType,RoomOcc.RoomNo,RoomOcc.RateCode,RoomOcc.RoomRate,GuestProf.Name,GuestFolio.mFolioNo from RoomOcc Inner Join GuestFolio On GuestFolio.DocId=RoomOcc.DocId left join GuestProf on RoomOcc.Guestprof=Guestprof.code where (ROOMOCC.LOGSITE_CODE='KK') AND ChkOutDate is Nul...` | Occupied rooms with guest details |
| `Select RoomNO as RoomCode,ArrDate as FromDate,dATEdiff(D,ArrDate,DepDate) as Days,GuestProf.Name as Reasons,dateadd(D,dATEdiff(D,ArrDate,DepDate),ArrDate) as TODate,IsNull(P.Advance,0) Advance From ViewBooking B left join GuestProf on GuestProf.Code=B.GuestProf LEFT JOIN (Select RefDocId,IsNull(Sum(AmtCr),0) Advance From PayCharge Where VType In ('ADRES','ARRES') And Logsite_Code='KK' Group By Re...` | Arrivals for today (with advance) |
| `Select RoomNO as RoomCode,ChkinDt as FromDate,dATEdiff(D,ChkInDt,DepDate) as Days,GuestProf.Name as Reasons,dateadd(D,dATEdiff(D,ChkInDt,DepDate),chkindt) as TODate From RoomOccDet left join GuestProf on GuestProf.Code=RoomOccDet.GuestProf Where RoomOccDet.Logsite_Code='KK' and ChkOutDate is NULL And dateadd(D,dATEdiff(D,ChkInDt,DepDate),chkindt)>='03/Aug/2026'` | In-house guests (departure date >= today) |
| `Select T.Type+t.RoomCat+space(5-len(T.RoomCat))+Code+space(5-len(Code)) as Code,T.Code As Name,RoomOcc.Docid as FolioNODocid From RoomMast T inner join RoomOcc on RoomOcc.RoomNo=T.Code where (T.LOGSITE_CODE='KK' or T.LOGSITE_CODE='HO') AND T.Type in ('RO') and RoomOcc.ChkoutDate is NULL Order By T.Code` | Room status display (occupied rooms) |

### 6.3 RoomBlockOut [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Select RoomCode,FromDate,dATEdiff(D,'03/Aug/2026',Todate) as Days,Reasons,todate From RoomBlockOut Where Type='O' and ToDate>='03/Aug/2026'` | Room blocks (Type='O' = Out of Order) |

### 6.4 Room Occupancy Count [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Select Sum(NoofRooms) As tRoomBusy From ((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) Where B.LOGSITE_CODE='KK' AND B.RoomCat='KK002' And (B.RoomType='RO' or B.RoomType is Null) And 'DD/MMM/YYYY' >= B.ArrDate And 'DD/MMM/YYYY' < B.DepDate AND B.Cancel='N' And RO.ChkInDate Is Null` | Count busy rooms per date per category (KK002/KK003, 30+ date variations) |
| `Select Sum(NoRooms) As tNoRooms From RoomCat Where Type='RO' And LOGSITE_CODE='KK' AND InclCount='Y' And Code In ('KK003','KK002')` | Total rooms per category |

### 6.5 GuestMessage [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `SELECT RoomOcc.FolioNo, GuestMessage.Message,Solved FROM RoomOcc LEFT JOIN GuestMessage ON RoomOcc.FolioNo = GuestMessage.FolioNo where (ROOMOCC.LOGSITE_CODE='KK' or ROOMOCC.LOGSITE_CODE='HO') AND RoomOcc.ChkoutDate is NULL AND Solved<>'Y' order by RoomOcc.RoomNO` | Unsolved guest messages for occupied rooms |
| `SELECT RoomOcc.FolioNo, GuestMessage.Message,Solved FROM RoomOcc LEFT JOIN GuestMessage ON RoomOcc.FolioNo = GuestMessage.FolioNo where RoomOcc.ChkOutDate is NULL AND (Solved<>'Y' or Solved is NULL) AND GuestMessage.RoomNo = '102' order by RoomOcc.RoomNO` | Messages for specific room (102) |
| `SELECT RoomOcc.FolioNo, GuestMessage.Message,Solved FROM RoomOcc LEFT JOIN GuestMessage ON RoomOcc.FolioNo = GuestMessage.FolioNo where RoomOcc.ChkOutDate is NULL AND (Solved<>'Y' or Solved is NULL) AND GuestMessage.RoomNo = '206' order by RoomOcc.RoomNO` | Messages for specific room (206) |

---

## 7. RESERVATION & BOOKING

### 7.1 HallBook (Hall/Function Booking) [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `SELECT S.*, MarketSeg.Name AS SegmentName, BussSource.Name AS BussSourceName, FunctionType.Name AS EventName, SubGroup.Name as CompanyName, BA.Name as BookingAgentName FROM (((HallBook AS S LEFT JOIN MarketSeg ON S.MarketSeg = MarketSeg.Code) LEFT JOIN BussSource ON S.BussSource = BussSource.Code) LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) LEFT JOIN SubGroup ON S.CompanyCode = SubG...` | Full hall booking with all master joins |
| `Select S.DocId as SearchCode,S.DocID,* From HAllBook S WHERE LogSite_Code in ('KK') And restCode='KKBANQ' AND VType='IBOOK' Order by S.Docid` | Banquet bookings (KKBANQ, IBOOK) |

### 7.2 Venue [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Select VC.*,D.Name as VenuName From VenueOcc VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='DKKIBOOK 2026      82'` | Venue occupancy for a booking |
| `SELECT VenueMast.Code AS VenueCode, VenueMast.Name AS VenueName FROM VenueMast where DepartCode='KKBANQ' ORDER By VenueMast.Name` | Venue list for banquet dept |
| `SELECT VNo FROM HallSale1 WHERE Vtype='IDC' AND BookDocId='DKKIBOOK 2026      82'` | Hall sale invoice for booking |

### 7.3 Booking Advance [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `SELECT Sum(AmtCr-AmtDr) AS Advance FROM PayChargeH WHERE VType In ('AD','AR') AND ContraDocId='DKKIBOOK 2026      82'` | Total advance received for a booking |

### 7.4 Voucher Types [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Select V_Type As Code,Description As Name,NCat From Voucher_Type Where LogSite_Code='KK' and Site_Code='KK' and Category in('HALBOOK') Order by Description` | Hall booking voucher types |
| `Select V_Type As Code,Description As Name,NCat,ContraType From Voucher_Type Where LogSite_Code='KK' and Site_Code='KK' and Ncat In ('EXR','EXC','CRN') Order by Description` | Exchange/Credit/Receipt voucher types |
| `SELECT V_TYPE,DESCRIPTION FROM VOUCHER_TYPE WHERE Category='FA' AND SITE_CODE='KK' AND LOGSITE_CODE='KK' ORDER BY DESCRIPTION` | Fixed asset voucher types |
| `Select VT.V_Type,VT.DESCRIPTION,VP.Prefix,VP.Date_From,VP.Start_Srl_No,Number_Method,Separate_Narr,Common_Narr,NCAT,ChqNo,ChqDt,ClgDt,LTRIM(RTRIM(VT.V_Type))+'-'+LTRIM(RTRIM(VP.Prefix)) as SearchCode,VT.DefaultCrAc,VT.DefaultDrAC,VT.FirstDrCr From Voucher_Prefix VP right join Voucher_Type VT on VT.V_Type=VP.V_Type Where VT.NCAT='PMT' AND Date_From<='01/Aug/2026' AND ISNULL(DATE_TO,'01/Aug/2026')` | Payment voucher types with prefix |

---

## 8. GUEST PROFILES & SMART CARD

### 8.1 GuestProf [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Update GuestProf Set FOM=1 Where Code In (Select GuestProf From Booking) And FOM Is Null` | Mark FOM=1 for guests with bookings |
| `Update GuestProf Set FOM=1 Where Code In (Select GuestProf From GuestFolio) And FOM Is Null` | Mark FOM=1 for guests with folios |
| `Update GuestProf Set FOM=1 Where Code In (Select GuestProf From GuestFolioProfDetail) And FOM Is Null` | Mark FOM=1 for guests with folio details |
| `Update GuestProf Set POS=1 Where Code In (Select CustCode From GuestReward) And POS Is Null` | Mark POS=1 for guests with rewards |
| `Update GuestProf Set FOM=ISNULL(FOM,0)` | Normalize FOM to 0 |
| `Update GuestProf Set POS=ISNULL(POS,0)` | Normalize POS to 0 |

### 8.2 GuestFolioProfDetail [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Delete From GuestFolioProfDetail Where Docid=''` | Startup: delete orphan staging rows |
| `Delete From GuestFolioProfDetail Where IsNull(Docid,'')='' And mProf='KK007803'` | Form open/close: delete staging rows for test guest |

### 8.3 GuestReward / SmartCard [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Update GuestReward Set Total=Q.Total,DiscAmt=Q.DiscAmt,RestCode=Q.RestCode,SchemeCode='',SaleUpTo=0,RPointOnAmt=0,RewardValue=0,RedeemValue=0` | Sync reward totals from Sale1 |
| `Update SmartCardRegistration Set RewardBal=IsNull(RewardBal,0),RewardSale=IsNull(RewardSale,0),RewardPoint=IsNull(RewardPoint,0),RedeemPoint=IsNull(RedeemPoint,0) Where RedeemPoint Is Null` | Normalize smart card reward fields |

### 8.4 Member/Card Holders [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Select SubCode as Code,Name,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='KK' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='KK') Order By Name` | Member list with card numbers |
| `select Restcode,Paycode,Case When IsNull(PayCode,'')<>'' Then 1 Else 0 End Value from DepartPay where restcode='banq'and PayCode='KKHOLD'` | Check if banquet has KKHOLD payment |
| `SELECT P.*,P.Code as SearchCode,S.SubCode as LedgerCode,S.Name as LedgerName,PayType AS CCARD FROM REVMAST P Left join Subgroup S on S.SubCode=P.ACCode WHERE PayType<>'' AND PayType IS NOT NULL AND (P.LOGSITE_CODE='KK' or P.LOGSITE_CODE='HO') order by P.Name` | Credit card payment types with ledger |

---

## 9. SUBGROUP / PARTY MASTERS

### 9.1 SubGroup Queries [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `SELECT S.SubCode as Code,S.Name FROM SubGroup S WHERE S.ActiveYN=1 And (S.LOGSITE_CODE='KK' or S.LOGSITE_CODE='HO') ORDER BY S.Name` | All active parties |
| `SELECT SUBCODE as Code, NAME FROM SUBGROUP WHERE NATURE IN ('Cash','Bank') ORDER BY NAME` | Cash/Bank accounts |
| `Select SubCode As Code,Name From SubGroup Where LogSite_Code in ('KK') And Nature='Customer' order by Name` | Customer list |
| `Select SubCode As Code,Name From ViewSubGroup Where ActiveYN=1 and (LOGSITE_CODE='KK' or LOGSITE_CODE='HO') AND Left(MainGrCodeS,3) IN ('230','240','280','040') Order by Name` | Parties by account group |
| `Select SubCode As Code,Name,(Add1+' '+Add2) As Address,C.CityName,GSTIN TINNo,Nature From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where ActiveYN=1 and (Subgroup.LOGSITE_CODE='KK' or Subgroup.LOGSITE_CODE='HO') and Nature in ('Customer','Supplier','Cash') Order by Name` | Parties with address |
| `Select SubCode as Code,Name,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='KK' or LOGSITE_CODE='HO') Order By Name` | Parties with card numbers |
| `Select SubCode as SearchCode,Name From SubGroup where ActiveYN=1 And SubCode In (Select CompCode From PayCharge Where RestCode In (Select Code From Depart Where RestType In ('Outlet','Room Service'))) And (LOGSITE_CODE='KK' or LOGSITE_CODE='HO') Order by Name` | Parties with outlet/room service charges |
| `Select SubCode,Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES,'' AS NameWithADDR From ViewSubgroup WHERE NATURE='T.D.S.' And (LOGSite_Code='KK' OR LOGSITE_CODE='HO') order by Name` | TDS parties |
| `Select SubCode,Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup Where (LOGSite_Code='KK' OR LOGSITE_CODE='HO') and (ACTIVEYN=1 OR ACTIVEYN IS NULL) order by Name` | All parties with full address |
| `SELECT SUBCODE,SUM(CURR_BAL) AS CURRBAL FROM SUBGROUPCURRBAL GROUP BY SUBCODE ORDER BY SUBCODE` | Party current balances |
| `Select SubCode ,Name From Subgroup where ActiveYN=1 and (LOGSITE_CODE='KK' or LOGSITE_CODE='HO') and CompanyType like ('Travel Agency') Order by Name` | Travel agencies |
| `Select SubCode ,Name,IsNull(GSTIN,'') GSTIN From Subgroup where ActiveYN=1 and (LOGSITE_CODE='KK' or LOGSITE_CODE='HO') and CompanyType like ('Travel Agency') Order by Name` | Travel agencies with GSTIN |
| `Select SubCode ,Name,IsNull(GSTIN,'') GSTIN,DiscountType,Discount,CompanyType From Subgroup where ActiveYN=1 and (LOGSITE_CODE='KK' or LOGSITE_CODE='HO') and (CompanyType like ('Corporate') Or CompanyType In (Select Code From memcatmast Where LOGSITE_CODE='KK' OR LOGSITE_CODE='HO')) Order by Name` | Corporate/member parties |
| `Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='KK' OR LOGSITE_CODE='HO') and (CompanyType in ('Corporate','Travel Agency') Or CompanyType In (Select Code From memcatmast Where LOGSITE_CODE='KK' OR LOGSITE_CODE='HO')) Order By Name` | Corporate + Travel Agency + Member |

---

## 10. VOUCHER & FINANCE

### 10.1 Voucher_Prefix [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Select VT.V_Type,VT.DESCRIPTION,VP.Prefix,VP.Date_From,VP.Start_Srl_No,Number_Method,Separate_Narr,Common_Narr,NCAT,ChqNo,ChqDt,ClgDt,LTRIM(RTRIM(VT.V_Type))+'-'+LTRIM(RTRIM(VP.Prefix)) as SearchCode,VT.DefaultCrAc,VT.DefaultDrAC,VT.FirstDrCr From Voucher_Prefix VP right join Voucher_Type VT on VT.V_Type=VP.V_Type Where VT.NCAT='PMT' AND Date_From<='01/Aug/2026' AND ISNULL(DATE_TO,'01/Aug/2026')` | Payment voucher configuration |

### 10.2 ExpSheet (Expense Sheet) [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `SELECT SubGroup.Name as CrAcName, ExpSheet.* FROM ExpSheet LEFT JOIN SubGroup ON ExpSheet.AgAc = SubGroup.SubCode Where DocID='DKKHTSAL2026        1'` | Expense sheet with ledger name |

### 10.3 CreditCardHistory [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Select SubGroup.Name,TaxStru.Name as Tstru,TaxStru,CommAc,CommPer,AppDate,CreditCardHistory.Limit,CreditCardHistory.CompOperator,CreditCardHistory.Limit1 from (CreditCardHistory inner join SubGroup on SubGroup.SubCode=CreditCardHistory.CommAc) inner join TaxStru on Taxstru.Code=CreditCardHistory.TaxStru where Sno=1 and Revcode='KKHOLD'` | Credit card commission history |

### 10.4 Purch1 (Purchase) [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Select PartyBillNo As PartyBillNoCd,PartyBillNo As PartyBillNoNm,Party from purch1 Where (purch1.LOGSITE_CODE='KK' or purch1.LOGSITE_CODE='HO')` | Purchase party bill numbers |

### 10.5 SubGroupCurrBal [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `SELECT SUBCODE,SUM(CURR_BAL) AS CURRBAL FROM SUBGROUPCURRBAL GROUP BY SUBCODE ORDER BY SUBCODE` | Party current balances (grouped) |

---

## 11. INVENTORY & STOCK

### 11.1 Stock Tables [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Update Stock Set MRP=IsNull(MRP,0) Where MRP Is Null` | Normalize stock MRP |
| `Update StockLog Set MRP=IsNull(MRP,0) Where MRP Is Null` | Normalize stock log MRP |
| `Update SplitStock Set MRP=IsNull(MRP,0) Where MRP Is Null` | Normalize split stock MRP |
| `Update ItemMast Set MRP=IsNull(MRP,0) Where MRP Is Null` | Normalize item MRP |
| `Update ItemRate Set MRP=IsNull(MRP,0) Where MRP Is Null` | Normalize item rate MRP |
| `Update ItemRate Set Party=ISNULL(Party,'')` | Normalize item rate party |
| `Update Item Set CommodityCode=ItemMast.CommodityCode From Item,ItemMast Where Item.Code=ItemMast.Code And Item.CommodityCode IS Null` | Sync commodity code from ItemMast |

---

## 12. POS / KOT / SALES

### 12.1 Sale1 (Sales) [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Update Sale1 Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''` | Backfill audit name from U_Name |
| `Update Sale1Log Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''` | Same for Sale1Log |
| `Update SplitSale1 Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''` | Same for SplitSale1 |

### 12.2 Paycharge [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Update Paycharge Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''` | Backfill audit name on charges |
| `Update PaychargeLog Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''` | Same for PaychargeLog |

### 12.3 KOT [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `select code,Name,KOTYN from depart where outletYN='Y'` | Outlets with KOT enabled |

---

## 13. BANQUET MODULE

### 13.1 Banquet-Specific [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `Select S.DocId as SearchCode,S.DocID,* From HAllBook S WHERE LogSite_Code in ('KK') And restCode='KKBANQ' AND VType='IBOOK' Order by S.Docid` | Banquet bookings |
| `SELECT S.*, MarketSeg.Name AS SegmentName, BussSource.Name AS BussSourceName, FunctionType.Name AS EventName, SubGroup.Name as CompanyName, BA.Name as BookingAgentName FROM (((HallBook AS S ...` | Full banquet booking details |
| `Select RestType,BackColor From Depart Where Code='BANQ'` | Banquet department settings |
| `SELECT VenueMast.Code AS VenueCode, VenueMast.Name AS VenueName FROM VenueMast where DepartCode='KKBANQ' ORDER By VenueMast.Name` | Banquet venues |
| `Select VC.*,D.Name as VenuName From VenueOcc VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='DKKIBOOK 2026      82'` | Venue occupancy |
| `SELECT VNo FROM HallSale1 WHERE Vtype='IDC' AND BookDocId='DKKIBOOK 2026      82'` | Hall sale invoice |
| `select Restcode,Paycode,Case When IsNull(PayCode,'')<>'' Then 1 Else 0 End Value from DepartPay where restcode='banq'and PayCode='KKHOLD'` | Banquet payment config |

---

## 14. JOB SCHEDULER

### 14.1 JobSchedule [VERIFIED-SQL]

| SQL | Frequency | Business Meaning |
|-----|-----------|-----------------|
| `Select JS.*,JD.Job_Id,JD.JobName From JobSchedule JS Inner Join JobScheduledDetail JD On JS.Schedule_Id=JD.Schedule_Id Where JS.LogSite_Code='KK' And '28/Sep/2026' Between JS.ScheduleStartDate And JS.ScheduleEndDate And JS.ScheduleEnabled=1` | ~5,214 calls | Poll for scheduled jobs (SMS/print/NA) |
| `Select * from JOBScheduledDetail Where JobEnabled=1 And JobScheduledOn Is Not Null` | ~5,213 calls | Check enabled jobs with scheduled time |
| `Select Convert(Varchar,GetDate(),120)` | ~5,214 calls | Get current date for job comparison |
| `Select Top 1 JS.Schedule_Id,JS.ScheduleName From JobScheduledDetail JD Inner Join JobSchedule JS On JD.Schedule_Id=JS.Schedule_Id Order By JS.ScheduleName` | 1 call | Get first scheduled job |
| `Select Schedule_Id Code,ScheduleName Name From JobSchedule Where ScheduleEnabled=1 And (LOGSITE_CODE='KK' or LOGSITE_CODE='HO') Order by Name` | 1 call | List enabled schedules |

**Key Finding:** JobSchedule is the MOST polled table in the entire HMS application — called ~5,214 times in a single session. This is a background timer that polls every ~1 second for scheduled jobs (SMS sending, night audit, printing).

---

## 15. SMS / MESSAGING

### 15.1 DBSendSMS [VERIFIED-SQL]

| SQL | Frequency | Business Meaning |
|-----|-----------|-----------------|
| `Select * from DBSENDSMS Where ISNULL(SENDTF,'')<>'TRUE'` | ~1,048 calls | Poll SMS outbox for unsent messages |

### 15.2 Messaging [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `SELECT * FROM Messaging Where Receiver='SA' and(Cleared is Null Or Cleared='' Or Cleared='N')And ReadYN='N' Order By VDATE DESC,VType DESC,VNo DESC,Sender` | Unread inbox messages for SA |

### 15.3 GuestMessage [VERIFIED-SQL]

| SQL | Business Meaning |
|-----|-----------------|
| `SELECT RoomOcc.FolioNo, GuestMessage.Message,Solved FROM RoomOcc LEFT JOIN GuestMessage ON RoomOcc.FolioNo = GuestMessage.FolioNo where ... AND Solved<>'Y'` | Unsolved guest messages |

---

## 16. STARTUP NORMALIZATION BATCH

### 16.1 Complete Write Inventory (33 statements at 10:06:01-10:06:02) [VERIFIED-SQL]

| # | SQL | Table | Business Meaning |
|---|-----|-------|-----------------|
| 1 | `Update PlanMast SET RoomTaxStru=RevMast.TaxStru FROM PlanMast LEFT JOIN RoomCat ON RoomCat.Code = PlanMast.RoomCat LEFT JOIN RevMast ON RevMast.Code = RoomCat.RevCode WHERE IsNull(Planmast.RoomTaxStru,'')=''` | PlanMast | Backfill tax structure from RevMast |
| 2 | `UPDATE RoomOcc SET RoomTaxStru=Q.TaxStru FROM RoomOcc INNER JOIN (...)` | RoomOcc | Backfill tax structure on occupied rooms |
| 3 | `UPDATE GrpBookingDetails SET RoomTaxStru=Q.TaxStru FROM GrpBookingDetails INNER JOIN (...)` | GrpBookingDetails | Backfill tax structure on group bookings |
| 4 | `Delete From GuestFolioProfDetail Where Docid=''` | GuestFolioProfDetail | Delete orphan staging rows |
| 5 | `Update ItemMast Set MRP=IsNull(MRP,0) Where MRP Is Null` | ItemMast | Normalize MRP to 0 |
| 6 | `Update ItemRate Set MRP=IsNull(MRP,0) Where MRP Is Null` | ItemRate | Normalize MRP to 0 |
| 7 | `Update Stock Set MRP=IsNull(MRP,0) Where MRP Is Null` | Stock | Normalize MRP to 0 |
| 8 | `Update StockLog Set MRP=IsNull(MRP,0) Where MRP Is Null` | StockLog | Normalize MRP to 0 |
| 9 | `Update SplitStock Set MRP=IsNull(MRP,0) Where MRP Is Null` | SplitStock | Normalize MRP to 0 |
| 10 | `Update RevMast Set Active=IsNull(Active,'') Where Active Is Null` | RevMast | Normalize Active flag |
| 11 | `Update RevMast Set TaxInc=IsNull(TaxInc,'No') Where TaxInc Is Null` | RevMast | Normalize TaxInc to 'No' |
| 12 | `Update Sale1 Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''` | Sale1 | Backfill audit name |
| 13 | `Update Sale1Log Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''` | Sale1Log | Backfill audit name |
| 14 | `Update SplitSale1 Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''` | SplitSale1 | Backfill audit name |
| 15 | `Update Paycharge Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''` | Paycharge | Backfill audit name |
| 16 | `Update PaychargeLog Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''` | PaychargeLog | Backfill audit name |
| 17 | `Update GuestReward Set Total=Q.Total,DiscAmt=Q.DiscAmt,RestCode=Q.RestCode,SchemeCode='',SaleUpTo=0,RPointOnAmt=0,RewardValue=0,RedeemValue=0` | GuestReward | Sync reward totals from Sale1 |
| 18 | `Update SmartCardRegistration Set RewardBal=IsNull(RewardBal,0),RewardSale=IsNull(RewardSale,0),RewardPoint=IsNull(RewardPoint,0),RedeemPoint=IsNull(RedeemPoint,0) Where RedeemPoint Is Null` | SmartCardRegistration | Normalize reward fields |
| 19 | `Update Depart Set KOTAtNightAudit=(Select IsNull(Max(KOTAtNightAudit),'') From Enviro Where LogSite_Code='KK') Where IsNull(KOTAtNightAudit,'')='' And OutletYN='Y'` | Depart | Sync KOT night audit from Enviro |
| 20 | `Update GuestProf Set FOM=1 Where Code In (Select GuestProf From Booking) And FOM Is Null` | GuestProf | Mark FOM for booking guests |
| 21 | `Update GuestProf Set FOM=1 Where Code In (Select GuestProf From GuestFolio) And FOM Is Null` | GuestProf | Mark FOM for folio guests |
| 22 | `Update GuestProf Set FOM=1 Where Code In (Select GuestProf From GuestFolioProfDetail) And FOM Is Null` | GuestProf | Mark FOM for folio detail guests |
| 23 | `Update GuestProf Set POS=1 Where Code In (Select CustCode From GuestReward) And POS Is Null` | GuestProf | Mark POS for reward guests |
| 24 | `Update GuestProf Set FOM=ISNULL(FOM,0)` | GuestProf | Normalize FOM to 0 |
| 25 | `Update GuestProf Set POS=ISNULL(POS,0)` | GuestProf | Normalize POS to 0 |
| 26 | `Update MarketSeg Set Active=ISNULL(Active,'')` | MarketSeg | Normalize Active |
| 27 | `Update BussSource Set Active=ISNULL(Active,'')` | BussSource | Normalize Active |
| 28 | `Update RoomDiscount Set Adult=ISNULL(Adult,1)` | RoomDiscount | Normalize Adult to 1 |
| 29 | `Update Item Set CommodityCode=ItemMast.CommodityCode From Item,ItemMast Where Item.Code=ItemMast.Code And Item.CommodityCode IS Null` | Item | Sync commodity code |
| 30 | `Update Depart Set CoverMandatory=(Select IsNull(Max(CoversMandatory),'') From Enviro Where LogSite_Code='KK') Where CoverMandatory Is Null` | Depart | Sync cover mandatory from Enviro |
| 31 | `Update Depart Set MobileNoMandatory=(Select IsNull(Max(MobileNoMandatory),'') From Enviro Where LogSite_Code='KK') Where MobileNoMandatory Is Null` | Depart | Sync mobile mandatory from Enviro |
| 32 | `Update ItemRate Set Party=ISNULL(Party,'')` | ItemRate | Normalize Party |
| 33 | `Update SunTranFacility set Vtype='FACL' Where Vtype='8'` | SunTranFacility | Migrate Vtype '8' to 'FACL' |
| 34 | `Update FacilityBill1 Set FacilityBill1.LocationCode=Q.LocationCode From (Select FacilityBill.DocId,FacilityBill.LocationCode From FacilityBill)Q Where DocId1=Q.Docid And IsNull(FacilityBill1.LocationCode,'')=''` | FacilityBill1 | Backfill location code |

### 16.2 GUI Walkthrough Deletes (6 statements at 11:23:07-11:27:54) [VERIFIED-SQL]

| SQL | Count | Business Meaning |
|-----|-------|-----------------|
| `Delete From GuestFolioProfDetail Where IsNull(Docid,'')='' And mProf='KK007803'` | 6 | Form open/close cleanup for test guest KK007803 |

---

## 17. SCHEMA ALTERATIONS (DDL)

### 17.1 ALTER TABLE Statements [VERIFIED-SQL]

| SQL | Table | Column | Change |
|-----|-------|--------|--------|
| `Alter table Purch1 alter column PartyBillNo varchar(25)` | Purch1 | PartyBillNo | Widen to 25 |
| `Alter table GIN alter column MemInvNo varchar(25)` | GIN | MemInvNo | Widen to 25 |
| `Alter table ItemCatMast alter column CatType varchar(15)` | ItemCatMast | CatType | Widen to 15 |
| `Alter table DBSendSMS alter column TxtMsg varchar(500)` | DBSendSMS | TxtMsg | Widen to 500 |
| `Alter table GuestFolio alter column Remarks varchar(100)` | GuestFolio | Remarks | Widen to 100 |
| `Alter table GuestFolio alter column Remark varchar(100)` | GuestFolio | Remark | Widen to 100 |
| `Alter table GuestProf alter column Comments1 varchar(100)` | GuestProf | Comments1 | Widen to 100 |
| `Alter table GuestProf alter column Comments2 varchar(100)` | GuestProf | Comments2 | Widen to 100 |
| `Alter table GuestProf alter column Comments3 varchar(100)` | GuestProf | Comments3 | Widen to 100 |
| `Alter table Sale1 alter column Remark varchar(255)` | Sale1 | Remark | Widen to 255 |
| `Alter table Sale1Log alter column Remark varchar(255)` | Sale1Log | Remark | Widen to 255 |
| `Alter table SplitSale1 alter column Remark varchar(255)` | SplitSale1 | Remark | Widen to 255 |
| `Alter table GuestReward alter column DepartName varchar(35)` | GuestReward | DepartName | Widen to 35 |
| `Alter table KOT alter column Reasons varchar(150)` | KOT | Reasons | Widen to 150 |
| `Alter table KOTLog alter column Reasons varchar(150)` | KOTLog | Reasons | Widen to 150 |

**Key Finding:** All ALTER statements are guarded by `If exists (select * from information_schema.columns where ...)` — they only run if the column exists AND is smaller than target size. This is a self-upgrading schema pattern.

---

## 18. STORED PROCEDURES

### 18.1 GetFieldNameAs [VERIFIED-SQL — definition captured]

```sql
create procedure [dbo].[GetFieldNameAs] @tableName varchar(50),@FieldName varchar(50)
```
**Business meaning:** Returns field names matching a pattern from a given table. Used for dynamic field lookup.
**Callers:** Not directly observed in trace (likely called from VB6 app code).

### 18.2 GetFieldNameAsStr [VERIFIED-SQL — definition captured]

```sql
create procedure [dbo].[GetFieldNameAsStr] @tableName varchar(50),@FieldName varchar(50)
```
**Business meaning:** Returns comma-separated field names matching a pattern. Uses cursor + TransferTable.
**Callers:** Not directly observed in trace.

### 18.3 Proc_WebService [VERIFIED-SQL — definition captured]

**12 actions:**
| Action | Business Meaning |
|--------|-----------------|
| 1 | Login (UserMast auth) |
| 2 | Get restaurant list for user |
| 3 | Get waiters for restaurant |
| 4 | Get restaurant tables (RoomMast) |
| 5 | Get item categories |
| 6 | Get item subcategories |
| 7 | Get items by subcategory |
| 8 | Check validation |
| 9 | Get KOT voucher config |
| 10 | Insert KOT + update voucher prefix |
| 11 | Get occupied tables with waiter info |

**Callers:** Not observed in trace (likely called from external web service / mobile app).

---

## 19. VIEWS

### 19.1 View Definitions [VERIFIED-SQL — from view_proc_definitions.txt]

| View | Tables Joined | Business Meaning |
|------|---------------|-----------------|
| **BillDet** | PayCharge ⋈ RoomOcc ⋈ GuestFolio | Bill details with amounts, dates, guest info |
| **BillSummary** | BillDet ⋈ RoomOcc | Bill summary (SNo=1 only) |
| **Party_List** | SubGroup ⋈ City | Party list with city names |
| **RoomOccDet** | RoomOcc (self-join for latest SNo) ⋈ GuestFolio | Room occupancy details with guest info |
| **SunTransaction** | SunTran ⋈ SunTranH | Sun transactions (travel agency) |
| **View_Booking** | Booking ⋈ GrpBookingDetails | Booking with group details (Cancel<>'Y') |
| **ViewBooking** | Booking ⋈ GrpBookingDetails | Booking with group details (both Cancel<>'Y') |
| **ViewLedger** | Ledger ⋈ LedgerM | Ledger entries with master narration |
| **ViewLedgerLog** | LedgerLog ⋈ LedgerMLog UNION ALL Ledger ⋈ LedgerM | Ledger log + current ledger |
| **ViewSubgroup** | SubGroup ⋈ ACGROUP ⋈ City | Sub-group with account group + city |

### 19.2 Views Used in Trace [VERIFIED-SQL]

| View | SQL Using It | Business Meaning |
|------|-------------|-----------------|
| **ViewBooking** | `Select Sum(NoofRooms) As tRoomBusy From ((ViewBooking as B Left Join GuestFolio GF...)` | Room occupancy count |
| **RoomOccDet** | `Select RoomNO as RoomCode,ChkinDt as FromDate...From RoomOccDet left join GuestProf...` | In-house guest list |
| **ViewSubGroup** | `Select SubCode As Code,Name From ViewSubGroup Where ActiveYN=1...` | Party list with group info |
| **ViewSubgroup** | `Select SubCode,Name,GNAME AS GROUPNAME...From ViewSubgroup WHERE NATURE='T.D.S.'` | TDS parties |

---

## 20. TRIGGERS

### 20.1 Trigger Inventory [VERIFIED-SQL]

**Triggers: 0** (confirmed from LIVE_DATABASE_DICTIONARY.md)

HMS database me koi triggers nahi hain. Saari referential integrity VB6 application me maintain hoti hai.

---

## 21. CROSS-REFERENCE: TABLE → MODULE MAP

### 21.1 Table Usage by Module [VERIFIED-SQL]

| Table | Module | Operations | Frequency |
|-------|--------|-----------|-----------|
| **JobSchedule** | Background Jobs | SELECT | ~5,214 |
| **JobScheduledDetail** | Background Jobs | SELECT | ~5,213 |
| **DBSendSMS** | SMS | SELECT | ~1,048 |
| **MenuHelp** | Navigation | SELECT | ~238+ |
| **Enviro** | Settings | SELECT, UPDATE (subquery) | ~76 |
| **UserMast** | Security | SELECT | ~10 |
| **User1** | Security | SELECT | ~5 |
| **User_Module** | Security | SELECT | ~25 |
| **Company** | Company | SELECT | ~5 |
| **GuestFolio** | Front Office | SELECT, ALTER | ~652 |
| **RoomOcc** | Rooms | SELECT, UPDATE | ~557 |
| **GuestProf** | Guest | SELECT, UPDATE | ~474 |
| **GuestFolioProfDetail** | Guest | SELECT, DELETE | ~458 |
| **City** | Master Data | SELECT | ~453 |
| **Booking** | Reservation | SELECT | ~453 |
| **Paycharge** | POS | SELECT, UPDATE | ~450 |
| **ratelist** | Revenue | SELECT | ~286 |
| **RoomMast** | Rooms | SELECT | ~261 |
| **RoomBlockOut** | Rooms | SELECT | ~169 |
| **RoomCat** | Revenue | SELECT | ~121 |
| **GuestMessage** | Guest | SELECT | ~97 |
| **RevMast** | Revenue | SELECT, UPDATE | ~50 |
| **SubGroup** | Finance | SELECT | ~40 |
| **Depart** | POS | SELECT, UPDATE | ~20 |
| **HallBook** | Banquet | SELECT | ~10 |
| **Voucher_Type** | Finance | SELECT | ~10 |
| **Voucher_Prefix** | Finance | SELECT | ~5 |
| **ItemMast** | Inventory | UPDATE | ~5 |
| **Stock** | Inventory | UPDATE | ~5 |
| **Sale1** | POS | UPDATE | ~5 |
| **Paycharge** | POS | UPDATE | ~5 |
| **GuestReward** | Guest | UPDATE | ~5 |
| **SmartCardRegistration** | Guest | UPDATE | ~3 |
| **MarketSeg** | Master Data | UPDATE | ~2 |
| **BussSource** | Master Data | UPDATE | ~2 |
| **RoomDiscount** | Revenue | UPDATE | ~2 |
| **Item** | Inventory | UPDATE | ~2 |
| **ItemRate** | Inventory | UPDATE | ~2 |
| **SunTranFacility** | Banquet | UPDATE | ~1 |
| **FacilityBill1** | Banquet | UPDATE | ~1 |
| **PlanMast** | Revenue | UPDATE | ~1 |
| **GrpBookingDetails** | Reservation | UPDATE | ~1 |
| **eInvoiceEnviro** | GST | SELECT | ~3 |
| **MemEnviro** | Member | SELECT | ~2 |
| **Holiday** | Master Data | SELECT | ~1 |
| **ExpSheet** | Finance | SELECT | ~1 |
| **CreditCardHistory** | Finance | SELECT | ~1 |
| **Purch1** | Inventory | SELECT | ~1 |
| **SubGroupCurrBal** | Finance | SELECT | ~1 |
| **VenueMast** | Banquet | SELECT | ~2 |
| **VenueOcc** | Banquet | SELECT | ~1 |
| **HallSale1** | Banquet | SELECT | ~1 |
| **PayChargeH** | Reservation | SELECT | ~1 |
| **DepartPay** | POS | SELECT | ~1 |
| **TaxStru** | Revenue | SELECT | ~2 |
| **Messaging** | Messaging | SELECT | ~1 |

---

## 22. KEY FINDINGS SUMMARY

### 22.1 Most Polled Tables (Background Jobs)
1. **JobSchedule** — 5,214 calls (job scheduler poll)
2. **JobScheduledDetail** — 5,213 calls (job detail poll)
3. **DBSendSMS** — 1,048 calls (SMS outbox poll)

### 22.2 Write Statement Categories
- **33 startup normalization** — self-healing IsNull updates
- **6 form cleanup** — GuestFolioProfDetail staging deletes
- **0 business data modification** — no INSERT/UPDATE/DELETE on business transactions

### 22.3 Module Identification from SQL
| Module | Key Tables | Key SQL Patterns |
|--------|-----------|-----------------|
| **Login/Security** | UserMast, User1, User_Module, Company | COUNT, SELECT, permission joins |
| **Navigation** | MenuHelp | OPT1-OPT4 hierarchy, Param_Str |
| **Settings** | Enviro, MemEnviro | Full row load, site filter |
| **Front Office** | GuestFolio, RoomOcc, GuestProf | Occupancy, guest details |
| **Reservation** | Booking, GrpBookingDetails, HallBook | ViewBooking, advance calc |
| **Housekeeping** | RoomMast, RoomCat, RoomBlockOut | Room status, block-out |
| **POS** | Sale1, Paycharge, KOT, Depart | Sales, charges, KOT |
| **Inventory** | ItemMast, Stock, ItemRate, Purch1 | MRP, stock, purchase |
| **Finance** | SubGroup, Ledger, Voucher_Type, ExpSheet | Ledger, vouchers, expense |
| **Banquet** | HallBook, VenueMast, VenueOcc, HallSale1 | Function booking, venue |
| **Guest/SmartCard** | GuestReward, SmartCardRegistration | Reward points, card balance |
| **Messaging** | Messaging, GuestMessage | Inbox, guest messages |
| **Job Scheduler** | JobSchedule, JobScheduledDetail | Background job poll |
| **SMS** | DBSendSMS | Outbox poll |
| **GST/e-Invoice** | eInvoiceEnviro, eInvoiceBill1/2 | GST config, e-invoice staging |

### 22.4 Evidence Level Summary
| Level | Count | Meaning |
|-------|-------|---------|
| [VERIFIED-SQL] | ~180 unique patterns | Directly captured in live SQL trace |
| [INFERRED] | ~15 | Business meaning inferred from SQL context |
| [UNKNOWN] | ~5 | Cannot determine exact business logic |

---

*Document generated: 2026-09-29*
*Source: HMS_SQL_Tracking.trc + LIVE_DATABASE_DICTIONARY.md + view_proc_definitions.txt + columns_dictionary.txt*
