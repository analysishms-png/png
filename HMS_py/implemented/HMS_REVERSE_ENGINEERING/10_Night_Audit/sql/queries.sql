-- 10_Night_Audit — SQL statement inventory
-- Source: verbatim VB6 string literals, EXTRAS.text (mdlNightAudit ~L228700-228950,
--         menu gate L480407, handlers L31/57/426). Evidence: [VERIFIED-VB6].
-- WARNING: NONE of these were executed. Night Audit must never run on production data.

-- ============================================================
-- 0. PRE-RUN GATES (menu click)                        [L480407]
-- ============================================================
SELECT KOTAtNightAudit, POSBillAtNightAudit
  FROM Enviro
 WHERE logsite_code = '<MemVar_1F81078>';
-- flags evaluated by Proc_6_37_E618F4 + Proc_96_46_10187AC / Proc_96_45_11033E4
-- (pending KOT / POS work must be clear before the Process proceeds)  [INFERRED branch]

-- ============================================================
-- PHASE A — REVENUE / EXPENSE POSTING TO FINANCE
-- ============================================================
SELECT ACCODE FROM REVMAST WHERE CODE = '<CASH_AC>';

SELECT Amount AS Amt, AgAC, VType, Remarks AS Narration
  FROM ExpSheet
 WHERE vdate = <date>
 ORDER BY VType, Vno;
-- rows with vType 'HTEXP' and 'HTSAL' are posted as ledger vouchers through
-- Proc_6_140_12D68DC (flag 'A' = add). Room-charge due rows iterate with
-- RoomChrgDueAc, CreditAmt, AcCode -> Dr/Cr voucher construction.  [VERIFIED-VB6]
-- CommitTrans closes phase A (loc 1F6FEAC).

-- ============================================================
-- PHASE B — ROOM STATUS ROLL
-- ============================================================
SELECT RoomMast.Code AS RoomNo
  FROM ((((RoomMast
    RIGHT JOIN RoomOcc   ON RoomMast.Code = RoomOcc.RoomNo)
    LEFT JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId)
    LEFT JOIN GuestProf  ON GuestFolio.GuestProf = GuestProf.Code)
    LEFT JOIN SubGroup   ON GuestFolio.Company = SubGroup.SubCode)
    LEFT JOIN RoomCat    ON RoomOcc.RoomCat = RoomCat.Code)
    LEFT JOIN GUESTSTAT  ON GUESTSTAT.CODE = GUESTPROF.GUESTSTATUS
 WHERE roomocc.type NOT IN ('C','O')
   AND ROOMMAST.TYPE = 'RO'
   AND RoomMast.LogSite_Code = '<site>';

UPDATE RoomMAst SET roomStat = 'D'
 WHERE CODE = '<room>' AND LOGSITE_CODE = '<site>';
-- NOTE: joins GUESTSTAT (0-row table) -> dead join, harmless.  [VERIFIED-SQL]

-- ============================================================
-- PHASE C — DUE-OUT EXTENSION (auto departure-date roll)
-- ============================================================
SELECT DocId, Depdate, VDate AS ChkInDate, NoDays
  FROM GuestFolio
 WHERE Docid IN (SELECT DocId FROM RoomOcc WHERE chkoutdate IS NULL);
-- for each folio with DepDate <= audit date:
UPDATE RoomOcc
   SET Depdate = <new>, U_EntDt = <now>, U_AE = 'E'
 WHERE Docid = '<id>';

UPDATE GuestFolio
   SET nodays = <diff>, Depdate = <new>
 WHERE Docid = '<id>';
-- NoDays = DateDiff(d, ChkInDate, DepDate + 1)

-- ============================================================
-- PHASE D — BUSINESS DATE ROLL + CLEANUP + AUDIT LOG
-- ============================================================
UPDATE enviro
   SET ncur = <next date>, ImprestAmount = 0
 WHERE Logsite_code = '<site>';

INSERT INTO NightAuditLog (DateChngFrom, DateChngTo, StartNightAudit, EndNightAudit,
       Site_Code, U_AE, U_Name, U_EntDt, LogSite_Code)
VALUES (<from>, <to>, <start>, <end>, '<site>', 'A', <user>, GetDate(), '<site>');
-- live data: NightAuditLog = 134 rows  [VERIFIED-SQL]

UPDATE Depart
   SET CurTokenNo = 0, CurTokenNoKOT = 0
 WHERE AutoResetToken = 'Yes' AND Logsite_code = '<site>';

-- split-bill staging purge (per department with AutoSplit='Yes', VType='B'+ShortName):
DELETE FROM POS_SBill       WHERE VType = 'B<dept>' AND LogSite_Code = '<site>' AND VDate = <audit date>;
DELETE FROM SplitSale1      WHERE VType = 'B<dept>' AND LogSite_Code = '<site>' AND VDate = <audit date>;
DELETE FROM SplitSale2      WHERE VType = 'B<dept>' AND LogSite_Code = '<site>' AND VDate = <audit date>;
DELETE FROM SplitStock      WHERE VType = 'B<dept>' AND LogSite_Code = '<site>' AND VDate = <audit date>;
DELETE FROM SplitedSunTran  WHERE VType = 'B<dept>' AND LogSite_Code = '<site>' AND VDate = <audit date>;
-- live data: all five = 0 rows (staging normally empty after each audit)  [VERIFIED-SQL]

UPDATE VOUCHER_PREFIX
   SET START_SRL_NO = (SELECT IsNull(MAX(VNo), 0) FROM SplitSale1
                        WHERE VType = 'B<dept>' AND ...)
 WHERE DATE_FROM = ... AND DATE_TO = ... AND V_TYPE = '...';
-- final CommitTrans (loc 1F70A34)

-- ============================================================
-- PHASE E — FAILURE PATH (not SQL, control flow)
-- ============================================================
-- any error -> RollbackTrans; MsgBox:
--   "There is some problem in Last date Settlement Or Charge Posting ... Contact to Analysis."
-- business date NOT advanced (enviro.ncur unchanged by rollback).

-- ============================================================
-- REVERSE / LOG READS
-- ============================================================
-- frmReNightAudit selects NightAuditLog by DateChngFrom/DateChngTo (row contract above)
--   -> body [UNKNOWN], not fully traced.
-- Night Audit Log report: rFomRepView over NightAuditLog.
-- Charges Remove Log report: rFomRepView over PayChargeLog (253 rows).

-- ============================================================
-- NOT IDENTIFIED (spec §11)
-- ============================================================
-- Reverse Night Audit UPDATE statements -> SQL NOT YET IDENTIFIED
--   (verify by tracing frmReNightAudit on a TEST database only).
-- GST/GSTR report queries -> live inside .rpt files (17_Reports/REPORTS_DEEP_CATALOG.md).
-- Stored procedures: 3 utility SPs exist (GetFieldNameAs, GetFieldNameAsStr, Proc_WebService) but the
-- VB6 app never calls them (0 refs / 0 EXEC in 995,855-line listing). Triggers = 0, FKs = 0.  [VERIFIED-SQL]
