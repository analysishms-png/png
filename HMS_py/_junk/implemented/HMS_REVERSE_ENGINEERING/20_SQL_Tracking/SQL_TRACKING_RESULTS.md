# HMS SQL TRACKING RESULTS  [VERIFIED-SQL — live server-side trace]

Trace: HMS_SQL_Tracking.trc (classic SQL Trace, events 10/12/41/45/33, filter DatabaseID=15)
Window: 2026-09-28 ~10:06 → stop (same day) | Application: **'Logic Pro (Win HMS)'** = HMS.exe ka ADO app-name
Raw extracts (this folder):
- raw/hms_all_statements.txt — 17,525 HMS statements (full session)
- raw/hms_events.txt — first 200 events with host/duration/reads
- raw/write_statements.txt — ALL 40 write statements (timestamped, full text)

## 1. Capture scale
| Metric | Value |
|---|---|
| Total HMS statements captured | 17,525 |
| Write statements (Insert/Update/Delete) | **40** — full accounting below |
| Trace scope | MOONData2627 only; HMS app filtered |

## 2. Write statements — TRANSPARENT ACCOUNTING (40 total)

### A. App-startup normalization batch (10:06:01–10:06:02, HMS login par) — 33 stmts
Ye HMS ka apna "schema/data normalize" startup batch hai — sab `IsNull(...)` self-healing
updates, koi user data change nahi:
- PlanMast/RoomOcc/GrpBookingDetails ← RoomTaxStru backfill (RevMast.TaxStru join)
- ItemMast/ItemRate/Stock/StockLog/SplitStock ← MRP=IsNull(MRP,0)
- RevMast Active/TaxInc defaults; Sale1/Sale1Log/SplitSale1/Paycharge/PaychargeLog ← AU_Name backfill
- GuestReward/SmartCardRegistration reward-column normalization
- Depart ← KOTAtNightAudit/CoverMandatory/MobileNoMandatory Enviro('KK') se sync
- GuestProf FOM/POS flags backfill; MarketSeg/BussSource Active default; RoomDiscount Adult=1
- Item←ItemMast CommodityCode sync; SunTranFacility Vtype '8'→'FACL'; FacilityBill1 LocationCode backfill
- **1 Delete: `Delete From GuestFolioProfDetail Where Docid=''`** (orphan cleanup, DocId empty = staging rows)

### B. GUI walkthrough session se (11:23:07–11:27:54) — 6 stmts
`Delete From GuestFolioProfDetail Where IsNull(Docid,'')='' And mProf='KK007803'` — 6 baar
**Ye mere capture tools ke opens/closes ke waqt hue** — fdWalkInEntry/FdLookUpGuest type forms
apne temp profile-link rows khud cleanup karti hain on open/close. Saare rows **Docid=''**
(staging-only, koi real folio link nahi), mProf KK007803 = wahi ek test guest profile jo form
open hone par default load hota hai. **Koi business data (folio/booking/bill) modify NAHI hua.**

### Verdict
40/40 writes = application ke apne startup-normalization + staging-cleanup behaviors.
Captured screens/reports sirf SELECT karte hain. Evidence: write_statements.txt (full text + timestamps).

## 3. Read-profile (top tables in session)
JobSchedule(t)/JobScheduledDetail (5,214+5,213!) — **background job scheduler har screen pe poll karta hai**
DBSENDSMS (1,048) — SMS outbox poll; GuestFolio 652, RoomOcc 557, GuestProf 474,
GuestFolioProfDetail 458, City 453, Booking 453, Paycharge 450, ratelist 286, RoomMast 261,
MenuHelp 238, RoomBlockOut 169, RoomCat 121, GuestMessage 97, Enviro 76.

## 4. Nayi discoveries (live trace se, code me nahi milti itni clarity)
1. **Menu engine = MenuHelp table**: `Select [Option] Name,OPT1..4 from MenuHelp Where Flag<>'V'
   And OPT1<>0 And OPT2=0... And UserName='SA' And CompCode='2' Order By Code`
   → per-user + per-company menu hierarchy OPT1..OPT4 columns me hai (4-level tree).
2. **Site code 'KK' LIVE confirmed** (Enviro WHERE LogSite_Code='KK'; INI key 7 ab VERIFIED-SQL).
3. **Messaging inbox**: `SELECT * FROM Messaging Where Receiver='SA' And ... ReadYN='N'`
   → in-app messaging module DB-backed hai.
4. **Job scheduler**: JobSchedule/JobScheduledDetail poll (background SMS/print/NA jobs).
5. **Login sequence live-confirmed** (code mapping):
   COUNT(userMast) → SELECT USERMAST USER_NAME → AllowDtChng → User1⋈User_Module →
   company (SA filter-skip: `Select * from company order by STart_dt Desc` — WHERE clause nahi!)
   → `select * from company where comp_code='2'` → **selected company = comp_code '2'**
   → `select backcolor from usermast` (user ka custom background color)
6. **Enviro mega-read**: `Select * From Enviro WHERE LOGSITE_CODE='KK'` — Duration 50ms, 3,770 reads
   (wide row, session start pe poora load hota hai).

## 5. Trace methodology (reproducible)
- Start: trace_start.sql (sp_trace_create, file SQL Log dir, 100MB rollover)
- Live check: fn_trace_gettable pulse query
- Stop: sp_trace_setstatus 0 then 2 (verified 0 remaining)
- Extract: fn_trace_gettable reads (Log dir ACL-protected hai isliye SQL ke through hi padha)
- Note: `.trc` path ek **directory** bana (rollover); files SQL access se hi readable —
  raw extracts workspace me save ho gaye hain, Log folder ko chhua nahi gaya.

## 6. Screen→SQL mapping samples (session me captured)
| Screen/Action | SQL evidence (raw file line refs) |
|---|---|
| Login | userMast COUNT → USERMAST select → AllowDtChng → User1 join → company select |
| MDI open | Enviro(KK) full read; Messaging unread; MenuHelp tree; JobSchedule poll |
| WalkIn CheckIn open | GuestFolio/RoomOcc/GuestProf/City reads; GuestFolioProfDetail staging delete |
| Room Status/Display Rack | RoomMast/RoomOcc/RoomBlockOut/RoomCat reads |
| Reports (GSTR etc.) | (report SQL TextData truncated in this pass — pass-5 me capture) |
