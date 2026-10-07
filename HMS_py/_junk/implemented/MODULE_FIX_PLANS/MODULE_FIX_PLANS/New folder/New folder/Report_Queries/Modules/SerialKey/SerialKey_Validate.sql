-- =====================================================================
-- [2] SERIAL KEY - VALIDATE
-- Kisi bhi serial key ko validate karo (wahi method jo HMS.bas use karta hai).
--   @TestKey = NULL => DB ki SerialKeyNo test hogi
--   @TestKey = 'apna key' => manual key test hogi
-- NOTE: SerialKeyNo nvarchar hai => UNICODE() use karo, ASCII() nahi.
-- =====================================================================
DECLARE @TestKey NVARCHAR(25) = NULL;   -- apna key likho ya NULL

DECLARE @Key NVARCHAR(25)
SET @Key = @TestKey;
IF @Key IS NULL
    SELECT TOP 1 @Key = SerialKeyNo FROM Company;

DECLARE @key90 INT = UNICODE(SUBSTRING(@Key,1,1)) - 27
DECLARE @Decoded NVARCHAR(100) = ''
DECLARE @i INT = 2
WHILE @i <= LEN(@Key)
BEGIN
    SET @Decoded = @Decoded + NCHAR(UNICODE(SUBSTRING(@Key,@i,1)) - 27 - @key90)
    SET @i = @i + 1
END

DECLARE @CodeWord NVARCHAR(6) = SUBSTRING(@Decoded,1,6)
DECLARE @Expiry DATETIME
SELECT @Expiry = CASE @CodeWord
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
END

SELECT
    @Key            AS SerialKeyNo,
    @Decoded        AS DecodedKey,
    @CodeWord       AS CodeWord,
    @Expiry         AS LicenseExpiry,
    GETDATE()       AS TodayDate,
    CASE WHEN @Expiry IS NOT NULL THEN DATEDIFF(DAY, GETDATE(), @Expiry) END AS DaysLeft,
    CASE
        WHEN @Key IS NULL OR LEN(@Key) = 0 THEN 'FAIL - NO SERIAL KEY'
        WHEN @Expiry IS NULL                 THEN 'FAIL - UNKNOWN CODE WORD (invalid key)'
        WHEN GETDATE() > @Expiry             THEN 'FAIL - LICENSE EXPIRED'
        WHEN DATEDIFF(DAY, GETDATE(), @Expiry) <= 30 THEN 'WARN - EXPIRING SOON'
        ELSE 'PASS - LICENSE ACTIVE'
    END             AS ValidateResult;
