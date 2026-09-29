# DB Workflow Overview (Moondata2627, 273 BASE TABLEs live 2026-09-25)

## Connection path

`Analysis.ini [HMS]` → `key1=Localhost` (server), `key6=Moondata2627` (database), site keys → `core/db.py load_config()/connect()` (Windows Auth / pyodbc).
Note: `Analysis.ini` me stale LENOVO paths hain — `db.ensure_paths()` best-effort hai, non-fatal (reports/temp dirs local equivalents banao aur log karo).

Regenerate check:
```python
from HMS_py.core import db
print(db.query("SELECT COUNT(*) FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'"))
```

## Global transaction pattern (VB6 BeginTrans/Commit/Rollback faithful port)

- Writes: `cn.begin()` → validate → INSERT/UPDATE → `cn.commit()` / `except → cn.rollback()`
- VNo race safety: `db.next_vno(table, vtype, vprefix)` — `UPDLOCK, HOLDLOCK` lock pattern (README v0.1.1) — parallel voucher posting me duplicate VNo nahi banta
- Site filter: `LOGSITE_CODE` HO-or-site pattern (README + `fo_ops.py`) — har transaction row apna site code rakhti hai
- Auditing: `U_Name, U_EntDt, U_AE='A'` columns har write row me (VB6 parity)

## Core ER groups (live table list se derived)

| Group | Tables | Link |
|---|---|---|
| Guest profile ↔ folio ↔ charges | GuestProf, GuestFolio, GuestFolioProfDetail, GuestFolioAmend, FolioLog, PayCharge, PayChargeH, PayChargeLog, GroupProf, GuestComments, GuestMessage, GuestParam, GuestReward, GuestStat, GuestWakeup, GuestProfFor, GuestProfVeh | GuestProf.GuestId → GuestFolio → PayCharge |
| Booking ↔ room occupancy | Booking, BookingDetail, BookingCancelDetails, BookingLog, BookingMore, BookingPlanDetails, BookingInquiry, RoomOcc, RoomMast, RoomCat, RoomBlockOut, RoomDet, RoomDiscount, RoomFeature, RoomRate, RoomCheckOutStatus, PlanMast, PlanDetails, Plan1 | Booking ↔ RoomOcc ↔ RoomMast (RoomStat) |
| POS / KOT / sale | KOT, KOTLog, Sale1, Sale1Log, Sale2, Sale2Log, POS_SBill, Temp_Sbill, SplitBillDetail, SplitSale1, SplitSale2, SaleMIS, HappyHours, HappyHoursHead, TOKEN, Waiter, OutletBarCodePartDetail, PackingOrder(+Detail), TempPosDel, SchemeMast, SchemeItemDetail, SchemeOutletDiscount | KOT → Sale1/Sale2 |
| Inventory / purchase | Purch1, Purch2, GIN, POrder(+1), Indent(+1), Stock(+1), StockLog, ItemMast, Item, ItemRate, ItemCatMast, ItemGrp, GodownMast, mCurStk, KClStk, UnitMast, TransIn/Out/Del, SplitStock(+1), RawConsumption, CatalogMast, GroupCatalog, ComboPackHead/Detail | Purch1/2 ↔ Stock ↔ ItemMast |
| Finance / ledger | Ledger, LedgerM, LedgerLog, LedgerMLog, LedgerRef, LedgerAdj, LedgerTDS, LedgerMerge, LedgerMMerge, AcGroup, AcGroupCurrBal, SubGroup, SubGroupCurrBal, SubGroupLog, NarrMast, TDSCat, TDSCerti, TDSChal(+1), Voucher_Prefix, Voucher_Type, Voucher_Exclude, Voucher_Include, VoucherCat, LastVou, LastVoucher, FaEnviro, Budget, BudgetDetails, RateList | LedgerM (header) ↔ Ledger (lines, PK aaaaaLedger_PK) |
| Rights / menu / users | menuHelp, menuHelp1, UserMast, UserPermission, User_Module, UserModule(+1), User1, User2, UserCollection, Enviro (1-row config), DATELOCK, Site, Company, CompanyProfile | menuHelp.UserName → UserMast |
| Banquet / hall | HallBook(+1), HallPreCosting, HallSale1(+Est), HallSale2, HallStock(+Est), VenueMast(+1), VenueCapacity, VenueFeatures, VenueOCC, SeasonMast(+1), Packagemaster(season/plan masters ui) | HallBook ↔ HallSale1/2 |
| Members | MemBill(+1), MemCatMast, MemFacilityMast, MemFacilityBilling, MembershipRevMast, MemRevenueForPeriod, MemCatChngDetail, MemCatFacility, MemCatRevWise, MemAddRWA, MemberFamily, MemEnviro, MemOutStation, MemProposedMemInf, MemRevWise, MemTagadaLetter, MemVisitEntry | MemBill ↔ GuestProf (member) |
| HR / payroll | Employee, EmpCategory, Desig, Depart(+1), Salary, SalaryLog, Attend, Attendence, Leave_Ench, Loan, OverTime, ShiftMast, JobSchedule, JobScheduledDetail, ExpSheet, DepartPay, DepartRWScheme | Employee → Salary |
| Night audit | NightAuditLog, DATELOCK, YearEnd (year_end code), LeaderRev, RoundOffSetting | NightAuditLog |
| Messaging / EPABX | messaging, DBSendSMS, SMSEnviro, EmailSMSForward, TelCallCode, TelCallType, TelExt, EPABX_Data | config-driven |
| Misc / master | AreaMast, City, State, Country, MarketSeg, BussSource, SundryMast, SundryType(+Fix), TaxStru, UnitMast, Category, ComplaintCategory/Detail, LostFoundDetail, BlockMast, BOM, FeatureMast, DispColor, FunctionType, NCTypeMast, DenominationDetail/Format, CreditCardHistory, SmartCard*, AssignDelivery, DeliveryBoy, SessionMast, Holiday, Help, TradeInfo_bTwin, TranLog, PDALOG, ProfileImages, Comp_Inclusive, Comp_PlanDet, Travel1/2, ForEx(+Trans), FixedCharge, RevMast, LeaderRev, eInvoice* | master data |

## Tables-per-module pointer

Har module ka detailed table list uske `DATABASE.md` me (pilot: `04_FrontOffice/DATABASE.md`).
Live count query har doc me `SELECT COUNT(*)` se aata hai — static number mat likho.

## Known DB-side notes (test runs 2026-09-25)

- `test_fa_voucher` ke interrupted run se `Ledger` me ek orphan row bani thi
  (`DocId='DKKJV   2026      904', V_SNo=2, Narration='cash dep'`) — fixture cleanup
  sirf `Narration='PYT test voucher'` delete karta hai. **Orphan DELETE executed +
  DB-recheck done (user-approved, 2026-09-25; rows now 0)** — ab ki 8/9 = `V7 TB balanced`
  pre-existing parity assertion (KI-4). Orphan ka root: interrupted fixture run; usi family
  ki recurrence guard = KI-9 PayChargeLog fixture note.
- L2c script tests me data-dependent fails: `inventory_registers` (GIN/POrder empty),
  `tally_export` (vouchers>0) — DB me test data ki kami, code nahi.
