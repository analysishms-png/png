-- =====================================================================
-- LICENSE - UNIVERSAL EXTEND  (kisi bhi database/company me chalao)
-- Har baar run karne par license date aage badh jaati hai.
--   * Koi hardcoded date/DB/company nahi - jis DB me chalaoge wahi kaam karega.
--   * Relative dates (GETDATE()) use hoti hain.
--   * MemEnviro.CardExpDate = (aaj + @ExtendDays)
--     Agar purani date aaj se zyada door hai to usi se aur aage badh jaata hai.
--   * Company ki saari rows ke serial key bhi update ho jaate hain (optional).
-- =====================================================================

-- ---- SETTINGS (yahan badal sakte ho) ----
DECLARE @ExtendDays  INT = 365;              -- har run par kitne din badhaye (~1 saal)
DECLARE @UpdateKey   INT = 1;                -- 1 = company keys bhi update, 0 = sirf date
DECLARE @CodeWord    NVARCHAR(6) = 'Malmal'; -- keys ke liye code word (Malmal=2033, max)
DECLARE @key90       INT = 75;               -- shift value

-- ---- [1] nayi CardExpDate = aaj + @ExtendDays (purani se door ho to bhi aage) ----
DECLARE @minExpiry DATETIME = DATEADD(DAY, @ExtendDays, GETDATE());

UPDATE MemEnviro
SET    CardExpDate = CASE
                         WHEN CardExpDate IS NULL                       THEN @minExpiry
                         WHEN CardExpDate <= GETDATE()                  THEN @minExpiry
                         WHEN DATEADD(DAY,@ExtendDays,CardExpDate) > @minExpiry
                                                                        THEN DATEADD(DAY,@ExtendDays,CardExpDate)
                         ELSE @minExpiry
                     END
WHERE  CardExpDate IS NOT NULL OR CardExpDate IS NULL;
-- note: WHERE always true => har row/MemEnviro update

-- ---- [2] (optional) Company ke serial key bhi naye code word se update karo ----
IF @UpdateKey = 1
BEGIN
    -- har company ke liye alag checksum tail ke saath key banao + lagao
    DECLARE @c VARCHAR(10), @plain NVARCHAR(10), @newkey NVARCHAR(25), @tail NVARCHAR(4), @cw NVARCHAR(6), @i INT, @sum INT;

    DECLARE cur CURSOR FOR SELECT Comp_Code FROM Company;
    OPEN cur;
    FETCH NEXT FROM cur INTO @c;
    WHILE @@FETCH_STATUS = 0
    BEGIN
        SET @cw    = @CodeWord;
        -- checksum tail = sum of code word chars, zero-padded 4
        SET @sum   = 0; SET @i = 1;
        WHILE @i <= LEN(@cw) BEGIN SET @sum = @sum + UNICODE(SUBSTRING(@cw,@i,1)); SET @i=@i+1; END
        SET @tail   = RIGHT('0000' + CAST(@sum AS VARCHAR(4)), 4);
        SET @plain  = @cw + @tail;
        SET @newkey = NCHAR(@key90 + 27);
        SET @i = 1;
        WHILE @i <= LEN(@plain)
        BEGIN
            SET @newkey = @newkey + NCHAR(UNICODE(SUBSTRING(@plain,@i,1)) + 27 + @key90);
            SET @i = @i + 1;
        END

        UPDATE Company
        SET    SerialKeyNo = @newkey,
               Comp_Id     = LEFT(@newkey, 10)
        WHERE  Comp_Code   = @c;

        FETCH NEXT FROM cur INTO @c;
    END
    CLOSE cur; DEALLOCATE cur;
END

-- ---- [3] RESULT / VERIFY ----
SELECT
    (SELECT TOP 1 CONVERT(VARCHAR(11),CardExpDate,103) FROM MemEnviro) AS NewCardExpDate,
    CONVERT(VARCHAR(11),GETDATE(),103)                                 AS Today,
    CONVERT(VARCHAR(10),
        DATEDIFF(DAY, GETDATE(), (SELECT TOP 1 CardExpDate FROM MemEnviro)))
        + ' days'                                                      AS ActiveFor
;

-- Company keys verify (decode):
SELECT Comp_Code, Comp_Name, SerialKeyNo, Comp_Id FROM Company;
