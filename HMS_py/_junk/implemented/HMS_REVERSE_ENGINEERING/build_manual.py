"""Build HMS_Complete_Reverse_Engineering_Manual.docx from verified evidence."""
from docx import Document
from docx.shared import Pt, Inches
from docx.enum.section import WD_ORIENT

doc = Document()
doc.styles["Normal"].font.name = "Calibri"
doc.styles["Normal"].font.size = Pt(10.5)

def H(t, lvl=1):
    doc.add_heading(t, level=lvl)

def P(t, bold=False):
    p = doc.add_paragraph()
    r = p.add_run(t)
    r.bold = bold
    return p

def B(t):
    doc.add_paragraph(t, style="List Bullet")

def NUM(t):
    doc.add_paragraph(t, style="List Number")

def CODE(t):
    p = doc.add_paragraph()
    r = p.add_run(t)
    r.font.name = "Consolas"
    r.font.size = Pt(8.5)
    return p

# ---------- Cover ----------
H("HMS - Hotel Management System", 0)
P("Complete Reverse-Engineering Manual", bold=True)
P("Legacy system: Visual Basic 6 MDI application + SQL Server 2008 R2 (MOONData2627)")
P("Analysis date: 2026-09-28. Evidence sources: decompiled HMS.exe (EXTRAS.text 54 MB), "
  "runtime error logs, Analysis.ini, Crystal Reports .ttx schemas, folder/file inventory.")
P("Safety: analysis was READ-ONLY. No HMS database data was modified, no binary altered, "
  "no passwords stored (all credentials masked as ********).")

# ---------- 1 Executive Summary ----------
H("1. Executive Summary")
B("HMS is a single 28.9 MB VB6 MDI executable (HMS.exe) covering 15 modules from Analysis.ini: "
  "Finance, Main Setup, Reservation, Front Office, House Keeping, Inventory, Point Of Sale, "
  "Banquet, Night Audit, HR & PayRoll, EPABX, Messaging, Members Mgmt, Sale & Marketing, "
  "Mall Management.")
B("351 VB6 forms/classes/modules recovered via decompilation; no original source exists on disk "
  "(.rar archives contain only EXEs and .mdb copies) - source recovery from .frm is BLOCKED.")
B("Database MOONData2627 on LOCALHOST (SQL Server 2008 R2, bundled data folder). In this copy the "
  "MDF/LDF files are absent, so live DB metadata queries are BLOCKED; table inventory was "
  "reconstructed from the application's own SQL with usage-weighted evidence.")
B("Business logic lives in VB6 form events with inline ADODB SQL and client-side transactions; "
  "stored procedures are not called by the application. Night Audit is the central daily-close "
  "engine (mdlNightAudit) and is fully documented from code.")
B("9 documented bugs incl. a hardcoded vendor password (BUG-008) and counter-desync duplicate-key "
  "crashes (BUG-003/004).")

# ---------- 2 System Architecture ----------
H("2. System Architecture")
CODE("""HMS.EXE (VB6 MDI: MDIForm1)
|-- Login (userMast/user1/module/MenuHelp/company) -> session: user, rights 'AEDP',
|   LogSite_Code, business date (Enviro.ncur)
|-- MDI menus (INI key 9) -> 15 modules -> fd*/res*/Rs*/Hall*/Mem*/Pr*/Tel*/HK*/Fa* forms
|      |-- business logic in form events + libs (MainLib/FaLib/Hotlib/TopBarLib)
|      '-- ADODB inline SQL, BeginTrans/CommitTrans -> SQL Server MOONData2627
|-- Crystal Reports 524 .rpt/.ttx via INI Reports path
|-- Jet .mdb side stores: DMEPABX.mdb, Fadata.mdb, Temp.Mdb, SaleTransfer.mdb
|-- ACR smart-card DLLs, Godrej door-lock, MSCOMM32 (EPABX serial)""")
P("Full details: 22_Final_Manual/HMS_SYSTEM_ARCHITECTURE.md (evidence-tagged).")

# ---------- 3 Installation / Environment ----------
H("3. Installation / Environment")
B("Portable deployment rooted at C:\\PENDRIVE\\HMS (this analysis copy mirrors it).")
B("Components: HMS.exe; HMS old.exe (2023); HMSGSTzzz (2).exe (2023); Analysis.ini; "
  "Data\\MSSQL10_50.MSSQLSERVER (SQL 2008 R2 data dir - DATA/Backup empty in this copy); "
  "Temp\\*.mdb; Reports\\ (524 files); Image\\ (IdProof, PurchBill); pic\\; ACR/serial DLLs; "
  "GSTR1 Excel template; tax.txt; logs (ErrorLog.Log etc.).")
B("Startup enforces Windows short-date format dd/MMM/yyyy via registry "
  "HKCU\\Control Panel\\International\\sShortDate and asks for reboot when changed [VERIFIED-VB6].")

# ---------- 4 Configuration ----------
H("4. Configuration (Analysis.ini)")
CODE("""[HMS]
1=LOCALHOST            SQL Server host
2=...\\Reports          Crystal Reports folder
3=...\\Temp             Temp (Jet .mdb side stores)
4=Prn                  printer flag [INFERRED]
5=C:\\Backup            backup destination
6=MOONData2627         database name
7=KK                   site/property code [INFERRED]
8=Bareilly             property city [INFERRED]
9=&Finance#&Main Setup#...#Mall Management#   menu hierarchy (#-delimited, & accelerator)
10=...\\Image           image folder""")
P("Connection strings built at runtime (decompiled lines 9868-9879): SQLNCLI.1 with "
  "User ID/Password from DB-login form; MSDataShape/SQLOLEDB.1; Jet 4.0 for DMEPABX.mdb.")

# ---------- 5 Login flow ----------
H("5. Login & Security Flow [VERIFIED-VB6]")
NUM("Read Analysis.ini; abort with 'S/W ini File Missing' if absent.")
NUM("First run: if 'select COUNT(*) from userMast' is 0 -> seed SA user (PASSWD='\\', LABEL=1) "
    "and 'insert into user1(USER_NAME,FORM_CODE,PARAM_STR) select SA,code,AEDP from module'.")
NUM("User lookup 'SELECT * FROM USERMAST WHERE USER_NAME=...' -> 'Invalid User' if none.")
NUM("PASSWD decrypted (Proc_4_28_EE06F8) and compared UCase-to-UCase -> 'Invalid Password'.")
NUM("ActiveYN='N' -> 'This User Is Not Currently Active'.")
NUM("Load rights: 'SELECT User1.* FROM User1 LEFT JOIN User_Module ON User_Module.SrNo=User1.SrNo "
    "WHERE User1.User_Name=...'; PARAM_STR 'AEDP' = Add/Edit/Delete/Print per form code.")
NUM("Company pick: 'Select * from company [where comp_code in (select Distinct compcode from "
    "MenuHelp where username=...)] order by STart_dt Desc' (filter skipped for SA); End_dt validity.")
P("SECURITY FLAG: CmdLogin_Click (Banquet availability) accepts hardcoded password 'India12' "
  "[VERIFIED-VB6] -> BUG-008, recorded not fixed.")

# ---------- 6 Modules & screens ----------
H("6. Module Overview & Screen Inventory")
P("351 decompiled objects grouped into modules; ~300 are screens. The full per-screen register "
  "(ID, module, form, SQL mapping, evidence) is in MASTER_SCREEN_INVENTORY.xlsx "
  "(22_Final_Manual). Key forms per module:")
mods = {
 "Finance": "FaVoucher/FaVrEnt/FaGrEnt (vouchers), FaAdjust, FaChqClear, TDS set, Tally export, AccountMerg",
 "Main Setup": "UserMast, UserPermission, frmCompany, frmEnviro, frmYearEnd, CompMast, job scheduler",
 "Reservation": "RrRoomReservation (Booking table), resRoomNo/resRoomType/resGroup, FrmReservationStatus, FrmBookingInquiry",
 "Front Office": "fdWalkInEntry, fdCheckIn, fdDisplayFolio(Summ), fdPostChrg, fdPaymentCharge, fdRoomChange, fdCheckOut, FdGrpCheckOut, FdReSetlement, fdAmendEntry, GuestProfile",
 "House Keeping": "HHouseKeeping, HKRoomBlock, HKIssRec, FrmHouseStatus, FrmMeterReading, HRoomCheckOutClearance",
 "Inventory": "FrmItemMast(+Raw), FrmStockTransfer, Godown, kClStk/DepOpStk, PIndent/pPBill/pPOrder/pGIss",
 "Point Of Sale": "RsKOTEntry(+Touch), RsSaleBill(Split), POSBillPrint/Reprint, RsTableMast, FrmPOSBillDeletion/Recycle",
 "Banquet": "HallBooking, HallBill(Estimate), HallAcPostChrg, HallMenuCatalog, CateringBooking, BanqAvailability",
 "Night Audit": "mdlNightAudit engine, frmReNightAudit, FrmNAMessageA/B/C",
 "HR & Payroll": "PrEmployee, prAttend/prAttend1, prHoliday, prOverTime, PrLoan, prSalCreate",
 "EPABX": "TelCallEntry, TelExtensionMast, TelCallCode/Type/ControlMast (Jet DMEPABX.mdb)",
 "Messaging": "SMSModule, FrmSMSEnviro, FrmSmsCenterSettings, MobWebAPI, EmailSMSForward",
 "Members Mgmt": "MembershipMast, MemFacilityEntry/Billing, MemRenewalEntry, SmartCard* cash cards",
 "Sale & Marketing": "salmarCompProfile, FrmBusinessSrc, FrmMarketSeg",
 "Mall Management": "ModuleDoorLock, Godrej lock settings, DepOpStk/KClStk shop stock",
}
for m, s in mods.items():
    B(m + ": " + s)

# ---------- 7 Front Office ----------
H("7. Front Office - Deep Analysis [VERIFIED-VB6]")
P("Lifecycle: Reservation -> Arrival/Walk-in -> Check-In -> Stay -> Posting -> Payment -> "
  "Discount -> Folio -> Check-Out -> Settlement -> Invoice -> Night Audit.")
P("Check-In writes (exact columns from decompiled inserts):")
CODE("Insert Into GuestFolio (Docid,Vtype,FolioNo,Site_Code,Vprefix,Vdate,GuestProf,Name,Add1,Add2,City,\n"
     " NoDays,SplitFolio,Remarks,RefBookNo,Authorisation,Company,TravelAgent,PurVisit,Nationality,\n"
     " ArrFrom,Destination,TravelMode,TclFac,Remark,RoDisc,RSDisc,BookingDocId,U_Name,U_EntDt,U_AE,\n"
     " GroupCode,MarketSeg,BussSource,DepDate,mfolioNo,[Comp],MFolioNoDocid,LOGSITE_CODE,BookingSno)")
CODE("Insert Into RoomOcc (DocID,Sno,FolioNo,VType,Site_Code,vPrefix,GuestProf,RoomCat,RoomType,RoomNo,\n"
     " RateCode,RoomRate,ChkInDate,ChkInTime,aDult,Children,DepDate,DepTime,Type,U_Name,U_EntDt,U_AE,\n"
     " Plancode,PlanAmt,IncInRate,LOGSITE_CODE,PlanDisc,PlanDiscAmt,PlanDiscAppOn,RRTaxInc,\n"
     " RRServiceChrg,ChngDate,RoomTarrif,RackRate,RoomTaxStru)")
P("Check-Out: 'Update RoomOcc set CHKOUTDATE=..., CHKOUTTIME=..., IncInRate=..., PlanDisc=...'.")
P("Amendment: 'Insert into GuestFolioAmend (FolioNo,...,OldDepDate,OldDepTime,DepDate,DepTime,...)' "
  "+ 'Update GuestFolio Set DepDate='.")
P("Folio/room merge: 'UPDATE GuestFolio SET mFolioNoDocId=..., mFolioNo='.")
P("Posting: PayCharge rows (AmtDr charge / AmtCr payment), history PayChargeH, audit PayChargeLog.")
P("Cancellation: BookingCancelDetails(Advance, CancelAmt, CancellationMode).")
P("Full doc: 05_Front_Office/FRONT_OFFICE_LIFECYCLE.md.")

# ---------- 8 Night Audit ----------
H("8. Night Audit [VERIFIED-VB6]")
NUM("Pre-checks: Enviro.KOTAtNightAudit / POSBillAtNightAudit force pending KOT/POS bills.")
NUM("Transaction 1: post revenue & expenses (RoomChrgDueAc, ExpSheet vType HTEXP/HTSAL) to "
    "finance ledger via posting helper; CommitTrans.")
NUM("Room roll: occupied rooms with roomocc.type not in ('C','O') -> 'Update RoomMAst set "
    "roomStat=D' (dirty).")
NUM("Due-out extension: folios with chkoutdate NULL and DepDate <= audit date get DepDate+1, "
    "nodays recount (RoomOcc + GuestFolio updates).")
NUM("Date roll: 'Update enviro set ncur=<+1 day>, ImprestAmount=0'; NightAuditLog row inserted.")
NUM("Token reset: 'Update Depart Set CurTokenNo=0,CurTokenNoKOT=0 where AutoResetToken=Yes'.")
NUM("Split-bill staging cleanup (POS_SBill, SplitSale1/2, SplitStock, SplitedSunTran for "
    "VType='B'+DeptShortName) + VOUCHER_PREFIX renumber.")
NUM("Failure: RollbackTrans + 'There is some problem in Last date Settlement Or Charge Posting...'; "
    "business date unchanged.")
P("Night Audit was NOT executed during analysis (safety rule). Doc: 10_Night_Audit/NIGHT_AUDIT_FLOW.md.")

# ---------- 9 Database ----------
H("9. Database Architecture & Table Dictionary")
P("30+ core tables documented in MASTER_DATABASE_DICTIONARY.xlsx with PK/FK evidence from code; "
  "top usage: Depart(1378), PayCharge(873), GuestFolio(869), GuestProf(840), RevMast(835), "
  "SubGroup(741), ItemMast(618), Voucher_Type(563), Stock(473), RoomOcc(457).")
P("Conventions: DocId varchar(21) identity; U_AE/U_Name/U_EntDt audit columns; LogSite_Code + "
  "Site_Code multi-property scoping; numbering via Voucher_Prefix/LASTVOU; PKs named aaaaa<Table>_PK.")
P("Relationship map (Mermaid): 18_Database/DATABASE_RELATIONSHIP.md.")
P("[UNKNOWN/BLOCKED] Live sys.tables/sys.procedures/sys.triggers verification - DB files absent "
  "in this copy. LocationMast is referenced but missing (BUG-001).")

# ---------- 10 SQL mapping ----------
H("10. Frontend -> Backend -> Database Mapping (examples)")
rows = [
 ("Reservation save", "RrRoomReservation Save", "Insert Into Booking (...56 cols); BookingMore; GrpBookingDetails", "Booking"),
 ("Check-In", "fdCheckIn Save", "Insert GuestFolio; Insert RoomOcc; Insert GuestFolioProfDetail", "GuestFolio/RoomOcc"),
 ("Room/plan change", "fdRoomChange", "Update RoomOcc Set PlanCode...; Update GuestMessage set RoomNo", "RoomOcc"),
 ("Charge posting", "fdPostChrg", "Insert/update PayCharge (PayCode,PayType,AmtDr/AmtCr,TaxPer,OnAmt)", "PayCharge"),
 ("Payment/Settlement", "FdReSetlement", "PayCharge SettleDate/ModeSet/Bill_No; AmtCr rows", "PayCharge"),
 ("Check-Out", "FdCheckOut", "Update RoomOcc set CHKOUTDATE/CHKOUTTIME", "RoomOcc"),
 ("Night Audit", "mdlNightAudit", "see section 8", "many"),
 ("GST billing", "eInvoice", "CREATE TABLE eInvoiceBill1(...); JSON e-invoice build", "eInvoiceBill1"),
]
P("Screen -> Form/event -> SQL -> Table")
for r in rows:
    B(" - ".join(r))

# ---------- 11 Reports ----------
H("11. Reports")
P("524 Crystal Reports files. Mapped highlights: BillPrint (PayCharge folio fields via .ttx), "
  "Advance Reciept, Cashier* (shift), ChkIn/ChkOutRegister, ArrDepReg, DailyReport/Day23RoomAvail "
  "(night audit pack), NightAuditReport/I, BookingDetail/BOOKINGPrint, CompanyAnalysis/CompanySumm, "
  "GST (EGST.rar + GSTR1 template + eInvoice tables). Numbering/format via PrintFormats table.")
P("[UNKNOWN] per-report SQL: .rpt binaries not parsed in this phase; .ttx field lists captured.")

# ---------- 12 QA / Bugs ----------
H("12. Known Bugs (recorded, NOT fixed)")
for b in [
 "BUG-001 MEDIUM: LocationMast table missing -> Location Master cannot load (FaLog 2019, ErrorLog 2017).",
 "BUG-002 LOW: SundryType.AppDate invalid ORDER BY with GROUP BY (ErrorLog Jul 2017 x4).",
 "BUG-003 HIGH: aaaaaPayCharge_PK duplicate key during posting (Sep 2017) - counter desync.",
 "BUG-004 MEDIUM: aaaaaStock_PK duplicate key (Sep 2018).",
 "BUG-005 MEDIUM: Crystal 'File not found'/'Invalid directory' at print time - report path drift.",
 "BUG-006 LOW: schema drift 'Invalid column name FreeItemAllow' (2019), 'RefBookNo' (2020).",
 "BUG-007 MEDIUM: 'Cannot start more transactions on this session' - nested transactions (Sep 2017 x8).",
 "BUG-008 HIGH/SECURITY: hardcoded password India12 opens Banquet availability (decompiled binary).",
 "BUG-009 LOW(collective): dozens of unhandled 3021/3265/91/13 errors 2017-2026 (EOF guards, drift).",
]:
    B(b)

# ---------- 13 Modernization ----------
H("13. Modernization Mapping (blueprint only - no rewrite performed)")
for m in [
 "VB6 MDI + menu (INI key 9 + MenuHelp) -> modern web/desktop shell with role-based menus",
 "userMast/user1 PARAM_STR 'AEDP' -> auth service + per-screen permission claims",
 "fd*/Rs*/Hall* forms -> module UIs preserving field-level validation observed in code",
 "ADODB inline SQL -> repository layer; keep exact column lists to preserve behavior",
 "BeginTrans/CommitTrans client-side -> server-side transactions/SPs (recommended hardening)",
 "Enviro.ncur business date -> per-property operating-date service",
 "Voucher_Prefix/LASTVOU -> centralized numbering service (fixes BUG-003/004 class)",
 "Crystal Reports .rpt -> modern reporting engine reusing .ttx field maps",
 "Jet .mdb side stores (DMEPABX etc.) -> SQL tables or dedicated service",
 "Analysis.ini -> structured config + secrets vault (remove hardcoded credentials)",
]:
    B(m)
P("Rule honored: business rules preserved as documented; behavior change requires evidence first.")

# ---------- 14 Evidence & unknowns ----------
H("14. Evidence Levels & Unknown Areas")
P("Levels used: VERIFIED-VB6 (decompiled code), VERIFIED-SQL (log/DB evidence), VERIFIED-CONFIG "
  "(INI/files), VERIFIED-UI (not available this session - no GUI interaction performed), "
  "INFERRED (marked inline), UNKNOWN (listed below).")
for u in [
 "Live DB metadata (tables/views/SP/triggers/FKs) - BLOCKED (no MDF/LDF in this copy).",
 "Original .frm/.bas source - BLOCKED (does not exist in any located archive).",
 "Runtime screen verification/screenshots - requires a working GUI session with HMS.exe and DB.",
 "INI key 4 'Prn' semantics, key 7 'KK' meaning - INFERRED, unconfirmed.",
 "Night Audit full validation sequence before posting - partially reconstructed.",
 "Per-report SQL definitions inside .rpt binaries.",
]:
    B(u)

# ---------- 15 Appendix ----------
H("15. Appendix - Generated Artifacts")
for a in [
 "00_Project_Discovery: environment.txt, software_inventory.txt, ini_analysis.txt, project_tree.txt, database_connection.txt",
 "01_Login_Security/LOGIN_FLOW.md",
 "05_Front_Office/FRONT_OFFICE_LIFECYCLE.md",
 "10_Night_Audit/NIGHT_AUDIT_FLOW.md",
 "17_Reports/REPORTS_ANALYSIS.md",
 "18_Database/DATABASE_INVENTORY.md, DATABASE_RELATIONSHIP.md",
 "19_VB6_Logic/vb6_form_inventory.md",
 "21_Testing/BUG_REGISTER.md",
 "22_Final_Manual/HMS_SYSTEM_ARCHITECTURE.md, MASTER_SCREEN_INVENTORY.xlsx, MASTER_DATABASE_DICTIONARY.xlsx",
]:
    B(a)

import os
_OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "22_Final_Manual")
os.makedirs(_OUT, exist_ok=True)
doc.save(os.path.join(_OUT, "HMS_Complete_Reverse_Engineering_Manual.docx"))
print("Manual saved OK")
