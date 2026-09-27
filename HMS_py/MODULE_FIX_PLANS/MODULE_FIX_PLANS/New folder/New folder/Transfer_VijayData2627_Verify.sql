/* ============================================================================
   ROW-COUNT VERIFICATION   :   [VijayData2627]  vs  current DB (destination)
      Source: same instance
   ----------------------------------------------------------------------------
   KAAM KAISE KARE:
     1) SSMS me destination DB ko current database bana kar chalao
     2) F5 dabao. Result grid me har table ka SrcCnt vs DstCnt dikhega,
        MISMATCH wali tables sabse upar.

   NOTE: Ye sirf row-count compare karta hai (row-by-row data check nahi).
   ============================================================================ */

SET NOCOUNT ON;

DECLARE @OK bit = 1;

CREATE TABLE #V (TName sysname, SrcCnt bigint, DstCnt bigint,
                  SrcHasTable bit, DstHasTable bit);

PRINT 'Counting rows (281 tables)...';

BEGIN TRY
    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'PackingOrderDetail2',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PackingOrderDetail2]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[PackingOrderDetail2]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[PackingOrderDetail2]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[PackingOrderDetail2]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PackingOrderDetail2]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[PackingOrderDetail2]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'PackingOrderDetail1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PackingOrderDetail1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[PackingOrderDetail1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[PackingOrderDetail1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[PackingOrderDetail1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PackingOrderDetail1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[PackingOrderDetail1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'PackingOrderDetail',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PackingOrderDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[PackingOrderDetail]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[PackingOrderDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[PackingOrderDetail]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PackingOrderDetail]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[PackingOrderDetail]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'PackingOrder',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PackingOrder]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[PackingOrder]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[PackingOrder]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[PackingOrder]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PackingOrder]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[PackingOrder]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'OverTime',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[OverTime]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[OverTime]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[OverTime]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[OverTime]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[OverTime]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[OverTime]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'OutletBarCodePartDetail',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[OutletBarCodePartDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[OutletBarCodePartDetail]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[OutletBarCodePartDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[OutletBarCodePartDetail]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[OutletBarCodePartDetail]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[OutletBarCodePartDetail]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'OrderPersonDetails',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[OrderPersonDetails]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[OrderPersonDetails]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[OrderPersonDetails]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[OrderPersonDetails]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[OrderPersonDetails]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[OrderPersonDetails]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'OrderAdvanceDetail',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[OrderAdvanceDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[OrderAdvanceDetail]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[OrderAdvanceDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[OrderAdvanceDetail]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[OrderAdvanceDetail]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[OrderAdvanceDetail]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'NightAuditLog',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[NightAuditLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[NightAuditLog]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[NightAuditLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[NightAuditLog]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[NightAuditLog]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[NightAuditLog]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'NCTypeMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[NCTypeMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[NCTypeMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[NCTypeMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[NCTypeMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[NCTypeMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[NCTypeMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'NarrMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[NarrMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[NarrMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[NarrMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[NarrMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[NarrMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[NarrMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'messaging',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[messaging]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[messaging]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[messaging]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[messaging]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[messaging]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[messaging]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'menuHelp1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[menuHelp1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[menuHelp1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[menuHelp1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[menuHelp1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[menuHelp1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[menuHelp1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'menuHelp',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[menuHelp]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[menuHelp]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[menuHelp]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[menuHelp]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[menuHelp]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[menuHelp]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MemVisitEntry',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemVisitEntry]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MemVisitEntry]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemVisitEntry]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MemVisitEntry]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemVisitEntry]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemVisitEntry]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MemTagadaLetter',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemTagadaLetter]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MemTagadaLetter]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemTagadaLetter]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MemTagadaLetter]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemTagadaLetter]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemTagadaLetter]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MemRevWise',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemRevWise]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MemRevWise]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemRevWise]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MemRevWise]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemRevWise]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemRevWise]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MemRevenueForPeriod',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemRevenueForPeriod]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MemRevenueForPeriod]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemRevenueForPeriod]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MemRevenueForPeriod]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemRevenueForPeriod]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemRevenueForPeriod]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MemProposedMemInf',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemProposedMemInf]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MemProposedMemInf]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemProposedMemInf]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MemProposedMemInf]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemProposedMemInf]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemProposedMemInf]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MemOutStation',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemOutStation]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MemOutStation]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemOutStation]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MemOutStation]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemOutStation]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemOutStation]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MemFacilityMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemFacilityMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MemFacilityMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemFacilityMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MemFacilityMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemFacilityMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemFacilityMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MemFacilityBilling',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemFacilityBilling]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MemFacilityBilling]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemFacilityBilling]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MemFacilityBilling]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemFacilityBilling]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemFacilityBilling]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MemEnviro',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemEnviro]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MemEnviro]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemEnviro]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MemEnviro]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemEnviro]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemEnviro]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MemCatRevWise',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemCatRevWise]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MemCatRevWise]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemCatRevWise]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MemCatRevWise]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemCatRevWise]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemCatRevWise]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MemCatMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemCatMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MemCatMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemCatMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MemCatMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemCatMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemCatMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MemCatFacility',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemCatFacility]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MemCatFacility]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemCatFacility]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MemCatFacility]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemCatFacility]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemCatFacility]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MemCatChngDetail',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemCatChngDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MemCatChngDetail]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemCatChngDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MemCatChngDetail]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemCatChngDetail]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemCatChngDetail]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MemBill1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemBill1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MemBill1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemBill1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MemBill1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemBill1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemBill1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MemBill',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemBill]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MemBill]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemBill]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MemBill]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemBill]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemBill]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MembershipRevMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MembershipRevMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MembershipRevMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MembershipRevMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MembershipRevMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MembershipRevMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MembershipRevMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MemberFamily',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemberFamily]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MemberFamily]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemberFamily]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MemberFamily]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemberFamily]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemberFamily]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MemAddRWA',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemAddRWA]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MemAddRWA]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemAddRWA]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MemAddRWA]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MemAddRWA]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MemAddRWA]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'mCurStk',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[mCurStk]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[mCurStk]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[mCurStk]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[mCurStk]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[mCurStk]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[mCurStk]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'MarketSeg',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MarketSeg]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[MarketSeg]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[MarketSeg]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[MarketSeg]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[MarketSeg]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[MarketSeg]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'LostFoundDetail',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[LostFoundDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[LostFoundDetail]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[LostFoundDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[LostFoundDetail]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[LostFoundDetail]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[LostFoundDetail]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'LocationFacility',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[LocationFacility]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[LocationFacility]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[LocationFacility]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[LocationFacility]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[LocationFacility]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[LocationFacility]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Loan',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Loan]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Loan]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Loan]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Loan]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Loan]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Loan]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'LedgerTDS',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[LedgerTDS]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[LedgerTDS]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[LedgerTDS]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[LedgerTDS]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[LedgerTDS]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[LedgerTDS]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'ledgerRef',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ledgerRef]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[ledgerRef]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[ledgerRef]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[ledgerRef]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ledgerRef]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[ledgerRef]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'LedgerMMerge',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[LedgerMMerge]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[LedgerMMerge]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[LedgerMMerge]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[LedgerMMerge]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[LedgerMMerge]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[LedgerMMerge]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'LedgerMerge',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[LedgerMerge]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[LedgerMerge]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[LedgerMerge]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[LedgerMerge]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[LedgerMerge]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[LedgerMerge]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'LedgerM',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[LedgerM]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[LedgerM]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[LedgerM]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[LedgerM]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[LedgerM]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[LedgerM]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'ledgerAdj',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ledgerAdj]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[ledgerAdj]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[ledgerAdj]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[ledgerAdj]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ledgerAdj]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[ledgerAdj]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Ledger',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Ledger]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Ledger]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Ledger]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Ledger]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Ledger]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Ledger]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Leave_Ench',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Leave_Ench]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Leave_Ench]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Leave_Ench]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Leave_Ench]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Leave_Ench]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Leave_Ench]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'LeaderRev',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[LeaderRev]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[LeaderRev]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[LeaderRev]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[LeaderRev]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[LeaderRev]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[LeaderRev]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'LastVoucher',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[LastVoucher]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[LastVoucher]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[LastVoucher]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[LastVoucher]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[LastVoucher]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[LastVoucher]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'LastVou',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[LastVou]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[LastVou]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[LastVou]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[LastVou]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[LastVou]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[LastVou]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'KOTLog',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[KOTLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[KOTLog]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[KOTLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[KOTLog]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[KOTLog]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[KOTLog]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'KOT',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[KOT]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[KOT]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[KOT]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[KOT]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[KOT]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[KOT]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'KClStk',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[KClStk]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[KClStk]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[KClStk]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[KClStk]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[KClStk]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[KClStk]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'JobScheduledDetail',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[JobScheduledDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[JobScheduledDetail]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[JobScheduledDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[JobScheduledDetail]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[JobScheduledDetail]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[JobScheduledDetail]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'JobSchedule',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[JobSchedule]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[JobSchedule]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[JobSchedule]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[JobSchedule]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[JobSchedule]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[JobSchedule]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'ItemRate',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ItemRate]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[ItemRate]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[ItemRate]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[ItemRate]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ItemRate]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[ItemRate]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'ItemMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ItemMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[ItemMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[ItemMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[ItemMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ItemMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[ItemMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'ItemGrp',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ItemGrp]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[ItemGrp]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[ItemGrp]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[ItemGrp]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ItemGrp]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[ItemGrp]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'ItemCatMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ItemCatMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[ItemCatMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[ItemCatMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[ItemCatMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ItemCatMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[ItemCatMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Item',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Item]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Item]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Item]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Item]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Item]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Item]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'inout',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[inout]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[inout]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[inout]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[inout]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[inout]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[inout]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Indent1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Indent1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Indent1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Indent1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Indent1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Indent1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Indent1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Indent',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Indent]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Indent]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Indent]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Indent]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Indent]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Indent]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Holiday',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Holiday]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Holiday]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Holiday]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Holiday]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Holiday]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Holiday]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Help',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Help]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Help]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Help]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Help]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Help]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Help]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'HappyHoursHead',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HappyHoursHead]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[HappyHoursHead]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[HappyHoursHead]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[HappyHoursHead]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HappyHoursHead]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[HappyHoursHead]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'HappyHours',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HappyHours]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[HappyHours]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[HappyHours]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[HappyHours]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HappyHours]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[HappyHours]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'HallStockEst',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HallStockEst]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[HallStockEst]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[HallStockEst]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[HallStockEst]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HallStockEst]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[HallStockEst]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'HallStock',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HallStock]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[HallStock]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[HallStock]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[HallStock]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HallStock]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[HallStock]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'HallSale2',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HallSale2]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[HallSale2]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[HallSale2]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[HallSale2]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HallSale2]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[HallSale2]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'HallSale1Est',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HallSale1Est]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[HallSale1Est]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[HallSale1Est]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[HallSale1Est]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HallSale1Est]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[HallSale1Est]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'HallSale1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HallSale1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[HallSale1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[HallSale1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[HallSale1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HallSale1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[HallSale1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'HallPreCosting',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HallPreCosting]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[HallPreCosting]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[HallPreCosting]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[HallPreCosting]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HallPreCosting]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[HallPreCosting]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'HallBook1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HallBook1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[HallBook1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[HallBook1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[HallBook1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HallBook1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[HallBook1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'HallBook',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HallBook]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[HallBook]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[HallBook]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[HallBook]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[HallBook]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[HallBook]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GuestWakeup',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestWakeup]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GuestWakeup]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestWakeup]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GuestWakeup]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestWakeup]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestWakeup]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GuestStat',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestStat]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GuestStat]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestStat]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GuestStat]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestStat]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestStat]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GuestReward',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestReward]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GuestReward]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestReward]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GuestReward]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestReward]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestReward]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GuestProfVeh',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestProfVeh]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GuestProfVeh]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestProfVeh]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GuestProfVeh]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestProfVeh]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestProfVeh]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GuestProfFor',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestProfFor]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GuestProfFor]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestProfFor]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GuestProfFor]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestProfFor]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestProfFor]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GuestProf',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestProf]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GuestProf]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestProf]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GuestProf]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestProf]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestProf]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GuestParam',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestParam]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GuestParam]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestParam]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GuestParam]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestParam]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestParam]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GuestMessage',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestMessage]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GuestMessage]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestMessage]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GuestMessage]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestMessage]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestMessage]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GuestFolioProfDetail',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestFolioProfDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GuestFolioProfDetail]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestFolioProfDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GuestFolioProfDetail]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestFolioProfDetail]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestFolioProfDetail]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GuestFolioAmend',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestFolioAmend]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GuestFolioAmend]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestFolioAmend]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GuestFolioAmend]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestFolioAmend]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestFolioAmend]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GuestFolio',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestFolio]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GuestFolio]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestFolio]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GuestFolio]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestFolio]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestFolio]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GuestFeedBack',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestFeedBack]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GuestFeedBack]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestFeedBack]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GuestFeedBack]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestFeedBack]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestFeedBack]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GuestComments',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestComments]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GuestComments]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestComments]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GuestComments]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GuestComments]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GuestComments]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GrpBookingDetails',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GrpBookingDetails]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GrpBookingDetails]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GrpBookingDetails]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GrpBookingDetails]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GrpBookingDetails]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GrpBookingDetails]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GroupProf',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GroupProf]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GroupProf]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GroupProf]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GroupProf]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GroupProf]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GroupProf]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GroupFolioMore',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GroupFolioMore]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GroupFolioMore]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GroupFolioMore]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GroupFolioMore]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GroupFolioMore]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GroupFolioMore]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GroupCatalog',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GroupCatalog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GroupCatalog]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GroupCatalog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GroupCatalog]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GroupCatalog]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GroupCatalog]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GodownMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GodownMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GodownMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GodownMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GodownMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GodownMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GodownMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'GIN',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GIN]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[GIN]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[GIN]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[GIN]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[GIN]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[GIN]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'FunctionType',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FunctionType]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[FunctionType]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[FunctionType]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[FunctionType]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FunctionType]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[FunctionType]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'FreeItemDetail',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FreeItemDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[FreeItemDetail]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[FreeItemDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[FreeItemDetail]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FreeItemDetail]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[FreeItemDetail]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'ForExTrans',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ForExTrans]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[ForExTrans]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[ForExTrans]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[ForExTrans]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ForExTrans]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[ForExTrans]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'ForEx',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ForEx]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[ForEx]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[ForEx]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[ForEx]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ForEx]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[ForEx]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'FOMBillDetails',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FOMBillDetails]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[FOMBillDetails]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[FOMBillDetails]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[FOMBillDetails]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FOMBillDetails]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[FOMBillDetails]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'FOMBillChangeDetails',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FOMBillChangeDetails]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[FOMBillChangeDetails]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[FOMBillChangeDetails]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[FOMBillChangeDetails]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FOMBillChangeDetails]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[FOMBillChangeDetails]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'FolioLog',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FolioLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[FolioLog]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[FolioLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[FolioLog]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FolioLog]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[FolioLog]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'FixedCharge',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FixedCharge]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[FixedCharge]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[FixedCharge]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[FixedCharge]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FixedCharge]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[FixedCharge]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'FeedBackMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FeedBackMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[FeedBackMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[FeedBackMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[FeedBackMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FeedBackMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[FeedBackMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'FeatureMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FeatureMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[FeatureMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[FeatureMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[FeatureMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FeatureMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[FeatureMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'FaEnviro',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FaEnviro]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[FaEnviro]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[FaEnviro]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[FaEnviro]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FaEnviro]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[FaEnviro]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'FacilityMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FacilityMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[FacilityMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[FacilityMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[FacilityMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FacilityMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[FacilityMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'FacilityBill2',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FacilityBill2]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[FacilityBill2]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[FacilityBill2]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[FacilityBill2]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FacilityBill2]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[FacilityBill2]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'FacilityBill1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FacilityBill1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[FacilityBill1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[FacilityBill1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[FacilityBill1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FacilityBill1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[FacilityBill1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'FacilityBill',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FacilityBill]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[FacilityBill]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[FacilityBill]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[FacilityBill]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[FacilityBill]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[FacilityBill]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'ExpSheet',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ExpSheet]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[ExpSheet]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[ExpSheet]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[ExpSheet]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ExpSheet]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[ExpSheet]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'EPABX_Data',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[EPABX_Data]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[EPABX_Data]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[EPABX_Data]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[EPABX_Data]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[EPABX_Data]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[EPABX_Data]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Enviro',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Enviro]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Enviro]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Enviro]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Enviro]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Enviro]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Enviro]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Employee',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Employee]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Employee]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Employee]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Employee]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Employee]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Employee]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'EmpCategory',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[EmpCategory]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[EmpCategory]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[EmpCategory]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[EmpCategory]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[EmpCategory]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[EmpCategory]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'EmailSMSForward',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[EmailSMSForward]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[EmailSMSForward]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[EmailSMSForward]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[EmailSMSForward]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[EmailSMSForward]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[EmailSMSForward]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'eInvoiceToken',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[eInvoiceToken]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[eInvoiceToken]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[eInvoiceToken]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[eInvoiceToken]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[eInvoiceToken]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[eInvoiceToken]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'eInvoiceEnviro',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[eInvoiceEnviro]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[eInvoiceEnviro]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[eInvoiceEnviro]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[eInvoiceEnviro]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[eInvoiceEnviro]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[eInvoiceEnviro]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'eInvoiceBill2',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[eInvoiceBill2]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[eInvoiceBill2]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[eInvoiceBill2]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[eInvoiceBill2]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[eInvoiceBill2]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[eInvoiceBill2]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'eInvoiceBill1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[eInvoiceBill1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[eInvoiceBill1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[eInvoiceBill1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[eInvoiceBill1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[eInvoiceBill1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[eInvoiceBill1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'DispColor',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[DispColor]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[DispColor]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[DispColor]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[DispColor]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[DispColor]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[DispColor]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Desig',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Desig]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Desig]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Desig]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Desig]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Desig]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Desig]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'DepartRWScheme',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[DepartRWScheme]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[DepartRWScheme]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[DepartRWScheme]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[DepartRWScheme]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[DepartRWScheme]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[DepartRWScheme]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'DepartPay',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[DepartPay]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[DepartPay]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[DepartPay]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[DepartPay]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[DepartPay]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[DepartPay]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Depart1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Depart1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Depart1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Depart1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Depart1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Depart1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Depart1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Depart',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Depart]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Depart]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Depart]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Depart]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Depart]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Depart]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'DenominationFormat',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[DenominationFormat]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[DenominationFormat]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[DenominationFormat]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[DenominationFormat]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[DenominationFormat]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[DenominationFormat]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'DenominationDetail',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[DenominationDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[DenominationDetail]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[DenominationDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[DenominationDetail]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[DenominationDetail]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[DenominationDetail]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'DeliveryBoy',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[DeliveryBoy]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[DeliveryBoy]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[DeliveryBoy]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[DeliveryBoy]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[DeliveryBoy]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[DeliveryBoy]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'DBSendSMS',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[DBSendSMS]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[DBSendSMS]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[DBSendSMS]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[DBSendSMS]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[DBSendSMS]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[DBSendSMS]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'DATELOCK',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[DATELOCK]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[DATELOCK]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[DATELOCK]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[DATELOCK]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[DATELOCK]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[DATELOCK]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'CreditCardHistory',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[CreditCardHistory]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[CreditCardHistory]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[CreditCardHistory]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[CreditCardHistory]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[CreditCardHistory]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[CreditCardHistory]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Country',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Country]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Country]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Country]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Country]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Country]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Country]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'ComplaintDetail',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ComplaintDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[ComplaintDetail]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[ComplaintDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[ComplaintDetail]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ComplaintDetail]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[ComplaintDetail]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'ComplaintCategory',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ComplaintCategory]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[ComplaintCategory]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[ComplaintCategory]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[ComplaintCategory]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ComplaintCategory]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[ComplaintCategory]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'CompanyProfile',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[CompanyProfile]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[CompanyProfile]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[CompanyProfile]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[CompanyProfile]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[CompanyProfile]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[CompanyProfile]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Company',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Company]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Company]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Company]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Company]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Company]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Company]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Comp_PlanDet',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Comp_PlanDet]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Comp_PlanDet]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Comp_PlanDet]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Comp_PlanDet]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Comp_PlanDet]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Comp_PlanDet]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Comp_Inclusive',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Comp_Inclusive]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Comp_Inclusive]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Comp_Inclusive]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Comp_Inclusive]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Comp_Inclusive]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Comp_Inclusive]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'ComboPackHead',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ComboPackHead]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[ComboPackHead]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[ComboPackHead]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[ComboPackHead]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ComboPackHead]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[ComboPackHead]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'ComboPackDetail',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ComboPackDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[ComboPackDetail]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[ComboPackDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[ComboPackDetail]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ComboPackDetail]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[ComboPackDetail]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'City',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[City]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[City]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[City]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[City]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[City]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[City]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Category',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Category]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Category]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Category]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Category]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Category]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Category]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'CatalogMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[CatalogMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[CatalogMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[CatalogMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[CatalogMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[CatalogMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[CatalogMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'BussSource',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BussSource]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[BussSource]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[BussSource]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[BussSource]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BussSource]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[BussSource]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'BudgetDetails',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BudgetDetails]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[BudgetDetails]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[BudgetDetails]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[BudgetDetails]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BudgetDetails]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[BudgetDetails]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Budget',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Budget]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Budget]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Budget]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Budget]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Budget]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Budget]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'BookingPlanDetails',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BookingPlanDetails]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[BookingPlanDetails]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[BookingPlanDetails]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[BookingPlanDetails]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BookingPlanDetails]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[BookingPlanDetails]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'BookingMore',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BookingMore]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[BookingMore]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[BookingMore]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[BookingMore]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BookingMore]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[BookingMore]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'BookingLog',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BookingLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[BookingLog]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[BookingLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[BookingLog]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BookingLog]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[BookingLog]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'BookingInquiry',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BookingInquiry]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[BookingInquiry]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[BookingInquiry]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[BookingInquiry]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BookingInquiry]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[BookingInquiry]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'BookingDetail',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BookingDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[BookingDetail]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[BookingDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[BookingDetail]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BookingDetail]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[BookingDetail]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'BookingCancelDetails',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BookingCancelDetails]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[BookingCancelDetails]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[BookingCancelDetails]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[BookingCancelDetails]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BookingCancelDetails]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[BookingCancelDetails]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Booking',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Booking]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Booking]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Booking]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Booking]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Booking]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Booking]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'BOM',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BOM]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[BOM]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[BOM]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[BOM]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BOM]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[BOM]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'BlockMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BlockMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[BlockMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[BlockMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[BlockMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[BlockMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[BlockMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'RoomOcc',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomOcc]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[RoomOcc]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomOcc]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[RoomOcc]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomOcc]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomOcc]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'RoomMast1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomMast1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[RoomMast1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomMast1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[RoomMast1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomMast1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomMast1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'RoomMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[RoomMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[RoomMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'RoomFeature',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomFeature]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[RoomFeature]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomFeature]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[RoomFeature]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomFeature]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomFeature]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'RoomDiscount',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomDiscount]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[RoomDiscount]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomDiscount]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[RoomDiscount]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomDiscount]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomDiscount]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'RoomDet',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomDet]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[RoomDet]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomDet]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[RoomDet]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomDet]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomDet]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'RoomCheckOutStatus',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomCheckOutStatus]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[RoomCheckOutStatus]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomCheckOutStatus]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[RoomCheckOutStatus]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomCheckOutStatus]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomCheckOutStatus]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'RoomCat',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomCat]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[RoomCat]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomCat]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[RoomCat]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomCat]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomCat]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'RoomBlockOut',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomBlockOut]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[RoomBlockOut]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomBlockOut]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[RoomBlockOut]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomBlockOut]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomBlockOut]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'RevMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RevMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[RevMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[RevMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[RevMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RevMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[RevMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'RawConsumption',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RawConsumption]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[RawConsumption]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[RawConsumption]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[RawConsumption]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RawConsumption]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[RawConsumption]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'RateList',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RateList]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[RateList]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[RateList]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[RateList]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RateList]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[RateList]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Purch2',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Purch2]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Purch2]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Purch2]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Purch2]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Purch2]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Purch2]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Purch1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Purch1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Purch1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Purch1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Purch1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Purch1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Purch1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'ProfileImages',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ProfileImages]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[ProfileImages]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[ProfileImages]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[ProfileImages]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ProfileImages]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[ProfileImages]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SMSEnviro',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SMSEnviro]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SMSEnviro]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SMSEnviro]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SMSEnviro]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SMSEnviro]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SMSEnviro]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SmartCardReIssueDetail',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SmartCardReIssueDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SmartCardReIssueDetail]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SmartCardReIssueDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SmartCardReIssueDetail]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SmartCardReIssueDetail]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SmartCardReIssueDetail]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SmartCardRegistration',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SmartCardRegistration]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SmartCardRegistration]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SmartCardRegistration]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SmartCardRegistration]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SmartCardRegistration]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SmartCardRegistration]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SmartCardMaster',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SmartCardMaster]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SmartCardMaster]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SmartCardMaster]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SmartCardMaster]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SmartCardMaster]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SmartCardMaster]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SmartCardLedger',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SmartCardLedger]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SmartCardLedger]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SmartCardLedger]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SmartCardLedger]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SmartCardLedger]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SmartCardLedger]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Site',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Site]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Site]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Site]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Site]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Site]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Site]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'ShiftMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ShiftMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[ShiftMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[ShiftMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[ShiftMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ShiftMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[ShiftMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SessionMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SessionMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SessionMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SessionMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SessionMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SessionMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SessionMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SeasonMast1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SeasonMast1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SeasonMast1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SeasonMast1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SeasonMast1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SeasonMast1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SeasonMast1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SeasonMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SeasonMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SeasonMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SeasonMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SeasonMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SeasonMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SeasonMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SchemeOutletDiscount',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SchemeOutletDiscount]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SchemeOutletDiscount]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SchemeOutletDiscount]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SchemeOutletDiscount]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SchemeOutletDiscount]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SchemeOutletDiscount]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SchemeMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SchemeMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SchemeMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SchemeMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SchemeMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SchemeMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SchemeMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SchemeItemDetail',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SchemeItemDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SchemeItemDetail]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SchemeItemDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SchemeItemDetail]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SchemeItemDetail]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SchemeItemDetail]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SaleMIS',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SaleMIS]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SaleMIS]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SaleMIS]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SaleMIS]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SaleMIS]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SaleMIS]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Sale2Log',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Sale2Log]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Sale2Log]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Sale2Log]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Sale2Log]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Sale2Log]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Sale2Log]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Sale2',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Sale2]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Sale2]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Sale2]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Sale2]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Sale2]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Sale2]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Sale1Log',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Sale1Log]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Sale1Log]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Sale1Log]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Sale1Log]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Sale1Log]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Sale1Log]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Sale1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Sale1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Sale1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Sale1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Sale1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Sale1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Sale1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SalaryLog',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SalaryLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SalaryLog]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SalaryLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SalaryLog]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SalaryLog]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SalaryLog]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Salary',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Salary]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Salary]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Salary]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Salary]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Salary]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Salary]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'RWParameter',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RWParameter]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[RWParameter]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[RWParameter]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[RWParameter]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RWParameter]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[RWParameter]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'RoundOffSetting',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoundOffSetting]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[RoundOffSetting]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoundOffSetting]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[RoundOffSetting]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoundOffSetting]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoundOffSetting]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'RoomRate',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomRate]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[RoomRate]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomRate]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[RoomRate]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[RoomRate]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[RoomRate]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SunTranLog',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SunTranLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SunTranLog]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SunTranLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SunTranLog]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SunTranLog]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SunTranLog]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SunTranHEst',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SunTranHEst]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SunTranHEst]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SunTranHEst]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SunTranHEst]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SunTranHEst]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SunTranHEst]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SunTranH',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SunTranH]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SunTranH]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SunTranH]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SunTranH]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SunTranH]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SunTranH]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SunTranFacility',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SunTranFacility]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SunTranFacility]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SunTranFacility]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SunTranFacility]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SunTranFacility]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SunTranFacility]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SunTranEst',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SunTranEst]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SunTranEst]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SunTranEst]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SunTranEst]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SunTranEst]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SunTranEst]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SunTran',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SunTran]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SunTran]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SunTran]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SunTran]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SunTran]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SunTran]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SundryTypeFix',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SundryTypeFix]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SundryTypeFix]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SundryTypeFix]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SundryTypeFix]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SundryTypeFix]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SundryTypeFix]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SundryType',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SundryType]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SundryType]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SundryType]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SundryType]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SundryType]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SundryType]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SundryMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SundryMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SundryMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SundryMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SundryMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SundryMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SundryMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SubGroupType',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SubGroupType]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SubGroupType]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SubGroupType]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SubGroupType]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SubGroupType]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SubGroupType]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SubGroupRate',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SubGroupRate]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SubGroupRate]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SubGroupRate]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SubGroupRate]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SubGroupRate]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SubGroupRate]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SubGroupLog',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SubGroupLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SubGroupLog]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SubGroupLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SubGroupLog]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SubGroupLog]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SubGroupLog]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SubGroupCurrBal',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SubGroupCurrBal]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SubGroupCurrBal]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SubGroupCurrBal]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SubGroupCurrBal]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SubGroupCurrBal]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SubGroupCurrBal]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SubGroup',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SubGroup]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SubGroup]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SubGroup]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SubGroup]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SubGroup]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SubGroup]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'StockLog',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[StockLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[StockLog]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[StockLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[StockLog]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[StockLog]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[StockLog]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Stock1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Stock1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Stock1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Stock1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Stock1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Stock1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Stock1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Stock',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Stock]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Stock]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Stock]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Stock]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Stock]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Stock]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'State',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[State]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[State]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[State]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[State]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[State]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[State]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SplitSunTran',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SplitSunTran]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SplitSunTran]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SplitSunTran]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SplitSunTran]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SplitSunTran]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SplitSunTran]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SplitStock1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SplitStock1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SplitStock1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SplitStock1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SplitStock1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SplitStock1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SplitStock1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SplitStock',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SplitStock]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SplitStock]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SplitStock]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SplitStock]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SplitStock]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SplitStock]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SplitSale2',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SplitSale2]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SplitSale2]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SplitSale2]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SplitSale2]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SplitSale2]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SplitSale2]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SplitSale1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SplitSale1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SplitSale1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SplitSale1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SplitSale1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SplitSale1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SplitSale1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SplitedSunTran',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SplitedSunTran]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SplitedSunTran]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SplitedSunTran]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SplitedSunTran]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SplitedSunTran]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SplitedSunTran]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'SplitBillDetail',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SplitBillDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[SplitBillDetail]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[SplitBillDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[SplitBillDetail]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[SplitBillDetail]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[SplitBillDetail]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'VenueOCC',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[VenueOCC]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[VenueOCC]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[VenueOCC]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[VenueOCC]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[VenueOCC]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[VenueOCC]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'VenueMast1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[VenueMast1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[VenueMast1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[VenueMast1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[VenueMast1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[VenueMast1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[VenueMast1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'VenueMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[VenueMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[VenueMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[VenueMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[VenueMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[VenueMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[VenueMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'VenueFeatures',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[VenueFeatures]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[VenueFeatures]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[VenueFeatures]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[VenueFeatures]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[VenueFeatures]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[VenueFeatures]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'VenueCapacity',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[VenueCapacity]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[VenueCapacity]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[VenueCapacity]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[VenueCapacity]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[VenueCapacity]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[VenueCapacity]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'UserPermission',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[UserPermission]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[UserPermission]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[UserPermission]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[UserPermission]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[UserPermission]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[UserPermission]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'UserModule1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[UserModule1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[UserModule1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[UserModule1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[UserModule1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[UserModule1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[UserModule1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'UserModule',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[UserModule]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[UserModule]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[UserModule]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[UserModule]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[UserModule]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[UserModule]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'UserMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[UserMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[UserMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[UserMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[UserMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[UserMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[UserMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'UserCollection',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[UserCollection]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[UserCollection]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[UserCollection]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[UserCollection]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[UserCollection]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[UserCollection]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'User2',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[User2]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[User2]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[User2]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[User2]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[User2]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[User2]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'User1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[User1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[User1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[User1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[User1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[User1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[User1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'User_Module',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[User_Module]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[User_Module]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[User_Module]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[User_Module]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[User_Module]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[User_Module]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'UnitMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[UnitMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[UnitMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[UnitMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[UnitMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[UnitMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[UnitMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Travel2',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Travel2]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Travel2]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Travel2]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Travel2]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Travel2]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Travel2]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Travel1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Travel1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Travel1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Travel1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Travel1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Travel1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Travel1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'TranTaxDetail',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TranTaxDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[TranTaxDetail]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[TranTaxDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[TranTaxDetail]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TranTaxDetail]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[TranTaxDetail]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'TranSunDetail',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TranSunDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[TranSunDetail]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[TranSunDetail]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[TranSunDetail]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TranSunDetail]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[TranSunDetail]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'TransOut',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TransOut]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[TransOut]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[TransOut]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[TransOut]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TransOut]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[TransOut]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'TransIn',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TransIn]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[TransIn]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[TransIn]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[TransIn]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TransIn]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[TransIn]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'TransDel',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TransDel]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[TransDel]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[TransDel]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[TransDel]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TransDel]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[TransDel]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'TranLog',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TranLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[TranLog]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[TranLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[TranLog]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TranLog]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[TranLog]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'TradeInfo_bTwin',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TradeInfo_bTwin]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[TradeInfo_bTwin]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[TradeInfo_bTwin]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[TradeInfo_bTwin]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TradeInfo_bTwin]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[TradeInfo_bTwin]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'TOKEN',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TOKEN]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[TOKEN]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[TOKEN]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[TOKEN]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TOKEN]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[TOKEN]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'TempPosDel',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TempPosDel]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[TempPosDel]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[TempPosDel]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[TempPosDel]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TempPosDel]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[TempPosDel]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Temp_Sbill',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Temp_Sbill]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Temp_Sbill]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Temp_Sbill]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Temp_Sbill]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Temp_Sbill]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Temp_Sbill]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'TelExt',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TelExt]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[TelExt]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[TelExt]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[TelExt]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TelExt]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[TelExt]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'TelCallType',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TelCallType]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[TelCallType]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[TelCallType]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[TelCallType]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TelCallType]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[TelCallType]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'TelCallCode',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TelCallCode]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[TelCallCode]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[TelCallCode]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[TelCallCode]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TelCallCode]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[TelCallCode]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'TDSChal1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TDSChal1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[TDSChal1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[TDSChal1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[TDSChal1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TDSChal1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[TDSChal1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'TDSChal',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TDSChal]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[TDSChal]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[TDSChal]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[TDSChal]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TDSChal]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[TDSChal]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'TDSCerti',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TDSCerti]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[TDSCerti]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[TDSCerti]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[TDSCerti]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TDSCerti]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[TDSCerti]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'TDSCat',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TDSCat]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[TDSCat]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[TDSCat]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[TDSCat]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TDSCat]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[TDSCat]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'tbl_UserMaster',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[tbl_UserMaster]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[tbl_UserMaster]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[tbl_UserMaster]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[tbl_UserMaster]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[tbl_UserMaster]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[tbl_UserMaster]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'tbl_GetRoomMst',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[tbl_GetRoomMst]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[tbl_GetRoomMst]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[tbl_GetRoomMst]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[tbl_GetRoomMst]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[tbl_GetRoomMst]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[tbl_GetRoomMst]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'tbl_GetBooking',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[tbl_GetBooking]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[tbl_GetBooking]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[tbl_GetBooking]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[tbl_GetBooking]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[tbl_GetBooking]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[tbl_GetBooking]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'tbl_EventPrameter',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[tbl_EventPrameter]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[tbl_EventPrameter]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[tbl_EventPrameter]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[tbl_EventPrameter]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[tbl_EventPrameter]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[tbl_EventPrameter]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'tbl_EventExc',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[tbl_EventExc]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[tbl_EventExc]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[tbl_EventExc]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[tbl_EventExc]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[tbl_EventExc]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[tbl_EventExc]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'tbl_Config',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[tbl_Config]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[tbl_Config]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[tbl_Config]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[tbl_Config]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[tbl_Config]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[tbl_Config]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'tbl_ClientReportMIS',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[tbl_ClientReportMIS]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[tbl_ClientReportMIS]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[tbl_ClientReportMIS]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[tbl_ClientReportMIS]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[tbl_ClientReportMIS]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[tbl_ClientReportMIS]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'tbl_ApiEventCode',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[tbl_ApiEventCode]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[tbl_ApiEventCode]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[tbl_ApiEventCode]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[tbl_ApiEventCode]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[tbl_ApiEventCode]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[tbl_ApiEventCode]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'TaxStru',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TaxStru]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[TaxStru]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[TaxStru]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[TaxStru]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[TaxStru]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[TaxStru]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Waiter',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Waiter]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Waiter]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Waiter]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Waiter]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Waiter]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Waiter]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'VoucherCat',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[VoucherCat]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[VoucherCat]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[VoucherCat]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[VoucherCat]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[VoucherCat]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[VoucherCat]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Voucher_Type',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Voucher_Type]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Voucher_Type]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Voucher_Type]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Voucher_Type]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Voucher_Type]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Voucher_Type]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Voucher_Prefix',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Voucher_Prefix]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Voucher_Prefix]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Voucher_Prefix]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Voucher_Prefix]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Voucher_Prefix]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Voucher_Prefix]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Voucher_Include',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Voucher_Include]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Voucher_Include]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Voucher_Include]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Voucher_Include]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Voucher_Include]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Voucher_Include]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Voucher_Exclude',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Voucher_Exclude]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Voucher_Exclude]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Voucher_Exclude]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Voucher_Exclude]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Voucher_Exclude]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Voucher_Exclude]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'POS_SBill',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[POS_SBill]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[POS_SBill]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[POS_SBill]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[POS_SBill]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[POS_SBill]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[POS_SBill]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'POrder1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[POrder1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[POrder1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[POrder1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[POrder1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[POrder1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[POrder1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'POrder',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[POrder]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[POrder]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[POrder]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[POrder]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[POrder]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[POrder]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'PlanTokenDetails',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PlanTokenDetails]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[PlanTokenDetails]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[PlanTokenDetails]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[PlanTokenDetails]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PlanTokenDetails]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[PlanTokenDetails]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'PlanMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PlanMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[PlanMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[PlanMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[PlanMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PlanMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[PlanMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'PlanDetails',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PlanDetails]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[PlanDetails]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[PlanDetails]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[PlanDetails]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PlanDetails]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[PlanDetails]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Plan1',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Plan1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Plan1]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Plan1]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Plan1]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Plan1]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Plan1]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'PDALOG',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PDALOG]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[PDALOG]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[PDALOG]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[PDALOG]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PDALOG]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[PDALOG]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'PayChargeLog',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PayChargeLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[PayChargeLog]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[PayChargeLog]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[PayChargeLog]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PayChargeLog]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[PayChargeLog]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'PayChargeH',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PayChargeH]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[PayChargeH]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[PayChargeH]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[PayChargeH]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PayChargeH]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[PayChargeH]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'PayCharge',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PayCharge]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[PayCharge]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[PayCharge]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[PayCharge]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[PayCharge]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[PayCharge]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Attendence',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Attendence]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Attendence]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Attendence]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Attendence]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Attendence]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Attendence]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'Attend',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Attend]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[Attend]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[Attend]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[Attend]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[Attend]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[Attend]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'AssignDelivery',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[AssignDelivery]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[AssignDelivery]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[AssignDelivery]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[AssignDelivery]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[AssignDelivery]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[AssignDelivery]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'AreaMast',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[AreaMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[AreaMast]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[AreaMast]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[AreaMast]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[AreaMast]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[AreaMast]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'AcgroupcurrBal',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[AcgroupcurrBal]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[AcgroupcurrBal]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[AcgroupcurrBal]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[AcgroupcurrBal]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[AcgroupcurrBal]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[AcgroupcurrBal]', N'U') IS NULL THEN 0 ELSE 1 END;

    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'ACGROUP',
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ACGROUP]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [VijayData2627].[dbo].[ACGROUP]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[ACGROUP]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[ACGROUP]) END,
           CASE WHEN OBJECT_ID(N'[VijayData2627].[dbo].[ACGROUP]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[ACGROUP]', N'U') IS NULL THEN 0 ELSE 1 END;

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
