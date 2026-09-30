-- =====================================================================
-- 12_EPABX — SQL statements recovered from EXTRAS.text (line-cited)
-- Source of truth: EXTRAS.text (decompiled VB6). Read-only extract; none of
-- these were executed against MOONData2627.
-- Evidence tags: [VERIFIED-VB6] = literal string in source at the cited line.
-- =====================================================================

-- ---------------------------------------------------------------------
-- 1. TelCallCodeMast — browse (EXTRAS.text L219461)
-- ---------------------------------------------------------------------
SELECT TCC.*, TCT.CallType
FROM TelCallCode AS TCC
LEFT JOIN TelCallType AS TCT ON TCC.CallTypeCode = TCT.Code
ORDER BY TCT.CallType, TCC.STDCode;
-- [VERIFIED-VB6] L219461

-- ---------------------------------------------------------------------
-- 2. TelCallCodeMast — alternate browse / search list (L219406)
--    (truncated in the decompile after ~180 chars; tail = [UNKNOWN])
-- ---------------------------------------------------------------------
SELECT TelCallCode.STDCode            AS SearchCode,
       CAST(TelCallCode.STDCode AS VARCHAR(11)) AS STDCODE,
       TelCallType.CallType,
       TelCallCode.description        -- , ... (truncated at L219406)
FROM   TelCallCode
-- [VERIFIED-VB6] L219406 (truncated)

-- ---------------------------------------------------------------------
-- 3. TelCallCodeMast — delete-then-insert save (L219330)
--    NOTE: no BEGIN TRAN / COMMIT anywhere in this routine.
-- ---------------------------------------------------------------------
DELETE FROM TelCallCode WHERE STDCode = '<STDCode>';
-- followed by an INSERT whose literal was not preserved in the dump: [UNKNOWN]
-- [VERIFIED-VB6] L219330

-- ---------------------------------------------------------------------
-- 4. TelCallTypeMast — TaxStru validation against the Tax Structure master (L31605)
--    VB6: Proc_6_107_1007C2C(MemVar_1F81044, "TelCallType", "TaxStru",
--         CStr(Me.Fields.Item("SearchCode").Value), 0, "Tax Structure")
-- ---------------------------------------------------------------------
-- validates TelCallType.TaxStru against the TaxStru master; returns 0 = invalid
-- [VERIFIED-VB6] L31605 (helper-built statement)

-- ---------------------------------------------------------------------
-- 5. Field registration — TelCallType.Site_Code (L11720)
--    VB6: Proc_6_96_FCA940(var_94, "TelCallType", "Site_Code", &HA, 1, 0, &HFF, var_FC)
-- ---------------------------------------------------------------------
-- declares TelCallType.Site_Code varchar(10)
-- [VERIFIED-VB6] L11720

-- =====================================================================
-- JET / ACCESS STORE  (DMEPABX.mdb — NOT part of MOONData2627)
-- Connection: Provider=MSDataShape;Data Provider=Microsoft.Jet.OLEDB.4.0;
--             Data Source=<app dir>\DMEPABX....   [VERIFIED-VB6] L10694
-- =====================================================================

-- ---------------------------------------------------------------------
-- 6. Wake-up alarm key allocation (L86715, L131839) — race-prone [INFERRED]
-- ---------------------------------------------------------------------
SELECT iif(IsNull(Max(ID)), 1, Max(ID)+1) AS MyCode FROM EPABX_IN;
-- [VERIFIED-VB6] L86715, L131839

-- ---------------------------------------------------------------------
-- 7. Wake-up alarm replace (L86721)
-- ---------------------------------------------------------------------
DELETE FROM EPABX_IN WHERE v_type = 'WKALM' AND ROOM_NO = '<room>' ...;
-- [VERIFIED-VB6] L86721

-- ---------------------------------------------------------------------
-- 8. Wake-up alarm insert (L86740-L86742) — Jet '#date#' literals
-- ---------------------------------------------------------------------
INSERT INTO EPABX_IN
  (ID, V_TYPE, VDATE, ROOM_NO, ROOM_NO_NEW, GUEST_NAME, ADVANCE,
   ALARM_HOUR, ALARM_MIN)
VALUES
  (<id>, 'WKALM', #<date#>, '<room>', '<room_new>', '<guest>', 0, '<hh>', ...);
-- [VERIFIED-VB6] L86740-L86742

-- ---------------------------------------------------------------------
-- 9. Check-out notification insert (L131855, duplicated at L131915)
-- ---------------------------------------------------------------------
INSERT INTO EPABX_IN (ID, V_TYPE, ROOM_NO, ROOM_NO_NEW, GUEST_NAME, ADVANCE)
VALUES (<id>, 'CHKOT', '<room>', '<new room>', '<guest>', 0);
-- [VERIFIED-VB6] L131855, L131915

-- ---------------------------------------------------------------------
-- 10. Module gate (L8179) — VB6 compares Ucase(var_C4) with "Epabx"
-- ---------------------------------------------------------------------
-- If Not (var_C4 = Ucase("Epabx")) Then ...   [VERIFIED-VB6] L8179
