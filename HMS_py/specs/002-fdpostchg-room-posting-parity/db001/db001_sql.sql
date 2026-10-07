-- =====================================================================
-- DB-001: fdPostChrg room-charge posting — validated SQL scripts
-- Task:   DB-001 (plan §5) — feeds PY-001..011
-- Source: fdPostChrg.frm (root copy, PROJECT_REPAIR - Copy\),
--         Hotlib.bas (root copy) lines 617-627 / 675-706 / 786-815
-- DB:     MOONData2627 (SQL Server 2008 R2 10.50.1600.1)
-- Validated live 2026-10-04 via HMS_py.core.db.connect() — see
--         validation_log.md for row counts, samples, plans.
-- Placeholders: pyodbc "?" (positional). Param order listed per script.
-- All UPDATEs MUST run inside the caller transaction (VB6 BeginTrans ..
-- CommitTrans/RollbackTrans, Hotlib.bas 770/817/830).
-- =====================================================================


-- ---------------------------------------------------------------------
-- SCRIPT 1a — Eligibility + room-level duplicate exclusion
-- Source: fdPostChrg.frm root lines 242-250 (batch path; identical
--         SELECT header at 270/293/326/354)
-- Params: @BDATE  (business date, compared to ROOMOCC.ChkInDate)
--         @SITE   (2-char site code, e.g. 'KK')
--         @VDATE  (posting date, compared to PAYCHARGE.VDATE)
-- Returns: in-house rooms (ChkOutDate IS NULL) not yet charged for
--         @VDATE, with RoomChargeAc/PayCode/TaxStru/Comp_Code/RODISC/
--         COMP/Mfoliono/MfolionoDocid for the posting engine.
-- NOTE:   live column is ChkInDate (decompiled literal "chkinddate"
--         double-d is a decompiler artifact — error 207 live; see log).
--         Trailing predicate qualified ROOMOCC.SITE_CODE (unqualified
--         SITE_CODE is ambiguous in the 4-table join — error 209 live).
-- ---------------------------------------------------------------------
SELECT ROOMOCC.*,
       RevMast.ACCode AS RoomChargeAc,
       RevMast.Code AS PayCode,
       RevMast.TaxStru AS TaxStru,
       GuestFolio.Company as Comp_Code,
       GUESTFOLIO.RODISC,
       GUESTFOLIO.[COMP],
       GUESTFOLIO.Mfoliono,
       GUESTFOLIO.MfolionoDocid
FROM ((ROOMOCC
       LEFT JOIN RoomCat   ON ROOMOCC.RoomCat  = RoomCat.Code)
      LEFT JOIN RevMast    ON RoomCat.RevCode  = RevMast.Code)
      LEFT JOIN GuestFolio ON ROOMOCC.DocId    = GuestFolio.DocId
WHERE ? >= ROOMOCC.ChkInDate            -- @BDATE
  AND ROOMOCC.ChkOutDate IS NULL
  AND ROOMOCC.SITE_CODE = ?             -- @SITE
  AND ROOMOCC.DOCID NOT IN (
        SELECT DISTINCT FOLIONODOCID
        FROM PAYCHARGE
        WHERE VTYPE = 'RC' AND VDATE = ?  -- @VDATE
      )
  AND ROOMOCC.SITE_CODE = ?             -- @SITE (VB6 repeats the guard)


-- ---------------------------------------------------------------------
-- SCRIPT 1b — Already-posted exclusion set (alone)
-- Source: fdPostChrg.frm 245/261/318/344/373 (the NOT IN subquery)
-- Params: @VDATE
-- Python: build the excluded-docid set once per posting run
--         (plan §4 pseudo-code: excl = {r["docid"] ...}).
-- ---------------------------------------------------------------------
SELECT DISTINCT FOLIONODOCID
FROM PAYCHARGE
WHERE VTYPE = 'RC' AND VDATE = ?        -- @VDATE


-- ---------------------------------------------------------------------
-- SCRIPT 1c (variant, single-room path) — ROOMNO-scoped exclusion
-- Source: fdPostChrg.frm 293-324 (master-folio branch, line 318)
-- Same as 1a but the exclusion subquery is also scoped to ROOMNO.
-- Params: @BDATE, @SITE, @VDATE, @ROOMNO, @SITE
-- ---------------------------------------------------------------------
/*
SELECT ROOMOCC.*,
       RevMast.ACCode AS RoomChargeAc,
       RevMast.Code AS PayCode,
       RevMast.TaxStru AS TaxStru,
       GuestFolio.Company as Comp_Code,
       GUESTFOLIO.RODISC,
       GUESTFOLIO.[COMP],
       GUESTFOLIO.Mfoliono,
       GUESTFOLIO.MfolionoDocid
FROM ((ROOMOCC
       LEFT JOIN RoomCat   ON ROOMOCC.RoomCat  = RoomCat.Code)
      LEFT JOIN RevMast    ON RoomCat.RevCode  = RevMast.Code)
      LEFT JOIN GuestFolio ON ROOMOCC.DocId    = GuestFolio.DocId
WHERE ? >= ROOMOCC.ChkInDate            -- @BDATE
  AND ROOMOCC.ChkOutDate IS NULL
  AND ROOMOCC.SITE_CODE = ?             -- @SITE
  AND ROOMOCC.DOCID NOT IN (
        SELECT DISTINCT FOLIONODOCID
        FROM PAYCHARGE
        WHERE VTYPE = 'RC' AND ROOMNO = ?   -- @ROOMNO
          AND VDATE = ?                     -- @VDATE
          AND SITE_CODE = ?                 -- @SITE
      )
*/


-- ---------------------------------------------------------------------
-- SCRIPT 2 — TaxStru derivation (TaxStru join)
-- Source: Hotlib.bas 675-706. Gate: DiplomatYN <> 'Yes' AND
--         RoomTaxStru <> '' AND RRServiceChrg <> 'No' (variants below).
-- TaxMast is NOT a table — it is RevMast aliased (self-join on
-- TaxStru.TaxCode = TaxMast.Code). There is no TaxMast table in
-- MOONData2627 (verified: OBJECT_ID('TaxMast') IS NULL).
-- 4 source variants (branch on RoomTaxStru / RRServiceChrg).
-- ---------------------------------------------------------------------

-- SCRIPT 2A — RoomTaxStru set, RRServiceChrg = 'No'  (Hotlib 684-690)
-- SCH (surcharge) taxes rate-forced to 0 via the CASE.
-- Params: @RoomTaxStru (ROOMOCC.RoomTaxStru), @PayCode (RevMast.Code
--         from eligibility, e.g. 'KKRMCH')
SELECT RevMast.TaxStru,
       RevMast.Name AS RevName,
       TaxMast.Name AS TaxName,
       TaxMast.ACCode AS RoomTaxAc,
       TaxMast.Code as TaxCode,
       Case When TaxMast.Sundry='SCH' Then 0 Else TaxStru.Rate End Rate,
       TaxStru.Limit,
       TaxStru.Limit1,
       TaxStru.Nature,
       TaxStru.CondApp,
       TaxStru.CompOperator
FROM (RevMast
      LEFT JOIN TaxStru ON TaxStru.Code = ?)           -- @RoomTaxStru
      LEFT JOIN REVMAST TaxMast ON TaxStru.TaxCode = TaxMast.Code
Where TaxMast.FIELDTYPE = 'T'
  AND REVMAST.FIELDTYPE = 'C'
  AND RevMast.Code = ?                                  -- @PayCode

-- SCRIPT 2B — RoomTaxStru set, RRServiceChrg <> 'No'  (Hotlib 678-681)
-- Identical to 2A but plain TaxStru.Rate (no SCH CASE).
-- Params: @RoomTaxStru, @PayCode
/*
SELECT RevMast.TaxStru, RevMast.Name AS RevName,
       TaxMast.Name AS TaxName, TaxMast.ACCode AS RoomTaxAc,
       TaxMast.Code as TaxCode, TaxStru.Rate,
       TaxStru.Limit, TaxStru.Limit1, TaxStru.Nature,
       TaxStru.CondApp, TaxStru.CompOperator
FROM (RevMast LEFT JOIN TaxStru ON TaxStru.Code = ?)
      LEFT JOIN REVMAST TaxMast ON TaxStru.TaxCode = TaxMast.Code
Where TaxMast.FIELDTYPE='T' AND REVMAST.FIELDTYPE='C' AND RevMast.Code=?
*/

-- SCRIPT 2C — RoomTaxStru empty, RRServiceChrg = 'No'  (Hotlib 699-703)
-- Join via RevMast.TaxStru instead of @RoomTaxStru.
-- Params: @PayCode
/*
SELECT RevMast.TaxStru, RevMast.Name AS RevName,
       TaxMast.Name AS TaxName, TaxMast.ACCode AS RoomTaxAc,
       TaxMast.Code as TaxCode,
       Case When TaxMast.Sundry='SCH' Then 0 Else TaxStru.Rate End Rate,
       TaxStru.Limit, TaxStru.Limit1, TaxStru.Nature,
       TaxStru.CondApp, TaxStru.CompOperator
FROM (RevMast LEFT JOIN TaxStru ON RevMast.TaxStru = TaxStru.Code)
      LEFT JOIN REVMAST TaxMast ON TaxStru.TaxCode = TaxMast.Code
Where TaxMast.FIELDTYPE='T' AND REVMAST.FIELDTYPE='C' AND RevMast.Code=?
*/

-- SCRIPT 2D — RoomTaxStru empty, RRServiceChrg <> 'No'  (Hotlib 695-696)
-- Identical to 2C but plain TaxStru.Rate.
-- Params: @PayCode
/*
SELECT RevMast.TaxStru, RevMast.Name AS RevName,
       TaxMast.Name AS TaxName, TaxMast.ACCode AS RoomTaxAc,
       TaxMast.Code as TaxCode, TaxStru.Rate,
       TaxStru.Limit, TaxStru.Limit1, TaxStru.Nature,
       TaxStru.CondApp, TaxStru.CompOperator
FROM (RevMast LEFT JOIN TaxStru ON RevMast.TaxStru = TaxStru.Code)
      LEFT JOIN REVMAST TaxMast ON TaxStru.TaxCode = TaxMast.Code
Where TaxMast.FIELDTYPE='T' AND REVMAST.FIELDTYPE='C' AND RevMast.Code=?
*/


-- ---------------------------------------------------------------------
-- SCRIPT 3 — {Site}DISC lookup (room-discount revenue account)
-- Source: Hotlib.bas 617. Posting ABORTS ("Room Disc. A/c Not Defined
--         in Charge Master" / "Charge Room Disc. Not Defined in Charge
--         Master") when this returns no row AND PostRoomDiscSeparately
--         = 'Yes' AND RoDisc > 0.
-- Params: @DiscCode  (site code + 'DISC', e.g. 'KKDISC')
-- Returns: Name, PayCode (aliased Code), AcCode — 0 or 1 row
--         (RevMast.Code is PK).
-- ---------------------------------------------------------------------
Select Name, Code PayCode, AcCode
From RevMast
Where Code = ?                          -- @DiscCode ('{Site}DISC')


-- ---------------------------------------------------------------------
-- SCRIPT 4A — Voucher_Prefix feeding SELECT (serial lookup)
-- Source: Hotlib.bas 803-806. Runs BEFORE the UPDATE inside the same
-- transaction; picks the active RC prefix row for the posting date
-- (latest Date_From <= @VDATE).
-- Params: @SITE, @SITE (LogSite_Code), @VDATE
-- ---------------------------------------------------------------------
Select VT.Number_Method, VP.V_Type, VP.Date_From, VP.Prefix, VP.Start_Srl_No
From Voucher_Type VT
Inner Join Voucher_Prefix VP
   on (VT.V_Type = VP.V_Type AND VT.SITE_CODE = VP.SITE_CODE
       AND VP.LOGSITE_CODE = VP.LOGSITE_CODE)
Where (VP.SITE_CODE = ? AND VP.LOGSITE_CODE = ?)   -- @SITE, @SITE
  and VP.V_Type = 'RC'
  And VP.Date_From <= ?                            -- @VDATE
Order By VP.Date_From DESC

-- ---------------------------------------------------------------------
-- SCRIPT 4B — Voucher_Prefix bump (MUST be inside the PAYCHARGE tx)
-- Source: Hotlib.bas 812-815. VB6 sets Start_Srl_No to the bumped
-- serial (caller computes new serial = Start_Srl_No + 1, or MAX(VNo)+1
-- per the site's numbering convention — plan §4 uses db.next_vno).
-- Params: @StartSrlNo (new serial), @SITE, @SITE (LogSite_Code),
--         @DateFrom (the Date_From of the row returned by 4A —
--         datetime, NOT @VDATE; the VB6 update targets the matched
--         row's Date_From)
-- NOTE:  WHERE covers all 4 PK columns (V_Type, Date_From, Site_Code,
--         LogSite_Code) — exactly one row affected (validated: 1).
-- ---------------------------------------------------------------------
Update Voucher_Prefix
Set Start_Srl_No = ?                    -- @StartSrlNo
Where (SITE_CODE = ? AND LOGSITE_CODE = ?)  -- @SITE, @SITE
  and V_Type = 'RC'
  and Date_From = ?                     -- @DateFrom (from SCRIPT 4A row)


-- ---------------------------------------------------------------------
-- SCRIPT 5 — Race-safe duplicate check (UPDLOCK/HOLDLOCK)
-- Pre-INSERT guard: takes update-intent + range locks on matching
-- PAYCHARGE rows until transaction end, blocking concurrent RC posting
-- for the same (VDATE, FOLIONODOCID). Caller holds the tx open until
-- the PAYCHARGE INSERT commits (same pattern as db.next_vno).
-- Params: @VDATE, @DOCID (the ROOMOCC.DocId being posted)
-- Returns: >0 rows ⇒ already posted ⇒ skip room (or raise).
-- ---------------------------------------------------------------------
SELECT DocId, SNo, VNo, FolioNoDocid
FROM PAYCHARGE WITH (UPDLOCK, HOLDLOCK)
WHERE VTYPE = 'RC' AND VDATE = ?        -- @VDATE
  AND FOLIONODOCID = ?                  -- @DOCID
