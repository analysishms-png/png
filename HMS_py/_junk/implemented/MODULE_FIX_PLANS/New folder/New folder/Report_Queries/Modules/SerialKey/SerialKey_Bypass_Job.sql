-- =====================================================================
-- SERIAL KEY BYPASS - SCHEDULED JOB  (SQL Server Agent)
-- Ye job SERIAL KEY ko hi renew karta hai (CardExpDate nahi).
-- Serial key ka expiry uske CODE WORD se aata hai (HMS.bas Proc_4_33):
--   Hudhud=2025 Pirecy=2026 Pinaca=2027 Platoo=2028 Zombia=2029
--   Albert=2030 Ostric=2031 Legran=2032 Malmal=2033(MAX)
-- Sabse aakhri/valid code word = MALMAL => key expiry 15/Jan/2033.
-- Har run par Company ka SerialKeyNo = Malmal key set hota hai,
-- taaki app hamesha sabse door ki key-expiry (2033) dekhe.
-- =====================================================================
USE KrishnaPalaceData2627;
GO

-- =====================================================================
-- [1] STORED PROCEDURE - har call par serial key renew (Malmal = max)
-- =====================================================================
IF OBJECT_ID('dbo.sp_RenewSerialKey','P') IS NOT NULL DROP PROCEDURE dbo.sp_RenewSerialKey;
GO
CREATE PROCEDURE dbo.sp_RenewSerialKey
    @CodeWord NVARCHAR(6) = 'Malmal',   -- max code word (2033)
    @key90    INT         = 75          -- shift value
AS
BEGIN
    SET NOCOUNT ON;

    -- checksum tail = sum of code word UNICODE chars, zero-padded 4
    DECLARE @cw NVARCHAR(6) = @CodeWord;
    DECLARE @Sum INT = 0, @i INT = 1;
    WHILE @i <= LEN(@cw)
    BEGIN
        SET @Sum = @Sum + UNICODE(SUBSTRING(@cw,@i,1));
        SET @i = @i + 1;
    END
    DECLARE @Tail NVARCHAR(4) = RIGHT('0000' + CAST(@Sum AS VARCHAR(4)), 4);
    DECLARE @Plain NVARCHAR(10) = @cw + @Tail;

    -- key encode (Proc_4_28 ka ULTA / generate):
    --   stored[1] = NCHAR(key90+27); stored[i] = NCHAR(unicode(plain[i-1])+27+key90)
    DECLARE @NewKey NVARCHAR(25) = NCHAR(@key90 + 27);
    SET @i = 1;
    WHILE @i <= LEN(@Plain)
    BEGIN
        SET @NewKey = @NewKey + NCHAR(UNICODE(SUBSTRING(@Plain,@i,1)) + 27 + @key90);
        SET @i = @i + 1;
    END

    -- saari companies ka serial key lagao
    UPDATE Company
    SET    SerialKeyNo = @NewKey,
           Comp_Id     = LEFT(@NewKey, 10);
    -- MemEnviro.CardExpDate ko bhi alag se 15/Jan/2033+ ke side pe rakho
    -- (agar purani choti ho to bandh do) taaki startup block bhi pass:
    UPDATE MemEnviro
    SET    CardExpDate = CASE WHEN CardExpDate IS NULL OR CardExpDate < CONVERT(DATETIME,'20330115',112)
                              THEN CONVERT(DATETIME,'20330115',112)
                              ELSE CardExpDate END;

    -- verify
    DECLARE @Key NVARCHAR(25);
    SELECT TOP 1 @Key = SerialKeyNo FROM Company;
    DECLARE @vk INT = UNICODE(SUBSTRING(@Key,1,1)) - 27;
    DECLARE @Dep NVARCHAR(100)=''; SET @i=2;
    WHILE @i <= LEN(@Key)
    BEGIN
        SET @Dep = @Dep + NCHAR(UNICODE(SUBSTRING(@Key,@i,1)) - 27 - @vk);
        SET @i = @i + 1;
    END
    SELECT @Dep AS NewDecodedKey,
           SUBSTRING(@Dep,1,6) AS CodeWord,
           '15/Jan/2033' AS KeyExpiry,
           CONVERT(VARCHAR(11),(SELECT TOP 1 CardExpDate FROM MemEnviro),103) AS CardExpDate,
           CONVERT(VARCHAR(11),GETDATE(),103) AS Today;
END;
GO

-- test (optional): EXEC dbo.sp_RenewSerialKey;
-- =====================================================================
-- [2] SQL SERVER AGENT JOB - scheduled auto-run
-- =====================================================================
USE msdb;
GO
IF EXISTS (SELECT 1 FROM msdb.dbo.sysjobs WHERE name='SerialKeyAutoRenew')
    EXEC msdb.dbo.sp_delete_job @job_name='SerialKeyAutoRenew';
GO
EXEC msdb.dbo.sp_add_job
    @job_name      = N'SerialKeyAutoRenew',
    @enabled       = 1,
    @description   = N'Every week resets Company serial key to max code word Malmal (expiry 2033) - serial key bypass.',
    @notify_level_eventlog = 2;
GO
EXEC msdb.dbo.sp_add_jobstep
    @job_name      = N'SerialKeyAutoRenew',
    @step_name     = N'RenewSerialKey',
    @subsystem     = N'TSQL',
    @command       = N'EXEC KrishnaPalaceData2627.dbo.sp_RenewSerialKey;',
    @database_name = N'KrishnaPalaceData2627',
    @on_success_action = 1,
    @on_fail_action  = 2;
GO
EXEC msdb.dbo.sp_add_schedule
    @schedule_name    = N'WeeklySun',
    @freq_type        = 8,
    @freq_interval    = 1,
    @freq_recurrence_factor = 1,
    @active_start_time = 020000;
GO
EXEC msdb.dbo.sp_attach_schedule @job_name=N'SerialKeyAutoRenew', @schedule_name=N'WeeklySun';
GO
EXEC msdb.dbo.sp_add_jobserver @job_name=N'SerialKeyAutoRenew';
GO

-- verify job
SELECT name, enabled FROM msdb.dbo.sysjobs WHERE name='SerialKeyAutoRenew';
GO
