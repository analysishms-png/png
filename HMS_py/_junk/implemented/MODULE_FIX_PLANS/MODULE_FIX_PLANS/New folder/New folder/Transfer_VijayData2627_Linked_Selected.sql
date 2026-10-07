/* ============================================================================
   LINKED-SERVER DATA TRANSFER   :   [VijayData2627] (remote server)  ->  current DB (destination server)
   ----------------------------------------------------------------------------
   KAAM KAISE KARE:
     1) SSMS me DESTINATION server par connect karo aur destination DB ko
        current database banao (script khud USE nahi karti).
     2) Neeche CONFIG me Linked Server ka naam check karo.
     3) F5. Har table ka status Messages window me dikhega.

   KAISE KAAM KARTA HAI:
     * Ye script DESTINATION server par chalti hai aur source server se data
       PULL karti hai (IDENTITY_INSERT local table par sahi kaam karta hai).
     * BATCH-WISE transfer (@B = 5000 rows per batch/transaction):
         - transaction log chhota rehta hai (log growth / timeouts se bachav)
         - koi batch fail ho to pichhle batches committed rehte hain;
           script dobara chalao to PK-guard sirf bache hue rows lega
     * Har table pehle local #staging me aati hai (source se EK remote read),
       phir staging se batches me destination me. Tempdb me sabse badi table
       jitni jagah chahiye ho sakti hai (table khatam hote hi free).
     * Shuru me linked server connectivity + source DB existence check hota hai.
     * Source ke saare column names ek baar #C temp table me cache hote hain,
       phir har table ke liye saare checks LOCAL hain (fast).
     * Column-NAME based insert; source ke extra columns destination me nahi
       hain to table SKIP (koi error nahi).
     * String PK comparisons par COLLATE DATABASE_DEFAULT -> server collation
       alag ho to bhi kaam karega.
     * IDENTITY tables: SET IDENTITY_INSERT ON/OFF automatic.
     * PK tables: NOT EXISTS guard -> re-run par duplicate nahi.
       (Bina-PK wali 40 tables batch to hain, par re-run guard nahi.)
     * Har table TRY/CATCH me -> ek fail ho to baaki chalte rahenge.

   LINKED SERVER BANANA HO (ek baar, destination server par):
     EXEC sp_addlinkedserver @server=N'SRC', @srvproduct=N'',
          @provider=N'SQLNCLI', @datasrc=N'REMOTE_SERVER\INSTANCE';
     (login mapping me source DB ka read access zaroori hai)

   NAAM BADALNE HO TO: generator dobara chalao
     python Gen_DataTransfer_Script.py linked <LinkedServerName> [--only=...] [--batch=N]
   ============================================================================ */

SET NOCOUNT ON;

-- ============ CONFIG (generator se baked) ============
-- Linked Server : [SRC]
-- Source DB     : [VijayData2627]  (remote server par)

DECLARE @OK bit = 1;
DECLARE @NC int;
DECLARE @RC bigint;
DECLARE @Tot bigint;
DECLARE @B  int = 5000;   -- batch size (rows per transaction)
DECLARE @MaxRid int;
DECLARE @lo int;
DECLARE @hi int;
DECLARE @BN int;

-- ============ PRE-FLIGHT CHECKS ============
BEGIN TRY
    EXEC sp_testlinkedserver N'SRC';
    PRINT 'Linked server [SRC] OK';
END TRY
BEGIN CATCH
    SET @OK = 0;
    PRINT 'STOP: linked server [SRC] reachable nahi hai -> ' + ERROR_MESSAGE();
END CATCH;

IF @OK = 1 AND NOT EXISTS (
    SELECT 1 FROM OPENQUERY([SRC],
        N'SELECT 1 AS OK WHERE DB_ID(N''VijayData2627'') IS NOT NULL'))
BEGIN
    SET @OK = 0;
    PRINT 'STOP: source DB [VijayData2627] remote server par nahi mili';
END

-- ============ SOURCE SCHEMA CACHE (#C) ============
CREATE TABLE #C (TName sysname, CName sysname, PRIMARY KEY (TName, CName));

IF @OK = 1
BEGIN
    PRINT 'Source schema check (remote catalog read)...';
    BEGIN TRY
        INSERT INTO #C (TName, CName)
        SELECT N'LedgerTDS', name
        FROM OPENQUERY([SRC], N'SELECT name FROM [VijayData2627].sys.columns
                        WHERE object_id = OBJECT_ID(N''[VijayData2627].dbo.[LedgerTDS]'')');
        INSERT INTO #C (TName, CName)
        SELECT N'ledgerRef', name
        FROM OPENQUERY([SRC], N'SELECT name FROM [VijayData2627].sys.columns
                        WHERE object_id = OBJECT_ID(N''[VijayData2627].dbo.[ledgerRef]'')');
        INSERT INTO #C (TName, CName)
        SELECT N'LedgerMMerge', name
        FROM OPENQUERY([SRC], N'SELECT name FROM [VijayData2627].sys.columns
                        WHERE object_id = OBJECT_ID(N''[VijayData2627].dbo.[LedgerMMerge]'')');
        INSERT INTO #C (TName, CName)
        SELECT N'LedgerMerge', name
        FROM OPENQUERY([SRC], N'SELECT name FROM [VijayData2627].sys.columns
                        WHERE object_id = OBJECT_ID(N''[VijayData2627].dbo.[LedgerMerge]'')');
        INSERT INTO #C (TName, CName)
        SELECT N'LedgerM', name
        FROM OPENQUERY([SRC], N'SELECT name FROM [VijayData2627].sys.columns
                        WHERE object_id = OBJECT_ID(N''[VijayData2627].dbo.[LedgerM]'')');
        INSERT INTO #C (TName, CName)
        SELECT N'ledgerAdj', name
        FROM OPENQUERY([SRC], N'SELECT name FROM [VijayData2627].sys.columns
                        WHERE object_id = OBJECT_ID(N''[VijayData2627].dbo.[ledgerAdj]'')');
        INSERT INTO #C (TName, CName)
        SELECT N'Ledger', name
        FROM OPENQUERY([SRC], N'SELECT name FROM [VijayData2627].sys.columns
                        WHERE object_id = OBJECT_ID(N''[VijayData2627].dbo.[Ledger]'')');
        INSERT INTO #C (TName, CName)
        SELECT N'KOT', name
        FROM OPENQUERY([SRC], N'SELECT name FROM [VijayData2627].sys.columns
                        WHERE object_id = OBJECT_ID(N''[VijayData2627].dbo.[KOT]'')');
        INSERT INTO #C (TName, CName)
        SELECT N'GuestFolioProfDetail', name
        FROM OPENQUERY([SRC], N'SELECT name FROM [VijayData2627].sys.columns
                        WHERE object_id = OBJECT_ID(N''[VijayData2627].dbo.[GuestFolioProfDetail]'')');
        INSERT INTO #C (TName, CName)
        SELECT N'GuestFolioAmend', name
        FROM OPENQUERY([SRC], N'SELECT name FROM [VijayData2627].sys.columns
                        WHERE object_id = OBJECT_ID(N''[VijayData2627].dbo.[GuestFolioAmend]'')');
        INSERT INTO #C (TName, CName)
        SELECT N'GuestFolio', name
        FROM OPENQUERY([SRC], N'SELECT name FROM [VijayData2627].sys.columns
                        WHERE object_id = OBJECT_ID(N''[VijayData2627].dbo.[GuestFolio]'')');
        INSERT INTO #C (TName, CName)
        SELECT N'Site', name
        FROM OPENQUERY([SRC], N'SELECT name FROM [VijayData2627].sys.columns
                        WHERE object_id = OBJECT_ID(N''[VijayData2627].dbo.[Site]'')');
        INSERT INTO #C (TName, CName)
        SELECT N'Voucher_Type', name
        FROM OPENQUERY([SRC], N'SELECT name FROM [VijayData2627].sys.columns
                        WHERE object_id = OBJECT_ID(N''[VijayData2627].dbo.[Voucher_Type]'')');
        PRINT 'Source schema cache ready (' +
              CAST((SELECT COUNT(DISTINCT TName) FROM #C) AS varchar(10)) + ' tables)';
    END TRY
    BEGIN CATCH
        SET @OK = 0;
        PRINT 'STOP: source schema read fail -> ' + ERROR_MESSAGE();
    END CATCH;
END

PRINT '';
PRINT '========== TRANSFER START (batch=5000) ==========';

PRINT '';

------------------------------------------------------------
-- [LedgerTDS]
------------------------------------------------------------
IF @OK = 1
BEGIN
    SET @NC = (SELECT COUNT(*) FROM #C WHERE TName = N'LedgerTDS');

    IF @NC = 0
        PRINT 'SKIPPED [LedgerTDS] -> source table missing';
    ELSE IF OBJECT_ID(N'dbo.[LedgerTDS]', N'U') IS NULL
        PRINT 'SKIPPED [LedgerTDS] -> destination table missing';
    ELSE IF EXISTS (SELECT 1 FROM #C WHERE TName = N'LedgerTDS'
                    AND CName NOT IN (SELECT name FROM sys.columns
                                      WHERE object_id = OBJECT_ID(N'dbo.[LedgerTDS]')))
        PRINT 'SKIPPED [LedgerTDS] -> source ke kuch columns destination me nahi hain';
    ELSE IF EXISTS (SELECT 1 FROM sys.columns
                    WHERE object_id = OBJECT_ID(N'dbo.[LedgerTDS]')
                      AND name NOT IN (SELECT CName FROM #C WHERE TName = N'LedgerTDS'))
        PRINT 'SKIPPED [LedgerTDS] -> destination me extra columns hain'
    ELSE
    BEGIN
        BEGIN TRY
            PRINT 'Transferring [LedgerTDS] ...';

            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;

            -- (1) source data ek baar local staging me (single read)
            SELECT IDENTITY(int, 1, 1) AS _xf_rid, [DocId], [V_SNo], [Site_Code], [v_Prefix], [V_DATE], [TDSCode], [TDSDrCode], [TDSYN], [ONAMT], [TDS], [TDSAMT], [TDSPOST], [TDSDocId], [TDSV_SNo], [U_Name], [U_EntDt], [U_AE], [LogSite_Code]
            INTO #S_T
            FROM OPENQUERY([SRC], N'SELECT [DocId],[V_SNo],[Site_Code],[v_Prefix],[V_DATE],[TDSCode],[TDSDrCode],[TDSYN],[ONAMT],[TDS],[TDSAMT],[TDSPOST],[TDSDocId],[TDSV_SNo],[U_Name],[U_EntDt],[U_AE],[LogSite_Code] FROM [VijayData2627].dbo.[LedgerTDS]') AS s;

            CREATE CLUSTERED INDEX _xf_ix ON #S_T (_xf_rid);

            SET @MaxRid = ISNULL((SELECT MAX(_xf_rid) FROM #S_T), 0);
            SET @lo = 1; SET @hi = 0; SET @BN = 0; SET @Tot = 0;

            -- (2) batch-wise copy: har batch apne transaction me (@B rows)
            WHILE @lo <= @MaxRid
            BEGIN
                SET @hi = @lo + @B - 1;
                BEGIN TRANSACTION;
                    INSERT INTO [dbo].[LedgerTDS] ([DocId], [V_SNo], [Site_Code], [v_Prefix], [V_DATE], [TDSCode], [TDSDrCode], [TDSYN], [ONAMT], [TDS], [TDSAMT], [TDSPOST], [TDSDocId], [TDSV_SNo], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
                    SELECT [DocId], [V_SNo], [Site_Code], [v_Prefix], [V_DATE], [TDSCode], [TDSDrCode], [TDSYN], [ONAMT], [TDS], [TDSAMT], [TDSPOST], [TDSDocId], [TDSV_SNo], [U_Name], [U_EntDt], [U_AE], [LogSite_Code]
                    FROM #S_T AS st
                    WHERE st._xf_rid >= @lo AND st._xf_rid <= @hi
                       AND NOT EXISTS (SELECT 1 FROM [dbo].[LedgerTDS] AS d
                                        WHERE d.[DocId] = st.[DocId] COLLATE DATABASE_DEFAULT AND d.[V_SNo] = st.[V_SNo])
                    SET @RC = @@ROWCOUNT;
                    COMMIT TRANSACTION;

                    SET @Tot = @Tot + @RC;
                IF @RC > 0
                BEGIN
                    SET @BN = @BN + 1;
                    PRINT '   batch ' + CAST(@BN AS varchar(10)) + ': '
                          + CAST(@RC AS varchar(20)) + ' rows (total '
                          + CAST(@Tot AS varchar(20)) + ')';
                END
                SET @lo = @hi + 1;
            END

            PRINT '   DONE [LedgerTDS]: ' + CAST(@Tot AS varchar(20)) + ' rows, '
                  + CAST(@BN AS varchar(10)) + ' batch(es)';

            DROP TABLE #S_T;
        END TRY
        BEGIN CATCH
            IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;
            PRINT '   FAILED [LedgerTDS] -> ' + ERROR_MESSAGE();
        END CATCH;
    END
END

------------------------------------------------------------
-- [ledgerRef]
------------------------------------------------------------
IF @OK = 1
BEGIN
    SET @NC = (SELECT COUNT(*) FROM #C WHERE TName = N'ledgerRef');

    IF @NC = 0
        PRINT 'SKIPPED [ledgerRef] -> source table missing';
    ELSE IF OBJECT_ID(N'dbo.[ledgerRef]', N'U') IS NULL
        PRINT 'SKIPPED [ledgerRef] -> destination table missing';
    ELSE IF EXISTS (SELECT 1 FROM #C WHERE TName = N'ledgerRef'
                    AND CName NOT IN (SELECT name FROM sys.columns
                                      WHERE object_id = OBJECT_ID(N'dbo.[ledgerRef]')))
        PRINT 'SKIPPED [ledgerRef] -> source ke kuch columns destination me nahi hain';
    ELSE IF EXISTS (SELECT 1 FROM sys.columns
                    WHERE object_id = OBJECT_ID(N'dbo.[ledgerRef]')
                      AND name NOT IN (SELECT CName FROM #C WHERE TName = N'ledgerRef'))
        PRINT 'SKIPPED [ledgerRef] -> destination me extra columns hain'
    ELSE
    BEGIN
        BEGIN TRY
            PRINT 'Transferring [ledgerRef] ...';

            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;

            -- (1) source data ek baar local staging me (single read)
            SELECT IDENTITY(int, 1, 1) AS _xf_rid, [Id], [DocId], [V_SNo], [Dr], [Cr], [SubCode], [U_Name], [U_EntDt], [U_AE], [DueDate], [AgRefNo], [AgRefType], [V_Date], [Site_Code], [LogSite_Code]
            INTO #S_T
            FROM OPENQUERY([SRC], N'SELECT [Id],[DocId],[V_SNo],[Dr],[Cr],[SubCode],[U_Name],[U_EntDt],[U_AE],[DueDate],[AgRefNo],[AgRefType],[V_Date],[Site_Code],[LogSite_Code] FROM [VijayData2627].dbo.[ledgerRef]') AS s;

            CREATE CLUSTERED INDEX _xf_ix ON #S_T (_xf_rid);

            SET @MaxRid = ISNULL((SELECT MAX(_xf_rid) FROM #S_T), 0);
            SET @lo = 1; SET @hi = 0; SET @BN = 0; SET @Tot = 0;

            -- (2) batch-wise copy: har batch apne transaction me (@B rows)
            WHILE @lo <= @MaxRid
            BEGIN
                SET @hi = @lo + @B - 1;
                BEGIN TRANSACTION;
                    INSERT INTO [dbo].[ledgerRef] ([Id], [DocId], [V_SNo], [Dr], [Cr], [SubCode], [U_Name], [U_EntDt], [U_AE], [DueDate], [AgRefNo], [AgRefType], [V_Date], [Site_Code], [LogSite_Code])
                    SELECT [Id], [DocId], [V_SNo], [Dr], [Cr], [SubCode], [U_Name], [U_EntDt], [U_AE], [DueDate], [AgRefNo], [AgRefType], [V_Date], [Site_Code], [LogSite_Code]
                    FROM #S_T AS st
                    WHERE st._xf_rid >= @lo AND st._xf_rid <= @hi
                       AND NOT EXISTS (SELECT 1 FROM [dbo].[ledgerRef] AS d
                                        WHERE d.[Id] = st.[Id])
                    SET @RC = @@ROWCOUNT;
                    COMMIT TRANSACTION;

                    SET @Tot = @Tot + @RC;
                IF @RC > 0
                BEGIN
                    SET @BN = @BN + 1;
                    PRINT '   batch ' + CAST(@BN AS varchar(10)) + ': '
                          + CAST(@RC AS varchar(20)) + ' rows (total '
                          + CAST(@Tot AS varchar(20)) + ')';
                END
                SET @lo = @hi + 1;
            END

            PRINT '   DONE [ledgerRef]: ' + CAST(@Tot AS varchar(20)) + ' rows, '
                  + CAST(@BN AS varchar(10)) + ' batch(es)';

            DROP TABLE #S_T;
        END TRY
        BEGIN CATCH
            IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;
            PRINT '   FAILED [ledgerRef] -> ' + ERROR_MESSAGE();
        END CATCH;
    END
END

------------------------------------------------------------
-- [LedgerMMerge]
------------------------------------------------------------
IF @OK = 1
BEGIN
    SET @NC = (SELECT COUNT(*) FROM #C WHERE TName = N'LedgerMMerge');

    IF @NC = 0
        PRINT 'SKIPPED [LedgerMMerge] -> source table missing';
    ELSE IF OBJECT_ID(N'dbo.[LedgerMMerge]', N'U') IS NULL
        PRINT 'SKIPPED [LedgerMMerge] -> destination table missing';
    ELSE IF EXISTS (SELECT 1 FROM #C WHERE TName = N'LedgerMMerge'
                    AND CName NOT IN (SELECT name FROM sys.columns
                                      WHERE object_id = OBJECT_ID(N'dbo.[LedgerMMerge]')))
        PRINT 'SKIPPED [LedgerMMerge] -> source ke kuch columns destination me nahi hain';
    ELSE IF EXISTS (SELECT 1 FROM sys.columns
                    WHERE object_id = OBJECT_ID(N'dbo.[LedgerMMerge]')
                      AND name NOT IN (SELECT CName FROM #C WHERE TName = N'LedgerMMerge'))
        PRINT 'SKIPPED [LedgerMMerge] -> destination me extra columns hain'
    ELSE
    BEGIN
        BEGIN TRY
            PRINT 'Transferring [LedgerMMerge] ...';

            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;

            -- (1) source data ek baar local staging me (single read)
            SELECT IDENTITY(int, 1, 1) AS _xf_rid, [DocId], [V_Type], [v_Prefix], [V_No], [Site_Code], [V_Date], [Narration], [U_Name], [U_EntDt], [U_AE], [Trf_Date], [LogSite_Code], [SeqNo]
            INTO #S_T
            FROM OPENQUERY([SRC], N'SELECT [DocId],[V_Type],[v_Prefix],[V_No],[Site_Code],[V_Date],[Narration],[U_Name],[U_EntDt],[U_AE],[Trf_Date],[LogSite_Code],[SeqNo] FROM [VijayData2627].dbo.[LedgerMMerge]') AS s;

            CREATE CLUSTERED INDEX _xf_ix ON #S_T (_xf_rid);

            SET @MaxRid = ISNULL((SELECT MAX(_xf_rid) FROM #S_T), 0);
            SET @lo = 1; SET @hi = 0; SET @BN = 0; SET @Tot = 0;

            -- (2) batch-wise copy: har batch apne transaction me (@B rows)
            WHILE @lo <= @MaxRid
            BEGIN
                SET @hi = @lo + @B - 1;
                BEGIN TRANSACTION;
                    INSERT INTO [dbo].[LedgerMMerge] ([DocId], [V_Type], [v_Prefix], [V_No], [Site_Code], [V_Date], [Narration], [U_Name], [U_EntDt], [U_AE], [Trf_Date], [LogSite_Code], [SeqNo])
                    SELECT [DocId], [V_Type], [v_Prefix], [V_No], [Site_Code], [V_Date], [Narration], [U_Name], [U_EntDt], [U_AE], [Trf_Date], [LogSite_Code], [SeqNo]
                    FROM #S_T AS st
                    WHERE st._xf_rid >= @lo AND st._xf_rid <= @hi
                       AND NOT EXISTS (SELECT 1 FROM [dbo].[LedgerMMerge] AS d
                                        WHERE d.[DocId] = st.[DocId] COLLATE DATABASE_DEFAULT)
                    SET @RC = @@ROWCOUNT;
                    COMMIT TRANSACTION;

                    SET @Tot = @Tot + @RC;
                IF @RC > 0
                BEGIN
                    SET @BN = @BN + 1;
                    PRINT '   batch ' + CAST(@BN AS varchar(10)) + ': '
                          + CAST(@RC AS varchar(20)) + ' rows (total '
                          + CAST(@Tot AS varchar(20)) + ')';
                END
                SET @lo = @hi + 1;
            END

            PRINT '   DONE [LedgerMMerge]: ' + CAST(@Tot AS varchar(20)) + ' rows, '
                  + CAST(@BN AS varchar(10)) + ' batch(es)';

            DROP TABLE #S_T;
        END TRY
        BEGIN CATCH
            IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;
            PRINT '   FAILED [LedgerMMerge] -> ' + ERROR_MESSAGE();
        END CATCH;
    END
END

------------------------------------------------------------
-- [LedgerMerge]
------------------------------------------------------------
IF @OK = 1
BEGIN
    SET @NC = (SELECT COUNT(*) FROM #C WHERE TName = N'LedgerMerge');

    IF @NC = 0
        PRINT 'SKIPPED [LedgerMerge] -> source table missing';
    ELSE IF OBJECT_ID(N'dbo.[LedgerMerge]', N'U') IS NULL
        PRINT 'SKIPPED [LedgerMerge] -> destination table missing';
    ELSE IF EXISTS (SELECT 1 FROM #C WHERE TName = N'LedgerMerge'
                    AND CName NOT IN (SELECT name FROM sys.columns
                                      WHERE object_id = OBJECT_ID(N'dbo.[LedgerMerge]')))
        PRINT 'SKIPPED [LedgerMerge] -> source ke kuch columns destination me nahi hain';
    ELSE IF EXISTS (SELECT 1 FROM sys.columns
                    WHERE object_id = OBJECT_ID(N'dbo.[LedgerMerge]')
                      AND name NOT IN (SELECT CName FROM #C WHERE TName = N'LedgerMerge'))
        PRINT 'SKIPPED [LedgerMerge] -> destination me extra columns hain'
    ELSE
    BEGIN
        BEGIN TRY
            PRINT 'Transferring [LedgerMerge] ...';

            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;

            -- (1) source data ek baar local staging me (single read)
            SELECT IDENTITY(int, 1, 1) AS _xf_rid, [DocId], [V_SNo], [V_Type], [V_No], [v_Prefix], [Site_Code], [V_Date], [SubCode], [AmtCr], [AmtDr], [ContraSub], [Chq_No], [Chq_Date], [Clg_Date], [Narration], [U_Name], [U_EntDt], [U_AE], [SQty], [Pqty], [AgRefNo], [VTime], [Mth_Year], [emp_code], [GroupCode], [GroupNature], [LogSite_Code], [TImp_Dt], [SeqNo]
            INTO #S_T
            FROM OPENQUERY([SRC], N'SELECT [DocId],[V_SNo],[V_Type],[V_No],[v_Prefix],[Site_Code],[V_Date],[SubCode],[AmtCr],[AmtDr],[ContraSub],[Chq_No],[Chq_Date],[Clg_Date],[Narration],[U_Name],[U_EntDt],[U_AE],[SQty],[Pqty],[AgRefNo],[VTime],[Mth_Year],[emp_code],[GroupCode],[GroupNature],[LogSite_Code],[TImp_Dt],[SeqNo] FROM [VijayData2627].dbo.[LedgerMerge]') AS s;

            CREATE CLUSTERED INDEX _xf_ix ON #S_T (_xf_rid);

            SET @MaxRid = ISNULL((SELECT MAX(_xf_rid) FROM #S_T), 0);
            SET @lo = 1; SET @hi = 0; SET @BN = 0; SET @Tot = 0;

            -- (2) batch-wise copy: har batch apne transaction me (@B rows)
            WHILE @lo <= @MaxRid
            BEGIN
                SET @hi = @lo + @B - 1;
                BEGIN TRANSACTION;
                    INSERT INTO [dbo].[LedgerMerge] ([DocId], [V_SNo], [V_Type], [V_No], [v_Prefix], [Site_Code], [V_Date], [SubCode], [AmtCr], [AmtDr], [ContraSub], [Chq_No], [Chq_Date], [Clg_Date], [Narration], [U_Name], [U_EntDt], [U_AE], [SQty], [Pqty], [AgRefNo], [VTime], [Mth_Year], [emp_code], [GroupCode], [GroupNature], [LogSite_Code], [TImp_Dt], [SeqNo])
                    SELECT [DocId], [V_SNo], [V_Type], [V_No], [v_Prefix], [Site_Code], [V_Date], [SubCode], [AmtCr], [AmtDr], [ContraSub], [Chq_No], [Chq_Date], [Clg_Date], [Narration], [U_Name], [U_EntDt], [U_AE], [SQty], [Pqty], [AgRefNo], [VTime], [Mth_Year], [emp_code], [GroupCode], [GroupNature], [LogSite_Code], [TImp_Dt], [SeqNo]
                    FROM #S_T AS st
                    WHERE st._xf_rid >= @lo AND st._xf_rid <= @hi
                       AND NOT EXISTS (SELECT 1 FROM [dbo].[LedgerMerge] AS d
                                        WHERE d.[DocId] = st.[DocId] COLLATE DATABASE_DEFAULT AND d.[V_SNo] = st.[V_SNo])
                    SET @RC = @@ROWCOUNT;
                    COMMIT TRANSACTION;

                    SET @Tot = @Tot + @RC;
                IF @RC > 0
                BEGIN
                    SET @BN = @BN + 1;
                    PRINT '   batch ' + CAST(@BN AS varchar(10)) + ': '
                          + CAST(@RC AS varchar(20)) + ' rows (total '
                          + CAST(@Tot AS varchar(20)) + ')';
                END
                SET @lo = @hi + 1;
            END

            PRINT '   DONE [LedgerMerge]: ' + CAST(@Tot AS varchar(20)) + ' rows, '
                  + CAST(@BN AS varchar(10)) + ' batch(es)';

            DROP TABLE #S_T;
        END TRY
        BEGIN CATCH
            IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;
            PRINT '   FAILED [LedgerMerge] -> ' + ERROR_MESSAGE();
        END CATCH;
    END
END

------------------------------------------------------------
-- [LedgerM]
------------------------------------------------------------
IF @OK = 1
BEGIN
    SET @NC = (SELECT COUNT(*) FROM #C WHERE TName = N'LedgerM');

    IF @NC = 0
        PRINT 'SKIPPED [LedgerM] -> source table missing';
    ELSE IF OBJECT_ID(N'dbo.[LedgerM]', N'U') IS NULL
        PRINT 'SKIPPED [LedgerM] -> destination table missing';
    ELSE IF EXISTS (SELECT 1 FROM #C WHERE TName = N'LedgerM'
                    AND CName NOT IN (SELECT name FROM sys.columns
                                      WHERE object_id = OBJECT_ID(N'dbo.[LedgerM]')))
        PRINT 'SKIPPED [LedgerM] -> source ke kuch columns destination me nahi hain';
    ELSE IF EXISTS (SELECT 1 FROM sys.columns
                    WHERE object_id = OBJECT_ID(N'dbo.[LedgerM]')
                      AND name NOT IN (SELECT CName FROM #C WHERE TName = N'LedgerM'))
        PRINT 'SKIPPED [LedgerM] -> destination me extra columns hain'
    ELSE
    BEGIN
        BEGIN TRY
            PRINT 'Transferring [LedgerM] ...';

            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;

            -- (1) source data ek baar local staging me (single read)
            SELECT IDENTITY(int, 1, 1) AS _xf_rid, [DocId], [V_Type], [v_Prefix], [V_No], [Site_Code], [V_Date], [Narration], [U_Name], [U_EntDt], [U_AE], [Trf_Date], [LogSite_Code], [SeqNo]
            INTO #S_T
            FROM OPENQUERY([SRC], N'SELECT [DocId],[V_Type],[v_Prefix],[V_No],[Site_Code],[V_Date],[Narration],[U_Name],[U_EntDt],[U_AE],[Trf_Date],[LogSite_Code],[SeqNo] FROM [VijayData2627].dbo.[LedgerM]') AS s;

            CREATE CLUSTERED INDEX _xf_ix ON #S_T (_xf_rid);

            SET @MaxRid = ISNULL((SELECT MAX(_xf_rid) FROM #S_T), 0);
            SET @lo = 1; SET @hi = 0; SET @BN = 0; SET @Tot = 0;

            -- (2) batch-wise copy: har batch apne transaction me (@B rows)
            WHILE @lo <= @MaxRid
            BEGIN
                SET @hi = @lo + @B - 1;
                BEGIN TRANSACTION;
                    INSERT INTO [dbo].[LedgerM] ([DocId], [V_Type], [v_Prefix], [V_No], [Site_Code], [V_Date], [Narration], [U_Name], [U_EntDt], [U_AE], [Trf_Date], [LogSite_Code], [SeqNo])
                    SELECT [DocId], [V_Type], [v_Prefix], [V_No], [Site_Code], [V_Date], [Narration], [U_Name], [U_EntDt], [U_AE], [Trf_Date], [LogSite_Code], [SeqNo]
                    FROM #S_T AS st
                    WHERE st._xf_rid >= @lo AND st._xf_rid <= @hi
                       AND NOT EXISTS (SELECT 1 FROM [dbo].[LedgerM] AS d
                                        WHERE d.[DocId] = st.[DocId] COLLATE DATABASE_DEFAULT)
                    SET @RC = @@ROWCOUNT;
                    COMMIT TRANSACTION;

                    SET @Tot = @Tot + @RC;
                IF @RC > 0
                BEGIN
                    SET @BN = @BN + 1;
                    PRINT '   batch ' + CAST(@BN AS varchar(10)) + ': '
                          + CAST(@RC AS varchar(20)) + ' rows (total '
                          + CAST(@Tot AS varchar(20)) + ')';
                END
                SET @lo = @hi + 1;
            END

            PRINT '   DONE [LedgerM]: ' + CAST(@Tot AS varchar(20)) + ' rows, '
                  + CAST(@BN AS varchar(10)) + ' batch(es)';

            DROP TABLE #S_T;
        END TRY
        BEGIN CATCH
            IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;
            PRINT '   FAILED [LedgerM] -> ' + ERROR_MESSAGE();
        END CATCH;
    END
END

------------------------------------------------------------
-- [ledgerAdj]
------------------------------------------------------------
IF @OK = 1
BEGIN
    SET @NC = (SELECT COUNT(*) FROM #C WHERE TName = N'ledgerAdj');

    IF @NC = 0
        PRINT 'SKIPPED [ledgerAdj] -> source table missing';
    ELSE IF OBJECT_ID(N'dbo.[ledgerAdj]', N'U') IS NULL
        PRINT 'SKIPPED [ledgerAdj] -> destination table missing';
    ELSE IF EXISTS (SELECT 1 FROM #C WHERE TName = N'ledgerAdj'
                    AND CName NOT IN (SELECT name FROM sys.columns
                                      WHERE object_id = OBJECT_ID(N'dbo.[ledgerAdj]')))
        PRINT 'SKIPPED [ledgerAdj] -> source ke kuch columns destination me nahi hain';
    ELSE IF EXISTS (SELECT 1 FROM sys.columns
                    WHERE object_id = OBJECT_ID(N'dbo.[ledgerAdj]')
                      AND name NOT IN (SELECT CName FROM #C WHERE TName = N'ledgerAdj'))
        PRINT 'SKIPPED [ledgerAdj] -> destination me extra columns hain'
    ELSE
    BEGIN
        BEGIN TRY
            PRINT 'Transferring [ledgerAdj] ...';

            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;

            -- (1) source data ek baar local staging me (single read)
            SELECT IDENTITY(int, 1, 1) AS _xf_rid, [DocId1], [V_SNo1], [DocId2], [V_SNo2], [Cr], [SubCode], [Name], [AgRefNo], [U_Name], [U_EntDt], [U_AE], [Site_Code], [LogSite_Code]
            INTO #S_T
            FROM OPENQUERY([SRC], N'SELECT [DocId1],[V_SNo1],[DocId2],[V_SNo2],[Cr],[SubCode],[Name],[AgRefNo],[U_Name],[U_EntDt],[U_AE],[Site_Code],[LogSite_Code] FROM [VijayData2627].dbo.[ledgerAdj]') AS s;

            CREATE CLUSTERED INDEX _xf_ix ON #S_T (_xf_rid);

            SET @MaxRid = ISNULL((SELECT MAX(_xf_rid) FROM #S_T), 0);
            SET @lo = 1; SET @hi = 0; SET @BN = 0; SET @Tot = 0;

            -- (2) batch-wise copy: har batch apne transaction me (@B rows)
            WHILE @lo <= @MaxRid
            BEGIN
                SET @hi = @lo + @B - 1;
                BEGIN TRANSACTION;
                    INSERT INTO [dbo].[ledgerAdj] ([DocId1], [V_SNo1], [DocId2], [V_SNo2], [Cr], [SubCode], [Name], [AgRefNo], [U_Name], [U_EntDt], [U_AE], [Site_Code], [LogSite_Code])
                    SELECT [DocId1], [V_SNo1], [DocId2], [V_SNo2], [Cr], [SubCode], [Name], [AgRefNo], [U_Name], [U_EntDt], [U_AE], [Site_Code], [LogSite_Code]
                    FROM #S_T AS st
                    WHERE st._xf_rid >= @lo AND st._xf_rid <= @hi
                       AND NOT EXISTS (SELECT 1 FROM [dbo].[ledgerAdj] AS d
                                        WHERE d.[DocId1] = st.[DocId1] COLLATE DATABASE_DEFAULT AND d.[V_SNo1] = st.[V_SNo1] AND d.[DocId2] = st.[DocId2] COLLATE DATABASE_DEFAULT AND d.[V_SNo2] = st.[V_SNo2] AND d.[SubCode] = st.[SubCode] COLLATE DATABASE_DEFAULT)
                    SET @RC = @@ROWCOUNT;
                    COMMIT TRANSACTION;

                    SET @Tot = @Tot + @RC;
                IF @RC > 0
                BEGIN
                    SET @BN = @BN + 1;
                    PRINT '   batch ' + CAST(@BN AS varchar(10)) + ': '
                          + CAST(@RC AS varchar(20)) + ' rows (total '
                          + CAST(@Tot AS varchar(20)) + ')';
                END
                SET @lo = @hi + 1;
            END

            PRINT '   DONE [ledgerAdj]: ' + CAST(@Tot AS varchar(20)) + ' rows, '
                  + CAST(@BN AS varchar(10)) + ' batch(es)';

            DROP TABLE #S_T;
        END TRY
        BEGIN CATCH
            IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;
            PRINT '   FAILED [ledgerAdj] -> ' + ERROR_MESSAGE();
        END CATCH;
    END
END

------------------------------------------------------------
-- [Ledger]
------------------------------------------------------------
IF @OK = 1
BEGIN
    SET @NC = (SELECT COUNT(*) FROM #C WHERE TName = N'Ledger');

    IF @NC = 0
        PRINT 'SKIPPED [Ledger] -> source table missing';
    ELSE IF OBJECT_ID(N'dbo.[Ledger]', N'U') IS NULL
        PRINT 'SKIPPED [Ledger] -> destination table missing';
    ELSE IF EXISTS (SELECT 1 FROM #C WHERE TName = N'Ledger'
                    AND CName NOT IN (SELECT name FROM sys.columns
                                      WHERE object_id = OBJECT_ID(N'dbo.[Ledger]')))
        PRINT 'SKIPPED [Ledger] -> source ke kuch columns destination me nahi hain';
    ELSE IF EXISTS (SELECT 1 FROM sys.columns
                    WHERE object_id = OBJECT_ID(N'dbo.[Ledger]')
                      AND name NOT IN (SELECT CName FROM #C WHERE TName = N'Ledger'))
        PRINT 'SKIPPED [Ledger] -> destination me extra columns hain'
    ELSE
    BEGIN
        BEGIN TRY
            PRINT 'Transferring [Ledger] ...';

            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;

            -- (1) source data ek baar local staging me (single read)
            SELECT IDENTITY(int, 1, 1) AS _xf_rid, [DocId], [V_SNo], [V_Type], [V_No], [v_Prefix], [Site_Code], [V_Date], [SubCode], [AmtCr], [AmtDr], [ContraSub], [Chq_No], [Chq_Date], [Clg_Date], [Narration], [U_Name], [U_EntDt], [U_AE], [SQty], [Pqty], [AgRefNo], [VTime], [Mth_Year], [emp_code], [GroupCode], [GroupNature], [LogSite_Code], [TImp_Dt], [SeqNo]
            INTO #S_T
            FROM OPENQUERY([SRC], N'SELECT [DocId],[V_SNo],[V_Type],[V_No],[v_Prefix],[Site_Code],[V_Date],[SubCode],[AmtCr],[AmtDr],[ContraSub],[Chq_No],[Chq_Date],[Clg_Date],[Narration],[U_Name],[U_EntDt],[U_AE],[SQty],[Pqty],[AgRefNo],[VTime],[Mth_Year],[emp_code],[GroupCode],[GroupNature],[LogSite_Code],[TImp_Dt],[SeqNo] FROM [VijayData2627].dbo.[Ledger]') AS s;

            CREATE CLUSTERED INDEX _xf_ix ON #S_T (_xf_rid);

            SET @MaxRid = ISNULL((SELECT MAX(_xf_rid) FROM #S_T), 0);
            SET @lo = 1; SET @hi = 0; SET @BN = 0; SET @Tot = 0;

            -- (2) batch-wise copy: har batch apne transaction me (@B rows)
            WHILE @lo <= @MaxRid
            BEGIN
                SET @hi = @lo + @B - 1;
                BEGIN TRANSACTION;
                    INSERT INTO [dbo].[Ledger] ([DocId], [V_SNo], [V_Type], [V_No], [v_Prefix], [Site_Code], [V_Date], [SubCode], [AmtCr], [AmtDr], [ContraSub], [Chq_No], [Chq_Date], [Clg_Date], [Narration], [U_Name], [U_EntDt], [U_AE], [SQty], [Pqty], [AgRefNo], [VTime], [Mth_Year], [emp_code], [GroupCode], [GroupNature], [LogSite_Code], [TImp_Dt], [SeqNo])
                    SELECT [DocId], [V_SNo], [V_Type], [V_No], [v_Prefix], [Site_Code], [V_Date], [SubCode], [AmtCr], [AmtDr], [ContraSub], [Chq_No], [Chq_Date], [Clg_Date], [Narration], [U_Name], [U_EntDt], [U_AE], [SQty], [Pqty], [AgRefNo], [VTime], [Mth_Year], [emp_code], [GroupCode], [GroupNature], [LogSite_Code], [TImp_Dt], [SeqNo]
                    FROM #S_T AS st
                    WHERE st._xf_rid >= @lo AND st._xf_rid <= @hi
                       AND NOT EXISTS (SELECT 1 FROM [dbo].[Ledger] AS d
                                        WHERE d.[DocId] = st.[DocId] COLLATE DATABASE_DEFAULT AND d.[V_SNo] = st.[V_SNo])
                    SET @RC = @@ROWCOUNT;
                    COMMIT TRANSACTION;

                    SET @Tot = @Tot + @RC;
                IF @RC > 0
                BEGIN
                    SET @BN = @BN + 1;
                    PRINT '   batch ' + CAST(@BN AS varchar(10)) + ': '
                          + CAST(@RC AS varchar(20)) + ' rows (total '
                          + CAST(@Tot AS varchar(20)) + ')';
                END
                SET @lo = @hi + 1;
            END

            PRINT '   DONE [Ledger]: ' + CAST(@Tot AS varchar(20)) + ' rows, '
                  + CAST(@BN AS varchar(10)) + ' batch(es)';

            DROP TABLE #S_T;
        END TRY
        BEGIN CATCH
            IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;
            PRINT '   FAILED [Ledger] -> ' + ERROR_MESSAGE();
        END CATCH;
    END
END

------------------------------------------------------------
-- [KOT]
------------------------------------------------------------
IF @OK = 1
BEGIN
    SET @NC = (SELECT COUNT(*) FROM #C WHERE TName = N'KOT');

    IF @NC = 0
        PRINT 'SKIPPED [KOT] -> source table missing';
    ELSE IF OBJECT_ID(N'dbo.[KOT]', N'U') IS NULL
        PRINT 'SKIPPED [KOT] -> destination table missing';
    ELSE IF EXISTS (SELECT 1 FROM #C WHERE TName = N'KOT'
                    AND CName NOT IN (SELECT name FROM sys.columns
                                      WHERE object_id = OBJECT_ID(N'dbo.[KOT]')))
        PRINT 'SKIPPED [KOT] -> source ke kuch columns destination me nahi hain';
    ELSE IF EXISTS (SELECT 1 FROM sys.columns
                    WHERE object_id = OBJECT_ID(N'dbo.[KOT]')
                      AND name NOT IN (SELECT CName FROM #C WHERE TName = N'KOT'))
        PRINT 'SKIPPED [KOT] -> destination me extra columns hain'
    ELSE
    BEGIN
        BEGIN TRY
            PRINT 'Transferring [KOT] ...';

            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;

            -- (1) source data ek baar local staging me (single read)
            SELECT IDENTITY(int, 1, 1) AS _xf_rid, [DocId], [Sno], [Vtype], [Vtime], [VNo], [Site_Code], [Vprefix], [Vdate], [RestCode], [RoomCat], [RoomType], [RoomNo], [Item], [Qty], [Rate], [Amount], [VoidYN], [Waiter], [Pending], [KOTType], [U_Name], [U_EntDt], [U_AE], [U_Name1], [U_EntDt1], [U_AE1], [DelFlag], [NCKOT], [ContraDocId], [ContraSNo], [Reasons], [Remarks], [LogSite_Code], [NCTYPE], [FreeSno], [Printed], [Description], [SchemeCode], [Party], [ItemRestCode], [SeqNo], [GuarAtt], [TokenNo], [PrintFlag]
            INTO #S_T
            FROM OPENQUERY([SRC], N'SELECT [DocId],[Sno],[Vtype],[Vtime],[VNo],[Site_Code],[Vprefix],[Vdate],[RestCode],[RoomCat],[RoomType],[RoomNo],[Item],[Qty],[Rate],[Amount],[VoidYN],[Waiter],[Pending],[KOTType],[U_Name],[U_EntDt],[U_AE],[U_Name1],[U_EntDt1],[U_AE1],[DelFlag],[NCKOT],[ContraDocId],[ContraSNo],[Reasons],[Remarks],[LogSite_Code],[NCTYPE],[FreeSno],[Printed],[Description],[SchemeCode],[Party],[ItemRestCode],[SeqNo],[GuarAtt],[TokenNo],[PrintFlag] FROM [VijayData2627].dbo.[KOT]') AS s;

            CREATE CLUSTERED INDEX _xf_ix ON #S_T (_xf_rid);

            SET @MaxRid = ISNULL((SELECT MAX(_xf_rid) FROM #S_T), 0);
            SET @lo = 1; SET @hi = 0; SET @BN = 0; SET @Tot = 0;

            -- (2) batch-wise copy: har batch apne transaction me (@B rows)
            WHILE @lo <= @MaxRid
            BEGIN
                SET @hi = @lo + @B - 1;
                BEGIN TRANSACTION;
                    INSERT INTO [dbo].[KOT] ([DocId], [Sno], [Vtype], [Vtime], [VNo], [Site_Code], [Vprefix], [Vdate], [RestCode], [RoomCat], [RoomType], [RoomNo], [Item], [Qty], [Rate], [Amount], [VoidYN], [Waiter], [Pending], [KOTType], [U_Name], [U_EntDt], [U_AE], [U_Name1], [U_EntDt1], [U_AE1], [DelFlag], [NCKOT], [ContraDocId], [ContraSNo], [Reasons], [Remarks], [LogSite_Code], [NCTYPE], [FreeSno], [Printed], [Description], [SchemeCode], [Party], [ItemRestCode], [SeqNo], [GuarAtt], [TokenNo], [PrintFlag])
                    SELECT [DocId], [Sno], [Vtype], [Vtime], [VNo], [Site_Code], [Vprefix], [Vdate], [RestCode], [RoomCat], [RoomType], [RoomNo], [Item], [Qty], [Rate], [Amount], [VoidYN], [Waiter], [Pending], [KOTType], [U_Name], [U_EntDt], [U_AE], [U_Name1], [U_EntDt1], [U_AE1], [DelFlag], [NCKOT], [ContraDocId], [ContraSNo], [Reasons], [Remarks], [LogSite_Code], [NCTYPE], [FreeSno], [Printed], [Description], [SchemeCode], [Party], [ItemRestCode], [SeqNo], [GuarAtt], [TokenNo], [PrintFlag]
                    FROM #S_T AS st
                    WHERE st._xf_rid >= @lo AND st._xf_rid <= @hi
                       AND NOT EXISTS (SELECT 1 FROM [dbo].[KOT] AS d
                                        WHERE d.[DocId] = st.[DocId] COLLATE DATABASE_DEFAULT AND d.[Sno] = st.[Sno])
                    SET @RC = @@ROWCOUNT;
                    COMMIT TRANSACTION;

                    SET @Tot = @Tot + @RC;
                IF @RC > 0
                BEGIN
                    SET @BN = @BN + 1;
                    PRINT '   batch ' + CAST(@BN AS varchar(10)) + ': '
                          + CAST(@RC AS varchar(20)) + ' rows (total '
                          + CAST(@Tot AS varchar(20)) + ')';
                END
                SET @lo = @hi + 1;
            END

            PRINT '   DONE [KOT]: ' + CAST(@Tot AS varchar(20)) + ' rows, '
                  + CAST(@BN AS varchar(10)) + ' batch(es)';

            DROP TABLE #S_T;
        END TRY
        BEGIN CATCH
            IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;
            PRINT '   FAILED [KOT] -> ' + ERROR_MESSAGE();
        END CATCH;
    END
END

------------------------------------------------------------
-- [GuestFolioProfDetail]
------------------------------------------------------------
IF @OK = 1
BEGIN
    SET @NC = (SELECT COUNT(*) FROM #C WHERE TName = N'GuestFolioProfDetail');

    IF @NC = 0
        PRINT 'SKIPPED [GuestFolioProfDetail] -> source table missing';
    ELSE IF OBJECT_ID(N'dbo.[GuestFolioProfDetail]', N'U') IS NULL
        PRINT 'SKIPPED [GuestFolioProfDetail] -> destination table missing';
    ELSE IF EXISTS (SELECT 1 FROM #C WHERE TName = N'GuestFolioProfDetail'
                    AND CName NOT IN (SELECT name FROM sys.columns
                                      WHERE object_id = OBJECT_ID(N'dbo.[GuestFolioProfDetail]')))
        PRINT 'SKIPPED [GuestFolioProfDetail] -> source ke kuch columns destination me nahi hain';
    ELSE IF EXISTS (SELECT 1 FROM sys.columns
                    WHERE object_id = OBJECT_ID(N'dbo.[GuestFolioProfDetail]')
                      AND name NOT IN (SELECT CName FROM #C WHERE TName = N'GuestFolioProfDetail'))
        PRINT 'SKIPPED [GuestFolioProfDetail] -> destination me extra columns hain'
    ELSE
    BEGIN
        BEGIN TRY
            PRINT 'Transferring [GuestFolioProfDetail] ...';

            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;

            -- (1) source data ek baar local staging me (single read)
            SELECT IDENTITY(int, 1, 1) AS _xf_rid, [Docid], [GuestProf], [mProf], [U_AE], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code]
            INTO #S_T
            FROM OPENQUERY([SRC], N'SELECT [Docid],[GuestProf],[mProf],[U_AE],[U_Name],[U_EntDt],[Site_Code],[LogSite_Code] FROM [VijayData2627].dbo.[GuestFolioProfDetail]') AS s;

            CREATE CLUSTERED INDEX _xf_ix ON #S_T (_xf_rid);

            SET @MaxRid = ISNULL((SELECT MAX(_xf_rid) FROM #S_T), 0);
            SET @lo = 1; SET @hi = 0; SET @BN = 0; SET @Tot = 0;

            -- (2) batch-wise copy: har batch apne transaction me (@B rows)
            WHILE @lo <= @MaxRid
            BEGIN
                SET @hi = @lo + @B - 1;
                BEGIN TRANSACTION;
                    INSERT INTO [dbo].[GuestFolioProfDetail] ([Docid], [GuestProf], [mProf], [U_AE], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code])
                    SELECT [Docid], [GuestProf], [mProf], [U_AE], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code]
                    FROM #S_T AS st
                    WHERE st._xf_rid >= @lo AND st._xf_rid <= @hi
                       AND NOT EXISTS (SELECT 1 FROM [dbo].[GuestFolioProfDetail] AS d
                                        WHERE d.[Docid] = st.[Docid] COLLATE DATABASE_DEFAULT AND d.[GuestProf] = st.[GuestProf] COLLATE DATABASE_DEFAULT)
                    SET @RC = @@ROWCOUNT;
                    COMMIT TRANSACTION;

                    SET @Tot = @Tot + @RC;
                IF @RC > 0
                BEGIN
                    SET @BN = @BN + 1;
                    PRINT '   batch ' + CAST(@BN AS varchar(10)) + ': '
                          + CAST(@RC AS varchar(20)) + ' rows (total '
                          + CAST(@Tot AS varchar(20)) + ')';
                END
                SET @lo = @hi + 1;
            END

            PRINT '   DONE [GuestFolioProfDetail]: ' + CAST(@Tot AS varchar(20)) + ' rows, '
                  + CAST(@BN AS varchar(10)) + ' batch(es)';

            DROP TABLE #S_T;
        END TRY
        BEGIN CATCH
            IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;
            PRINT '   FAILED [GuestFolioProfDetail] -> ' + ERROR_MESSAGE();
        END CATCH;
    END
END

------------------------------------------------------------
-- [GuestFolioAmend]
------------------------------------------------------------
IF @OK = 1
BEGIN
    SET @NC = (SELECT COUNT(*) FROM #C WHERE TName = N'GuestFolioAmend');

    IF @NC = 0
        PRINT 'SKIPPED [GuestFolioAmend] -> source table missing';
    ELSE IF OBJECT_ID(N'dbo.[GuestFolioAmend]', N'U') IS NULL
        PRINT 'SKIPPED [GuestFolioAmend] -> destination table missing';
    ELSE IF EXISTS (SELECT 1 FROM #C WHERE TName = N'GuestFolioAmend'
                    AND CName NOT IN (SELECT name FROM sys.columns
                                      WHERE object_id = OBJECT_ID(N'dbo.[GuestFolioAmend]')))
        PRINT 'SKIPPED [GuestFolioAmend] -> source ke kuch columns destination me nahi hain';
    ELSE IF EXISTS (SELECT 1 FROM sys.columns
                    WHERE object_id = OBJECT_ID(N'dbo.[GuestFolioAmend]')
                      AND name NOT IN (SELECT CName FROM #C WHERE TName = N'GuestFolioAmend'))
        PRINT 'SKIPPED [GuestFolioAmend] -> destination me extra columns hain'
    ELSE
    BEGIN
        BEGIN TRY
            PRINT 'Transferring [GuestFolioAmend] ...';

            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;

            -- (1) source data ek baar local staging me (single read)
            SELECT IDENTITY(int, 1, 1) AS _xf_rid, [FolioNo], [Site_Code], [GuestProf], [RoomNo], [OldDepDate], [OldDepTime], [DepDate], [DepTime], [U_Name], [U_EntDt], [U_AE], [LogSite_Code]
            INTO #S_T
            FROM OPENQUERY([SRC], N'SELECT [FolioNo],[Site_Code],[GuestProf],[RoomNo],[OldDepDate],[OldDepTime],[DepDate],[DepTime],[U_Name],[U_EntDt],[U_AE],[LogSite_Code] FROM [VijayData2627].dbo.[GuestFolioAmend]') AS s;

            CREATE CLUSTERED INDEX _xf_ix ON #S_T (_xf_rid);

            SET @MaxRid = ISNULL((SELECT MAX(_xf_rid) FROM #S_T), 0);
            SET @lo = 1; SET @hi = 0; SET @BN = 0; SET @Tot = 0;

            -- (2) batch-wise copy: har batch apne transaction me (@B rows)
            WHILE @lo <= @MaxRid
            BEGIN
                SET @hi = @lo + @B - 1;
                BEGIN TRANSACTION;
                    INSERT INTO [dbo].[GuestFolioAmend] ([FolioNo], [Site_Code], [GuestProf], [RoomNo], [OldDepDate], [OldDepTime], [DepDate], [DepTime], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
                    SELECT [FolioNo], [Site_Code], [GuestProf], [RoomNo], [OldDepDate], [OldDepTime], [DepDate], [DepTime], [U_Name], [U_EntDt], [U_AE], [LogSite_Code]
                    FROM #S_T AS st
                    WHERE st._xf_rid >= @lo AND st._xf_rid <= @hi
                       AND NOT EXISTS (SELECT 1 FROM [dbo].[GuestFolioAmend] AS d
                                        WHERE d.[FolioNo] = st.[FolioNo] AND d.[Site_Code] = st.[Site_Code] COLLATE DATABASE_DEFAULT AND d.[OldDepDate] = st.[OldDepDate])
                    SET @RC = @@ROWCOUNT;
                    COMMIT TRANSACTION;

                    SET @Tot = @Tot + @RC;
                IF @RC > 0
                BEGIN
                    SET @BN = @BN + 1;
                    PRINT '   batch ' + CAST(@BN AS varchar(10)) + ': '
                          + CAST(@RC AS varchar(20)) + ' rows (total '
                          + CAST(@Tot AS varchar(20)) + ')';
                END
                SET @lo = @hi + 1;
            END

            PRINT '   DONE [GuestFolioAmend]: ' + CAST(@Tot AS varchar(20)) + ' rows, '
                  + CAST(@BN AS varchar(10)) + ' batch(es)';

            DROP TABLE #S_T;
        END TRY
        BEGIN CATCH
            IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;
            PRINT '   FAILED [GuestFolioAmend] -> ' + ERROR_MESSAGE();
        END CATCH;
    END
END

------------------------------------------------------------
-- [GuestFolio]
------------------------------------------------------------
IF @OK = 1
BEGIN
    SET @NC = (SELECT COUNT(*) FROM #C WHERE TName = N'GuestFolio');

    IF @NC = 0
        PRINT 'SKIPPED [GuestFolio] -> source table missing';
    ELSE IF OBJECT_ID(N'dbo.[GuestFolio]', N'U') IS NULL
        PRINT 'SKIPPED [GuestFolio] -> destination table missing';
    ELSE IF EXISTS (SELECT 1 FROM #C WHERE TName = N'GuestFolio'
                    AND CName NOT IN (SELECT name FROM sys.columns
                                      WHERE object_id = OBJECT_ID(N'dbo.[GuestFolio]')))
        PRINT 'SKIPPED [GuestFolio] -> source ke kuch columns destination me nahi hain';
    ELSE IF EXISTS (SELECT 1 FROM sys.columns
                    WHERE object_id = OBJECT_ID(N'dbo.[GuestFolio]')
                      AND name NOT IN (SELECT CName FROM #C WHERE TName = N'GuestFolio'))
        PRINT 'SKIPPED [GuestFolio] -> destination me extra columns hain'
    ELSE
    BEGIN
        BEGIN TRY
            PRINT 'Transferring [GuestFolio] ...';

            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;

            -- (1) source data ek baar local staging me (single read)
            SELECT IDENTITY(int, 1, 1) AS _xf_rid, [DocId], [FolioNo], [Vtype], [Vdate], [Site_Code], [Vprefix], [GuestProf], [Name], [Add1], [Add2], [City], [NoDays], [SplitFolio], [Remarks], [Authorisation], [Company], [PurVisit], [Nationality], [ArrFrom], [Destination], [TravelMode], [TclFac], [Remark], [RODisc], [RSDisc], [BookingDocId], [U_Name], [U_EntDt], [U_AE], [GroupCode], [BussSource], [MarketSeg], [DepDate], [TravelAgent], [MFolioNo], [Comp], [MFolioNoDocid], [LogSite_Code], [RefNo], [BookingSno], [MyRate], [DoorLock_Card_SN], [RefBookNo]
            INTO #S_T
            FROM OPENQUERY([SRC], N'SELECT [DocId],[FolioNo],[Vtype],[Vdate],[Site_Code],[Vprefix],[GuestProf],[Name],[Add1],[Add2],[City],[NoDays],[SplitFolio],[Remarks],[Authorisation],[Company],[PurVisit],[Nationality],[ArrFrom],[Destination],[TravelMode],[TclFac],[Remark],[RODisc],[RSDisc],[BookingDocId],[U_Name],[U_EntDt],[U_AE],[GroupCode],[BussSource],[MarketSeg],[DepDate],[TravelAgent],[MFolioNo],[Comp],[MFolioNoDocid],[LogSite_Code],[RefNo],[BookingSno],[MyRate],[DoorLock_Card_SN],[RefBookNo] FROM [VijayData2627].dbo.[GuestFolio]') AS s;

            CREATE CLUSTERED INDEX _xf_ix ON #S_T (_xf_rid);

            SET @MaxRid = ISNULL((SELECT MAX(_xf_rid) FROM #S_T), 0);
            SET @lo = 1; SET @hi = 0; SET @BN = 0; SET @Tot = 0;

            -- (2) batch-wise copy: har batch apne transaction me (@B rows)
            WHILE @lo <= @MaxRid
            BEGIN
                SET @hi = @lo + @B - 1;
                BEGIN TRANSACTION;
                    INSERT INTO [dbo].[GuestFolio] ([DocId], [FolioNo], [Vtype], [Vdate], [Site_Code], [Vprefix], [GuestProf], [Name], [Add1], [Add2], [City], [NoDays], [SplitFolio], [Remarks], [Authorisation], [Company], [PurVisit], [Nationality], [ArrFrom], [Destination], [TravelMode], [TclFac], [Remark], [RODisc], [RSDisc], [BookingDocId], [U_Name], [U_EntDt], [U_AE], [GroupCode], [BussSource], [MarketSeg], [DepDate], [TravelAgent], [MFolioNo], [Comp], [MFolioNoDocid], [LogSite_Code], [RefNo], [BookingSno], [MyRate], [DoorLock_Card_SN], [RefBookNo])
                    SELECT [DocId], [FolioNo], [Vtype], [Vdate], [Site_Code], [Vprefix], [GuestProf], [Name], [Add1], [Add2], [City], [NoDays], [SplitFolio], [Remarks], [Authorisation], [Company], [PurVisit], [Nationality], [ArrFrom], [Destination], [TravelMode], [TclFac], [Remark], [RODisc], [RSDisc], [BookingDocId], [U_Name], [U_EntDt], [U_AE], [GroupCode], [BussSource], [MarketSeg], [DepDate], [TravelAgent], [MFolioNo], [Comp], [MFolioNoDocid], [LogSite_Code], [RefNo], [BookingSno], [MyRate], [DoorLock_Card_SN], [RefBookNo]
                    FROM #S_T AS st
                    WHERE st._xf_rid >= @lo AND st._xf_rid <= @hi
                       AND NOT EXISTS (SELECT 1 FROM [dbo].[GuestFolio] AS d
                                        WHERE d.[DocId] = st.[DocId] COLLATE DATABASE_DEFAULT)
                    SET @RC = @@ROWCOUNT;
                    COMMIT TRANSACTION;

                    SET @Tot = @Tot + @RC;
                IF @RC > 0
                BEGIN
                    SET @BN = @BN + 1;
                    PRINT '   batch ' + CAST(@BN AS varchar(10)) + ': '
                          + CAST(@RC AS varchar(20)) + ' rows (total '
                          + CAST(@Tot AS varchar(20)) + ')';
                END
                SET @lo = @hi + 1;
            END

            PRINT '   DONE [GuestFolio]: ' + CAST(@Tot AS varchar(20)) + ' rows, '
                  + CAST(@BN AS varchar(10)) + ' batch(es)';

            DROP TABLE #S_T;
        END TRY
        BEGIN CATCH
            IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;
            PRINT '   FAILED [GuestFolio] -> ' + ERROR_MESSAGE();
        END CATCH;
    END
END

------------------------------------------------------------
-- [Site]
------------------------------------------------------------
IF @OK = 1
BEGIN
    SET @NC = (SELECT COUNT(*) FROM #C WHERE TName = N'Site');

    IF @NC = 0
        PRINT 'SKIPPED [Site] -> source table missing';
    ELSE IF OBJECT_ID(N'dbo.[Site]', N'U') IS NULL
        PRINT 'SKIPPED [Site] -> destination table missing';
    ELSE IF EXISTS (SELECT 1 FROM #C WHERE TName = N'Site'
                    AND CName NOT IN (SELECT name FROM sys.columns
                                      WHERE object_id = OBJECT_ID(N'dbo.[Site]')))
        PRINT 'SKIPPED [Site] -> source ke kuch columns destination me nahi hain';
    ELSE IF EXISTS (SELECT 1 FROM sys.columns
                    WHERE object_id = OBJECT_ID(N'dbo.[Site]')
                      AND name NOT IN (SELECT CName FROM #C WHERE TName = N'Site'))
        PRINT 'SKIPPED [Site] -> destination me extra columns hain'
    ELSE
    BEGIN
        BEGIN TRY
            PRINT 'Transferring [Site] ...';

            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;

            -- (1) source data ek baar local staging me (single read)
            SELECT IDENTITY(int, 1, 1) AS _xf_rid, [CompCode], [Site_Code], [Site_Desc], [U_Name], [U_EntDt], [U_AE], [SiteType], [Short_Name], [SendDate], [RecDate]
            INTO #S_T
            FROM OPENQUERY([SRC], N'SELECT [CompCode],[Site_Code],[Site_Desc],[U_Name],[U_EntDt],[U_AE],[SiteType],[Short_Name],[SendDate],[RecDate] FROM [VijayData2627].dbo.[Site]') AS s;

            CREATE CLUSTERED INDEX _xf_ix ON #S_T (_xf_rid);

            SET @MaxRid = ISNULL((SELECT MAX(_xf_rid) FROM #S_T), 0);
            SET @lo = 1; SET @hi = 0; SET @BN = 0; SET @Tot = 0;

            -- (2) batch-wise copy: har batch apne transaction me (@B rows)
            WHILE @lo <= @MaxRid
            BEGIN
                SET @hi = @lo + @B - 1;
                BEGIN TRANSACTION;
                    INSERT INTO [dbo].[Site] ([CompCode], [Site_Code], [Site_Desc], [U_Name], [U_EntDt], [U_AE], [SiteType], [Short_Name], [SendDate], [RecDate])
                    SELECT [CompCode], [Site_Code], [Site_Desc], [U_Name], [U_EntDt], [U_AE], [SiteType], [Short_Name], [SendDate], [RecDate]
                    FROM #S_T AS st
                    WHERE st._xf_rid >= @lo AND st._xf_rid <= @hi
                       AND NOT EXISTS (SELECT 1 FROM [dbo].[Site] AS d
                                        WHERE d.[Site_Code] = st.[Site_Code] COLLATE DATABASE_DEFAULT)
                    SET @RC = @@ROWCOUNT;
                    COMMIT TRANSACTION;

                    SET @Tot = @Tot + @RC;
                IF @RC > 0
                BEGIN
                    SET @BN = @BN + 1;
                    PRINT '   batch ' + CAST(@BN AS varchar(10)) + ': '
                          + CAST(@RC AS varchar(20)) + ' rows (total '
                          + CAST(@Tot AS varchar(20)) + ')';
                END
                SET @lo = @hi + 1;
            END

            PRINT '   DONE [Site]: ' + CAST(@Tot AS varchar(20)) + ' rows, '
                  + CAST(@BN AS varchar(10)) + ' batch(es)';

            DROP TABLE #S_T;
        END TRY
        BEGIN CATCH
            IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;
            PRINT '   FAILED [Site] -> ' + ERROR_MESSAGE();
        END CATCH;
    END
END

------------------------------------------------------------
-- [Voucher_Type]
------------------------------------------------------------
IF @OK = 1
BEGIN
    SET @NC = (SELECT COUNT(*) FROM #C WHERE TName = N'Voucher_Type');

    IF @NC = 0
        PRINT 'SKIPPED [Voucher_Type] -> source table missing';
    ELSE IF OBJECT_ID(N'dbo.[Voucher_Type]', N'U') IS NULL
        PRINT 'SKIPPED [Voucher_Type] -> destination table missing';
    ELSE IF EXISTS (SELECT 1 FROM #C WHERE TName = N'Voucher_Type'
                    AND CName NOT IN (SELECT name FROM sys.columns
                                      WHERE object_id = OBJECT_ID(N'dbo.[Voucher_Type]')))
        PRINT 'SKIPPED [Voucher_Type] -> source ke kuch columns destination me nahi hain';
    ELSE IF EXISTS (SELECT 1 FROM sys.columns
                    WHERE object_id = OBJECT_ID(N'dbo.[Voucher_Type]')
                      AND name NOT IN (SELECT CName FROM #C WHERE TName = N'Voucher_Type'))
        PRINT 'SKIPPED [Voucher_Type] -> destination me extra columns hain'
    ELSE
    BEGIN
        BEGIN TRY
            PRINT 'Transferring [Voucher_Type] ...';

            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;

            -- (1) source data ek baar local staging me (single read)
            SELECT IDENTITY(int, 1, 1) AS _xf_rid, [Category], [NCat], [V_Type], [Contratype], [Description], [Description_Help], [Description_BiLang], [Short_Name], [Short_Name_BiLang], [Report_Index], [Number_Method], [Start_No], [Last_Ent_Date], [Form_Name], [Separate_Narr], [Common_Narr], [Narration], [Print_VNo], [Header_Desc], [Terms_Desc], [Footer_Desc], [Exclude_Ac_Grp], [SerialNo_From_Table], [U_NAME], [U_EntDt], [U_AE], [ChqNo], [ChqDt], [ClgDt], [SortNo], [RestCode], [Site_Code], [DefaultCrAc], [DefaultDrAc], [FirstDrCr], [LogSite_Code], [Alias]
            INTO #S_T
            FROM OPENQUERY([SRC], N'SELECT [Category],[NCat],[V_Type],[Contratype],[Description],[Description_Help],[Description_BiLang],[Short_Name],[Short_Name_BiLang],[Report_Index],[Number_Method],[Start_No],[Last_Ent_Date],[Form_Name],[Separate_Narr],[Common_Narr],[Narration],[Print_VNo],[Header_Desc],[Terms_Desc],[Footer_Desc],[Exclude_Ac_Grp],[SerialNo_From_Table],[U_NAME],[U_EntDt],[U_AE],[ChqNo],[ChqDt],[ClgDt],[SortNo],[RestCode],[Site_Code],[DefaultCrAc],[DefaultDrAc],[FirstDrCr],[LogSite_Code],[Alias] FROM [VijayData2627].dbo.[Voucher_Type]') AS s;

            CREATE CLUSTERED INDEX _xf_ix ON #S_T (_xf_rid);

            SET @MaxRid = ISNULL((SELECT MAX(_xf_rid) FROM #S_T), 0);
            SET @lo = 1; SET @hi = 0; SET @BN = 0; SET @Tot = 0;

            -- (2) batch-wise copy: har batch apne transaction me (@B rows)
            WHILE @lo <= @MaxRid
            BEGIN
                SET @hi = @lo + @B - 1;
                BEGIN TRANSACTION;
                    INSERT INTO [dbo].[Voucher_Type] ([Category], [NCat], [V_Type], [Contratype], [Description], [Description_Help], [Description_BiLang], [Short_Name], [Short_Name_BiLang], [Report_Index], [Number_Method], [Start_No], [Last_Ent_Date], [Form_Name], [Separate_Narr], [Common_Narr], [Narration], [Print_VNo], [Header_Desc], [Terms_Desc], [Footer_Desc], [Exclude_Ac_Grp], [SerialNo_From_Table], [U_NAME], [U_EntDt], [U_AE], [ChqNo], [ChqDt], [ClgDt], [SortNo], [RestCode], [Site_Code], [DefaultCrAc], [DefaultDrAc], [FirstDrCr], [LogSite_Code], [Alias])
                    SELECT [Category], [NCat], [V_Type], [Contratype], [Description], [Description_Help], [Description_BiLang], [Short_Name], [Short_Name_BiLang], [Report_Index], [Number_Method], [Start_No], [Last_Ent_Date], [Form_Name], [Separate_Narr], [Common_Narr], [Narration], [Print_VNo], [Header_Desc], [Terms_Desc], [Footer_Desc], [Exclude_Ac_Grp], [SerialNo_From_Table], [U_NAME], [U_EntDt], [U_AE], [ChqNo], [ChqDt], [ClgDt], [SortNo], [RestCode], [Site_Code], [DefaultCrAc], [DefaultDrAc], [FirstDrCr], [LogSite_Code], [Alias]
                    FROM #S_T AS st
                    WHERE st._xf_rid >= @lo AND st._xf_rid <= @hi
                       AND NOT EXISTS (SELECT 1 FROM [dbo].[Voucher_Type] AS d
                                        WHERE d.[V_Type] = st.[V_Type] COLLATE DATABASE_DEFAULT AND d.[Site_Code] = st.[Site_Code] COLLATE DATABASE_DEFAULT AND d.[LogSite_Code] = st.[LogSite_Code] COLLATE DATABASE_DEFAULT)
                    SET @RC = @@ROWCOUNT;
                    COMMIT TRANSACTION;

                    SET @Tot = @Tot + @RC;
                IF @RC > 0
                BEGIN
                    SET @BN = @BN + 1;
                    PRINT '   batch ' + CAST(@BN AS varchar(10)) + ': '
                          + CAST(@RC AS varchar(20)) + ' rows (total '
                          + CAST(@Tot AS varchar(20)) + ')';
                END
                SET @lo = @hi + 1;
            END

            PRINT '   DONE [Voucher_Type]: ' + CAST(@Tot AS varchar(20)) + ' rows, '
                  + CAST(@BN AS varchar(10)) + ' batch(es)';

            DROP TABLE #S_T;
        END TRY
        BEGIN CATCH
            IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;
            PRINT '   FAILED [Voucher_Type] -> ' + ERROR_MESSAGE();
        END CATCH;
    END
END

PRINT '';
PRINT '========== LINKED TRANSFER COMPLETE ==========';
