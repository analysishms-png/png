-- =====================================================================
-- 13_Messaging — read-only SQL extracted from EXTRAS.text (VB6 source)
-- Origin DB : MOONData2627 (SQL Server)   Source: EXTRAS.text line cited
-- RULE      : READ-ONLY. Run against a COPY of the database only.
--             Never UPDATE/DELETE/INSERT in production (Night-Audit rule).
-- Tag       : [VERIFIED-SQL] = statement found verbatim in decompiled code
-- =====================================================================

-- ---------------------------------------------------------------------
-- 1. SMS dequeue — the module's core query  (EXTRAS.text L7832)
--    SENDTF = 'TRUE' marks an SMS as already sent; queue = everything else.
-- ---------------------------------------------------------------------
SELECT *
FROM DBSENDSMS
WHERE ISNULL(SENDTF, '') <> 'TRUE';

-- ---------------------------------------------------------------------
-- 2. Per-document pending message type  (EXTRAS.text L626092)
-- ---------------------------------------------------------------------
SELECT MsgType
FROM DBSENDSMS WITH (NOLOCK)
WHERE ISNULL(SENDTF, '') <> 'TRUE'
  AND DocId = @DocId;          -- @DocId bound from VB6 string concat

-- ---------------------------------------------------------------------
-- 3. Next serial number inside one document  (EXTRAS.text L626051)
--    NOTE: NoLock + Max+1  -> duplicate-SNo risk under concurrency.
-- ---------------------------------------------------------------------
SELECT ISNULL(MAX(SNo), 0) + 1 AS NextSNo
FROM DBSENDSMS WITH (NOLOCK)
WHERE DocId = @DocId;

-- ---------------------------------------------------------------------
-- 4. Next voucher number per VType  (EXTRAS.text L626947)
-- ---------------------------------------------------------------------
SELECT ISNULL(MAX(VNo), 0) + 1 AS MyCode
FROM DBSENDSMS WITH (NOLOCK)
WHERE VType = @VType;

-- ---------------------------------------------------------------------
-- 5. Duplicate of #4 WITHOUT NoLock  (EXTRAS.text L629716)
--    Same business rule implemented twice -> divergence risk.
-- ---------------------------------------------------------------------
SELECT ISNULL(MAX(VNo), 0) + 1 AS MyCode
FROM DBSENDSMS
WHERE VType = @VType;

-- ---------------------------------------------------------------------
-- 6. Guest message delete (FO-owned screen)  (EXTRAS.text L87786)
--    Shown for analysis only — DO NOT RUN.
-- ---------------------------------------------------------------------
-- DELETE FROM GuestMessage WHERE DocID = @DocID;

-- ---------------------------------------------------------------------
-- 7. Guest message enquiry grid  (EXTRAS.text L87877, truncated in source)
-- ---------------------------------------------------------------------
SELECT GM.DocID        AS SearchCode,
       CAST(GM.VNo AS VARCHAR(10)) AS VrNo,
       GM.RoomNo,
       GF.Name         AS GuestName,
       GF.Company,
       GM.Caller,
       GM.T            -- column list truncated at source line width
FROM GuestMessage GM
-- JOIN <guest master / folio> GF ON ...   [INFERRED] join key not in excerpt
ORDER BY GM.VNo;

-- =====================================================================
-- Diagnostic (verification queries written for this doc, not from source)
-- =====================================================================

-- D1. Queue depth: how many SMS were never sent  -> expect 18810-ish
SELECT COUNT(*) AS PendingSms
FROM DBSENDSMS
WHERE ISNULL(SENDTF, '') <> 'TRUE';

-- D2. Row census for the module's tables
SELECT 'DBSendSMS'      AS TableName, COUNT(*) AS Rows FROM DBSendSMS
UNION ALL SELECT 'EmailSMSForward', COUNT(*) FROM EmailSMSForward
UNION ALL SELECT 'GuestMessage',    COUNT(*) FROM GuestMessage
UNION ALL SELECT 'SMSEnviro',       COUNT(*) FROM SMSEnviro
UNION ALL SELECT 'messaging',       COUNT(*) FROM messaging;

-- D3. Is SENDTF ever set? (proves whether a drain process ran)
SELECT SENDTF, COUNT(*) AS Cnt
FROM DBSENDSMS
GROUP BY SENDTF;

-- D4. GuestMessage emptiness check
SELECT COUNT(*) AS GuestMessages FROM GuestMessage;
