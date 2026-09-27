-- =====================================================================
-- SERIAL KEY - GENERATE + UPDATE + VERIFY  (ek saath)
-- Ye script: (1) Pinaca0588 ka valid key generate karta hai,
--            (2) usse Company table me lagata hai,
--            (3) DB se padhke verify karta hai.
-- CodeWord = saal ka naam: Hudhud=2025 Pirecy=2026 Pinaca=2027
--            Platoo=2028 Zombia=2029 Albert=2030 Ostric=2031
--            Legran=2032 Malmal=2033
-- =====================================================================

-- CODE WORD yahan change karo:
DECLARE @CodeWord NVARCHAR(6) = 'Albert';   -- Albert = 2030
DECLARE @key90    INT         = 75;         -- shift

-- ---- [1] GENERATE ----
-- Tail = 4-digit checksum (sum of code word chars, zero-padded)
DECLARE @Tail NVARCHAR(4) = RIGHT('0000' + CAST(
    (SELECT SUM(UNICODE(SUBSTRING(@CodeWord, n, 1)))
     FROM (SELECT number n FROM master..spt_values
           WHERE type='P' AND number BETWEEN 1 AND LEN(@CodeWord)) z)
    AS VARCHAR(4)), 4);

DECLARE @Plain     NVARCHAR(10) = @CodeWord + @Tail
DECLARE @NewKey    NVARCHAR(25) = NCHAR(@key90 + 27)
DECLARE @i INT = 1
WHILE @i <= LEN(@Plain)
BEGIN
    SET @NewKey = @NewKey + NCHAR(UNICODE(SUBSTRING(@Plain,@i,1)) + 27 + @key90)
    SET @i = @i + 1
END

-- Generated key (SELECT se pahle dikhta hai):
SELECT @CodeWord AS CodeWord,
       @Plain    AS PlainText,
       @NewKey   AS GeneratedKey;                    -- <- ye key lagana hai

-- ---- [2] UPDATE ----
DECLARE @CompCode VARCHAR(10) = '01';                -- company
-- REAL UPDATE (Unicode-safe, NCHAR use karke -- koi corruption nahi):
UPDATE Company
SET    SerialKeyNo = @NewKey,
       Comp_Id     = LEFT(@NewKey, 10)
WHERE  Comp_Code   = @CompCode;

-- ---- [3] VERIFY ----
-- DB me ab jo key hai use padhke decode karo + nap diye gaye expiry se compare:
DECLARE @Key NVARCHAR(25)
SELECT TOP 1 @Key = SerialKeyNo FROM Company WHERE Comp_Code=@CompCode

DECLARE @vk INT = UNICODE(SUBSTRING(@Key,1,1)) - 27
DECLARE @Decoded NVARCHAR(100) = ''
SET @i = 2
WHILE @i <= LEN(@Key)
BEGIN
    SET @Decoded = @Decoded + NCHAR(UNICODE(SUBSTRING(@Key,@i,1)) - 27 - @vk)
    SET @i = @i + 1
END

SELECT
    @Key         AS DbSerialKey,
    @Decoded     AS DecodedKey,
    SUBSTRING(@Decoded,1,6) AS CodeWord,
    CASE SUBSTRING(@Decoded,1,6)
        WHEN 'Hudhud' THEN '15/Jan/2025' WHEN 'Pirecy' THEN '15/Jan/2026'
        WHEN 'Pinaca' THEN '15/Jan/2027' WHEN 'Platoo' THEN '15/Jan/2028'
        WHEN 'Zombia' THEN '15/Jan/2029' WHEN 'Albert' THEN '15/Jan/2030'
        WHEN 'Ostric' THEN '15/Jan/2031' WHEN 'Legran' THEN '15/Jan/2032'
        WHEN 'Malmal' THEN '15/Jan/2033' ELSE NULL END  AS CodeWordExpiry,
    GETDATE()  AS Today,
    (SELECT TOP 1 CONVERT(VARCHAR(11),CardExpDate,103) FROM MemEnviro)
               AS DbCardExpDate,
    CASE
        WHEN @Decoded = @Plain
             AND SUBSTRING(@Decoded,1,6) = @CodeWord
        THEN 'PASS - key correct, round trip verified'  -- key sahi set hua
        ELSE 'FAIL - key mismatch'
    END AS VerifyResult;
