-- =====================================================================
-- 15_Sales_Marketing (SMS module) — read-only SQL from EXTRAS.text
-- DB: MOONData2627      Tag: [VERIFIED-SQL] = found verbatim in source
-- RULE: READ-ONLY. Do NOT send SMS, do NOT update the queue.
-- =====================================================================

-- ---------------------------------------------------------------------
-- 1. SMS dequeue — core queue query  (EXTRAS.text L7832)
-- ---------------------------------------------------------------------
SELECT *
FROM DBSENDSMS
WHERE ISNULL(SENDTF, '') <> 'TRUE';

-- ---------------------------------------------------------------------
-- 2. Pending message type for one document  (EXTRAS.text L626092)
-- ---------------------------------------------------------------------
SELECT MsgType
FROM DBSENDSMS WITH (NOLOCK)
WHERE ISNULL(SENDTF, '') <> 'TRUE'
  AND DocId = @DocId;

-- ---------------------------------------------------------------------
-- 3. Next serial inside a document  (EXTRAS.text L626051)
--     NoLock + MAX+1  =>  duplicate-SNo risk under concurrency.
-- ---------------------------------------------------------------------
SELECT ISNULL(MAX(SNo), 0) + 1 AS NextSNo
FROM DBSENDSMS WITH (NOLOCK)
WHERE DocId = @DocId;

-- ---------------------------------------------------------------------
-- 4. Next voucher number per VType  (EXTRAS.text L626947)  [NoLock]
-- ---------------------------------------------------------------------
SELECT ISNULL(MAX(VNo), 0) + 1 AS MyCode
FROM DBSENDSMS WITH (NOLOCK)
WHERE VType = @VType;

-- ---------------------------------------------------------------------
-- 5. SAME rule WITHOUT NoLock  (EXTRAS.text L629716)
--     Divergent twin of #4 -> two code paths can mint equal VNo.
-- ---------------------------------------------------------------------
SELECT ISNULL(MAX(VNo), 0) + 1 AS MyCode
FROM DBSENDSMS
WHERE VType = @VType;

-- =====================================================================
-- READ-ONLY verification queries (written for this documentation)
-- =====================================================================

-- V1. Queue depth and drain state
SELECT SENDTF, COUNT(*) AS Cnt
FROM DBSENDSMS
GROUP BY SENDTF;
-- Expect: one dominant group with SENDTF <> 'TRUE' (18810 rows total)

-- V2. Total + pending counts
SELECT COUNT(*) AS Total,
       SUM(CASE WHEN ISNULL(SENDTF,'') <> 'TRUE' THEN 1 ELSE 0 END) AS Pending
FROM DBSENDSMS;

-- V3. Daily send volume (when were messages queued?)
SELECT CONVERT(date, Vdate) AS SendDate, COUNT(*) AS Cnt
FROM DBSENDSMS
GROUP BY CONVERT(date, Vdate)
ORDER BY SendDate;
-- NOTE: column name Vdate is [INFERRED] from HMS conventions; if the
-- column differs, adjust - this is a verification helper, not source SQL.

-- V4. Numbering collision check (would matter if any rows existed per VType)
SELECT VType, MAX(VNo) AS MaxVNo, COUNT(DISTINCT VNo) AS DistinctVNo
FROM DBSENDSMS
GROUP BY VType
HAVING COUNT(*) <> COUNT(DISTINCT VNo);
-- Returns rows only if duplicate VNo exists inside a VType.

-- V5. SMS environment config row exists (value deliberately NOT selected -
--     it may hold a gateway URL/credential)
SELECT COUNT(*) AS EnviroRows FROM SMSEnviro;

-- V6. Runtime menu: module reachability for SA (builder hex 18 = OPT1 24)
SELECT [Option], OPT1, OPT2, OPT3, OPT4, Flag
FROM MenuHelp
WHERE UserName = 'SA' AND CompCode = '2' AND Flag <> 'V'
  AND OPT1 IN (24, 27)
ORDER BY OPT1, OPT2, OPT3;
-- Expect: 0 rows for OPT1=24, 7 rows for OPT1=27 (EXTRAs/SMS)

-- V7. Module roots (strip-tab source query, EXTRAS.text L8279)
SELECT [Option] AS Name, OPT1
FROM MenuHelp
WHERE Flag <> 'V' AND OPT1 <> 0 AND OPT2 = 0 AND OPT3 = 0 AND OPT4 = 0
  AND UserName = 'SA' AND CompCode = '2'
ORDER BY Code;

-- V8. Other users may still expose module 18/24 - profile sweep (read-only)
SELECT UserName, COUNT(*) AS Items
FROM MenuHelp
WHERE Flag <> 'V' AND OPT1 IN (18, 24, 27)
GROUP BY UserName
ORDER BY Items DESC;
