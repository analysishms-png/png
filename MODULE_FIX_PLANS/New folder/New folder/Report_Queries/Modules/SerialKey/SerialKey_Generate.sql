-- =====================================================================
-- [3] SERIAL KEY - GENERATE
-- Kisi bhi code word ke liye VALID serial key generate karo
-- (Proc_4_28_EE06F8 decode ka ULTA / encode).
-- CodeWords: Hudhud=2025, Pirecy=2026, Pinaca=2027, Platoo=2028,
--            Zombia=2029, Albert=2030, Ostric=2031, Legran=2032, Malmal=2033
-- =====================================================================
DECLARE @CodeWord NVARCHAR(6) = 'Pinaca';   -- yahan code word likho
DECLARE @key90    INT         = 75;          -- shift value
DECLARE @Tail     NVARCHAR(4) = '';          -- '' = auto checksum tail

IF @Tail = ''
BEGIN
    SET @Tail = RIGHT('0000' + CAST(
        (SELECT SUM(UNICODE(SUBSTRING(@CodeWord, n, 1)))
         FROM (SELECT number n FROM master..spt_values
               WHERE type='P' AND number BETWEEN 1 AND LEN(@CodeWord)) z)
        AS VARCHAR(4)), 4);
END

DECLARE @Plain     NVARCHAR(10) = @CodeWord + @Tail
DECLARE @SerialKey NVARCHAR(25) = NCHAR(@key90 + 27)
DECLARE @i INT = 1

WHILE @i <= LEN(@Plain)
BEGIN
    SET @SerialKey = @SerialKey + NCHAR(UNICODE(SUBSTRING(@Plain,@i,1)) + 27 + @key90)
    SET @i = @i + 1
END

-- verify: decode back
DECLARE @vk INT = UNICODE(SUBSTRING(@SerialKey,1,1)) - 27
DECLARE @v NVARCHAR(25) = ''
SET @i = 2
WHILE @i <= LEN(@SerialKey)
BEGIN
    SET @v = @v + NCHAR(UNICODE(SUBSTRING(@SerialKey,@i,1)) - 27 - @vk)
    SET @i = @i + 1
END

SELECT
    @CodeWord      AS CodeWord,
    @Tail          AS Tail,
    @Plain         AS PlainText,
    @SerialKey     AS GeneratedSerialKey,
    @v             AS DecodedBack,
    CASE WHEN @v = @Plain THEN 'OK - round trip verified' ELSE 'ERROR' END AS Verify;
