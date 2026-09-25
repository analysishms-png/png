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

PRINT 'Counting rows (281 tables)...';

BEGIN TRY
IF @OK = 1
BEGIN
        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'PackingOrderDetail2', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[PackingOrderDetail2]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[PackingOrderDetail2]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[PackingOrderDetail2]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[PackingOrderDetail2]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'PackingOrderDetail1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[PackingOrderDetail1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[PackingOrderDetail1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[PackingOrderDetail1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[PackingOrderDetail1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'PackingOrderDetail', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[PackingOrderDetail]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[PackingOrderDetail]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[PackingOrderDetail]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[PackingOrderDetail]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'PackingOrder', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[PackingOrder]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[PackingOrder]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[PackingOrder]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[PackingOrder]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'OverTime', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[OverTime]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[OverTime]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[OverTime]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[OverTime]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'OutletBarCodePartDetail', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[OutletBarCodePartDetail]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[OutletBarCodePartDetail]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[OutletBarCodePartDetail]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[OutletBarCodePartDetail]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'OrderPersonDetails', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[OrderPersonDetails]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[OrderPersonDetails]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[OrderPersonDetails]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[OrderPersonDetails]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'OrderAdvanceDetail', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[OrderAdvanceDetail]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[OrderAdvanceDetail]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[OrderAdvanceDetail]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[OrderAdvanceDetail]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'NightAuditLog', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[NightAuditLog]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[NightAuditLog]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[NightAuditLog]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[NightAuditLog]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'NCTypeMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[NCTypeMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[NCTypeMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[NCTypeMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[NCTypeMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'NarrMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[NarrMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[NarrMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[NarrMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[NarrMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'messaging', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[messaging]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[messaging]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[messaging]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[messaging]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'menuHelp1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[menuHelp1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[menuHelp1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[menuHelp1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[menuHelp1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'menuHelp', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[menuHelp]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[menuHelp]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[menuHelp]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[menuHelp]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MemVisitEntry', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MemVisitEntry]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MemVisitEntry]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MemVisitEntry]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MemVisitEntry]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MemTagadaLetter', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MemTagadaLetter]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MemTagadaLetter]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MemTagadaLetter]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MemTagadaLetter]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MemRevWise', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MemRevWise]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MemRevWise]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MemRevWise]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MemRevWise]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MemRevenueForPeriod', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MemRevenueForPeriod]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MemRevenueForPeriod]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MemRevenueForPeriod]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MemRevenueForPeriod]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MemProposedMemInf', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MemProposedMemInf]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MemProposedMemInf]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MemProposedMemInf]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MemProposedMemInf]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MemOutStation', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MemOutStation]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MemOutStation]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MemOutStation]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MemOutStation]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MemFacilityMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MemFacilityMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MemFacilityMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MemFacilityMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MemFacilityMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MemFacilityBilling', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MemFacilityBilling]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MemFacilityBilling]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MemFacilityBilling]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MemFacilityBilling]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MemEnviro', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MemEnviro]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MemEnviro]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MemEnviro]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MemEnviro]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MemCatRevWise', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MemCatRevWise]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MemCatRevWise]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MemCatRevWise]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MemCatRevWise]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MemCatMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MemCatMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MemCatMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MemCatMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MemCatMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MemCatFacility', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MemCatFacility]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MemCatFacility]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MemCatFacility]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MemCatFacility]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MemCatChngDetail', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MemCatChngDetail]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MemCatChngDetail]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MemCatChngDetail]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MemCatChngDetail]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MemBill1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MemBill1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MemBill1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MemBill1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MemBill1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MemBill', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MemBill]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MemBill]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MemBill]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MemBill]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MembershipRevMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MembershipRevMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MembershipRevMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MembershipRevMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MembershipRevMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MemberFamily', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MemberFamily]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MemberFamily]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MemberFamily]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MemberFamily]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MemAddRWA', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MemAddRWA]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MemAddRWA]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MemAddRWA]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MemAddRWA]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'mCurStk', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[mCurStk]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[mCurStk]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[mCurStk]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[mCurStk]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'MarketSeg', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[MarketSeg]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[MarketSeg]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[MarketSeg]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[MarketSeg]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'LostFoundDetail', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[LostFoundDetail]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[LostFoundDetail]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[LostFoundDetail]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[LostFoundDetail]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'LocationFacility', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[LocationFacility]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[LocationFacility]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[LocationFacility]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[LocationFacility]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Loan', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Loan]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Loan]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Loan]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Loan]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'LedgerTDS', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[LedgerTDS]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[LedgerTDS]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[LedgerTDS]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[LedgerTDS]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'ledgerRef', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[ledgerRef]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[ledgerRef]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[ledgerRef]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[ledgerRef]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'LedgerMMerge', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[LedgerMMerge]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[LedgerMMerge]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[LedgerMMerge]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[LedgerMMerge]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'LedgerMerge', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[LedgerMerge]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[LedgerMerge]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[LedgerMerge]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[LedgerMerge]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'LedgerM', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[LedgerM]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[LedgerM]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[LedgerM]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[LedgerM]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'ledgerAdj', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[ledgerAdj]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[ledgerAdj]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[ledgerAdj]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[ledgerAdj]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Ledger', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Ledger]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Ledger]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Ledger]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Ledger]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Leave_Ench', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Leave_Ench]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Leave_Ench]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Leave_Ench]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Leave_Ench]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'LeaderRev', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[LeaderRev]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[LeaderRev]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[LeaderRev]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[LeaderRev]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'LastVoucher', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[LastVoucher]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[LastVoucher]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[LastVoucher]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[LastVoucher]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'LastVou', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[LastVou]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[LastVou]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[LastVou]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[LastVou]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'KOTLog', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[KOTLog]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[KOTLog]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[KOTLog]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[KOTLog]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'KOT', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[KOT]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[KOT]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[KOT]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[KOT]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'KClStk', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[KClStk]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[KClStk]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[KClStk]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[KClStk]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'JobScheduledDetail', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[JobScheduledDetail]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[JobScheduledDetail]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[JobScheduledDetail]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[JobScheduledDetail]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'JobSchedule', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[JobSchedule]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[JobSchedule]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[JobSchedule]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[JobSchedule]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'ItemRate', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[ItemRate]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[ItemRate]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[ItemRate]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[ItemRate]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'ItemMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[ItemMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[ItemMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[ItemMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[ItemMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'ItemGrp', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[ItemGrp]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[ItemGrp]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[ItemGrp]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[ItemGrp]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'ItemCatMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[ItemCatMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[ItemCatMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[ItemCatMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[ItemCatMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Item', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Item]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Item]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Item]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Item]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'inout', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[inout]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[inout]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[inout]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[inout]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Indent1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Indent1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Indent1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Indent1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Indent1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Indent', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Indent]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Indent]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Indent]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Indent]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Holiday', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Holiday]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Holiday]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Holiday]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Holiday]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Help', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Help]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Help]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Help]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Help]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'HappyHoursHead', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[HappyHoursHead]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[HappyHoursHead]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[HappyHoursHead]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[HappyHoursHead]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'HappyHours', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[HappyHours]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[HappyHours]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[HappyHours]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[HappyHours]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'HallStockEst', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[HallStockEst]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[HallStockEst]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[HallStockEst]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[HallStockEst]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'HallStock', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[HallStock]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[HallStock]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[HallStock]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[HallStock]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'HallSale2', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[HallSale2]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[HallSale2]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[HallSale2]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[HallSale2]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'HallSale1Est', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[HallSale1Est]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[HallSale1Est]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[HallSale1Est]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[HallSale1Est]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'HallSale1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[HallSale1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[HallSale1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[HallSale1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[HallSale1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'HallPreCosting', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[HallPreCosting]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[HallPreCosting]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[HallPreCosting]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[HallPreCosting]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'HallBook1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[HallBook1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[HallBook1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[HallBook1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[HallBook1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'HallBook', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[HallBook]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[HallBook]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[HallBook]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[HallBook]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GuestWakeup', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestWakeup]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GuestWakeup]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestWakeup]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GuestWakeup]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GuestStat', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestStat]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GuestStat]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestStat]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GuestStat]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GuestReward', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestReward]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GuestReward]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestReward]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GuestReward]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GuestProfVeh', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestProfVeh]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GuestProfVeh]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestProfVeh]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GuestProfVeh]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GuestProfFor', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestProfFor]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GuestProfFor]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestProfFor]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GuestProfFor]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GuestProf', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestProf]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GuestProf]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestProf]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GuestProf]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GuestParam', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestParam]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GuestParam]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestParam]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GuestParam]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GuestMessage', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestMessage]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GuestMessage]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestMessage]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GuestMessage]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GuestFolioProfDetail', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestFolioProfDetail]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GuestFolioProfDetail]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestFolioProfDetail]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GuestFolioProfDetail]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GuestFolioAmend', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestFolioAmend]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GuestFolioAmend]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestFolioAmend]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GuestFolioAmend]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GuestFolio', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestFolio]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GuestFolio]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestFolio]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GuestFolio]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GuestFeedBack', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestFeedBack]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GuestFeedBack]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestFeedBack]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GuestFeedBack]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GuestComments', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestComments]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GuestComments]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GuestComments]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GuestComments]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GrpBookingDetails', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GrpBookingDetails]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GrpBookingDetails]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GrpBookingDetails]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GrpBookingDetails]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GroupProf', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GroupProf]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GroupProf]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GroupProf]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GroupProf]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GroupFolioMore', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GroupFolioMore]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GroupFolioMore]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GroupFolioMore]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GroupFolioMore]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GroupCatalog', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GroupCatalog]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GroupCatalog]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GroupCatalog]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GroupCatalog]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GodownMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GodownMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GodownMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GodownMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GodownMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'GIN', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[GIN]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[GIN]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[GIN]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[GIN]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'FunctionType', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[FunctionType]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[FunctionType]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[FunctionType]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[FunctionType]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'FreeItemDetail', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[FreeItemDetail]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[FreeItemDetail]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[FreeItemDetail]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[FreeItemDetail]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'ForExTrans', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[ForExTrans]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[ForExTrans]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[ForExTrans]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[ForExTrans]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'ForEx', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[ForEx]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[ForEx]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[ForEx]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[ForEx]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'FOMBillDetails', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[FOMBillDetails]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[FOMBillDetails]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[FOMBillDetails]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[FOMBillDetails]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'FOMBillChangeDetails', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[FOMBillChangeDetails]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[FOMBillChangeDetails]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[FOMBillChangeDetails]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[FOMBillChangeDetails]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'FolioLog', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[FolioLog]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[FolioLog]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[FolioLog]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[FolioLog]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'FixedCharge', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[FixedCharge]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[FixedCharge]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[FixedCharge]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[FixedCharge]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'FeedBackMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[FeedBackMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[FeedBackMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[FeedBackMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[FeedBackMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'FeatureMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[FeatureMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[FeatureMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[FeatureMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[FeatureMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'FaEnviro', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[FaEnviro]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[FaEnviro]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[FaEnviro]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[FaEnviro]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'FacilityMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[FacilityMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[FacilityMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[FacilityMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[FacilityMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'FacilityBill2', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[FacilityBill2]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[FacilityBill2]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[FacilityBill2]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[FacilityBill2]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'FacilityBill1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[FacilityBill1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[FacilityBill1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[FacilityBill1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[FacilityBill1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'FacilityBill', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[FacilityBill]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[FacilityBill]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[FacilityBill]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[FacilityBill]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'ExpSheet', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[ExpSheet]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[ExpSheet]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[ExpSheet]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[ExpSheet]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'EPABX_Data', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[EPABX_Data]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[EPABX_Data]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[EPABX_Data]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[EPABX_Data]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Enviro', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Enviro]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Enviro]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Enviro]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Enviro]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Employee', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Employee]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Employee]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Employee]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Employee]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'EmpCategory', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[EmpCategory]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[EmpCategory]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[EmpCategory]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[EmpCategory]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'EmailSMSForward', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[EmailSMSForward]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[EmailSMSForward]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[EmailSMSForward]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[EmailSMSForward]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'eInvoiceToken', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[eInvoiceToken]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[eInvoiceToken]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[eInvoiceToken]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[eInvoiceToken]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'eInvoiceEnviro', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[eInvoiceEnviro]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[eInvoiceEnviro]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[eInvoiceEnviro]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[eInvoiceEnviro]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'eInvoiceBill2', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[eInvoiceBill2]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[eInvoiceBill2]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[eInvoiceBill2]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[eInvoiceBill2]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'eInvoiceBill1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[eInvoiceBill1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[eInvoiceBill1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[eInvoiceBill1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[eInvoiceBill1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'DispColor', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[DispColor]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[DispColor]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[DispColor]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[DispColor]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Desig', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Desig]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Desig]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Desig]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Desig]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'DepartRWScheme', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[DepartRWScheme]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[DepartRWScheme]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[DepartRWScheme]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[DepartRWScheme]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'DepartPay', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[DepartPay]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[DepartPay]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[DepartPay]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[DepartPay]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Depart1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Depart1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Depart1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Depart1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Depart1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Depart', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Depart]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Depart]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Depart]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Depart]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'DenominationFormat', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[DenominationFormat]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[DenominationFormat]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[DenominationFormat]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[DenominationFormat]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'DenominationDetail', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[DenominationDetail]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[DenominationDetail]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[DenominationDetail]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[DenominationDetail]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'DeliveryBoy', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[DeliveryBoy]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[DeliveryBoy]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[DeliveryBoy]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[DeliveryBoy]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'DBSendSMS', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[DBSendSMS]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[DBSendSMS]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[DBSendSMS]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[DBSendSMS]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'DATELOCK', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[DATELOCK]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[DATELOCK]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[DATELOCK]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[DATELOCK]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'CreditCardHistory', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[CreditCardHistory]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[CreditCardHistory]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[CreditCardHistory]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[CreditCardHistory]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Country', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Country]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Country]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Country]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Country]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'ComplaintDetail', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[ComplaintDetail]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[ComplaintDetail]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[ComplaintDetail]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[ComplaintDetail]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'ComplaintCategory', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[ComplaintCategory]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[ComplaintCategory]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[ComplaintCategory]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[ComplaintCategory]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'CompanyProfile', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[CompanyProfile]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[CompanyProfile]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[CompanyProfile]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[CompanyProfile]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Company', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Company]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Company]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Company]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Company]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Comp_PlanDet', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Comp_PlanDet]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Comp_PlanDet]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Comp_PlanDet]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Comp_PlanDet]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Comp_Inclusive', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Comp_Inclusive]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Comp_Inclusive]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Comp_Inclusive]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Comp_Inclusive]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'ComboPackHead', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[ComboPackHead]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[ComboPackHead]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[ComboPackHead]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[ComboPackHead]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'ComboPackDetail', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[ComboPackDetail]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[ComboPackDetail]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[ComboPackDetail]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[ComboPackDetail]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'City', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[City]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[City]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[City]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[City]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Category', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Category]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Category]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Category]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Category]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'CatalogMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[CatalogMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[CatalogMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[CatalogMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[CatalogMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'BussSource', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[BussSource]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[BussSource]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[BussSource]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[BussSource]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'BudgetDetails', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[BudgetDetails]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[BudgetDetails]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[BudgetDetails]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[BudgetDetails]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Budget', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Budget]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Budget]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Budget]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Budget]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'BookingPlanDetails', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[BookingPlanDetails]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[BookingPlanDetails]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[BookingPlanDetails]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[BookingPlanDetails]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'BookingMore', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[BookingMore]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[BookingMore]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[BookingMore]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[BookingMore]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'BookingLog', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[BookingLog]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[BookingLog]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[BookingLog]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[BookingLog]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'BookingInquiry', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[BookingInquiry]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[BookingInquiry]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[BookingInquiry]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[BookingInquiry]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'BookingDetail', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[BookingDetail]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[BookingDetail]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[BookingDetail]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[BookingDetail]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'BookingCancelDetails', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[BookingCancelDetails]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[BookingCancelDetails]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[BookingCancelDetails]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[BookingCancelDetails]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Booking', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Booking]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Booking]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Booking]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Booking]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'BOM', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[BOM]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[BOM]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[BOM]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[BOM]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'BlockMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[BlockMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[BlockMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[BlockMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[BlockMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'RoomOcc', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomOcc]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[RoomOcc]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomOcc]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[RoomOcc]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'RoomMast1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomMast1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[RoomMast1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomMast1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[RoomMast1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'RoomMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[RoomMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[RoomMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'RoomFeature', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomFeature]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[RoomFeature]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomFeature]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[RoomFeature]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'RoomDiscount', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomDiscount]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[RoomDiscount]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomDiscount]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[RoomDiscount]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'RoomDet', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomDet]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[RoomDet]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomDet]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[RoomDet]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'RoomCheckOutStatus', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomCheckOutStatus]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[RoomCheckOutStatus]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomCheckOutStatus]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[RoomCheckOutStatus]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'RoomCat', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomCat]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[RoomCat]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomCat]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[RoomCat]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'RoomBlockOut', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomBlockOut]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[RoomBlockOut]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomBlockOut]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[RoomBlockOut]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'RevMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[RevMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[RevMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[RevMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[RevMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'RawConsumption', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[RawConsumption]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[RawConsumption]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[RawConsumption]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[RawConsumption]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'RateList', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[RateList]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[RateList]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[RateList]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[RateList]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Purch2', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Purch2]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Purch2]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Purch2]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Purch2]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Purch1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Purch1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Purch1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Purch1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Purch1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'ProfileImages', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[ProfileImages]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[ProfileImages]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[ProfileImages]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[ProfileImages]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SMSEnviro', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SMSEnviro]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SMSEnviro]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SMSEnviro]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SMSEnviro]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SmartCardReIssueDetail', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SmartCardReIssueDetail]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SmartCardReIssueDetail]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SmartCardReIssueDetail]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SmartCardReIssueDetail]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SmartCardRegistration', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SmartCardRegistration]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SmartCardRegistration]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SmartCardRegistration]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SmartCardRegistration]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SmartCardMaster', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SmartCardMaster]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SmartCardMaster]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SmartCardMaster]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SmartCardMaster]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SmartCardLedger', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SmartCardLedger]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SmartCardLedger]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SmartCardLedger]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SmartCardLedger]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Site', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Site]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Site]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Site]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Site]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'ShiftMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[ShiftMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[ShiftMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[ShiftMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[ShiftMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SessionMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SessionMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SessionMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SessionMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SessionMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SeasonMast1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SeasonMast1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SeasonMast1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SeasonMast1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SeasonMast1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SeasonMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SeasonMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SeasonMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SeasonMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SeasonMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SchemeOutletDiscount', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SchemeOutletDiscount]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SchemeOutletDiscount]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SchemeOutletDiscount]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SchemeOutletDiscount]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SchemeMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SchemeMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SchemeMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SchemeMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SchemeMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SchemeItemDetail', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SchemeItemDetail]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SchemeItemDetail]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SchemeItemDetail]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SchemeItemDetail]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SaleMIS', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SaleMIS]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SaleMIS]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SaleMIS]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SaleMIS]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Sale2Log', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Sale2Log]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Sale2Log]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Sale2Log]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Sale2Log]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Sale2', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Sale2]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Sale2]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Sale2]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Sale2]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Sale1Log', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Sale1Log]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Sale1Log]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Sale1Log]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Sale1Log]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Sale1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Sale1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Sale1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Sale1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Sale1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SalaryLog', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SalaryLog]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SalaryLog]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SalaryLog]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SalaryLog]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Salary', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Salary]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Salary]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Salary]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Salary]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'RWParameter', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[RWParameter]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[RWParameter]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[RWParameter]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[RWParameter]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'RoundOffSetting', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[RoundOffSetting]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[RoundOffSetting]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[RoundOffSetting]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[RoundOffSetting]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'RoomRate', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomRate]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[RoomRate]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[RoomRate]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[RoomRate]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SunTranLog', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SunTranLog]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SunTranLog]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SunTranLog]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SunTranLog]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SunTranHEst', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SunTranHEst]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SunTranHEst]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SunTranHEst]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SunTranHEst]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SunTranH', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SunTranH]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SunTranH]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SunTranH]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SunTranH]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SunTranFacility', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SunTranFacility]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SunTranFacility]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SunTranFacility]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SunTranFacility]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SunTranEst', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SunTranEst]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SunTranEst]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SunTranEst]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SunTranEst]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SunTran', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SunTran]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SunTran]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SunTran]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SunTran]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SundryTypeFix', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SundryTypeFix]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SundryTypeFix]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SundryTypeFix]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SundryTypeFix]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SundryType', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SundryType]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SundryType]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SundryType]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SundryType]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SundryMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SundryMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SundryMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SundryMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SundryMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SubGroupType', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SubGroupType]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SubGroupType]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SubGroupType]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SubGroupType]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SubGroupRate', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SubGroupRate]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SubGroupRate]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SubGroupRate]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SubGroupRate]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SubGroupLog', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SubGroupLog]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SubGroupLog]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SubGroupLog]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SubGroupLog]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SubGroupCurrBal', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SubGroupCurrBal]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SubGroupCurrBal]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SubGroupCurrBal]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SubGroupCurrBal]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SubGroup', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SubGroup]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SubGroup]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SubGroup]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SubGroup]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'StockLog', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[StockLog]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[StockLog]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[StockLog]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[StockLog]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Stock1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Stock1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Stock1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Stock1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Stock1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Stock', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Stock]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Stock]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Stock]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Stock]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'State', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[State]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[State]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[State]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[State]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SplitSunTran', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SplitSunTran]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SplitSunTran]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SplitSunTran]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SplitSunTran]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SplitStock1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SplitStock1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SplitStock1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SplitStock1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SplitStock1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SplitStock', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SplitStock]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SplitStock]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SplitStock]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SplitStock]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SplitSale2', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SplitSale2]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SplitSale2]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SplitSale2]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SplitSale2]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SplitSale1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SplitSale1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SplitSale1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SplitSale1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SplitSale1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SplitedSunTran', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SplitedSunTran]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SplitedSunTran]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SplitedSunTran]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SplitedSunTran]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'SplitBillDetail', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[SplitBillDetail]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[SplitBillDetail]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[SplitBillDetail]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[SplitBillDetail]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'VenueOCC', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[VenueOCC]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[VenueOCC]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[VenueOCC]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[VenueOCC]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'VenueMast1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[VenueMast1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[VenueMast1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[VenueMast1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[VenueMast1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'VenueMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[VenueMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[VenueMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[VenueMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[VenueMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'VenueFeatures', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[VenueFeatures]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[VenueFeatures]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[VenueFeatures]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[VenueFeatures]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'VenueCapacity', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[VenueCapacity]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[VenueCapacity]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[VenueCapacity]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[VenueCapacity]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'UserPermission', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[UserPermission]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[UserPermission]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[UserPermission]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[UserPermission]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'UserModule1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[UserModule1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[UserModule1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[UserModule1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[UserModule1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'UserModule', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[UserModule]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[UserModule]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[UserModule]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[UserModule]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'UserMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[UserMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[UserMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[UserMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[UserMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'UserCollection', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[UserCollection]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[UserCollection]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[UserCollection]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[UserCollection]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'User2', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[User2]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[User2]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[User2]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[User2]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'User1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[User1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[User1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[User1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[User1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'User_Module', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[User_Module]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[User_Module]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[User_Module]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[User_Module]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'UnitMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[UnitMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[UnitMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[UnitMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[UnitMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Travel2', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Travel2]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Travel2]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Travel2]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Travel2]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Travel1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Travel1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Travel1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Travel1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Travel1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'TranTaxDetail', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[TranTaxDetail]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[TranTaxDetail]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[TranTaxDetail]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[TranTaxDetail]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'TranSunDetail', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[TranSunDetail]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[TranSunDetail]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[TranSunDetail]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[TranSunDetail]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'TransOut', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[TransOut]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[TransOut]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[TransOut]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[TransOut]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'TransIn', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[TransIn]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[TransIn]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[TransIn]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[TransIn]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'TransDel', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[TransDel]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[TransDel]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[TransDel]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[TransDel]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'TranLog', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[TranLog]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[TranLog]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[TranLog]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[TranLog]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'TradeInfo_bTwin', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[TradeInfo_bTwin]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[TradeInfo_bTwin]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[TradeInfo_bTwin]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[TradeInfo_bTwin]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'TOKEN', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[TOKEN]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[TOKEN]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[TOKEN]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[TOKEN]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'TempPosDel', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[TempPosDel]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[TempPosDel]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[TempPosDel]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[TempPosDel]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Temp_Sbill', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Temp_Sbill]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Temp_Sbill]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Temp_Sbill]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Temp_Sbill]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'TelExt', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[TelExt]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[TelExt]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[TelExt]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[TelExt]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'TelCallType', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[TelCallType]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[TelCallType]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[TelCallType]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[TelCallType]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'TelCallCode', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[TelCallCode]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[TelCallCode]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[TelCallCode]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[TelCallCode]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'TDSChal1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[TDSChal1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[TDSChal1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[TDSChal1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[TDSChal1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'TDSChal', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[TDSChal]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[TDSChal]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[TDSChal]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[TDSChal]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'TDSCerti', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[TDSCerti]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[TDSCerti]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[TDSCerti]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[TDSCerti]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'TDSCat', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[TDSCat]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[TDSCat]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[TDSCat]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[TDSCat]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'tbl_UserMaster', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[tbl_UserMaster]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[tbl_UserMaster]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[tbl_UserMaster]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[tbl_UserMaster]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'tbl_GetRoomMst', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[tbl_GetRoomMst]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[tbl_GetRoomMst]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[tbl_GetRoomMst]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[tbl_GetRoomMst]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'tbl_GetBooking', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[tbl_GetBooking]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[tbl_GetBooking]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[tbl_GetBooking]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[tbl_GetBooking]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'tbl_EventPrameter', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[tbl_EventPrameter]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[tbl_EventPrameter]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[tbl_EventPrameter]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[tbl_EventPrameter]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'tbl_EventExc', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[tbl_EventExc]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[tbl_EventExc]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[tbl_EventExc]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[tbl_EventExc]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'tbl_Config', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[tbl_Config]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[tbl_Config]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[tbl_Config]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[tbl_Config]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'tbl_ClientReportMIS', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[tbl_ClientReportMIS]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[tbl_ClientReportMIS]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[tbl_ClientReportMIS]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[tbl_ClientReportMIS]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'tbl_ApiEventCode', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[tbl_ApiEventCode]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[tbl_ApiEventCode]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[tbl_ApiEventCode]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[tbl_ApiEventCode]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'TaxStru', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[TaxStru]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[TaxStru]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[TaxStru]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[TaxStru]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Waiter', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Waiter]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Waiter]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Waiter]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Waiter]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'VoucherCat', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[VoucherCat]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[VoucherCat]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[VoucherCat]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[VoucherCat]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Voucher_Type', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Voucher_Type]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Voucher_Type]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Voucher_Type]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Voucher_Type]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Voucher_Prefix', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Voucher_Prefix]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Voucher_Prefix]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Voucher_Prefix]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Voucher_Prefix]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Voucher_Include', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Voucher_Include]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Voucher_Include]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Voucher_Include]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Voucher_Include]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Voucher_Exclude', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Voucher_Exclude]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Voucher_Exclude]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Voucher_Exclude]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Voucher_Exclude]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'POS_SBill', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[POS_SBill]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[POS_SBill]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[POS_SBill]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[POS_SBill]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'POrder1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[POrder1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[POrder1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[POrder1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[POrder1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'POrder', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[POrder]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[POrder]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[POrder]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[POrder]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'PlanTokenDetails', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[PlanTokenDetails]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[PlanTokenDetails]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[PlanTokenDetails]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[PlanTokenDetails]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'PlanMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[PlanMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[PlanMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[PlanMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[PlanMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'PlanDetails', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[PlanDetails]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[PlanDetails]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[PlanDetails]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[PlanDetails]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Plan1', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Plan1]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Plan1]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Plan1]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Plan1]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'PDALOG', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[PDALOG]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[PDALOG]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[PDALOG]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[PDALOG]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'PayChargeLog', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[PayChargeLog]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[PayChargeLog]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[PayChargeLog]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[PayChargeLog]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'PayChargeH', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[PayChargeH]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[PayChargeH]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[PayChargeH]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[PayChargeH]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'PayCharge', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[PayCharge]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[PayCharge]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[PayCharge]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[PayCharge]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Attendence', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Attendence]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Attendence]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Attendence]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Attendence]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'Attend', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[Attend]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[Attend]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[Attend]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[Attend]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'AssignDelivery', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[AssignDelivery]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[AssignDelivery]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[AssignDelivery]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[AssignDelivery]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'AreaMast', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[AreaMast]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[AreaMast]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[AreaMast]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[AreaMast]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'AcgroupcurrBal', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[AcgroupcurrBal]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[AcgroupcurrBal]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[AcgroupcurrBal]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[AcgroupcurrBal]') AS s;

        INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
        SELECT N'ACGROUP', s.cnt,
               CASE WHEN OBJECT_ID(N'[dbo].[ACGROUP]', N'U') IS NULL THEN -1
                    ELSE (SELECT COUNT(*) FROM [dbo].[ACGROUP]) END,
               1,
               CASE WHEN OBJECT_ID(N'[dbo].[ACGROUP]', N'U') IS NULL THEN 0 ELSE 1 END
        FROM OPENQUERY([SRC], N'SELECT COUNT_BIG(*) AS cnt FROM [VijayData2627].dbo.[ACGROUP]') AS s;
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
