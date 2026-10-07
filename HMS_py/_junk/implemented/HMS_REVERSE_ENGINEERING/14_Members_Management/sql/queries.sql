-- =====================================================================
-- 14_Members_Management — read-only SQL extracted from EXTRAS.text
-- DB: MOONData2627 (SQL Server)      Tag: [VERIFIED-SQL] = found verbatim
-- RULE: READ-ONLY. DML below is shown COMMENTED for analysis only.
--       Never run INSERT/UPDATE/DELETE against production.
-- =====================================================================

-- ---------------------------------------------------------------------
-- 1. Member visit check-in  (EXTRAS.text L859311)   [COMMENTED - DML]
-- ---------------------------------------------------------------------
-- INSERT INTO MemVisitEntry
--   (MemCode, INDate, INTime, U_AE, U_Name, U_EntDt, Site_Code, LogSite_Code, CardRegId)
-- VALUES (@MemCode, @INDate, @INTime, @U_AE, @U_Name, @U_EntDt, @Site_Code, @LogSite_Code, @CardRegId);

-- ---------------------------------------------------------------------
-- 2. Member bill header  (EXTRAS.text L861812)      [COMMENTED - DML]
-- ---------------------------------------------------------------------
-- INSERT INTO MemBill
--   (DocId, vDate, Vno, Vprefix, VType, MemCode, MemCatCode, CardNo, MthYear,
--    NetAmount, U_AE, U_Name, U_EntDt, Site_Code, ...)
-- VALUES (@DocId, @vDate, @Vno, @Vprefix, @VType, @MemCode, @MemCatCode,
--         @CardNo, @MthYear, @NetAmount, @U_AE, @U_Name, @U_EntDt, @Site_Code);

-- ---------------------------------------------------------------------
-- 3. Member bill facility lines  (EXTRAS.text L861855)  [COMMENTED - DML]
-- ---------------------------------------------------------------------
-- INSERT INTO MemBill1
--   (DocId, Sno, Vno, vDate, VType, Type, FacilityCode, TaxStru, AcCode,
--    BaseAmt, TaxAmt, OutletCode, AcPosting, ...)
-- VALUES (@DocId, @Sno, @Vno, @vDate, @VType, @Type, @FacilityCode,
--         @TaxStru, @AcCode, @BaseAmt, @TaxAmt, @OutletCode, @AcPosting);

-- ---------------------------------------------------------------------
-- 4. Member bill tax lines  (EXTRAS.text L861897)     [COMMENTED - DML]
-- ---------------------------------------------------------------------
-- INSERT INTO MemBill2
--   (DocId, Sno, Sno1, Vno, vDate, VType, FacilityCode, TaxCode,
--    BaseAmt, TaxPer, TaxAmt, U_AE, U_Name, U_EntDt, Site_Code, ...)
-- VALUES (@DocId, @Sno, @Sno1, @Vno, @vDate, @VType, @FacilityCode,
--         @TaxCode, @BaseAmt, @TaxPer, @TaxAmt, @U_AE, @U_Name, @U_EntDt, @Site_Code);

-- =====================================================================
-- READ-ONLY verification queries (written for this documentation)
-- =====================================================================

-- V1. Row census for every Members-related table
SELECT 'MemberFamily'        AS TableName, COUNT(*) AS Rows FROM MemberFamily
UNION ALL SELECT 'MemVisitEntry',        COUNT(*) FROM MemVisitEntry
UNION ALL SELECT 'MemBill',              COUNT(*) FROM MemBill
UNION ALL SELECT 'MemBill1',             COUNT(*) FROM MemBill1
UNION ALL SELECT 'MemBill2',             COUNT(*) FROM MemBill2
UNION ALL SELECT 'MemFacilityBilling',   COUNT(*) FROM MemFacilityBilling
UNION ALL SELECT 'MemFacilityMast',      COUNT(*) FROM MemFacilityMast
UNION ALL SELECT 'MemCatFacility',       COUNT(*) FROM MemCatFacility;

-- V2. The only populated table - inspect its shape (37 rows expected)
SELECT TOP 37 * FROM MemberFamily;

-- V3. Runtime menu reachability for user SA (spec 11/13 evidence)
--     Expect: 1 row (orphan) for OPT1=23, plus 4 master rows under 12|14
SELECT [Option], OPT1, OPT2, OPT3, OPT4, Flag
FROM MenuHelp
WHERE UserName = 'SA' AND CompCode = '2' AND Flag <> 'V'
  AND (OPT1 = 23 OR (OPT1 = 12 AND OPT2 = 14))
ORDER BY OPT1, OPT2, OPT3;

-- V4. Module roots visible to SA (strip-tab source query, EXTRAS L8279)
SELECT [Option] AS Name, OPT1
FROM MenuHelp
WHERE Flag <> 'V' AND OPT1 <> 0 AND OPT2 = 0 AND OPT3 = 0 AND OPT4 = 0
  AND UserName = 'SA' AND CompCode = '2'
ORDER BY Code;

-- V5. Orphan detection: modules with children but no root row
SELECT OPT1, COUNT(*) AS ChildRows
FROM MenuHelp
WHERE UserName = 'SA' AND CompCode = '2' AND Flag <> 'V' AND OPT2 <> 0
GROUP BY OPT1
HAVING OPT1 NOT IN (
    SELECT OPT1 FROM MenuHelp
    WHERE UserName = 'SA' AND CompCode = '2' AND Flag <> 'V'
      AND OPT2 = 0 AND OPT3 = 0 AND OPT4 = 0 AND OPT1 <> 0
);

-- V6. Member bill integrity (expect 0 rows on this site; no FKs exist)
SELECT 'MemBill-headers' AS What, COUNT(*) AS Cnt FROM MemBill
UNION ALL SELECT 'MemBill1-lines',   COUNT(*) FROM MemBill1
UNION ALL SELECT 'MemBill2-tax',     COUNT(*) FROM MemBill2;

-- V7. Orphan bill lines check (would matter only if data existed)
--     No foreign keys exist anywhere in this DB, so this is the only guard.
SELECT d.DocId
FROM MemBill1 d
LEFT JOIN MemBill h ON h.DocId = d.DocId AND h.Vno = d.Vno
WHERE h.DocId IS NULL;
