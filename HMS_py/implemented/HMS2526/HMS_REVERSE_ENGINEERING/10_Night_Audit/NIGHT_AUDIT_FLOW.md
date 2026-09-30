# HMS NIGHT AUDIT FLOW  [VERIFIED-VB6]

Primary source: EXTRAS.text — mdlNightAudit posting routine (~lines 228700–228950,
addr 1F5EDF3–1F70BE5), NightAuditLog insert at line 228852, MDI menu handlers
NightAuditLR_Click (line 31), NightAuditoR_Click (line 57), NightAuditRR_Click (line 426).

## Menu entry points (MDI)
- `NightAuditoR_Click` first reads Enviro: `Select KOTAtNightAudit,POSBillAtNightAudit
  from Enviro where logsite_code='<site>'`. If `KOTAtNightAudit='Yes'` it forces pending
  KOT processing; same check for POS bills — before audit can run.
- Opens `frmReNightAudit` when re-audit/preview is requested (line 112CABB).

## Core posting routine (mdlNightAudit, wrapped in BeginTrans/CommitTrans/RollbackTrans)
Executed inside transactions; on error → RollbackTrans + error MsgBox + business date NOT advanced.
All statements below are [VERIFIED-VB6] (verbatim SQL from the dump).

### A. Revenue / expense posting to Finance
- Room charges due: iterates records with `RoomChrgDueAc`, `CreditAmt`, `AcCode`;
  builds Dr/Cr voucher rows via `Proc_6_140_12D68DC` (ledger posting helper), flag 'A' (Add).
- Hotel expenses: `SELECT ACCODE FROM REVMAST WHERE CODE='<CASH_AC>'`;
  `Select Amount as Amt,AgAC,VType,Remarks as Narration From ExpSheet where vdate=<date>
   Order By VType,Vno` → posts vouchers for vType 'HTEXP' and 'HTSAL' rows.
- CommitTrans closes the revenue phase (loc_1F6FEAC).

### B. Room status roll
- `SELECT RoomMast.Code AS RoomNo FROM (((((RoomMast RIGHT JOIN RoomOcc ON RoomMast.Code=RoomOcc.RoomNo)
   LEFT JOIN GuestFolio ON RoomOcc.DocId=GuestFolio.DocId)
   LEFT JOIN GuestProf ON GuestFolio.GuestProf=GuestProf.Code)
   LEFT JOIN SubGroup ON GuestFolio.Company=SubGroup.SubCode)
   LEFT JOIN RoomCat ON RoomOcc.RoomCat=RoomCat.Code)
   LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS
   WHERE roomocc.type not in ('C','O') AND ROOMMAST.TYPE='RO' AND RoomMast.LogSite_Code='<site>'`
  → occupied rooms not yet checked-out are set to Dirty:
  `Update RoomMAst set roomStat='D' WHERE CODE='<room>' AND LOGSITE_CODE='<site>'`
  (Room status codes: 'D' Dirty; type 'C'/'O' = checked-out/clean states excluded.)

### C. Due-out extension (auto-departure-date roll)
- `select DocId,Depdate,VDate as ChkInDate,NoDays from GuestFolio where Docid in
   (Select DocId from RoomOcc where chkoutdate is NULL)`
- For each folio whose `DepDate <= audit date`:
  - `Update RoomOcc Set Depdate=<new>,U_EntDt=<now>,U_AE='E' Where Docid='<id>'`
  - `Update GuestFolio Set nodays=<diff>,Depdate=<new> Where Docid='<id>'`
  - NoDays = DateDiff(d, ChkInDate, DepDate+1) → nights recount.

### D. Business date roll + audit log
- `Update enviro set ncur=<next date>, ImprestAmount=0 where Logsite_code='<site>'`
  (ncur = current business date; Imprest cash reset)
- In-memory: MemVar_1F810EC = business date + 1
- `Insert Into NightAuditLog(DateChngFrom,DateChngTo,StartNightAudit,EndNightAudit,
   Site_Code,U_AE,U_Name,U_EntDt,LogSite_Code) Values(...)` — U_AE='A', user, GetDate().
- Token counters: `Update Depart Set CurTokenNo=0,CurTokenNoKOT=0 where AutoResetToken='Yes'
   And Logsite_code='<site>'`
- Split-bill staging cleanup for split departments (`AutoSplit='Yes'`, VType='B'+ShortName):
  `Delete From POS_SBill / SplitSale1 / SplitSale2 / SplitStock / SplitedSunTran
   Where VType='B<dept>' And LogSite_Code='<site>' And VDate=<audit date>`
- Voucher serial renumber:
  `UPDATE VOUCHER_PREFIX SET START_SRL_NO=(Select IsNull(Max(VNo),0) From SplitSale1
   Where VType='B<dept>' ...) WHERE DATE_FROM=... AND DATE_TO=... AND V_TYPE='...'`
- Final CommitTrans (loc_1F70A34).

### E. Failure path
- Any error → RollbackTrans; MsgBox "There is some problem in Last date Settlement Or Charge
  Posting ... Contact to Analysis."; business date NOT advanced (enviro.ncur unchanged).

## Tables touched by Night Audit
Enviro, RevMast, ExpSheet, Ledger (via posting helper), RoomMast, RoomOcc, GuestFolio,
GuestProf, SubGroup, RoomCat, GUESTSTAT, NightAuditLog, Depart, POS_SBill, SplitSale1,
SplitSale2, SplitStock, SplitedSunTran, VOUCHER_PREFIX.

## Safety note
Night Audit was NOT executed during this analysis (production-data rule).
Flow verified from code only. Runtime verification requires a test database.
[UNKNOWN] Stored procedures/triggers on the DB side (live DB not reachable in this session).
