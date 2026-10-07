-- ============================================================================
-- 03_Finance — extracted SQL (read-only record, NEVER executed from this folder)
-- Source: decompiled VB6 in ../../EXTRAS.text; row counts / columns from
--         ../../18_Database/*.txt  (MOONData2627)
-- Tags:   [VERIFIED-VB6]   statement seen verbatim in decompiled source
--         [VERIFIED-SQL]   table/row/column fact from 18_Database extracts
--         [INFERRED]       reconstructed from fragments
--         [UNKNOWN]        not located
-- `<site>`  = MemVar_1F81078 (LogSite_Code)   `<siteid>` = MemVar_1F81070 (Site_Code)
-- `<user>`  = MemVar_1F810C8 (UserName)       `<comp>`   = MemVar_1F81128 (CompCode)
-- String concatenation is shown as `& ..` fragments exactly as decompiled.
-- ============================================================================


-- ---------------------------------------------------------------------------
-- A. MENU / DISPATCH LAYER  (how Finance items become clickable)
-- ---------------------------------------------------------------------------

-- A1. module tabs on the main form  [VERIFIED-VB6] (EXTRAS.text L8279-L8280)
SELECT [Option] Name, OPT1
FROM MenuHelp
WHERE Flag <> 'V' AND OPT1 <> 0 AND OPT2 = 0 AND OPT3 = 0 AND OPT4 = 0
  AND UserName = '<user>' AND CompCode = '<comp>'
ORDER BY Code;

-- A2. sub-menu items for a group  [VERIFIED-VB6] (EXTRAS.text L8386-L8393)
SELECT [Option] Name, Cast(Code As Varchar) CODE
FROM MenuHelp
WHERE Flag <> 'V'
  AND OPT1 = <opt1> AND OPT2 = <opt2> AND OPT3 = <opt3> AND OPT4 <> <opt4>
  AND UserName = '<user>' AND CompCode = '<comp>';

-- A3. click: read the row behind a menu button  [VERIFIED-VB6] (EXTRAS.text L4644-L4647)
SELECT OPT1, OPT2, OPT3, OPT4, FLAG, CODE
FROM MenuHelp
WHERE Code = <code> AND UserName = '<user>' AND CompCode = '<comp>';

-- A4. dispatch key resolution (Proc_165_3_EEA710)  [VERIFIED-VB6] (EXTRAS.text L480844)
SELECT [Option]
FROM MenuHelp
WHERE Code = <code> AND UserName = '<user>' AND compcode = '<comp>';

-- A5. per-item privilege + outlet context read by the dispatcher  [VERIFIED-VB6] (EXTRAS.text L477046-L477047)
SELECT Param_Str AS UPrivilege, Module_Name, OutletCode
FROM menuHelp
WHERE UserName = '<user>' AND CompCode = '<comp>' AND Code = <code>;

-- A6. outlet → depart colour (Proc_165_4_1028884)  [VERIFIED-VB6] (EXTRAS.text L480862, L480867)
SELECT OutletCode
FROM MenuHelp
WHERE Code = <code> AND UserName = '<user>' AND CompCode = '<comp>';

SELECT RestType, BackColor
FROM Depart
WHERE Code = '<outletcode>';


-- ---------------------------------------------------------------------------
-- B. FAEnvironment / FA setup reads
-- ---------------------------------------------------------------------------

-- B1. dispatcher bootstrap  [VERIFIED-VB6] (EXTRAS.text L477023, L477025)
SELECT * FROM Enviro;
SELECT * FROM Enviro WHERE LOGSITE_CODE = '<site>';

-- B2. site finance environment  [VERIFIED-VB6] (EXTRAS.text L542558, L542697, L560778, L527987, L528089)
SELECT * FROM FAENVIRO WHERE LOGSITE_CODE = '<site>';

-- B3. ageing bucket configuration  [VERIFIED-VB6] (EXTRAS.text L554779)
UPDATE FAENVIRO
SET AGE1 = <a1>, AGE2 = <a2>, AGE3 = <a3>, AGE4 = <a4>, AGE5 = <a5>, ...
WHERE ...;

-- B4. DateLock switch (year-end lock)  [VERIFIED-VB6] (EXTRAS.text L267937, L555687)
UPDATE FAENVIRO SET DateLock = 'Y' WHERE ...;

-- B5. date-lock values consumed by voucher validation  [VERIFIED-VB6] (EXTRAS.text L531108)
SELECT EDATE, SDATE FROM DateLock WHERE CODE = '<code>';

-- B6. housekeeping null fix  [VERIFIED-VB6] (EXTRAS.text L555134)
UPDATE LEDGER SET AMTDR = 0 WHERE AMTDR IS NULL;


-- ---------------------------------------------------------------------------
-- C. FAVoucher — voucher-type helpers (shared)
-- ---------------------------------------------------------------------------

-- C1. voucher nature  [VERIFIED-VB6] (EXTRAS.text L18731, L18769, L19084)
SELECT NCAT FROM VOUCHER_TYPE WHERE V_TYPE = '<vtype>';

-- C2. usage counts (guards edit/delete)  [VERIFIED-VB6] (EXTRAS.text L18968, L18976)
SELECT COUNT(*) FROM Ledger  WHERE V_Type = '<vtype>' ...;
SELECT COUNT(*) FROM LedgerM WHERE V_Type = '<vtype>' ...;


-- ---------------------------------------------------------------------------
-- D. FaVrEnt — VOUCHER ENTRY (core posting engine)
-- ---------------------------------------------------------------------------

-- D1. voucher-type list for the combo (Category = 'FA')  [VERIFIED-VB6] (EXTRAS.text L527966, L527975, L527983)
SELECT V_TYPE, DESCRIPTION
FROM VOUCHER_TYPE
WHERE Category = 'FA' AND SITE_CODE = '<siteid>' AND LOGSITE_CODE = '<site>';

-- D2. full voucher type + prefix row (numbering method)  [VERIFIED-VB6] (EXTRAS.text L529270)
SELECT VT.Description, VT.NCat, VT.V_Type, VP.Prefix
FROM VOUCHER_tYPE AS VT
INNER JOIN Voucher_Prefix AS VP
       ON (VT.Site_Code = VP.Site_Code)
      AND (VT.LogSite_Code = VP.LogSite_Code)
      AND (VT.V_Type = VP.V_Type)
WHERE VT.SITE_CODE = '<siteid>' ...;

-- D3. previous voucher of this user (resume)  [VERIFIED-VB6] (EXTRAS.text L529228, L529252)
SELECT LV.*, DESCRIPTION, NCAT
FROM LastVoucher LV
LEFT JOIN VOUCHER_tYPE VT ON Vt.V_TYPE = LV.V_TYPE
WHERE User_Name = '<user>' ...;

-- D4. last document number  [VERIFIED-VB6] (EXTRAS.text L528029, L528035)
SELECT DOCID
FROM LastVoucher
WHERE SITE_cODE = '<siteid>' AND LOGSITE_CODE = '<site>' AND U_Name = '<user>' ...;

-- D5. ledger headers in the locked date window  [VERIFIED-VB6] (EXTRAS.text L528019-L528020)
SELECT DOCID, SITE_CODE, LOGSITE_CODE
FROM LEDGERM
WHERE LOGSITE_CODE = '<site>'
  AND V_DATE BETWEEN <from> AND <to>
  AND V_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE Category = 'FA' AND SITE_CODE = '<siteid>' ...);

-- D6. account picker (ViewSubgroup)  [VERIFIED-VB6] (EXTRAS.text L528000, L528006)
SELECT SubCode, NameWithCity AS Name, GNAME AS GROUPNAME, GroupCode, MAINGRCODES,
       RTRIM(ISNULL(ADD1,'')) + ',' + RTRIM(ISNULL(ADD2,'')) + ',' + RTRIM(ISNULL(ADD3,''))
       + RTRIM(ISNULL(CityName,'')) AS NameWithADDR,
       ISNULL(FNAME,'') AS FatherName
FROM ViewSubgroup
WHERE ... AND (ACTIVEYN = 1 OR ACTIVEYN IS NULL) ORDER BY Name;

-- D7. T.D.S. account picker  [VERIFIED-VB6] (EXTRAS.text L528014)
SELECT SubCode, Name, GNAME AS GROUPNAME, GroupCode, MAINGRCODES, '' AS NameWithADDR
FROM ViewSubgroup
WHERE NATURE = 'T.D.S.' ...;

-- D8. T.D.S. category join  [VERIFIED-VB6] (EXTRAS.text L526403, L526963)
SELECT TDSCAT.*
FROM TDSCAT
LEFT JOIN SUBGROUP ON SUBGROUP.TDS_CATG = TDSCAT.CODE
WHERE (TDSCAT.LOGSITE_CODE = '<site>' ...);

-- D9. credit limit / nature check  [VERIFIED-VB6] (EXTRAS.text L528501, L528589)
SELECT CreditLimit, NATURE FROM SUBGROUP WHERE SUBCODE = '<sub>';

-- D10. duplicate header check before save  [VERIFIED-VB6] (EXTRAS.text L534951)
SELECT COUNT(*) FROM LEDGERM WHERE DocId = '<docid>' ...;

-- D11. party outstanding with adjustments (Dr side lookup)  [VERIFIED-VB6] (EXTRAS.text L526784)
SELECT max(L.DocId) AS DI, MAX(V_SNo) AS VS, MAX(L.V_Type) AS VT, MAX(L.V_Prefix) AS VP,
       MAX(L.V_No) AS VN, MAX(L.V_Date) AS VD, MAX(AmtCr) AS Amount,
       MAX(L.Narration) AS NARR, MAX(SG.Name) As PartyName, L.SubCode,
       IsNull(Sum(CR),0) AS TSum, MAX(LEDGERM.Narration) AS MNARR, MAX(L.AgRefNo) AS AgRefNom
FROM ((Ledger L
  LEFT JOIN SubGroup SG ON SG.SubCode = L.CONTRASub)
  LEFT JOIN LEDGERAdj ON (L.SUBCODE = LEDGERAdj.SUBCODE)
                     AND (L.V_SNo = LEDGERAdj.V_SNo1)
                     AND (L.DocId = LEDGERAdj.DocId1))
  LEFT JOIN LEDGERM ON LEDGERM.DOCID = L.DOCID
WHERE L.SubCode = '<sub>' ...;

-- D12. party outstanding with adjustments (Cr side lookup)  [VERIFIED-VB6] (EXTRAS.text L526225)
SELECT max(L.DocId) AS DI, MAX(V_SNo) AS VS, MAX(L.V_Type) AS VT, MAX(L.V_Prefix) AS VP,
       MAX(L.V_No) AS VN, MAX(L.V_Date) AS VD, MAX(AmtDr) AS Amount,
       MAX(L.Narration) AS NARR, MAX(SG.Name) As PartyName, L.SubCode,
       IsNull(Sum(CR),0) AS TSum, MAX(LEDGERM.Narration) AS MNARR, MAX(L.AgRefNo) AS AgRefNom
FROM ((Ledger L
  LEFT JOIN SubGroup SG ON SG.SubCode = L.CONTRASub)
  LEFT JOIN LEDGERAdj ON (L.SUBCODE = LedgerAdj.SUBCODE)
                     AND (L.V_SNo = LedgerAdj.V_SNo2)
                     AND (L.DocId = LedgerAdj.DocId2))
  LEFT JOIN LEDGERM ON LEDGERM.DOCID = L.DOCID
WHERE L.SubCode = '<sub>' ...;

-- D13. residual adjustment total  [VERIFIED-VB6] (EXTRAS.text L526238, L526797)
SELECT IsNull(Sum(CR),0) AS TSum FROM LEDGERAdj WHERE SUBCODE = '<sub>' AND DocID1 = '<docid>';
SELECT IsNull(Sum(CR),0) AS TSum FROM LEDGERAdj WHERE SUBCODE = '<sub>' AND DocID2 = '<docid>';

-- D14. reference-wise outstanding  [VERIFIED-VB6] (EXTRAS.text L525553, L525562)
SELECT AgRefNo AS RefNo, MIN(V_dATE) AS VDate,
       RTRIM(CAST(ABS(ISNULL(SUM(Cr),0) - ISNULL(SUM(Dr),0)) AS VARCHAR(11))) + ' ' +
       CASE WHEN ISNULL(SUM(Cr),0) - ISNULL(SUM(Dr),0) > 0 THEN 'Cr'
            WHEN ISNULL(SUM(Cr),0) - ISNULL(SUM(Dr),0) < 0 THEN 'Dr'
            ELSE '' END AS Balance
FROM ledgerRef
WHERE AGREFTYPE IN ('Advance','New Ref','Ag.Ref.') AND SUBCODE = '<sub>'
GROUP BY AgRefNo;

-- D15. voucher line reload (Cr)  [VERIFIED-VB6] (EXTRAS.text L527350)
SELECT SUBGROUP.NAME, LEDGER.SubCode, LEDGER.Narration, LEDGER.AmtCr
FROM (LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE = LEDGER.SUBCODE)
LEFT JOIN VOUCHER_TYPE ON VOUCHER_TYPE.V_tYPE = LEDGER.V_TYPE
WHERE LEDGER.DOCID = '<docid>';

-- D16. voucher line reload (Dr, with group + cheque type)  [VERIFIED-VB6] (EXTRAS.text L527358)
SELECT SUBGROUP.NAME, LEDGER.SubCode, LEDGER.Narration, LEDGER.AmtCr,
       SUBGROUP.groupcode, SUBGROUP.ChequeType
FROM ((LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE = LEDGER.SUBCODE)
      LEFT JOIN acgroup ON SUBGROUP.groupcode = acgroup.groupcode)
LEFT JOIN VOUCHER_TYPE ON VOUCHER_TYPE.V_tYPE = LEDGER.V_TYPE
WHERE LEDGER.DOCID = '<docid>';

-- D17. available voucher numbers  [VERIFIED-VB6] (EXTRAS.text L527897, L527903)
SELECT distinct v_no FROM LEDGER where v_type = '<vtype>' ORDER BY v_no;

-- D18. T.D.S. rows on this voucher  [VERIFIED-VB6] (EXTRAS.text L529357, L529399)
SELECT * FROM LEDGERTDS WHERE DOCID = '<docid>';

-- ---- D-SAVE: INSERT path  [VERIFIED-VB6] -----------------------------------
-- header  (EXTRAS.text L535274)
INSERT INTO LedgerM (DocId, V_Type, v_Prefix, V_No, Site_Code, V_Date, Narration,
                     U_Name, U_EntDt, U_AE, LOGSITE_CODE)
VALUES ('<docid>','<vtype>','<prefix>','<vno>','<siteid>','<vdate>','<narr>',
        '<user>', <now>, '<ae>', '<site>');

-- lines  (EXTRAS.text L535121; cheque-less variants L535469, L535498)
INSERT INTO LEDGER (DocId, V_SNo, V_Type, V_No, v_Prefix, Site_Code, V_Date, SubCode,
                    AmtCr, AmtDr, ContraSub, Narration, U_Name, U_EntDt, U_AE,
                    Chq_No, Chq_Date, Clg_Date, AgRefNo, GROUPCODE, GROUPNATURE, LOGSITE_CODE)
VALUES ('<docid>', <sno>, '<vtype>', '<vno>', '<prefix>', '<siteid>', '<vdate>', '<sub>',
        <cr>, <dr>, '<contra>', '<narr>', '<user>', <now>, '<ae>',
        '<cheque>', <chqdate>, <clgdate>, '<agref>', '<groupcode>', '<groupnature>', '<site>');

-- serial book  (EXTRAS.text L535344)
INSERT INTO LastVoucher (User_Name, V_Type, Last_Ent_Date, DOCID, U_Name, U_EntDt,
                         SITE_CODE, LOGSITE_CODE)
VALUES ('<user>', '<vtype>', <lastdate>, '<docid>', '<user>', <now>, '<siteid>', '<site>');

-- ---- D-SAVE: UPDATE path  [VERIFIED-VB6] -----------------------------------
-- (EXTRAS.text L535309, L535328)
UPDATE LedgerM
SET DocId = '<docid>', V_Type = '<vtype>', v_Prefix = '<prefix>', V_No = <vno>, ...
WHERE ...;

-- ---- D-DELETE: cascade  [VERIFIED-VB6] -------------------------------------
DELETE FROM LEDGER    WHERE DOCID = '<docid>';                 -- L529418 / L535049 / L529438
DELETE FROM LEDGERM   WHERE DocID = '<docid>';                 -- L529439
DELETE FROM LEDGERADJ WHERE DocID1 = '<docid>' OR DocID2 = '<docid>';  -- L529442
DELETE FROM LEDGERREF WHERE DocID = '<docid>';                 -- L529443
DELETE FROM LEDGERTDS WHERE DOCID = '<docid>';                 -- L529444 / L535049-L535066

-- ---- D-AUDIT COPY  [VERIFIED-VB6] (EXTRAS.text L535548-L535553) ------------
INSERT INTO LedgerMLog SELECT * FROM LedgerM WHERE DocID = '<docid>';

UPDATE LedgerLog
SET SeqNo = (SELECT Max(IsNull(SeqNo,0)) + 1 FROM LedgerLog WHERE DocID = '<docid>')
WHERE DocID = '<docid>' AND IsNull(SeqNo,0) = 0;

INSERT INTO LedgerMLog SELECT * FROM LedgerM WHERE DocID = '<docid>')   -- [INFERRED] as decompiled
WHERE DocID = '<docid>' AND IsNull(SeqNo,0) = 0;

UPDATE LedgerMLog
SET SeqNo = (SELECT Max(IsNull(SeqNo,0)) + 1 FROM LedgerMLog WHERE DocID = '<docid>')
WHERE DocID = '<docid>' AND IsNull(SeqNo,0) = 0;


-- ---------------------------------------------------------------------------
-- E. FaAdjust — ADJUSTMENT ENTRY
-- ---------------------------------------------------------------------------

-- E1. unadjusted bills for a party  [VERIFIED-VB6] (EXTRAS.text L547154)
SELECT DocId, ...
FROM Ledger L
LEFT JOIN SubGroup SG ON ...          -- decompiled fragment
WHERE L.SubCode = '<sub>' ...;

-- E2. balance  [VERIFIED-VB6] (EXTRAS.text L547161)
SELECT IsNull(Sum(CR),0) AS TSum
FROM LEDGERAdj
WHERE SubCode = '<sub>';

-- E3. post an adjustment  [VERIFIED-VB6] (EXTRAS.text L547406)
INSERT INTO LEDGERAdj (DocId1, V_SNo1, DocId2, V_SNo2, CR, SubCode,
                       U_Name, U_EntDt, U_AE, site_code, logsite_code)
VALUES ('<doc1>', <sn1>, '<doc2>', <sn2>, <cr>, '<sub>',
        '<user>', <now>, '<ae>', '<siteid>', '<site>');


-- ---------------------------------------------------------------------------
-- F. FaAdjustDel — DELETE ADJUSTMENT
--   statements mirror E3 with DELETE against LEDGERAdj by
--   DocId1/DocId2 + V_SNo1/V_SNo2.  Exact fragments: [UNKNOWN]
-- ---------------------------------------------------------------------------


-- ---------------------------------------------------------------------------
-- G. FaChqClear — BANK RECONCILIATION
-- ---------------------------------------------------------------------------

-- G1. stamp clearing data on the ledger line  [VERIFIED-VB6] (EXTRAS.text L548238, L548252, L548261)
UPDATE Ledger
SET Chq_No = '<cheque>', Chq_Date = <chqdate>, Clg_Date = <clgdate>
WHERE ...;


-- ---------------------------------------------------------------------------
-- H. FaTDSChal — T.D.S. CHALLAN ENTRY
-- ---------------------------------------------------------------------------

-- H1. post / unpost flag on T.D.S. lines  [VERIFIED-VB6] (EXTRAS.text L544695, L545034, L545144, L545150)
UPDATE LEDGERTDS SET TDSPOST = 'Y'
WHERE TDSDocId = '<tdsdocid>' AND TDSV_Sno = <sno>;

UPDATE LEDGERTDS SET TDSPOST = ''
WHERE TDSDocId = '<tdsdocid>' AND TDSV_Sno = <sno>;

UPDATE LEDGERTDS SET TDSPOST = 'Y'
WHERE TDSDocId = '<tdsdocid>' AND LOGSITE_CODE = '<site>'
GROUP BY TDSCODE;

-- H2. challan voucher lines into LEDGER  [VERIFIED-VB6] (EXTRAS.text L545181, L545213)
INSERT INTO LEDGER (DocId, V_SNo, V_Type, V_No, v_Prefix, Site_Code, V_Date, SubCode,
                    AmtCr, AmtDr, ContraSub, Chq_No, Chq_Date, Narration,
                    U_Name, U_EntDt, U_AE, LOGSITE_CODE)
VALUES ('<docid>', <sno>, '<vtype>', '<vno>', '<prefix>', '<siteid>', '<vdate>', '<sub>',
        <cr>, <dr>, '<contra>', '<cheque>', <chqdate>, '<narr>',
        '<user>', <now>, '<ae>', '<site>');


-- ---------------------------------------------------------------------------
-- I. FaCurrBalUpdate — CURRENT BALANCE UPDATION
-- ---------------------------------------------------------------------------

-- I1. wipe running balances  [VERIFIED-VB6] (EXTRAS.text L553111, L553112)
UPDATE ACGROUPCURRBAL  SET CURR_BAL = 0;
UPDATE SUBGROUPCURRBAL SET CURR_BAL = 0;

-- I2. rebuild (fragment)  [VERIFIED-VB6] (EXTRAS.text L553961)
UPDATE Ledger SET AmtCr = Case When ... END ...;


-- ---------------------------------------------------------------------------
-- J. FaLib — RUNNING BALANCE HELPERS
-- ---------------------------------------------------------------------------

-- J1. does a daily balance row exist?  [VERIFIED-VB6] (EXTRAS.text L519779)
SELECT COUNT(*) FROM SUBGROUPCURRBAL
WHERE LogSite_Code = '<site>' AND SubCode = '<sub>' AND V_Date = <vdate>;

-- J2. roll forward / create  [VERIFIED-VB6] (EXTRAS.text L519798)
UPDATE SubGroupCURRBAL SET Curr_Bal = Curr_Bal + <delta> WHERE ...;
INSERT INTO SUBGROUPCURRBAL (LogSite_Code, SubCode, V_Date, GroupCode, Curr_Bal)
VALUES ('<site>', '<sub>', <vdate>, '<group>', <bal>);

-- J3. group roll-up  [VERIFIED-VB6] (EXTRAS.text L519802, L519809, L519814, L519831)
SELECT MAINGRCODE FROM ACGROUP Where GroupCode = '<group>' AND AliasYN = 'N';
SELECT *         FROM ACGROUP Where MAINGRCODE = '<mgc>'    AND AliasYN = 'N';
SELECT COUNT(*)  FROM ACGROUPCURRBAL WHERE LogSite_Code = '<site>' AND GROUPCode = '<group>' AND V_Date = ...;
UPDATE ACGroupCURRBAL SET Curr_Bal = Curr_Bal + <delta> WHERE ...;
INSERT INTO ACGROUPCURRBAL (LogSite_Code, V_Date, GroupCode, Curr_Bal)
VALUES ('<site>', <vdate>, '<group>', <bal>);

-- J4. opening totals  [VERIFIED-VB6] (EXTRAS.text L521528, L521534, L521541, L521548)
SELECT isnull(sum(ledger.Amtcr),0) AS OpRec FROM ledger where subcode = '<sub>';
SELECT isnull(sum(ledger.Amtdr),0) AS OpIss FROM ledger where subcode = '<sub>';
SELECT isnull(sum(ledger.Amtcr),0) AS OpRec FROM ledger where subcode = '<sub>' AND LOGSITE_CODE = '<site>';
SELECT isnull(sum(ledger.Amtdr),0) AS OpIss FROM ledger where subcode = '<sub>' AND LOGSITE_CODE = '<site>';


-- ---------------------------------------------------------------------------
-- K. FaSubGroup — LEDGER ACCOUNTS master
-- ---------------------------------------------------------------------------

-- K1. lookups  [VERIFIED-VB6] (EXTRAS.text L521992, L521999, L522012, L522022, L522751)
SELECT SubCode As Code, Name, NameHelp, GroupCode From SubGroup
WHERE (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO') Order by Name;

SELECT GroupCode As Code, GroupName As Name, GroupNature, MainGrCode, CurrentBalance,
       SubLedYN, AliasYN, GroupHelp, Nature
From AcGroup
WHERE (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO') ...;

SELECT Code, Name From TDSCAT
WHERE (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO') Order by Name;

SELECT SubCode As SearchCode, SubCode, Site_Code, Name, LOGSITE_CODE From SubGroup
Where (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO') order by Name;

Select GroupCode, GroupName, maingrcode From AcGroup
Where (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO') AND MainGrCode <> '999'
Order by GroupName;

-- K2. delete guard — ledger rows must not exist  [VERIFIED-VB6] (EXTRAS.text L522832)
SELECT COUNT(*) From Ledger Where (SubCode = '<sub>' ...);

-- K3. duplicate name guard  [VERIFIED-VB6] (EXTRAS.text L523068, L523085, L523602, L523620)
Select NameHelp From SubGroup Where NameHelp = '<namehelp>' ...;

-- K4. duplicate code guard  [VERIFIED-VB6] (EXTRAS.text L523573)
Select AcCode From SubGroup Where AcCode = '<accode>' ...;

-- K5. audit stamp on edit  [VERIFIED-VB6] (EXTRAS.text L524356)
Select U_Name, U_AE, U_EntDt From Subgroup where SubCode = '<sub>';

-- K6. opening-balance voucher totals (V_Type = 'F_AO')  [VERIFIED-VB6]
--    (EXTRAS.text L524411, L524418, L524427, L524436)
Select isnull(Sum(AmtCr),0) From Ledger Where V_Type = 'F_AO' and SubCode = '<sub>';
Select isnull(Sum(AmtDr),0) From Ledger Where V_Type = 'F_AO' and SubCode = '<sub>';
Select isnull(Sum(AmtCr),0) From Ledger Where V_Type = 'F_AO' and SubCode = '<sub>' AND LOGSITE_CODE = '<site>';
Select isnull(Sum(AmtDr),0) From Ledger Where V_Type = 'F_AO' and SubCode = '<sub>' AND LOGSITE_CODE = '<site>';

-- K7. current balance from the daily roll-up  [VERIFIED-VB6] (EXTRAS.text L524456, L524463)
SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode = '<sub>' ...;

-- K8. ledger drill-down grid  [VERIFIED-VB6] (EXTRAS.text L524627)
SELECT Ledger.Narration, Ledger.DocId, Ledger.V_SNo, Ledger.V_Type, Ledger.V_No,
       Ledger.V_Date, Ledger.Site_Code, Ledger.SubCode, Ledger.AmtCr, Ledger.AmtDr,
       Ledger.Chq_No, Ledger.Chq_Date, Site.Site_Desc
FROM Ledger Left JOIN Site ON Ledger.LogSite_Code = Site.Site_Code
Where LOGSITE_CODE = '<site>' ...;

-- K9. re-group an account (Voucher_Type numbering)  [VERIFIED-VB6] (EXTRAS.text L524178)
SELECT VT.Number_Method, VP.V_Type, VP.Date_From, VP.Prefix, VP.Start_Srl_No
FROM Voucher_Type VT
Left Join Voucher_Prefix VP on VT.V_Type = VP.V_Type
WHERE VT.SITE_CODE = '<siteid>' ...;

-- K10. write  [VERIFIED-VB6] (EXTRAS.text L524891, L525272)
UPDATE LEDGER SET LEDGER.GROUPCODE = '<group>' WHERE ...;

Insert Into Ledger (DocId, V_SNo, V_Type, V_No, Site_Code, V_Date, SubCode, ..., NARRATION,
                    U_Name, U_EntDt, U_AE, GROUPCODE, GROUPNATURE, LOGSITE_CODE)
VALUES ('<docid>', <sno>, '<vtype>', '<vno>', '<siteid>', '<vdate>', '<sub>', ..., '<narr>',
        '<user>', <now>, '<ae>', '<group>', '<nature>', '<site>');


-- ---------------------------------------------------------------------------
-- L. FaGrEnt — GROUP ACCOUNTS master
--   (ACGROUP rows; select/insert/update fragments live in EXTRAS.text L555999-L557753)
--   Exact statements: [UNKNOWN] — see sql_notes.md §3
-- ---------------------------------------------------------------------------


-- ---------------------------------------------------------------------------
-- M. FaMagic — FINANCIAL STATEMENTS
-- ---------------------------------------------------------------------------

-- M1. site list  [VERIFIED-VB6] (EXTRAS.text L542525)
SELECT '' as O, SITE_DESC AS Site, SITE_CODE FROM SITE ORDER BY SITE_dESC;

-- M2. group name resolve  [VERIFIED-VB6] (EXTRAS.text L544038)
SELECT GROUPNAME FROM ACGROUP WHERE GROUPCODE = <code>;


-- ---------------------------------------------------------------------------
-- N. FaReports — REPORT DATASETS
-- ---------------------------------------------------------------------------

-- N1. generic pickers used by report criteria screens  [VERIFIED-VB6]
--     (EXTRAS.text L558978, L561627, L561758, L561863, L563695, L563700, L563702)
SELECT Site_Code AS Code, Site_Desc AS NAME From Site Order by Site_Desc;
SELECT '' as O, GroupName, GroupCode as Code from AcGroup Order by GroupName;
SELECT '' as O, CityName, CityCode as Code from City Order by CityName;
SELECT '' as O, NAME as Account, SUBCODE as AccId from SUBGROUP where GROUPCODE = '<g>';
SELECT GROUPCODE AS Code, GROUPNAME AS NAME From AcGroup WHERE AliasYN <> 'Y' order by GroupName;
SELECT '' as O, NAME as Account, SUBCODE as AccId, GNAME AS GroupName,
       RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+','+RTRIM(ISNULL(ADD3,''))
       + RTRIM(ISNULL(CityName,'')) AS Address
From ViewSubgroup ...;

-- N2. address list for `AcCheckList`  [VERIFIED-VB6] (EXTRAS.text L563671)
SELECT SubCode AS Code, Name,
       RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,
       CityName, SubGroup.GroupCode, A.GROUPNAME
FROM (SubGroup Left Join City C on C.CityCode = SubGroup.CityCode)
LEFT JOIN ACGROUP A ON A.GROUPCODE = SubGroup.GROUPCODE
...;

-- N3. budget analysis join  [VERIFIED-VB6] (EXTRAS.text L563444)
SELECT B.*, Month(B.FromDate) As FrMth, Year(B.FromDate) As FrYear,
       Month(B.ToDate) As ToMth, Year(B.ToDate) As ToYear,
       SG.Name As AcName, AC.GroupName As AcGroupName
FROM ((Budget B
  Left Join SubGroup  SG ON B.AcCode = SG.SubCode)
  Left Join AcGroup   AC ON B.AcGroupCode = AC.GroupName)
Where CStr(FromDate) + '-' + CStr(ToDate) in ('<range>') ...;

-- N4. due-list overlay (creditors)  [VERIFIED-VB6] (EXTRAS.text L569903, L569916)
... & IIf((GRepFormName = 'DueListCreditorOverLay'), <x>, 'Customer')
    & "' AND VIEWLEDGER.V_DATE <= " & <to> & " " ...;

-- N5. report header banner persisted in FAENVIRO  [VERIFIED-VB6] (EXTRAS.text L558875)
UPDATE FAENVIRO SET TagadaHeader1 = <value> ...;

-- N6. reports that push their own .RPT name  [VERIFIED-VB6]
global_124 = 'DayBook'            -- L567397
global_124 = 'FABudgetVarience'   -- L571489
global_124 = 'FABudgetRep'        -- L571834


-- ---------------------------------------------------------------------------
-- O. AccountMerging / FrmSerialiseVr / SundryMast (Finance-adjacent, module C)
-- ---------------------------------------------------------------------------

-- O1. account merge picker  [VERIFIED-VB6] (EXTRAS.text L500639)
Select SubCode As Code, Name, SubCode, C.CityName
From SubGroup Left Join City C on SubGroup.CityCode = C.CityCode
order by Name;

-- O2. city / country / state master reports  [VERIFIED-VB6] (EXTRAS.text L550337, L551152, L552052)
--     .RPT names: City.RPT, Country.RPT, State.RPT (MemVar_1F810B4 = Reports\ folder)


-- ---------------------------------------------------------------------------
-- P. Row-count facts used by the docs  [VERIFIED-SQL]
--     (../../18_Database/tables_rowcounts.txt)
-- ---------------------------------------------------------------------------
-- Ledger              40818     LedgerM                3158
-- LedgerLog           19219     LedgerMLog              2386
-- ledgerAdj             264     ledgerRef                 0
-- LedgerTDS             338     ACGROUP                   73
-- AcGroupCurrBal      2054      SubGroup                3238
-- SubGroupCurrBal     6166      Voucher_Type             171
-- Voucher_Prefix      171       LastVoucher               38
-- NarrMast               2     TDSCat                    4
-- TDSChal                0     TDSChal1                  0
-- TDSCerti               0     FaEnviro                  1
-- DATELOCK                0     Budget                    0
-- City                  466     Country                  13
-- State                 55      SundryMast               19
-- menuHelp            9212      UserPermission            76
-- LedgerMerge             0     LedgerMMerge              0
-- Voucher_Exclude         0     Voucher_Include           0
-- Site                    0     Company                   1

-- foreign_keys.txt is 0 bytes → **0 declared foreign keys** for every table above.
