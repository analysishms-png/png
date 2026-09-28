# HMS DATABASE INVENTORY (code-derived)  [VERIFIED-VB6]

Live SQL Server metadata could not be queried in this session (see database_connection.txt:
bundled DATA folder empty). The inventory below is extracted from the application's own SQL
statements in EXTRAS.text (54 MB decompiled source) — usage counts from grep frequency.
This inventory must be re-validated against sys.tables when a live DB/backup is available.

## A. Usage-weighted table inventory (top 120)
Count = occurrences of the table in INSERT/UPDATE/DELETE/SELECT/JOIN statements.

| Count | Table |
|-------|-------|
| 1378 | Depart (department/outlet master) |
|  873 | PayCharge (folio charge posting) |
|  869 | GuestFolio (guest folio/checkin) |
|  840 | GuestProf (guest profile) |
|  835 | RevMast (revenue head master) |
|  741 | SubGroup (account/party master) |
|  618 | ItemMast (item master) |
|  563 | Voucher_Type |
|  473 | Stock |
|  457 | RoomOcc (room occupancy) |
|  434 | Voucher_Prefix (numbering) |
|  423 | PayCharge variants (case) |
|  321 | PlanMast (tariff plan) |
|  310 | RoomMast |
|  253 | Ledger (finance ledger) |
|  246 | ItemCatMast |
|  243 | Sale1 (POS sale header) |
|  226 | Enviro (site settings incl. business date 'ncur') |
|  223 | RoomCat, ItemGrp |
|  215 | City |
|  200 | KOT (kitchen order ticket) |
|  194 | PlanDetails |
|  187 | SundryType |
|  168 | TaxStru |
|  152 | SunTran (+ SunTranH header) |
|  138 | LASTVOU (last voucher no) |
|  136 | SundryMast |
|  134 | RoomOccDet |
|  130 | GodownMast |
|  125 | Country |
|  124 | TOKEN |
|  122 | State |
|  116 | FAENVIRO (finance settings) |
|  114 | AcGroup |
|  113 | Sale2 (POS sale detail) |
|  112 | Employee |
|  101 | GuestProfFor |
|  100 | VIEWLEDGER (view) |
|   99 | Waiter |
|   96 | HallBook (banquet booking) |
|   91 | Booking (reservation booking) |
|   81 | EPABX_IN (EPABX calls, Jet mdb) |
|   79 | MemCatMast (member category) |
|   78 | SmartCardRegistration |
|   74 | FixedCharge |
|   70 | MemberFamily |
|   70 | ItemRate |
|   70 | BussSource |
|   69 | FOMBillDetails (front office bill details) |
|   68 | SplitSale1 (split-bill staging) |
|   68 | ACGROUP |
|   67 | PayChargeH (charge history) |
|   66 | ExpSheet (expense sheet - night audit) |
|   64 | Purch1 (purchase header) |
|   60 | EmailSMSForward |
|   58 | MarketSeg |
|   56 | HallSale1 (banquet sale) |
|   55 | VenueMast |
|   54 | UnitMast |
|   53 | RoomBlockOut |
|   52 | MenuHelp (menu security) |
|   51 | MemBill |
|   50 | BOM (bill of material) |
|   48 | PackingOrder, PackingOrderDetail |
|   48 | GuestFolioProfDetail |
|   47 | FunctionType (banquet function types) |
|   47 | LOAN (HR) |
|   46 | SunTranH |
|   44 | Purch2 (purchase detail) |
|   43 | GrpBookingDetails (group bookings) |
|   40 | ViewSubgroup (view) |
|   40 | ViewLedger, PARTY_LIST |
|   39 | PrintFormats |
|   39 | MemAddRWA |
|   37 | TempPosDel (deleted bill staging) |
|   37 | PayChargeLog (posting audit) |
|   37 | LocationMast (missing in DB - bug BUG-001) |
|   36 | MembershipRevMast |
| also | eInvoiceBill1 (GST e-invoice, created at runtime by app - line 10342) |
| also | userMast, user1, module, User_Module, company, NightAuditLog, enviro |
| also | RoomBlock, KClStk, DepOpStk (mall/department closing stock) |
| also | DMEPABX.mdb tables: EPABX_IN etc. (Jet, not SQL Server) |
| also | SaleTransfer.mdb (staging for data transfer between sites) |

## B. Key column evidence (from decompiled SQL, verbatim)
- userMast: USER_NAME, PASSWD (obfuscated), LABEL, ActiveYN, ShortName, AllowDtChng
- GuestFolio: DocId, Vdate(ChkInDate), Depdate, NoDays/nodays
- RoomOcc: DocId, RoomNo, RoomCat, chkoutdate, Depdate, type ('C','O' states)
- RoomMast: Code, Type('RO'), roomStat ('D' dirty), LogSite_Code
- PayCharge: DocId, Sno, Vtype, VNo, Vdate, PayCode, PayType, AmtCr, AmtDr, RoomNo,
  FolioNo, Bill_No, TaxPer, OnAmt, Split, SettleDate, U_Name, U_EntDt, U_AE ('A/E/D'),
  LogSite_Code (from BillPrint.ttx field list)
- Enviro: ncur (business date), ImprestAmount, KOTAtNightAudit, POSBillAtNightAudit, LogSite_Code
- NightAuditLog: DateChngFrom, DateChngTo, StartNightAudit, EndNightAudit, Site_Code,
  U_AE, U_Name, U_EntDt, LogSite_Code
- eInvoiceBill1: UserGSTIN, DocId, TranDtls_*, DocDtls_*, SellerDtls_Gstin, ... (GST e-invoice)
- SunTranH/SunTran: DocId, Sno, Vtype, VNo, Vdate, PartyCode, SunCode, ROff, RestCode,
  SunAppDate, RevCode
- Voucher_Type: V_Type, Category ('PurchBill','EXPENT',...), LogSite_Code
- Multi-site pattern: LogSite_Code + Site_Code columns on nearly every table.

## C. Naming/architecture conventions
- Prefix groups by module: Fa* (Finance), fd/Fd* (Front Office), Rs/RsTouch (POS),
  Hall* (Banquet), Mem* (Membership), Pr/pr (Payroll), Tel* (EPABX), HK/H (Housekeeping).
- PKs often named 'aaaaa<Table>_PK' (e.g. aaaaaPayCharge_PK, aaaaaStock_PK — from error log).
- Audit columns U_AE ('A' Add / 'E' Edit / 'D' Delete), U_Name, U_EntDt on transaction tables.
- DocId = varchar(21) document identity (Site prefix + Vtype + VNo pattern).
- Business date per site in Enviro.ncur, not server date.

## D. Views
VIEWLEDGER, ViewSubgroup, ViewLedger(2) — [VERIFIED-VB6]; full view list requires live DB.

## E. Stored procedures / triggers
- Application posts via inline ADODB SQL and BeginTrans/CommitTrans — almost no SP calls
  found in code (only runtime CREATE TABLE for eInvoice tables; 3 'create trigger' and
  1 'create proc' string hits are inside vendored SQL snippets, not application calls).
- [UNKNOWN] Server-side objects: verify against sys.objects once DB reachable.
