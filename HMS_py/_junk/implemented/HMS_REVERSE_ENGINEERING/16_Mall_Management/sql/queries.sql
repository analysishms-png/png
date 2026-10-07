-- =====================================================================
-- 16_Mall_Management — read-only SQL extracted from EXTRAS.text
-- DB: MOONData2627      Tag: [VERIFIED-SQL] = found verbatim in source
-- RULE: READ-ONLY. DML shown COMMENTED only (Delete/Insert/Update).
--       Night-Audit blocklist: never Save/Delete/Post in production.
-- =====================================================================

-- ---------------------------------------------------------------------
-- 1. Facility list w/ HO fallback  (EXTRAS.text L932289)
-- ---------------------------------------------------------------------
SELECT Code, Name
FROM FacilityMast
WHERE (LOGSITE_CODE = @LogSiteCode OR LOGSITE_CODE = 'HO');

-- ---------------------------------------------------------------------
-- 2. Facility search grid  (EXTRAS.text L932614)
-- ---------------------------------------------------------------------
SELECT F.Code        AS SearchCode,
       F.Name,
       F.ChargeType,
       F.UnitRate
FROM FacilityMast F
WHERE (F.LOGSITE_CODE = @LogSiteCode OR F.LOGSITE_CODE = 'HO');

-- ---------------------------------------------------------------------
-- 3. Next facility code - VARIANT A  (EXTRAS.text L932867)
--     Parses code from position 3 as a number via MID + val().
-- ---------------------------------------------------------------------
SELECT IIF(ISNULL(MAX(VAL(MID(Code, 3))), 0) = 0, 1,
           MAX(VAL(MID(Code, 3))) + 1) AS MyCode
FROM FacilityMast
WHERE SITE_CODE = @SiteCode;

-- ---------------------------------------------------------------------
-- 4. Next facility code - VARIANT B  (EXTRAS.text L932876)
--     Same intent, different formula: SUBSTRING(Code,3,4) cast to INT.
--     Two formulas for one rule => divergence risk if code width varies.
-- ---------------------------------------------------------------------
SELECT ISNULL(MAX(CAST(SUBSTRING(Code, 3, 4) AS INT)), 0) + 1 AS MyCode
FROM FacilityMast
WHERE SITE_CODE = @SiteCode;

-- ---------------------------------------------------------------------
-- 5. INSERT FacilityMast  (EXTRAS.text L932924)     [COMMENTED - DML]
-- ---------------------------------------------------------------------
-- INSERT INTO FacilityMast
--   (Code, Name, ShortName, SACCode, ChargeType, ChargeUnit, UnitRate,
--    AcCode, TaxStru, RoundOff, ROffType, MeterRea...)
-- VALUES (@Code, @Name, @ShortName, @SACCode, @ChargeType, @ChargeUnit,
--         @UnitRate, @AcCode, @TaxStru, @RoundOff, @ROffType, @MeterReading);

-- ---------------------------------------------------------------------
-- 6. DELETE FacilityMast  (EXTRAS.text L932516)     [COMMENTED - DML]
--     QA RULE: never execute - see screens/screens.md §5.
-- ---------------------------------------------------------------------
-- DELETE FROM FacilityMast WHERE Code = @Code;

-- ---------------------------------------------------------------------
-- 7. Post-insert location fix-up on bill lines  (EXTRAS.text L10924)
--     [COMMENTED - DML]
-- ---------------------------------------------------------------------
-- UPDATE FacilityBill1
-- SET FacilityBill1.LocationCode = Q.LocationCode
-- FROM (SELECT FacilityBill.DocId, ... FROM FacilityBill ...) AS Q
-- WHERE ...;

-- ---------------------------------------------------------------------
-- 8. Facility bill register / enquiry  (EXTRAS.text L670698)
-- ---------------------------------------------------------------------
SELECT Fb.DocId,
       Fb.PartyCode,
       L.Name                 AS Party,
       Fb.VDate,
       Fb1.VType + '/' + CAST(Fb1.VNo AS VARCHAR) AS BillNo,
       Fb1.ForPeriod
FROM FacilityBill  Fb
JOIN FacilityBill1 Fb1 ON Fb1.DocId = Fb.DocId          -- [INFERRED] join key
JOIN ...        L   ON ...                              -- [UNKNOWN] location join

-- ---------------------------------------------------------------------
-- 9. Bill totals from revenue lines  (EXTRAS.text L670777/L782/L786/L790)
-- ---------------------------------------------------------------------
SELECT SUM(Amount) AS Tax
FROM SunTranFacility S
LEFT JOIN Revmast R ON S.SunCode = R.Sundry
WHERE S.DocId = @DocId;

SELECT SUM(Amount) AS Disc  FROM SunTranFacility WHERE DocId = @DocId AND SunCode = @SunCode;
SELECT SUM(Amount) AS ROff  FROM SunTranFacility WHERE DocId = @DocId AND SunCode = @SunCode;
SELECT SUM(Amount) AS NetAmt FROM SunTranFacility WHERE DocId = @DocId AND SunCode = @SunCode;

-- ---------------------------------------------------------------------
-- 10. Location facilities composite search key  (EXTRAS.text L860829)
-- ---------------------------------------------------------------------
SELECT DISTINCT
       (LF.LcCode + SPACE(6 - LEN(LF.LcCode)) + '**'
        + CONVERT(VARCHAR(11), LF.AppDate, 103)) AS SearchCode,
       SITE_CODE, LOGSITE_CODE
FROM LocationFacility LF
WHERE ...;   -- remainder of predicate truncated in decompiled source

-- ---------------------------------------------------------------------
-- 11. Tax report fragments  (EXTRAS.text L723667-L723910, abbreviated)
-- ---------------------------------------------------------------------
SELECT DocId, SNo, RevCode, SValue, (BaseAmount * SValue / 100) AS TaxAmt, BaseAmount
FROM SunTranFacility
WHERE VDate BETWEEN @From AND @To
UNION ALL
SELECT DocId, 0 AS SNo, RevCode, SValue, (BaseAmount * SValue / 100), BaseAmount
FROM SunTranFacility
WHERE VDate BETWEEN @From AND @To;

-- Tax nature filter actually used by HMS:
--   SL.Nature IN ('Luxury Tax','Sale Tax','Service Tax')   [VERIFIED-VB6] L723871

-- =====================================================================
-- READ-ONLY verification queries (written for this documentation)
-- =====================================================================

-- V1. Module row census (expect all 0 on this site)
SELECT 'FacilityMast'      AS TableName, COUNT(*) AS Rows FROM FacilityMast
UNION ALL SELECT 'FacilityBill',   COUNT(*) FROM FacilityBill
UNION ALL SELECT 'FacilityBill1',  COUNT(*) FROM FacilityBill1
UNION ALL SELECT 'FacilityBill2',  COUNT(*) FROM FacilityBill2
UNION ALL SELECT 'LocationFacility', COUNT(*) FROM LocationFacility
UNION ALL SELECT 'SunTranFacility',  COUNT(*) FROM SunTranFacility;

-- V2. Runtime menu reachability for SA (builder hex 19 = OPT1 25)
SELECT [Option], OPT1, OPT2, OPT3, OPT4, Flag
FROM MenuHelp
WHERE UserName = 'SA' AND CompCode = '2' AND Flag <> 'V' AND OPT1 = 25;
-- Expect: 0 rows -> module invisible for SA

-- V3. Which profiles (if any) can see Mall
SELECT UserName, COUNT(*) AS Items
FROM MenuHelp
WHERE Flag <> 'V' AND OPT1 = 25
GROUP BY UserName
ORDER BY Items DESC;

-- V4. Facility code format sanity (would matter only if rows existed)
SELECT Code, LEN(Code) AS CodeLen
FROM FacilityMast
ORDER BY Code;
-- Informs whether next-code variants A (MID) and B (SUBSTRING 3,4) agree.

-- V5. Orphan facility bill lines (no FKs exist in this DB)
SELECT d.DocId
FROM FacilityBill1 d
LEFT JOIN FacilityBill h ON h.DocId = d.DocId
WHERE h.DocId IS NULL;
