-- HMS SQL Tracking trace (SQL Server 2008 R2 classic trace)
-- Observation only: captures statements issued against MOONData2627. No DB changes.
SET NOCOUNT ON;

-- cleanup any earlier instance of this trace
DECLARE @old INT;
SELECT @old = id FROM sys.traces WHERE path LIKE '%HMS_SQL_Tracking%';
IF @old IS NOT NULL
BEGIN
    EXEC sp_trace_setstatus @old, 0;  -- stop
    EXEC sp_trace_setstatus @old, 2;  -- close
    PRINT 'CLOSED_OLD_TRACE ' + CAST(@old AS VARCHAR(10));
END

DECLARE @log NVARCHAR(4000);
EXEC master.dbo.xp_instance_regread N'HKEY_LOCAL_MACHINE',
     N'SOFTWARE\Microsoft\MSSQLServer\MSSQLServer', N'DefaultLog', @log OUTPUT;
IF @log IS NULL
    SET @log = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\Log';
PRINT 'LOGDIR=' + ISNULL(@log, '?');

DECLARE @rc INT, @tid INT, @mf BIGINT, @on BIT, @path NVARCHAR(4000);
SET @mf = 100;           -- 100 MB per file, rollover enabled
SET @on = 1;
SET @path = @log + N'\HMS_SQL_Tracking';

EXEC @rc = master.dbo.sp_trace_create @tid OUTPUT, 2, @path, @mf, NULL;
IF @rc <> 0
BEGIN
    PRINT 'CREATE_FAILED rc=' + CAST(@rc AS VARCHAR(20));
    GOTO done;
END
PRINT 'TRACE_ID=' + CAST(@tid AS VARCHAR(10));

-- columns: 1 TextData, 3 DatabaseID, 8 HostName, 10 ApplicationName, 11 LoginName,
--          12 SPID, 13 Duration, 14 StartTime, 16 Reads, 30 Error
-- event 10: RPC:Completed
EXEC sp_trace_setevent @tid, 10, 1,  @on; EXEC sp_trace_setevent @tid, 10, 3,  @on;
EXEC sp_trace_setevent @tid, 10, 8,  @on; EXEC sp_trace_setevent @tid, 10, 10, @on;
EXEC sp_trace_setevent @tid, 10, 11, @on; EXEC sp_trace_setevent @tid, 10, 12, @on;
EXEC sp_trace_setevent @tid, 10, 13, @on; EXEC sp_trace_setevent @tid, 10, 14, @on;
EXEC sp_trace_setevent @tid, 10, 16, @on;
-- event 12: SQL:BatchCompleted
EXEC sp_trace_setevent @tid, 12, 1,  @on; EXEC sp_trace_setevent @tid, 12, 3,  @on;
EXEC sp_trace_setevent @tid, 12, 8,  @on; EXEC sp_trace_setevent @tid, 12, 10, @on;
EXEC sp_trace_setevent @tid, 12, 11, @on; EXEC sp_trace_setevent @tid, 12, 12, @on;
EXEC sp_trace_setevent @tid, 12, 13, @on; EXEC sp_trace_setevent @tid, 12, 14, @on;
EXEC sp_trace_setevent @tid, 12, 16, @on;
-- event 41: SQL:StmtCompleted
EXEC sp_trace_setevent @tid, 41, 1,  @on; EXEC sp_trace_setevent @tid, 41, 3,  @on;
EXEC sp_trace_setevent @tid, 41, 12, @on; EXEC sp_trace_setevent @tid, 41, 13, @on;
EXEC sp_trace_setevent @tid, 41, 14, @on;
-- event 45: SP:StmtCompleted
EXEC sp_trace_setevent @tid, 45, 1,  @on; EXEC sp_trace_setevent @tid, 45, 3,  @on;
EXEC sp_trace_setevent @tid, 45, 12, @on; EXEC sp_trace_setevent @tid, 45, 13, @on;
EXEC sp_trace_setevent @tid, 45, 14, @on;
-- event 33: Exception (errors)
EXEC sp_trace_setevent @tid, 33, 1,  @on; EXEC sp_trace_setevent @tid, 33, 3,  @on;
EXEC sp_trace_setevent @tid, 33, 14, @on; EXEC sp_trace_setevent @tid, 33, 30, @on;

-- filter: only MOONData2627 (DatabaseID = 15, column 3, EQUAL=0, AND=0)
EXEC sp_trace_setfilter @tid, 3, 0, 0, 15;

EXEC sp_trace_setstatus @tid, 1;   -- START
PRINT 'TRACE_STARTED';

done:
