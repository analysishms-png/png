-- =====================================================================
-- SERIAL KEY / LICENSE - COMPLETE CHECK QUERY (all HMS.bas checks)
-- SQL Server 2008 R2
--
-- Ye query HMS.bas me serial key ke saare checks ko REPLICATE karti hai:
--
--   [A] STARTUP LICENSE BLOCK  (HMS.bas ~10799-10863)
--       1. Demo mode check   : Comp_Name = 'ANALYSIS DEMONSTRATION PACKAGE'
--       2. CardExpDate NULL  : "You are New User, Please Create License"
--       3. Comp_Id len < 4   : "InComplete License Information"
--       4. Days left <= 30   : "Your License Will be Expired within N Days"
--       5. CardExpDate < now : "License Have been Expired"
--
--   [B] MAIN SERIAL KEY VALIDATION  (Proc_4_33_110BCAC + Proc_4_28_EE06F8)
--       6. Decode the key (UNICODE shift, -27)
--       7. Code word -> expiry date
--       8. Expired         : "Software expired ! Update Serial Key"
--
-- NOTE: SerialKeyNo is nvarchar -> do NOT cast to varchar / use ASCII().
--       Always use UNICODE() and keep nvarchar.
-- =====================================================================

DECLARE @TestKey   NVARCHAR(25) = NULL;   -- apna key likho, ya NULL = DB wala

-----------------------------------------------------------
-- Load real values from DB
-----------------------------------------------------------
DECLARE @Key         NVARCHAR(25)
DECLARE @CompName    NVARCHAR(40)
DECLARE @CompId      VARCHAR(10)
DECLARE @CardExpDate DATETIME
DECLARE @Ncur        DATETIME           -- current DB date used by app (Ncur)

SELECT TOP 1
        @Key         = SerialKeyNo,
        @CompName    = Comp_Name,
        @CompId      = Comp_Id
FROM Company;

IF @TestKey IS NOT NULL SET @Key = @TestKey;   -- allow manual override

-- CardExpDate (license expiry) from MemEnviro
SELECT TOP 1 @CardExpDate = CardExpDate FROM MemEnviro;

SET @Ncur = GETDATE();                   -- today

-----------------------------------------------------------
-- [B] MAIN SERIAL KEY VALIDATION (Proc_4_33_110BCAC flow)
-----------------------------------------------------------
DECLARE @key90     INT
DECLARE @Decoded   NVARCHAR(100)
DECLARE @i         INT
DECLARE @CodeWord  NVARCHAR(6)
DECLARE @KeyExpiry DATETIME              -- expiry from serial key code word

SET @Decoded = '';
IF @Key IS NOT NULL AND LEN(@Key) > 0
BEGIN
    SET @key90 = UNICODE(SUBSTRING(@Key,1,1)) - 27;
    SET @i = 2;
    WHILE @i <= LEN(@Key)
    BEGIN
        SET @Decoded = @Decoded + NCHAR(UNICODE(SUBSTRING(@Key,@i,1)) - 27 - @key90);
        SET @i = @i + 1;
    END
END
SET @CodeWord = SUBSTRING(@Decoded, 1, 6);

SELECT @KeyExpiry = CASE @CodeWord
    WHEN 'Hudhud' THEN '15/Jan/2025'
    WHEN 'Pirecy' THEN '15/Jan/2026'
    WHEN 'Pinaca' THEN '15/Jan/2027'
    WHEN 'Platoo' THEN '15/Jan/2028'
    WHEN 'Zombia' THEN '15/Jan/2029'
    WHEN 'Albert' THEN '15/Jan/2030'
    WHEN 'Ostric' THEN '15/Jan/2031'
    WHEN 'Legran' THEN '15/Jan/2032'
    WHEN 'Malmal' THEN '15/Jan/2033'
    ELSE NULL
END;

-----------------------------------------------------------
-- Diagnostic steps table (everything HMS.bas checks)
-----------------------------------------------------------
DECLARE @Steps TABLE (Step VARCHAR(50), Detail NVARCHAR(120))
INSERT @Steps VALUES ('Demo mode Comp_Name', UPPER(ISNULL(@CompName,'')))
INSERT @Steps VALUES ('CardExpDate (DB)', ISNULL(CONVERT(VARCHAR(20),@CardExpDate,103),'(NULL)'))
INSERT @Steps VALUES ('Comp_Id', ISNULL(@CompId,'(empty)'))
INSERT @Steps VALUES ('Comp_Id length', CAST(LEN(ISNULL(@CompId,'')) AS VARCHAR(3)))
INSERT @Steps VALUES ('SerialKeyNo', ISNULL(@Key,'(empty)'))
INSERT @Steps VALUES ('Decoded key', ISNULL(@Decoded,'(empty)'))
INSERT @Steps VALUES ('Code word', ISNULL(@CodeWord,'(none)'))
INSERT @Steps VALUES ('Key-derived expiry', ISNULL(CONVERT(VARCHAR(20),@KeyExpiry,103),'(unknown)'))
INSERT @Steps VALUES ('Days to CardExp', CASE WHEN @CardExpDate IS NULL THEN '(n/a)' ELSE CAST(DATEDIFF(DAY,@Ncur,@CardExpDate) AS VARCHAR(10)) END)

SELECT Step AS [Check], Detail AS [Value] FROM @Steps;

-----------------------------------------------------------
-- FINAL RESULT - same decisions as HMS.bas
-----------------------------------------------------------
SELECT
    @CompName                                              AS Comp_Name,
    @CompId                                                AS Comp_Id,
    @Key                                                   AS SerialKeyNo,
    @Decoded                                               AS DecodedKey,
    @CodeWord                                              AS CodeWord,
    @KeyExpiry                                             AS KeyExpiry,
    @CardExpDate                                           AS CardExpDate_DB,
    @Ncur                                                  AS TodayDate,
    -- 1) Demo mode bypass (HMS 10838)
    CASE WHEN UPPER(ISNULL(@CompName,'')) = 'ANALYSIS DEMONSTRATION PACKAGE'
         THEN 'DEMO MODE - license checks SKIPPED'
         ELSE 'NOT demo mode'
    END                                                    AS DemoCheck,
    -- Full license status (HMS start block + main validation)
    CASE
        WHEN @Key IS NULL OR LEN(@Key) = 0
            THEN 'FAIL 1 - NO SERIAL KEY'
        WHEN UPPER(ISNULL(@CompName,'')) = 'ANALYSIS DEMONSTRATION PACKAGE'
            THEN 'PASS - DEMO MODE (no check)'
        WHEN @CardExpDate IS NULL
            THEN 'FAIL 2 - NEW USER, Please Create License (CardExpDate is NULL)'
        WHEN @KeyExpiry IS NULL
            THEN 'FAIL 3 - UNKNOWN CODE WORD (invalid serial key)'
        WHEN @Ncur > @KeyExpiry OR @Ncur > @CardExpDate
            THEN 'FAIL 4 - LICENSE EXPIRED (Contact S/W Vendor)'
        WHEN DATEDIFF(DAY, @Ncur, ISNULL(@KeyExpiry,@CardExpDate)) <= 30
             OR DATEDIFF(DAY, @Ncur, @CardExpDate) <= 30
            THEN 'WARN - LICENSE EXPIRING SOON (<=30 days)'
        ELSE 'PASS - LICENSE ACTIVE'
    END                                                    AS LicenseStatus;
