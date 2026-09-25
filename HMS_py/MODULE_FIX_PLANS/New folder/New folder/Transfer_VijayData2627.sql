/* ============================================================================
   DATA TRANSFER SCRIPT   :   [VijayData2627]  ->  [DESTINATION_DB]   (same SQL Server instance)
   ----------------------------------------------------------------------------
   KAAM KAISE KARE:
     1) SSMS me ye script kholo.
     2) Sabse upar 'USE [DESTINATION_DB]' line me destination DB ka naam theek karo.
     3) F5 dabao. Messages window me har table ka status dikhega:
          TRANSFERRED : n rows   /   SKIPPED (reason)   /   FAILED (reason)

   RULES:
     * Column-NAME based INSERT...SELECT.
     * IDENTITY wali tables me SET IDENTITY_INSERT ON/OFF automatic.
     * PK wali tables me NOT EXISTS guard -> re-run par duplicate nahi.
     * Har table alag TRY/CATCH me -> ek fail ho to baaki chalte rahenge.
     * NOTE: Bina-PK wali (40 tables) me re-run par duplicate ho sakte hain.
   ============================================================================ */

USE [DESTINATION_DB];   -- << DESTINATION DATABASE (yahan naam badlo)
GO

SET NOCOUNT ON;

PRINT '========== DATA TRANSFER START : [VijayData2627] -> [DESTINATION_DB] ==========';
PRINT '';

PRINT 'Table : [PackingOrderDetail2]';

IF OBJECT_ID(N'VijayData2627.dbo.[PackingOrderDetail2]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[PackingOrderDetail2]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[PackingOrderDetail2]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'VNo', 'Vdate', 'PartyCode', 'SunCode', 'Limit', 'DispName', 'ROff', 'CalcFormula', 'SValue', 'Amount', 'BaseAmount', 'U_Name', 'U_EntDt', 'U_AE', 'SunAppDate', 'RevCode', 'RestCode', 'DelFlag', 'SiteCode', 'LogSite_Code', 'SeqNo', 'AssociatedRestCode')) < 25
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[PackingOrderDetail2] ([DocId], [Sno], [Vtype], [VNo], [Vdate], [PartyCode], [SunCode], [Limit], [DispName], [ROff], [CalcFormula], [SValue], [Amount], [BaseAmount], [U_Name], [U_EntDt], [U_AE], [SunAppDate], [RevCode], [RestCode], [DelFlag], [SiteCode], [LogSite_Code], [SeqNo], [AssociatedRestCode])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[VNo], s.[Vdate], s.[PartyCode], s.[SunCode], s.[Limit], s.[DispName], s.[ROff], s.[CalcFormula], s.[SValue], s.[Amount], s.[BaseAmount], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[SunAppDate], s.[RevCode], s.[RestCode], s.[DelFlag], s.[SiteCode], s.[LogSite_Code], s.[SeqNo], s.[AssociatedRestCode]
    FROM [VijayData2627].[dbo].[PackingOrderDetail2] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[PackingOrderDetail2] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno] AND d.[AssociatedRestCode] = s.[AssociatedRestCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [PackingOrderDetail1]';

IF OBJECT_ID(N'VijayData2627.dbo.[PackingOrderDetail1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[PackingOrderDetail1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[PackingOrderDetail1]')
           AND name IN ('DocId', 'Sno', 'SNo1', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'RestCode', 'TaxCode', 'BaseValue', 'TaxPer', 'TaxAmt', 'U_Name', 'U_EntDt', 'U_AE', 'DelFlag', 'LogSite_Code', 'SeqNo', 'ItemRestCode')) < 20
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[PackingOrderDetail1] ([DocId], [Sno], [SNo1], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [RestCode], [TaxCode], [BaseValue], [TaxPer], [TaxAmt], [U_Name], [U_EntDt], [U_AE], [DelFlag], [LogSite_Code], [SeqNo], [ItemRestCode])
    SELECT s.[DocId], s.[Sno], s.[SNo1], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[RestCode], s.[TaxCode], s.[BaseValue], s.[TaxPer], s.[TaxAmt], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[DelFlag], s.[LogSite_Code], s.[SeqNo], s.[ItemRestCode]
    FROM [VijayData2627].[dbo].[PackingOrderDetail1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[PackingOrderDetail1] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno] AND d.[SNo1] = s.[SNo1]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [PackingOrderDetail]';

IF OBJECT_ID(N'VijayData2627.dbo.[PackingOrderDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[PackingOrderDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[PackingOrderDetail]')
           AND name IN ('DocID', 'SNo', 'VType', 'VNo', 'Site_Code', 'VPrefix', 'VDate', 'ItemCode', 'Qty', 'Rate', 'Amount', 'Remark', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'ContraDocID', 'ContraSNo', 'RestCode', 'ItemRate', 'Unit', 'RateIncTax', 'RateEdit', 'SChrgApp', 'DiscApp', 'TaxCode', 'TaxROff', 'DepartCode', 'GodownCode', 'TaxPer', 'TaxAmt', 'DiscPer', 'DiscAmt', 'Total', 'VoidYN', 'ItemRestCode')) < 36
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[PackingOrderDetail] ([DocID], [SNo], [VType], [VNo], [Site_Code], [VPrefix], [VDate], [ItemCode], [Qty], [Rate], [Amount], [Remark], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [ContraDocID], [ContraSNo], [RestCode], [ItemRate], [Unit], [RateIncTax], [RateEdit], [SChrgApp], [DiscApp], [TaxCode], [TaxROff], [DepartCode], [GodownCode], [TaxPer], [TaxAmt], [DiscPer], [DiscAmt], [Total], [VoidYN], [ItemRestCode])
    SELECT s.[DocID], s.[SNo], s.[VType], s.[VNo], s.[Site_Code], s.[VPrefix], s.[VDate], s.[ItemCode], s.[Qty], s.[Rate], s.[Amount], s.[Remark], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[ContraDocID], s.[ContraSNo], s.[RestCode], s.[ItemRate], s.[Unit], s.[RateIncTax], s.[RateEdit], s.[SChrgApp], s.[DiscApp], s.[TaxCode], s.[TaxROff], s.[DepartCode], s.[GodownCode], s.[TaxPer], s.[TaxAmt], s.[DiscPer], s.[DiscAmt], s.[Total], s.[VoidYN], s.[ItemRestCode]
    FROM [VijayData2627].[dbo].[PackingOrderDetail] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[PackingOrderDetail] AS d
                      WHERE d.[DocID] = s.[DocID] AND d.[SNo] = s.[SNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [PackingOrder]';

IF OBJECT_ID(N'VijayData2627.dbo.[PackingOrder]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[PackingOrder]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[PackingOrder]')
           AND name IN ('Docid', 'VNo', 'VPrefix', 'VType', 'Site_Code', 'VDate', 'VTime', 'DDate', 'DTime', 'CustName', 'Total', 'Discount', 'Tax', 'Addition', 'Deduction', 'RoundOff', 'NetAmt', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'RestCode', 'AdvAmt', 'DiscPer', 'TaxPer', 'PhoneNo', 'Addr1', 'Addr2', 'TokenNo', 'NCBOOKING', 'NCTYPE', 'PrintedYN', 'Remark', 'OrderType')) < 34
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[PackingOrder] ([Docid], [VNo], [VPrefix], [VType], [Site_Code], [VDate], [VTime], [DDate], [DTime], [CustName], [Total], [Discount], [Tax], [Addition], [Deduction], [RoundOff], [NetAmt], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [RestCode], [AdvAmt], [DiscPer], [TaxPer], [PhoneNo], [Addr1], [Addr2], [TokenNo], [NCBOOKING], [NCTYPE], [PrintedYN], [Remark], [OrderType])
    SELECT s.[Docid], s.[VNo], s.[VPrefix], s.[VType], s.[Site_Code], s.[VDate], s.[VTime], s.[DDate], s.[DTime], s.[CustName], s.[Total], s.[Discount], s.[Tax], s.[Addition], s.[Deduction], s.[RoundOff], s.[NetAmt], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[RestCode], s.[AdvAmt], s.[DiscPer], s.[TaxPer], s.[PhoneNo], s.[Addr1], s.[Addr2], s.[TokenNo], s.[NCBOOKING], s.[NCTYPE], s.[PrintedYN], s.[Remark], s.[OrderType]
    FROM [VijayData2627].[dbo].[PackingOrder] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[PackingOrder] AS d
                      WHERE d.[Docid] = s.[Docid]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [OverTime]';

IF OBJECT_ID(N'VijayData2627.dbo.[OverTime]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[OverTime]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[OverTime]')
           AND name IN ('EmpCode', 'OTDate', 'OTime', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'Amount', 'Remark', 'OTRate')) < 11
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[OverTime] ([EmpCode], [OTDate], [OTime], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [Amount], [Remark], [OTRate])
    SELECT s.[EmpCode], s.[OTDate], s.[OTime], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[Amount], s.[Remark], s.[OTRate]
    FROM [VijayData2627].[dbo].[OverTime] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[OverTime] AS d
                      WHERE d.[EmpCode] = s.[EmpCode] AND d.[OTDate] = s.[OTDate] AND d.[Site_Code] = s.[Site_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [OutletBarCodePartDetail]';

IF OBJECT_ID(N'VijayData2627.dbo.[OutletBarCodePartDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[OutletBarCodePartDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[OutletBarCodePartDetail]')
           AND name IN ('BarCodePart', 'BarCodeStartFrom', 'BarCodeLength', 'RestCode', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[OutletBarCodePartDetail] ([BarCodePart], [BarCodeStartFrom], [BarCodeLength], [RestCode], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[BarCodePart], s.[BarCodeStartFrom], s.[BarCodeLength], s.[RestCode], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[OutletBarCodePartDetail] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[OutletBarCodePartDetail] AS d
                      WHERE d.[BarCodePart] = s.[BarCodePart] AND d.[RestCode] = s.[RestCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [OrderPersonDetails]';

IF OBJECT_ID(N'VijayData2627.dbo.[OrderPersonDetails]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[OrderPersonDetails]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[OrderPersonDetails]')
           AND name IN ('DocId', 'PhoneNo', 'CustName', 'Addr1', 'Addr2', 'U_AE', 'U_Name', 'U_EntDt', 'Site_Code', 'LogSite_Code')) < 10
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[OrderPersonDetails] ([DocId], [PhoneNo], [CustName], [Addr1], [Addr2], [U_AE], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code])
    SELECT s.[DocId], s.[PhoneNo], s.[CustName], s.[Addr1], s.[Addr2], s.[U_AE], s.[U_Name], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[OrderPersonDetails] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [OrderAdvanceDetail]';

IF OBJECT_ID(N'VijayData2627.dbo.[OrderAdvanceDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[OrderAdvanceDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[OrderAdvanceDetail]')
           AND name IN ('Docid', 'Sno', 'AssociatedRestCode', 'VType', 'Vdate', 'Vtime', 'Vno', 'Vprefix', 'RestCode', 'Comments', 'PayCode', 'PayType', 'AmtCr', 'AmtDr', 'TipAmt', 'EmpCode', 'CompCode', 'CardNo', 'CardHolder', 'ChqNo', 'ChqDate', 'ExpDate', 'BatchNo', 'ContraDocid', 'BillAmount', 'U_AE', 'U_Name', 'U_EntDt', 'Site_Code', 'LogSite_Code')) < 30
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[OrderAdvanceDetail] ([Docid], [Sno], [AssociatedRestCode], [VType], [Vdate], [Vtime], [Vno], [Vprefix], [RestCode], [Comments], [PayCode], [PayType], [AmtCr], [AmtDr], [TipAmt], [EmpCode], [CompCode], [CardNo], [CardHolder], [ChqNo], [ChqDate], [ExpDate], [BatchNo], [ContraDocid], [BillAmount], [U_AE], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code])
    SELECT s.[Docid], s.[Sno], s.[AssociatedRestCode], s.[VType], s.[Vdate], s.[Vtime], s.[Vno], s.[Vprefix], s.[RestCode], s.[Comments], s.[PayCode], s.[PayType], s.[AmtCr], s.[AmtDr], s.[TipAmt], s.[EmpCode], s.[CompCode], s.[CardNo], s.[CardHolder], s.[ChqNo], s.[ChqDate], s.[ExpDate], s.[BatchNo], s.[ContraDocid], s.[BillAmount], s.[U_AE], s.[U_Name], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[OrderAdvanceDetail] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[OrderAdvanceDetail] AS d
                      WHERE d.[Docid] = s.[Docid] AND d.[Sno] = s.[Sno] AND d.[AssociatedRestCode] = s.[AssociatedRestCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [NightAuditLog]';

IF OBJECT_ID(N'VijayData2627.dbo.[NightAuditLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[NightAuditLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[NightAuditLog]')
           AND name IN ('Id', 'DateChngFrom', 'DateChngTo', 'StartNightAudit', 'EndNightAudit', 'Site_Code', 'U_AE', 'U_Name', 'U_EntDt', 'LogSite_Code')) < 10
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    SET IDENTITY_INSERT [dbo].[NightAuditLog] ON;
    INSERT INTO [dbo].[NightAuditLog] ([Id], [DateChngFrom], [DateChngTo], [StartNightAudit], [EndNightAudit], [Site_Code], [U_AE], [U_Name], [U_EntDt], [LogSite_Code])
    SELECT s.[Id], s.[DateChngFrom], s.[DateChngTo], s.[StartNightAudit], s.[EndNightAudit], s.[Site_Code], s.[U_AE], s.[U_Name], s.[U_EntDt], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[NightAuditLog] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
    SET IDENTITY_INSERT [dbo].[NightAuditLog] OFF;
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [NCTypeMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[NCTypeMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[NCTypeMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[NCTypeMast]')
           AND name IN ('NCTYPE', 'NCPer', 'U_AE', 'U_Name', 'U_EntDt', 'Site_Code', 'LogSite_Code')) < 7
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[NCTypeMast] ([NCTYPE], [NCPer], [U_AE], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code])
    SELECT s.[NCTYPE], s.[NCPer], s.[U_AE], s.[U_Name], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[NCTypeMast] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [NarrMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[NarrMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[NarrMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[NarrMast]')
           AND name IN ('Code', 'Name', 'U_Name', 'U_EntDt', 'U_AE', 'Site_Code', 'LogSite_Code')) < 7
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[NarrMast] ([Code], [Name], [U_Name], [U_EntDt], [U_AE], [Site_Code], [LogSite_Code])
    SELECT s.[Code], s.[Name], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[NarrMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[NarrMast] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [messaging]';

IF OBJECT_ID(N'VijayData2627.dbo.[messaging]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[messaging]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[messaging]')
           AND name IN ('VType', 'VNo', 'VDate', 'VTime', 'Sender', 'Receiver', 'Cleared', 'ClearedDate', 'ClearedTime', 'ReadYN', 'ReadDate', 'ReadTime', 'Subject', 'Message', 'U_Name', 'U_EntDt', 'U_AE', 'EmpCode', 'Site_Code', 'LogSite_Code')) < 20
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[messaging] ([VType], [VNo], [VDate], [VTime], [Sender], [Receiver], [Cleared], [ClearedDate], [ClearedTime], [ReadYN], [ReadDate], [ReadTime], [Subject], [Message], [U_Name], [U_EntDt], [U_AE], [EmpCode], [Site_Code], [LogSite_Code])
    SELECT s.[VType], s.[VNo], s.[VDate], s.[VTime], s.[Sender], s.[Receiver], s.[Cleared], s.[ClearedDate], s.[ClearedTime], s.[ReadYN], s.[ReadDate], s.[ReadTime], s.[Subject], s.[Message], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[EmpCode], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[messaging] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[messaging] AS d
                      WHERE d.[VType] = s.[VType] AND d.[VNo] = s.[VNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [menuHelp1]';

IF OBJECT_ID(N'VijayData2627.dbo.[menuHelp1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[menuHelp1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[menuHelp1]')
           AND name IN ('CompCode', 'UserName', 'Opt1', 'Opt2', 'Opt3', 'Opt4', 'Code', 'MenuName', 'MenuIndex', 'MenuCaption', 'Param_Str', 'Flag')) < 12
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[menuHelp1] ([CompCode], [UserName], [Opt1], [Opt2], [Opt3], [Opt4], [Code], [MenuName], [MenuIndex], [MenuCaption], [Param_Str], [Flag])
    SELECT s.[CompCode], s.[UserName], s.[Opt1], s.[Opt2], s.[Opt3], s.[Opt4], s.[Code], s.[MenuName], s.[MenuIndex], s.[MenuCaption], s.[Param_Str], s.[Flag]
    FROM [VijayData2627].[dbo].[menuHelp1] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [menuHelp]';

IF OBJECT_ID(N'VijayData2627.dbo.[menuHelp]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[menuHelp]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[menuHelp]')
           AND name IN ('CompCode', 'UserName', 'Opt1', 'Opt2', 'Opt3', 'Opt4', 'Code', 'Option', 'Menu_Index', 'Menu_Visible', 'Pro_Name', 'Tag', 'User_Name', 'Param_Str', 'ID', 'Module_Name', 'Flag', 'ShowInList', 'OutletCode')) < 19
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[menuHelp] ([CompCode], [UserName], [Opt1], [Opt2], [Opt3], [Opt4], [Code], [Option], [Menu_Index], [Menu_Visible], [Pro_Name], [Tag], [User_Name], [Param_Str], [ID], [Module_Name], [Flag], [ShowInList], [OutletCode])
    SELECT s.[CompCode], s.[UserName], s.[Opt1], s.[Opt2], s.[Opt3], s.[Opt4], s.[Code], s.[Option], s.[Menu_Index], s.[Menu_Visible], s.[Pro_Name], s.[Tag], s.[User_Name], s.[Param_Str], s.[ID], s.[Module_Name], s.[Flag], s.[ShowInList], s.[OutletCode]
    FROM [VijayData2627].[dbo].[menuHelp] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MemVisitEntry]';

IF OBJECT_ID(N'VijayData2627.dbo.[MemVisitEntry]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MemVisitEntry]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MemVisitEntry]')
           AND name IN ('SerialNo', 'MemCode', 'InDate', 'InTime', 'OutDate', 'OutTime', 'U_AE', 'U_Name', 'U_EntDt', 'Site_Code', 'LogSite_Code', 'Relation', 'RSNo', 'CardRegId')) < 14
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MemVisitEntry] ([SerialNo], [MemCode], [InDate], [InTime], [OutDate], [OutTime], [U_AE], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code], [Relation], [RSNo], [CardRegId])
    SELECT s.[SerialNo], s.[MemCode], s.[InDate], s.[InTime], s.[OutDate], s.[OutTime], s.[U_AE], s.[U_Name], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code], s.[Relation], s.[RSNo], s.[CardRegId]
    FROM [VijayData2627].[dbo].[MemVisitEntry] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MemTagadaLetter]';

IF OBJECT_ID(N'VijayData2627.dbo.[MemTagadaLetter]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MemTagadaLetter]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MemTagadaLetter]')
           AND name IN ('Code', 'Type', 'Vdate', 'MemCode', 'CurBillMonth', 'TillDate', 'DueAmt', 'CurMonthBillAmt', 'CreditAmt', 'BalanceTillDate', 'DelFlag', 'ContraCode', 'ContraType', 'U_Name', 'U_AE', 'U_EntDt', 'Site_Code', 'LogSite_Code')) < 18
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MemTagadaLetter] ([Code], [Type], [Vdate], [MemCode], [CurBillMonth], [TillDate], [DueAmt], [CurMonthBillAmt], [CreditAmt], [BalanceTillDate], [DelFlag], [ContraCode], [ContraType], [U_Name], [U_AE], [U_EntDt], [Site_Code], [LogSite_Code])
    SELECT s.[Code], s.[Type], s.[Vdate], s.[MemCode], s.[CurBillMonth], s.[TillDate], s.[DueAmt], s.[CurMonthBillAmt], s.[CreditAmt], s.[BalanceTillDate], s.[DelFlag], s.[ContraCode], s.[ContraType], s.[U_Name], s.[U_AE], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[MemTagadaLetter] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[MemTagadaLetter] AS d
                      WHERE d.[Code] = s.[Code] AND d.[Type] = s.[Type]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MemRevWise]';

IF OBJECT_ID(N'VijayData2627.dbo.[MemRevWise]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MemRevWise]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MemRevWise]')
           AND name IN ('MemCode', 'AppDate', 'RevCode', 'Amount', 'Nature', 'ActiveYN', 'Site_Code', 'LogSite_Code', 'U_AE', 'U_EntDt', 'U_Name')) < 11
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MemRevWise] ([MemCode], [AppDate], [RevCode], [Amount], [Nature], [ActiveYN], [Site_Code], [LogSite_Code], [U_AE], [U_EntDt], [U_Name])
    SELECT s.[MemCode], s.[AppDate], s.[RevCode], s.[Amount], s.[Nature], s.[ActiveYN], s.[Site_Code], s.[LogSite_Code], s.[U_AE], s.[U_EntDt], s.[U_Name]
    FROM [VijayData2627].[dbo].[MemRevWise] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[MemRevWise] AS d
                      WHERE d.[MemCode] = s.[MemCode] AND d.[AppDate] = s.[AppDate] AND d.[RevCode] = s.[RevCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MemRevenueForPeriod]';

IF OBJECT_ID(N'VijayData2627.dbo.[MemRevenueForPeriod]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MemRevenueForPeriod]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MemRevenueForPeriod]')
           AND name IN ('Code', 'Type', 'RevCode', 'MemCode', 'FrMonth', 'ToMonth', 'Amount', 'Nature', 'AppMonth', 'Site_Code', 'LogSite_Code', 'U_AE', 'U_EntDt', 'U_Name')) < 14
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MemRevenueForPeriod] ([Code], [Type], [RevCode], [MemCode], [FrMonth], [ToMonth], [Amount], [Nature], [AppMonth], [Site_Code], [LogSite_Code], [U_AE], [U_EntDt], [U_Name])
    SELECT s.[Code], s.[Type], s.[RevCode], s.[MemCode], s.[FrMonth], s.[ToMonth], s.[Amount], s.[Nature], s.[AppMonth], s.[Site_Code], s.[LogSite_Code], s.[U_AE], s.[U_EntDt], s.[U_Name]
    FROM [VijayData2627].[dbo].[MemRevenueForPeriod] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[MemRevenueForPeriod] AS d
                      WHERE d.[Code] = s.[Code] AND d.[Type] = s.[Type] AND d.[RevCode] = s.[RevCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MemProposedMemInf]';

IF OBJECT_ID(N'VijayData2627.dbo.[MemProposedMemInf]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MemProposedMemInf]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MemProposedMemInf]')
           AND name IN ('SubCode', 'SNo', 'PMemCode', 'MemberType', 'Mark', 'Site_Code', 'LogSite_Code', 'U_Name', 'U_EntDt', 'U_AE')) < 10
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MemProposedMemInf] ([SubCode], [SNo], [PMemCode], [MemberType], [Mark], [Site_Code], [LogSite_Code], [U_Name], [U_EntDt], [U_AE])
    SELECT s.[SubCode], s.[SNo], s.[PMemCode], s.[MemberType], s.[Mark], s.[Site_Code], s.[LogSite_Code], s.[U_Name], s.[U_EntDt], s.[U_AE]
    FROM [VijayData2627].[dbo].[MemProposedMemInf] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[MemProposedMemInf] AS d
                      WHERE d.[SubCode] = s.[SubCode] AND d.[SNo] = s.[SNo] AND d.[Mark] = s.[Mark]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MemOutStation]';

IF OBJECT_ID(N'VijayData2627.dbo.[MemOutStation]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MemOutStation]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MemOutStation]')
           AND name IN ('Code', 'Type', 'MemCode', 'FrDate', 'ToDate', 'RevenueChng', 'FrMonth', 'ToMonth', 'Site_Code', 'LogSite_Code', 'U_AE', 'U_EntDt', 'U_Name')) < 13
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MemOutStation] ([Code], [Type], [MemCode], [FrDate], [ToDate], [RevenueChng], [FrMonth], [ToMonth], [Site_Code], [LogSite_Code], [U_AE], [U_EntDt], [U_Name])
    SELECT s.[Code], s.[Type], s.[MemCode], s.[FrDate], s.[ToDate], s.[RevenueChng], s.[FrMonth], s.[ToMonth], s.[Site_Code], s.[LogSite_Code], s.[U_AE], s.[U_EntDt], s.[U_Name]
    FROM [VijayData2627].[dbo].[MemOutStation] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[MemOutStation] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MemFacilityMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[MemFacilityMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MemFacilityMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MemFacilityMast]')
           AND name IN ('Code', 'Name', 'SName', 'ChargeType', 'FixedRate', 'PrimaryMember', 'Spouse', 'Child', 'AddAdult', 'AddChild', 'TaxStru', 'ACCode', 'ActiveYN', 'Site_Code', 'LogSite_Code', 'U_Name', 'U_EntDt', 'U_AE', 'FacilityType')) < 19
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MemFacilityMast] ([Code], [Name], [SName], [ChargeType], [FixedRate], [PrimaryMember], [Spouse], [Child], [AddAdult], [AddChild], [TaxStru], [ACCode], [ActiveYN], [Site_Code], [LogSite_Code], [U_Name], [U_EntDt], [U_AE], [FacilityType])
    SELECT s.[Code], s.[Name], s.[SName], s.[ChargeType], s.[FixedRate], s.[PrimaryMember], s.[Spouse], s.[Child], s.[AddAdult], s.[AddChild], s.[TaxStru], s.[ACCode], s.[ActiveYN], s.[Site_Code], s.[LogSite_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[FacilityType]
    FROM [VijayData2627].[dbo].[MemFacilityMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[MemFacilityMast] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MemFacilityBilling]';

IF OBJECT_ID(N'VijayData2627.dbo.[MemFacilityBilling]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MemFacilityBilling]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MemFacilityBilling]')
           AND name IN ('MemCode', 'Entrydate', 'FcCode', 'MthYear', 'Occurence', 'Rate', 'Amount', 'U_AE', 'U_Name', 'U_EntDt', 'Site_Code', 'LogSite_Code')) < 12
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MemFacilityBilling] ([MemCode], [Entrydate], [FcCode], [MthYear], [Occurence], [Rate], [Amount], [U_AE], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code])
    SELECT s.[MemCode], s.[Entrydate], s.[FcCode], s.[MthYear], s.[Occurence], s.[Rate], s.[Amount], s.[U_AE], s.[U_Name], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[MemFacilityBilling] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[MemFacilityBilling] AS d
                      WHERE d.[MemCode] = s.[MemCode] AND d.[Entrydate] = s.[Entrydate] AND d.[FcCode] = s.[FcCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MemEnviro]';

IF OBJECT_ID(N'VijayData2627.dbo.[MemEnviro]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MemEnviro]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MemEnviro]')
           AND name IN ('Bill_Header', 'Bill_Footer', 'Bill_PrintType', 'NoOfCopy', 'LogSite_Code', 'Interface', 'AgeParameter', 'MemberFacilityBilling', 'BillMessage', 'BillPayDueDate', 'MemberVarification', 'MemberVarificationInKOT', 'AutoMemberBilling', 'MemberSaleBillDiscEditable', 'Site_Code', 'MemberBillLedgerPostingOnDate', 'NilAmountMemberBillPrintingYN', 'CardExpDate')) < 18
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MemEnviro] ([Bill_Header], [Bill_Footer], [Bill_PrintType], [NoOfCopy], [LogSite_Code], [Interface], [AgeParameter], [MemberFacilityBilling], [BillMessage], [BillPayDueDate], [MemberVarification], [MemberVarificationInKOT], [AutoMemberBilling], [MemberSaleBillDiscEditable], [Site_Code], [MemberBillLedgerPostingOnDate], [NilAmountMemberBillPrintingYN], [CardExpDate])
    SELECT s.[Bill_Header], s.[Bill_Footer], s.[Bill_PrintType], s.[NoOfCopy], s.[LogSite_Code], s.[Interface], s.[AgeParameter], s.[MemberFacilityBilling], s.[BillMessage], s.[BillPayDueDate], s.[MemberVarification], s.[MemberVarificationInKOT], s.[AutoMemberBilling], s.[MemberSaleBillDiscEditable], s.[Site_Code], s.[MemberBillLedgerPostingOnDate], s.[NilAmountMemberBillPrintingYN], s.[CardExpDate]
    FROM [VijayData2627].[dbo].[MemEnviro] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[MemEnviro] AS d
                      WHERE d.[LogSite_Code] = s.[LogSite_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MemCatRevWise]';

IF OBJECT_ID(N'VijayData2627.dbo.[MemCatRevWise]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MemCatRevWise]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MemCatRevWise]')
           AND name IN ('MemCat', 'AppDate', 'RevCode', 'Amount', 'Nature', 'AppMonth', 'Site_Code', 'LogSite_Code', 'U_AE', 'U_EntDt', 'U_Name')) < 11
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MemCatRevWise] ([MemCat], [AppDate], [RevCode], [Amount], [Nature], [AppMonth], [Site_Code], [LogSite_Code], [U_AE], [U_EntDt], [U_Name])
    SELECT s.[MemCat], s.[AppDate], s.[RevCode], s.[Amount], s.[Nature], s.[AppMonth], s.[Site_Code], s.[LogSite_Code], s.[U_AE], s.[U_EntDt], s.[U_Name]
    FROM [VijayData2627].[dbo].[MemCatRevWise] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[MemCatRevWise] AS d
                      WHERE d.[MemCat] = s.[MemCat] AND d.[AppDate] = s.[AppDate] AND d.[RevCode] = s.[RevCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MemCatMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[MemCatMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MemCatMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MemCatMast]')
           AND name IN ('Code', 'Name', 'ShortName', 'Subscription', 'Corporate', 'ChildAgeLmt', 'U_Name', 'U_EntDt', 'U_AE', 'Site_Code', 'LogSite_Code', 'FBilling', 'Status', 'MessAcYN', 'Surcharge')) < 15
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MemCatMast] ([Code], [Name], [ShortName], [Subscription], [Corporate], [ChildAgeLmt], [U_Name], [U_EntDt], [U_AE], [Site_Code], [LogSite_Code], [FBilling], [Status], [MessAcYN], [Surcharge])
    SELECT s.[Code], s.[Name], s.[ShortName], s.[Subscription], s.[Corporate], s.[ChildAgeLmt], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Site_Code], s.[LogSite_Code], s.[FBilling], s.[Status], s.[MessAcYN], s.[Surcharge]
    FROM [VijayData2627].[dbo].[MemCatMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[MemCatMast] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MemCatFacility]';

IF OBJECT_ID(N'VijayData2627.dbo.[MemCatFacility]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MemCatFacility]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MemCatFacility]')
           AND name IN ('MemCatCode', 'AppDate', 'FcCode', 'ChrgType', 'FixedRate', 'PMember', 'Spouse', 'Child', 'ExtraAdult', 'ExtraChild', 'U_AE', 'U_Name', 'U_EntDt', 'Site_Code', 'LogSite_Code')) < 15
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MemCatFacility] ([MemCatCode], [AppDate], [FcCode], [ChrgType], [FixedRate], [PMember], [Spouse], [Child], [ExtraAdult], [ExtraChild], [U_AE], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code])
    SELECT s.[MemCatCode], s.[AppDate], s.[FcCode], s.[ChrgType], s.[FixedRate], s.[PMember], s.[Spouse], s.[Child], s.[ExtraAdult], s.[ExtraChild], s.[U_AE], s.[U_Name], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[MemCatFacility] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[MemCatFacility] AS d
                      WHERE d.[MemCatCode] = s.[MemCatCode] AND d.[AppDate] = s.[AppDate] AND d.[FcCode] = s.[FcCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MemCatChngDetail]';

IF OBJECT_ID(N'VijayData2627.dbo.[MemCatChngDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MemCatChngDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MemCatChngDetail]')
           AND name IN ('Code', 'Type', 'MemCode', 'OldCat', 'NewCat', 'RevenueChng', 'FrMonth', 'ToMonth', 'Site_Code', 'LogSite_Code', 'U_AE', 'U_EntDt', 'U_Name')) < 13
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MemCatChngDetail] ([Code], [Type], [MemCode], [OldCat], [NewCat], [RevenueChng], [FrMonth], [ToMonth], [Site_Code], [LogSite_Code], [U_AE], [U_EntDt], [U_Name])
    SELECT s.[Code], s.[Type], s.[MemCode], s.[OldCat], s.[NewCat], s.[RevenueChng], s.[FrMonth], s.[ToMonth], s.[Site_Code], s.[LogSite_Code], s.[U_AE], s.[U_EntDt], s.[U_Name]
    FROM [VijayData2627].[dbo].[MemCatChngDetail] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[MemCatChngDetail] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MemBill1]';

IF OBJECT_ID(N'VijayData2627.dbo.[MemBill1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MemBill1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MemBill1]')
           AND name IN ('FrPeriod', 'ToPeriod')) < 2
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MemBill1] ([FrPeriod], [ToPeriod])
    SELECT s.[FrPeriod], s.[ToPeriod]
    FROM [VijayData2627].[dbo].[MemBill1] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MemBill]';

IF OBJECT_ID(N'VijayData2627.dbo.[MemBill]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MemBill]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MemBill]')
           AND name IN ('Docid', 'vdate', 'vno', 'vprefix', 'Vtype', 'MemCode', 'MemCatCode', 'cardno', 'MthYear', 'NetAmount', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'BillDate', 'RoundOff', 'Amount')) < 18
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MemBill] ([Docid], [vdate], [vno], [vprefix], [Vtype], [MemCode], [MemCatCode], [cardno], [MthYear], [NetAmount], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [BillDate], [RoundOff], [Amount])
    SELECT s.[Docid], s.[vdate], s.[vno], s.[vprefix], s.[Vtype], s.[MemCode], s.[MemCatCode], s.[cardno], s.[MthYear], s.[NetAmount], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[BillDate], s.[RoundOff], s.[Amount]
    FROM [VijayData2627].[dbo].[MemBill] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[MemBill] AS d
                      WHERE d.[Docid] = s.[Docid]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MembershipRevMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[MembershipRevMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MembershipRevMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MembershipRevMast]')
           AND name IN ('Code', 'Description', 'AcountYN', 'ACPosting', 'TaxStru', 'SubsDetails', 'RefundableYN', 'SubsChargeYN', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'AcCode', 'Status')) < 15
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MembershipRevMast] ([Code], [Description], [AcountYN], [ACPosting], [TaxStru], [SubsDetails], [RefundableYN], [SubsChargeYN], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [AcCode], [Status])
    SELECT s.[Code], s.[Description], s.[AcountYN], s.[ACPosting], s.[TaxStru], s.[SubsDetails], s.[RefundableYN], s.[SubsChargeYN], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[AcCode], s.[Status]
    FROM [VijayData2627].[dbo].[MembershipRevMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[MembershipRevMast] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MemberFamily]';

IF OBJECT_ID(N'VijayData2627.dbo.[MemberFamily]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MemberFamily]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MemberFamily]')
           AND name IN ('SubCode', 'SNo', 'Relationship', 'ConPrefix', 'Name', 'Gender', 'MaritalStatus', 'DOB', 'POB', 'WedDate', 'Phone', 'Mobile', 'Fax', 'Email', 'Nationality', 'Religion', 'BloodGroup', 'ProOcc', 'EdQuali', 'TBusiness', 'TurnOver', 'Desig', 'Passport', 'PAN', 'InTax', 'SpInterest', 'PicPath', 'SigPath', 'Label', 'Site_Code', 'LogSite_Code', 'U_Name', 'U_EntDt', 'U_AE', 'HW_Id', 'CardNo', 'CardIssDate', 'CardRegId', 'CardValidUpto', 'PostedAt', 'Mobile1')) < 41
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MemberFamily] ([SubCode], [SNo], [Relationship], [ConPrefix], [Name], [Gender], [MaritalStatus], [DOB], [POB], [WedDate], [Phone], [Mobile], [Fax], [Email], [Nationality], [Religion], [BloodGroup], [ProOcc], [EdQuali], [TBusiness], [TurnOver], [Desig], [Passport], [PAN], [InTax], [SpInterest], [PicPath], [SigPath], [Label], [Site_Code], [LogSite_Code], [U_Name], [U_EntDt], [U_AE], [HW_Id], [CardNo], [CardIssDate], [CardRegId], [CardValidUpto], [PostedAt], [Mobile1])
    SELECT s.[SubCode], s.[SNo], s.[Relationship], s.[ConPrefix], s.[Name], s.[Gender], s.[MaritalStatus], s.[DOB], s.[POB], s.[WedDate], s.[Phone], s.[Mobile], s.[Fax], s.[Email], s.[Nationality], s.[Religion], s.[BloodGroup], s.[ProOcc], s.[EdQuali], s.[TBusiness], s.[TurnOver], s.[Desig], s.[Passport], s.[PAN], s.[InTax], s.[SpInterest], s.[PicPath], s.[SigPath], s.[Label], s.[Site_Code], s.[LogSite_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[HW_Id], s.[CardNo], s.[CardIssDate], s.[CardRegId], s.[CardValidUpto], s.[PostedAt], s.[Mobile1]
    FROM [VijayData2627].[dbo].[MemberFamily] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[MemberFamily] AS d
                      WHERE d.[SubCode] = s.[SubCode] AND d.[SNo] = s.[SNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MemAddRWA]';

IF OBJECT_ID(N'VijayData2627.dbo.[MemAddRWA]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MemAddRWA]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MemAddRWA]')
           AND name IN ('SubCode', 'Name', 'SNo', 'Add1', 'Add2', 'Add3', 'PinCode', 'City', 'State', 'Country', 'PAN', 'Phone', 'Mobile', 'FAX', 'Email', 'CorresYN', 'Mark', 'Site_Code', 'LogSite_Code', 'U_Name', 'U_EntDt', 'U_AE', 'Mobile1')) < 23
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MemAddRWA] ([SubCode], [Name], [SNo], [Add1], [Add2], [Add3], [PinCode], [City], [State], [Country], [PAN], [Phone], [Mobile], [FAX], [Email], [CorresYN], [Mark], [Site_Code], [LogSite_Code], [U_Name], [U_EntDt], [U_AE], [Mobile1])
    SELECT s.[SubCode], s.[Name], s.[SNo], s.[Add1], s.[Add2], s.[Add3], s.[PinCode], s.[City], s.[State], s.[Country], s.[PAN], s.[Phone], s.[Mobile], s.[FAX], s.[Email], s.[CorresYN], s.[Mark], s.[Site_Code], s.[LogSite_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Mobile1]
    FROM [VijayData2627].[dbo].[MemAddRWA] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[MemAddRWA] AS d
                      WHERE d.[SubCode] = s.[SubCode] AND d.[Name] = s.[Name] AND d.[SNo] = s.[SNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [mCurStk]';

IF OBJECT_ID(N'VijayData2627.dbo.[mCurStk]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[mCurStk]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[mCurStk]')
           AND name IN ('DocId', 'Sno', 'Sno1', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'PartyCode', 'RestCode', 'RoomCat', 'RoomType', 'RoomNo', 'ContraDocId', 'ContraSno', 'Item', 'QtyIss', 'QtyRec', 'Unit', 'Rate', 'Amount', 'TaxPer', 'TaxAmt', 'DiscPer', 'DiscAmt', 'VoidYN', 'Remarks', 'KOTDocId', 'KOTSno', 'VTime', 'U_Name', 'U_EntDt', 'U_AE', 'Total', 'DiscApp', 'RoundOff', 'DepartCode', 'GodownCode', 'ChalQty', 'RecdQty', 'AccQty', 'RejQty', 'RecdUnit', 'Specification', 'ItemRate', 'DelFlag', 'LandVal', 'ConvRatio', 'IndentDocId', 'IndentSNo', 'IssQty', 'IssueUnit', 'LogSite_Code', 'ChkId', 'ShiftCode')) < 55
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[mCurStk] ([DocId], [Sno], [Sno1], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [PartyCode], [RestCode], [RoomCat], [RoomType], [RoomNo], [ContraDocId], [ContraSno], [Item], [QtyIss], [QtyRec], [Unit], [Rate], [Amount], [TaxPer], [TaxAmt], [DiscPer], [DiscAmt], [VoidYN], [Remarks], [KOTDocId], [KOTSno], [VTime], [U_Name], [U_EntDt], [U_AE], [Total], [DiscApp], [RoundOff], [DepartCode], [GodownCode], [ChalQty], [RecdQty], [AccQty], [RejQty], [RecdUnit], [Specification], [ItemRate], [DelFlag], [LandVal], [ConvRatio], [IndentDocId], [IndentSNo], [IssQty], [IssueUnit], [LogSite_Code], [ChkId], [ShiftCode])
    SELECT s.[DocId], s.[Sno], s.[Sno1], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[PartyCode], s.[RestCode], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[ContraDocId], s.[ContraSno], s.[Item], s.[QtyIss], s.[QtyRec], s.[Unit], s.[Rate], s.[Amount], s.[TaxPer], s.[TaxAmt], s.[DiscPer], s.[DiscAmt], s.[VoidYN], s.[Remarks], s.[KOTDocId], s.[KOTSno], s.[VTime], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Total], s.[DiscApp], s.[RoundOff], s.[DepartCode], s.[GodownCode], s.[ChalQty], s.[RecdQty], s.[AccQty], s.[RejQty], s.[RecdUnit], s.[Specification], s.[ItemRate], s.[DelFlag], s.[LandVal], s.[ConvRatio], s.[IndentDocId], s.[IndentSNo], s.[IssQty], s.[IssueUnit], s.[LogSite_Code], s.[ChkId], s.[ShiftCode]
    FROM [VijayData2627].[dbo].[mCurStk] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[mCurStk] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno] AND d.[Sno1] = s.[Sno1]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [MarketSeg]';

IF OBJECT_ID(N'VijayData2627.dbo.[MarketSeg]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[MarketSeg]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[MarketSeg]')
           AND name IN ('Code', 'Name', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'Active')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[MarketSeg] ([Code], [Name], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [Active])
    SELECT s.[Code], s.[Name], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[Active]
    FROM [VijayData2627].[dbo].[MarketSeg] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[MarketSeg] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [LostFoundDetail]';

IF OBJECT_ID(N'VijayData2627.dbo.[LostFoundDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[LostFoundDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[LostFoundDetail]')
           AND name IN ('Code', 'FDate', 'FTime', 'FArea', 'FindBy', 'Description', 'UName1', 'ClaimedBy', 'ContactNo', 'OtherDetail', 'DeliveredBy', 'DDate', 'Status', 'Site_Code', 'U_EntDt', 'U_AE', 'LogSite_Code', 'AppValue', 'FFDate', 'FFTime', 'FPlace')) < 21
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[LostFoundDetail] ([Code], [FDate], [FTime], [FArea], [FindBy], [Description], [UName1], [ClaimedBy], [ContactNo], [OtherDetail], [DeliveredBy], [DDate], [Status], [Site_Code], [U_EntDt], [U_AE], [LogSite_Code], [AppValue], [FFDate], [FFTime], [FPlace])
    SELECT s.[Code], s.[FDate], s.[FTime], s.[FArea], s.[FindBy], s.[Description], s.[UName1], s.[ClaimedBy], s.[ContactNo], s.[OtherDetail], s.[DeliveredBy], s.[DDate], s.[Status], s.[Site_Code], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[AppValue], s.[FFDate], s.[FFTime], s.[FPlace]
    FROM [VijayData2627].[dbo].[LostFoundDetail] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[LostFoundDetail] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [LocationFacility]';

IF OBJECT_ID(N'VijayData2627.dbo.[LocationFacility]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[LocationFacility]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[LocationFacility]')
           AND name IN ('LcCode', 'AppDate', 'FcCode', 'UnitRate', 'DueOn', 'StartMonth', 'U_AE', 'U_Name', 'U_EntDt', 'Site_Code', 'LogSite_Code')) < 11
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[LocationFacility] ([LcCode], [AppDate], [FcCode], [UnitRate], [DueOn], [StartMonth], [U_AE], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code])
    SELECT s.[LcCode], s.[AppDate], s.[FcCode], s.[UnitRate], s.[DueOn], s.[StartMonth], s.[U_AE], s.[U_Name], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[LocationFacility] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Loan]';

IF OBJECT_ID(N'VijayData2627.dbo.[Loan]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Loan]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Loan]')
           AND name IN ('Sr_No', 'V_Type', 'V_Date', 'Emp_Code', 'Amount', 'Installment', 'Remark', 'AC_Code', 'Mth_Year', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 14
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Loan] ([Sr_No], [V_Type], [V_Date], [Emp_Code], [Amount], [Installment], [Remark], [AC_Code], [Mth_Year], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Sr_No], s.[V_Type], s.[V_Date], s.[Emp_Code], s.[Amount], s.[Installment], s.[Remark], s.[AC_Code], s.[Mth_Year], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[Loan] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Loan] AS d
                      WHERE d.[Sr_No] = s.[Sr_No] AND d.[V_Type] = s.[V_Type]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [LedgerTDS]';

IF OBJECT_ID(N'VijayData2627.dbo.[LedgerTDS]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[LedgerTDS]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[LedgerTDS]')
           AND name IN ('DocId', 'V_SNo', 'Site_Code', 'v_Prefix', 'V_DATE', 'TDSCode', 'TDSDrCode', 'TDSYN', 'ONAMT', 'TDS', 'TDSAMT', 'TDSPOST', 'TDSDocId', 'TDSV_SNo', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 18
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[LedgerTDS] ([DocId], [V_SNo], [Site_Code], [v_Prefix], [V_DATE], [TDSCode], [TDSDrCode], [TDSYN], [ONAMT], [TDS], [TDSAMT], [TDSPOST], [TDSDocId], [TDSV_SNo], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[DocId], s.[V_SNo], s.[Site_Code], s.[v_Prefix], s.[V_DATE], s.[TDSCode], s.[TDSDrCode], s.[TDSYN], s.[ONAMT], s.[TDS], s.[TDSAMT], s.[TDSPOST], s.[TDSDocId], s.[TDSV_SNo], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[LedgerTDS] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[LedgerTDS] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[V_SNo] = s.[V_SNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [ledgerRef]';

IF OBJECT_ID(N'VijayData2627.dbo.[ledgerRef]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[ledgerRef]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[ledgerRef]')
           AND name IN ('Id', 'DocId', 'V_SNo', 'Dr', 'Cr', 'SubCode', 'U_Name', 'U_EntDt', 'U_AE', 'DueDate', 'AgRefNo', 'AgRefType', 'V_Date', 'Site_Code', 'LogSite_Code')) < 15
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[ledgerRef] ([Id], [DocId], [V_SNo], [Dr], [Cr], [SubCode], [U_Name], [U_EntDt], [U_AE], [DueDate], [AgRefNo], [AgRefType], [V_Date], [Site_Code], [LogSite_Code])
    SELECT s.[Id], s.[DocId], s.[V_SNo], s.[Dr], s.[Cr], s.[SubCode], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[DueDate], s.[AgRefNo], s.[AgRefType], s.[V_Date], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[ledgerRef] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[ledgerRef] AS d
                      WHERE d.[Id] = s.[Id]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [LedgerMMerge]';

IF OBJECT_ID(N'VijayData2627.dbo.[LedgerMMerge]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[LedgerMMerge]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[LedgerMMerge]')
           AND name IN ('DocId', 'V_Type', 'v_Prefix', 'V_No', 'Site_Code', 'V_Date', 'Narration', 'U_Name', 'U_EntDt', 'U_AE', 'Trf_Date', 'LogSite_Code', 'SeqNo')) < 13
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[LedgerMMerge] ([DocId], [V_Type], [v_Prefix], [V_No], [Site_Code], [V_Date], [Narration], [U_Name], [U_EntDt], [U_AE], [Trf_Date], [LogSite_Code], [SeqNo])
    SELECT s.[DocId], s.[V_Type], s.[v_Prefix], s.[V_No], s.[Site_Code], s.[V_Date], s.[Narration], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Trf_Date], s.[LogSite_Code], s.[SeqNo]
    FROM [VijayData2627].[dbo].[LedgerMMerge] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[LedgerMMerge] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [LedgerMerge]';

IF OBJECT_ID(N'VijayData2627.dbo.[LedgerMerge]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[LedgerMerge]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[LedgerMerge]')
           AND name IN ('DocId', 'V_SNo', 'V_Type', 'V_No', 'v_Prefix', 'Site_Code', 'V_Date', 'SubCode', 'AmtCr', 'AmtDr', 'ContraSub', 'Chq_No', 'Chq_Date', 'Clg_Date', 'Narration', 'U_Name', 'U_EntDt', 'U_AE', 'SQty', 'Pqty', 'AgRefNo', 'VTime', 'Mth_Year', 'emp_code', 'GroupCode', 'GroupNature', 'LogSite_Code', 'TImp_Dt', 'SeqNo')) < 29
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[LedgerMerge] ([DocId], [V_SNo], [V_Type], [V_No], [v_Prefix], [Site_Code], [V_Date], [SubCode], [AmtCr], [AmtDr], [ContraSub], [Chq_No], [Chq_Date], [Clg_Date], [Narration], [U_Name], [U_EntDt], [U_AE], [SQty], [Pqty], [AgRefNo], [VTime], [Mth_Year], [emp_code], [GroupCode], [GroupNature], [LogSite_Code], [TImp_Dt], [SeqNo])
    SELECT s.[DocId], s.[V_SNo], s.[V_Type], s.[V_No], s.[v_Prefix], s.[Site_Code], s.[V_Date], s.[SubCode], s.[AmtCr], s.[AmtDr], s.[ContraSub], s.[Chq_No], s.[Chq_Date], s.[Clg_Date], s.[Narration], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[SQty], s.[Pqty], s.[AgRefNo], s.[VTime], s.[Mth_Year], s.[emp_code], s.[GroupCode], s.[GroupNature], s.[LogSite_Code], s.[TImp_Dt], s.[SeqNo]
    FROM [VijayData2627].[dbo].[LedgerMerge] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[LedgerMerge] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[V_SNo] = s.[V_SNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [LedgerM]';

IF OBJECT_ID(N'VijayData2627.dbo.[LedgerM]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[LedgerM]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[LedgerM]')
           AND name IN ('DocId', 'V_Type', 'v_Prefix', 'V_No', 'Site_Code', 'V_Date', 'Narration', 'U_Name', 'U_EntDt', 'U_AE', 'Trf_Date', 'LogSite_Code', 'SeqNo')) < 13
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[LedgerM] ([DocId], [V_Type], [v_Prefix], [V_No], [Site_Code], [V_Date], [Narration], [U_Name], [U_EntDt], [U_AE], [Trf_Date], [LogSite_Code], [SeqNo])
    SELECT s.[DocId], s.[V_Type], s.[v_Prefix], s.[V_No], s.[Site_Code], s.[V_Date], s.[Narration], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Trf_Date], s.[LogSite_Code], s.[SeqNo]
    FROM [VijayData2627].[dbo].[LedgerM] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[LedgerM] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [ledgerAdj]';

IF OBJECT_ID(N'VijayData2627.dbo.[ledgerAdj]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[ledgerAdj]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[ledgerAdj]')
           AND name IN ('DocId1', 'V_SNo1', 'DocId2', 'V_SNo2', 'Cr', 'SubCode', 'Name', 'AgRefNo', 'U_Name', 'U_EntDt', 'U_AE', 'Site_Code', 'LogSite_Code')) < 13
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[ledgerAdj] ([DocId1], [V_SNo1], [DocId2], [V_SNo2], [Cr], [SubCode], [Name], [AgRefNo], [U_Name], [U_EntDt], [U_AE], [Site_Code], [LogSite_Code])
    SELECT s.[DocId1], s.[V_SNo1], s.[DocId2], s.[V_SNo2], s.[Cr], s.[SubCode], s.[Name], s.[AgRefNo], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[ledgerAdj] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[ledgerAdj] AS d
                      WHERE d.[DocId1] = s.[DocId1] AND d.[V_SNo1] = s.[V_SNo1] AND d.[DocId2] = s.[DocId2] AND d.[V_SNo2] = s.[V_SNo2] AND d.[SubCode] = s.[SubCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Ledger]';

IF OBJECT_ID(N'VijayData2627.dbo.[Ledger]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Ledger]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Ledger]')
           AND name IN ('DocId', 'V_SNo', 'V_Type', 'V_No', 'v_Prefix', 'Site_Code', 'V_Date', 'SubCode', 'AmtCr', 'AmtDr', 'ContraSub', 'Chq_No', 'Chq_Date', 'Clg_Date', 'Narration', 'U_Name', 'U_EntDt', 'U_AE', 'SQty', 'Pqty', 'AgRefNo', 'VTime', 'Mth_Year', 'emp_code', 'GroupCode', 'GroupNature', 'LogSite_Code', 'TImp_Dt', 'SeqNo')) < 29
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Ledger] ([DocId], [V_SNo], [V_Type], [V_No], [v_Prefix], [Site_Code], [V_Date], [SubCode], [AmtCr], [AmtDr], [ContraSub], [Chq_No], [Chq_Date], [Clg_Date], [Narration], [U_Name], [U_EntDt], [U_AE], [SQty], [Pqty], [AgRefNo], [VTime], [Mth_Year], [emp_code], [GroupCode], [GroupNature], [LogSite_Code], [TImp_Dt], [SeqNo])
    SELECT s.[DocId], s.[V_SNo], s.[V_Type], s.[V_No], s.[v_Prefix], s.[Site_Code], s.[V_Date], s.[SubCode], s.[AmtCr], s.[AmtDr], s.[ContraSub], s.[Chq_No], s.[Chq_Date], s.[Clg_Date], s.[Narration], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[SQty], s.[Pqty], s.[AgRefNo], s.[VTime], s.[Mth_Year], s.[emp_code], s.[GroupCode], s.[GroupNature], s.[LogSite_Code], s.[TImp_Dt], s.[SeqNo]
    FROM [VijayData2627].[dbo].[Ledger] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Ledger] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[V_SNo] = s.[V_SNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Leave_Ench]';

IF OBJECT_ID(N'VijayData2627.dbo.[Leave_Ench]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Leave_Ench]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Leave_Ench]')
           AND name IN ('Sr_No', 'L_Date', 'Emp_Code', 'Leave_Ench', 'Amt_Ench', 'AC_Code', 'Site_Code', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 10
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Leave_Ench] ([Sr_No], [L_Date], [Emp_Code], [Leave_Ench], [Amt_Ench], [AC_Code], [Site_Code], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Sr_No], s.[L_Date], s.[Emp_Code], s.[Leave_Ench], s.[Amt_Ench], s.[AC_Code], s.[Site_Code], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[Leave_Ench] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Leave_Ench] AS d
                      WHERE d.[Sr_No] = s.[Sr_No]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [LeaderRev]';

IF OBJECT_ID(N'VijayData2627.dbo.[LeaderRev]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[LeaderRev]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[LeaderRev]')
           AND name IN ('BookDocID', 'Sno', 'RevenueCode', 'Limit', 'MFolioNo', 'Site_Code', 'U_EntDt', 'U_AE', 'mFolioNoDocID', 'LogSite_Code')) < 10
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[LeaderRev] ([BookDocID], [Sno], [RevenueCode], [Limit], [MFolioNo], [Site_Code], [U_EntDt], [U_AE], [mFolioNoDocID], [LogSite_Code])
    SELECT s.[BookDocID], s.[Sno], s.[RevenueCode], s.[Limit], s.[MFolioNo], s.[Site_Code], s.[U_EntDt], s.[U_AE], s.[mFolioNoDocID], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[LeaderRev] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[LeaderRev] AS d
                      WHERE d.[BookDocID] = s.[BookDocID] AND d.[Sno] = s.[Sno] AND d.[Site_Code] = s.[Site_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [LastVoucher]';

IF OBJECT_ID(N'VijayData2627.dbo.[LastVoucher]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[LastVoucher]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[LastVoucher]')
           AND name IN ('user_name', 'V_Type', 'Last_Ent_Date', 'DocId', 'U_Name', 'U_EntDt', 'U_AE', 'v_Prefix', 'Site_Code', 'LogSite_Code')) < 10
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[LastVoucher] ([user_name], [V_Type], [Last_Ent_Date], [DocId], [U_Name], [U_EntDt], [U_AE], [v_Prefix], [Site_Code], [LogSite_Code])
    SELECT s.[user_name], s.[V_Type], s.[Last_Ent_Date], s.[DocId], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[v_Prefix], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[LastVoucher] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[LastVoucher] AS d
                      WHERE d.[user_name] = s.[user_name] AND d.[V_Type] = s.[V_Type]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [LastVou]';

IF OBJECT_ID(N'VijayData2627.dbo.[LastVou]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[LastVou]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[LastVou]')
           AND name IN ('UNAME', 'ENAME', 'DOCID', 'Site_Code', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 7
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[LastVou] ([UNAME], [ENAME], [DOCID], [Site_Code], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[UNAME], s.[ENAME], s.[DOCID], s.[Site_Code], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[LastVou] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[LastVou] AS d
                      WHERE d.[UNAME] = s.[UNAME] AND d.[ENAME] = s.[ENAME] AND d.[DOCID] = s.[DOCID] AND d.[Site_Code] = s.[Site_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [KOTLog]';

IF OBJECT_ID(N'VijayData2627.dbo.[KOTLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[KOTLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[KOTLog]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'Vtime', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'RestCode', 'RoomCat', 'RoomType', 'RoomNo', 'Item', 'Qty', 'Rate', 'Amount', 'VoidYN', 'Waiter', 'Pending', 'KOTType', 'U_Name', 'U_EntDt', 'U_AE', 'U_Name1', 'U_EntDt1', 'U_AE1', 'DelFlag', 'NCKOT', 'ContraDocId', 'ContraSNo', 'Reasons', 'LogSite_Code', 'FreeSno', 'SchemeCode', 'Party', 'ItemRestCode', 'SeqNo', 'GuarAtt', 'TokenNo', 'PrintFlag')) < 40
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[KOTLog] ([DocId], [Sno], [Vtype], [Vtime], [VNo], [Site_Code], [Vprefix], [Vdate], [RestCode], [RoomCat], [RoomType], [RoomNo], [Item], [Qty], [Rate], [Amount], [VoidYN], [Waiter], [Pending], [KOTType], [U_Name], [U_EntDt], [U_AE], [U_Name1], [U_EntDt1], [U_AE1], [DelFlag], [NCKOT], [ContraDocId], [ContraSNo], [Reasons], [LogSite_Code], [FreeSno], [SchemeCode], [Party], [ItemRestCode], [SeqNo], [GuarAtt], [TokenNo], [PrintFlag])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[Vtime], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[RestCode], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[Item], s.[Qty], s.[Rate], s.[Amount], s.[VoidYN], s.[Waiter], s.[Pending], s.[KOTType], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[U_Name1], s.[U_EntDt1], s.[U_AE1], s.[DelFlag], s.[NCKOT], s.[ContraDocId], s.[ContraSNo], s.[Reasons], s.[LogSite_Code], s.[FreeSno], s.[SchemeCode], s.[Party], s.[ItemRestCode], s.[SeqNo], s.[GuarAtt], s.[TokenNo], s.[PrintFlag]
    FROM [VijayData2627].[dbo].[KOTLog] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [KOT]';

IF OBJECT_ID(N'VijayData2627.dbo.[KOT]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[KOT]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[KOT]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'Vtime', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'RestCode', 'RoomCat', 'RoomType', 'RoomNo', 'Item', 'Qty', 'Rate', 'Amount', 'VoidYN', 'Waiter', 'Pending', 'KOTType', 'U_Name', 'U_EntDt', 'U_AE', 'U_Name1', 'U_EntDt1', 'U_AE1', 'DelFlag', 'NCKOT', 'ContraDocId', 'ContraSNo', 'Reasons', 'Remarks', 'LogSite_Code', 'NCTYPE', 'FreeSno', 'Printed', 'Description', 'SchemeCode', 'Party', 'ItemRestCode', 'SeqNo', 'GuarAtt', 'TokenNo', 'PrintFlag')) < 44
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[KOT] ([DocId], [Sno], [Vtype], [Vtime], [VNo], [Site_Code], [Vprefix], [Vdate], [RestCode], [RoomCat], [RoomType], [RoomNo], [Item], [Qty], [Rate], [Amount], [VoidYN], [Waiter], [Pending], [KOTType], [U_Name], [U_EntDt], [U_AE], [U_Name1], [U_EntDt1], [U_AE1], [DelFlag], [NCKOT], [ContraDocId], [ContraSNo], [Reasons], [Remarks], [LogSite_Code], [NCTYPE], [FreeSno], [Printed], [Description], [SchemeCode], [Party], [ItemRestCode], [SeqNo], [GuarAtt], [TokenNo], [PrintFlag])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[Vtime], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[RestCode], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[Item], s.[Qty], s.[Rate], s.[Amount], s.[VoidYN], s.[Waiter], s.[Pending], s.[KOTType], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[U_Name1], s.[U_EntDt1], s.[U_AE1], s.[DelFlag], s.[NCKOT], s.[ContraDocId], s.[ContraSNo], s.[Reasons], s.[Remarks], s.[LogSite_Code], s.[NCTYPE], s.[FreeSno], s.[Printed], s.[Description], s.[SchemeCode], s.[Party], s.[ItemRestCode], s.[SeqNo], s.[GuarAtt], s.[TokenNo], s.[PrintFlag]
    FROM [VijayData2627].[dbo].[KOT] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[KOT] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [KClStk]';

IF OBJECT_ID(N'VijayData2627.dbo.[KClStk]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[KClStk]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[KClStk]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'Item', 'Qty', 'Unit', 'DepartCode', 'Remarks', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 16
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[KClStk] ([DocId], [Sno], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [Item], [Qty], [Unit], [DepartCode], [Remarks], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[Item], s.[Qty], s.[Unit], s.[DepartCode], s.[Remarks], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[KClStk] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[KClStk] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [JobScheduledDetail]';

IF OBJECT_ID(N'VijayData2627.dbo.[JobScheduledDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[JobScheduledDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[JobScheduledDetail]')
           AND name IN ('Job_Id', 'JobName', 'Schedule_Id', 'Event', 'ScheduledJob', 'MobileNo', 'JobEnabled', 'JobScheduledOn', 'Mark', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'MsgHeader', 'TemplateId', 'MsgFooter')) < 17
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[JobScheduledDetail] ([Job_Id], [JobName], [Schedule_Id], [Event], [ScheduledJob], [MobileNo], [JobEnabled], [JobScheduledOn], [Mark], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [MsgHeader], [TemplateId], [MsgFooter])
    SELECT s.[Job_Id], s.[JobName], s.[Schedule_Id], s.[Event], s.[ScheduledJob], s.[MobileNo], s.[JobEnabled], s.[JobScheduledOn], s.[Mark], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[MsgHeader], s.[TemplateId], s.[MsgFooter]
    FROM [VijayData2627].[dbo].[JobScheduledDetail] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[JobScheduledDetail] AS d
                      WHERE d.[Job_Id] = s.[Job_Id]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [JobSchedule]';

IF OBJECT_ID(N'VijayData2627.dbo.[JobSchedule]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[JobSchedule]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[JobSchedule]')
           AND name IN ('Schedule_Id', 'ScheduleName', 'ScheduleType', 'ScheduleEnabled', 'ScheduleStartDate', 'ScheduleEndDate', 'OneTimeOccur', 'FreqOccurs', 'FreqRecurs', 'FreqWeekdays', 'FreqMonth', 'FreqMonthDay', 'FreqMonthDayOfEveryMonth', 'FreqMonthThe', 'FreqMonthTheDay', 'FreqMonthTheDayOfEveryMonth', 'DFreq', 'DFreqOccursOnce', 'DFreqOccursEvery', 'DFreqOccursType', 'DFreqOccursStartTime', 'DFreqOccursEndTime', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 27
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[JobSchedule] ([Schedule_Id], [ScheduleName], [ScheduleType], [ScheduleEnabled], [ScheduleStartDate], [ScheduleEndDate], [OneTimeOccur], [FreqOccurs], [FreqRecurs], [FreqWeekdays], [FreqMonth], [FreqMonthDay], [FreqMonthDayOfEveryMonth], [FreqMonthThe], [FreqMonthTheDay], [FreqMonthTheDayOfEveryMonth], [DFreq], [DFreqOccursOnce], [DFreqOccursEvery], [DFreqOccursType], [DFreqOccursStartTime], [DFreqOccursEndTime], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Schedule_Id], s.[ScheduleName], s.[ScheduleType], s.[ScheduleEnabled], s.[ScheduleStartDate], s.[ScheduleEndDate], s.[OneTimeOccur], s.[FreqOccurs], s.[FreqRecurs], s.[FreqWeekdays], s.[FreqMonth], s.[FreqMonthDay], s.[FreqMonthDayOfEveryMonth], s.[FreqMonthThe], s.[FreqMonthTheDay], s.[FreqMonthTheDayOfEveryMonth], s.[DFreq], s.[DFreqOccursOnce], s.[DFreqOccursEvery], s.[DFreqOccursType], s.[DFreqOccursStartTime], s.[DFreqOccursEndTime], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[JobSchedule] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[JobSchedule] AS d
                      WHERE d.[Schedule_Id] = s.[Schedule_Id]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [ItemRate]';

IF OBJECT_ID(N'VijayData2627.dbo.[ItemRate]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[ItemRate]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[ItemRate]')
           AND name IN ('ItemCode', 'RestCode', 'Rate', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'AppDate', 'LogSite_Code', 'MRP', 'Party')) < 11
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[ItemRate] ([ItemCode], [RestCode], [Rate], [Site_Code], [U_Name], [U_EntDt], [U_AE], [AppDate], [LogSite_Code], [MRP], [Party])
    SELECT s.[ItemCode], s.[RestCode], s.[Rate], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[AppDate], s.[LogSite_Code], s.[MRP], s.[Party]
    FROM [VijayData2627].[dbo].[ItemRate] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[ItemRate] AS d
                      WHERE d.[ItemCode] = s.[ItemCode] AND d.[RestCode] = s.[RestCode] AND d.[AppDate] = s.[AppDate]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [ItemMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[ItemMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[ItemMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[ItemMast]')
           AND name IN ('Code', 'Name', 'Unit', 'Type', 'ItemGroup', 'RestCode', 'DirectSale', 'PurchRate', 'MinStock', 'MaxStock', 'ReStock', 'SaleRate', 'RoomRate', 'DiscApp', 'RateEdit', 'LPurRate', 'LPurDate', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'ItemCatCode', 'DispCode', 'Kitchen', 'DirectYN', 'ConvRatio', 'IssueUnit', 'SChrgApp', 'GravyItem', 'ConsumptionItem', 'Category', 'Specification', 'RateIncTax', 'LogSite_Code', 'ActiveYN', 'NType', 'FinItem', 'ItemType', 'BarCode', 'CommodityCode', 'LabelName', 'LabelQty', 'LabelRemark1', 'LabelRemark2', 'LabelRemark3', 'LabelRemark4', 'LabelRemark5', 'PicPath', 'Status', 'MRP')) < 50
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[ItemMast] ([Code], [Name], [Unit], [Type], [ItemGroup], [RestCode], [DirectSale], [PurchRate], [MinStock], [MaxStock], [ReStock], [SaleRate], [RoomRate], [DiscApp], [RateEdit], [LPurRate], [LPurDate], [Site_Code], [U_Name], [U_EntDt], [U_AE], [ItemCatCode], [DispCode], [Kitchen], [DirectYN], [ConvRatio], [IssueUnit], [SChrgApp], [GravyItem], [ConsumptionItem], [Category], [Specification], [RateIncTax], [LogSite_Code], [ActiveYN], [NType], [FinItem], [ItemType], [BarCode], [CommodityCode], [LabelName], [LabelQty], [LabelRemark1], [LabelRemark2], [LabelRemark3], [LabelRemark4], [LabelRemark5], [PicPath], [Status], [MRP])
    SELECT s.[Code], s.[Name], s.[Unit], s.[Type], s.[ItemGroup], s.[RestCode], s.[DirectSale], s.[PurchRate], s.[MinStock], s.[MaxStock], s.[ReStock], s.[SaleRate], s.[RoomRate], s.[DiscApp], s.[RateEdit], s.[LPurRate], s.[LPurDate], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[ItemCatCode], s.[DispCode], s.[Kitchen], s.[DirectYN], s.[ConvRatio], s.[IssueUnit], s.[SChrgApp], s.[GravyItem], s.[ConsumptionItem], s.[Category], s.[Specification], s.[RateIncTax], s.[LogSite_Code], s.[ActiveYN], s.[NType], s.[FinItem], s.[ItemType], s.[BarCode], s.[CommodityCode], s.[LabelName], s.[LabelQty], s.[LabelRemark1], s.[LabelRemark2], s.[LabelRemark3], s.[LabelRemark4], s.[LabelRemark5], s.[PicPath], s.[Status], s.[MRP]
    FROM [VijayData2627].[dbo].[ItemMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[ItemMast] AS d
                      WHERE d.[Code] = s.[Code] AND d.[RestCode] = s.[RestCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [ItemGrp]';

IF OBJECT_ID(N'VijayData2627.dbo.[ItemGrp]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[ItemGrp]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[ItemGrp]')
           AND name IN ('Code', 'Name', 'Type', 'Status', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'RestCode', 'Choose_Limit', 'LogSite_Code', 'CatType', 'CommodityCode', 'PicPath')) < 14
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[ItemGrp] ([Code], [Name], [Type], [Status], [Site_Code], [U_Name], [U_EntDt], [U_AE], [RestCode], [Choose_Limit], [LogSite_Code], [CatType], [CommodityCode], [PicPath])
    SELECT s.[Code], s.[Name], s.[Type], s.[Status], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[RestCode], s.[Choose_Limit], s.[LogSite_Code], s.[CatType], s.[CommodityCode], s.[PicPath]
    FROM [VijayData2627].[dbo].[ItemGrp] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[ItemGrp] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [ItemCatMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[ItemCatMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[ItemCatMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[ItemCatMast]')
           AND name IN ('Code', 'Name', 'RoundOff', 'AcName', 'U_Name', 'U_EntDt', 'U_AE', 'OutletYN', 'Flag', 'TaxStru', 'CatType', 'RestCode', 'DrCr', 'RevCode', 'Site_Code', 'LogSite_Code', 'TaxStruType', 'Status', 'TaxP')) < 19
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[ItemCatMast] ([Code], [Name], [RoundOff], [AcName], [U_Name], [U_EntDt], [U_AE], [OutletYN], [Flag], [TaxStru], [CatType], [RestCode], [DrCr], [RevCode], [Site_Code], [LogSite_Code], [TaxStruType], [Status], [TaxP])
    SELECT s.[Code], s.[Name], s.[RoundOff], s.[AcName], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[OutletYN], s.[Flag], s.[TaxStru], s.[CatType], s.[RestCode], s.[DrCr], s.[RevCode], s.[Site_Code], s.[LogSite_Code], s.[TaxStruType], s.[Status], s.[TaxP]
    FROM [VijayData2627].[dbo].[ItemCatMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[ItemCatMast] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Item]';

IF OBJECT_ID(N'VijayData2627.dbo.[Item]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Item]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Item]')
           AND name IN ('Code', 'Name', 'BarCode', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'CommodityCode')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Item] ([Code], [Name], [BarCode], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [CommodityCode])
    SELECT s.[Code], s.[Name], s.[BarCode], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[CommodityCode]
    FROM [VijayData2627].[dbo].[Item] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Item] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [inout]';

IF OBJECT_ID(N'VijayData2627.dbo.[inout]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[inout]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[inout]')
           AND name IN ('billno', 'compcode', 'book_no', 'name1', 'age1', 'name2', 'age2', 'add1', 'add2', 'add3', 'in_date', 'in_time', 'relation', 'national', 'arrived', 'desti', 'purpose', 'advamt', 'receiptno', 'remark', 'code', 'subcode', 'out_date', 'out_time', 'paymode', 'restamt', 'roomamt', 'telamt', 'laundamt', 'sundryamt', 'amenity', 'luxtax', 'discp', 'discamt', 'amount', 'sundyn', 'restyn', 'laundyn', 'telyn', 'cardno', 'holder', 'outuser', 'user_name', 'entry_date', 'entry_time', 'rep_code', 'disc', 'fore_yn', 'c_code', 'discyn', 'tcheckin', 'tcheckot', 'trrent', 'trdays', 'rosrd', 'disc_f', 'bill_no', 'expcdate', 'code1', 'subcode1', 'cardno1', 'holder1', 'sc_per', 'paymode1', 'chkoutdt', 'chkouttime')) < 66
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[inout] ([billno], [compcode], [book_no], [name1], [age1], [name2], [age2], [add1], [add2], [add3], [in_date], [in_time], [relation], [national], [arrived], [desti], [purpose], [advamt], [receiptno], [remark], [code], [subcode], [out_date], [out_time], [paymode], [restamt], [roomamt], [telamt], [laundamt], [sundryamt], [amenity], [luxtax], [discp], [discamt], [amount], [sundyn], [restyn], [laundyn], [telyn], [cardno], [holder], [outuser], [user_name], [entry_date], [entry_time], [rep_code], [disc], [fore_yn], [c_code], [discyn], [tcheckin], [tcheckot], [trrent], [trdays], [rosrd], [disc_f], [bill_no], [expcdate], [code1], [subcode1], [cardno1], [holder1], [sc_per], [paymode1], [chkoutdt], [chkouttime])
    SELECT s.[billno], s.[compcode], s.[book_no], s.[name1], s.[age1], s.[name2], s.[age2], s.[add1], s.[add2], s.[add3], s.[in_date], s.[in_time], s.[relation], s.[national], s.[arrived], s.[desti], s.[purpose], s.[advamt], s.[receiptno], s.[remark], s.[code], s.[subcode], s.[out_date], s.[out_time], s.[paymode], s.[restamt], s.[roomamt], s.[telamt], s.[laundamt], s.[sundryamt], s.[amenity], s.[luxtax], s.[discp], s.[discamt], s.[amount], s.[sundyn], s.[restyn], s.[laundyn], s.[telyn], s.[cardno], s.[holder], s.[outuser], s.[user_name], s.[entry_date], s.[entry_time], s.[rep_code], s.[disc], s.[fore_yn], s.[c_code], s.[discyn], s.[tcheckin], s.[tcheckot], s.[trrent], s.[trdays], s.[rosrd], s.[disc_f], s.[bill_no], s.[expcdate], s.[code1], s.[subcode1], s.[cardno1], s.[holder1], s.[sc_per], s.[paymode1], s.[chkoutdt], s.[chkouttime]
    FROM [VijayData2627].[dbo].[inout] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Indent1]';

IF OBJECT_ID(N'VijayData2627.dbo.[Indent1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Indent1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Indent1]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'VNo', 'VDate', 'Site_Code', 'Vprefix', 'Item', 'Qty', 'Unit', 'U_Name', 'U_EntDt', 'U_AE', 'Rate', 'Amount', 'Specification', 'ClearYN', 'ConvFactor', 'WtQty', 'WtUnit', 'LogSite_Code', 'TaxStru', 'TaxAmt', 'Total')) < 24
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Indent1] ([DocId], [Sno], [Vtype], [VNo], [VDate], [Site_Code], [Vprefix], [Item], [Qty], [Unit], [U_Name], [U_EntDt], [U_AE], [Rate], [Amount], [Specification], [ClearYN], [ConvFactor], [WtQty], [WtUnit], [LogSite_Code], [TaxStru], [TaxAmt], [Total])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[VNo], s.[VDate], s.[Site_Code], s.[Vprefix], s.[Item], s.[Qty], s.[Unit], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Rate], s.[Amount], s.[Specification], s.[ClearYN], s.[ConvFactor], s.[WtQty], s.[WtUnit], s.[LogSite_Code], s.[TaxStru], s.[TaxAmt], s.[Total]
    FROM [VijayData2627].[dbo].[Indent1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Indent1] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Indent]';

IF OBJECT_ID(N'VijayData2627.dbo.[Indent]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Indent]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Indent]')
           AND name IN ('DocId', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'VDate', 'VTime', 'Department', 'Remarks', 'U_Name', 'U_EntDt', 'U_AE', 'ClearYN', 'LogSite_Code', 'Company', 'Godown', 'RefDocId')) < 17
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Indent] ([DocId], [Vtype], [VNo], [Site_Code], [Vprefix], [VDate], [VTime], [Department], [Remarks], [U_Name], [U_EntDt], [U_AE], [ClearYN], [LogSite_Code], [Company], [Godown], [RefDocId])
    SELECT s.[DocId], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[VDate], s.[VTime], s.[Department], s.[Remarks], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[ClearYN], s.[LogSite_Code], s.[Company], s.[Godown], s.[RefDocId]
    FROM [VijayData2627].[dbo].[Indent] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Indent] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Holiday]';

IF OBJECT_ID(N'VijayData2627.dbo.[Holiday]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Holiday]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Holiday]')
           AND name IN ('Vdate', 'Remarks', 'Site_Code', 'U_name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 7
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Holiday] ([Vdate], [Remarks], [Site_Code], [U_name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Vdate], s.[Remarks], s.[Site_Code], s.[U_name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[Holiday] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Holiday] AS d
                      WHERE d.[Vdate] = s.[Vdate] AND d.[LogSite_Code] = s.[LogSite_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Help]';

IF OBJECT_ID(N'VijayData2627.dbo.[Help]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Help]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Help]')
           AND name IN ('FName', 'CtrlIndex', 'HelpDesc')) < 3
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Help] ([FName], [CtrlIndex], [HelpDesc])
    SELECT s.[FName], s.[CtrlIndex], s.[HelpDesc]
    FROM [VijayData2627].[dbo].[Help] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Help] AS d
                      WHERE d.[FName] = s.[FName] AND d.[CtrlIndex] = s.[CtrlIndex]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [HappyHoursHead]';

IF OBJECT_ID(N'VijayData2627.dbo.[HappyHoursHead]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[HappyHoursHead]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[HappyHoursHead]')
           AND name IN ('SchemeCode', 'ItemCat', 'ItemGroup', 'RestCode', 'AppDate', 'FromTime', 'ToTime', 'U_Name', 'U_AE', 'Site_Code', 'LogSite_Code', 'DiscountType', 'DiscountValue', 'U_EntDt', 'EndDate')) < 15
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[HappyHoursHead] ([SchemeCode], [ItemCat], [ItemGroup], [RestCode], [AppDate], [FromTime], [ToTime], [U_Name], [U_AE], [Site_Code], [LogSite_Code], [DiscountType], [DiscountValue], [U_EntDt], [EndDate])
    SELECT s.[SchemeCode], s.[ItemCat], s.[ItemGroup], s.[RestCode], s.[AppDate], s.[FromTime], s.[ToTime], s.[U_Name], s.[U_AE], s.[Site_Code], s.[LogSite_Code], s.[DiscountType], s.[DiscountValue], s.[U_EntDt], s.[EndDate]
    FROM [VijayData2627].[dbo].[HappyHoursHead] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[HappyHoursHead] AS d
                      WHERE d.[SchemeCode] = s.[SchemeCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [HappyHours]';

IF OBJECT_ID(N'VijayData2627.dbo.[HappyHours]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[HappyHours]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[HappyHours]')
           AND name IN ('SchemeCode', 'RestCode', 'ItemCode', 'AppDate', 'DiscountType', 'DiscountValue', 'U_Name', 'U_EntDt', 'U_AE', 'Site_Code', 'LogSite_Code', 'FromTime', 'ToTime', 'Active', 'EndDate')) < 15
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[HappyHours] ([SchemeCode], [RestCode], [ItemCode], [AppDate], [DiscountType], [DiscountValue], [U_Name], [U_EntDt], [U_AE], [Site_Code], [LogSite_Code], [FromTime], [ToTime], [Active], [EndDate])
    SELECT s.[SchemeCode], s.[RestCode], s.[ItemCode], s.[AppDate], s.[DiscountType], s.[DiscountValue], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Site_Code], s.[LogSite_Code], s.[FromTime], s.[ToTime], s.[Active], s.[EndDate]
    FROM [VijayData2627].[dbo].[HappyHours] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [HallStockEst]';

IF OBJECT_ID(N'VijayData2627.dbo.[HallStockEst]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[HallStockEst]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[HallStockEst]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'Party', 'RestCode', 'ContraDocId', 'ContraSno', 'Item', 'QtyIss', 'Unit', 'Rate', 'Amount', 'TaxPer', 'TaxAmt', 'DiscPer', 'DiscAmt', 'VoidYN', 'Remarks', 'U_Name', 'U_EntDt', 'U_AE', 'Total', 'DiscApp', 'RoundOff', 'DepartCode', 'GodCode', 'DelFlag', 'LogSite_Code', 'SChrgApp', 'SChrgPer', 'SChrgAmt')) < 35
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[HallStockEst] ([DocId], [Sno], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [Party], [RestCode], [ContraDocId], [ContraSno], [Item], [QtyIss], [Unit], [Rate], [Amount], [TaxPer], [TaxAmt], [DiscPer], [DiscAmt], [VoidYN], [Remarks], [U_Name], [U_EntDt], [U_AE], [Total], [DiscApp], [RoundOff], [DepartCode], [GodCode], [DelFlag], [LogSite_Code], [SChrgApp], [SChrgPer], [SChrgAmt])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[Party], s.[RestCode], s.[ContraDocId], s.[ContraSno], s.[Item], s.[QtyIss], s.[Unit], s.[Rate], s.[Amount], s.[TaxPer], s.[TaxAmt], s.[DiscPer], s.[DiscAmt], s.[VoidYN], s.[Remarks], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Total], s.[DiscApp], s.[RoundOff], s.[DepartCode], s.[GodCode], s.[DelFlag], s.[LogSite_Code], s.[SChrgApp], s.[SChrgPer], s.[SChrgAmt]
    FROM [VijayData2627].[dbo].[HallStockEst] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[HallStockEst] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [HallStock]';

IF OBJECT_ID(N'VijayData2627.dbo.[HallStock]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[HallStock]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[HallStock]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'Party', 'RestCode', 'ContraDocId', 'ContraSno', 'Item', 'QtyIss', 'Unit', 'Rate', 'Amount', 'TaxPer', 'TaxAmt', 'DiscPer', 'DiscAmt', 'VoidYN', 'Remarks', 'U_Name', 'U_EntDt', 'U_AE', 'Total', 'DiscApp', 'RoundOff', 'DepartCode', 'GodCode', 'DelFlag', 'LogSite_Code', 'SChrgApp', 'SChrgPer', 'SChrgAmt')) < 35
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[HallStock] ([DocId], [Sno], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [Party], [RestCode], [ContraDocId], [ContraSno], [Item], [QtyIss], [Unit], [Rate], [Amount], [TaxPer], [TaxAmt], [DiscPer], [DiscAmt], [VoidYN], [Remarks], [U_Name], [U_EntDt], [U_AE], [Total], [DiscApp], [RoundOff], [DepartCode], [GodCode], [DelFlag], [LogSite_Code], [SChrgApp], [SChrgPer], [SChrgAmt])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[Party], s.[RestCode], s.[ContraDocId], s.[ContraSno], s.[Item], s.[QtyIss], s.[Unit], s.[Rate], s.[Amount], s.[TaxPer], s.[TaxAmt], s.[DiscPer], s.[DiscAmt], s.[VoidYN], s.[Remarks], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Total], s.[DiscApp], s.[RoundOff], s.[DepartCode], s.[GodCode], s.[DelFlag], s.[LogSite_Code], s.[SChrgApp], s.[SChrgPer], s.[SChrgAmt]
    FROM [VijayData2627].[dbo].[HallStock] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[HallStock] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [HallSale2]';

IF OBJECT_ID(N'VijayData2627.dbo.[HallSale2]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[HallSale2]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[HallSale2]')
           AND name IN ('DocId', 'Sno', 'SNo1', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'RestCode', 'TaxCode', 'BaseValue', 'TaxPer', 'TaxAmt', 'U_Name', 'U_EntDt', 'U_AE', 'DelFlag', 'LogSite_Code')) < 18
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[HallSale2] ([DocId], [Sno], [SNo1], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [RestCode], [TaxCode], [BaseValue], [TaxPer], [TaxAmt], [U_Name], [U_EntDt], [U_AE], [DelFlag], [LogSite_Code])
    SELECT s.[DocId], s.[Sno], s.[SNo1], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[RestCode], s.[TaxCode], s.[BaseValue], s.[TaxPer], s.[TaxAmt], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[DelFlag], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[HallSale2] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[HallSale2] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno] AND d.[SNo1] = s.[SNo1]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [HallSale1Est]';

IF OBJECT_ID(N'VijayData2627.dbo.[HallSale1Est]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[HallSale1Est]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[HallSale1Est]')
           AND name IN ('DocId', 'Vtype', 'VNo', 'VTime', 'Site_Code', 'Vprefix', 'Vdate', 'RestCode', 'Party', 'Total', 'DiscPer', 'DiscAmt', 'NonTaxable', 'Taxable', 'Tax', 'ServiceCharge', 'AddAmt', 'DedAmt', 'RoundOff', 'NetAmt', 'FrBookDate', 'FrBookTime', 'U_Name', 'U_EntDt', 'U_AE', 'ToBookDate', 'ToBookTime', 'HallRent', 'Remarks', 'NoOfPax', 'RatePerPax', 'TotalPerCover', 'Amount', 'Advance', 'RectNo', 'rectDate', 'CrCardNo', 'CrCardHolder', 'BookDocId', 'DelFlag', 'Narration', 'LogSite_Code')) < 42
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[HallSale1Est] ([DocId], [Vtype], [VNo], [VTime], [Site_Code], [Vprefix], [Vdate], [RestCode], [Party], [Total], [DiscPer], [DiscAmt], [NonTaxable], [Taxable], [Tax], [ServiceCharge], [AddAmt], [DedAmt], [RoundOff], [NetAmt], [FrBookDate], [FrBookTime], [U_Name], [U_EntDt], [U_AE], [ToBookDate], [ToBookTime], [HallRent], [Remarks], [NoOfPax], [RatePerPax], [TotalPerCover], [Amount], [Advance], [RectNo], [rectDate], [CrCardNo], [CrCardHolder], [BookDocId], [DelFlag], [Narration], [LogSite_Code])
    SELECT s.[DocId], s.[Vtype], s.[VNo], s.[VTime], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[RestCode], s.[Party], s.[Total], s.[DiscPer], s.[DiscAmt], s.[NonTaxable], s.[Taxable], s.[Tax], s.[ServiceCharge], s.[AddAmt], s.[DedAmt], s.[RoundOff], s.[NetAmt], s.[FrBookDate], s.[FrBookTime], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[ToBookDate], s.[ToBookTime], s.[HallRent], s.[Remarks], s.[NoOfPax], s.[RatePerPax], s.[TotalPerCover], s.[Amount], s.[Advance], s.[RectNo], s.[rectDate], s.[CrCardNo], s.[CrCardHolder], s.[BookDocId], s.[DelFlag], s.[Narration], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[HallSale1Est] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[HallSale1Est] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [HallSale1]';

IF OBJECT_ID(N'VijayData2627.dbo.[HallSale1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[HallSale1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[HallSale1]')
           AND name IN ('DocId', 'Vtype', 'VNo', 'VTime', 'Site_Code', 'Vprefix', 'Vdate', 'RestCode', 'Party', 'Total', 'DiscPer', 'DiscAmt', 'NonTaxable', 'Taxable', 'Tax', 'ServiceCharge', 'AddAmt', 'DedAmt', 'RoundOff', 'NetAmt', 'FrBookDate', 'FrBookTime', 'U_Name', 'U_EntDt', 'U_AE', 'ToBookDate', 'ToBookTime', 'HallRent', 'Remarks', 'NoOfPax', 'RatePerPax', 'TotalPerCover', 'Amount', 'Advance', 'RectNo', 'rectDate', 'CrCardNo', 'CrCardHolder', 'BookDocId', 'DelFlag', 'Narration', 'LogSite_Code', 'Narration1', 'CGST', 'SGST', 'IGST')) < 46
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[HallSale1] ([DocId], [Vtype], [VNo], [VTime], [Site_Code], [Vprefix], [Vdate], [RestCode], [Party], [Total], [DiscPer], [DiscAmt], [NonTaxable], [Taxable], [Tax], [ServiceCharge], [AddAmt], [DedAmt], [RoundOff], [NetAmt], [FrBookDate], [FrBookTime], [U_Name], [U_EntDt], [U_AE], [ToBookDate], [ToBookTime], [HallRent], [Remarks], [NoOfPax], [RatePerPax], [TotalPerCover], [Amount], [Advance], [RectNo], [rectDate], [CrCardNo], [CrCardHolder], [BookDocId], [DelFlag], [Narration], [LogSite_Code], [Narration1], [CGST], [SGST], [IGST])
    SELECT s.[DocId], s.[Vtype], s.[VNo], s.[VTime], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[RestCode], s.[Party], s.[Total], s.[DiscPer], s.[DiscAmt], s.[NonTaxable], s.[Taxable], s.[Tax], s.[ServiceCharge], s.[AddAmt], s.[DedAmt], s.[RoundOff], s.[NetAmt], s.[FrBookDate], s.[FrBookTime], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[ToBookDate], s.[ToBookTime], s.[HallRent], s.[Remarks], s.[NoOfPax], s.[RatePerPax], s.[TotalPerCover], s.[Amount], s.[Advance], s.[RectNo], s.[rectDate], s.[CrCardNo], s.[CrCardHolder], s.[BookDocId], s.[DelFlag], s.[Narration], s.[LogSite_Code], s.[Narration1], s.[CGST], s.[SGST], s.[IGST]
    FROM [VijayData2627].[dbo].[HallSale1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[HallSale1] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [HallPreCosting]';

IF OBJECT_ID(N'VijayData2627.dbo.[HallPreCosting]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[HallPreCosting]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[HallPreCosting]')
           AND name IN ('Docid', 'Sno', 'Vtype', 'Vtime', 'Vno', 'Site_Code', 'Vprefix', 'Vdate', 'RestCode', 'Item', 'Qty', 'Rate', 'Amount', 'VoidYN', 'Waiter', 'Pending', 'KOTType', 'U_Name', 'U_EntDt', 'U_AE', 'DelFlag', 'NCKOT', 'ContraDocId', 'ContraSno', 'DepartCode', 'Reasons', 'LogSite_Code')) < 27
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[HallPreCosting] ([Docid], [Sno], [Vtype], [Vtime], [Vno], [Site_Code], [Vprefix], [Vdate], [RestCode], [Item], [Qty], [Rate], [Amount], [VoidYN], [Waiter], [Pending], [KOTType], [U_Name], [U_EntDt], [U_AE], [DelFlag], [NCKOT], [ContraDocId], [ContraSno], [DepartCode], [Reasons], [LogSite_Code])
    SELECT s.[Docid], s.[Sno], s.[Vtype], s.[Vtime], s.[Vno], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[RestCode], s.[Item], s.[Qty], s.[Rate], s.[Amount], s.[VoidYN], s.[Waiter], s.[Pending], s.[KOTType], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[DelFlag], s.[NCKOT], s.[ContraDocId], s.[ContraSno], s.[DepartCode], s.[Reasons], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[HallPreCosting] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[HallPreCosting] AS d
                      WHERE d.[Docid] = s.[Docid] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [HallBook1]';

IF OBJECT_ID(N'VijayData2627.dbo.[HallBook1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[HallBook1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[HallBook1]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'PartyCode', 'RestCode', 'RoomCat', 'RoomType', 'RoomNo', 'ContraDocId', 'ContraSno', 'Item', 'QtyIss', 'QtyRec', 'Unit', 'Rate', 'Amount', 'TaxPer', 'TaxAmt', 'DiscPer', 'DiscAmt', 'VoidYN', 'Remarks', 'KOTDocId', 'KOTSno', 'VTime', 'U_Name', 'U_EntDt', 'U_AE', 'Total', 'DiscApp', 'RoundOff', 'PartyName', 'LogSite_Code')) < 37
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[HallBook1] ([DocId], [Sno], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [PartyCode], [RestCode], [RoomCat], [RoomType], [RoomNo], [ContraDocId], [ContraSno], [Item], [QtyIss], [QtyRec], [Unit], [Rate], [Amount], [TaxPer], [TaxAmt], [DiscPer], [DiscAmt], [VoidYN], [Remarks], [KOTDocId], [KOTSno], [VTime], [U_Name], [U_EntDt], [U_AE], [Total], [DiscApp], [RoundOff], [PartyName], [LogSite_Code])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[PartyCode], s.[RestCode], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[ContraDocId], s.[ContraSno], s.[Item], s.[QtyIss], s.[QtyRec], s.[Unit], s.[Rate], s.[Amount], s.[TaxPer], s.[TaxAmt], s.[DiscPer], s.[DiscAmt], s.[VoidYN], s.[Remarks], s.[KOTDocId], s.[KOTSno], s.[VTime], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Total], s.[DiscApp], s.[RoundOff], s.[PartyName], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[HallBook1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[HallBook1] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [HallBook]';

IF OBJECT_ID(N'VijayData2627.dbo.[HallBook]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[HallBook]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[HallBook]')
           AND name IN ('DocId', 'Vtype', 'VNo', 'VTime', 'Site_Code', 'Vprefix', 'Vdate', 'PartyName', 'Add1', 'Add2', 'City', 'PinCode', 'PANNO', 'ContactNo_Res', 'ContactNo_Off', 'MobileNo', 'Func_Name', 'BookingStatus', 'RestCode', 'FrBookDate', 'FrBookTime', 'ToBookDate', 'ToBookTime', 'HouseKeep', 'FrontOff', 'Engg', 'Security', 'Chef', 'Board', 'MenuSpl1', 'MenuSpl2', 'MenuSpl3', 'MenuSpl4', 'MenuSpl5', 'MenuSpl6', 'MenuSpl7', 'Advance', 'RectNo', 'rectDate', 'CrCardNo', 'CrCardHolder', 'Total', 'DiscPer', 'DiscAmt', 'NonTaxable', 'Taxable', 'Tax', 'ServiceCharge', 'AddAmt', 'DedAmt', 'RoundOff', 'ExpAtt', 'GuarAtt', 'CoverRate', 'U_Name', 'U_EntDt', 'U_AE', 'HallRent', 'Remarks', 'MenuCatalog', 'Amount', 'MarketSeg', 'BussSource', 'CompanyCode', 'TotalCoverRate', 'NetAmount', 'InquiryCode', 'ContactNo', 'TaxPer', 'ServiceTaxPer', 'OtherChrg', 'LogSite_Code', 'Remark', 'BookingAgent')) < 74
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[HallBook] ([DocId], [Vtype], [VNo], [VTime], [Site_Code], [Vprefix], [Vdate], [PartyName], [Add1], [Add2], [City], [PinCode], [PANNO], [ContactNo_Res], [ContactNo_Off], [MobileNo], [Func_Name], [BookingStatus], [RestCode], [FrBookDate], [FrBookTime], [ToBookDate], [ToBookTime], [HouseKeep], [FrontOff], [Engg], [Security], [Chef], [Board], [MenuSpl1], [MenuSpl2], [MenuSpl3], [MenuSpl4], [MenuSpl5], [MenuSpl6], [MenuSpl7], [Advance], [RectNo], [rectDate], [CrCardNo], [CrCardHolder], [Total], [DiscPer], [DiscAmt], [NonTaxable], [Taxable], [Tax], [ServiceCharge], [AddAmt], [DedAmt], [RoundOff], [ExpAtt], [GuarAtt], [CoverRate], [U_Name], [U_EntDt], [U_AE], [HallRent], [Remarks], [MenuCatalog], [Amount], [MarketSeg], [BussSource], [CompanyCode], [TotalCoverRate], [NetAmount], [InquiryCode], [ContactNo], [TaxPer], [ServiceTaxPer], [OtherChrg], [LogSite_Code], [Remark], [BookingAgent])
    SELECT s.[DocId], s.[Vtype], s.[VNo], s.[VTime], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[PartyName], s.[Add1], s.[Add2], s.[City], s.[PinCode], s.[PANNO], s.[ContactNo_Res], s.[ContactNo_Off], s.[MobileNo], s.[Func_Name], s.[BookingStatus], s.[RestCode], s.[FrBookDate], s.[FrBookTime], s.[ToBookDate], s.[ToBookTime], s.[HouseKeep], s.[FrontOff], s.[Engg], s.[Security], s.[Chef], s.[Board], s.[MenuSpl1], s.[MenuSpl2], s.[MenuSpl3], s.[MenuSpl4], s.[MenuSpl5], s.[MenuSpl6], s.[MenuSpl7], s.[Advance], s.[RectNo], s.[rectDate], s.[CrCardNo], s.[CrCardHolder], s.[Total], s.[DiscPer], s.[DiscAmt], s.[NonTaxable], s.[Taxable], s.[Tax], s.[ServiceCharge], s.[AddAmt], s.[DedAmt], s.[RoundOff], s.[ExpAtt], s.[GuarAtt], s.[CoverRate], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[HallRent], s.[Remarks], s.[MenuCatalog], s.[Amount], s.[MarketSeg], s.[BussSource], s.[CompanyCode], s.[TotalCoverRate], s.[NetAmount], s.[InquiryCode], s.[ContactNo], s.[TaxPer], s.[ServiceTaxPer], s.[OtherChrg], s.[LogSite_Code], s.[Remark], s.[BookingAgent]
    FROM [VijayData2627].[dbo].[HallBook] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[HallBook] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GuestWakeup]';

IF OBJECT_ID(N'VijayData2627.dbo.[GuestWakeup]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GuestWakeup]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GuestWakeup]')
           AND name IN ('DocId', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'VTime', 'RoomCat', 'RoomType', 'RoomNo', 'Extension', 'RemReqd', 'FoodOrd', 'OtherReq', 'WDate', 'WTime', 'GuestProf', 'FolioNo', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 22
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GuestWakeup] ([DocId], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [VTime], [RoomCat], [RoomType], [RoomNo], [Extension], [RemReqd], [FoodOrd], [OtherReq], [WDate], [WTime], [GuestProf], [FolioNo], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[DocId], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[VTime], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[Extension], s.[RemReqd], s.[FoodOrd], s.[OtherReq], s.[WDate], s.[WTime], s.[GuestProf], s.[FolioNo], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[GuestWakeup] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[GuestWakeup] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GuestStat]';

IF OBJECT_ID(N'VijayData2627.dbo.[GuestStat]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GuestStat]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GuestStat]')
           AND name IN ('Code', 'Name', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 7
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GuestStat] ([Code], [Name], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Code], s.[Name], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[GuestStat] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[GuestStat] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GuestReward]';

IF OBJECT_ID(N'VijayData2627.dbo.[GuestReward]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GuestReward]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GuestReward]')
           AND name IN ('DocId', 'CustCode', 'Vdate', 'DepartName', 'BillNo', 'BillAmt', 'RewardPoint', 'RedemPoint', 'MobileNo', 'Site_code', 'LogSite_Code', 'U_Name', 'U_AE', 'U_EntDt', 'Total', 'DiscAmt', 'RestCode', 'SchemeCode', 'SaleUpTo', 'RPointOnAmt', 'RewardValue', 'RedeemValue', 'RegId', 'DiscPer')) < 24
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GuestReward] ([DocId], [CustCode], [Vdate], [DepartName], [BillNo], [BillAmt], [RewardPoint], [RedemPoint], [MobileNo], [Site_code], [LogSite_Code], [U_Name], [U_AE], [U_EntDt], [Total], [DiscAmt], [RestCode], [SchemeCode], [SaleUpTo], [RPointOnAmt], [RewardValue], [RedeemValue], [RegId], [DiscPer])
    SELECT s.[DocId], s.[CustCode], s.[Vdate], s.[DepartName], s.[BillNo], s.[BillAmt], s.[RewardPoint], s.[RedemPoint], s.[MobileNo], s.[Site_code], s.[LogSite_Code], s.[U_Name], s.[U_AE], s.[U_EntDt], s.[Total], s.[DiscAmt], s.[RestCode], s.[SchemeCode], s.[SaleUpTo], s.[RPointOnAmt], s.[RewardValue], s.[RedeemValue], s.[RegId], s.[DiscPer]
    FROM [VijayData2627].[dbo].[GuestReward] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[GuestReward] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GuestProfVeh]';

IF OBJECT_ID(N'VijayData2627.dbo.[GuestProfVeh]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GuestProfVeh]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GuestProfVeh]')
           AND name IN ('Code', 'Sno', 'Make', 'Model', 'VehicleNo', 'DLNo', 'State', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 12
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GuestProfVeh] ([Code], [Sno], [Make], [Model], [VehicleNo], [DLNo], [State], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Code], s.[Sno], s.[Make], s.[Model], s.[VehicleNo], s.[DLNo], s.[State], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[GuestProfVeh] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[GuestProfVeh] AS d
                      WHERE d.[Code] = s.[Code] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GuestProfFor]';

IF OBJECT_ID(N'VijayData2627.dbo.[GuestProfFor]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GuestProfFor]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GuestProfFor]')
           AND name IN ('Code', 'Sno', 'Nationality', 'Name', 'Add1', 'Add2', 'Occu', 'ArrFrom', 'Dest', 'PurVisit', 'ModeTravel', 'DateArr', 'ArrPlace', 'AddIndia', 'PassNo', 'IssDate', 'IssPlace', 'Age', 'PropStay', 'ModeTravelUsed', 'VisaType', 'VisaNo', 'VisaIssDate', 'VisaIssPlace', 'ExpDate', 'WorkPermit', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'PassExpDate', 'VisaIssAuth', 'Extension', 'VisaDuration', 'LogSite_Code', 'SerialNo')) < 36
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GuestProfFor] ([Code], [Sno], [Nationality], [Name], [Add1], [Add2], [Occu], [ArrFrom], [Dest], [PurVisit], [ModeTravel], [DateArr], [ArrPlace], [AddIndia], [PassNo], [IssDate], [IssPlace], [Age], [PropStay], [ModeTravelUsed], [VisaType], [VisaNo], [VisaIssDate], [VisaIssPlace], [ExpDate], [WorkPermit], [Site_Code], [U_Name], [U_EntDt], [U_AE], [PassExpDate], [VisaIssAuth], [Extension], [VisaDuration], [LogSite_Code], [SerialNo])
    SELECT s.[Code], s.[Sno], s.[Nationality], s.[Name], s.[Add1], s.[Add2], s.[Occu], s.[ArrFrom], s.[Dest], s.[PurVisit], s.[ModeTravel], s.[DateArr], s.[ArrPlace], s.[AddIndia], s.[PassNo], s.[IssDate], s.[IssPlace], s.[Age], s.[PropStay], s.[ModeTravelUsed], s.[VisaType], s.[VisaNo], s.[VisaIssDate], s.[VisaIssPlace], s.[ExpDate], s.[WorkPermit], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[PassExpDate], s.[VisaIssAuth], s.[Extension], s.[VisaDuration], s.[LogSite_Code], s.[SerialNo]
    FROM [VijayData2627].[dbo].[GuestProfFor] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[GuestProfFor] AS d
                      WHERE d.[Code] = s.[Code] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GuestProf]';

IF OBJECT_ID(N'VijayData2627.dbo.[GuestProf]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GuestProf]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GuestProf]')
           AND name IN ('Code', 'Name', 'Add1', 'Add2', 'City', 'Type', 'CreditCardNo', 'ExpiresOn', 'CreditLimit', 'PhoneNo', 'FaxNo', 'MobileNo', 'EmailId', 'Nationality', 'BirthDate', 'Anniversary', 'GuestStatus', 'SplInstr', 'Comments1', 'Comments2', 'Comments3', 'ConName', 'T1Field1', 'T1Field2', 'T1Field3', 'T1Field4', 'T1Field5', 'T1Field6', 'T1Field7', 'T1Field8', 'T2Field1', 'T2Field2', 'T2Field3', 'T2Field4', 'T2Field5', 'T2Field6', 'T2Field7', 'T2Field8', 'CityName', 'StateName', 'CountryName', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'CardHolder', 'Gender', 'MaritalStatus', 'ZipCode', 'PanNo', 'IdNo', 'DiplomatYN', 'ConPrefix', 'LogSite_Code', 'Age', 'PicPath', 'IdProof', 'mProf', 'FatherName', 'IdProofNo', 'IdPicPath', 'Likes', 'DisLikes', 'FOM', 'POS', 'WebYN', 'SignPicPath')) < 67
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GuestProf] ([Code], [Name], [Add1], [Add2], [City], [Type], [CreditCardNo], [ExpiresOn], [CreditLimit], [PhoneNo], [FaxNo], [MobileNo], [EmailId], [Nationality], [BirthDate], [Anniversary], [GuestStatus], [SplInstr], [Comments1], [Comments2], [Comments3], [ConName], [T1Field1], [T1Field2], [T1Field3], [T1Field4], [T1Field5], [T1Field6], [T1Field7], [T1Field8], [T2Field1], [T2Field2], [T2Field3], [T2Field4], [T2Field5], [T2Field6], [T2Field7], [T2Field8], [CityName], [StateName], [CountryName], [Site_Code], [U_Name], [U_EntDt], [U_AE], [CardHolder], [Gender], [MaritalStatus], [ZipCode], [PanNo], [IdNo], [DiplomatYN], [ConPrefix], [LogSite_Code], [Age], [PicPath], [IdProof], [mProf], [FatherName], [IdProofNo], [IdPicPath], [Likes], [DisLikes], [FOM], [POS], [WebYN], [SignPicPath])
    SELECT s.[Code], s.[Name], s.[Add1], s.[Add2], s.[City], s.[Type], s.[CreditCardNo], s.[ExpiresOn], s.[CreditLimit], s.[PhoneNo], s.[FaxNo], s.[MobileNo], s.[EmailId], s.[Nationality], s.[BirthDate], s.[Anniversary], s.[GuestStatus], s.[SplInstr], s.[Comments1], s.[Comments2], s.[Comments3], s.[ConName], s.[T1Field1], s.[T1Field2], s.[T1Field3], s.[T1Field4], s.[T1Field5], s.[T1Field6], s.[T1Field7], s.[T1Field8], s.[T2Field1], s.[T2Field2], s.[T2Field3], s.[T2Field4], s.[T2Field5], s.[T2Field6], s.[T2Field7], s.[T2Field8], s.[CityName], s.[StateName], s.[CountryName], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[CardHolder], s.[Gender], s.[MaritalStatus], s.[ZipCode], s.[PanNo], s.[IdNo], s.[DiplomatYN], s.[ConPrefix], s.[LogSite_Code], s.[Age], s.[PicPath], s.[IdProof], s.[mProf], s.[FatherName], s.[IdProofNo], s.[IdPicPath], s.[Likes], s.[DisLikes], s.[FOM], s.[POS], s.[WebYN], s.[SignPicPath]
    FROM [VijayData2627].[dbo].[GuestProf] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[GuestProf] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GuestParam]';

IF OBJECT_ID(N'VijayData2627.dbo.[GuestParam]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GuestParam]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GuestParam]')
           AND name IN ('T1Field1', 'T1Field2', 'T1Field3', 'T1Field4', 'T1Field5', 'T1Field6', 'T1Field7', 'T1Field8', 'T2Field1', 'T2Field2', 'T2Field3', 'T2Field4', 'T2Field5', 'T2Field6', 'T2Field7', 'T2Field8', 'Site_Code', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 20
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GuestParam] ([T1Field1], [T1Field2], [T1Field3], [T1Field4], [T1Field5], [T1Field6], [T1Field7], [T1Field8], [T2Field1], [T2Field2], [T2Field3], [T2Field4], [T2Field5], [T2Field6], [T2Field7], [T2Field8], [Site_Code], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[T1Field1], s.[T1Field2], s.[T1Field3], s.[T1Field4], s.[T1Field5], s.[T1Field6], s.[T1Field7], s.[T1Field8], s.[T2Field1], s.[T2Field2], s.[T2Field3], s.[T2Field4], s.[T2Field5], s.[T2Field6], s.[T2Field7], s.[T2Field8], s.[Site_Code], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[GuestParam] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GuestMessage]';

IF OBJECT_ID(N'VijayData2627.dbo.[GuestMessage]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GuestMessage]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GuestMessage]')
           AND name IN ('DocId', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'RoomCat', 'RoomType', 'RoomNo', 'Caller', 'Telephone', 'Message', 'RecdDate', 'RecdTime', 'GuestProf', 'FolioNo', 'U_Name', 'U_EntDt', 'U_AE', 'Solved', 'LogSite_Code')) < 21
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GuestMessage] ([DocId], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [RoomCat], [RoomType], [RoomNo], [Caller], [Telephone], [Message], [RecdDate], [RecdTime], [GuestProf], [FolioNo], [U_Name], [U_EntDt], [U_AE], [Solved], [LogSite_Code])
    SELECT s.[DocId], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[Caller], s.[Telephone], s.[Message], s.[RecdDate], s.[RecdTime], s.[GuestProf], s.[FolioNo], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Solved], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[GuestMessage] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[GuestMessage] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GuestFolioProfDetail]';

IF OBJECT_ID(N'VijayData2627.dbo.[GuestFolioProfDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GuestFolioProfDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GuestFolioProfDetail]')
           AND name IN ('Docid', 'GuestProf', 'mProf', 'U_AE', 'U_Name', 'U_EntDt', 'Site_Code', 'LogSite_Code')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GuestFolioProfDetail] ([Docid], [GuestProf], [mProf], [U_AE], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code])
    SELECT s.[Docid], s.[GuestProf], s.[mProf], s.[U_AE], s.[U_Name], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[GuestFolioProfDetail] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[GuestFolioProfDetail] AS d
                      WHERE d.[Docid] = s.[Docid] AND d.[GuestProf] = s.[GuestProf]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GuestFolioAmend]';

IF OBJECT_ID(N'VijayData2627.dbo.[GuestFolioAmend]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GuestFolioAmend]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GuestFolioAmend]')
           AND name IN ('FolioNo', 'Site_Code', 'GuestProf', 'RoomNo', 'OldDepDate', 'OldDepTime', 'DepDate', 'DepTime', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 12
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GuestFolioAmend] ([FolioNo], [Site_Code], [GuestProf], [RoomNo], [OldDepDate], [OldDepTime], [DepDate], [DepTime], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[FolioNo], s.[Site_Code], s.[GuestProf], s.[RoomNo], s.[OldDepDate], s.[OldDepTime], s.[DepDate], s.[DepTime], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[GuestFolioAmend] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[GuestFolioAmend] AS d
                      WHERE d.[FolioNo] = s.[FolioNo] AND d.[Site_Code] = s.[Site_Code] AND d.[OldDepDate] = s.[OldDepDate]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GuestFolio]';

IF OBJECT_ID(N'VijayData2627.dbo.[GuestFolio]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GuestFolio]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GuestFolio]')
           AND name IN ('DocId', 'FolioNo', 'Vtype', 'Vdate', 'Site_Code', 'Vprefix', 'GuestProf', 'Name', 'Add1', 'Add2', 'City', 'NoDays', 'SplitFolio', 'Remarks', 'Authorisation', 'Company', 'PurVisit', 'Nationality', 'ArrFrom', 'Destination', 'TravelMode', 'TclFac', 'Remark', 'RODisc', 'RSDisc', 'BookingDocId', 'U_Name', 'U_EntDt', 'U_AE', 'GroupCode', 'BussSource', 'MarketSeg', 'DepDate', 'TravelAgent', 'MFolioNo', 'Comp', 'MFolioNoDocid', 'LogSite_Code', 'RefNo', 'BookingSno', 'MyRate', 'DoorLock_Card_SN', 'RefBookNo')) < 43
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GuestFolio] ([DocId], [FolioNo], [Vtype], [Vdate], [Site_Code], [Vprefix], [GuestProf], [Name], [Add1], [Add2], [City], [NoDays], [SplitFolio], [Remarks], [Authorisation], [Company], [PurVisit], [Nationality], [ArrFrom], [Destination], [TravelMode], [TclFac], [Remark], [RODisc], [RSDisc], [BookingDocId], [U_Name], [U_EntDt], [U_AE], [GroupCode], [BussSource], [MarketSeg], [DepDate], [TravelAgent], [MFolioNo], [Comp], [MFolioNoDocid], [LogSite_Code], [RefNo], [BookingSno], [MyRate], [DoorLock_Card_SN], [RefBookNo])
    SELECT s.[DocId], s.[FolioNo], s.[Vtype], s.[Vdate], s.[Site_Code], s.[Vprefix], s.[GuestProf], s.[Name], s.[Add1], s.[Add2], s.[City], s.[NoDays], s.[SplitFolio], s.[Remarks], s.[Authorisation], s.[Company], s.[PurVisit], s.[Nationality], s.[ArrFrom], s.[Destination], s.[TravelMode], s.[TclFac], s.[Remark], s.[RODisc], s.[RSDisc], s.[BookingDocId], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[GroupCode], s.[BussSource], s.[MarketSeg], s.[DepDate], s.[TravelAgent], s.[MFolioNo], s.[Comp], s.[MFolioNoDocid], s.[LogSite_Code], s.[RefNo], s.[BookingSno], s.[MyRate], s.[DoorLock_Card_SN], s.[RefBookNo]
    FROM [VijayData2627].[dbo].[GuestFolio] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[GuestFolio] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GuestFeedBack]';

IF OBJECT_ID(N'VijayData2627.dbo.[GuestFeedBack]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GuestFeedBack]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GuestFeedBack]')
           AND name IN ('DocId', 'ServiceCode', 'FeedBack', 'Comments', 'Vdate', 'Vtime', 'Rating')) < 7
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GuestFeedBack] ([DocId], [ServiceCode], [FeedBack], [Comments], [Vdate], [Vtime], [Rating])
    SELECT s.[DocId], s.[ServiceCode], s.[FeedBack], s.[Comments], s.[Vdate], s.[Vtime], s.[Rating]
    FROM [VijayData2627].[dbo].[GuestFeedBack] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GuestComments]';

IF OBJECT_ID(N'VijayData2627.dbo.[GuestComments]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GuestComments]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GuestComments]')
           AND name IN ('Code', 'Name', 'Add1', 'Add2', 'City', 'PinCode', 'PhoneR', 'PhoneO', 'MobileNo', 'FaxNo', 'DatenTime', 'Company', 'BussSource', 'MarketSeg', 'FuncType', 'VType', 'Site_Code', 'U_Name', 'Comments', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 22
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GuestComments] ([Code], [Name], [Add1], [Add2], [City], [PinCode], [PhoneR], [PhoneO], [MobileNo], [FaxNo], [DatenTime], [Company], [BussSource], [MarketSeg], [FuncType], [VType], [Site_Code], [U_Name], [Comments], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Code], s.[Name], s.[Add1], s.[Add2], s.[City], s.[PinCode], s.[PhoneR], s.[PhoneO], s.[MobileNo], s.[FaxNo], s.[DatenTime], s.[Company], s.[BussSource], s.[MarketSeg], s.[FuncType], s.[VType], s.[Site_Code], s.[U_Name], s.[Comments], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[GuestComments] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[GuestComments] AS d
                      WHERE d.[Code] = s.[Code] AND d.[LogSite_Code] = s.[LogSite_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GrpBookingDetails]';

IF OBJECT_ID(N'VijayData2627.dbo.[GrpBookingDetails]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GrpBookingDetails]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GrpBookingDetails]')
           AND name IN ('BookingDocid', 'Sno', 'RoomDet', 'Adults', 'Childs', 'Tarrif', 'IncTax', 'LogSite_Code', 'U_EntDt', 'U_AE', 'RoomCat', 'Plan_Package', 'Remarks', 'ServiceChrg', 'RoomNo', 'RateCode', 'ArrDate', 'ArrTime', 'NoDays', 'DepDate', 'Cancel', 'CancelDate', 'Site_Code', 'U_Name', 'DepTime', 'RoomTaxStru', 'CancelUName')) < 27
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GrpBookingDetails] ([BookingDocid], [Sno], [RoomDet], [Adults], [Childs], [Tarrif], [IncTax], [LogSite_Code], [U_EntDt], [U_AE], [RoomCat], [Plan_Package], [Remarks], [ServiceChrg], [RoomNo], [RateCode], [ArrDate], [ArrTime], [NoDays], [DepDate], [Cancel], [CancelDate], [Site_Code], [U_Name], [DepTime], [RoomTaxStru], [CancelUName])
    SELECT s.[BookingDocid], s.[Sno], s.[RoomDet], s.[Adults], s.[Childs], s.[Tarrif], s.[IncTax], s.[LogSite_Code], s.[U_EntDt], s.[U_AE], s.[RoomCat], s.[Plan_Package], s.[Remarks], s.[ServiceChrg], s.[RoomNo], s.[RateCode], s.[ArrDate], s.[ArrTime], s.[NoDays], s.[DepDate], s.[Cancel], s.[CancelDate], s.[Site_Code], s.[U_Name], s.[DepTime], s.[RoomTaxStru], s.[CancelUName]
    FROM [VijayData2627].[dbo].[GrpBookingDetails] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[GrpBookingDetails] AS d
                      WHERE d.[BookingDocid] = s.[BookingDocid] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GroupProf]';

IF OBJECT_ID(N'VijayData2627.dbo.[GroupProf]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GroupProf]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GroupProf]')
           AND name IN ('Code', 'Name', 'Add1', 'Add2', 'City', 'Type', 'ConName', 'PhoneNo', 'Comments1', 'Comments2', 'Comments3', 'TravelAgency', 'MarketSeg', 'BusSource', 'GroupType', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 20
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GroupProf] ([Code], [Name], [Add1], [Add2], [City], [Type], [ConName], [PhoneNo], [Comments1], [Comments2], [Comments3], [TravelAgency], [MarketSeg], [BusSource], [GroupType], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Code], s.[Name], s.[Add1], s.[Add2], s.[City], s.[Type], s.[ConName], s.[PhoneNo], s.[Comments1], s.[Comments2], s.[Comments3], s.[TravelAgency], s.[MarketSeg], s.[BusSource], s.[GroupType], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[GroupProf] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[GroupProf] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GroupFolioMore]';

IF OBJECT_ID(N'VijayData2627.dbo.[GroupFolioMore]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GroupFolioMore]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GroupFolioMore]')
           AND name IN ('DocId', 'Sno', 'Name', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GroupFolioMore] ([DocId], [Sno], [Name], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[DocId], s.[Sno], s.[Name], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[GroupFolioMore] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[GroupFolioMore] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GroupCatalog]';

IF OBJECT_ID(N'VijayData2627.dbo.[GroupCatalog]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GroupCatalog]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GroupCatalog]')
           AND name IN ('CatCode', 'ItemCatCode', 'Limit', 'U_Name', 'U_EntDate', 'Site_Code', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GroupCatalog] ([CatCode], [ItemCatCode], [Limit], [U_Name], [U_EntDate], [Site_Code], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[CatCode], s.[ItemCatCode], s.[Limit], s.[U_Name], s.[U_EntDate], s.[Site_Code], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[GroupCatalog] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GodownMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[GodownMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GodownMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GodownMast]')
           AND name IN ('Code', 'Name', 'ShortName', 'U_Name', 'U_EntDt', 'U_AE', 'DepartCode', 'SysYn', 'Site_Code', 'LogSite_Code')) < 10
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GodownMast] ([Code], [Name], [ShortName], [U_Name], [U_EntDt], [U_AE], [DepartCode], [SysYn], [Site_Code], [LogSite_Code])
    SELECT s.[Code], s.[Name], s.[ShortName], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[DepartCode], s.[SysYn], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[GodownMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[GodownMast] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [GIN]';

IF OBJECT_ID(N'VijayData2627.dbo.[GIN]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[GIN]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[GIN]')
           AND name IN ('Docid', 'VNo', 'VDate', 'VPrefix', 'VType', 'Site_Code', 'OCDocid', 'OCDate', 'PartyCode', 'PartyName', 'GodownCode', 'Remark', 'DebitNote', 'F4No', 'RateDiffDetail', 'D3Desp', 'GRNLineRej', 'POrdDocid', 'POrdDate', 'ChalNo', 'ChalDate', 'MemINVNo', 'MemInvDate', 'InspectedBy', 'ApprovedBy', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 29
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[GIN] ([Docid], [VNo], [VDate], [VPrefix], [VType], [Site_Code], [OCDocid], [OCDate], [PartyCode], [PartyName], [GodownCode], [Remark], [DebitNote], [F4No], [RateDiffDetail], [D3Desp], [GRNLineRej], [POrdDocid], [POrdDate], [ChalNo], [ChalDate], [MemINVNo], [MemInvDate], [InspectedBy], [ApprovedBy], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Docid], s.[VNo], s.[VDate], s.[VPrefix], s.[VType], s.[Site_Code], s.[OCDocid], s.[OCDate], s.[PartyCode], s.[PartyName], s.[GodownCode], s.[Remark], s.[DebitNote], s.[F4No], s.[RateDiffDetail], s.[D3Desp], s.[GRNLineRej], s.[POrdDocid], s.[POrdDate], s.[ChalNo], s.[ChalDate], s.[MemINVNo], s.[MemInvDate], s.[InspectedBy], s.[ApprovedBy], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[GIN] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[GIN] AS d
                      WHERE d.[Docid] = s.[Docid]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [FunctionType]';

IF OBJECT_ID(N'VijayData2627.dbo.[FunctionType]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[FunctionType]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[FunctionType]')
           AND name IN ('Code', 'Name', 'Status', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[FunctionType] ([Code], [Name], [Status], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Code], s.[Name], s.[Status], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[FunctionType] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[FunctionType] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [FreeItemDetail]';

IF OBJECT_ID(N'VijayData2627.dbo.[FreeItemDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[FreeItemDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[FreeItemDetail]')
           AND name IN ('Code', 'SNo', 'SchemeCode', 'RestCode', 'FreeItem', 'FreeQty', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 11
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[FreeItemDetail] ([Code], [SNo], [SchemeCode], [RestCode], [FreeItem], [FreeQty], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Code], s.[SNo], s.[SchemeCode], s.[RestCode], s.[FreeItem], s.[FreeQty], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[FreeItemDetail] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[FreeItemDetail] AS d
                      WHERE d.[Code] = s.[Code] AND d.[SNo] = s.[SNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [ForExTrans]';

IF OBJECT_ID(N'VijayData2627.dbo.[ForExTrans]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[ForExTrans]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[ForExTrans]')
           AND name IN ('DocId', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'VDate', 'ForExCode', 'Qty', 'Rate', 'Amount', 'PayMode', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'Remarks')) < 16
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[ForExTrans] ([DocId], [Vtype], [VNo], [Site_Code], [Vprefix], [VDate], [ForExCode], [Qty], [Rate], [Amount], [PayMode], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [Remarks])
    SELECT s.[DocId], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[VDate], s.[ForExCode], s.[Qty], s.[Rate], s.[Amount], s.[PayMode], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[Remarks]
    FROM [VijayData2627].[dbo].[ForExTrans] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[ForExTrans] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [ForEx]';

IF OBJECT_ID(N'VijayData2627.dbo.[ForEx]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[ForEx]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[ForEx]')
           AND name IN ('Code', 'Name', 'Rate', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[ForEx] ([Code], [Name], [Rate], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Code], s.[Name], s.[Rate], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[ForEx] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[ForEx] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [FOMBillDetails]';

IF OBJECT_ID(N'VijayData2627.dbo.[FOMBillDetails]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[FOMBillDetails]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[FOMBillDetails]')
           AND name IN ('Bill_No', 'Bill_Date', 'FolioNo', 'Guestname', 'BillAmt', 'SettMode', 'SettAmt', 'Status', 'U_Name', 'SiteCode', 'U_EntDt', 'U_AE', 'FolioNoDocid', 'LogSite_Code', 'SendTF')) < 15
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[FOMBillDetails] ([Bill_No], [Bill_Date], [FolioNo], [Guestname], [BillAmt], [SettMode], [SettAmt], [Status], [U_Name], [SiteCode], [U_EntDt], [U_AE], [FolioNoDocid], [LogSite_Code], [SendTF])
    SELECT s.[Bill_No], s.[Bill_Date], s.[FolioNo], s.[Guestname], s.[BillAmt], s.[SettMode], s.[SettAmt], s.[Status], s.[U_Name], s.[SiteCode], s.[U_EntDt], s.[U_AE], s.[FolioNoDocid], s.[LogSite_Code], s.[SendTF]
    FROM [VijayData2627].[dbo].[FOMBillDetails] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [FOMBillChangeDetails]';

IF OBJECT_ID(N'VijayData2627.dbo.[FOMBillChangeDetails]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[FOMBillChangeDetails]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[FOMBillChangeDetails]')
           AND name IN ('FolioNODocid', 'Bill_No', 'U_Name', 'BillChangeDate', 'BillAmt', 'SettleAmt', 'NextSettleAmt', 'SettledBy', 'BillSettleDate', 'LogSite_Code', 'U_EntDt', 'U_AE', 'Site_Code')) < 13
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[FOMBillChangeDetails] ([FolioNODocid], [Bill_No], [U_Name], [BillChangeDate], [BillAmt], [SettleAmt], [NextSettleAmt], [SettledBy], [BillSettleDate], [LogSite_Code], [U_EntDt], [U_AE], [Site_Code])
    SELECT s.[FolioNODocid], s.[Bill_No], s.[U_Name], s.[BillChangeDate], s.[BillAmt], s.[SettleAmt], s.[NextSettleAmt], s.[SettledBy], s.[BillSettleDate], s.[LogSite_Code], s.[U_EntDt], s.[U_AE], s.[Site_Code]
    FROM [VijayData2627].[dbo].[FOMBillChangeDetails] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [FolioLog]';

IF OBJECT_ID(N'VijayData2627.dbo.[FolioLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[FolioLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[FolioLog]')
           AND name IN ('Id', 'FolionoDocid', 'Flag', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[FolioLog] ([Id], [FolionoDocid], [Flag], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Id], s.[FolionoDocid], s.[Flag], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[FolioLog] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [FixedCharge]';

IF OBJECT_ID(N'VijayData2627.dbo.[FixedCharge]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[FixedCharge]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[FixedCharge]')
           AND name IN ('Code', 'Name', 'SName', 'Revcode', 'TaxInc', 'TaxStru', 'PrintOption', 'PostingMethod', 'ChargeType', 'FlatRate', 'Adult', 'Child', 'ExtraAdult', 'ExtraChild', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'ChgCategory', 'PaxMultiply', 'PalnVariation')) < 22
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[FixedCharge] ([Code], [Name], [SName], [Revcode], [TaxInc], [TaxStru], [PrintOption], [PostingMethod], [ChargeType], [FlatRate], [Adult], [Child], [ExtraAdult], [ExtraChild], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [ChgCategory], [PaxMultiply], [PalnVariation])
    SELECT s.[Code], s.[Name], s.[SName], s.[Revcode], s.[TaxInc], s.[TaxStru], s.[PrintOption], s.[PostingMethod], s.[ChargeType], s.[FlatRate], s.[Adult], s.[Child], s.[ExtraAdult], s.[ExtraChild], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[ChgCategory], s.[PaxMultiply], s.[PalnVariation]
    FROM [VijayData2627].[dbo].[FixedCharge] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[FixedCharge] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [FeedBackMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[FeedBackMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[FeedBackMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[FeedBackMast]')
           AND name IN ('ServiceCode', 'ServiceName', 'RestCode')) < 3
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[FeedBackMast] ([ServiceCode], [ServiceName], [RestCode])
    SELECT s.[ServiceCode], s.[ServiceName], s.[RestCode]
    FROM [VijayData2627].[dbo].[FeedBackMast] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [FeatureMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[FeatureMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[FeatureMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[FeatureMast]')
           AND name IN ('Code', 'Name', 'Status', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[FeatureMast] ([Code], [Name], [Status], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Code], s.[Name], s.[Status], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[FeatureMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[FeatureMast] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [FaEnviro]';

IF OBJECT_ID(N'VijayData2627.dbo.[FaEnviro]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[FaEnviro]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[FaEnviro]')
           AND name IN ('Age1', 'Age2', 'Age3', 'Age4', 'Age5', 'Age6', 'Amt1', 'Amt2', 'Amt3', 'Amt4', 'Amt5', 'Amt6', 'TagadaHeader1', 'TagadaHeader2', 'TagadaHeader3', 'TagadaHeader4', 'TagadaHeader5', 'TagadaFooter1', 'TagadaFooter2', 'TagadaFooter3fa', 'TagadaFooter4', 'TagadaFooter5', 'CreditLimit', 'DebitLimit', 'NegativeCashBalance', 'ShowGroup', 'DonotShowGroup', 'ShowCurrentBalance', 'VerticleBalanceSheet', 'ShowQty', 'ShowCityName', 'LedDivCode', 'LedSiteCode', 'LedPrefix', 'daterfill', 'titlerfill', 'pagenofill', 'RunPIF', 'FilterAC', 'AddressHelp', 'DateLock', 'CashBookBalance', 'MonthTotal', 'OnLineAdjustment', 'linefiller', 'OpStockQTY', 'OpStockValue', 'ClStockQTY', 'ClStockValue', 'CashBookPage', 'CityNameDisp', 'ToBy', 'RepToBy', 'PreBal', 'PDCDt', 'Site_Code', 'LogSite_Code', 'TagadaFooter3', 'KDate')) < 59
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[FaEnviro] ([Age1], [Age2], [Age3], [Age4], [Age5], [Age6], [Amt1], [Amt2], [Amt3], [Amt4], [Amt5], [Amt6], [TagadaHeader1], [TagadaHeader2], [TagadaHeader3], [TagadaHeader4], [TagadaHeader5], [TagadaFooter1], [TagadaFooter2], [TagadaFooter3fa], [TagadaFooter4], [TagadaFooter5], [CreditLimit], [DebitLimit], [NegativeCashBalance], [ShowGroup], [DonotShowGroup], [ShowCurrentBalance], [VerticleBalanceSheet], [ShowQty], [ShowCityName], [LedDivCode], [LedSiteCode], [LedPrefix], [daterfill], [titlerfill], [pagenofill], [RunPIF], [FilterAC], [AddressHelp], [DateLock], [CashBookBalance], [MonthTotal], [OnLineAdjustment], [linefiller], [OpStockQTY], [OpStockValue], [ClStockQTY], [ClStockValue], [CashBookPage], [CityNameDisp], [ToBy], [RepToBy], [PreBal], [PDCDt], [Site_Code], [LogSite_Code], [TagadaFooter3], [KDate])
    SELECT s.[Age1], s.[Age2], s.[Age3], s.[Age4], s.[Age5], s.[Age6], s.[Amt1], s.[Amt2], s.[Amt3], s.[Amt4], s.[Amt5], s.[Amt6], s.[TagadaHeader1], s.[TagadaHeader2], s.[TagadaHeader3], s.[TagadaHeader4], s.[TagadaHeader5], s.[TagadaFooter1], s.[TagadaFooter2], s.[TagadaFooter3fa], s.[TagadaFooter4], s.[TagadaFooter5], s.[CreditLimit], s.[DebitLimit], s.[NegativeCashBalance], s.[ShowGroup], s.[DonotShowGroup], s.[ShowCurrentBalance], s.[VerticleBalanceSheet], s.[ShowQty], s.[ShowCityName], s.[LedDivCode], s.[LedSiteCode], s.[LedPrefix], s.[daterfill], s.[titlerfill], s.[pagenofill], s.[RunPIF], s.[FilterAC], s.[AddressHelp], s.[DateLock], s.[CashBookBalance], s.[MonthTotal], s.[OnLineAdjustment], s.[linefiller], s.[OpStockQTY], s.[OpStockValue], s.[ClStockQTY], s.[ClStockValue], s.[CashBookPage], s.[CityNameDisp], s.[ToBy], s.[RepToBy], s.[PreBal], s.[PDCDt], s.[Site_Code], s.[LogSite_Code], s.[TagadaFooter3], s.[KDate]
    FROM [VijayData2627].[dbo].[FaEnviro] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [FacilityMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[FacilityMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[FacilityMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[FacilityMast]')
           AND name IN ('Code', 'Name', 'ShortName', 'ChargeType', 'ChargeUnit', 'AcCode', 'TaxStru', 'UnitRate', 'ActiveYN', 'RoundOff', 'ROffType', 'MeterReading', 'U_AE', 'U_Name', 'U_EntDt', 'Site_Code', 'LogSite_Code', 'SACCode')) < 18
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[FacilityMast] ([Code], [Name], [ShortName], [ChargeType], [ChargeUnit], [AcCode], [TaxStru], [UnitRate], [ActiveYN], [RoundOff], [ROffType], [MeterReading], [U_AE], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code], [SACCode])
    SELECT s.[Code], s.[Name], s.[ShortName], s.[ChargeType], s.[ChargeUnit], s.[AcCode], s.[TaxStru], s.[UnitRate], s.[ActiveYN], s.[RoundOff], s.[ROffType], s.[MeterReading], s.[U_AE], s.[U_Name], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code], s.[SACCode]
    FROM [VijayData2627].[dbo].[FacilityMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[FacilityMast] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [FacilityBill2]';

IF OBJECT_ID(N'VijayData2627.dbo.[FacilityBill2]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[FacilityBill2]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[FacilityBill2]')
           AND name IN ('DocId', 'Docid1', 'SNo1', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'RestCode', 'TaxCode', 'BaseValue', 'TaxPer', 'TaxAmt', 'U_Name', 'U_EntDt', 'U_AE', 'DelFlag', 'LogSite_Code', 'SNo')) < 19
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[FacilityBill2] ([DocId], [Docid1], [SNo1], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [RestCode], [TaxCode], [BaseValue], [TaxPer], [TaxAmt], [U_Name], [U_EntDt], [U_AE], [DelFlag], [LogSite_Code], [SNo])
    SELECT s.[DocId], s.[Docid1], s.[SNo1], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[RestCode], s.[TaxCode], s.[BaseValue], s.[TaxPer], s.[TaxAmt], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[DelFlag], s.[LogSite_Code], s.[SNo]
    FROM [VijayData2627].[dbo].[FacilityBill2] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[FacilityBill2] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Docid1] = s.[Docid1] AND d.[SNo1] = s.[SNo1]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [FacilityBill1]';

IF OBJECT_ID(N'VijayData2627.dbo.[FacilityBill1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[FacilityBill1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[FacilityBill1]')
           AND name IN ('Docid', 'Vno', 'Sno', 'VType', 'Vdate', 'Vprefix', 'PartyCode', 'DocId1', 'FacilityCode', 'Unit', 'UnitRate', 'Amount', 'ForPeriod', 'ToPeriod', 'FacilityTax', 'AppDate', 'RevCode', 'U_AE', 'U_Name', 'U_EntDt', 'Site_Code', 'LogSite_Code', 'TaxStru', 'DiscPer', 'DiscAmt', 'LocationCode')) < 26
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[FacilityBill1] ([Docid], [Vno], [Sno], [VType], [Vdate], [Vprefix], [PartyCode], [DocId1], [FacilityCode], [Unit], [UnitRate], [Amount], [ForPeriod], [ToPeriod], [FacilityTax], [AppDate], [RevCode], [U_AE], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code], [TaxStru], [DiscPer], [DiscAmt], [LocationCode])
    SELECT s.[Docid], s.[Vno], s.[Sno], s.[VType], s.[Vdate], s.[Vprefix], s.[PartyCode], s.[DocId1], s.[FacilityCode], s.[Unit], s.[UnitRate], s.[Amount], s.[ForPeriod], s.[ToPeriod], s.[FacilityTax], s.[AppDate], s.[RevCode], s.[U_AE], s.[U_Name], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code], s.[TaxStru], s.[DiscPer], s.[DiscAmt], s.[LocationCode]
    FROM [VijayData2627].[dbo].[FacilityBill1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[FacilityBill1] AS d
                      WHERE d.[Docid] = s.[Docid] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [FacilityBill]';

IF OBJECT_ID(N'VijayData2627.dbo.[FacilityBill]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[FacilityBill]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[FacilityBill]')
           AND name IN ('Docid', 'VType', 'Vdate', 'Vno', 'Vprefix', 'PartyCode', 'LocationCode', 'DueDate', 'ForPeriod', 'ToPeriod', 'U_AE', 'U_Name', 'U_EntDt', 'Site_Code', 'LogSite_Code', 'Remark')) < 16
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[FacilityBill] ([Docid], [VType], [Vdate], [Vno], [Vprefix], [PartyCode], [LocationCode], [DueDate], [ForPeriod], [ToPeriod], [U_AE], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code], [Remark])
    SELECT s.[Docid], s.[VType], s.[Vdate], s.[Vno], s.[Vprefix], s.[PartyCode], s.[LocationCode], s.[DueDate], s.[ForPeriod], s.[ToPeriod], s.[U_AE], s.[U_Name], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code], s.[Remark]
    FROM [VijayData2627].[dbo].[FacilityBill] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[FacilityBill] AS d
                      WHERE d.[Docid] = s.[Docid]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [ExpSheet]';

IF OBJECT_ID(N'VijayData2627.dbo.[ExpSheet]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[ExpSheet]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[ExpSheet]')
           AND name IN ('DocId', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'Vtime', 'Remarks', 'Amount', 'U_Name', 'U_EntDt', 'U_AE', 'AgAc', 'LogSite_Code')) < 14
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[ExpSheet] ([DocId], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [Vtime], [Remarks], [Amount], [U_Name], [U_EntDt], [U_AE], [AgAc], [LogSite_Code])
    SELECT s.[DocId], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[Vtime], s.[Remarks], s.[Amount], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[AgAc], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[ExpSheet] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[ExpSheet] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [EPABX_Data]';

IF OBJECT_ID(N'VijayData2627.dbo.[EPABX_Data]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[EPABX_Data]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[EPABX_Data]')
           AND name IN ('ID', 'V_TYPE', 'PNT_NO', 'Extension', 'RoomNo', 'ShopNo', 'DepCode', 'CALL_START_DATE', 'CALL_START_TIME', 'CALL_DURATION', 'DIALED_NO', 'CALL_INFO', 'CALL_RATE', 'CALL_AMT', 'Site_Code', 'LogSite_Code')) < 16
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[EPABX_Data] ([ID], [V_TYPE], [PNT_NO], [Extension], [RoomNo], [ShopNo], [DepCode], [CALL_START_DATE], [CALL_START_TIME], [CALL_DURATION], [DIALED_NO], [CALL_INFO], [CALL_RATE], [CALL_AMT], [Site_Code], [LogSite_Code])
    SELECT s.[ID], s.[V_TYPE], s.[PNT_NO], s.[Extension], s.[RoomNo], s.[ShopNo], s.[DepCode], s.[CALL_START_DATE], s.[CALL_START_TIME], s.[CALL_DURATION], s.[DIALED_NO], s.[CALL_INFO], s.[CALL_RATE], s.[CALL_AMT], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[EPABX_Data] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[EPABX_Data] AS d
                      WHERE d.[ID] = s.[ID] AND d.[Site_Code] = s.[Site_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Enviro]';

IF OBJECT_ID(N'VijayData2627.dbo.[Enviro]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Enviro]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Enviro]')
           AND name IN ('Cash_Ac', 'DiscountAc', 'RoundOffAc', 'CommAC', 'Editopen', 'PF_LIMIT', 'PF_EMPLOYEE', 'PF_EMPLOYER', 'ESI_LIMIT', 'esi_employee', 'SALARY_AC', 'AttendType', 'Loan_AC', 'AdvanceAc', 'RoundOff', 'Checkout', 'PurchaseAdd1', 'PurchaseDed1', 'PurchaseAdd2', 'PurchaseDed2', 'Variation', 'CheckoutVar', 'HotelLogo', 'RoomChrgDueAc', 'RoomTaxDueAc', 'ReservationPrinting', 'ArrDateTimeEdit', 'DefCompGroup', 'Rate1', 'Rate2', 'Rate3', 'Rate4', 'Rate5', 'LessFreightAc', 'WagesAc', 'CashPayType', 'OutletDiscAc', 'OutletRoundAc', 'CommissionAc', 'RoomPayType', 'calcMethod', 'NCUR', 'SiteCode', 'Bill_Footer', 'Bill_Header', 'CancellationAC', 'HallRoundOff', 'HallDiscAC', 'CashPurchAc', 'Postingtype', 'OutDoorCatering', 'SundryPassword', 'CatalogLimit', 'OutdoorSaleAC', 'IndoorSaleAC', 'OutdoorPartyAC', 'IndoorPartyAC', 'KOTPrinting', 'TaxSummary', 'TOKENPrint', 'DummyTravelAc', 'menuX', 'menuY', 'menuDISP', 'LogSite_Code', 'BookingPartyAc', 'RoomChrgPostingType', 'PlanMastType', 'PostComplimentaryBills', 'PostNilLT', 'AllowRoomSettlement', 'SplitYN', 'PlanCalc', 'AllowBillOnHoldSettlement', 'MultiBillGeneration', 'SmartPurchaseOrder', 'MemberShipModule', 'FomBillCopies', 'SMSMessaging', 'MobileNo', 'SMSOption', 'MobileSet', 'SMSMessage', 'AdvanceRRoomRent', 'PrintRcpt', 'RcptPrinting', 'BillAmendMode', 'AmendRevenue', 'IncCashPurchInFOCC', 'RoomRentBefChkOut', 'RoomRentChkOutPost', 'POSBillAtNightAudit', 'NoShowAtNightAudit', 'DisplayPort', 'DisplayMode', 'FreeItemInKOT', 'POSSaleBillModification', 'VariationBefore', 'BookingSlipFooter1', 'BookingSlipFooter2', 'CashCardDebitAc', 'CashCardCreditAc', 'CashCardSecurityAc', 'OrderBookingPrintType', 'BillPrintingSummerised', 'PurchaseGodown', 'RptCashierSettlementAllUser', 'GRCMandatory', 'NCKOTPercentage', 'KOTHeader1', 'KOTHeader2', 'KOTHeader3', 'KOTHeader4', 'GAppCompYear', 'GMonthConsidered', 'GWorkingDaysInAMonth', 'GDaysSalary', 'POSSaleBillEditLog', 'ImportOptionInPurchase', 'ReqCompWise', 'AcFieldAlterable', 'CreditCardInfoMandatory', 'ExpMfdDateInMR', 'ExciseInvoiceTaxStru', 'AddModifyEntryInBackDate', 'KOTAtNightAudit', 'ResInstruction1', 'ResInstruction2', 'ResInstruction3', 'ResInstruction4', 'ResInstruction5', 'ResInstruction6', 'ResInstruction7', 'ResInstruction8', 'ResInstruction9', 'ResInstruction10', 'ResInstruction11', 'ResInstruction12', 'FPInstruction1', 'FPInstruction2', 'FPInstruction3', 'FPInstruction4', 'FPInstruction5', 'FPInstruction6', 'FPInstruction7', 'FPInstruction8', 'FPInstruction9', 'FPInstruction10', 'FPInstruction11', 'FPInstruction12', 'RateEditableInPO', 'RateEditableInStockIssue', 'RoomRateEditable', 'RoomIncTaxEditable', 'RoomServiceChargeEditable', 'PostRoomDiscSeparately', 'BarCodeFeatureInPurchase', 'SMSFeatureYN', 'ESIBasic', 'ESIDA', 'ESIHRA', 'ESIConvey', 'ESIOther', 'ESILTA', 'KitchenStockReport', 'ItemRateInMRBasedOn', 'ItemRateInPurchaseBillBasedOn', 'PurchaseBillPrinting', 'ReprintingOnSaleBillYN', 'DTCPETakeEffectHeadToSite', 'PostPOSDiscSeparately', 'HideSettledBillsOnSaleBillYN', 'ResetTokenAtNightAudit', 'POSSaleRevenueBifercation', 'KOTPrintEdited', 'RoomCheckOutClearanceYN', 'POSBillCalcType', 'PurchaseTaxVAT', 'POSPrintingDelay', 'ImprestAmount', 'PlanTariffNarration', 'GuestChargesDeleteLog', 'SaleTaxVAT', 'KOTOutletSelection', 'PlanSelectionBasedOn', 'SmartCardItem', 'HTWCurDateEdit', 'MobileInfoMandatory', 'CoversMandatory', 'MobileNoMandatory', 'RRIncTaxDefault', 'RRSerChrgDefault', 'AutoSplitYN', 'ShowTitleBar', 'ShowMenuBar', 'ShowSubMenuBar', 'ShowShortCutsBar', 'ServiceTaxOnServiceChargeYN', 'SeperateReservationLetterAsPerStatusYN', 'NewTarrifForOldGuest', 'ReservationExpandOnSaveYN', 'BlockInvalidTarrifIncTaxYN', 'RoomCheckInClearanceYN', 'RoomRateAsPerRoomMaster', 'IncReservationInBlankGRC', 'StockRecGodown', 'AutoPrintKOTYN', 'AutoFillItemInKitchenClosingYN', 'FOMBillReprintAutoRefresh', 'NegativeStockAllowYN', 'BanquetKitchen', 'ShowAllAcInPurcahseCategoryYN', 'CashCardApplYN', 'UserWiseShowOutletYN', 'PANNOMandatoryYN', 'SMARTCARDRECIEPTPrintingDW', 'U_AE_FOMBillSetE', 'DisplayRackRow', 'DisplayRackCol', 'DisplayRackFontSize', 'PrintSeperateItemInPOSBill')) < 221
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Enviro] ([Cash_Ac], [DiscountAc], [RoundOffAc], [CommAC], [Editopen], [PF_LIMIT], [PF_EMPLOYEE], [PF_EMPLOYER], [ESI_LIMIT], [esi_employee], [SALARY_AC], [AttendType], [Loan_AC], [AdvanceAc], [RoundOff], [Checkout], [PurchaseAdd1], [PurchaseDed1], [PurchaseAdd2], [PurchaseDed2], [Variation], [CheckoutVar], [HotelLogo], [RoomChrgDueAc], [RoomTaxDueAc], [ReservationPrinting], [ArrDateTimeEdit], [DefCompGroup], [Rate1], [Rate2], [Rate3], [Rate4], [Rate5], [LessFreightAc], [WagesAc], [CashPayType], [OutletDiscAc], [OutletRoundAc], [CommissionAc], [RoomPayType], [calcMethod], [NCUR], [SiteCode], [Bill_Footer], [Bill_Header], [CancellationAC], [HallRoundOff], [HallDiscAC], [CashPurchAc], [Postingtype], [OutDoorCatering], [SundryPassword], [CatalogLimit], [OutdoorSaleAC], [IndoorSaleAC], [OutdoorPartyAC], [IndoorPartyAC], [KOTPrinting], [TaxSummary], [TOKENPrint], [DummyTravelAc], [menuX], [menuY], [menuDISP], [LogSite_Code], [BookingPartyAc], [RoomChrgPostingType], [PlanMastType], [PostComplimentaryBills], [PostNilLT], [AllowRoomSettlement], [SplitYN], [PlanCalc], [AllowBillOnHoldSettlement], [MultiBillGeneration], [SmartPurchaseOrder], [MemberShipModule], [FomBillCopies], [SMSMessaging], [MobileNo], [SMSOption], [MobileSet], [SMSMessage], [AdvanceRRoomRent], [PrintRcpt], [RcptPrinting], [BillAmendMode], [AmendRevenue], [IncCashPurchInFOCC], [RoomRentBefChkOut], [RoomRentChkOutPost], [POSBillAtNightAudit], [NoShowAtNightAudit], [DisplayPort], [DisplayMode], [FreeItemInKOT], [POSSaleBillModification], [VariationBefore], [BookingSlipFooter1], [BookingSlipFooter2], [CashCardDebitAc], [CashCardCreditAc], [CashCardSecurityAc], [OrderBookingPrintType], [BillPrintingSummerised], [PurchaseGodown], [RptCashierSettlementAllUser], [GRCMandatory], [NCKOTPercentage], [KOTHeader1], [KOTHeader2], [KOTHeader3], [KOTHeader4], [GAppCompYear], [GMonthConsidered], [GWorkingDaysInAMonth], [GDaysSalary], [POSSaleBillEditLog], [ImportOptionInPurchase], [ReqCompWise], [AcFieldAlterable], [CreditCardInfoMandatory], [ExpMfdDateInMR], [ExciseInvoiceTaxStru], [AddModifyEntryInBackDate], [KOTAtNightAudit], [ResInstruction1], [ResInstruction2], [ResInstruction3], [ResInstruction4], [ResInstruction5], [ResInstruction6], [ResInstruction7], [ResInstruction8], [ResInstruction9], [ResInstruction10], [ResInstruction11], [ResInstruction12], [FPInstruction1], [FPInstruction2], [FPInstruction3], [FPInstruction4], [FPInstruction5], [FPInstruction6], [FPInstruction7], [FPInstruction8], [FPInstruction9], [FPInstruction10], [FPInstruction11], [FPInstruction12], [RateEditableInPO], [RateEditableInStockIssue], [RoomRateEditable], [RoomIncTaxEditable], [RoomServiceChargeEditable], [PostRoomDiscSeparately], [BarCodeFeatureInPurchase], [SMSFeatureYN], [ESIBasic], [ESIDA], [ESIHRA], [ESIConvey], [ESIOther], [ESILTA], [KitchenStockReport], [ItemRateInMRBasedOn], [ItemRateInPurchaseBillBasedOn], [PurchaseBillPrinting], [ReprintingOnSaleBillYN], [DTCPETakeEffectHeadToSite], [PostPOSDiscSeparately], [HideSettledBillsOnSaleBillYN], [ResetTokenAtNightAudit], [POSSaleRevenueBifercation], [KOTPrintEdited], [RoomCheckOutClearanceYN], [POSBillCalcType], [PurchaseTaxVAT], [POSPrintingDelay], [ImprestAmount], [PlanTariffNarration], [GuestChargesDeleteLog], [SaleTaxVAT], [KOTOutletSelection], [PlanSelectionBasedOn], [SmartCardItem], [HTWCurDateEdit], [MobileInfoMandatory], [CoversMandatory], [MobileNoMandatory], [RRIncTaxDefault], [RRSerChrgDefault], [AutoSplitYN], [ShowTitleBar], [ShowMenuBar], [ShowSubMenuBar], [ShowShortCutsBar], [ServiceTaxOnServiceChargeYN], [SeperateReservationLetterAsPerStatusYN], [NewTarrifForOldGuest], [ReservationExpandOnSaveYN], [BlockInvalidTarrifIncTaxYN], [RoomCheckInClearanceYN], [RoomRateAsPerRoomMaster], [IncReservationInBlankGRC], [StockRecGodown], [AutoPrintKOTYN], [AutoFillItemInKitchenClosingYN], [FOMBillReprintAutoRefresh], [NegativeStockAllowYN], [BanquetKitchen], [ShowAllAcInPurcahseCategoryYN], [CashCardApplYN], [UserWiseShowOutletYN], [PANNOMandatoryYN], [SMARTCARDRECIEPTPrintingDW], [U_AE_FOMBillSetE], [DisplayRackRow], [DisplayRackCol], [DisplayRackFontSize], [PrintSeperateItemInPOSBill])
    SELECT s.[Cash_Ac], s.[DiscountAc], s.[RoundOffAc], s.[CommAC], s.[Editopen], s.[PF_LIMIT], s.[PF_EMPLOYEE], s.[PF_EMPLOYER], s.[ESI_LIMIT], s.[esi_employee], s.[SALARY_AC], s.[AttendType], s.[Loan_AC], s.[AdvanceAc], s.[RoundOff], s.[Checkout], s.[PurchaseAdd1], s.[PurchaseDed1], s.[PurchaseAdd2], s.[PurchaseDed2], s.[Variation], s.[CheckoutVar], s.[HotelLogo], s.[RoomChrgDueAc], s.[RoomTaxDueAc], s.[ReservationPrinting], s.[ArrDateTimeEdit], s.[DefCompGroup], s.[Rate1], s.[Rate2], s.[Rate3], s.[Rate4], s.[Rate5], s.[LessFreightAc], s.[WagesAc], s.[CashPayType], s.[OutletDiscAc], s.[OutletRoundAc], s.[CommissionAc], s.[RoomPayType], s.[calcMethod], s.[NCUR], s.[SiteCode], s.[Bill_Footer], s.[Bill_Header], s.[CancellationAC], s.[HallRoundOff], s.[HallDiscAC], s.[CashPurchAc], s.[Postingtype], s.[OutDoorCatering], s.[SundryPassword], s.[CatalogLimit], s.[OutdoorSaleAC], s.[IndoorSaleAC], s.[OutdoorPartyAC], s.[IndoorPartyAC], s.[KOTPrinting], s.[TaxSummary], s.[TOKENPrint], s.[DummyTravelAc], s.[menuX], s.[menuY], s.[menuDISP], s.[LogSite_Code], s.[BookingPartyAc], s.[RoomChrgPostingType], s.[PlanMastType], s.[PostComplimentaryBills], s.[PostNilLT], s.[AllowRoomSettlement], s.[SplitYN], s.[PlanCalc], s.[AllowBillOnHoldSettlement], s.[MultiBillGeneration], s.[SmartPurchaseOrder], s.[MemberShipModule], s.[FomBillCopies], s.[SMSMessaging], s.[MobileNo], s.[SMSOption], s.[MobileSet], s.[SMSMessage], s.[AdvanceRRoomRent], s.[PrintRcpt], s.[RcptPrinting], s.[BillAmendMode], s.[AmendRevenue], s.[IncCashPurchInFOCC], s.[RoomRentBefChkOut], s.[RoomRentChkOutPost], s.[POSBillAtNightAudit], s.[NoShowAtNightAudit], s.[DisplayPort], s.[DisplayMode], s.[FreeItemInKOT], s.[POSSaleBillModification], s.[VariationBefore], s.[BookingSlipFooter1], s.[BookingSlipFooter2], s.[CashCardDebitAc], s.[CashCardCreditAc], s.[CashCardSecurityAc], s.[OrderBookingPrintType], s.[BillPrintingSummerised], s.[PurchaseGodown], s.[RptCashierSettlementAllUser], s.[GRCMandatory], s.[NCKOTPercentage], s.[KOTHeader1], s.[KOTHeader2], s.[KOTHeader3], s.[KOTHeader4], s.[GAppCompYear], s.[GMonthConsidered], s.[GWorkingDaysInAMonth], s.[GDaysSalary], s.[POSSaleBillEditLog], s.[ImportOptionInPurchase], s.[ReqCompWise], s.[AcFieldAlterable], s.[CreditCardInfoMandatory], s.[ExpMfdDateInMR], s.[ExciseInvoiceTaxStru], s.[AddModifyEntryInBackDate], s.[KOTAtNightAudit], s.[ResInstruction1], s.[ResInstruction2], s.[ResInstruction3], s.[ResInstruction4], s.[ResInstruction5], s.[ResInstruction6], s.[ResInstruction7], s.[ResInstruction8], s.[ResInstruction9], s.[ResInstruction10], s.[ResInstruction11], s.[ResInstruction12], s.[FPInstruction1], s.[FPInstruction2], s.[FPInstruction3], s.[FPInstruction4], s.[FPInstruction5], s.[FPInstruction6], s.[FPInstruction7], s.[FPInstruction8], s.[FPInstruction9], s.[FPInstruction10], s.[FPInstruction11], s.[FPInstruction12], s.[RateEditableInPO], s.[RateEditableInStockIssue], s.[RoomRateEditable], s.[RoomIncTaxEditable], s.[RoomServiceChargeEditable], s.[PostRoomDiscSeparately], s.[BarCodeFeatureInPurchase], s.[SMSFeatureYN], s.[ESIBasic], s.[ESIDA], s.[ESIHRA], s.[ESIConvey], s.[ESIOther], s.[ESILTA], s.[KitchenStockReport], s.[ItemRateInMRBasedOn], s.[ItemRateInPurchaseBillBasedOn], s.[PurchaseBillPrinting], s.[ReprintingOnSaleBillYN], s.[DTCPETakeEffectHeadToSite], s.[PostPOSDiscSeparately], s.[HideSettledBillsOnSaleBillYN], s.[ResetTokenAtNightAudit], s.[POSSaleRevenueBifercation], s.[KOTPrintEdited], s.[RoomCheckOutClearanceYN], s.[POSBillCalcType], s.[PurchaseTaxVAT], s.[POSPrintingDelay], s.[ImprestAmount], s.[PlanTariffNarration], s.[GuestChargesDeleteLog], s.[SaleTaxVAT], s.[KOTOutletSelection], s.[PlanSelectionBasedOn], s.[SmartCardItem], s.[HTWCurDateEdit], s.[MobileInfoMandatory], s.[CoversMandatory], s.[MobileNoMandatory], s.[RRIncTaxDefault], s.[RRSerChrgDefault], s.[AutoSplitYN], s.[ShowTitleBar], s.[ShowMenuBar], s.[ShowSubMenuBar], s.[ShowShortCutsBar], s.[ServiceTaxOnServiceChargeYN], s.[SeperateReservationLetterAsPerStatusYN], s.[NewTarrifForOldGuest], s.[ReservationExpandOnSaveYN], s.[BlockInvalidTarrifIncTaxYN], s.[RoomCheckInClearanceYN], s.[RoomRateAsPerRoomMaster], s.[IncReservationInBlankGRC], s.[StockRecGodown], s.[AutoPrintKOTYN], s.[AutoFillItemInKitchenClosingYN], s.[FOMBillReprintAutoRefresh], s.[NegativeStockAllowYN], s.[BanquetKitchen], s.[ShowAllAcInPurcahseCategoryYN], s.[CashCardApplYN], s.[UserWiseShowOutletYN], s.[PANNOMandatoryYN], s.[SMARTCARDRECIEPTPrintingDW], s.[U_AE_FOMBillSetE], s.[DisplayRackRow], s.[DisplayRackCol], s.[DisplayRackFontSize], s.[PrintSeperateItemInPOSBill]
    FROM [VijayData2627].[dbo].[Enviro] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Enviro] AS d
                      WHERE d.[LogSite_Code] = s.[LogSite_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Employee]';

IF OBJECT_ID(N'VijayData2627.dbo.[Employee]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Employee]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Employee]')
           AND name IN ('Code', 'Name', 'Sex', 'Designation', 'Category', 'F_Name', 'Birth_Date', 'Add1', 'Add2', 'Marital', 'Spouse', 'Qualification', 'Joining_Date', 'Resign_Date', 'ESI_Code', 'PF_Code', 'Basic', 'DA', 'HRA', 'Income_Tax', 'Other_Allow', 'Other_Deduc', 'Conveyance', 'Medical', 'LTA', 'PF', 'ESI', 'Pf_Yn', 'OP_PF_Balance', 'OP_Loan', 'OP_Inst', 'OP_Advance', 'Tot_CL_Allow', 'Tot_EL_Allow', 'OP_Earned', 'OP_Casual', 'Curr_Earned', 'Curr_Casual', 'Curr_ESI_Balance', 'Curr_PF_Balance', 'AC_Code', 'Phone', 'PAN', 'INCREMENT', 'SUNDAY', 'Tot_DL_Allow', 'Tot_VL_Allow', 'Curr_VL', 'Curr_DL', 'BankAcNo', 'IncrMth', 'OTRate', 'Offday', 'LoanAc', 'Site_Code', 'U_EntDt', 'U_AE', 'LogSite_Code', 'ActiveYN', 'ESI_YN', 'U_Name', 'PicPath', 'IdPicPath', 'Department', 'IdProof', 'IdProofNo')) < 66
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Employee] ([Code], [Name], [Sex], [Designation], [Category], [F_Name], [Birth_Date], [Add1], [Add2], [Marital], [Spouse], [Qualification], [Joining_Date], [Resign_Date], [ESI_Code], [PF_Code], [Basic], [DA], [HRA], [Income_Tax], [Other_Allow], [Other_Deduc], [Conveyance], [Medical], [LTA], [PF], [ESI], [Pf_Yn], [OP_PF_Balance], [OP_Loan], [OP_Inst], [OP_Advance], [Tot_CL_Allow], [Tot_EL_Allow], [OP_Earned], [OP_Casual], [Curr_Earned], [Curr_Casual], [Curr_ESI_Balance], [Curr_PF_Balance], [AC_Code], [Phone], [PAN], [INCREMENT], [SUNDAY], [Tot_DL_Allow], [Tot_VL_Allow], [Curr_VL], [Curr_DL], [BankAcNo], [IncrMth], [OTRate], [Offday], [LoanAc], [Site_Code], [U_EntDt], [U_AE], [LogSite_Code], [ActiveYN], [ESI_YN], [U_Name], [PicPath], [IdPicPath], [Department], [IdProof], [IdProofNo])
    SELECT s.[Code], s.[Name], s.[Sex], s.[Designation], s.[Category], s.[F_Name], s.[Birth_Date], s.[Add1], s.[Add2], s.[Marital], s.[Spouse], s.[Qualification], s.[Joining_Date], s.[Resign_Date], s.[ESI_Code], s.[PF_Code], s.[Basic], s.[DA], s.[HRA], s.[Income_Tax], s.[Other_Allow], s.[Other_Deduc], s.[Conveyance], s.[Medical], s.[LTA], s.[PF], s.[ESI], s.[Pf_Yn], s.[OP_PF_Balance], s.[OP_Loan], s.[OP_Inst], s.[OP_Advance], s.[Tot_CL_Allow], s.[Tot_EL_Allow], s.[OP_Earned], s.[OP_Casual], s.[Curr_Earned], s.[Curr_Casual], s.[Curr_ESI_Balance], s.[Curr_PF_Balance], s.[AC_Code], s.[Phone], s.[PAN], s.[INCREMENT], s.[SUNDAY], s.[Tot_DL_Allow], s.[Tot_VL_Allow], s.[Curr_VL], s.[Curr_DL], s.[BankAcNo], s.[IncrMth], s.[OTRate], s.[Offday], s.[LoanAc], s.[Site_Code], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[ActiveYN], s.[ESI_YN], s.[U_Name], s.[PicPath], s.[IdPicPath], s.[Department], s.[IdProof], s.[IdProofNo]
    FROM [VijayData2627].[dbo].[Employee] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Employee] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [EmpCategory]';

IF OBJECT_ID(N'VijayData2627.dbo.[EmpCategory]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[EmpCategory]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[EmpCategory]')
           AND name IN ('Code', 'Name', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'Type')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[EmpCategory] ([Code], [Name], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [Type])
    SELECT s.[Code], s.[Name], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[Type]
    FROM [VijayData2627].[dbo].[EmpCategory] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[EmpCategory] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [EmailSMSForward]';

IF OBJECT_ID(N'VijayData2627.dbo.[EmailSMSForward]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[EmailSMSForward]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[EmailSMSForward]')
           AND name IN ('Id', 'Type', 'MobileNo', 'EmailId', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'TxtMsg', 'FlagType', 'DepartCode', 'GuestMsg')) < 13
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[EmailSMSForward] ([Id], [Type], [MobileNo], [EmailId], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [TxtMsg], [FlagType], [DepartCode], [GuestMsg])
    SELECT s.[Id], s.[Type], s.[MobileNo], s.[EmailId], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[TxtMsg], s.[FlagType], s.[DepartCode], s.[GuestMsg]
    FROM [VijayData2627].[dbo].[EmailSMSForward] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[EmailSMSForward] AS d
                      WHERE d.[Id] = s.[Id] AND d.[LogSite_Code] = s.[LogSite_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [eInvoiceToken]';

IF OBJECT_ID(N'VijayData2627.dbo.[eInvoiceToken]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[eInvoiceToken]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[eInvoiceToken]')
           AND name IN ('TokenNo', 'TokenDateTime', 'ClientId', 'UserName', 'TokenExpiry')) < 5
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[eInvoiceToken] ([TokenNo], [TokenDateTime], [ClientId], [UserName], [TokenExpiry])
    SELECT s.[TokenNo], s.[TokenDateTime], s.[ClientId], s.[UserName], s.[TokenExpiry]
    FROM [VijayData2627].[dbo].[eInvoiceToken] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [eInvoiceEnviro]';

IF OBJECT_ID(N'VijayData2627.dbo.[eInvoiceEnviro]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[eInvoiceEnviro]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[eInvoiceEnviro]')
           AND name IN ('ASPId', 'ASPPwd', 'eInvUserName', 'eInvPwd')) < 4
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[eInvoiceEnviro] ([ASPId], [ASPPwd], [eInvUserName], [eInvPwd])
    SELECT s.[ASPId], s.[ASPPwd], s.[eInvUserName], s.[eInvPwd]
    FROM [VijayData2627].[dbo].[eInvoiceEnviro] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[eInvoiceEnviro] AS d
                      WHERE d.[ASPId] = s.[ASPId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [eInvoiceBill2]';

IF OBJECT_ID(N'VijayData2627.dbo.[eInvoiceBill2]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[eInvoiceBill2]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[eInvoiceBill2]')
           AND name IN ('DocId', 'SlNo', 'PrdDesc', 'IsServc', 'HsnCd', 'Barcde', 'Qty', 'FreeQty', 'Unit', 'UnitPrice', 'TotAmt', 'Discount', 'PreTaxVal', 'AssAmt', 'GstRt', 'IgstAmt', 'CgstAmt', 'SgstAmt', 'CesRt', 'CesAmt', 'CesNonAdvlAmt', 'StateCesRt', 'StateCesAmt', 'StateCesNonAdvlAmt', 'OthChrg', 'TotItemVal', 'OrdLineRef', 'OrgCntry', 'PrdSlNo', 'BchDtls_Nm', 'BchDtls_ExpDt', 'BchDtls_WrDt', 'AttribDtls_NM', 'AttribDtls_Val', 'ItemNo', 'PrdNm', 'IgstRt', 'CgstRt', 'SgstRt', 'cessrate')) < 40
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[eInvoiceBill2] ([DocId], [SlNo], [PrdDesc], [IsServc], [HsnCd], [Barcde], [Qty], [FreeQty], [Unit], [UnitPrice], [TotAmt], [Discount], [PreTaxVal], [AssAmt], [GstRt], [IgstAmt], [CgstAmt], [SgstAmt], [CesRt], [CesAmt], [CesNonAdvlAmt], [StateCesRt], [StateCesAmt], [StateCesNonAdvlAmt], [OthChrg], [TotItemVal], [OrdLineRef], [OrgCntry], [PrdSlNo], [BchDtls_Nm], [BchDtls_ExpDt], [BchDtls_WrDt], [AttribDtls_NM], [AttribDtls_Val], [ItemNo], [PrdNm], [IgstRt], [CgstRt], [SgstRt], [cessrate])
    SELECT s.[DocId], s.[SlNo], s.[PrdDesc], s.[IsServc], s.[HsnCd], s.[Barcde], s.[Qty], s.[FreeQty], s.[Unit], s.[UnitPrice], s.[TotAmt], s.[Discount], s.[PreTaxVal], s.[AssAmt], s.[GstRt], s.[IgstAmt], s.[CgstAmt], s.[SgstAmt], s.[CesRt], s.[CesAmt], s.[CesNonAdvlAmt], s.[StateCesRt], s.[StateCesAmt], s.[StateCesNonAdvlAmt], s.[OthChrg], s.[TotItemVal], s.[OrdLineRef], s.[OrgCntry], s.[PrdSlNo], s.[BchDtls_Nm], s.[BchDtls_ExpDt], s.[BchDtls_WrDt], s.[AttribDtls_NM], s.[AttribDtls_Val], s.[ItemNo], s.[PrdNm], s.[IgstRt], s.[CgstRt], s.[SgstRt], s.[cessrate]
    FROM [VijayData2627].[dbo].[eInvoiceBill2] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[eInvoiceBill2] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[SlNo] = s.[SlNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [eInvoiceBill1]';

IF OBJECT_ID(N'VijayData2627.dbo.[eInvoiceBill1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[eInvoiceBill1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[eInvoiceBill1]')
           AND name IN ('UserGSTIN', 'DocId', 'TranDtls_TaxSch', 'TranDtls_SupTyp', 'TranDtls_RegRev', 'TranDtls_EcmGstin', 'TranDtls_IgstOnIntra', 'DocDtls_Typ', 'DocDtls_No', 'DocDtls_Dt', 'SellerDtls_Gstin', 'SellerDtls_LglNm', 'SellerDtls_TrdNm', 'SellerDtls_Addr1', 'SellerDtls_Addr2', 'SellerDtls_Loc', 'SellerDtls_Pin', 'SellerDtls_Stcd', 'SellerDtls_Ph', 'SellerDtls_Em', 'BuyerDtls_Gstin', 'BuyerDtls_LglNm', 'BuyerDtls_TrdNm', 'BuyerDtls_Pos', 'BuyerDtls_Addr1', 'BuyerDtls_Addr2', 'BuyerDtls_Loc', 'BuyerDtls_Pin', 'BuyerDtls_Stcd', 'BuyerDtls_Ph', 'BuyerDtls_Em', 'DispDtls_Nm', 'DispDtls_Addr1', 'DispDtls_Addr2', 'DispDtls_Loc', 'DispDtls_Pin', 'DispDtls_Stcd', 'ShipDtls_Gstin', 'ShipDtls_LglNm', 'ShipDtls_TrdNm', 'ShipDtls_Addr1', 'ShipDtls_Addr2', 'ShipDtls_Loc', 'ShipDtls_Pin', 'ShipDtls_Stcd', 'ShipDtls_Ph', 'ShipDtls_Em', 'ValDtls_AssVal', 'ValDtls_Cgstval', 'ValDtls_Sgstval', 'ValDtls_Igstval', 'ValDtls_Cesval', 'ValDtls_StCesVal', 'ValDtls_Discount', 'ValDtls_OthChrg', 'ValDtls_RndOffAmt', 'ValDtls_TotInvVal', 'ValDtls_TotInvValFc', 'PayDtls_Nm', 'PayDtls_AccDet', 'PayDtls_Mode', 'PayDtls_Fininsbr', 'PayDtls_PayTerm', 'PayDtls_PayInstr', 'PayDtls_CrTrn', 'PayDtls_DirDr', 'PayDtls_CrDay', 'PayDtls_PaidAmt', 'PayDtls_Paymtdue', 'RefDtls_InvRm', 'RefDtls_DocPerdDtls_InvStDt', 'RefDtls_DocPerdDtls_InvEndDt', 'RefDtls_PrecDocDtls_InvNo', 'RefDtls_PrecDocDtls_InvDt', 'RefDtls_PrecDocDtls_OthRefNo', 'RefDtls_ContrDtls_RecAdvRefr', 'RefDtls_ContrDtls_RecAdvDt', 'RefDtls_ContrDtls_TendRefr', 'RefDtls_ContrDtls_Contrrefr', 'RefDtls_ContrDtls_Extrefr', 'RefDtls_ContrDtls_Projrefr', 'RefDtls_ContrDtls_Porefr', 'RefDtls_ContrDtls_PoRefDt', 'AddlDocDtls_Url', 'AddlDocDtls_Docs', 'AddlDocDtls_Info', 'ExpDtls_ShipBNo', 'ExpDtls_ShipBDt', 'ExpDtls_Port', 'ExpDtls_RefClm', 'ExpDtls_ForCur', 'ExpDtls_CntCode', 'ExpDtls_InvForCur', 'EwbDtls_TransId', 'EwbDtls_TransName', 'EwbDtls_Distance', 'EwbDtls_TransDocNo', 'EwbDtls_TransDocDt', 'EwbDtls_VehNo', 'EwbDtls_VehType', 'EwbDtls_TransMode', 'JsonResponse', 'AckNo', 'AckDt', 'IRN', 'SignedInvoice', 'SignedQRCode', 'QrCodeImage', 'Status', 'EwayBillNo', 'EwayBillDate', 'EwayBillvalidUpto', 'Remarks', 'InvCancel_IRN', 'Inv_CancelDate', 'supplyType', 'subSupplyType', 'Eway_DocType', 'Eway_CancelDate', 'WthPay', 'Mainhsncode', 'OrgInvNo')) < 122
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[eInvoiceBill1] ([UserGSTIN], [DocId], [TranDtls_TaxSch], [TranDtls_SupTyp], [TranDtls_RegRev], [TranDtls_EcmGstin], [TranDtls_IgstOnIntra], [DocDtls_Typ], [DocDtls_No], [DocDtls_Dt], [SellerDtls_Gstin], [SellerDtls_LglNm], [SellerDtls_TrdNm], [SellerDtls_Addr1], [SellerDtls_Addr2], [SellerDtls_Loc], [SellerDtls_Pin], [SellerDtls_Stcd], [SellerDtls_Ph], [SellerDtls_Em], [BuyerDtls_Gstin], [BuyerDtls_LglNm], [BuyerDtls_TrdNm], [BuyerDtls_Pos], [BuyerDtls_Addr1], [BuyerDtls_Addr2], [BuyerDtls_Loc], [BuyerDtls_Pin], [BuyerDtls_Stcd], [BuyerDtls_Ph], [BuyerDtls_Em], [DispDtls_Nm], [DispDtls_Addr1], [DispDtls_Addr2], [DispDtls_Loc], [DispDtls_Pin], [DispDtls_Stcd], [ShipDtls_Gstin], [ShipDtls_LglNm], [ShipDtls_TrdNm], [ShipDtls_Addr1], [ShipDtls_Addr2], [ShipDtls_Loc], [ShipDtls_Pin], [ShipDtls_Stcd], [ShipDtls_Ph], [ShipDtls_Em], [ValDtls_AssVal], [ValDtls_Cgstval], [ValDtls_Sgstval], [ValDtls_Igstval], [ValDtls_Cesval], [ValDtls_StCesVal], [ValDtls_Discount], [ValDtls_OthChrg], [ValDtls_RndOffAmt], [ValDtls_TotInvVal], [ValDtls_TotInvValFc], [PayDtls_Nm], [PayDtls_AccDet], [PayDtls_Mode], [PayDtls_Fininsbr], [PayDtls_PayTerm], [PayDtls_PayInstr], [PayDtls_CrTrn], [PayDtls_DirDr], [PayDtls_CrDay], [PayDtls_PaidAmt], [PayDtls_Paymtdue], [RefDtls_InvRm], [RefDtls_DocPerdDtls_InvStDt], [RefDtls_DocPerdDtls_InvEndDt], [RefDtls_PrecDocDtls_InvNo], [RefDtls_PrecDocDtls_InvDt], [RefDtls_PrecDocDtls_OthRefNo], [RefDtls_ContrDtls_RecAdvRefr], [RefDtls_ContrDtls_RecAdvDt], [RefDtls_ContrDtls_TendRefr], [RefDtls_ContrDtls_Contrrefr], [RefDtls_ContrDtls_Extrefr], [RefDtls_ContrDtls_Projrefr], [RefDtls_ContrDtls_Porefr], [RefDtls_ContrDtls_PoRefDt], [AddlDocDtls_Url], [AddlDocDtls_Docs], [AddlDocDtls_Info], [ExpDtls_ShipBNo], [ExpDtls_ShipBDt], [ExpDtls_Port], [ExpDtls_RefClm], [ExpDtls_ForCur], [ExpDtls_CntCode], [ExpDtls_InvForCur], [EwbDtls_TransId], [EwbDtls_TransName], [EwbDtls_Distance], [EwbDtls_TransDocNo], [EwbDtls_TransDocDt], [EwbDtls_VehNo], [EwbDtls_VehType], [EwbDtls_TransMode], [JsonResponse], [AckNo], [AckDt], [IRN], [SignedInvoice], [SignedQRCode], [QrCodeImage], [Status], [EwayBillNo], [EwayBillDate], [EwayBillvalidUpto], [Remarks], [InvCancel_IRN], [Inv_CancelDate], [supplyType], [subSupplyType], [Eway_DocType], [Eway_CancelDate], [WthPay], [Mainhsncode], [OrgInvNo])
    SELECT s.[UserGSTIN], s.[DocId], s.[TranDtls_TaxSch], s.[TranDtls_SupTyp], s.[TranDtls_RegRev], s.[TranDtls_EcmGstin], s.[TranDtls_IgstOnIntra], s.[DocDtls_Typ], s.[DocDtls_No], s.[DocDtls_Dt], s.[SellerDtls_Gstin], s.[SellerDtls_LglNm], s.[SellerDtls_TrdNm], s.[SellerDtls_Addr1], s.[SellerDtls_Addr2], s.[SellerDtls_Loc], s.[SellerDtls_Pin], s.[SellerDtls_Stcd], s.[SellerDtls_Ph], s.[SellerDtls_Em], s.[BuyerDtls_Gstin], s.[BuyerDtls_LglNm], s.[BuyerDtls_TrdNm], s.[BuyerDtls_Pos], s.[BuyerDtls_Addr1], s.[BuyerDtls_Addr2], s.[BuyerDtls_Loc], s.[BuyerDtls_Pin], s.[BuyerDtls_Stcd], s.[BuyerDtls_Ph], s.[BuyerDtls_Em], s.[DispDtls_Nm], s.[DispDtls_Addr1], s.[DispDtls_Addr2], s.[DispDtls_Loc], s.[DispDtls_Pin], s.[DispDtls_Stcd], s.[ShipDtls_Gstin], s.[ShipDtls_LglNm], s.[ShipDtls_TrdNm], s.[ShipDtls_Addr1], s.[ShipDtls_Addr2], s.[ShipDtls_Loc], s.[ShipDtls_Pin], s.[ShipDtls_Stcd], s.[ShipDtls_Ph], s.[ShipDtls_Em], s.[ValDtls_AssVal], s.[ValDtls_Cgstval], s.[ValDtls_Sgstval], s.[ValDtls_Igstval], s.[ValDtls_Cesval], s.[ValDtls_StCesVal], s.[ValDtls_Discount], s.[ValDtls_OthChrg], s.[ValDtls_RndOffAmt], s.[ValDtls_TotInvVal], s.[ValDtls_TotInvValFc], s.[PayDtls_Nm], s.[PayDtls_AccDet], s.[PayDtls_Mode], s.[PayDtls_Fininsbr], s.[PayDtls_PayTerm], s.[PayDtls_PayInstr], s.[PayDtls_CrTrn], s.[PayDtls_DirDr], s.[PayDtls_CrDay], s.[PayDtls_PaidAmt], s.[PayDtls_Paymtdue], s.[RefDtls_InvRm], s.[RefDtls_DocPerdDtls_InvStDt], s.[RefDtls_DocPerdDtls_InvEndDt], s.[RefDtls_PrecDocDtls_InvNo], s.[RefDtls_PrecDocDtls_InvDt], s.[RefDtls_PrecDocDtls_OthRefNo], s.[RefDtls_ContrDtls_RecAdvRefr], s.[RefDtls_ContrDtls_RecAdvDt], s.[RefDtls_ContrDtls_TendRefr], s.[RefDtls_ContrDtls_Contrrefr], s.[RefDtls_ContrDtls_Extrefr], s.[RefDtls_ContrDtls_Projrefr], s.[RefDtls_ContrDtls_Porefr], s.[RefDtls_ContrDtls_PoRefDt], s.[AddlDocDtls_Url], s.[AddlDocDtls_Docs], s.[AddlDocDtls_Info], s.[ExpDtls_ShipBNo], s.[ExpDtls_ShipBDt], s.[ExpDtls_Port], s.[ExpDtls_RefClm], s.[ExpDtls_ForCur], s.[ExpDtls_CntCode], s.[ExpDtls_InvForCur], s.[EwbDtls_TransId], s.[EwbDtls_TransName], s.[EwbDtls_Distance], s.[EwbDtls_TransDocNo], s.[EwbDtls_TransDocDt], s.[EwbDtls_VehNo], s.[EwbDtls_VehType], s.[EwbDtls_TransMode], s.[JsonResponse], s.[AckNo], s.[AckDt], s.[IRN], s.[SignedInvoice], s.[SignedQRCode], s.[QrCodeImage], s.[Status], s.[EwayBillNo], s.[EwayBillDate], s.[EwayBillvalidUpto], s.[Remarks], s.[InvCancel_IRN], s.[Inv_CancelDate], s.[supplyType], s.[subSupplyType], s.[Eway_DocType], s.[Eway_CancelDate], s.[WthPay], s.[Mainhsncode], s.[OrgInvNo]
    FROM [VijayData2627].[dbo].[eInvoiceBill1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[eInvoiceBill1] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[DocDtls_No] = s.[DocDtls_No] AND d.[DocDtls_Typ] = s.[DocDtls_Typ]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [DispColor]';

IF OBJECT_ID(N'VijayData2627.dbo.[DispColor]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[DispColor]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[DispColor]')
           AND name IN ('Index', 'Color', 'Detail', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[DispColor] ([Index], [Color], [Detail], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Index], s.[Color], s.[Detail], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[DispColor] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[DispColor] AS d
                      WHERE d.[Index] = s.[Index] AND d.[LogSite_Code] = s.[LogSite_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Desig]';

IF OBJECT_ID(N'VijayData2627.dbo.[Desig]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Desig]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Desig]')
           AND name IN ('Code', 'Name', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 7
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Desig] ([Code], [Name], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Code], s.[Name], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[Desig] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Desig] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [DepartRWScheme]';

IF OBJECT_ID(N'VijayData2627.dbo.[DepartRWScheme]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[DepartRWScheme]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[DepartRWScheme]')
           AND name IN ('RSchemeCode', 'AssociatedRestCode', 'Site_Code', 'U_Name', 'U_AE', 'U_EntDt', 'LogSite_Code')) < 7
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[DepartRWScheme] ([RSchemeCode], [AssociatedRestCode], [Site_Code], [U_Name], [U_AE], [U_EntDt], [LogSite_Code])
    SELECT s.[RSchemeCode], s.[AssociatedRestCode], s.[Site_Code], s.[U_Name], s.[U_AE], s.[U_EntDt], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[DepartRWScheme] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[DepartRWScheme] AS d
                      WHERE d.[RSchemeCode] = s.[RSchemeCode] AND d.[AssociatedRestCode] = s.[AssociatedRestCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [DepartPay]';

IF OBJECT_ID(N'VijayData2627.dbo.[DepartPay]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[DepartPay]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[DepartPay]')
           AND name IN ('RestCode', 'PayCode', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 7
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[DepartPay] ([RestCode], [PayCode], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[RestCode], s.[PayCode], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[DepartPay] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[DepartPay] AS d
                      WHERE d.[RestCode] = s.[RestCode] AND d.[PayCode] = s.[PayCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Depart1]';

IF OBJECT_ID(N'VijayData2627.dbo.[Depart1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Depart1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Depart1]')
           AND name IN ('SerialNo', 'DepartCode', 'AssociatedRestCode', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    SET IDENTITY_INSERT [dbo].[Depart1] ON;
    INSERT INTO [dbo].[Depart1] ([SerialNo], [DepartCode], [AssociatedRestCode], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[SerialNo], s.[DepartCode], s.[AssociatedRestCode], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[Depart1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Depart1] AS d
                      WHERE d.[SerialNo] = s.[SerialNo] AND d.[DepartCode] = s.[DepartCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
    SET IDENTITY_INSERT [dbo].[Depart1] OFF;
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Depart]';

IF OBJECT_ID(N'VijayData2627.dbo.[Depart]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Depart]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Depart]')
           AND name IN ('Code', 'Name', 'KotYn', 'Header1', 'Header2', 'Phone', 'Slogan1', 'Slogan2', 'LstNo', 'CompanyTitle', 'POS', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'RestType', 'BackColor', 'OutletYN', 'ShortName', 'LinkToRoom', 'RateInclTax', 'DiscApp', 'Roff', 'Printer', 'StoreType', 'LogSite_Code', 'TokenPrint', 'PrinTType', 'Order_Booking', 'OutletTitle', 'MemberInfo', 'AutoSplit', 'PartyName', 'SplitBill', 'CustInfo', 'CstNo', 'CKOTPrintYN', 'CKOTPrintPath', 'CurTokenNo', 'NoOfKot', 'NoOfBill', 'TokenPrintAfter', 'OrderBookCom1', 'OrderBookCom2', 'PrintOnSave', 'BookOfBills', 'Header3', 'Header4', 'PrintTokenNo', 'AutoSettlement', 'BillEditing', 'WScaleApp', 'SaleBillTokenHeader1', 'BarCodeApp', 'TokenAmount', 'AutoResetToken', 'CurTokenNoKOT', 'DirectBilling', 'BarCodePartitionAppOn', 'OutletSelection', 'DisPrint', 'GrpDiscApp', 'MultiBill', 'PrintNetPayable', 'KOTAtNightAudit', 'DiscRemarkYN', 'LabelPrinting', 'FreeItemApp', 'CoverMandatory', 'MobileNoMandatory', 'OpenItemYN', 'EditRemarkYN')) < 72
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Depart] ([Code], [Name], [KotYn], [Header1], [Header2], [Phone], [Slogan1], [Slogan2], [LstNo], [CompanyTitle], [POS], [Site_Code], [U_Name], [U_EntDt], [U_AE], [RestType], [BackColor], [OutletYN], [ShortName], [LinkToRoom], [RateInclTax], [DiscApp], [Roff], [Printer], [StoreType], [LogSite_Code], [TokenPrint], [PrinTType], [Order_Booking], [OutletTitle], [MemberInfo], [AutoSplit], [PartyName], [SplitBill], [CustInfo], [CstNo], [CKOTPrintYN], [CKOTPrintPath], [CurTokenNo], [NoOfKot], [NoOfBill], [TokenPrintAfter], [OrderBookCom1], [OrderBookCom2], [PrintOnSave], [BookOfBills], [Header3], [Header4], [PrintTokenNo], [AutoSettlement], [BillEditing], [WScaleApp], [SaleBillTokenHeader1], [BarCodeApp], [TokenAmount], [AutoResetToken], [CurTokenNoKOT], [DirectBilling], [BarCodePartitionAppOn], [OutletSelection], [DisPrint], [GrpDiscApp], [MultiBill], [PrintNetPayable], [KOTAtNightAudit], [DiscRemarkYN], [LabelPrinting], [FreeItemApp], [CoverMandatory], [MobileNoMandatory], [OpenItemYN], [EditRemarkYN])
    SELECT s.[Code], s.[Name], s.[KotYn], s.[Header1], s.[Header2], s.[Phone], s.[Slogan1], s.[Slogan2], s.[LstNo], s.[CompanyTitle], s.[POS], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[RestType], s.[BackColor], s.[OutletYN], s.[ShortName], s.[LinkToRoom], s.[RateInclTax], s.[DiscApp], s.[Roff], s.[Printer], s.[StoreType], s.[LogSite_Code], s.[TokenPrint], s.[PrinTType], s.[Order_Booking], s.[OutletTitle], s.[MemberInfo], s.[AutoSplit], s.[PartyName], s.[SplitBill], s.[CustInfo], s.[CstNo], s.[CKOTPrintYN], s.[CKOTPrintPath], s.[CurTokenNo], s.[NoOfKot], s.[NoOfBill], s.[TokenPrintAfter], s.[OrderBookCom1], s.[OrderBookCom2], s.[PrintOnSave], s.[BookOfBills], s.[Header3], s.[Header4], s.[PrintTokenNo], s.[AutoSettlement], s.[BillEditing], s.[WScaleApp], s.[SaleBillTokenHeader1], s.[BarCodeApp], s.[TokenAmount], s.[AutoResetToken], s.[CurTokenNoKOT], s.[DirectBilling], s.[BarCodePartitionAppOn], s.[OutletSelection], s.[DisPrint], s.[GrpDiscApp], s.[MultiBill], s.[PrintNetPayable], s.[KOTAtNightAudit], s.[DiscRemarkYN], s.[LabelPrinting], s.[FreeItemApp], s.[CoverMandatory], s.[MobileNoMandatory], s.[OpenItemYN], s.[EditRemarkYN]
    FROM [VijayData2627].[dbo].[Depart] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Depart] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [DenominationFormat]';

IF OBJECT_ID(N'VijayData2627.dbo.[DenominationFormat]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[DenominationFormat]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[DenominationFormat]')
           AND name IN ('Sno', 'DenominationType', 'DenominationValue', 'DenominationUnit', 'DenominationTotal', 'Relation', 'Type', 'U_Name', 'U_AE', 'U_EntDt', 'Site_Code', 'LogSite_Code')) < 12
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[DenominationFormat] ([Sno], [DenominationType], [DenominationValue], [DenominationUnit], [DenominationTotal], [Relation], [Type], [U_Name], [U_AE], [U_EntDt], [Site_Code], [LogSite_Code])
    SELECT s.[Sno], s.[DenominationType], s.[DenominationValue], s.[DenominationUnit], s.[DenominationTotal], s.[Relation], s.[Type], s.[U_Name], s.[U_AE], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[DenominationFormat] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[DenominationFormat] AS d
                      WHERE d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [DenominationDetail]';

IF OBJECT_ID(N'VijayData2627.dbo.[DenominationDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[DenominationDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[DenominationDetail]')
           AND name IN ('Sno', 'Sno1', 'Vdate', 'Name', 'DenominationType', 'DenominationValue', 'DenominationUnit', 'DenominationTotal', 'Relation', 'Type', 'DelFlag', 'Reason', 'Remark', 'U_Name', 'U_AE', 'U_EntDt', 'Site_Code', 'LogSite_Code')) < 18
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[DenominationDetail] ([Sno], [Sno1], [Vdate], [Name], [DenominationType], [DenominationValue], [DenominationUnit], [DenominationTotal], [Relation], [Type], [DelFlag], [Reason], [Remark], [U_Name], [U_AE], [U_EntDt], [Site_Code], [LogSite_Code])
    SELECT s.[Sno], s.[Sno1], s.[Vdate], s.[Name], s.[DenominationType], s.[DenominationValue], s.[DenominationUnit], s.[DenominationTotal], s.[Relation], s.[Type], s.[DelFlag], s.[Reason], s.[Remark], s.[U_Name], s.[U_AE], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[DenominationDetail] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[DenominationDetail] AS d
                      WHERE d.[Sno] = s.[Sno] AND d.[Sno1] = s.[Sno1]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [DeliveryBoy]';

IF OBJECT_ID(N'VijayData2627.dbo.[DeliveryBoy]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[DeliveryBoy]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[DeliveryBoy]')
           AND name IN ('Code', 'Name', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'ActiveYN')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[DeliveryBoy] ([Code], [Name], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [ActiveYN])
    SELECT s.[Code], s.[Name], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[ActiveYN]
    FROM [VijayData2627].[dbo].[DeliveryBoy] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[DeliveryBoy] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [DBSendSMS]';

IF OBJECT_ID(N'VijayData2627.dbo.[DBSendSMS]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[DBSendSMS]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[DBSendSMS]')
           AND name IN ('DocId', 'Vtype', 'Vdate', 'VNo', 'SubCode', 'Mobile1', 'Mobile2', 'TxtMsg', 'SMSDt', 'SMSTm', 'DelvDt', 'DelvTm', 'SenderName', 'PartyName', 'U_AE', 'U_Name', 'U_EntDt', 'Site_Code', 'LogSite_Code', 'RoomNo', 'BillAmount', 'SendTF', 'Comp_Code', 'MsgType', 'SNo')) < 25
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[DBSendSMS] ([DocId], [Vtype], [Vdate], [VNo], [SubCode], [Mobile1], [Mobile2], [TxtMsg], [SMSDt], [SMSTm], [DelvDt], [DelvTm], [SenderName], [PartyName], [U_AE], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code], [RoomNo], [BillAmount], [SendTF], [Comp_Code], [MsgType], [SNo])
    SELECT s.[DocId], s.[Vtype], s.[Vdate], s.[VNo], s.[SubCode], s.[Mobile1], s.[Mobile2], s.[TxtMsg], s.[SMSDt], s.[SMSTm], s.[DelvDt], s.[DelvTm], s.[SenderName], s.[PartyName], s.[U_AE], s.[U_Name], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code], s.[RoomNo], s.[BillAmount], s.[SendTF], s.[Comp_Code], s.[MsgType], s.[SNo]
    FROM [VijayData2627].[dbo].[DBSendSMS] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [DATELOCK]';

IF OBJECT_ID(N'VijayData2627.dbo.[DATELOCK]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[DATELOCK]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[DATELOCK]')
           AND name IN ('CODE', 'NAME', 'LEVEL1', 'LEVEL2', 'id', 'srno', 'flag', 'SDate', 'EDate')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[DATELOCK] ([CODE], [NAME], [LEVEL1], [LEVEL2], [id], [srno], [flag], [SDate], [EDate])
    SELECT s.[CODE], s.[NAME], s.[LEVEL1], s.[LEVEL2], s.[id], s.[srno], s.[flag], s.[SDate], s.[EDate]
    FROM [VijayData2627].[dbo].[DATELOCK] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[DATELOCK] AS d
                      WHERE d.[CODE] = s.[CODE]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [CreditCardHistory]';

IF OBJECT_ID(N'VijayData2627.dbo.[CreditCardHistory]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[CreditCardHistory]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[CreditCardHistory]')
           AND name IN ('AppDate', 'TaxStru', 'RevCode', 'CommPer', 'CommAC', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'Limit', 'CondApp', 'CompOperator', 'Limit1')) < 14
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[CreditCardHistory] ([AppDate], [TaxStru], [RevCode], [CommPer], [CommAC], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [Limit], [CondApp], [CompOperator], [Limit1])
    SELECT s.[AppDate], s.[TaxStru], s.[RevCode], s.[CommPer], s.[CommAC], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[Limit], s.[CondApp], s.[CompOperator], s.[Limit1]
    FROM [VijayData2627].[dbo].[CreditCardHistory] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[CreditCardHistory] AS d
                      WHERE d.[AppDate] = s.[AppDate] AND d.[TaxStru] = s.[TaxStru] AND d.[CommPer] = s.[CommPer] AND d.[Site_Code] = s.[Site_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Country]';

IF OBJECT_ID(N'VijayData2627.dbo.[Country]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Country]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Country]')
           AND name IN ('Code', 'Name', 'ShortName', 'Type', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'Nationality')) < 10
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Country] ([Code], [Name], [ShortName], [Type], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [Nationality])
    SELECT s.[Code], s.[Name], s.[ShortName], s.[Type], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[Nationality]
    FROM [VijayData2627].[dbo].[Country] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Country] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [ComplaintDetail]';

IF OBJECT_ID(N'VijayData2627.dbo.[ComplaintDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[ComplaintDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[ComplaintDetail]')
           AND name IN ('Code', 'CDate', 'CTime', 'Category', 'Description', 'Depart', 'UName', 'Status', 'ClearingDate', 'ClearingPerson', 'UName2', 'Site_Code', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 15
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[ComplaintDetail] ([Code], [CDate], [CTime], [Category], [Description], [Depart], [UName], [Status], [ClearingDate], [ClearingPerson], [UName2], [Site_Code], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Code], s.[CDate], s.[CTime], s.[Category], s.[Description], s.[Depart], s.[UName], s.[Status], s.[ClearingDate], s.[ClearingPerson], s.[UName2], s.[Site_Code], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[ComplaintDetail] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[ComplaintDetail] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [ComplaintCategory]';

IF OBJECT_ID(N'VijayData2627.dbo.[ComplaintCategory]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[ComplaintCategory]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[ComplaintCategory]')
           AND name IN ('Code', 'Category', 'Site_Code', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 6
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[ComplaintCategory] ([Code], [Category], [Site_Code], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Code], s.[Category], s.[Site_Code], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[ComplaintCategory] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[ComplaintCategory] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [CompanyProfile]';

IF OBJECT_ID(N'VijayData2627.dbo.[CompanyProfile]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[CompanyProfile]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[CompanyProfile]')
           AND name IN ('FieldName', 'FieldValue', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'Hotel')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[CompanyProfile] ([FieldName], [FieldValue], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [Hotel])
    SELECT s.[FieldName], s.[FieldValue], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[Hotel]
    FROM [VijayData2627].[dbo].[CompanyProfile] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[CompanyProfile] AS d
                      WHERE d.[FieldName] = s.[FieldName] AND d.[FieldValue] = s.[FieldValue] AND d.[Site_Code] = s.[Site_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Company]';

IF OBJECT_ID(N'VijayData2627.dbo.[Company]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Company]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Company]')
           AND name IN ('Comp_Code', 'Comp_Name', 'CentralData_Path', 'Repo_Path', 'Start_Dt', 'End_Dt', 'address1', 'address2', 'city', 'phone', 'fax', 'lstno', 'lstdate', 'cstno', 'cstdate', 'cyear', 'pyear', 'Pin', 'SName', 'U_Name', 'U_EntDt', 'U_AE', 'FGLNO', 'SerialKeyNo', 'SiteCode', 'SiteCodeDisplay', 'SiteName', 'ActiveEpabx', 'HeadOffice', 'PanNo', 'TinNo', 'GSTIN', 'StateCode', 'State', 'DivisionCode', 'Mobile', 'Email', 'LegalName', 'TradeName', 'Comp_Id')) < 40
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Company] ([Comp_Code], [Comp_Name], [CentralData_Path], [Repo_Path], [Start_Dt], [End_Dt], [address1], [address2], [city], [phone], [fax], [lstno], [lstdate], [cstno], [cstdate], [cyear], [pyear], [Pin], [SName], [U_Name], [U_EntDt], [U_AE], [FGLNO], [SerialKeyNo], [SiteCode], [SiteCodeDisplay], [SiteName], [ActiveEpabx], [HeadOffice], [PanNo], [TinNo], [GSTIN], [StateCode], [State], [DivisionCode], [Mobile], [Email], [LegalName], [TradeName], [Comp_Id])
    SELECT s.[Comp_Code], s.[Comp_Name], s.[CentralData_Path], s.[Repo_Path], s.[Start_Dt], s.[End_Dt], s.[address1], s.[address2], s.[city], s.[phone], s.[fax], s.[lstno], s.[lstdate], s.[cstno], s.[cstdate], s.[cyear], s.[pyear], s.[Pin], s.[SName], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[FGLNO], s.[SerialKeyNo], s.[SiteCode], s.[SiteCodeDisplay], s.[SiteName], s.[ActiveEpabx], s.[HeadOffice], s.[PanNo], s.[TinNo], s.[GSTIN], s.[StateCode], s.[State], s.[DivisionCode], s.[Mobile], s.[Email], s.[LegalName], s.[TradeName], s.[Comp_Id]
    FROM [VijayData2627].[dbo].[Company] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Comp_PlanDet]';

IF OBJECT_ID(N'VijayData2627.dbo.[Comp_PlanDet]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Comp_PlanDet]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Comp_PlanDet]')
           AND name IN ('CompanyCode', 'RoomCat', 'PlanCode', 'PlanAmt', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Comp_PlanDet] ([CompanyCode], [RoomCat], [PlanCode], [PlanAmt], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[CompanyCode], s.[RoomCat], s.[PlanCode], s.[PlanAmt], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[Comp_PlanDet] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Comp_Inclusive]';

IF OBJECT_ID(N'VijayData2627.dbo.[Comp_Inclusive]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Comp_Inclusive]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Comp_Inclusive]')
           AND name IN ('CompanyCode', 'Inclusive', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 7
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Comp_Inclusive] ([CompanyCode], [Inclusive], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[CompanyCode], s.[Inclusive], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[Comp_Inclusive] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Comp_Inclusive] AS d
                      WHERE d.[CompanyCode] = s.[CompanyCode] AND d.[Inclusive] = s.[Inclusive]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [ComboPackHead]';

IF OBJECT_ID(N'VijayData2627.dbo.[ComboPackHead]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[ComboPackHead]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[ComboPackHead]')
           AND name IN ('ComboCode', 'RestCode', 'Name', 'ComboName', 'Appdate', 'Rate', 'Active', 'ServiceCharge', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 13
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[ComboPackHead] ([ComboCode], [RestCode], [Name], [ComboName], [Appdate], [Rate], [Active], [ServiceCharge], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[ComboCode], s.[RestCode], s.[Name], s.[ComboName], s.[Appdate], s.[Rate], s.[Active], s.[ServiceCharge], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[ComboPackHead] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[ComboPackHead] AS d
                      WHERE d.[ComboCode] = s.[ComboCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [ComboPackDetail]';

IF OBJECT_ID(N'VijayData2627.dbo.[ComboPackDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[ComboPackDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[ComboPackDetail]')
           AND name IN ('ComboCode', 'RestCode', 'ItemCode', 'Qty', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[ComboPackDetail] ([ComboCode], [RestCode], [ItemCode], [Qty], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[ComboCode], s.[RestCode], s.[ItemCode], s.[Qty], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[ComboPackDetail] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [City]';

IF OBJECT_ID(N'VijayData2627.dbo.[City]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[City]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[City]')
           AND name IN ('CityCode', 'CityName', 'ShortName', 'ZipCode', 'State', 'Country', 'STDCode', 'CityHelp', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'CityNameBiLang', 'LocalCentral', 'StateCode', 'LogSite_Code')) < 16
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[City] ([CityCode], [CityName], [ShortName], [ZipCode], [State], [Country], [STDCode], [CityHelp], [Site_Code], [U_Name], [U_EntDt], [U_AE], [CityNameBiLang], [LocalCentral], [StateCode], [LogSite_Code])
    SELECT s.[CityCode], s.[CityName], s.[ShortName], s.[ZipCode], s.[State], s.[Country], s.[STDCode], s.[CityHelp], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[CityNameBiLang], s.[LocalCentral], s.[StateCode], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[City] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[City] AS d
                      WHERE d.[CityCode] = s.[CityCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Category]';

IF OBJECT_ID(N'VijayData2627.dbo.[Category]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Category]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Category]')
           AND name IN ('Category', 'Category_Desc', 'U_Name', 'U_EntDt', 'U_AE', 'Site_Code', 'LogSite_Code')) < 7
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Category] ([Category], [Category_Desc], [U_Name], [U_EntDt], [U_AE], [Site_Code], [LogSite_Code])
    SELECT s.[Category], s.[Category_Desc], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[Category] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Category] AS d
                      WHERE d.[Category] = s.[Category]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [CatalogMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[CatalogMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[CatalogMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[CatalogMast]')
           AND name IN ('Code', 'ItemCode', 'RestCode', 'Name', 'ItemCatCode', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'Category', 'LogSite_Code')) < 11
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[CatalogMast] ([Code], [ItemCode], [RestCode], [Name], [ItemCatCode], [Site_Code], [U_Name], [U_EntDt], [U_AE], [Category], [LogSite_Code])
    SELECT s.[Code], s.[ItemCode], s.[RestCode], s.[Name], s.[ItemCatCode], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Category], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[CatalogMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[CatalogMast] AS d
                      WHERE d.[Code] = s.[Code] AND d.[ItemCode] = s.[ItemCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [BussSource]';

IF OBJECT_ID(N'VijayData2627.dbo.[BussSource]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[BussSource]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[BussSource]')
           AND name IN ('Code', 'Name', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'Active')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[BussSource] ([Code], [Name], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [Active])
    SELECT s.[Code], s.[Name], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[Active]
    FROM [VijayData2627].[dbo].[BussSource] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[BussSource] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [BudgetDetails]';

IF OBJECT_ID(N'VijayData2627.dbo.[BudgetDetails]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[BudgetDetails]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[BudgetDetails]')
           AND name IN ('SNo', 'Month_Year', 'RevCode', 'Detail', 'Budget', 'Header', 'U_Name', 'U_EntDT', 'U_AE', 'Site_Code', 'LogSite_Code')) < 11
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[BudgetDetails] ([SNo], [Month_Year], [RevCode], [Detail], [Budget], [Header], [U_Name], [U_EntDT], [U_AE], [Site_Code], [LogSite_Code])
    SELECT s.[SNo], s.[Month_Year], s.[RevCode], s.[Detail], s.[Budget], s.[Header], s.[U_Name], s.[U_EntDT], s.[U_AE], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[BudgetDetails] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[BudgetDetails] AS d
                      WHERE d.[SNo] = s.[SNo] AND d.[Month_Year] = s.[Month_Year] AND d.[LogSite_Code] = s.[LogSite_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Budget]';

IF OBJECT_ID(N'VijayData2627.dbo.[Budget]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Budget]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Budget]')
           AND name IN ('FromDate', 'ToDate', 'SrNo', 'AcCode', 'AcGroupCode', 'BudgetDRAmt', 'BudgetCRAmt', 'U_Name', 'U_EntDt', 'U_AE', 'Site_Code', 'LogSite_Code')) < 12
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Budget] ([FromDate], [ToDate], [SrNo], [AcCode], [AcGroupCode], [BudgetDRAmt], [BudgetCRAmt], [U_Name], [U_EntDt], [U_AE], [Site_Code], [LogSite_Code])
    SELECT s.[FromDate], s.[ToDate], s.[SrNo], s.[AcCode], s.[AcGroupCode], s.[BudgetDRAmt], s.[BudgetCRAmt], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[Budget] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Budget] AS d
                      WHERE d.[FromDate] = s.[FromDate] AND d.[ToDate] = s.[ToDate] AND d.[SrNo] = s.[SrNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [BookingPlanDetails]';

IF OBJECT_ID(N'VijayData2627.dbo.[BookingPlanDetails]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[BookingPlanDetails]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[BookingPlanDetails]')
           AND name IN ('BookingDocId', 'Sno', 'Sno1', 'Revcode', 'Chrgcode', 'TaxInc', 'TaxStru', 'PrintOption', 'PostingMethod', 'ChargeType', 'FlatRate', 'Adult', 'Child', 'ExtraAdult', 'ExtraChild', 'NoOfDays', 'PlanPer', 'App_Date', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'Amount', 'PlanCode', 'PlanPkgMode', 'RPackageAmt', 'NetPackageAmount', 'LogSite_Code', 'PlanDiscPer', 'PlanDiscAmt', 'PlanDiscAppOn', 'IncInRoomRate', 'RoomRate', 'NetRoomRate', 'Comment1', 'Comment2', 'DiscAmt', 'NetAmt', 'FixRate')) < 39
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[BookingPlanDetails] ([BookingDocId], [Sno], [Sno1], [Revcode], [Chrgcode], [TaxInc], [TaxStru], [PrintOption], [PostingMethod], [ChargeType], [FlatRate], [Adult], [Child], [ExtraAdult], [ExtraChild], [NoOfDays], [PlanPer], [App_Date], [Site_Code], [U_Name], [U_EntDt], [U_AE], [Amount], [PlanCode], [PlanPkgMode], [RPackageAmt], [NetPackageAmount], [LogSite_Code], [PlanDiscPer], [PlanDiscAmt], [PlanDiscAppOn], [IncInRoomRate], [RoomRate], [NetRoomRate], [Comment1], [Comment2], [DiscAmt], [NetAmt], [FixRate])
    SELECT s.[BookingDocId], s.[Sno], s.[Sno1], s.[Revcode], s.[Chrgcode], s.[TaxInc], s.[TaxStru], s.[PrintOption], s.[PostingMethod], s.[ChargeType], s.[FlatRate], s.[Adult], s.[Child], s.[ExtraAdult], s.[ExtraChild], s.[NoOfDays], s.[PlanPer], s.[App_Date], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Amount], s.[PlanCode], s.[PlanPkgMode], s.[RPackageAmt], s.[NetPackageAmount], s.[LogSite_Code], s.[PlanDiscPer], s.[PlanDiscAmt], s.[PlanDiscAppOn], s.[IncInRoomRate], s.[RoomRate], s.[NetRoomRate], s.[Comment1], s.[Comment2], s.[DiscAmt], s.[NetAmt], s.[FixRate]
    FROM [VijayData2627].[dbo].[BookingPlanDetails] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[BookingPlanDetails] AS d
                      WHERE d.[BookingDocId] = s.[BookingDocId] AND d.[Sno] = s.[Sno] AND d.[Sno1] = s.[Sno1] AND d.[Chrgcode] = s.[Chrgcode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [BookingMore]';

IF OBJECT_ID(N'VijayData2627.dbo.[BookingMore]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[BookingMore]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[BookingMore]')
           AND name IN ('DocId', 'Sno', 'Name', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[BookingMore] ([DocId], [Sno], [Name], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[DocId], s.[Sno], s.[Name], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[BookingMore] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[BookingMore] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [BookingLog]';

IF OBJECT_ID(N'VijayData2627.dbo.[BookingLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[BookingLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[BookingLog]')
           AND name IN ('Id', 'BookingDocid', 'Flag', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[BookingLog] ([Id], [BookingDocid], [Flag], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Id], s.[BookingDocid], s.[Flag], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[BookingLog] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [BookingInquiry]';

IF OBJECT_ID(N'VijayData2627.dbo.[BookingInquiry]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[BookingInquiry]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[BookingInquiry]')
           AND name IN ('Code', 'CatType', 'PartyName', 'Add1', 'Add2', 'City', 'PhoneR', 'PhoneO', 'MobileNo', 'FaxNo', 'ConPerson', 'BookedBy', 'FuncType', 'FuncDate', 'HandledBy', 'BussSource', 'Status', 'MarketSeg', 'Pax', 'GurrPax', 'RatePax', 'VenueCode', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'Capacity', 'CapacityType', 'LogSite_Code', 'Remark')) < 30
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[BookingInquiry] ([Code], [CatType], [PartyName], [Add1], [Add2], [City], [PhoneR], [PhoneO], [MobileNo], [FaxNo], [ConPerson], [BookedBy], [FuncType], [FuncDate], [HandledBy], [BussSource], [Status], [MarketSeg], [Pax], [GurrPax], [RatePax], [VenueCode], [Site_Code], [U_Name], [U_EntDt], [U_AE], [Capacity], [CapacityType], [LogSite_Code], [Remark])
    SELECT s.[Code], s.[CatType], s.[PartyName], s.[Add1], s.[Add2], s.[City], s.[PhoneR], s.[PhoneO], s.[MobileNo], s.[FaxNo], s.[ConPerson], s.[BookedBy], s.[FuncType], s.[FuncDate], s.[HandledBy], s.[BussSource], s.[Status], s.[MarketSeg], s.[Pax], s.[GurrPax], s.[RatePax], s.[VenueCode], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Capacity], s.[CapacityType], s.[LogSite_Code], s.[Remark]
    FROM [VijayData2627].[dbo].[BookingInquiry] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[BookingInquiry] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [BookingDetail]';

IF OBJECT_ID(N'VijayData2627.dbo.[BookingDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[BookingDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[BookingDetail]')
           AND name IN ('Code', 'VenueCode', 'FuncDate', 'ToDate', 'FuncTime', 'ToTime', 'Site_Code', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 10
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[BookingDetail] ([Code], [VenueCode], [FuncDate], [ToDate], [FuncTime], [ToTime], [Site_Code], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Code], s.[VenueCode], s.[FuncDate], s.[ToDate], s.[FuncTime], s.[ToTime], s.[Site_Code], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[BookingDetail] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[BookingDetail] AS d
                      WHERE d.[Code] = s.[Code] AND d.[VenueCode] = s.[VenueCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [BookingCancelDetails]';

IF OBJECT_ID(N'VijayData2627.dbo.[BookingCancelDetails]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[BookingCancelDetails]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[BookingCancelDetails]')
           AND name IN ('DocId', 'VNo', 'SNo', 'VType', 'VPrefix', 'VDate', 'Site_Code', 'BookingDocId', 'Advance', 'CancelAmt', 'CancellationMode', 'LogSite_Code', 'U_Name', 'U_EntDT', 'U_AE')) < 15
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[BookingCancelDetails] ([DocId], [VNo], [SNo], [VType], [VPrefix], [VDate], [Site_Code], [BookingDocId], [Advance], [CancelAmt], [CancellationMode], [LogSite_Code], [U_Name], [U_EntDT], [U_AE])
    SELECT s.[DocId], s.[VNo], s.[SNo], s.[VType], s.[VPrefix], s.[VDate], s.[Site_Code], s.[BookingDocId], s.[Advance], s.[CancelAmt], s.[CancellationMode], s.[LogSite_Code], s.[U_Name], s.[U_EntDT], s.[U_AE]
    FROM [VijayData2627].[dbo].[BookingCancelDetails] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Booking]';

IF OBJECT_ID(N'VijayData2627.dbo.[Booking]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Booking]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Booking]')
           AND name IN ('DocId', 'Vtype', 'BookNo', 'Site_Code', 'Vprefix', 'VDate', 'GroupCode', 'ArrDate', 'ArrTime', 'DepDate', 'DepTime', 'NoDays', 'RoomCat', 'RoomType', 'RoomNo', 'Adult', 'Child', 'NoofRooms', 'RateCode', 'RoomRate', 'Remarks', 'Authorization', 'Company', 'GuestProf', 'TravelAgency', 'BussSource', 'MarketSeg', 'ArrFrom', 'Destination', 'BookedBy', 'ResMode', 'TravelMode', 'SplitFolio', 'DepositeReq', 'Guarantee', 'CardNo', 'ExpDate', 'CancelDate', 'Cancel', 'GuestName', 'U_Name', 'U_EntDt', 'U_AE', 'OccRoom', 'PackageCode', 'LogSite_Code', 'MobNo', 'Email', 'FaxNo', 'OtherCont', 'RRTaxInc', 'RDisc', 'RSDisc', 'AdvDueDate', 'RRServiceChrg', 'ResStatus', 'MyRectNo', 'RefCode', 'BookStatus', 'Verified', 'CancelUName', 'RefBookNo')) < 62
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Booking] ([DocId], [Vtype], [BookNo], [Site_Code], [Vprefix], [VDate], [GroupCode], [ArrDate], [ArrTime], [DepDate], [DepTime], [NoDays], [RoomCat], [RoomType], [RoomNo], [Adult], [Child], [NoofRooms], [RateCode], [RoomRate], [Remarks], [Authorization], [Company], [GuestProf], [TravelAgency], [BussSource], [MarketSeg], [ArrFrom], [Destination], [BookedBy], [ResMode], [TravelMode], [SplitFolio], [DepositeReq], [Guarantee], [CardNo], [ExpDate], [CancelDate], [Cancel], [GuestName], [U_Name], [U_EntDt], [U_AE], [OccRoom], [PackageCode], [LogSite_Code], [MobNo], [Email], [FaxNo], [OtherCont], [RRTaxInc], [RDisc], [RSDisc], [AdvDueDate], [RRServiceChrg], [ResStatus], [MyRectNo], [RefCode], [BookStatus], [Verified], [CancelUName], [RefBookNo])
    SELECT s.[DocId], s.[Vtype], s.[BookNo], s.[Site_Code], s.[Vprefix], s.[VDate], s.[GroupCode], s.[ArrDate], s.[ArrTime], s.[DepDate], s.[DepTime], s.[NoDays], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[Adult], s.[Child], s.[NoofRooms], s.[RateCode], s.[RoomRate], s.[Remarks], s.[Authorization], s.[Company], s.[GuestProf], s.[TravelAgency], s.[BussSource], s.[MarketSeg], s.[ArrFrom], s.[Destination], s.[BookedBy], s.[ResMode], s.[TravelMode], s.[SplitFolio], s.[DepositeReq], s.[Guarantee], s.[CardNo], s.[ExpDate], s.[CancelDate], s.[Cancel], s.[GuestName], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[OccRoom], s.[PackageCode], s.[LogSite_Code], s.[MobNo], s.[Email], s.[FaxNo], s.[OtherCont], s.[RRTaxInc], s.[RDisc], s.[RSDisc], s.[AdvDueDate], s.[RRServiceChrg], s.[ResStatus], s.[MyRectNo], s.[RefCode], s.[BookStatus], s.[Verified], s.[CancelUName], s.[RefBookNo]
    FROM [VijayData2627].[dbo].[Booking] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Booking] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[LogSite_Code] = s.[LogSite_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [BOM]';

IF OBJECT_ID(N'VijayData2627.dbo.[BOM]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[BOM]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[BOM]')
           AND name IN ('Site_Code', 'FinItem', 'FinQty', 'RawItem', 'RawQty', 'RawSno', 'U_Name', 'U_EntDt', 'U_AE', 'Waste', 'Cost', 'Total', 'SavedForQty', 'AppDate', 'WtUnit', 'LogSite_Code', 'RestCode')) < 17
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[BOM] ([Site_Code], [FinItem], [FinQty], [RawItem], [RawQty], [RawSno], [U_Name], [U_EntDt], [U_AE], [Waste], [Cost], [Total], [SavedForQty], [AppDate], [WtUnit], [LogSite_Code], [RestCode])
    SELECT s.[Site_Code], s.[FinItem], s.[FinQty], s.[RawItem], s.[RawQty], s.[RawSno], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Waste], s.[Cost], s.[Total], s.[SavedForQty], s.[AppDate], s.[WtUnit], s.[LogSite_Code], s.[RestCode]
    FROM [VijayData2627].[dbo].[BOM] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[BOM] AS d
                      WHERE d.[FinItem] = s.[FinItem] AND d.[RawSno] = s.[RawSno] AND d.[AppDate] = s.[AppDate]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [BlockMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[BlockMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[BlockMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[BlockMast]')
           AND name IN ('Code', 'Name', 'ShortName', 'Status', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[BlockMast] ([Code], [Name], [ShortName], [Status], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Code], s.[Name], s.[ShortName], s.[Status], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[BlockMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[BlockMast] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [RoomOcc]';

IF OBJECT_ID(N'VijayData2627.dbo.[RoomOcc]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[RoomOcc]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[RoomOcc]')
           AND name IN ('DocId', 'SNo', 'FolioNo', 'Vtype', 'Site_Code', 'Vprefix', 'GuestProf', 'RoomCat', 'RoomType', 'RoomNo', 'RateCode', 'RoomRate', 'ChkInDate', 'ChkInTime', 'Adult', 'Children', 'DepDate', 'DepTime', 'ChkOutDate', 'ChkOutTime', 'Type', 'U_Name', 'U_EntDt', 'U_AE', 'UserchkoutDate', 'ChkoutUser', 'NewRoomNo', 'Reason', 'PlanCode', 'PlanAmt', 'IncInRate', 'LogSite_Code', 'PlanDisc', 'PlanDiscAmt', 'PlanDiscAppon', 'RRTaxInc', 'RRServiceChrg', 'ChngDate', 'ExtraBed', 'RoomTarrif', 'RoomTaxStru', 'RackRate')) < 42
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[RoomOcc] ([DocId], [SNo], [FolioNo], [Vtype], [Site_Code], [Vprefix], [GuestProf], [RoomCat], [RoomType], [RoomNo], [RateCode], [RoomRate], [ChkInDate], [ChkInTime], [Adult], [Children], [DepDate], [DepTime], [ChkOutDate], [ChkOutTime], [Type], [U_Name], [U_EntDt], [U_AE], [UserchkoutDate], [ChkoutUser], [NewRoomNo], [Reason], [PlanCode], [PlanAmt], [IncInRate], [LogSite_Code], [PlanDisc], [PlanDiscAmt], [PlanDiscAppon], [RRTaxInc], [RRServiceChrg], [ChngDate], [ExtraBed], [RoomTarrif], [RoomTaxStru], [RackRate])
    SELECT s.[DocId], s.[SNo], s.[FolioNo], s.[Vtype], s.[Site_Code], s.[Vprefix], s.[GuestProf], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[RateCode], s.[RoomRate], s.[ChkInDate], s.[ChkInTime], s.[Adult], s.[Children], s.[DepDate], s.[DepTime], s.[ChkOutDate], s.[ChkOutTime], s.[Type], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[UserchkoutDate], s.[ChkoutUser], s.[NewRoomNo], s.[Reason], s.[PlanCode], s.[PlanAmt], s.[IncInRate], s.[LogSite_Code], s.[PlanDisc], s.[PlanDiscAmt], s.[PlanDiscAppon], s.[RRTaxInc], s.[RRServiceChrg], s.[ChngDate], s.[ExtraBed], s.[RoomTarrif], s.[RoomTaxStru], s.[RackRate]
    FROM [VijayData2627].[dbo].[RoomOcc] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[RoomOcc] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[SNo] = s.[SNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [RoomMast1]';

IF OBJECT_ID(N'VijayData2627.dbo.[RoomMast1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[RoomMast1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[RoomMast1]')
           AND name IN ('RoomCode', 'Sno', 'RoomFeat', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[RoomMast1] ([RoomCode], [Sno], [RoomFeat], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[RoomCode], s.[Sno], s.[RoomFeat], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[RoomMast1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[RoomMast1] AS d
                      WHERE d.[RoomCode] = s.[RoomCode] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [RoomMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[RoomMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[RoomMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[RoomMast]')
           AND name IN ('Type', 'Code', 'Name', 'RoomCat', 'Extension', 'MultPer', 'RevCode', 'MaidStation', 'InclCount', 'ConRoom1', 'ConRoom2', 'ConRoom3', 'ConRoom4', 'RestCode', 'TaxStru', 'RoomStat', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'HallRent', 'PicPath', 'LogSite_Code', 'DoorLockID')) < 24
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[RoomMast] ([Type], [Code], [Name], [RoomCat], [Extension], [MultPer], [RevCode], [MaidStation], [InclCount], [ConRoom1], [ConRoom2], [ConRoom3], [ConRoom4], [RestCode], [TaxStru], [RoomStat], [Site_Code], [U_Name], [U_EntDt], [U_AE], [HallRent], [PicPath], [LogSite_Code], [DoorLockID])
    SELECT s.[Type], s.[Code], s.[Name], s.[RoomCat], s.[Extension], s.[MultPer], s.[RevCode], s.[MaidStation], s.[InclCount], s.[ConRoom1], s.[ConRoom2], s.[ConRoom3], s.[ConRoom4], s.[RestCode], s.[TaxStru], s.[RoomStat], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[HallRent], s.[PicPath], s.[LogSite_Code], s.[DoorLockID]
    FROM [VijayData2627].[dbo].[RoomMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[RoomMast] AS d
                      WHERE d.[Type] = s.[Type] AND d.[Code] = s.[Code] AND d.[RestCode] = s.[RestCode] AND d.[LogSite_Code] = s.[LogSite_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [RoomFeature]';

IF OBJECT_ID(N'VijayData2627.dbo.[RoomFeature]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[RoomFeature]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[RoomFeature]')
           AND name IN ('Code', 'Name', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 7
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[RoomFeature] ([Code], [Name], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Code], s.[Name], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[RoomFeature] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[RoomFeature] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [RoomDiscount]';

IF OBJECT_ID(N'VijayData2627.dbo.[RoomDiscount]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[RoomDiscount]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[RoomDiscount]')
           AND name IN ('Code', 'RoomCat', 'Discount', 'DiscType', 'Site_Code', 'U_EntDt', 'U_AE', 'LogSite_Code', 'Adult')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[RoomDiscount] ([Code], [RoomCat], [Discount], [DiscType], [Site_Code], [U_EntDt], [U_AE], [LogSite_Code], [Adult])
    SELECT s.[Code], s.[RoomCat], s.[Discount], s.[DiscType], s.[Site_Code], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[Adult]
    FROM [VijayData2627].[dbo].[RoomDiscount] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [RoomDet]';

IF OBJECT_ID(N'VijayData2627.dbo.[RoomDet]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[RoomDet]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[RoomDet]')
           AND name IN ('DocId', 'ChkInDate', 'ChkInTime', 'ChkOutDate', 'ChkOutTime')) < 5
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[RoomDet] ([DocId], [ChkInDate], [ChkInTime], [ChkOutDate], [ChkOutTime])
    SELECT s.[DocId], s.[ChkInDate], s.[ChkInTime], s.[ChkOutDate], s.[ChkOutTime]
    FROM [VijayData2627].[dbo].[RoomDet] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [RoomCheckOutStatus]';

IF OBJECT_ID(N'VijayData2627.dbo.[RoomCheckOutStatus]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[RoomCheckOutStatus]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[RoomCheckOutStatus]')
           AND name IN ('FolioNoDocId', 'RoomCode', 'ChkOutClearanceYN', 'U_AE', 'U_Name', 'U_EntDt', 'Site_Code', 'LogSite_Code')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[RoomCheckOutStatus] ([FolioNoDocId], [RoomCode], [ChkOutClearanceYN], [U_AE], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code])
    SELECT s.[FolioNoDocId], s.[RoomCode], s.[ChkOutClearanceYN], s.[U_AE], s.[U_Name], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[RoomCheckOutStatus] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[RoomCheckOutStatus] AS d
                      WHERE d.[FolioNoDocId] = s.[FolioNoDocId] AND d.[RoomCode] = s.[RoomCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [RoomCat]';

IF OBJECT_ID(N'VijayData2627.dbo.[RoomCat]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[RoomCat]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[RoomCat]')
           AND name IN ('Type', 'Code', 'Name', 'ShortName', 'RevCode', 'MaxPerson', 'RetChg', 'CancelChg', 'MinAdv', 'NoRooms', 'MultPer', 'InclCount', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'OLDCODE', 'LogSite_Code', 'ActiveYN', 'OverBooking', 'MapCode')) < 21
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[RoomCat] ([Type], [Code], [Name], [ShortName], [RevCode], [MaxPerson], [RetChg], [CancelChg], [MinAdv], [NoRooms], [MultPer], [InclCount], [Site_Code], [U_Name], [U_EntDt], [U_AE], [OLDCODE], [LogSite_Code], [ActiveYN], [OverBooking], [MapCode])
    SELECT s.[Type], s.[Code], s.[Name], s.[ShortName], s.[RevCode], s.[MaxPerson], s.[RetChg], s.[CancelChg], s.[MinAdv], s.[NoRooms], s.[MultPer], s.[InclCount], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[OLDCODE], s.[LogSite_Code], s.[ActiveYN], s.[OverBooking], s.[MapCode]
    FROM [VijayData2627].[dbo].[RoomCat] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[RoomCat] AS d
                      WHERE d.[Type] = s.[Type] AND d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [RoomBlockOut]';

IF OBJECT_ID(N'VijayData2627.dbo.[RoomBlockOut]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[RoomBlockOut]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[RoomBlockOut]')
           AND name IN ('RoomCode', 'Reasons', 'FromDate', 'ToDate', 'Type', 'GuestProf', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'VTime', 'LogSite_Code')) < 12
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[RoomBlockOut] ([RoomCode], [Reasons], [FromDate], [ToDate], [Type], [GuestProf], [Site_Code], [U_Name], [U_EntDt], [U_AE], [VTime], [LogSite_Code])
    SELECT s.[RoomCode], s.[Reasons], s.[FromDate], s.[ToDate], s.[Type], s.[GuestProf], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[VTime], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[RoomBlockOut] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[RoomBlockOut] AS d
                      WHERE d.[RoomCode] = s.[RoomCode] AND d.[FromDate] = s.[FromDate] AND d.[VTime] = s.[VTime]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [RevMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[RevMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[RevMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[RevMast]')
           AND name IN ('Code', 'Name', 'ShortName', 'ACCode', 'TaxStru', 'Cost', 'SaleRate', 'Site_Code', 'SysYN', 'U_Name', 'U_EntDt', 'U_AE', 'Type', 'AppMode', 'GroupSrNo', 'FlagAMR', 'FlagType', 'DeskCode', 'PAYTYPE', 'FieldType', 'RoundOff', 'BankCommAC', 'BankCommPer', 'ACPosting', 'Sundry', 'LogSite_Code', 'SeqNo', 'Nature', 'SplitSeqNo', 'Active', 'TaxInc', 'PayableAc', 'UnregisteredAc', 'HSNCode', 'MapCode')) < 35
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[RevMast] ([Code], [Name], [ShortName], [ACCode], [TaxStru], [Cost], [SaleRate], [Site_Code], [SysYN], [U_Name], [U_EntDt], [U_AE], [Type], [AppMode], [GroupSrNo], [FlagAMR], [FlagType], [DeskCode], [PAYTYPE], [FieldType], [RoundOff], [BankCommAC], [BankCommPer], [ACPosting], [Sundry], [LogSite_Code], [SeqNo], [Nature], [SplitSeqNo], [Active], [TaxInc], [PayableAc], [UnregisteredAc], [HSNCode], [MapCode])
    SELECT s.[Code], s.[Name], s.[ShortName], s.[ACCode], s.[TaxStru], s.[Cost], s.[SaleRate], s.[Site_Code], s.[SysYN], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Type], s.[AppMode], s.[GroupSrNo], s.[FlagAMR], s.[FlagType], s.[DeskCode], s.[PAYTYPE], s.[FieldType], s.[RoundOff], s.[BankCommAC], s.[BankCommPer], s.[ACPosting], s.[Sundry], s.[LogSite_Code], s.[SeqNo], s.[Nature], s.[SplitSeqNo], s.[Active], s.[TaxInc], s.[PayableAc], s.[UnregisteredAc], s.[HSNCode], s.[MapCode]
    FROM [VijayData2627].[dbo].[RevMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[RevMast] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [RawConsumption]';

IF OBJECT_ID(N'VijayData2627.dbo.[RawConsumption]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[RawConsumption]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[RawConsumption]')
           AND name IN ('DocId', 'V_Date', 'V_Type', 'V_Prefix', 'V_No', 'Sno', 'Site_Code', 'RawItem', 'ThCons', 'WtUnit', 'FinishItem', 'DepartCode', 'RestCode', 'ThConsCost', 'KOTDocId', 'LogSite_Code', 'ShiftCode', 'FinishQty', 'FinishUnit')) < 19
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[RawConsumption] ([DocId], [V_Date], [V_Type], [V_Prefix], [V_No], [Sno], [Site_Code], [RawItem], [ThCons], [WtUnit], [FinishItem], [DepartCode], [RestCode], [ThConsCost], [KOTDocId], [LogSite_Code], [ShiftCode], [FinishQty], [FinishUnit])
    SELECT s.[DocId], s.[V_Date], s.[V_Type], s.[V_Prefix], s.[V_No], s.[Sno], s.[Site_Code], s.[RawItem], s.[ThCons], s.[WtUnit], s.[FinishItem], s.[DepartCode], s.[RestCode], s.[ThConsCost], s.[KOTDocId], s.[LogSite_Code], s.[ShiftCode], s.[FinishQty], s.[FinishUnit]
    FROM [VijayData2627].[dbo].[RawConsumption] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[RawConsumption] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [RateList]';

IF OBJECT_ID(N'VijayData2627.dbo.[RateList]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[RateList]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[RateList]')
           AND name IN ('RoomCat', 'RoomNo', 'Code', 'OccType', 'Rate1', 'Rate2', 'Rate3', 'Rate4', 'Rate5', 'RateW', 'RateM', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 16
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[RateList] ([RoomCat], [RoomNo], [Code], [OccType], [Rate1], [Rate2], [Rate3], [Rate4], [Rate5], [RateW], [RateM], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[RoomCat], s.[RoomNo], s.[Code], s.[OccType], s.[Rate1], s.[Rate2], s.[Rate3], s.[Rate4], s.[Rate5], s.[RateW], s.[RateM], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[RateList] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[RateList] AS d
                      WHERE d.[RoomCat] = s.[RoomCat] AND d.[RoomNo] = s.[RoomNo] AND d.[Code] = s.[Code] AND d.[OccType] = s.[OccType]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Purch2]';

IF OBJECT_ID(N'VijayData2627.dbo.[Purch2]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Purch2]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Purch2]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'PartyCode', 'RestCode', 'RoomCat', 'RoomType', 'RoomNo', 'ContraDocId', 'ContraSno', 'Item', 'QtyIss', 'QtyRec', 'Unit', 'Rate', 'Amount', 'TaxPer', 'TaxAmt', 'DiscPer', 'DiscAmt', 'VoidYN', 'Remarks', 'KOTDocId', 'KOTSno', 'VTime', 'U_Name', 'U_EntDt', 'U_AE', 'Total', 'DiscApp', 'RoundOff', 'DepartCode', 'GodCode', 'ChalQty', 'RecdQty', 'AccQty', 'RejQty', 'RecdUnit', 'Specification', 'ItemRate', 'DelFlag', 'ConvRatio', 'PostVal', 'LandVal', 'IssQty', 'IssueUnit', 'LogSite_Code', 'Taxstru', 'AcCode')) < 53
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Purch2] ([DocId], [Sno], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [PartyCode], [RestCode], [RoomCat], [RoomType], [RoomNo], [ContraDocId], [ContraSno], [Item], [QtyIss], [QtyRec], [Unit], [Rate], [Amount], [TaxPer], [TaxAmt], [DiscPer], [DiscAmt], [VoidYN], [Remarks], [KOTDocId], [KOTSno], [VTime], [U_Name], [U_EntDt], [U_AE], [Total], [DiscApp], [RoundOff], [DepartCode], [GodCode], [ChalQty], [RecdQty], [AccQty], [RejQty], [RecdUnit], [Specification], [ItemRate], [DelFlag], [ConvRatio], [PostVal], [LandVal], [IssQty], [IssueUnit], [LogSite_Code], [Taxstru], [AcCode])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[PartyCode], s.[RestCode], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[ContraDocId], s.[ContraSno], s.[Item], s.[QtyIss], s.[QtyRec], s.[Unit], s.[Rate], s.[Amount], s.[TaxPer], s.[TaxAmt], s.[DiscPer], s.[DiscAmt], s.[VoidYN], s.[Remarks], s.[KOTDocId], s.[KOTSno], s.[VTime], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Total], s.[DiscApp], s.[RoundOff], s.[DepartCode], s.[GodCode], s.[ChalQty], s.[RecdQty], s.[AccQty], s.[RejQty], s.[RecdUnit], s.[Specification], s.[ItemRate], s.[DelFlag], s.[ConvRatio], s.[PostVal], s.[LandVal], s.[IssQty], s.[IssueUnit], s.[LogSite_Code], s.[Taxstru], s.[AcCode]
    FROM [VijayData2627].[dbo].[Purch2] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Purch2] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Purch1]';

IF OBJECT_ID(N'VijayData2627.dbo.[Purch1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Purch1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Purch1]')
           AND name IN ('DocId', 'VNo', 'Vdate', 'Vtype', 'Vprefix', 'Site_Code', 'RestCode', 'Party', 'Total', 'DiscPer', 'DiscAmt', 'NonTaxable', 'Taxable', 'Tax', 'ServiceCharge', 'AddAmt', 'DedAmt', 'RoundOff', 'NetAmt', 'U_Name', 'U_EntDt', 'U_AE', 'DelFlag', 'PartyBillNo', 'PartyBillDt', 'CashParty', 'LogSite_Code', 'TinNo', 'Remark', 'InvoiceType', 'InvoiceNo', 'CGST', 'SGST', 'IGST', 'Payable', 'BillImagePath')) < 36
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Purch1] ([DocId], [VNo], [Vdate], [Vtype], [Vprefix], [Site_Code], [RestCode], [Party], [Total], [DiscPer], [DiscAmt], [NonTaxable], [Taxable], [Tax], [ServiceCharge], [AddAmt], [DedAmt], [RoundOff], [NetAmt], [U_Name], [U_EntDt], [U_AE], [DelFlag], [PartyBillNo], [PartyBillDt], [CashParty], [LogSite_Code], [TinNo], [Remark], [InvoiceType], [InvoiceNo], [CGST], [SGST], [IGST], [Payable], [BillImagePath])
    SELECT s.[DocId], s.[VNo], s.[Vdate], s.[Vtype], s.[Vprefix], s.[Site_Code], s.[RestCode], s.[Party], s.[Total], s.[DiscPer], s.[DiscAmt], s.[NonTaxable], s.[Taxable], s.[Tax], s.[ServiceCharge], s.[AddAmt], s.[DedAmt], s.[RoundOff], s.[NetAmt], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[DelFlag], s.[PartyBillNo], s.[PartyBillDt], s.[CashParty], s.[LogSite_Code], s.[TinNo], s.[Remark], s.[InvoiceType], s.[InvoiceNo], s.[CGST], s.[SGST], s.[IGST], s.[Payable], s.[BillImagePath]
    FROM [VijayData2627].[dbo].[Purch1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Purch1] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [ProfileImages]';

IF OBJECT_ID(N'VijayData2627.dbo.[ProfileImages]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[ProfileImages]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[ProfileImages]')
           AND name IN ('ProfileCode', 'GuestImage', 'IdImage', 'LogSite_Code', 'Site_Code', 'U_Name', 'U_AE', 'U_EntDt', 'SignImage')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[ProfileImages] ([ProfileCode], [GuestImage], [IdImage], [LogSite_Code], [Site_Code], [U_Name], [U_AE], [U_EntDt], [SignImage])
    SELECT s.[ProfileCode], s.[GuestImage], s.[IdImage], s.[LogSite_Code], s.[Site_Code], s.[U_Name], s.[U_AE], s.[U_EntDt], s.[SignImage]
    FROM [VijayData2627].[dbo].[ProfileImages] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[ProfileImages] AS d
                      WHERE d.[ProfileCode] = s.[ProfileCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SMSEnviro]';

IF OBJECT_ID(N'VijayData2627.dbo.[SMSEnviro]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SMSEnviro]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SMSEnviro]')
           AND name IN ('SmsCenterUserName', 'SmsCenterPassword', 'SmsDisplayName', 'SmsURL', 'SmsPurchase', 'SmsSend', 'SmsBal', 'TUser', 'TPassword', 'TFromSend', 'TMessage', 'TExtra', 'LogSite_Code', 'CheckInMsg', 'CheckOutMsg', 'SmsPhoneNoPrefix', 'TPhNo', 'ReservationMsg', 'Site_Code', 'SendingMessageText', 'ReservationCancelMsg', 'OutStandingMsg', 'CashReceiptMsg', 'BankReceiptMsg', 'MemberBillMsg', 'BanqBookingMsg', 'BanqBookingCancelMsg', 'GuestRegistrationMsg', 'RewardPointMsg', 'RedeemPointMsg', 'POSBillMsg', 'AssignDeliveryMsg')) < 32
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SMSEnviro] ([SmsCenterUserName], [SmsCenterPassword], [SmsDisplayName], [SmsURL], [SmsPurchase], [SmsSend], [SmsBal], [TUser], [TPassword], [TFromSend], [TMessage], [TExtra], [LogSite_Code], [CheckInMsg], [CheckOutMsg], [SmsPhoneNoPrefix], [TPhNo], [ReservationMsg], [Site_Code], [SendingMessageText], [ReservationCancelMsg], [OutStandingMsg], [CashReceiptMsg], [BankReceiptMsg], [MemberBillMsg], [BanqBookingMsg], [BanqBookingCancelMsg], [GuestRegistrationMsg], [RewardPointMsg], [RedeemPointMsg], [POSBillMsg], [AssignDeliveryMsg])
    SELECT s.[SmsCenterUserName], s.[SmsCenterPassword], s.[SmsDisplayName], s.[SmsURL], s.[SmsPurchase], s.[SmsSend], s.[SmsBal], s.[TUser], s.[TPassword], s.[TFromSend], s.[TMessage], s.[TExtra], s.[LogSite_Code], s.[CheckInMsg], s.[CheckOutMsg], s.[SmsPhoneNoPrefix], s.[TPhNo], s.[ReservationMsg], s.[Site_Code], s.[SendingMessageText], s.[ReservationCancelMsg], s.[OutStandingMsg], s.[CashReceiptMsg], s.[BankReceiptMsg], s.[MemberBillMsg], s.[BanqBookingMsg], s.[BanqBookingCancelMsg], s.[GuestRegistrationMsg], s.[RewardPointMsg], s.[RedeemPointMsg], s.[POSBillMsg], s.[AssignDeliveryMsg]
    FROM [VijayData2627].[dbo].[SMSEnviro] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SMSEnviro] AS d
                      WHERE d.[LogSite_Code] = s.[LogSite_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SmartCardReIssueDetail]';

IF OBJECT_ID(N'VijayData2627.dbo.[SmartCardReIssueDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SmartCardReIssueDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SmartCardReIssueDetail]')
           AND name IN ('Trans_Id', 'CardRegId', 'HW_Id', 'IssDate', 'ValidUpto', 'Remark', 'OldHW_Id', 'OldIssDate', 'OldValidUpto', 'U_Name', 'U_EntDt', 'U_AE', 'Site_Code', 'LogSite_Code')) < 14
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    SET IDENTITY_INSERT [dbo].[SmartCardReIssueDetail] ON;
    INSERT INTO [dbo].[SmartCardReIssueDetail] ([Trans_Id], [CardRegId], [HW_Id], [IssDate], [ValidUpto], [Remark], [OldHW_Id], [OldIssDate], [OldValidUpto], [U_Name], [U_EntDt], [U_AE], [Site_Code], [LogSite_Code])
    SELECT s.[Trans_Id], s.[CardRegId], s.[HW_Id], s.[IssDate], s.[ValidUpto], s.[Remark], s.[OldHW_Id], s.[OldIssDate], s.[OldValidUpto], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[SmartCardReIssueDetail] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SmartCardReIssueDetail] AS d
                      WHERE d.[Trans_Id] = s.[Trans_Id]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
    SET IDENTITY_INSERT [dbo].[SmartCardReIssueDetail] OFF;
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SmartCardRegistration]';

IF OBJECT_ID(N'VijayData2627.dbo.[SmartCardRegistration]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SmartCardRegistration]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SmartCardRegistration]')
           AND name IN ('Code', 'CardType', 'CardNo', 'Name', 'Addr', 'Phone', 'CashAmt', 'SecurityAmt', 'IssDate', 'ValidUpto', 'BlockedYN', 'SerialNo', 'PostDocId', 'U_Name', 'U_EntDt', 'U_AE', 'Site_Code', 'LogSite_Code', 'CurrBal', 'SecurBal', 'LastTransAmt', 'LastTransDate', 'Remark', 'MemberCode', 'CurrBalDiffChecked', 'RewardBal', 'RewardSale', 'RewardPoint', 'RedeemPoint')) < 29
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SmartCardRegistration] ([Code], [CardType], [CardNo], [Name], [Addr], [Phone], [CashAmt], [SecurityAmt], [IssDate], [ValidUpto], [BlockedYN], [SerialNo], [PostDocId], [U_Name], [U_EntDt], [U_AE], [Site_Code], [LogSite_Code], [CurrBal], [SecurBal], [LastTransAmt], [LastTransDate], [Remark], [MemberCode], [CurrBalDiffChecked], [RewardBal], [RewardSale], [RewardPoint], [RedeemPoint])
    SELECT s.[Code], s.[CardType], s.[CardNo], s.[Name], s.[Addr], s.[Phone], s.[CashAmt], s.[SecurityAmt], s.[IssDate], s.[ValidUpto], s.[BlockedYN], s.[SerialNo], s.[PostDocId], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Site_Code], s.[LogSite_Code], s.[CurrBal], s.[SecurBal], s.[LastTransAmt], s.[LastTransDate], s.[Remark], s.[MemberCode], s.[CurrBalDiffChecked], s.[RewardBal], s.[RewardSale], s.[RewardPoint], s.[RedeemPoint]
    FROM [VijayData2627].[dbo].[SmartCardRegistration] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SmartCardRegistration] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SmartCardMaster]';

IF OBJECT_ID(N'VijayData2627.dbo.[SmartCardMaster]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SmartCardMaster]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SmartCardMaster]')
           AND name IN ('ContraDocid', 'HW_Id', 'MemberCode', 'CardRegId', 'U_Name', 'U_EntDt', 'U_AE')) < 7
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SmartCardMaster] ([ContraDocid], [HW_Id], [MemberCode], [CardRegId], [U_Name], [U_EntDt], [U_AE])
    SELECT s.[ContraDocid], s.[HW_Id], s.[MemberCode], s.[CardRegId], s.[U_Name], s.[U_EntDt], s.[U_AE]
    FROM [VijayData2627].[dbo].[SmartCardMaster] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SmartCardMaster] AS d
                      WHERE d.[HW_Id] = s.[HW_Id]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SmartCardLedger]';

IF OBJECT_ID(N'VijayData2627.dbo.[SmartCardLedger]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SmartCardLedger]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SmartCardLedger]')
           AND name IN ('Code', 'VType', 'VNo', 'VDate', 'VPrefix', 'Type', 'Narration', 'AmtCr', 'AmtDr', 'DocId', 'VSNo', 'HW_Id', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'PreBalance')) < 18
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SmartCardLedger] ([Code], [VType], [VNo], [VDate], [VPrefix], [Type], [Narration], [AmtCr], [AmtDr], [DocId], [VSNo], [HW_Id], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [PreBalance])
    SELECT s.[Code], s.[VType], s.[VNo], s.[VDate], s.[VPrefix], s.[Type], s.[Narration], s.[AmtCr], s.[AmtDr], s.[DocId], s.[VSNo], s.[HW_Id], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[PreBalance]
    FROM [VijayData2627].[dbo].[SmartCardLedger] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SmartCardLedger] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[VSNo] = s.[VSNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Site]';

IF OBJECT_ID(N'VijayData2627.dbo.[Site]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Site]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Site]')
           AND name IN ('CompCode', 'Site_Code', 'Site_Desc', 'U_Name', 'U_EntDt', 'U_AE', 'SiteType', 'Short_Name', 'SendDate', 'RecDate')) < 10
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Site] ([CompCode], [Site_Code], [Site_Desc], [U_Name], [U_EntDt], [U_AE], [SiteType], [Short_Name], [SendDate], [RecDate])
    SELECT s.[CompCode], s.[Site_Code], s.[Site_Desc], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[SiteType], s.[Short_Name], s.[SendDate], s.[RecDate]
    FROM [VijayData2627].[dbo].[Site] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Site] AS d
                      WHERE d.[Site_Code] = s.[Site_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [ShiftMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[ShiftMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[ShiftMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[ShiftMast]')
           AND name IN ('Code', 'Name', 'FromTime', 'ToTime', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[ShiftMast] ([Code], [Name], [FromTime], [ToTime], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Code], s.[Name], s.[FromTime], s.[ToTime], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[ShiftMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[ShiftMast] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SessionMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[SessionMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SessionMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SessionMast]')
           AND name IN ('Code', 'Name', 'FromTime', 'ToTime', 'U_Name', 'U_EntDt', 'U_AE', 'Site_Code', 'LogSite_Code')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SessionMast] ([Code], [Name], [FromTime], [ToTime], [U_Name], [U_EntDt], [U_AE], [Site_Code], [LogSite_Code])
    SELECT s.[Code], s.[Name], s.[FromTime], s.[ToTime], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[SessionMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SessionMast] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SeasonMast1]';

IF OBJECT_ID(N'VijayData2627.dbo.[SeasonMast1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SeasonMast1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SeasonMast1]')
           AND name IN ('Weekend', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 6
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SeasonMast1] ([Weekend], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Weekend], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[SeasonMast1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SeasonMast1] AS d
                      WHERE d.[Weekend] = s.[Weekend] AND d.[Site_Code] = s.[Site_Code] AND d.[LogSite_Code] = s.[LogSite_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SeasonMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[SeasonMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SeasonMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SeasonMast]')
           AND name IN ('FromDate', 'ToDate', 'RateCode', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SeasonMast] ([FromDate], [ToDate], [RateCode], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[FromDate], s.[ToDate], s.[RateCode], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[SeasonMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SeasonMast] AS d
                      WHERE d.[FromDate] = s.[FromDate] AND d.[ToDate] = s.[ToDate] AND d.[Site_Code] = s.[Site_Code] AND d.[LogSite_Code] = s.[LogSite_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SchemeOutletDiscount]';

IF OBJECT_ID(N'VijayData2627.dbo.[SchemeOutletDiscount]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SchemeOutletDiscount]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SchemeOutletDiscount]')
           AND name IN ('SchemeCode', 'Appdate', 'Enddate', 'FromTime', 'ToTime', 'RestCode', 'DiscPer', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'Days', 'Active')) < 14
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SchemeOutletDiscount] ([SchemeCode], [Appdate], [Enddate], [FromTime], [ToTime], [RestCode], [DiscPer], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [Days], [Active])
    SELECT s.[SchemeCode], s.[Appdate], s.[Enddate], s.[FromTime], s.[ToTime], s.[RestCode], s.[DiscPer], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[Days], s.[Active]
    FROM [VijayData2627].[dbo].[SchemeOutletDiscount] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SchemeOutletDiscount] AS d
                      WHERE d.[SchemeCode] = s.[SchemeCode] AND d.[RestCode] = s.[RestCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SchemeMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[SchemeMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SchemeMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SchemeMast]')
           AND name IN ('Code', 'Name', 'Startdate', 'Enddate', 'FromTime', 'ToTime', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'Days', 'Active')) < 13
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SchemeMast] ([Code], [Name], [Startdate], [Enddate], [FromTime], [ToTime], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [Days], [Active])
    SELECT s.[Code], s.[Name], s.[Startdate], s.[Enddate], s.[FromTime], s.[ToTime], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[Days], s.[Active]
    FROM [VijayData2627].[dbo].[SchemeMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SchemeMast] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SchemeItemDetail]';

IF OBJECT_ID(N'VijayData2627.dbo.[SchemeItemDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SchemeItemDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SchemeItemDetail]')
           AND name IN ('Code', 'SNo', 'SchemeCode', 'Appdate', 'Enddate', 'FromTime', 'ToTime', 'RestCode', 'ItemCode', 'Qty', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'Days', 'Active', 'Rate')) < 18
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SchemeItemDetail] ([Code], [SNo], [SchemeCode], [Appdate], [Enddate], [FromTime], [ToTime], [RestCode], [ItemCode], [Qty], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [Days], [Active], [Rate])
    SELECT s.[Code], s.[SNo], s.[SchemeCode], s.[Appdate], s.[Enddate], s.[FromTime], s.[ToTime], s.[RestCode], s.[ItemCode], s.[Qty], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[Days], s.[Active], s.[Rate]
    FROM [VijayData2627].[dbo].[SchemeItemDetail] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SchemeItemDetail] AS d
                      WHERE d.[Code] = s.[Code] AND d.[SNo] = s.[SNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SaleMIS]';

IF OBJECT_ID(N'VijayData2627.dbo.[SaleMIS]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SaleMIS]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SaleMIS]')
           AND name IN ('Code', 'RepName', 'GroupCode', 'GroupName', 'DetailCode', 'DetailName', 'RevCode', 'PrintYn', 'SiteCode', 'Revname', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 13
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SaleMIS] ([Code], [RepName], [GroupCode], [GroupName], [DetailCode], [DetailName], [RevCode], [PrintYn], [SiteCode], [Revname], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Code], s.[RepName], s.[GroupCode], s.[GroupName], s.[DetailCode], s.[DetailName], s.[RevCode], s.[PrintYn], s.[SiteCode], s.[Revname], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[SaleMIS] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SaleMIS] AS d
                      WHERE d.[Code] = s.[Code] AND d.[GroupCode] = s.[GroupCode] AND d.[DetailCode] = s.[DetailCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Sale2Log]';

IF OBJECT_ID(N'VijayData2627.dbo.[Sale2Log]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Sale2Log]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Sale2Log]')
           AND name IN ('DocId', 'Sno', 'SNo1', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'RestCode', 'TaxCode', 'BaseValue', 'TaxPer', 'TaxAmt', 'U_Name', 'U_EntDt', 'U_AE', 'DelFlag', 'LogSite_Code', 'SeqNo')) < 19
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Sale2Log] ([DocId], [Sno], [SNo1], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [RestCode], [TaxCode], [BaseValue], [TaxPer], [TaxAmt], [U_Name], [U_EntDt], [U_AE], [DelFlag], [LogSite_Code], [SeqNo])
    SELECT s.[DocId], s.[Sno], s.[SNo1], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[RestCode], s.[TaxCode], s.[BaseValue], s.[TaxPer], s.[TaxAmt], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[DelFlag], s.[LogSite_Code], s.[SeqNo]
    FROM [VijayData2627].[dbo].[Sale2Log] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Sale2Log] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno] AND d.[SNo1] = s.[SNo1] AND d.[SeqNo] = s.[SeqNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Sale2]';

IF OBJECT_ID(N'VijayData2627.dbo.[Sale2]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Sale2]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Sale2]')
           AND name IN ('DocId', 'Sno', 'SNo1', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'RestCode', 'TaxCode', 'BaseValue', 'TaxPer', 'TaxAmt', 'U_Name', 'U_EntDt', 'U_AE', 'DelFlag', 'LogSite_Code', 'SeqNo')) < 19
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Sale2] ([DocId], [Sno], [SNo1], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [RestCode], [TaxCode], [BaseValue], [TaxPer], [TaxAmt], [U_Name], [U_EntDt], [U_AE], [DelFlag], [LogSite_Code], [SeqNo])
    SELECT s.[DocId], s.[Sno], s.[SNo1], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[RestCode], s.[TaxCode], s.[BaseValue], s.[TaxPer], s.[TaxAmt], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[DelFlag], s.[LogSite_Code], s.[SeqNo]
    FROM [VijayData2627].[dbo].[Sale2] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Sale2] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno] AND d.[SNo1] = s.[SNo1]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Sale1Log]';

IF OBJECT_ID(N'VijayData2627.dbo.[Sale1Log]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Sale1Log]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Sale1Log]')
           AND name IN ('DocId', 'Vtype', 'VNo', 'Vtime', 'Site_Code', 'Vprefix', 'Vdate', 'RestCode', 'RoomCat', 'RoomType', 'RoomNo', 'FolioNo', 'Party', 'Total', 'DiscPer', 'DiscAmt', 'NonTaxable', 'Taxable', 'Tax', 'ServiceCharge', 'AddAmt', 'DedAmt', 'RoundOff', 'NetAmt', 'Remark', 'Waiter', 'FrBookDate', 'FrBookTime', 'MenuSpl1', 'MenuSpl2', 'MenuSpl3', 'MenuSpl4', 'FuncName', 'HouseKeep', 'FrontOff', 'Engg', 'Security', 'Chef', 'Board', 'KOTNo', 'TokenNo', 'ExpAtt', 'GuarAtt', 'CoverRate', 'U_Name', 'U_EntDt', 'U_AE', 'ToBookDate', 'ToBookTime', 'HallRent', 'TotalPerCover', 'Amount', 'Advance', 'RecNo', 'RecDate', 'CrCardNo', 'CrCardHolder', 'BookDocId', 'DelFlag', 'PRINTED', 'LogSite_Code', 'DeliveredYN', 'PhoneNo', 'CustName', 'Addr1', 'Addr2', 'CashRecd', 'BookNo', 'SeqNo', 'CardNo', 'ServiceTax', 'FolionoDocid', 'AU_Name', 'AU_EntDt', 'Redemption', 'DiscRemark', 'CGST', 'SGST', 'IGST', 'EditRemark')) < 80
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Sale1Log] ([DocId], [Vtype], [VNo], [Vtime], [Site_Code], [Vprefix], [Vdate], [RestCode], [RoomCat], [RoomType], [RoomNo], [FolioNo], [Party], [Total], [DiscPer], [DiscAmt], [NonTaxable], [Taxable], [Tax], [ServiceCharge], [AddAmt], [DedAmt], [RoundOff], [NetAmt], [Remark], [Waiter], [FrBookDate], [FrBookTime], [MenuSpl1], [MenuSpl2], [MenuSpl3], [MenuSpl4], [FuncName], [HouseKeep], [FrontOff], [Engg], [Security], [Chef], [Board], [KOTNo], [TokenNo], [ExpAtt], [GuarAtt], [CoverRate], [U_Name], [U_EntDt], [U_AE], [ToBookDate], [ToBookTime], [HallRent], [TotalPerCover], [Amount], [Advance], [RecNo], [RecDate], [CrCardNo], [CrCardHolder], [BookDocId], [DelFlag], [PRINTED], [LogSite_Code], [DeliveredYN], [PhoneNo], [CustName], [Addr1], [Addr2], [CashRecd], [BookNo], [SeqNo], [CardNo], [ServiceTax], [FolionoDocid], [AU_Name], [AU_EntDt], [Redemption], [DiscRemark], [CGST], [SGST], [IGST], [EditRemark])
    SELECT s.[DocId], s.[Vtype], s.[VNo], s.[Vtime], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[RestCode], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[FolioNo], s.[Party], s.[Total], s.[DiscPer], s.[DiscAmt], s.[NonTaxable], s.[Taxable], s.[Tax], s.[ServiceCharge], s.[AddAmt], s.[DedAmt], s.[RoundOff], s.[NetAmt], s.[Remark], s.[Waiter], s.[FrBookDate], s.[FrBookTime], s.[MenuSpl1], s.[MenuSpl2], s.[MenuSpl3], s.[MenuSpl4], s.[FuncName], s.[HouseKeep], s.[FrontOff], s.[Engg], s.[Security], s.[Chef], s.[Board], s.[KOTNo], s.[TokenNo], s.[ExpAtt], s.[GuarAtt], s.[CoverRate], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[ToBookDate], s.[ToBookTime], s.[HallRent], s.[TotalPerCover], s.[Amount], s.[Advance], s.[RecNo], s.[RecDate], s.[CrCardNo], s.[CrCardHolder], s.[BookDocId], s.[DelFlag], s.[PRINTED], s.[LogSite_Code], s.[DeliveredYN], s.[PhoneNo], s.[CustName], s.[Addr1], s.[Addr2], s.[CashRecd], s.[BookNo], s.[SeqNo], s.[CardNo], s.[ServiceTax], s.[FolionoDocid], s.[AU_Name], s.[AU_EntDt], s.[Redemption], s.[DiscRemark], s.[CGST], s.[SGST], s.[IGST], s.[EditRemark]
    FROM [VijayData2627].[dbo].[Sale1Log] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Sale1Log] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[SeqNo] = s.[SeqNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Sale1]';

IF OBJECT_ID(N'VijayData2627.dbo.[Sale1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Sale1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Sale1]')
           AND name IN ('DocId', 'Vtype', 'VNo', 'Vtime', 'Site_Code', 'Vprefix', 'Vdate', 'RestCode', 'RoomCat', 'RoomType', 'RoomNo', 'FolioNo', 'Party', 'Total', 'DiscPer', 'DiscAmt', 'NonTaxable', 'Taxable', 'Tax', 'ServiceCharge', 'AddAmt', 'DedAmt', 'RoundOff', 'NetAmt', 'Remark', 'Waiter', 'FrBookDate', 'FrBookTime', 'MenuSpl1', 'MenuSpl2', 'MenuSpl3', 'MenuSpl4', 'FuncName', 'HouseKeep', 'FrontOff', 'Engg', 'Security', 'Chef', 'Board', 'KOTNo', 'TokenNo', 'ExpAtt', 'GuarAtt', 'CoverRate', 'U_Name', 'U_EntDt', 'U_AE', 'ToBookDate', 'ToBookTime', 'HallRent', 'TotalPerCover', 'Amount', 'Advance', 'RecNo', 'RecDate', 'CrCardNo', 'CrCardHolder', 'BookDocId', 'DelFlag', 'PRINTED', 'LogSite_Code', 'DeliveredYN', 'PhoneNo', 'CustName', 'Addr1', 'Addr2', 'CashRecd', 'BookNo', 'SeqNo', 'CardNo', 'ServiceTax', 'FolionoDocid', 'AU_Name', 'AU_EntDt', 'Redemption', 'DiscRemark', 'CGST', 'SGST', 'IGST', 'EditRemark')) < 80
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Sale1] ([DocId], [Vtype], [VNo], [Vtime], [Site_Code], [Vprefix], [Vdate], [RestCode], [RoomCat], [RoomType], [RoomNo], [FolioNo], [Party], [Total], [DiscPer], [DiscAmt], [NonTaxable], [Taxable], [Tax], [ServiceCharge], [AddAmt], [DedAmt], [RoundOff], [NetAmt], [Remark], [Waiter], [FrBookDate], [FrBookTime], [MenuSpl1], [MenuSpl2], [MenuSpl3], [MenuSpl4], [FuncName], [HouseKeep], [FrontOff], [Engg], [Security], [Chef], [Board], [KOTNo], [TokenNo], [ExpAtt], [GuarAtt], [CoverRate], [U_Name], [U_EntDt], [U_AE], [ToBookDate], [ToBookTime], [HallRent], [TotalPerCover], [Amount], [Advance], [RecNo], [RecDate], [CrCardNo], [CrCardHolder], [BookDocId], [DelFlag], [PRINTED], [LogSite_Code], [DeliveredYN], [PhoneNo], [CustName], [Addr1], [Addr2], [CashRecd], [BookNo], [SeqNo], [CardNo], [ServiceTax], [FolionoDocid], [AU_Name], [AU_EntDt], [Redemption], [DiscRemark], [CGST], [SGST], [IGST], [EditRemark])
    SELECT s.[DocId], s.[Vtype], s.[VNo], s.[Vtime], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[RestCode], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[FolioNo], s.[Party], s.[Total], s.[DiscPer], s.[DiscAmt], s.[NonTaxable], s.[Taxable], s.[Tax], s.[ServiceCharge], s.[AddAmt], s.[DedAmt], s.[RoundOff], s.[NetAmt], s.[Remark], s.[Waiter], s.[FrBookDate], s.[FrBookTime], s.[MenuSpl1], s.[MenuSpl2], s.[MenuSpl3], s.[MenuSpl4], s.[FuncName], s.[HouseKeep], s.[FrontOff], s.[Engg], s.[Security], s.[Chef], s.[Board], s.[KOTNo], s.[TokenNo], s.[ExpAtt], s.[GuarAtt], s.[CoverRate], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[ToBookDate], s.[ToBookTime], s.[HallRent], s.[TotalPerCover], s.[Amount], s.[Advance], s.[RecNo], s.[RecDate], s.[CrCardNo], s.[CrCardHolder], s.[BookDocId], s.[DelFlag], s.[PRINTED], s.[LogSite_Code], s.[DeliveredYN], s.[PhoneNo], s.[CustName], s.[Addr1], s.[Addr2], s.[CashRecd], s.[BookNo], s.[SeqNo], s.[CardNo], s.[ServiceTax], s.[FolionoDocid], s.[AU_Name], s.[AU_EntDt], s.[Redemption], s.[DiscRemark], s.[CGST], s.[SGST], s.[IGST], s.[EditRemark]
    FROM [VijayData2627].[dbo].[Sale1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Sale1] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SalaryLog]';

IF OBJECT_ID(N'VijayData2627.dbo.[SalaryLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SalaryLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SalaryLog]')
           AND name IN ('Mth_Year', 'Emp_Code', 'Basic', 'Increment', 'U_Name', 'U_EntDt', 'Site_Code', 'LogSite_Code', 'CreationDate')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SalaryLog] ([Mth_Year], [Emp_Code], [Basic], [Increment], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code], [CreationDate])
    SELECT s.[Mth_Year], s.[Emp_Code], s.[Basic], s.[Increment], s.[U_Name], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code], s.[CreationDate]
    FROM [VijayData2627].[dbo].[SalaryLog] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SalaryLog] AS d
                      WHERE d.[Mth_Year] = s.[Mth_Year] AND d.[Emp_Code] = s.[Emp_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Salary]';

IF OBJECT_ID(N'VijayData2627.dbo.[Salary]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Salary]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Salary]')
           AND name IN ('Mth_Year', 'Emp_Code', 'Work_Day', 'CL', 'Leave', 'Sunday', 'Holiday', 'Absent', 'Basic', 'DA', 'HRA', 'Income_Tax', 'Other_Allow', 'Other_Deduc', 'Conveyance', 'Medical', 'LTA', 'PF', 'EPF', 'ESI', 'Loan', 'Advance', 'Net_Salary', 'Loan_Bal', 'OverTime', 'OverTimeAmt', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'Adv_Bal', 'Emp_Basic')) < 33
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Salary] ([Mth_Year], [Emp_Code], [Work_Day], [CL], [Leave], [Sunday], [Holiday], [Absent], [Basic], [DA], [HRA], [Income_Tax], [Other_Allow], [Other_Deduc], [Conveyance], [Medical], [LTA], [PF], [EPF], [ESI], [Loan], [Advance], [Net_Salary], [Loan_Bal], [OverTime], [OverTimeAmt], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [Adv_Bal], [Emp_Basic])
    SELECT s.[Mth_Year], s.[Emp_Code], s.[Work_Day], s.[CL], s.[Leave], s.[Sunday], s.[Holiday], s.[Absent], s.[Basic], s.[DA], s.[HRA], s.[Income_Tax], s.[Other_Allow], s.[Other_Deduc], s.[Conveyance], s.[Medical], s.[LTA], s.[PF], s.[EPF], s.[ESI], s.[Loan], s.[Advance], s.[Net_Salary], s.[Loan_Bal], s.[OverTime], s.[OverTimeAmt], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[Adv_Bal], s.[Emp_Basic]
    FROM [VijayData2627].[dbo].[Salary] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Salary] AS d
                      WHERE d.[Mth_Year] = s.[Mth_Year] AND d.[Emp_Code] = s.[Emp_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [RWParameter]';

IF OBJECT_ID(N'VijayData2627.dbo.[RWParameter]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[RWParameter]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[RWParameter]')
           AND name IN ('Code', 'SNo', 'Name', 'Category', 'RPointOnAmt', 'RPoint', 'RPointValue', 'LimitLow', 'LimitUp', 'CompOperator', 'CondApp', 'Site_Code', 'U_Name', 'U_AE', 'U_EntDt', 'LogSite_Code', 'RedeemPer', 'AppUpToDiscPer', 'LimitAppOn', 'PointEvalOn')) < 20
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[RWParameter] ([Code], [SNo], [Name], [Category], [RPointOnAmt], [RPoint], [RPointValue], [LimitLow], [LimitUp], [CompOperator], [CondApp], [Site_Code], [U_Name], [U_AE], [U_EntDt], [LogSite_Code], [RedeemPer], [AppUpToDiscPer], [LimitAppOn], [PointEvalOn])
    SELECT s.[Code], s.[SNo], s.[Name], s.[Category], s.[RPointOnAmt], s.[RPoint], s.[RPointValue], s.[LimitLow], s.[LimitUp], s.[CompOperator], s.[CondApp], s.[Site_Code], s.[U_Name], s.[U_AE], s.[U_EntDt], s.[LogSite_Code], s.[RedeemPer], s.[AppUpToDiscPer], s.[LimitAppOn], s.[PointEvalOn]
    FROM [VijayData2627].[dbo].[RWParameter] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[RWParameter] AS d
                      WHERE d.[Code] = s.[Code] AND d.[SNo] = s.[SNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [RoundOffSetting]';

IF OBJECT_ID(N'VijayData2627.dbo.[RoundOffSetting]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[RoundOffSetting]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[RoundOffSetting]')
           AND name IN ('Code', 'Department', 'RoundOFFType', 'U_Name', 'U_EntDt', 'Site_Code', 'U_AE', 'ModuleName', 'LogSite_Code')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[RoundOffSetting] ([Code], [Department], [RoundOFFType], [U_Name], [U_EntDt], [Site_Code], [U_AE], [ModuleName], [LogSite_Code])
    SELECT s.[Code], s.[Department], s.[RoundOFFType], s.[U_Name], s.[U_EntDt], s.[Site_Code], s.[U_AE], s.[ModuleName], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[RoundOffSetting] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[RoundOffSetting] AS d
                      WHERE d.[RoundOFFType] = s.[RoundOFFType] AND d.[Site_Code] = s.[Site_Code] AND d.[ModuleName] = s.[ModuleName]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [RoomRate]';

IF OBJECT_ID(N'VijayData2627.dbo.[RoomRate]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[RoomRate]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[RoomRate]')
           AND name IN ('RoomRate', 'Tarrif', 'IncTax', 'ServiceChrg', 'U_Name', 'U_EntDt', 'U_AE', 'Site_Code', 'LogSite_Code')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[RoomRate] ([RoomRate], [Tarrif], [IncTax], [ServiceChrg], [U_Name], [U_EntDt], [U_AE], [Site_Code], [LogSite_Code])
    SELECT s.[RoomRate], s.[Tarrif], s.[IncTax], s.[ServiceChrg], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[RoomRate] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[RoomRate] AS d
                      WHERE d.[RoomRate] = s.[RoomRate] AND d.[Tarrif] = s.[Tarrif] AND d.[IncTax] = s.[IncTax] AND d.[ServiceChrg] = s.[ServiceChrg]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SunTranLog]';

IF OBJECT_ID(N'VijayData2627.dbo.[SunTranLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SunTranLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SunTranLog]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'VNo', 'Vdate', 'PartyCode', 'SunCode', 'Limit', 'DispName', 'ROff', 'CalcFormula', 'SValue', 'Amount', 'BaseAmount', 'U_Name', 'U_EntDt', 'U_AE', 'SunAppDate', 'RevCode', 'RestCode', 'DelFlag', 'SiteCode', 'LogSite_Code', 'SeqNo')) < 24
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SunTranLog] ([DocId], [Sno], [Vtype], [VNo], [Vdate], [PartyCode], [SunCode], [Limit], [DispName], [ROff], [CalcFormula], [SValue], [Amount], [BaseAmount], [U_Name], [U_EntDt], [U_AE], [SunAppDate], [RevCode], [RestCode], [DelFlag], [SiteCode], [LogSite_Code], [SeqNo])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[VNo], s.[Vdate], s.[PartyCode], s.[SunCode], s.[Limit], s.[DispName], s.[ROff], s.[CalcFormula], s.[SValue], s.[Amount], s.[BaseAmount], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[SunAppDate], s.[RevCode], s.[RestCode], s.[DelFlag], s.[SiteCode], s.[LogSite_Code], s.[SeqNo]
    FROM [VijayData2627].[dbo].[SunTranLog] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SunTranLog] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno] AND d.[SeqNo] = s.[SeqNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SunTranHEst]';

IF OBJECT_ID(N'VijayData2627.dbo.[SunTranHEst]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SunTranHEst]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SunTranHEst]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'VNo', 'Vdate', 'PartyCode', 'SunCode', 'Limit', 'DispName', 'ROff', 'CalcFormula', 'SValue', 'Amount', 'BaseAmount', 'U_Name', 'U_EntDt', 'U_AE', 'SunAppDate', 'RevCode', 'RestCode', 'DelFlag', 'SiteCode', 'LogSite_Code')) < 23
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SunTranHEst] ([DocId], [Sno], [Vtype], [VNo], [Vdate], [PartyCode], [SunCode], [Limit], [DispName], [ROff], [CalcFormula], [SValue], [Amount], [BaseAmount], [U_Name], [U_EntDt], [U_AE], [SunAppDate], [RevCode], [RestCode], [DelFlag], [SiteCode], [LogSite_Code])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[VNo], s.[Vdate], s.[PartyCode], s.[SunCode], s.[Limit], s.[DispName], s.[ROff], s.[CalcFormula], s.[SValue], s.[Amount], s.[BaseAmount], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[SunAppDate], s.[RevCode], s.[RestCode], s.[DelFlag], s.[SiteCode], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[SunTranHEst] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SunTranHEst] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SunTranH]';

IF OBJECT_ID(N'VijayData2627.dbo.[SunTranH]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SunTranH]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SunTranH]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'VNo', 'Vdate', 'PartyCode', 'SunCode', 'Limit', 'DispName', 'ROff', 'CalcFormula', 'SValue', 'Amount', 'BaseAmount', 'U_Name', 'U_EntDt', 'U_AE', 'SunAppDate', 'RevCode', 'RestCode', 'DelFlag', 'SiteCode', 'LogSite_Code')) < 23
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SunTranH] ([DocId], [Sno], [Vtype], [VNo], [Vdate], [PartyCode], [SunCode], [Limit], [DispName], [ROff], [CalcFormula], [SValue], [Amount], [BaseAmount], [U_Name], [U_EntDt], [U_AE], [SunAppDate], [RevCode], [RestCode], [DelFlag], [SiteCode], [LogSite_Code])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[VNo], s.[Vdate], s.[PartyCode], s.[SunCode], s.[Limit], s.[DispName], s.[ROff], s.[CalcFormula], s.[SValue], s.[Amount], s.[BaseAmount], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[SunAppDate], s.[RevCode], s.[RestCode], s.[DelFlag], s.[SiteCode], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[SunTranH] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SunTranH] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SunTranFacility]';

IF OBJECT_ID(N'VijayData2627.dbo.[SunTranFacility]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SunTranFacility]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SunTranFacility]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'VNo', 'Vdate', 'PartyCode', 'SunCode', 'Limit', 'DispName', 'ROff', 'CalcFormula', 'SValue', 'Amount', 'BaseAmount', 'U_Name', 'U_EntDt', 'U_AE', 'SunAppDate', 'RevCode', 'RestCode', 'DelFlag', 'SiteCode', 'LogSite_Code')) < 23
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SunTranFacility] ([DocId], [Sno], [Vtype], [VNo], [Vdate], [PartyCode], [SunCode], [Limit], [DispName], [ROff], [CalcFormula], [SValue], [Amount], [BaseAmount], [U_Name], [U_EntDt], [U_AE], [SunAppDate], [RevCode], [RestCode], [DelFlag], [SiteCode], [LogSite_Code])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[VNo], s.[Vdate], s.[PartyCode], s.[SunCode], s.[Limit], s.[DispName], s.[ROff], s.[CalcFormula], s.[SValue], s.[Amount], s.[BaseAmount], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[SunAppDate], s.[RevCode], s.[RestCode], s.[DelFlag], s.[SiteCode], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[SunTranFacility] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SunTranFacility] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SunTranEst]';

IF OBJECT_ID(N'VijayData2627.dbo.[SunTranEst]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SunTranEst]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SunTranEst]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'VNo', 'Vdate', 'PartyCode', 'SunCode', 'Limit', 'DispName', 'ROff', 'CalcFormula', 'SValue', 'Amount', 'BaseAmount', 'U_Name', 'U_EntDt', 'U_AE', 'SunAppDate', 'RevCode', 'RestCode', 'DelFlag', 'SiteCode', 'LogSite_Code')) < 23
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SunTranEst] ([DocId], [Sno], [Vtype], [VNo], [Vdate], [PartyCode], [SunCode], [Limit], [DispName], [ROff], [CalcFormula], [SValue], [Amount], [BaseAmount], [U_Name], [U_EntDt], [U_AE], [SunAppDate], [RevCode], [RestCode], [DelFlag], [SiteCode], [LogSite_Code])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[VNo], s.[Vdate], s.[PartyCode], s.[SunCode], s.[Limit], s.[DispName], s.[ROff], s.[CalcFormula], s.[SValue], s.[Amount], s.[BaseAmount], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[SunAppDate], s.[RevCode], s.[RestCode], s.[DelFlag], s.[SiteCode], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[SunTranEst] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SunTranEst] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SunTran]';

IF OBJECT_ID(N'VijayData2627.dbo.[SunTran]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SunTran]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SunTran]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'VNo', 'Vdate', 'PartyCode', 'SunCode', 'Limit', 'DispName', 'ROff', 'CalcFormula', 'SValue', 'Amount', 'BaseAmount', 'U_Name', 'U_EntDt', 'U_AE', 'SunAppDate', 'RevCode', 'RestCode', 'DelFlag', 'SiteCode', 'LogSite_Code', 'SeqNo')) < 24
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SunTran] ([DocId], [Sno], [Vtype], [VNo], [Vdate], [PartyCode], [SunCode], [Limit], [DispName], [ROff], [CalcFormula], [SValue], [Amount], [BaseAmount], [U_Name], [U_EntDt], [U_AE], [SunAppDate], [RevCode], [RestCode], [DelFlag], [SiteCode], [LogSite_Code], [SeqNo])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[VNo], s.[Vdate], s.[PartyCode], s.[SunCode], s.[Limit], s.[DispName], s.[ROff], s.[CalcFormula], s.[SValue], s.[Amount], s.[BaseAmount], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[SunAppDate], s.[RevCode], s.[RestCode], s.[DelFlag], s.[SiteCode], s.[LogSite_Code], s.[SeqNo]
    FROM [VijayData2627].[dbo].[SunTran] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SunTran] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SundryTypeFix]';

IF OBJECT_ID(N'VijayData2627.dbo.[SundryTypeFix]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SundryTypeFix]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SundryTypeFix]')
           AND name IN ('SundryCode', 'SNo', 'DispName', 'CalcFormula', 'PerOrAmt', 'RoundOff', 'SValue', 'Limit', 'PostAc', 'Nature', 'CalcSign', 'SysYN', 'Grp', 'Site_Code', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 17
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SundryTypeFix] ([SundryCode], [SNo], [DispName], [CalcFormula], [PerOrAmt], [RoundOff], [SValue], [Limit], [PostAc], [Nature], [CalcSign], [SysYN], [Grp], [Site_Code], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[SundryCode], s.[SNo], s.[DispName], s.[CalcFormula], s.[PerOrAmt], s.[RoundOff], s.[SValue], s.[Limit], s.[PostAc], s.[Nature], s.[CalcSign], s.[SysYN], s.[Grp], s.[Site_Code], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[SundryTypeFix] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SundryTypeFix] AS d
                      WHERE d.[SundryCode] = s.[SundryCode] AND d.[SNo] = s.[SNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SundryType]';

IF OBJECT_ID(N'VijayData2627.dbo.[SundryType]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SundryType]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SundryType]')
           AND name IN ('V_Type', 'SundryCode', 'SNo', 'AppDate', 'DispName', 'CalcFormula', 'PerOrAmt', 'RoundOff', 'SValue', 'Limit', 'RevCode', 'Nature', 'CalcSign', 'SysYN', 'Grp', 'AutoManual', 'U_Name', 'U_EntDt', 'U_AE', 'SiteCode', 'PostYN', 'LogSite_Code')) < 22
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SundryType] ([V_Type], [SundryCode], [SNo], [AppDate], [DispName], [CalcFormula], [PerOrAmt], [RoundOff], [SValue], [Limit], [RevCode], [Nature], [CalcSign], [SysYN], [Grp], [AutoManual], [U_Name], [U_EntDt], [U_AE], [SiteCode], [PostYN], [LogSite_Code])
    SELECT s.[V_Type], s.[SundryCode], s.[SNo], s.[AppDate], s.[DispName], s.[CalcFormula], s.[PerOrAmt], s.[RoundOff], s.[SValue], s.[Limit], s.[RevCode], s.[Nature], s.[CalcSign], s.[SysYN], s.[Grp], s.[AutoManual], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[SiteCode], s.[PostYN], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[SundryType] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SundryType] AS d
                      WHERE d.[V_Type] = s.[V_Type] AND d.[SundryCode] = s.[SundryCode] AND d.[SNo] = s.[SNo] AND d.[AppDate] = s.[AppDate]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SundryMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[SundryMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SundryMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SundryMast]')
           AND name IN ('Code', 'Name', 'Nature', 'CalcSign', 'SysYN', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 10
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SundryMast] ([Code], [Name], [Nature], [CalcSign], [SysYN], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Code], s.[Name], s.[Nature], s.[CalcSign], s.[SysYN], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[SundryMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SundryMast] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SubGroupType]';

IF OBJECT_ID(N'VijayData2627.dbo.[SubGroupType]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SubGroupType]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SubGroupType]')
           AND name IN ('Party_Type', 'Description', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'Site_Code')) < 7
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SubGroupType] ([Party_Type], [Description], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [Site_Code])
    SELECT s.[Party_Type], s.[Description], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[Site_Code]
    FROM [VijayData2627].[dbo].[SubGroupType] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SubGroupType] AS d
                      WHERE d.[Party_Type] = s.[Party_Type]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SubGroupRate]';

IF OBJECT_ID(N'VijayData2627.dbo.[SubGroupRate]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SubGroupRate]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SubGroupRate]')
           AND name IN ('SubCode', 'Sno', 'RoomCat', 'RoomRate', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SubGroupRate] ([SubCode], [Sno], [RoomCat], [RoomRate], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[SubCode], s.[Sno], s.[RoomCat], s.[RoomRate], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[SubGroupRate] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SubGroupRate] AS d
                      WHERE d.[SubCode] = s.[SubCode] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SubGroupLog]';

IF OBJECT_ID(N'VijayData2627.dbo.[SubGroupLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SubGroupLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SubGroupLog]')
           AND name IN ('AcID', 'Site_Code', 'SubCode', 'NameOld', 'NameNew', 'CityCodeOld', 'CityCodeNew', 'ActiveYNOld', 'ActiveYNNew', 'Reasons', 'U_Name', 'U_EntDt', 'U_AE', 'Nature', 'LogSite_Code', 'FatherName', 'CreditLimit', 'MotherName', 'IdProof', 'IdProofNo', 'ValidFrom', 'CINNo', 'GSTIN', 'MapCode', 'DealerType', 'LegalName', 'TradeName')) < 27
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SubGroupLog] ([AcID], [Site_Code], [SubCode], [NameOld], [NameNew], [CityCodeOld], [CityCodeNew], [ActiveYNOld], [ActiveYNNew], [Reasons], [U_Name], [U_EntDt], [U_AE], [Nature], [LogSite_Code], [FatherName], [CreditLimit], [MotherName], [IdProof], [IdProofNo], [ValidFrom], [CINNo], [GSTIN], [MapCode], [DealerType], [LegalName], [TradeName])
    SELECT s.[AcID], s.[Site_Code], s.[SubCode], s.[NameOld], s.[NameNew], s.[CityCodeOld], s.[CityCodeNew], s.[ActiveYNOld], s.[ActiveYNNew], s.[Reasons], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Nature], s.[LogSite_Code], s.[FatherName], s.[CreditLimit], s.[MotherName], s.[IdProof], s.[IdProofNo], s.[ValidFrom], s.[CINNo], s.[GSTIN], s.[MapCode], s.[DealerType], s.[LegalName], s.[TradeName]
    FROM [VijayData2627].[dbo].[SubGroupLog] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SubGroupLog] AS d
                      WHERE d.[Site_Code] = s.[Site_Code] AND d.[SubCode] = s.[SubCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SubGroupCurrBal]';

IF OBJECT_ID(N'VijayData2627.dbo.[SubGroupCurrBal]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SubGroupCurrBal]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SubGroupCurrBal]')
           AND name IN ('LogSite_Code', 'SubCode', 'V_Date', 'GroupCode', 'Curr_Bal', 'Site_Code')) < 6
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SubGroupCurrBal] ([LogSite_Code], [SubCode], [V_Date], [GroupCode], [Curr_Bal], [Site_Code])
    SELECT s.[LogSite_Code], s.[SubCode], s.[V_Date], s.[GroupCode], s.[Curr_Bal], s.[Site_Code]
    FROM [VijayData2627].[dbo].[SubGroupCurrBal] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SubGroupCurrBal] AS d
                      WHERE d.[LogSite_Code] = s.[LogSite_Code] AND d.[SubCode] = s.[SubCode] AND d.[V_Date] = s.[V_Date]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SubGroup]';

IF OBJECT_ID(N'VijayData2627.dbo.[SubGroup]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SubGroup]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SubGroup]')
           AND name IN ('SubCode', 'Site_Code', 'Name', 'ShortName', 'NameHelp', 'GroupCode', 'GroupNature', 'Nature', 'Category', 'ConPrefix', 'ConPerson', 'ConSuffix', 'Add1', 'Add2', 'Add3', 'CityCode', 'PIN', 'Phone', 'Mobile', 'FAX', 'EMail', 'CSTNo', 'LSTNo', 'PANNo', 'ITWARD_NO', 'TDS_Catg', 'ActiveYN', 'CreditLimit', 'CreditDays', 'Religion', 'AreaCode', 'Remark', 'FName', 'CompanyType', 'AllowCredit', 'DiscountType', 'Discount', 'Commission', 'Remarks', 'BlackListed', 'ReasonBlackList', 'BlackListedBy', 'Interest', 'U_Name', 'U_EntDt', 'U_AE', 'FGLNO', 'DLNO', 'CostCenterAppl', 'PhoneO', 'Transport', 'TINNo', 'LogSite_Code', 'ValidateUpto', 'CardIssDate', 'AppNo', 'CardNo', 'SubCorresYN', 'AddName', 'ValidFrom', 'WebPassword', 'BloodGroup', 'MeshAc', 'ConPersonMName', 'ConPersonLName', 'ChequeType', 'Mobile1', 'ApplDate', 'SeqNo', 'FatherName', 'MotherName', 'IdProof', 'IdProofNo', 'CINNo', 'GSTIN', 'MapCode', 'DealerType', 'LegalName', 'TradeName')) < 79
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SubGroup] ([SubCode], [Site_Code], [Name], [ShortName], [NameHelp], [GroupCode], [GroupNature], [Nature], [Category], [ConPrefix], [ConPerson], [ConSuffix], [Add1], [Add2], [Add3], [CityCode], [PIN], [Phone], [Mobile], [FAX], [EMail], [CSTNo], [LSTNo], [PANNo], [ITWARD_NO], [TDS_Catg], [ActiveYN], [CreditLimit], [CreditDays], [Religion], [AreaCode], [Remark], [FName], [CompanyType], [AllowCredit], [DiscountType], [Discount], [Commission], [Remarks], [BlackListed], [ReasonBlackList], [BlackListedBy], [Interest], [U_Name], [U_EntDt], [U_AE], [FGLNO], [DLNO], [CostCenterAppl], [PhoneO], [Transport], [TINNo], [LogSite_Code], [ValidateUpto], [CardIssDate], [AppNo], [CardNo], [SubCorresYN], [AddName], [ValidFrom], [WebPassword], [BloodGroup], [MeshAc], [ConPersonMName], [ConPersonLName], [ChequeType], [Mobile1], [ApplDate], [SeqNo], [FatherName], [MotherName], [IdProof], [IdProofNo], [CINNo], [GSTIN], [MapCode], [DealerType], [LegalName], [TradeName])
    SELECT s.[SubCode], s.[Site_Code], s.[Name], s.[ShortName], s.[NameHelp], s.[GroupCode], s.[GroupNature], s.[Nature], s.[Category], s.[ConPrefix], s.[ConPerson], s.[ConSuffix], s.[Add1], s.[Add2], s.[Add3], s.[CityCode], s.[PIN], s.[Phone], s.[Mobile], s.[FAX], s.[EMail], s.[CSTNo], s.[LSTNo], s.[PANNo], s.[ITWARD_NO], s.[TDS_Catg], s.[ActiveYN], s.[CreditLimit], s.[CreditDays], s.[Religion], s.[AreaCode], s.[Remark], s.[FName], s.[CompanyType], s.[AllowCredit], s.[DiscountType], s.[Discount], s.[Commission], s.[Remarks], s.[BlackListed], s.[ReasonBlackList], s.[BlackListedBy], s.[Interest], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[FGLNO], s.[DLNO], s.[CostCenterAppl], s.[PhoneO], s.[Transport], s.[TINNo], s.[LogSite_Code], s.[ValidateUpto], s.[CardIssDate], s.[AppNo], s.[CardNo], s.[SubCorresYN], s.[AddName], s.[ValidFrom], s.[WebPassword], s.[BloodGroup], s.[MeshAc], s.[ConPersonMName], s.[ConPersonLName], s.[ChequeType], s.[Mobile1], s.[ApplDate], s.[SeqNo], s.[FatherName], s.[MotherName], s.[IdProof], s.[IdProofNo], s.[CINNo], s.[GSTIN], s.[MapCode], s.[DealerType], s.[LegalName], s.[TradeName]
    FROM [VijayData2627].[dbo].[SubGroup] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SubGroup] AS d
                      WHERE d.[SubCode] = s.[SubCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [StockLog]';

IF OBJECT_ID(N'VijayData2627.dbo.[StockLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[StockLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[StockLog]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'PartyCode', 'RestCode', 'RoomCat', 'RoomType', 'RoomNo', 'ContraDocId', 'ContraSno', 'Item', 'QtyIss', 'QtyRec', 'Unit', 'Rate', 'Amount', 'TaxPer', 'TaxAmt', 'DiscPer', 'DiscAmt', 'VoidYN', 'Remarks', 'KOTDocId', 'KOTSno', 'VTime', 'U_Name', 'U_EntDt', 'U_AE', 'Total', 'DiscApp', 'RoundOff', 'DepartCode', 'GodownCode', 'ChalQty', 'RecdQty', 'AccQty', 'RejQty', 'RecdUnit', 'Specification', 'ItemRate', 'DelFlag', 'LandVal', 'ConvRatio', 'IndentDocId', 'IndentSNo', 'IssQty', 'IssueUnit', 'LogSite_Code', 'FreeSno', 'SchemeCode', 'SeqNo', 'Company', 'ExpDate', 'MfdDate', 'ItemRestCode', 'ShiftCode', 'MRP', 'SChrgApp', 'SChrgPer', 'SChrgAmt', 'RefDocId')) < 65
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[StockLog] ([DocId], [Sno], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [PartyCode], [RestCode], [RoomCat], [RoomType], [RoomNo], [ContraDocId], [ContraSno], [Item], [QtyIss], [QtyRec], [Unit], [Rate], [Amount], [TaxPer], [TaxAmt], [DiscPer], [DiscAmt], [VoidYN], [Remarks], [KOTDocId], [KOTSno], [VTime], [U_Name], [U_EntDt], [U_AE], [Total], [DiscApp], [RoundOff], [DepartCode], [GodownCode], [ChalQty], [RecdQty], [AccQty], [RejQty], [RecdUnit], [Specification], [ItemRate], [DelFlag], [LandVal], [ConvRatio], [IndentDocId], [IndentSNo], [IssQty], [IssueUnit], [LogSite_Code], [FreeSno], [SchemeCode], [SeqNo], [Company], [ExpDate], [MfdDate], [ItemRestCode], [ShiftCode], [MRP], [SChrgApp], [SChrgPer], [SChrgAmt], [RefDocId])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[PartyCode], s.[RestCode], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[ContraDocId], s.[ContraSno], s.[Item], s.[QtyIss], s.[QtyRec], s.[Unit], s.[Rate], s.[Amount], s.[TaxPer], s.[TaxAmt], s.[DiscPer], s.[DiscAmt], s.[VoidYN], s.[Remarks], s.[KOTDocId], s.[KOTSno], s.[VTime], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Total], s.[DiscApp], s.[RoundOff], s.[DepartCode], s.[GodownCode], s.[ChalQty], s.[RecdQty], s.[AccQty], s.[RejQty], s.[RecdUnit], s.[Specification], s.[ItemRate], s.[DelFlag], s.[LandVal], s.[ConvRatio], s.[IndentDocId], s.[IndentSNo], s.[IssQty], s.[IssueUnit], s.[LogSite_Code], s.[FreeSno], s.[SchemeCode], s.[SeqNo], s.[Company], s.[ExpDate], s.[MfdDate], s.[ItemRestCode], s.[ShiftCode], s.[MRP], s.[SChrgApp], s.[SChrgPer], s.[SChrgAmt], s.[RefDocId]
    FROM [VijayData2627].[dbo].[StockLog] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[StockLog] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno] AND d.[SeqNo] = s.[SeqNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Stock1]';

IF OBJECT_ID(N'VijayData2627.dbo.[Stock1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Stock1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Stock1]')
           AND name IN ('DocId', 'Sno', 'Sno1', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'PartyCode', 'RestCode', 'RoomCat', 'RoomType', 'RoomNo', 'ContraDocId', 'ContraSno', 'Item', 'QtyIss', 'QtyRec', 'Unit', 'Rate', 'Amount', 'TaxPer', 'TaxAmt', 'DiscPer', 'DiscAmt', 'VoidYN', 'Remarks', 'KOTDocId', 'KOTSno', 'VTime', 'U_Name', 'U_EntDt', 'U_AE', 'Total', 'DiscApp', 'RoundOff', 'DepartCode', 'GodownCode', 'ChalQty', 'RecdQty', 'AccQty', 'RejQty', 'RecdUnit', 'Specification', 'ItemRate', 'DelFlag', 'LandVal', 'ConvRatio', 'IndentDocId', 'IndentSNo', 'IssQty', 'IssueUnit', 'LogSite_Code', 'FreeSno', 'SchemeCode', 'SeqNo', 'Company', 'ExpDate', 'MfdDate', 'ItemRestCode', 'ShiftCode')) < 61
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Stock1] ([DocId], [Sno], [Sno1], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [PartyCode], [RestCode], [RoomCat], [RoomType], [RoomNo], [ContraDocId], [ContraSno], [Item], [QtyIss], [QtyRec], [Unit], [Rate], [Amount], [TaxPer], [TaxAmt], [DiscPer], [DiscAmt], [VoidYN], [Remarks], [KOTDocId], [KOTSno], [VTime], [U_Name], [U_EntDt], [U_AE], [Total], [DiscApp], [RoundOff], [DepartCode], [GodownCode], [ChalQty], [RecdQty], [AccQty], [RejQty], [RecdUnit], [Specification], [ItemRate], [DelFlag], [LandVal], [ConvRatio], [IndentDocId], [IndentSNo], [IssQty], [IssueUnit], [LogSite_Code], [FreeSno], [SchemeCode], [SeqNo], [Company], [ExpDate], [MfdDate], [ItemRestCode], [ShiftCode])
    SELECT s.[DocId], s.[Sno], s.[Sno1], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[PartyCode], s.[RestCode], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[ContraDocId], s.[ContraSno], s.[Item], s.[QtyIss], s.[QtyRec], s.[Unit], s.[Rate], s.[Amount], s.[TaxPer], s.[TaxAmt], s.[DiscPer], s.[DiscAmt], s.[VoidYN], s.[Remarks], s.[KOTDocId], s.[KOTSno], s.[VTime], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Total], s.[DiscApp], s.[RoundOff], s.[DepartCode], s.[GodownCode], s.[ChalQty], s.[RecdQty], s.[AccQty], s.[RejQty], s.[RecdUnit], s.[Specification], s.[ItemRate], s.[DelFlag], s.[LandVal], s.[ConvRatio], s.[IndentDocId], s.[IndentSNo], s.[IssQty], s.[IssueUnit], s.[LogSite_Code], s.[FreeSno], s.[SchemeCode], s.[SeqNo], s.[Company], s.[ExpDate], s.[MfdDate], s.[ItemRestCode], s.[ShiftCode]
    FROM [VijayData2627].[dbo].[Stock1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Stock1] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno] AND d.[Sno1] = s.[Sno1]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Stock]';

IF OBJECT_ID(N'VijayData2627.dbo.[Stock]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Stock]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Stock]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'PartyCode', 'RestCode', 'RoomCat', 'RoomType', 'RoomNo', 'ContraDocId', 'ContraSno', 'Item', 'QtyIss', 'QtyRec', 'Unit', 'Rate', 'Amount', 'TaxPer', 'TaxAmt', 'DiscPer', 'DiscAmt', 'VoidYN', 'Remarks', 'KOTDocId', 'KOTSno', 'VTime', 'U_Name', 'U_EntDt', 'U_AE', 'Total', 'DiscApp', 'RoundOff', 'DepartCode', 'GodownCode', 'ChalQty', 'RecdQty', 'AccQty', 'RejQty', 'RecdUnit', 'Specification', 'ItemRate', 'DelFlag', 'LandVal', 'ConvRatio', 'IndentDocId', 'IndentSNo', 'IssQty', 'IssueUnit', 'LogSite_Code', 'FreeSno', 'SchemeCode', 'SeqNo', 'Company', 'ExpDate', 'MfdDate', 'ItemRestCode', 'ShiftCode', 'MRP', 'SChrgApp', 'SChrgPer', 'SChrgAmt', 'RefDocId')) < 65
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Stock] ([DocId], [Sno], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [PartyCode], [RestCode], [RoomCat], [RoomType], [RoomNo], [ContraDocId], [ContraSno], [Item], [QtyIss], [QtyRec], [Unit], [Rate], [Amount], [TaxPer], [TaxAmt], [DiscPer], [DiscAmt], [VoidYN], [Remarks], [KOTDocId], [KOTSno], [VTime], [U_Name], [U_EntDt], [U_AE], [Total], [DiscApp], [RoundOff], [DepartCode], [GodownCode], [ChalQty], [RecdQty], [AccQty], [RejQty], [RecdUnit], [Specification], [ItemRate], [DelFlag], [LandVal], [ConvRatio], [IndentDocId], [IndentSNo], [IssQty], [IssueUnit], [LogSite_Code], [FreeSno], [SchemeCode], [SeqNo], [Company], [ExpDate], [MfdDate], [ItemRestCode], [ShiftCode], [MRP], [SChrgApp], [SChrgPer], [SChrgAmt], [RefDocId])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[PartyCode], s.[RestCode], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[ContraDocId], s.[ContraSno], s.[Item], s.[QtyIss], s.[QtyRec], s.[Unit], s.[Rate], s.[Amount], s.[TaxPer], s.[TaxAmt], s.[DiscPer], s.[DiscAmt], s.[VoidYN], s.[Remarks], s.[KOTDocId], s.[KOTSno], s.[VTime], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Total], s.[DiscApp], s.[RoundOff], s.[DepartCode], s.[GodownCode], s.[ChalQty], s.[RecdQty], s.[AccQty], s.[RejQty], s.[RecdUnit], s.[Specification], s.[ItemRate], s.[DelFlag], s.[LandVal], s.[ConvRatio], s.[IndentDocId], s.[IndentSNo], s.[IssQty], s.[IssueUnit], s.[LogSite_Code], s.[FreeSno], s.[SchemeCode], s.[SeqNo], s.[Company], s.[ExpDate], s.[MfdDate], s.[ItemRestCode], s.[ShiftCode], s.[MRP], s.[SChrgApp], s.[SChrgPer], s.[SChrgAmt], s.[RefDocId]
    FROM [VijayData2627].[dbo].[Stock] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Stock] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [State]';

IF OBJECT_ID(N'VijayData2627.dbo.[State]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[State]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[State]')
           AND name IN ('Code', 'Name', 'ShortName', 'Country', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[State] ([Code], [Name], [ShortName], [Country], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Code], s.[Name], s.[ShortName], s.[Country], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[State] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[State] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SplitSunTran]';

IF OBJECT_ID(N'VijayData2627.dbo.[SplitSunTran]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SplitSunTran]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SplitSunTran]')
           AND name IN ('DocId', 'VDate', 'RestCode', 'SNo', 'Amount', 'SunCode', 'DispName', 'BaseAmount', 'BillCat', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'DelFlag', 'LogSite_Code')) < 15
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SplitSunTran] ([DocId], [VDate], [RestCode], [SNo], [Amount], [SunCode], [DispName], [BaseAmount], [BillCat], [Site_Code], [U_Name], [U_EntDt], [U_AE], [DelFlag], [LogSite_Code])
    SELECT s.[DocId], s.[VDate], s.[RestCode], s.[SNo], s.[Amount], s.[SunCode], s.[DispName], s.[BaseAmount], s.[BillCat], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[DelFlag], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[SplitSunTran] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SplitSunTran] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[SNo] = s.[SNo] AND d.[BillCat] = s.[BillCat] AND d.[Site_Code] = s.[Site_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SplitStock1]';

IF OBJECT_ID(N'VijayData2627.dbo.[SplitStock1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SplitStock1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SplitStock1]')
           AND name IN ('DocId', 'Sno', 'Sno1', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'PartyCode', 'RestCode', 'RoomCat', 'RoomType', 'RoomNo', 'ContraDocId', 'ContraSno', 'Item', 'QtyIss', 'QtyRec', 'Unit', 'Rate', 'Amount', 'TaxPer', 'TaxAmt', 'DiscPer', 'DiscAmt', 'VoidYN', 'Remarks', 'KOTDocId', 'KOTSno', 'VTime', 'U_Name', 'U_EntDt', 'U_AE', 'Total', 'DiscApp', 'RoundOff', 'DepartCode', 'GodownCode', 'ChalQty', 'RecdQty', 'AccQty', 'RejQty', 'RecdUnit', 'Specification', 'ItemRate', 'DelFlag', 'LandVal', 'ConvRatio', 'IndentDocId', 'IndentSNo', 'IssQty', 'IssueUnit', 'LogSite_Code', 'FreeSno', 'SchemeCode', 'ItemRestCode')) < 56
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SplitStock1] ([DocId], [Sno], [Sno1], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [PartyCode], [RestCode], [RoomCat], [RoomType], [RoomNo], [ContraDocId], [ContraSno], [Item], [QtyIss], [QtyRec], [Unit], [Rate], [Amount], [TaxPer], [TaxAmt], [DiscPer], [DiscAmt], [VoidYN], [Remarks], [KOTDocId], [KOTSno], [VTime], [U_Name], [U_EntDt], [U_AE], [Total], [DiscApp], [RoundOff], [DepartCode], [GodownCode], [ChalQty], [RecdQty], [AccQty], [RejQty], [RecdUnit], [Specification], [ItemRate], [DelFlag], [LandVal], [ConvRatio], [IndentDocId], [IndentSNo], [IssQty], [IssueUnit], [LogSite_Code], [FreeSno], [SchemeCode], [ItemRestCode])
    SELECT s.[DocId], s.[Sno], s.[Sno1], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[PartyCode], s.[RestCode], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[ContraDocId], s.[ContraSno], s.[Item], s.[QtyIss], s.[QtyRec], s.[Unit], s.[Rate], s.[Amount], s.[TaxPer], s.[TaxAmt], s.[DiscPer], s.[DiscAmt], s.[VoidYN], s.[Remarks], s.[KOTDocId], s.[KOTSno], s.[VTime], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Total], s.[DiscApp], s.[RoundOff], s.[DepartCode], s.[GodownCode], s.[ChalQty], s.[RecdQty], s.[AccQty], s.[RejQty], s.[RecdUnit], s.[Specification], s.[ItemRate], s.[DelFlag], s.[LandVal], s.[ConvRatio], s.[IndentDocId], s.[IndentSNo], s.[IssQty], s.[IssueUnit], s.[LogSite_Code], s.[FreeSno], s.[SchemeCode], s.[ItemRestCode]
    FROM [VijayData2627].[dbo].[SplitStock1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SplitStock1] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno] AND d.[Sno1] = s.[Sno1]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SplitStock]';

IF OBJECT_ID(N'VijayData2627.dbo.[SplitStock]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SplitStock]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SplitStock]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'PartyCode', 'RestCode', 'RoomCat', 'RoomType', 'RoomNo', 'ContraDocId', 'ContraSno', 'Item', 'QtyIss', 'QtyRec', 'Unit', 'Rate', 'Amount', 'TaxPer', 'TaxAmt', 'DiscPer', 'DiscAmt', 'VoidYN', 'Remarks', 'KOTDocId', 'KOTSno', 'VTime', 'U_Name', 'U_EntDt', 'U_AE', 'Total', 'DiscApp', 'RoundOff', 'DepartCode', 'GodownCode', 'ChalQty', 'RecdQty', 'AccQty', 'RejQty', 'RecdUnit', 'Specification', 'ItemRate', 'DelFlag', 'LandVal', 'ConvRatio', 'IndentDocId', 'IndentSNo', 'IssQty', 'IssueUnit', 'LogSite_Code', 'FreeSno', 'SchemeCode', 'ItemRestCode', 'MRP', 'SChrgApp', 'SChrgPer', 'SChrgAmt')) < 59
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SplitStock] ([DocId], [Sno], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [PartyCode], [RestCode], [RoomCat], [RoomType], [RoomNo], [ContraDocId], [ContraSno], [Item], [QtyIss], [QtyRec], [Unit], [Rate], [Amount], [TaxPer], [TaxAmt], [DiscPer], [DiscAmt], [VoidYN], [Remarks], [KOTDocId], [KOTSno], [VTime], [U_Name], [U_EntDt], [U_AE], [Total], [DiscApp], [RoundOff], [DepartCode], [GodownCode], [ChalQty], [RecdQty], [AccQty], [RejQty], [RecdUnit], [Specification], [ItemRate], [DelFlag], [LandVal], [ConvRatio], [IndentDocId], [IndentSNo], [IssQty], [IssueUnit], [LogSite_Code], [FreeSno], [SchemeCode], [ItemRestCode], [MRP], [SChrgApp], [SChrgPer], [SChrgAmt])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[PartyCode], s.[RestCode], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[ContraDocId], s.[ContraSno], s.[Item], s.[QtyIss], s.[QtyRec], s.[Unit], s.[Rate], s.[Amount], s.[TaxPer], s.[TaxAmt], s.[DiscPer], s.[DiscAmt], s.[VoidYN], s.[Remarks], s.[KOTDocId], s.[KOTSno], s.[VTime], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Total], s.[DiscApp], s.[RoundOff], s.[DepartCode], s.[GodownCode], s.[ChalQty], s.[RecdQty], s.[AccQty], s.[RejQty], s.[RecdUnit], s.[Specification], s.[ItemRate], s.[DelFlag], s.[LandVal], s.[ConvRatio], s.[IndentDocId], s.[IndentSNo], s.[IssQty], s.[IssueUnit], s.[LogSite_Code], s.[FreeSno], s.[SchemeCode], s.[ItemRestCode], s.[MRP], s.[SChrgApp], s.[SChrgPer], s.[SChrgAmt]
    FROM [VijayData2627].[dbo].[SplitStock] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SplitStock] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SplitSale2]';

IF OBJECT_ID(N'VijayData2627.dbo.[SplitSale2]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SplitSale2]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SplitSale2]')
           AND name IN ('DocId', 'Sno', 'SNo1', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'RestCode', 'TaxCode', 'BaseValue', 'TaxPer', 'TaxAmt', 'U_Name', 'U_EntDt', 'U_AE', 'DelFlag', 'LogSite_Code')) < 18
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SplitSale2] ([DocId], [Sno], [SNo1], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [RestCode], [TaxCode], [BaseValue], [TaxPer], [TaxAmt], [U_Name], [U_EntDt], [U_AE], [DelFlag], [LogSite_Code])
    SELECT s.[DocId], s.[Sno], s.[SNo1], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[RestCode], s.[TaxCode], s.[BaseValue], s.[TaxPer], s.[TaxAmt], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[DelFlag], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[SplitSale2] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SplitSale2] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno] AND d.[SNo1] = s.[SNo1]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SplitSale1]';

IF OBJECT_ID(N'VijayData2627.dbo.[SplitSale1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SplitSale1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SplitSale1]')
           AND name IN ('DocId', 'Vtype', 'VNo', 'Vtime', 'Site_Code', 'Vprefix', 'Vdate', 'RestCode', 'RoomCat', 'RoomType', 'RoomNo', 'FolioNo', 'Party', 'Total', 'DiscPer', 'DiscAmt', 'NonTaxable', 'Taxable', 'Tax', 'ServiceCharge', 'AddAmt', 'DedAmt', 'RoundOff', 'NetAmt', 'Remark', 'Waiter', 'FrBookDate', 'FrBookTime', 'MenuSpl1', 'MenuSpl2', 'MenuSpl3', 'MenuSpl4', 'FuncName', 'HouseKeep', 'FrontOff', 'Engg', 'Security', 'Chef', 'Board', 'KOTNo', 'TokenNo', 'ExpAtt', 'GuarAtt', 'CoverRate', 'U_Name', 'U_EntDt', 'U_AE', 'ToBookDate', 'ToBookTime', 'HallRent', 'TotalPerCover', 'Amount', 'Advance', 'RecNo', 'RecDate', 'CrCardNo', 'CrCardHolder', 'BookDocId', 'DelFlag', 'PRINTED', 'LogSite_Code', 'DOSBILL_TYPE', 'DOSBILLNO', 'DOSRESTCODE', 'ServiceTax', 'AU_Name', 'AU_EntDt', 'Redemption', 'DiscRemark', 'CGST', 'SGST', 'IGST', 'EditRemark')) < 73
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SplitSale1] ([DocId], [Vtype], [VNo], [Vtime], [Site_Code], [Vprefix], [Vdate], [RestCode], [RoomCat], [RoomType], [RoomNo], [FolioNo], [Party], [Total], [DiscPer], [DiscAmt], [NonTaxable], [Taxable], [Tax], [ServiceCharge], [AddAmt], [DedAmt], [RoundOff], [NetAmt], [Remark], [Waiter], [FrBookDate], [FrBookTime], [MenuSpl1], [MenuSpl2], [MenuSpl3], [MenuSpl4], [FuncName], [HouseKeep], [FrontOff], [Engg], [Security], [Chef], [Board], [KOTNo], [TokenNo], [ExpAtt], [GuarAtt], [CoverRate], [U_Name], [U_EntDt], [U_AE], [ToBookDate], [ToBookTime], [HallRent], [TotalPerCover], [Amount], [Advance], [RecNo], [RecDate], [CrCardNo], [CrCardHolder], [BookDocId], [DelFlag], [PRINTED], [LogSite_Code], [DOSBILL_TYPE], [DOSBILLNO], [DOSRESTCODE], [ServiceTax], [AU_Name], [AU_EntDt], [Redemption], [DiscRemark], [CGST], [SGST], [IGST], [EditRemark])
    SELECT s.[DocId], s.[Vtype], s.[VNo], s.[Vtime], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[RestCode], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[FolioNo], s.[Party], s.[Total], s.[DiscPer], s.[DiscAmt], s.[NonTaxable], s.[Taxable], s.[Tax], s.[ServiceCharge], s.[AddAmt], s.[DedAmt], s.[RoundOff], s.[NetAmt], s.[Remark], s.[Waiter], s.[FrBookDate], s.[FrBookTime], s.[MenuSpl1], s.[MenuSpl2], s.[MenuSpl3], s.[MenuSpl4], s.[FuncName], s.[HouseKeep], s.[FrontOff], s.[Engg], s.[Security], s.[Chef], s.[Board], s.[KOTNo], s.[TokenNo], s.[ExpAtt], s.[GuarAtt], s.[CoverRate], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[ToBookDate], s.[ToBookTime], s.[HallRent], s.[TotalPerCover], s.[Amount], s.[Advance], s.[RecNo], s.[RecDate], s.[CrCardNo], s.[CrCardHolder], s.[BookDocId], s.[DelFlag], s.[PRINTED], s.[LogSite_Code], s.[DOSBILL_TYPE], s.[DOSBILLNO], s.[DOSRESTCODE], s.[ServiceTax], s.[AU_Name], s.[AU_EntDt], s.[Redemption], s.[DiscRemark], s.[CGST], s.[SGST], s.[IGST], s.[EditRemark]
    FROM [VijayData2627].[dbo].[SplitSale1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SplitSale1] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SplitedSunTran]';

IF OBJECT_ID(N'VijayData2627.dbo.[SplitedSunTran]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SplitedSunTran]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SplitedSunTran]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'VNo', 'Vdate', 'PartyCode', 'SunCode', 'Limit', 'DispName', 'ROff', 'CalcFormula', 'SValue', 'Amount', 'BaseAmount', 'U_Name', 'U_EntDt', 'U_AE', 'SunAppDate', 'RevCode', 'RestCode', 'DelFlag', 'SiteCode', 'LogSite_Code')) < 23
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SplitedSunTran] ([DocId], [Sno], [Vtype], [VNo], [Vdate], [PartyCode], [SunCode], [Limit], [DispName], [ROff], [CalcFormula], [SValue], [Amount], [BaseAmount], [U_Name], [U_EntDt], [U_AE], [SunAppDate], [RevCode], [RestCode], [DelFlag], [SiteCode], [LogSite_Code])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[VNo], s.[Vdate], s.[PartyCode], s.[SunCode], s.[Limit], s.[DispName], s.[ROff], s.[CalcFormula], s.[SValue], s.[Amount], s.[BaseAmount], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[SunAppDate], s.[RevCode], s.[RestCode], s.[DelFlag], s.[SiteCode], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[SplitedSunTran] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SplitedSunTran] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [SplitBillDetail]';

IF OBJECT_ID(N'VijayData2627.dbo.[SplitBillDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[SplitBillDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[SplitBillDetail]')
           AND name IN ('DocId', 'VNo', 'VDate', 'VTime', 'RestCode', 'TableNo', 'SNo', 'SNo1', 'ItemName', 'OQty', 'Rate', 'BillQty', 'BillCat', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'DelFlag', 'LogSite_Code')) < 19
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[SplitBillDetail] ([DocId], [VNo], [VDate], [VTime], [RestCode], [TableNo], [SNo], [SNo1], [ItemName], [OQty], [Rate], [BillQty], [BillCat], [Site_Code], [U_Name], [U_EntDt], [U_AE], [DelFlag], [LogSite_Code])
    SELECT s.[DocId], s.[VNo], s.[VDate], s.[VTime], s.[RestCode], s.[TableNo], s.[SNo], s.[SNo1], s.[ItemName], s.[OQty], s.[Rate], s.[BillQty], s.[BillCat], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[DelFlag], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[SplitBillDetail] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[SplitBillDetail] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[SNo] = s.[SNo] AND d.[SNo1] = s.[SNo1] AND d.[BillCat] = s.[BillCat] AND d.[Site_Code] = s.[Site_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [VenueOCC]';

IF OBJECT_ID(N'VijayData2627.dbo.[VenueOCC]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[VenueOCC]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[VenueOCC]')
           AND name IN ('FPDocid', 'VenuCode', 'FromDate', 'ToDate', 'FromTime', 'ToTime', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 11
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[VenueOCC] ([FPDocid], [VenuCode], [FromDate], [ToDate], [FromTime], [ToTime], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[FPDocid], s.[VenuCode], s.[FromDate], s.[ToDate], s.[FromTime], s.[ToTime], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[VenueOCC] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[VenueOCC] AS d
                      WHERE d.[FPDocid] = s.[FPDocid] AND d.[VenuCode] = s.[VenuCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [VenueMast1]';

IF OBJECT_ID(N'VijayData2627.dbo.[VenueMast1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[VenueMast1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[VenueMast1]')
           AND name IN ('Code', 'Name', 'ShortName', 'Capacity', 'Seating', 'Floating', 'Dimension', 'Status', 'DepartCode', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'PicPath', 'LogSite_Code')) < 15
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[VenueMast1] ([Code], [Name], [ShortName], [Capacity], [Seating], [Floating], [Dimension], [Status], [DepartCode], [Site_Code], [U_Name], [U_EntDt], [U_AE], [PicPath], [LogSite_Code])
    SELECT s.[Code], s.[Name], s.[ShortName], s.[Capacity], s.[Seating], s.[Floating], s.[Dimension], s.[Status], s.[DepartCode], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[PicPath], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[VenueMast1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[VenueMast1] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [VenueMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[VenueMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[VenueMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[VenueMast]')
           AND name IN ('Code', 'Name', 'ShortName', 'Capacity', 'Seating', 'Floating', 'Dimension', 'Status', 'DepartCode', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'PicPath', 'LogSite_Code')) < 15
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[VenueMast] ([Code], [Name], [ShortName], [Capacity], [Seating], [Floating], [Dimension], [Status], [DepartCode], [Site_Code], [U_Name], [U_EntDt], [U_AE], [PicPath], [LogSite_Code])
    SELECT s.[Code], s.[Name], s.[ShortName], s.[Capacity], s.[Seating], s.[Floating], s.[Dimension], s.[Status], s.[DepartCode], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[PicPath], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[VenueMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[VenueMast] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [VenueFeatures]';

IF OBJECT_ID(N'VijayData2627.dbo.[VenueFeatures]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[VenueFeatures]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[VenueFeatures]')
           AND name IN ('VenueCode', 'Feature', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 7
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[VenueFeatures] ([VenueCode], [Feature], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[VenueCode], s.[Feature], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[VenueFeatures] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[VenueFeatures] AS d
                      WHERE d.[VenueCode] = s.[VenueCode] AND d.[Feature] = s.[Feature]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [VenueCapacity]';

IF OBJECT_ID(N'VijayData2627.dbo.[VenueCapacity]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[VenueCapacity]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[VenueCapacity]')
           AND name IN ('VenueCode', 'Capacity', 'Seating', 'Floating', 'PicPath', 'Site_Code', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[VenueCapacity] ([VenueCode], [Capacity], [Seating], [Floating], [PicPath], [Site_Code], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[VenueCode], s.[Capacity], s.[Seating], s.[Floating], s.[PicPath], s.[Site_Code], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[VenueCapacity] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[VenueCapacity] AS d
                      WHERE d.[VenueCode] = s.[VenueCode] AND d.[Capacity] = s.[Capacity] AND d.[Site_Code] = s.[Site_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [UserPermission]';

IF OBJECT_ID(N'VijayData2627.dbo.[UserPermission]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[UserPermission]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[UserPermission]')
           AND name IN ('CompCode', 'UserName', 'LogSite_Code', 'POSDiscountAllowUpto', 'CancelGuestBill', 'ChangeRoomDtl', 'DeleteGuestCharges', 'Site_Code', 'POSSettlementYN', 'ChangeGuestCharges', 'backcolor', 'ChangeGuestProfile', 'FacilityBilling', 'EditItemInKOT', 'FOMDiscountAllowUpto', 'CancelReservation', 'FreeItemAllow', 'RefundCashCardAmt')) < 18
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[UserPermission] ([CompCode], [UserName], [LogSite_Code], [POSDiscountAllowUpto], [CancelGuestBill], [ChangeRoomDtl], [DeleteGuestCharges], [Site_Code], [POSSettlementYN], [ChangeGuestCharges], [backcolor], [ChangeGuestProfile], [FacilityBilling], [EditItemInKOT], [FOMDiscountAllowUpto], [CancelReservation], [FreeItemAllow], [RefundCashCardAmt])
    SELECT s.[CompCode], s.[UserName], s.[LogSite_Code], s.[POSDiscountAllowUpto], s.[CancelGuestBill], s.[ChangeRoomDtl], s.[DeleteGuestCharges], s.[Site_Code], s.[POSSettlementYN], s.[ChangeGuestCharges], s.[backcolor], s.[ChangeGuestProfile], s.[FacilityBilling], s.[EditItemInKOT], s.[FOMDiscountAllowUpto], s.[CancelReservation], s.[FreeItemAllow], s.[RefundCashCardAmt]
    FROM [VijayData2627].[dbo].[UserPermission] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[UserPermission] AS d
                      WHERE d.[CompCode] = s.[CompCode] AND d.[UserName] = s.[UserName] AND d.[LogSite_Code] = s.[LogSite_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [UserModule1]';

IF OBJECT_ID(N'VijayData2627.dbo.[UserModule1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[UserModule1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[UserModule1]')
           AND name IN ('Opt1', 'Opt2', 'Opt3', 'Opt4', 'Code', 'Option', 'Param_Str', 'Flag', 'OutletCode')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[UserModule1] ([Opt1], [Opt2], [Opt3], [Opt4], [Code], [Option], [Param_Str], [Flag], [OutletCode])
    SELECT s.[Opt1], s.[Opt2], s.[Opt3], s.[Opt4], s.[Code], s.[Option], s.[Param_Str], s.[Flag], s.[OutletCode]
    FROM [VijayData2627].[dbo].[UserModule1] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [UserModule]';

IF OBJECT_ID(N'VijayData2627.dbo.[UserModule]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[UserModule]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[UserModule]')
           AND name IN ('Opt1', 'Opt2', 'Opt3', 'Opt4', 'Code', 'Option', 'Param_Str', 'Flag', 'OutletCode')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[UserModule] ([Opt1], [Opt2], [Opt3], [Opt4], [Code], [Option], [Param_Str], [Flag], [OutletCode])
    SELECT s.[Opt1], s.[Opt2], s.[Opt3], s.[Opt4], s.[Code], s.[Option], s.[Param_Str], s.[Flag], s.[OutletCode]
    FROM [VijayData2627].[dbo].[UserModule] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[UserModule] AS d
                      WHERE d.[Opt1] = s.[Opt1] AND d.[Opt2] = s.[Opt2] AND d.[Opt3] = s.[Opt3] AND d.[Opt4] = s.[Opt4] AND d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [UserMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[UserMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[UserMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[UserMast]')
           AND name IN ('USER_NAME', 'PASSWD', 'LABEL', 'ShortName', 'GodCode', 'FloorCode', 'AllowDtChng', 'ActiveYN', 'BackColor')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[UserMast] ([USER_NAME], [PASSWD], [LABEL], [ShortName], [GodCode], [FloorCode], [AllowDtChng], [ActiveYN], [BackColor])
    SELECT s.[USER_NAME], s.[PASSWD], s.[LABEL], s.[ShortName], s.[GodCode], s.[FloorCode], s.[AllowDtChng], s.[ActiveYN], s.[BackColor]
    FROM [VijayData2627].[dbo].[UserMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[UserMast] AS d
                      WHERE d.[USER_NAME] = s.[USER_NAME]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [UserCollection]';

IF OBJECT_ID(N'VijayData2627.dbo.[UserCollection]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[UserCollection]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[UserCollection]')
           AND name IN ('DocId', 'Vtype', 'VNo', 'Vprefix', 'Vdate', 'Vtime', 'Amount', 'AgUser', 'Remarks', 'U_Name', 'U_AE', 'U_EntDt', 'Site_Code', 'LogSite_Code')) < 14
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[UserCollection] ([DocId], [Vtype], [VNo], [Vprefix], [Vdate], [Vtime], [Amount], [AgUser], [Remarks], [U_Name], [U_AE], [U_EntDt], [Site_Code], [LogSite_Code])
    SELECT s.[DocId], s.[Vtype], s.[VNo], s.[Vprefix], s.[Vdate], s.[Vtime], s.[Amount], s.[AgUser], s.[Remarks], s.[U_Name], s.[U_AE], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[UserCollection] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[UserCollection] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [User2]';

IF OBJECT_ID(N'VijayData2627.dbo.[User2]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[User2]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[User2]')
           AND name IN ('USER_NAME', 'Module_name', 'FORM_CODE', 'Comp_code', 'PARAM_STR')) < 5
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[User2] ([USER_NAME], [Module_name], [FORM_CODE], [Comp_code], [PARAM_STR])
    SELECT s.[USER_NAME], s.[Module_name], s.[FORM_CODE], s.[Comp_code], s.[PARAM_STR]
    FROM [VijayData2627].[dbo].[User2] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [User1]';

IF OBJECT_ID(N'VijayData2627.dbo.[User1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[User1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[User1]')
           AND name IN ('USER_NAME', 'FORM_CODE', 'PARAM_STR', 'FORM_NAME', 'SRNO')) < 5
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[User1] ([USER_NAME], [FORM_CODE], [PARAM_STR], [FORM_NAME], [SRNO])
    SELECT s.[USER_NAME], s.[FORM_CODE], s.[PARAM_STR], s.[FORM_NAME], s.[SRNO]
    FROM [VijayData2627].[dbo].[User1] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [User_Module]';

IF OBJECT_ID(N'VijayData2627.dbo.[User_Module]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[User_Module]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[User_Module]')
           AND name IN ('code', 'name', 'flag', 'srno', 'Module_Name', 'ID')) < 6
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[User_Module] ([code], [name], [flag], [srno], [Module_Name], [ID])
    SELECT s.[code], s.[name], s.[flag], s.[srno], s.[Module_Name], s.[ID]
    FROM [VijayData2627].[dbo].[User_Module] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [UnitMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[UnitMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[UnitMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[UnitMast]')
           AND name IN ('Name', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'PriceType', 'Status')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[UnitMast] ([Name], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [PriceType], [Status])
    SELECT s.[Name], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[PriceType], s.[Status]
    FROM [VijayData2627].[dbo].[UnitMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[UnitMast] AS d
                      WHERE d.[Name] = s.[Name] AND d.[Site_Code] = s.[Site_Code] AND d.[LogSite_Code] = s.[LogSite_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Travel2]';

IF OBJECT_ID(N'VijayData2627.dbo.[Travel2]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Travel2]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Travel2]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Guest', 'NoDays', 'RoomRate', 'Total', 'Commission', 'U_Name', 'U_EntDt', 'U_AE', 'CommPer', 'VDate', 'LogSite_Code')) < 17
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Travel2] ([DocId], [Sno], [Vtype], [VNo], [Site_Code], [Vprefix], [Guest], [NoDays], [RoomRate], [Total], [Commission], [U_Name], [U_EntDt], [U_AE], [CommPer], [VDate], [LogSite_Code])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Guest], s.[NoDays], s.[RoomRate], s.[Total], s.[Commission], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[CommPer], s.[VDate], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[Travel2] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Travel2] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Travel1]';

IF OBJECT_ID(N'VijayData2627.dbo.[Travel1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Travel1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Travel1]')
           AND name IN ('DocId', 'Vtype', 'Vno', 'Site_Code', 'Vprefix', 'FromDate', 'ToDate', 'TravelAgency', 'U_Name', 'U_EntDt', 'U_AE', 'VDate', 'LogSite_Code')) < 13
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Travel1] ([DocId], [Vtype], [Vno], [Site_Code], [Vprefix], [FromDate], [ToDate], [TravelAgency], [U_Name], [U_EntDt], [U_AE], [VDate], [LogSite_Code])
    SELECT s.[DocId], s.[Vtype], s.[Vno], s.[Site_Code], s.[Vprefix], s.[FromDate], s.[ToDate], s.[TravelAgency], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[VDate], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[Travel1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Travel1] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [TranTaxDetail]';

IF OBJECT_ID(N'VijayData2627.dbo.[TranTaxDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[TranTaxDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[TranTaxDetail]')
           AND name IN ('DocId', 'Sno', 'SNo1', 'Vtype', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'RestCode', 'TaxCode', 'BaseValue', 'TaxPer', 'TaxAmt', 'U_Name', 'U_EntDt', 'U_AE', 'DelFlag', 'LogSite_Code', 'SeqNo')) < 19
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[TranTaxDetail] ([DocId], [Sno], [SNo1], [Vtype], [VNo], [Site_Code], [Vprefix], [Vdate], [RestCode], [TaxCode], [BaseValue], [TaxPer], [TaxAmt], [U_Name], [U_EntDt], [U_AE], [DelFlag], [LogSite_Code], [SeqNo])
    SELECT s.[DocId], s.[Sno], s.[SNo1], s.[Vtype], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[RestCode], s.[TaxCode], s.[BaseValue], s.[TaxPer], s.[TaxAmt], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[DelFlag], s.[LogSite_Code], s.[SeqNo]
    FROM [VijayData2627].[dbo].[TranTaxDetail] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[TranTaxDetail] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno] AND d.[SNo1] = s.[SNo1]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [TranSunDetail]';

IF OBJECT_ID(N'VijayData2627.dbo.[TranSunDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[TranSunDetail]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[TranSunDetail]')
           AND name IN ('Docid', 'Sno', 'vdate', 'vno', 'vprefix', 'Vtype', 'SunCode', 'SunAmt', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 13
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[TranSunDetail] ([Docid], [Sno], [vdate], [vno], [vprefix], [Vtype], [SunCode], [SunAmt], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Docid], s.[Sno], s.[vdate], s.[vno], s.[vprefix], s.[Vtype], s.[SunCode], s.[SunAmt], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[TranSunDetail] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[TranSunDetail] AS d
                      WHERE d.[Docid] = s.[Docid] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [TransOut]';

IF OBJECT_ID(N'VijayData2627.dbo.[TransOut]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[TransOut]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[TransOut]')
           AND name IN ('SiteCode', 'TableName', 'Type', 'FieldName', 'UDate', 'MainDB')) < 6
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[TransOut] ([SiteCode], [TableName], [Type], [FieldName], [UDate], [MainDB])
    SELECT s.[SiteCode], s.[TableName], s.[Type], s.[FieldName], s.[UDate], s.[MainDB]
    FROM [VijayData2627].[dbo].[TransOut] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [TransIn]';

IF OBJECT_ID(N'VijayData2627.dbo.[TransIn]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[TransIn]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[TransIn]')
           AND name IN ('SiteCode', 'TableName', 'Type', 'FieldName', 'UDate', 'MainDB', 'PK1', 'PK2', 'PK3', 'PK4', 'PK5', 'PK6', 'PK7')) < 13
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[TransIn] ([SiteCode], [TableName], [Type], [FieldName], [UDate], [MainDB], [PK1], [PK2], [PK3], [PK4], [PK5], [PK6], [PK7])
    SELECT s.[SiteCode], s.[TableName], s.[Type], s.[FieldName], s.[UDate], s.[MainDB], s.[PK1], s.[PK2], s.[PK3], s.[PK4], s.[PK5], s.[PK6], s.[PK7]
    FROM [VijayData2627].[dbo].[TransIn] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [TransDel]';

IF OBJECT_ID(N'VijayData2627.dbo.[TransDel]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[TransDel]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[TransDel]')
           AND name IN ('TableName', 'PK1_Name', 'PK1_Type', 'PK1_Value', 'PK2_Name', 'PK2_Type', 'PK2_Value', 'PK3_Name', 'PK3_Type', 'PK3_Value', 'PK4_Name', 'PK4_Type', 'PK4_Value', 'PK5_Name', 'PK5_Type', 'PK5_Value', 'UName', 'UEntDt', 'UAE')) < 19
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[TransDel] ([TableName], [PK1_Name], [PK1_Type], [PK1_Value], [PK2_Name], [PK2_Type], [PK2_Value], [PK3_Name], [PK3_Type], [PK3_Value], [PK4_Name], [PK4_Type], [PK4_Value], [PK5_Name], [PK5_Type], [PK5_Value], [UName], [UEntDt], [UAE])
    SELECT s.[TableName], s.[PK1_Name], s.[PK1_Type], s.[PK1_Value], s.[PK2_Name], s.[PK2_Type], s.[PK2_Value], s.[PK3_Name], s.[PK3_Type], s.[PK3_Value], s.[PK4_Name], s.[PK4_Type], s.[PK4_Value], s.[PK5_Name], s.[PK5_Type], s.[PK5_Value], s.[UName], s.[UEntDt], s.[UAE]
    FROM [VijayData2627].[dbo].[TransDel] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [TranLog]';

IF OBJECT_ID(N'VijayData2627.dbo.[TranLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[TranLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[TranLog]')
           AND name IN ('LogType', 'LogDate', 'LogDet')) < 3
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[TranLog] ([LogType], [LogDate], [LogDet])
    SELECT s.[LogType], s.[LogDate], s.[LogDet]
    FROM [VijayData2627].[dbo].[TranLog] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [TradeInfo_bTwin]';

IF OBJECT_ID(N'VijayData2627.dbo.[TradeInfo_bTwin]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[TradeInfo_bTwin]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[TradeInfo_bTwin]')
           AND name IN ('c_flow_no', 'c_date', 'c_time', 'c_scale_no', 'c_plu_no', 'c_article_name', 'c_article_no', 'c_weight', 'c_quantity', 'c_unit_price', 'c_old_price', 'c_total_price', 'c_operator_no', 'c_sell_type', 'c_plu_type', 'c_paper_type', 'c_cardno', 'c_hash', 'c_flag')) < 19
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[TradeInfo_bTwin] ([c_flow_no], [c_date], [c_time], [c_scale_no], [c_plu_no], [c_article_name], [c_article_no], [c_weight], [c_quantity], [c_unit_price], [c_old_price], [c_total_price], [c_operator_no], [c_sell_type], [c_plu_type], [c_paper_type], [c_cardno], [c_hash], [c_flag])
    SELECT s.[c_flow_no], s.[c_date], s.[c_time], s.[c_scale_no], s.[c_plu_no], s.[c_article_name], s.[c_article_no], s.[c_weight], s.[c_quantity], s.[c_unit_price], s.[c_old_price], s.[c_total_price], s.[c_operator_no], s.[c_sell_type], s.[c_plu_type], s.[c_paper_type], s.[c_cardno], s.[c_hash], s.[c_flag]
    FROM [VijayData2627].[dbo].[TradeInfo_bTwin] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [TOKEN]';

IF OBJECT_ID(N'VijayData2627.dbo.[TOKEN]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[TOKEN]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[TOKEN]')
           AND name IN ('DocId', 'Sno', 'Vtype', 'Vtime', 'VNo', 'Site_Code', 'Vprefix', 'Vdate', 'RestCode', 'RoomCat', 'RoomType', 'RoomNo', 'Item', 'Qty', 'Rate', 'Amount', 'VoidYN', 'Waiter', 'Pending', 'TOKENType', 'U_Name', 'U_EntDt', 'U_AE', 'U_Name1', 'U_EntDt1', 'U_AE1', 'DelFlag', 'NCTOKEN', 'ContraDocId', 'ContraSNo', 'Reasons', 'Remarks', 'LogSite_Code', 'NCTYPE', 'FreeSno', 'Printed', 'Description', 'SchemeCode', 'Party', 'TokenNo', 'CancelYN', 'ItemRestCode')) < 42
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[TOKEN] ([DocId], [Sno], [Vtype], [Vtime], [VNo], [Site_Code], [Vprefix], [Vdate], [RestCode], [RoomCat], [RoomType], [RoomNo], [Item], [Qty], [Rate], [Amount], [VoidYN], [Waiter], [Pending], [TOKENType], [U_Name], [U_EntDt], [U_AE], [U_Name1], [U_EntDt1], [U_AE1], [DelFlag], [NCTOKEN], [ContraDocId], [ContraSNo], [Reasons], [Remarks], [LogSite_Code], [NCTYPE], [FreeSno], [Printed], [Description], [SchemeCode], [Party], [TokenNo], [CancelYN], [ItemRestCode])
    SELECT s.[DocId], s.[Sno], s.[Vtype], s.[Vtime], s.[VNo], s.[Site_Code], s.[Vprefix], s.[Vdate], s.[RestCode], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[Item], s.[Qty], s.[Rate], s.[Amount], s.[VoidYN], s.[Waiter], s.[Pending], s.[TOKENType], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[U_Name1], s.[U_EntDt1], s.[U_AE1], s.[DelFlag], s.[NCTOKEN], s.[ContraDocId], s.[ContraSNo], s.[Reasons], s.[Remarks], s.[LogSite_Code], s.[NCTYPE], s.[FreeSno], s.[Printed], s.[Description], s.[SchemeCode], s.[Party], s.[TokenNo], s.[CancelYN], s.[ItemRestCode]
    FROM [VijayData2627].[dbo].[TOKEN] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[TOKEN] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [TempPosDel]';

IF OBJECT_ID(N'VijayData2627.dbo.[TempPosDel]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[TempPosDel]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[TempPosDel]')
           AND name IN ('OldDocId', 'OldVno', 'NewDocId', 'NewVno')) < 4
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[TempPosDel] ([OldDocId], [OldVno], [NewDocId], [NewVno])
    SELECT s.[OldDocId], s.[OldVno], s.[NewDocId], s.[NewVno]
    FROM [VijayData2627].[dbo].[TempPosDel] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Temp_Sbill]';

IF OBJECT_ID(N'VijayData2627.dbo.[Temp_Sbill]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Temp_Sbill]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Temp_Sbill]')
           AND name IN ('Docid')) < 1
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Temp_Sbill] ([Docid])
    SELECT s.[Docid]
    FROM [VijayData2627].[dbo].[Temp_Sbill] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [TelExt]';

IF OBJECT_ID(N'VijayData2627.dbo.[TelExt]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[TelExt]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[TelExt]')
           AND name IN ('Code', 'Description', 'Extension', 'Type', 'RoomNo', 'ShopNo', 'DepCode', 'PulseRate', 'U_Name', 'U_EntDt', 'U_AE', 'Site_Code', 'LogSite_Code')) < 13
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[TelExt] ([Code], [Description], [Extension], [Type], [RoomNo], [ShopNo], [DepCode], [PulseRate], [U_Name], [U_EntDt], [U_AE], [Site_Code], [LogSite_Code])
    SELECT s.[Code], s.[Description], s.[Extension], s.[Type], s.[RoomNo], s.[ShopNo], s.[DepCode], s.[PulseRate], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[TelExt] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[TelExt] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [TelCallType]';

IF OBJECT_ID(N'VijayData2627.dbo.[TelCallType]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[TelCallType]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[TelCallType]')
           AND name IN ('Code', 'CallType', 'ShortName', 'ACCode', 'TaxStru', 'U_Name', 'U_EntDt', 'U_AE', 'Site_Code', 'LogSite_Code')) < 10
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[TelCallType] ([Code], [CallType], [ShortName], [ACCode], [TaxStru], [U_Name], [U_EntDt], [U_AE], [Site_Code], [LogSite_Code])
    SELECT s.[Code], s.[CallType], s.[ShortName], s.[ACCode], s.[TaxStru], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[TelCallType] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[TelCallType] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [TelCallCode]';

IF OBJECT_ID(N'VijayData2627.dbo.[TelCallCode]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[TelCallCode]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[TelCallCode]')
           AND name IN ('STDCode', 'CallTypeCode', 'Description', 'PulseInSec', 'U_Name', 'U_EntDt', 'U_AE', 'Site_Code', 'LogSite_Code')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[TelCallCode] ([STDCode], [CallTypeCode], [Description], [PulseInSec], [U_Name], [U_EntDt], [U_AE], [Site_Code], [LogSite_Code])
    SELECT s.[STDCode], s.[CallTypeCode], s.[Description], s.[PulseInSec], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[TelCallCode] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[TelCallCode] AS d
                      WHERE d.[STDCode] = s.[STDCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [TDSChal1]';

IF OBJECT_ID(N'VijayData2627.dbo.[TDSChal1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[TDSChal1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[TDSChal1]')
           AND name IN ('DocId', 'VSNo', 'ChalType', 'ChalNo', 'Site_Code', 'ChalDate', 'TDSDOCID', 'TDSVSNo', 'V_Date', 'TDSCODE', 'ACCODE', 'Amt', 'TDS', 'TDSAmt', 'CertiNo', 'CertiDate', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 20
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[TDSChal1] ([DocId], [VSNo], [ChalType], [ChalNo], [Site_Code], [ChalDate], [TDSDOCID], [TDSVSNo], [V_Date], [TDSCODE], [ACCODE], [Amt], [TDS], [TDSAmt], [CertiNo], [CertiDate], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[DocId], s.[VSNo], s.[ChalType], s.[ChalNo], s.[Site_Code], s.[ChalDate], s.[TDSDOCID], s.[TDSVSNo], s.[V_Date], s.[TDSCODE], s.[ACCODE], s.[Amt], s.[TDS], s.[TDSAmt], s.[CertiNo], s.[CertiDate], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[TDSChal1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[TDSChal1] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[VSNo] = s.[VSNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [TDSChal]';

IF OBJECT_ID(N'VijayData2627.dbo.[TDSChal]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[TDSChal]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[TDSChal]')
           AND name IN ('DocId', 'ChalType', 'ChalNo', 'ChalDate', 'Site_Code', 'v_Prefix', 'BankCode', 'MonthNo', 'TDSAmt', 'Chq_No', 'Chq_Date', 'U_Name', 'U_EntDt', 'U_AE', 'BankName', 'LogSite_Code')) < 16
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[TDSChal] ([DocId], [ChalType], [ChalNo], [ChalDate], [Site_Code], [v_Prefix], [BankCode], [MonthNo], [TDSAmt], [Chq_No], [Chq_Date], [U_Name], [U_EntDt], [U_AE], [BankName], [LogSite_Code])
    SELECT s.[DocId], s.[ChalType], s.[ChalNo], s.[ChalDate], s.[Site_Code], s.[v_Prefix], s.[BankCode], s.[MonthNo], s.[TDSAmt], s.[Chq_No], s.[Chq_Date], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[BankName], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[TDSChal] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[TDSChal] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [TDSCerti]';

IF OBJECT_ID(N'VijayData2627.dbo.[TDSCerti]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[TDSCerti]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[TDSCerti]')
           AND name IN ('CertiNo', 'CertiDate', 'Site_Code', 'Code', 'FromDate', 'ToDate', 'TDSAmt', 'FullName', 'Desig', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 13
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[TDSCerti] ([CertiNo], [CertiDate], [Site_Code], [Code], [FromDate], [ToDate], [TDSAmt], [FullName], [Desig], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[CertiNo], s.[CertiDate], s.[Site_Code], s.[Code], s.[FromDate], s.[ToDate], s.[TDSAmt], s.[FullName], s.[Desig], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[TDSCerti] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[TDSCerti] AS d
                      WHERE d.[CertiNo] = s.[CertiNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [TDSCat]';

IF OBJECT_ID(N'VijayData2627.dbo.[TDSCat]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[TDSCat]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[TDSCat]')
           AND name IN ('Code', 'Name', 'TDSLimit', 'TDSPercentage', 'U_Name', 'U_EntDt', 'U_AE', 'Site_Code', 'LogSite_Code')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[TDSCat] ([Code], [Name], [TDSLimit], [TDSPercentage], [U_Name], [U_EntDt], [U_AE], [Site_Code], [LogSite_Code])
    SELECT s.[Code], s.[Name], s.[TDSLimit], s.[TDSPercentage], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[TDSCat] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[TDSCat] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [tbl_UserMaster]';

IF OBJECT_ID(N'VijayData2627.dbo.[tbl_UserMaster]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[tbl_UserMaster]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[tbl_UserMaster]')
           AND name IN ('ClientID', 'UserName', 'PassCode', 'Name', 'Designation', 'Mobile', 'EmailId', 'Lavel', 'Picture', 'IsActive', 'MacAdd', 'CreatedBy', 'CreatedDate', 'UpdatedBy', 'UpdatedDate')) < 15
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[tbl_UserMaster] ([ClientID], [UserName], [PassCode], [Name], [Designation], [Mobile], [EmailId], [Lavel], [Picture], [IsActive], [MacAdd], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate])
    SELECT s.[ClientID], s.[UserName], s.[PassCode], s.[Name], s.[Designation], s.[Mobile], s.[EmailId], s.[Lavel], s.[Picture], s.[IsActive], s.[MacAdd], s.[CreatedBy], s.[CreatedDate], s.[UpdatedBy], s.[UpdatedDate]
    FROM [VijayData2627].[dbo].[tbl_UserMaster] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[tbl_UserMaster] AS d
                      WHERE d.[ClientID] = s.[ClientID] AND d.[UserName] = s.[UserName]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [tbl_GetRoomMst]';

IF OBJECT_ID(N'VijayData2627.dbo.[tbl_GetRoomMst]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[tbl_GetRoomMst]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[tbl_GetRoomMst]')
           AND name IN ('tbl_Id', 'RoomCode', 'RoomName', 'RatePlanCode', 'RatePlanName', 'MinAllowedRate', 'MaxAllowedRate', 'CreatedDate', 'CreatedTime')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    SET IDENTITY_INSERT [dbo].[tbl_GetRoomMst] ON;
    INSERT INTO [dbo].[tbl_GetRoomMst] ([tbl_Id], [RoomCode], [RoomName], [RatePlanCode], [RatePlanName], [MinAllowedRate], [MaxAllowedRate], [CreatedDate], [CreatedTime])
    SELECT s.[tbl_Id], s.[RoomCode], s.[RoomName], s.[RatePlanCode], s.[RatePlanName], s.[MinAllowedRate], s.[MaxAllowedRate], s.[CreatedDate], s.[CreatedTime]
    FROM [VijayData2627].[dbo].[tbl_GetRoomMst] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[tbl_GetRoomMst] AS d
                      WHERE d.[tbl_Id] = s.[tbl_Id]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
    SET IDENTITY_INSERT [dbo].[tbl_GetRoomMst] OFF;
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [tbl_GetBooking]';

IF OBJECT_ID(N'VijayData2627.dbo.[tbl_GetBooking]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[tbl_GetBooking]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[tbl_GetBooking]')
           AND name IN ('tblBookingid', 'ChannelId', 'ChannelName', 'BookingCode', 'CheckIn', 'CheckOut', 'NumNights', 'NumRooms', 'RoomTypeCode', 'RatePlanCode', 'BookingStatus', 'DateBooked', 'CustomerName', 'CustomerEmail', 'CustomerMobile', 'CustomerSpecialRequest', 'TotalAdults', 'TotalChildren', 'BilledAmount', 'PaymentType', 'BookingDetailUrl', 'MST_RatePlanCode', 'MST_RoomTypeCode', 'CreatedDate', 'CreatedTime')) < 25
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    SET IDENTITY_INSERT [dbo].[tbl_GetBooking] ON;
    INSERT INTO [dbo].[tbl_GetBooking] ([tblBookingid], [ChannelId], [ChannelName], [BookingCode], [CheckIn], [CheckOut], [NumNights], [NumRooms], [RoomTypeCode], [RatePlanCode], [BookingStatus], [DateBooked], [CustomerName], [CustomerEmail], [CustomerMobile], [CustomerSpecialRequest], [TotalAdults], [TotalChildren], [BilledAmount], [PaymentType], [BookingDetailUrl], [MST_RatePlanCode], [MST_RoomTypeCode], [CreatedDate], [CreatedTime])
    SELECT s.[tblBookingid], s.[ChannelId], s.[ChannelName], s.[BookingCode], s.[CheckIn], s.[CheckOut], s.[NumNights], s.[NumRooms], s.[RoomTypeCode], s.[RatePlanCode], s.[BookingStatus], s.[DateBooked], s.[CustomerName], s.[CustomerEmail], s.[CustomerMobile], s.[CustomerSpecialRequest], s.[TotalAdults], s.[TotalChildren], s.[BilledAmount], s.[PaymentType], s.[BookingDetailUrl], s.[MST_RatePlanCode], s.[MST_RoomTypeCode], s.[CreatedDate], s.[CreatedTime]
    FROM [VijayData2627].[dbo].[tbl_GetBooking] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[tbl_GetBooking] AS d
                      WHERE d.[tblBookingid] = s.[tblBookingid]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
    SET IDENTITY_INSERT [dbo].[tbl_GetBooking] OFF;
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [tbl_EventPrameter]';

IF OBJECT_ID(N'VijayData2627.dbo.[tbl_EventPrameter]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[tbl_EventPrameter]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[tbl_EventPrameter]')
           AND name IN ('EveParId', 'Para_month', 'Para_year', 'EventCode', 'createddate', 'SysErrorMsg')) < 6
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    SET IDENTITY_INSERT [dbo].[tbl_EventPrameter] ON;
    INSERT INTO [dbo].[tbl_EventPrameter] ([EveParId], [Para_month], [Para_year], [EventCode], [createddate], [SysErrorMsg])
    SELECT s.[EveParId], s.[Para_month], s.[Para_year], s.[EventCode], s.[createddate], s.[SysErrorMsg]
    FROM [VijayData2627].[dbo].[tbl_EventPrameter] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[tbl_EventPrameter] AS d
                      WHERE d.[EveParId] = s.[EveParId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
    SET IDENTITY_INSERT [dbo].[tbl_EventPrameter] OFF;
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [tbl_EventExc]';

IF OBJECT_ID(N'VijayData2627.dbo.[tbl_EventExc]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[tbl_EventExc]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[tbl_EventExc]')
           AND name IN ('EventExcId', 'EventName', 'EventCode', 'CreatedDate')) < 4
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    SET IDENTITY_INSERT [dbo].[tbl_EventExc] ON;
    INSERT INTO [dbo].[tbl_EventExc] ([EventExcId], [EventName], [EventCode], [CreatedDate])
    SELECT s.[EventExcId], s.[EventName], s.[EventCode], s.[CreatedDate]
    FROM [VijayData2627].[dbo].[tbl_EventExc] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[tbl_EventExc] AS d
                      WHERE d.[EventExcId] = s.[EventExcId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
    SET IDENTITY_INSERT [dbo].[tbl_EventExc] OFF;
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [tbl_Config]';

IF OBJECT_ID(N'VijayData2627.dbo.[tbl_Config]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[tbl_Config]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Config]')
           AND name IN ('ConfigId', 'ConfigPath', 'CreatedDate')) < 3
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    SET IDENTITY_INSERT [dbo].[tbl_Config] ON;
    INSERT INTO [dbo].[tbl_Config] ([ConfigId], [ConfigPath], [CreatedDate])
    SELECT s.[ConfigId], s.[ConfigPath], s.[CreatedDate]
    FROM [VijayData2627].[dbo].[tbl_Config] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[tbl_Config] AS d
                      WHERE d.[ConfigId] = s.[ConfigId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
    SET IDENTITY_INSERT [dbo].[tbl_Config] OFF;
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [tbl_ClientReportMIS]';

IF OBJECT_ID(N'VijayData2627.dbo.[tbl_ClientReportMIS]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[tbl_ClientReportMIS]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[tbl_ClientReportMIS]')
           AND name IN ('ClientID', 'SiteName', 'ModuleName', 'ReportDate', 'ReportName', 'SNo', 'ReportData', 'CreatedBy', 'CreatedDate', 'UpdatedBy', 'UpdatedDate')) < 11
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[tbl_ClientReportMIS] ([ClientID], [SiteName], [ModuleName], [ReportDate], [ReportName], [SNo], [ReportData], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate])
    SELECT s.[ClientID], s.[SiteName], s.[ModuleName], s.[ReportDate], s.[ReportName], s.[SNo], s.[ReportData], s.[CreatedBy], s.[CreatedDate], s.[UpdatedBy], s.[UpdatedDate]
    FROM [VijayData2627].[dbo].[tbl_ClientReportMIS] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[tbl_ClientReportMIS] AS d
                      WHERE d.[ClientID] = s.[ClientID] AND d.[SiteName] = s.[SiteName] AND d.[ModuleName] = s.[ModuleName] AND d.[ReportDate] = s.[ReportDate] AND d.[ReportName] = s.[ReportName] AND d.[SNo] = s.[SNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [tbl_ApiEventCode]';

IF OBJECT_ID(N'VijayData2627.dbo.[tbl_ApiEventCode]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[tbl_ApiEventCode]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[tbl_ApiEventCode]')
           AND name IN ('ApiEventCodeID', 'EventName', 'EventCode', 'Status', 'Createddate')) < 5
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    SET IDENTITY_INSERT [dbo].[tbl_ApiEventCode] ON;
    INSERT INTO [dbo].[tbl_ApiEventCode] ([ApiEventCodeID], [EventName], [EventCode], [Status], [Createddate])
    SELECT s.[ApiEventCodeID], s.[EventName], s.[EventCode], s.[Status], s.[Createddate]
    FROM [VijayData2627].[dbo].[tbl_ApiEventCode] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[tbl_ApiEventCode] AS d
                      WHERE d.[ApiEventCodeID] = s.[ApiEventCodeID]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
    SET IDENTITY_INSERT [dbo].[tbl_ApiEventCode] OFF;
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [TaxStru]';

IF OBJECT_ID(N'VijayData2627.dbo.[TaxStru]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[TaxStru]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[TaxStru]')
           AND name IN ('Code', 'Name', 'Sno', 'TaxCode', 'Nature', 'Rate', 'Limit', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'CondApp', 'LogSite_Code', 'CompOperator', 'TaxBeforeDisc', 'Limit1')) < 16
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[TaxStru] ([Code], [Name], [Sno], [TaxCode], [Nature], [Rate], [Limit], [Site_Code], [U_Name], [U_EntDt], [U_AE], [CondApp], [LogSite_Code], [CompOperator], [TaxBeforeDisc], [Limit1])
    SELECT s.[Code], s.[Name], s.[Sno], s.[TaxCode], s.[Nature], s.[Rate], s.[Limit], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[CondApp], s.[LogSite_Code], s.[CompOperator], s.[TaxBeforeDisc], s.[Limit1]
    FROM [VijayData2627].[dbo].[TaxStru] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[TaxStru] AS d
                      WHERE d.[Code] = s.[Code] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Waiter]';

IF OBJECT_ID(N'VijayData2627.dbo.[Waiter]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Waiter]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Waiter]')
           AND name IN ('Code', 'Name', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code', 'ActiveYN', 'RestCode')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Waiter] ([Code], [Name], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code], [ActiveYN], [RestCode])
    SELECT s.[Code], s.[Name], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[ActiveYN], s.[RestCode]
    FROM [VijayData2627].[dbo].[Waiter] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Waiter] AS d
                      WHERE d.[Code] = s.[Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [VoucherCat]';

IF OBJECT_ID(N'VijayData2627.dbo.[VoucherCat]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[VoucherCat]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[VoucherCat]')
           AND name IN ('Category', 'NCat', 'Site_Code', 'LogSite_Code')) < 4
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[VoucherCat] ([Category], [NCat], [Site_Code], [LogSite_Code])
    SELECT s.[Category], s.[NCat], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[VoucherCat] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[VoucherCat] AS d
                      WHERE d.[Category] = s.[Category] AND d.[NCat] = s.[NCat]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Voucher_Type]';

IF OBJECT_ID(N'VijayData2627.dbo.[Voucher_Type]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Voucher_Type]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Voucher_Type]')
           AND name IN ('Category', 'NCat', 'V_Type', 'Contratype', 'Description', 'Description_Help', 'Description_BiLang', 'Short_Name', 'Short_Name_BiLang', 'Report_Index', 'Number_Method', 'Start_No', 'Last_Ent_Date', 'Form_Name', 'Separate_Narr', 'Common_Narr', 'Narration', 'Print_VNo', 'Header_Desc', 'Terms_Desc', 'Footer_Desc', 'Exclude_Ac_Grp', 'SerialNo_From_Table', 'U_NAME', 'U_EntDt', 'U_AE', 'ChqNo', 'ChqDt', 'ClgDt', 'SortNo', 'RestCode', 'Site_Code', 'DefaultCrAc', 'DefaultDrAc', 'FirstDrCr', 'LogSite_Code', 'Alias')) < 37
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Voucher_Type] ([Category], [NCat], [V_Type], [Contratype], [Description], [Description_Help], [Description_BiLang], [Short_Name], [Short_Name_BiLang], [Report_Index], [Number_Method], [Start_No], [Last_Ent_Date], [Form_Name], [Separate_Narr], [Common_Narr], [Narration], [Print_VNo], [Header_Desc], [Terms_Desc], [Footer_Desc], [Exclude_Ac_Grp], [SerialNo_From_Table], [U_NAME], [U_EntDt], [U_AE], [ChqNo], [ChqDt], [ClgDt], [SortNo], [RestCode], [Site_Code], [DefaultCrAc], [DefaultDrAc], [FirstDrCr], [LogSite_Code], [Alias])
    SELECT s.[Category], s.[NCat], s.[V_Type], s.[Contratype], s.[Description], s.[Description_Help], s.[Description_BiLang], s.[Short_Name], s.[Short_Name_BiLang], s.[Report_Index], s.[Number_Method], s.[Start_No], s.[Last_Ent_Date], s.[Form_Name], s.[Separate_Narr], s.[Common_Narr], s.[Narration], s.[Print_VNo], s.[Header_Desc], s.[Terms_Desc], s.[Footer_Desc], s.[Exclude_Ac_Grp], s.[SerialNo_From_Table], s.[U_NAME], s.[U_EntDt], s.[U_AE], s.[ChqNo], s.[ChqDt], s.[ClgDt], s.[SortNo], s.[RestCode], s.[Site_Code], s.[DefaultCrAc], s.[DefaultDrAc], s.[FirstDrCr], s.[LogSite_Code], s.[Alias]
    FROM [VijayData2627].[dbo].[Voucher_Type] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Voucher_Type] AS d
                      WHERE d.[V_Type] = s.[V_Type] AND d.[Site_Code] = s.[Site_Code] AND d.[LogSite_Code] = s.[LogSite_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Voucher_Prefix]';

IF OBJECT_ID(N'VijayData2627.dbo.[Voucher_Prefix]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Voucher_Prefix]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Voucher_Prefix]')
           AND name IN ('V_Type', 'Date_From', 'Date_To', 'Prefix', 'Start_Srl_No', 'Site_Code', 'U_EntDt', 'LogSite_Code', 'U_Name', 'U_AE')) < 10
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Voucher_Prefix] ([V_Type], [Date_From], [Date_To], [Prefix], [Start_Srl_No], [Site_Code], [U_EntDt], [LogSite_Code], [U_Name], [U_AE])
    SELECT s.[V_Type], s.[Date_From], s.[Date_To], s.[Prefix], s.[Start_Srl_No], s.[Site_Code], s.[U_EntDt], s.[LogSite_Code], s.[U_Name], s.[U_AE]
    FROM [VijayData2627].[dbo].[Voucher_Prefix] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Voucher_Prefix] AS d
                      WHERE d.[V_Type] = s.[V_Type] AND d.[Date_From] = s.[Date_From] AND d.[Site_Code] = s.[Site_Code] AND d.[LogSite_Code] = s.[LogSite_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Voucher_Include]';

IF OBJECT_ID(N'VijayData2627.dbo.[Voucher_Include]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Voucher_Include]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Voucher_Include]')
           AND name IN ('V_Type', 'GroupCode', 'Dr', 'Cr', 'Site_Code', 'U_EntDt', 'U_AE', 'LogSite_Code', 'U_Name')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Voucher_Include] ([V_Type], [GroupCode], [Dr], [Cr], [Site_Code], [U_EntDt], [U_AE], [LogSite_Code], [U_Name])
    SELECT s.[V_Type], s.[GroupCode], s.[Dr], s.[Cr], s.[Site_Code], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[U_Name]
    FROM [VijayData2627].[dbo].[Voucher_Include] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Voucher_Include] AS d
                      WHERE d.[V_Type] = s.[V_Type] AND d.[GroupCode] = s.[GroupCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Voucher_Exclude]';

IF OBJECT_ID(N'VijayData2627.dbo.[Voucher_Exclude]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Voucher_Exclude]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Voucher_Exclude]')
           AND name IN ('V_Type', 'GroupCode', 'Dr', 'Cr', 'Site_Code', 'U_EntDt', 'U_AE', 'LogSite_Code', 'U_Name')) < 9
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Voucher_Exclude] ([V_Type], [GroupCode], [Dr], [Cr], [Site_Code], [U_EntDt], [U_AE], [LogSite_Code], [U_Name])
    SELECT s.[V_Type], s.[GroupCode], s.[Dr], s.[Cr], s.[Site_Code], s.[U_EntDt], s.[U_AE], s.[LogSite_Code], s.[U_Name]
    FROM [VijayData2627].[dbo].[Voucher_Exclude] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Voucher_Exclude] AS d
                      WHERE d.[V_Type] = s.[V_Type] AND d.[GroupCode] = s.[GroupCode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [POS_SBill]';

IF OBJECT_ID(N'VijayData2627.dbo.[POS_SBill]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[POS_SBill]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[POS_SBill]')
           AND name IN ('DocId', 'OutletDocId', 'OutletCode', 'U_AE', 'U_Name', 'U_EntDt', 'Site_Code', 'LogSite_Code')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[POS_SBill] ([DocId], [OutletDocId], [OutletCode], [U_AE], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code])
    SELECT s.[DocId], s.[OutletDocId], s.[OutletCode], s.[U_AE], s.[U_Name], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[POS_SBill] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[POS_SBill] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[OutletDocId] = s.[OutletDocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [POrder1]';

IF OBJECT_ID(N'VijayData2627.dbo.[POrder1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[POrder1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[POrder1]')
           AND name IN ('Docid', 'Sno', 'VNo', 'VDate', 'VType', 'VPrefix', 'Site_Code', 'PartyCode', 'ItemCode', 'Qty', 'Unit', 'Rate', 'PerUnit', 'Amount', 'U_Name', 'U_EntDt', 'U_AE', 'IndentDocId', 'IndentSno', 'Specification', 'ConvRatio', 'WtQty', 'WtUnit', 'LogSite_Code', 'TaxStru', 'TaxAmt', 'Total')) < 27
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[POrder1] ([Docid], [Sno], [VNo], [VDate], [VType], [VPrefix], [Site_Code], [PartyCode], [ItemCode], [Qty], [Unit], [Rate], [PerUnit], [Amount], [U_Name], [U_EntDt], [U_AE], [IndentDocId], [IndentSno], [Specification], [ConvRatio], [WtQty], [WtUnit], [LogSite_Code], [TaxStru], [TaxAmt], [Total])
    SELECT s.[Docid], s.[Sno], s.[VNo], s.[VDate], s.[VType], s.[VPrefix], s.[Site_Code], s.[PartyCode], s.[ItemCode], s.[Qty], s.[Unit], s.[Rate], s.[PerUnit], s.[Amount], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[IndentDocId], s.[IndentSno], s.[Specification], s.[ConvRatio], s.[WtQty], s.[WtUnit], s.[LogSite_Code], s.[TaxStru], s.[TaxAmt], s.[Total]
    FROM [VijayData2627].[dbo].[POrder1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[POrder1] AS d
                      WHERE d.[Docid] = s.[Docid] AND d.[Sno] = s.[Sno]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [POrder]';

IF OBJECT_ID(N'VijayData2627.dbo.[POrder]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[POrder]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[POrder]')
           AND name IN ('Docid', 'VNo', 'VDate', 'VType', 'VPrefix', 'Site_Code', 'QuotNo', 'QuotDate', 'PartyCode', 'FormCode', 'Sample', 'Form31No', 'Remark', 'DispatchMode', 'DespatchThru', 'PaymentTerms', 'Prices', 'PackCharge', 'MaxQty', 'ForwardCharges', 'DeliverySch', 'DiscPer', 'ExPer', 'TaxPer', 'STaxPer', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 29
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[POrder] ([Docid], [VNo], [VDate], [VType], [VPrefix], [Site_Code], [QuotNo], [QuotDate], [PartyCode], [FormCode], [Sample], [Form31No], [Remark], [DispatchMode], [DespatchThru], [PaymentTerms], [Prices], [PackCharge], [MaxQty], [ForwardCharges], [DeliverySch], [DiscPer], [ExPer], [TaxPer], [STaxPer], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[Docid], s.[VNo], s.[VDate], s.[VType], s.[VPrefix], s.[Site_Code], s.[QuotNo], s.[QuotDate], s.[PartyCode], s.[FormCode], s.[Sample], s.[Form31No], s.[Remark], s.[DispatchMode], s.[DespatchThru], s.[PaymentTerms], s.[Prices], s.[PackCharge], s.[MaxQty], s.[ForwardCharges], s.[DeliverySch], s.[DiscPer], s.[ExPer], s.[TaxPer], s.[STaxPer], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[POrder] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[POrder] AS d
                      WHERE d.[Docid] = s.[Docid]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [PlanTokenDetails]';

IF OBJECT_ID(N'VijayData2627.dbo.[PlanTokenDetails]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[PlanTokenDetails]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[PlanTokenDetails]')
           AND name IN ('SNo', 'Chrgcode', 'PlanCode', 'Rate', 'Remarks', 'App_Date', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 11
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[PlanTokenDetails] ([SNo], [Chrgcode], [PlanCode], [Rate], [Remarks], [App_Date], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[SNo], s.[Chrgcode], s.[PlanCode], s.[Rate], s.[Remarks], s.[App_Date], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[PlanTokenDetails] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[PlanTokenDetails] AS d
                      WHERE d.[Chrgcode] = s.[Chrgcode] AND d.[PlanCode] = s.[PlanCode] AND d.[App_Date] = s.[App_Date]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [PlanMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[PlanMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[PlanMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[PlanMast]')
           AND name IN ('Code', 'Name', 'Total', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'App_Date', 'Plan_Package', 'PercentApp', 'ActiveYN', 'LogSite_Code', 'RoomPer', 'RoomRate', 'PackageAmount', 'DiscAppYN', 'DiscAppON', 'Nights', 'Adults', 'Childs', 'RRIncTax', 'RoomCat', 'Tariff', 'RoomTaxStru', 'MapCode')) < 25
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[PlanMast] ([Code], [Name], [Total], [Site_Code], [U_Name], [U_EntDt], [U_AE], [App_Date], [Plan_Package], [PercentApp], [ActiveYN], [LogSite_Code], [RoomPer], [RoomRate], [PackageAmount], [DiscAppYN], [DiscAppON], [Nights], [Adults], [Childs], [RRIncTax], [RoomCat], [Tariff], [RoomTaxStru], [MapCode])
    SELECT s.[Code], s.[Name], s.[Total], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[App_Date], s.[Plan_Package], s.[PercentApp], s.[ActiveYN], s.[LogSite_Code], s.[RoomPer], s.[RoomRate], s.[PackageAmount], s.[DiscAppYN], s.[DiscAppON], s.[Nights], s.[Adults], s.[Childs], s.[RRIncTax], s.[RoomCat], s.[Tariff], s.[RoomTaxStru], s.[MapCode]
    FROM [VijayData2627].[dbo].[PlanMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[PlanMast] AS d
                      WHERE d.[Code] = s.[Code] AND d.[App_Date] = s.[App_Date]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [PlanDetails]';

IF OBJECT_ID(N'VijayData2627.dbo.[PlanDetails]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[PlanDetails]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[PlanDetails]')
           AND name IN ('FolioNo', 'RoomNo', 'Revcode', 'Chrgcode', 'TaxInc', 'TaxStru', 'PrintOption', 'PostingMethod', 'ChargeType', 'FlatRate', 'Adult', 'Child', 'ExtraAdult', 'ExtraChild', 'NoOfDays', 'PlanPer', 'App_Date', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'Amount', 'PlanCode', 'DocId', 'NetPackageAmount', 'LogSite_Code', 'DiscAmt', 'PlanAppDate', 'FixRate')) < 29
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[PlanDetails] ([FolioNo], [RoomNo], [Revcode], [Chrgcode], [TaxInc], [TaxStru], [PrintOption], [PostingMethod], [ChargeType], [FlatRate], [Adult], [Child], [ExtraAdult], [ExtraChild], [NoOfDays], [PlanPer], [App_Date], [Site_Code], [U_Name], [U_EntDt], [U_AE], [Amount], [PlanCode], [DocId], [NetPackageAmount], [LogSite_Code], [DiscAmt], [PlanAppDate], [FixRate])
    SELECT s.[FolioNo], s.[RoomNo], s.[Revcode], s.[Chrgcode], s.[TaxInc], s.[TaxStru], s.[PrintOption], s.[PostingMethod], s.[ChargeType], s.[FlatRate], s.[Adult], s.[Child], s.[ExtraAdult], s.[ExtraChild], s.[NoOfDays], s.[PlanPer], s.[App_Date], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Amount], s.[PlanCode], s.[DocId], s.[NetPackageAmount], s.[LogSite_Code], s.[DiscAmt], s.[PlanAppDate], s.[FixRate]
    FROM [VijayData2627].[dbo].[PlanDetails] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[PlanDetails] AS d
                      WHERE d.[Chrgcode] = s.[Chrgcode] AND d.[DocId] = s.[DocId] AND d.[PlanAppDate] = s.[PlanAppDate]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Plan1]';

IF OBJECT_ID(N'VijayData2627.dbo.[Plan1]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Plan1]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Plan1]')
           AND name IN ('Code', 'RevCode', 'Amount', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'Chrgcode', 'TaxInc', 'TaxStru', 'PrintOption', 'PostingMethod', 'ChargeType', 'FlatRate', 'Adult', 'Child', 'ExtraAdult', 'ExtraChild', 'NoOfDays', 'PlanPer', 'App_Date', 'LogSite_Code', 'PerDayAmount', 'NetAmount', 'FixRate')) < 25
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Plan1] ([Code], [RevCode], [Amount], [Site_Code], [U_Name], [U_EntDt], [U_AE], [Chrgcode], [TaxInc], [TaxStru], [PrintOption], [PostingMethod], [ChargeType], [FlatRate], [Adult], [Child], [ExtraAdult], [ExtraChild], [NoOfDays], [PlanPer], [App_Date], [LogSite_Code], [PerDayAmount], [NetAmount], [FixRate])
    SELECT s.[Code], s.[RevCode], s.[Amount], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Chrgcode], s.[TaxInc], s.[TaxStru], s.[PrintOption], s.[PostingMethod], s.[ChargeType], s.[FlatRate], s.[Adult], s.[Child], s.[ExtraAdult], s.[ExtraChild], s.[NoOfDays], s.[PlanPer], s.[App_Date], s.[LogSite_Code], s.[PerDayAmount], s.[NetAmount], s.[FixRate]
    FROM [VijayData2627].[dbo].[Plan1] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Plan1] AS d
                      WHERE d.[Code] = s.[Code] AND d.[RevCode] = s.[RevCode] AND d.[Chrgcode] = s.[Chrgcode]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [PDALOG]';

IF OBJECT_ID(N'VijayData2627.dbo.[PDALOG]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[PDALOG]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[PDALOG]')
           AND name IN ('U_AE', 'U_Name', 'U_EntDt', 'Site_Code', 'LogSite_Code')) < 5
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[PDALOG] ([U_AE], [U_Name], [U_EntDt], [Site_Code], [LogSite_Code])
    SELECT s.[U_AE], s.[U_Name], s.[U_EntDt], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[PDALOG] AS s;

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [PayChargeLog]';

IF OBJECT_ID(N'VijayData2627.dbo.[PayChargeLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[PayChargeLog]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[PayChargeLog]')
           AND name IN ('DocId', 'SNo', 'Vtype', 'VNo', 'Site_Code', 'VPrefix', 'Vdate', 'VTime', 'GuestProf', 'EmpCode', 'CompCode', 'Comments', 'PayCode', 'PayType', 'AmtCr', 'AmtDr', 'TipAmt', 'RoomCat', 'RoomType', 'RoomNo', 'FolioNo', 'CardNo', 'CardHolder', 'ChqNo', 'ChqDate', 'ExpDate', 'BookNo', 'BookType', 'U_Name', 'U_EntDt', 'U_AE', 'RestCode', 'BillAmount', 'ContraDocID', 'DbtChkIn', 'TaxPer', 'OnAmt', 'Split', 'Bill_No', 'MarkEntry', 'ModeSet', 'SettleDate', 'BatchNo', 'OldBill_No', 'PlanCharge', 'FixedChargeCode', 'RelatedFolioNo', 'FolioNoDocid', 'LogSite_Code', 'RefNo', 'PlanCode', 'SeqNo', 'RelatedFolionoDocId', 'RefDocId', 'Remarks', 'AU_Name', 'AU_EntDt', 'TaxCondAmt', 'TaxStru', 'AgAc', 'TxnNo')) < 61
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[PayChargeLog] ([DocId], [SNo], [Vtype], [VNo], [Site_Code], [VPrefix], [Vdate], [VTime], [GuestProf], [EmpCode], [CompCode], [Comments], [PayCode], [PayType], [AmtCr], [AmtDr], [TipAmt], [RoomCat], [RoomType], [RoomNo], [FolioNo], [CardNo], [CardHolder], [ChqNo], [ChqDate], [ExpDate], [BookNo], [BookType], [U_Name], [U_EntDt], [U_AE], [RestCode], [BillAmount], [ContraDocID], [DbtChkIn], [TaxPer], [OnAmt], [Split], [Bill_No], [MarkEntry], [ModeSet], [SettleDate], [BatchNo], [OldBill_No], [PlanCharge], [FixedChargeCode], [RelatedFolioNo], [FolioNoDocid], [LogSite_Code], [RefNo], [PlanCode], [SeqNo], [RelatedFolionoDocId], [RefDocId], [Remarks], [AU_Name], [AU_EntDt], [TaxCondAmt], [TaxStru], [AgAc], [TxnNo])
    SELECT s.[DocId], s.[SNo], s.[Vtype], s.[VNo], s.[Site_Code], s.[VPrefix], s.[Vdate], s.[VTime], s.[GuestProf], s.[EmpCode], s.[CompCode], s.[Comments], s.[PayCode], s.[PayType], s.[AmtCr], s.[AmtDr], s.[TipAmt], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[FolioNo], s.[CardNo], s.[CardHolder], s.[ChqNo], s.[ChqDate], s.[ExpDate], s.[BookNo], s.[BookType], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[RestCode], s.[BillAmount], s.[ContraDocID], s.[DbtChkIn], s.[TaxPer], s.[OnAmt], s.[Split], s.[Bill_No], s.[MarkEntry], s.[ModeSet], s.[SettleDate], s.[BatchNo], s.[OldBill_No], s.[PlanCharge], s.[FixedChargeCode], s.[RelatedFolioNo], s.[FolioNoDocid], s.[LogSite_Code], s.[RefNo], s.[PlanCode], s.[SeqNo], s.[RelatedFolionoDocId], s.[RefDocId], s.[Remarks], s.[AU_Name], s.[AU_EntDt], s.[TaxCondAmt], s.[TaxStru], s.[AgAc], s.[TxnNo]
    FROM [VijayData2627].[dbo].[PayChargeLog] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[PayChargeLog] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[SNo] = s.[SNo] AND d.[SeqNo] = s.[SeqNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [PayChargeH]';

IF OBJECT_ID(N'VijayData2627.dbo.[PayChargeH]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[PayChargeH]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[PayChargeH]')
           AND name IN ('DocId', 'SNo', 'Vtype', 'VNo', 'Site_Code', 'VPrefix', 'Vdate', 'VTime', 'GuestProf', 'EmpCode', 'CompCode', 'Comments', 'PayCode', 'PayType', 'AmtCr', 'AmtDr', 'TipAmt', 'RoomCat', 'RoomType', 'RoomNo', 'FPNo', 'CardNo', 'CardHolder', 'ChqNo', 'ChqDate', 'ExpDate', 'BookNo', 'BookType', 'U_Name', 'U_EntDt', 'U_AE', 'RestCode', 'BillAmount', 'ContraDocID', 'DbtChkIn', 'TaxPer', 'OnAmt', 'Bill_No', 'MarkEntry', 'ModeSet', 'SettleDate', 'BatchNo', 'PostDocId', 'LogSite_Code', 'TaxStru', 'TxnNo')) < 46
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[PayChargeH] ([DocId], [SNo], [Vtype], [VNo], [Site_Code], [VPrefix], [Vdate], [VTime], [GuestProf], [EmpCode], [CompCode], [Comments], [PayCode], [PayType], [AmtCr], [AmtDr], [TipAmt], [RoomCat], [RoomType], [RoomNo], [FPNo], [CardNo], [CardHolder], [ChqNo], [ChqDate], [ExpDate], [BookNo], [BookType], [U_Name], [U_EntDt], [U_AE], [RestCode], [BillAmount], [ContraDocID], [DbtChkIn], [TaxPer], [OnAmt], [Bill_No], [MarkEntry], [ModeSet], [SettleDate], [BatchNo], [PostDocId], [LogSite_Code], [TaxStru], [TxnNo])
    SELECT s.[DocId], s.[SNo], s.[Vtype], s.[VNo], s.[Site_Code], s.[VPrefix], s.[Vdate], s.[VTime], s.[GuestProf], s.[EmpCode], s.[CompCode], s.[Comments], s.[PayCode], s.[PayType], s.[AmtCr], s.[AmtDr], s.[TipAmt], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[FPNo], s.[CardNo], s.[CardHolder], s.[ChqNo], s.[ChqDate], s.[ExpDate], s.[BookNo], s.[BookType], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[RestCode], s.[BillAmount], s.[ContraDocID], s.[DbtChkIn], s.[TaxPer], s.[OnAmt], s.[Bill_No], s.[MarkEntry], s.[ModeSet], s.[SettleDate], s.[BatchNo], s.[PostDocId], s.[LogSite_Code], s.[TaxStru], s.[TxnNo]
    FROM [VijayData2627].[dbo].[PayChargeH] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[PayChargeH] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[SNo] = s.[SNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [PayCharge]';

IF OBJECT_ID(N'VijayData2627.dbo.[PayCharge]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[PayCharge]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[PayCharge]')
           AND name IN ('DocId', 'SNo', 'Vtype', 'VNo', 'Site_Code', 'VPrefix', 'Vdate', 'VTime', 'GuestProf', 'EmpCode', 'CompCode', 'Comments', 'PayCode', 'PayType', 'AmtCr', 'AmtDr', 'TipAmt', 'RoomCat', 'RoomType', 'RoomNo', 'FolioNo', 'CardNo', 'CardHolder', 'ChqNo', 'ChqDate', 'ExpDate', 'BookNo', 'BookType', 'U_Name', 'U_EntDt', 'U_AE', 'RestCode', 'BillAmount', 'ContraDocID', 'DbtChkIn', 'TaxPer', 'OnAmt', 'Split', 'Bill_No', 'MarkEntry', 'ModeSet', 'SettleDate', 'BatchNo', 'OldBill_No', 'PlanCharge', 'FixedChargeCode', 'RelatedFolioNo', 'FolioNoDocid', 'LogSite_Code', 'RefNo', 'PlanCode', 'SeqNo', 'RelatedFolionoDocId', 'RefDocId', 'Remarks', 'AU_Name', 'AU_EntDt', 'TaxCondAmt', 'TaxStru', 'AgAc', 'TxnNo')) < 61
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[PayCharge] ([DocId], [SNo], [Vtype], [VNo], [Site_Code], [VPrefix], [Vdate], [VTime], [GuestProf], [EmpCode], [CompCode], [Comments], [PayCode], [PayType], [AmtCr], [AmtDr], [TipAmt], [RoomCat], [RoomType], [RoomNo], [FolioNo], [CardNo], [CardHolder], [ChqNo], [ChqDate], [ExpDate], [BookNo], [BookType], [U_Name], [U_EntDt], [U_AE], [RestCode], [BillAmount], [ContraDocID], [DbtChkIn], [TaxPer], [OnAmt], [Split], [Bill_No], [MarkEntry], [ModeSet], [SettleDate], [BatchNo], [OldBill_No], [PlanCharge], [FixedChargeCode], [RelatedFolioNo], [FolioNoDocid], [LogSite_Code], [RefNo], [PlanCode], [SeqNo], [RelatedFolionoDocId], [RefDocId], [Remarks], [AU_Name], [AU_EntDt], [TaxCondAmt], [TaxStru], [AgAc], [TxnNo])
    SELECT s.[DocId], s.[SNo], s.[Vtype], s.[VNo], s.[Site_Code], s.[VPrefix], s.[Vdate], s.[VTime], s.[GuestProf], s.[EmpCode], s.[CompCode], s.[Comments], s.[PayCode], s.[PayType], s.[AmtCr], s.[AmtDr], s.[TipAmt], s.[RoomCat], s.[RoomType], s.[RoomNo], s.[FolioNo], s.[CardNo], s.[CardHolder], s.[ChqNo], s.[ChqDate], s.[ExpDate], s.[BookNo], s.[BookType], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[RestCode], s.[BillAmount], s.[ContraDocID], s.[DbtChkIn], s.[TaxPer], s.[OnAmt], s.[Split], s.[Bill_No], s.[MarkEntry], s.[ModeSet], s.[SettleDate], s.[BatchNo], s.[OldBill_No], s.[PlanCharge], s.[FixedChargeCode], s.[RelatedFolioNo], s.[FolioNoDocid], s.[LogSite_Code], s.[RefNo], s.[PlanCode], s.[SeqNo], s.[RelatedFolionoDocId], s.[RefDocId], s.[Remarks], s.[AU_Name], s.[AU_EntDt], s.[TaxCondAmt], s.[TaxStru], s.[AgAc], s.[TxnNo]
    FROM [VijayData2627].[dbo].[PayCharge] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[PayCharge] AS d
                      WHERE d.[DocId] = s.[DocId] AND d.[SNo] = s.[SNo]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Attendence]';

IF OBJECT_ID(N'VijayData2627.dbo.[Attendence]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Attendence]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Attendence]')
           AND name IN ('Mth_Year', 'Emp_Code', 'Attn_Str', 'Site_Code', 'LogSite_Code')) < 5
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Attendence] ([Mth_Year], [Emp_Code], [Attn_Str], [Site_Code], [LogSite_Code])
    SELECT s.[Mth_Year], s.[Emp_Code], s.[Attn_Str], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[Attendence] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Attendence] AS d
                      WHERE d.[Mth_Year] = s.[Mth_Year] AND d.[Emp_Code] = s.[Emp_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [Attend]';

IF OBJECT_ID(N'VijayData2627.dbo.[Attend]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[Attend]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[Attend]')
           AND name IN ('V_Prefix', 'V_Date', 'Emp_Code', 'FirstShift', 'SecondShift', 'Site_Code', 'U_Name', 'U_EntDt', 'U_AE', 'LogSite_Code')) < 10
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[Attend] ([V_Prefix], [V_Date], [Emp_Code], [FirstShift], [SecondShift], [Site_Code], [U_Name], [U_EntDt], [U_AE], [LogSite_Code])
    SELECT s.[V_Prefix], s.[V_Date], s.[Emp_Code], s.[FirstShift], s.[SecondShift], s.[Site_Code], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[Attend] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Attend] AS d
                      WHERE d.[V_Prefix] = s.[V_Prefix] AND d.[V_Date] = s.[V_Date] AND d.[Emp_Code] = s.[Emp_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [AssignDelivery]';

IF OBJECT_ID(N'VijayData2627.dbo.[AssignDelivery]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[AssignDelivery]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[AssignDelivery]')
           AND name IN ('DocId', 'Vtype', 'VNo', 'Vprefix', 'Vdate', 'Ddate', 'RestCode', 'DeliBoy', 'BillAmt', 'Remark', 'Site_Code', 'U_Name', 'U_AE', 'U_EntDt', 'LogSite_Code')) < 15
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[AssignDelivery] ([DocId], [Vtype], [VNo], [Vprefix], [Vdate], [Ddate], [RestCode], [DeliBoy], [BillAmt], [Remark], [Site_Code], [U_Name], [U_AE], [U_EntDt], [LogSite_Code])
    SELECT s.[DocId], s.[Vtype], s.[VNo], s.[Vprefix], s.[Vdate], s.[Ddate], s.[RestCode], s.[DeliBoy], s.[BillAmt], s.[Remark], s.[Site_Code], s.[U_Name], s.[U_AE], s.[U_EntDt], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[AssignDelivery] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[AssignDelivery] AS d
                      WHERE d.[DocId] = s.[DocId]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [AreaMast]';

IF OBJECT_ID(N'VijayData2627.dbo.[AreaMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[AreaMast]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[AreaMast]')
           AND name IN ('AreaCODE', 'AreaNAME', 'CityCode', 'U_Name', 'U_EntDt', 'U_AE', 'Site_Code', 'LogSite_Code')) < 8
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[AreaMast] ([AreaCODE], [AreaNAME], [CityCode], [U_Name], [U_EntDt], [U_AE], [Site_Code], [LogSite_Code])
    SELECT s.[AreaCODE], s.[AreaNAME], s.[CityCode], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[Site_Code], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[AreaMast] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[AreaMast] AS d
                      WHERE d.[AreaCODE] = s.[AreaCODE]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [AcgroupcurrBal]';

IF OBJECT_ID(N'VijayData2627.dbo.[AcgroupcurrBal]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[AcgroupcurrBal]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[AcgroupcurrBal]')
           AND name IN ('LogSite_Code', 'GroupCode', 'V_Date', 'Curr_Bal', 'Site_Code')) < 5
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[AcgroupcurrBal] ([LogSite_Code], [GroupCode], [V_Date], [Curr_Bal], [Site_Code])
    SELECT s.[LogSite_Code], s.[GroupCode], s.[V_Date], s.[Curr_Bal], s.[Site_Code]
    FROM [VijayData2627].[dbo].[AcgroupcurrBal] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[AcgroupcurrBal] AS d
                      WHERE d.[LogSite_Code] = s.[LogSite_Code] AND d.[GroupCode] = s.[GroupCode] AND d.[V_Date] = s.[V_Date]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;

GO

PRINT 'Table : [ACGROUP]';

IF OBJECT_ID(N'VijayData2627.dbo.[ACGROUP]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[ACGROUP]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[ACGROUP]')
           AND name IN ('ID', 'Site_Code', 'GroupCode', 'GroupName', 'GroupNameBiLang', 'GroupNature', 'Nature', 'MainGrCode', 'CurrentBalance', 'SubLedYN', 'BlOrd', 'AliasYN', 'SysGroup', 'GroupHelp', 'U_Name', 'U_EntDt', 'U_AE', 'TradingYN', 'MainGrLen', 'LogSite_Code')) < 20
    PRINT '   SKIPPED  -> destination me kuch columns missing hain';
ELSE
BEGIN TRY
    INSERT INTO [dbo].[ACGROUP] ([ID], [Site_Code], [GroupCode], [GroupName], [GroupNameBiLang], [GroupNature], [Nature], [MainGrCode], [CurrentBalance], [SubLedYN], [BlOrd], [AliasYN], [SysGroup], [GroupHelp], [U_Name], [U_EntDt], [U_AE], [TradingYN], [MainGrLen], [LogSite_Code])
    SELECT s.[ID], s.[Site_Code], s.[GroupCode], s.[GroupName], s.[GroupNameBiLang], s.[GroupNature], s.[Nature], s.[MainGrCode], s.[CurrentBalance], s.[SubLedYN], s.[BlOrd], s.[AliasYN], s.[SysGroup], s.[GroupHelp], s.[U_Name], s.[U_EntDt], s.[U_AE], s.[TradingYN], s.[MainGrLen], s.[LogSite_Code]
    FROM [VijayData2627].[dbo].[ACGROUP] AS s
    WHERE NOT EXISTS (SELECT 1 FROM [dbo].[ACGROUP] AS d
                      WHERE d.[ID] = s.[ID] AND d.[Site_Code] = s.[Site_Code]);

    PRINT '   TRANSFERRED : ' + CAST(@@ROWCOUNT AS varchar(20)) + ' rows';
END TRY
BEGIN CATCH
    PRINT '   FAILED   -> ' + ERROR_MESSAGE();
END CATCH;


PRINT '';
PRINT '========== DATA TRANSFER COMPLETE ==========';
