/* ============================================================================
   ROW-COUNT VERIFICATION   :   [VijayData2627]  vs  current DB (destination)
      Source: linked server [SRC] (remote)
   ----------------------------------------------------------------------------
   KAAM KAISE KARE:
     1) SSMS me DESTINATION server par connect ho kar chalao
     2) F5 dabao. Result grid me har table ka SrcCnt vs DstCnt dikhega,
        MISMATCH wali tables sabse upar.

   NOTE: Ye sirf row-count compare karta hai (row-by-row data check nahi).
   ============================================================================ */

SET NOCOUNT ON;

DECLARE @OK bit = 1;

-- ============ PRE-FLIGHT ============
BEGIN TRY
    EXEC sp_testlinkedserver N'SRC';
    PRINT 'Linked server [SRC] OK';
END TRY
BEGIN CATCH
    SET @OK = 0;
    PRINT 'STOP: linked server [SRC] reachable nahi hai -> ' + ERROR_MESSAGE();
END CATCH;

CREATE TABLE #V (TName sysname, SrcCnt bigint, DstCnt bigint,
                  SrcHasTable bit, DstHasTable bit);

PRINT 'Counting rows (3 tables)...';

BEGIN TRY
IF @OK = 1
BEGIN
        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Ledger', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Ledger]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Ledger]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Ledger]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Ledger]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'KOT', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[KOT]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[KOT]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[KOT]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[KOT]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GuestFolio', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestFolio]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GuestFolio]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestFolio]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GuestFolio]') AS s;
END
END TRY
BEGIN CATCH
    PRINT 'COUNT FAIL -> ' + ERROR_MESSAGE();
END CATCH;

-- ============ RESULT ============
SELECT TName,
       CASE WHEN SrcHasTable = 0 THEN NULL ELSE SrcCnt END AS SrcCnt,
       CASE WHEN DstHasTable = 0 THEN NULL ELSE DstCnt END AS DstCnt,
       CASE WHEN SrcHasTable = 0 THEN 'SRC-MISSING'
            WHEN DstHasTable = 0 THEN 'DST-MISSING'
            WHEN SrcCnt = DstCnt THEN 'OK'
            WHEN SrcCnt = 0 THEN 'NO-SOURCE-ROWS'
            WHEN DstCnt = 0 THEN 'EMPTY-DEST'
            ELSE 'MISMATCH' END AS Status
FROM #V
ORDER BY CASE WHEN SrcCnt <> DstCnt THEN 0 ELSE 1 END, TName;

DECLARE @Bad int = (SELECT COUNT(*) FROM #V WHERE SrcCnt <> DstCnt);
IF @Bad = 0
    PRINT 'RESULT: SAB TABLES MATCH - total ' + CAST((SELECT COUNT(*) FROM #V) AS varchar(10)) + ' tables';
ELSE
    PRINT 'RESULT: ' + CAST(@Bad AS varchar(10)) + ' table(s) MISMATCH - upar Status column dekho';
