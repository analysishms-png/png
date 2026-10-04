==============================================================================
 STOCK / INVENTORY REPORTS - STORED PROCEDURES (SQL Server T-SQL)
 Pattern  : SSRS/Excel-friendly -> typed #Rpt temp table + INSERT +
            final ordered SELECT (padded headers, ROUND 2, single result set)
 Source   : visahl.sql dump tables (Stock, Sale1, Sale2, SunTran, PayCharge)
 Usage    : EXEC usp_StockRegister '2016-09-01','2016-09-30';
 Note     : Drop-then-create, safe to re-run. SSRS DataSet ke liye ek hi
            result set (SET NOCOUNT ON) - temp table output me nahi aata.
==============================================================================

-- ----------------------------------------------------------------------------
-- usp_StockRegister   (report: stockregister)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_StockRegister','P') IS NOT NULL DROP PROCEDURE dbo.usp_StockRegister;
GO
CREATE PROCEDURE dbo.usp_StockRegister @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [GrpName] NVARCHAR(100),
    [Item] NVARCHAR(100),
    [OpeningQty] DECIMAL(18,2),
    [PurchaseQty] DECIMAL(18,2),
    [IssueQty] DECIMAL(18,2),
    [ClosingQty] DECIMAL(18,2),
    [ClosingValue] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT CASE
  WHEN S.Item LIKE 'RICE%' THEN 'RICE'
  WHEN S.Item LIKE 'OIL%'  THEN 'OIL'
  WHEN S.Item LIKE 'WHKY%' THEN 'WHISKY'
  WHEN S.Item LIKE 'SUGR%' THEN 'SUGAR'
  WHEN S.Item LIKE 'ATTA%' THEN 'ATTA'
  WHEN S.Item LIKE 'TEA%'  THEN 'TEA'
  WHEN S.Item LIKE 'WINE%' THEN 'WINE'
  WHEN S.Item LIKE 'VODKA%' THEN 'VODKA'
  WHEN S.Item LIKE 'FRT%'  THEN 'FRUIT'
  ELSE 'OTHER'
  END AS GrpName,
  S.Item, SUM(CASE WHEN S.Vdate < @F THEN ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0) ELSE 0 END) AS OpeningQty,
  SUM(CASE WHEN S.Vdate BETWEEN @F AND @T THEN ISNULL(S.QtyRec,0) ELSE 0 END) AS PurchaseQty,
  SUM(CASE WHEN S.Vdate BETWEEN @F AND @T THEN ISNULL(S.QtyIss,0) ELSE 0 END) AS IssueQty,
  SUM(CASE WHEN S.Vdate <= @T THEN ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0) ELSE 0 END) AS ClosingQty,
  SUM(CASE WHEN S.Vdate <= @T THEN ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0) ELSE 0 END) * MAX(ISNULL(S.Rate,0)) AS ClosingValue
  FROM Stock S
  GROUP BY CASE
  WHEN S.Item LIKE 'RICE%' THEN 'RICE'
  WHEN S.Item LIKE 'OIL%'  THEN 'OIL'
  WHEN S.Item LIKE 'WHKY%' THEN 'WHISKY'
  WHEN S.Item LIKE 'SUGR%' THEN 'SUGAR'
  WHEN S.Item LIKE 'ATTA%' THEN 'ATTA'
  WHEN S.Item LIKE 'TEA%'  THEN 'TEA'
  WHEN S.Item LIKE 'WINE%' THEN 'WINE'
  WHEN S.Item LIKE 'VODKA%' THEN 'VODKA'
  WHEN S.Item LIKE 'FRT%'  THEN 'FRUIT'
  ELSE 'OTHER'
  END, S.Item
;

  SELECT
  [GrpName] AS [GrpName       ],
  [Item] AS [Item          ],
  ROUND([OpeningQty], 2) AS [OpeningQty    ],
  ROUND([PurchaseQty], 2) AS [PurchaseQty   ],
  ROUND([IssueQty], 2) AS [IssueQty      ],
  ROUND([ClosingQty], 2) AS [ClosingQty    ],
  ROUND([ClosingValue], 2) AS [ClosingValue  ]
  FROM #Rpt
  ORDER BY [GrpName], [Item];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_StockSummary   (report: stocksumm)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_StockSummary','P') IS NOT NULL DROP PROCEDURE dbo.usp_StockSummary;
GO
CREATE PROCEDURE dbo.usp_StockSummary 
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [GrpName] NVARCHAR(100),
    [Item] NVARCHAR(100),
    [BalQty] DECIMAL(18,2),
    [StockValue] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT CASE
  WHEN S.Item LIKE 'RICE%' THEN 'RICE'
  WHEN S.Item LIKE 'OIL%'  THEN 'OIL'
  WHEN S.Item LIKE 'WHKY%' THEN 'WHISKY'
  WHEN S.Item LIKE 'SUGR%' THEN 'SUGAR'
  WHEN S.Item LIKE 'ATTA%' THEN 'ATTA'
  WHEN S.Item LIKE 'TEA%'  THEN 'TEA'
  WHEN S.Item LIKE 'WINE%' THEN 'WINE'
  WHEN S.Item LIKE 'VODKA%' THEN 'VODKA'
  WHEN S.Item LIKE 'FRT%'  THEN 'FRUIT'
  ELSE 'OTHER'
  END AS GrpName,
  S.Item, SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) AS BalQty,
  SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) * MAX(ISNULL(S.Rate,0)) AS StockValue
  FROM Stock S
  WHERE S.VoidYN <> 'Y' OR S.VoidYN IS NULL
  GROUP BY CASE
  WHEN S.Item LIKE 'RICE%' THEN 'RICE'
  WHEN S.Item LIKE 'OIL%'  THEN 'OIL'
  WHEN S.Item LIKE 'WHKY%' THEN 'WHISKY'
  WHEN S.Item LIKE 'SUGR%' THEN 'SUGAR'
  WHEN S.Item LIKE 'ATTA%' THEN 'ATTA'
  WHEN S.Item LIKE 'TEA%'  THEN 'TEA'
  WHEN S.Item LIKE 'WINE%' THEN 'WINE'
  WHEN S.Item LIKE 'VODKA%' THEN 'VODKA'
  WHEN S.Item LIKE 'FRT%'  THEN 'FRUIT'
  ELSE 'OTHER'
  END, S.Item
;

  SELECT
  [GrpName] AS [GrpName       ],
  [Item] AS [Item          ],
  ROUND([BalQty], 2) AS [BalQty        ],
  ROUND([StockValue], 2) AS [StockValue    ]
  FROM #Rpt
  ORDER BY [GrpName], [StockValue] DESC;

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_StockRegisterByStore   (report: stockregstore)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_StockRegisterByStore','P') IS NOT NULL DROP PROCEDURE dbo.usp_StockRegisterByStore;
GO
CREATE PROCEDURE dbo.usp_StockRegisterByStore @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [GodownCode] NVARCHAR(100),
    [Item] NVARCHAR(100),
    [OpeningQty] DECIMAL(18,2),
    [ReceiptQty] DECIMAL(18,2),
    [IssueQty] DECIMAL(18,2),
    [ClosingQty] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.GodownCode, S.Item,
  SUM(CASE WHEN S.Vdate < @F THEN ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0) ELSE 0 END) AS OpeningQty,
  SUM(CASE WHEN S.Vdate BETWEEN @F AND @T THEN ISNULL(S.QtyRec,0) ELSE 0 END) AS ReceiptQty,
  SUM(CASE WHEN S.Vdate BETWEEN @F AND @T THEN ISNULL(S.QtyIss,0) ELSE 0 END) AS IssueQty,
  SUM(CASE WHEN S.Vdate <= @T THEN ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0) ELSE 0 END) AS ClosingQty
  FROM Stock S
  WHERE S.GodownCode IS NOT NULL AND S.GodownCode <> ''
  GROUP BY S.GodownCode, S.Item
;

  SELECT
  [GodownCode] AS [GodownCode    ],
  [Item] AS [Item          ],
  ROUND([OpeningQty], 2) AS [OpeningQty    ],
  ROUND([ReceiptQty], 2) AS [ReceiptQty    ],
  ROUND([IssueQty], 2) AS [IssueQty      ],
  ROUND([ClosingQty], 2) AS [ClosingQty    ]
  FROM #Rpt
  ORDER BY [GodownCode], [Item];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_StockSummaryByStore   (report: stocksummstore)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_StockSummaryByStore','P') IS NOT NULL DROP PROCEDURE dbo.usp_StockSummaryByStore;
GO
CREATE PROCEDURE dbo.usp_StockSummaryByStore 
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [GodownCode] NVARCHAR(100),
    [Item] NVARCHAR(100),
    [BalQty] DECIMAL(18,2),
    [Value] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.GodownCode, S.Item, SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) AS BalQty,
  SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) * MAX(ISNULL(S.Rate,0)) AS Value
  FROM Stock S
  WHERE ISNULL(S.GodownCode,'') <> ''
  GROUP BY S.GodownCode, S.Item
;

  SELECT
  [GodownCode] AS [GodownCode    ],
  [Item] AS [Item          ],
  ROUND([BalQty], 2) AS [BalQty        ],
  ROUND([Value], 2) AS [Value         ]
  FROM #Rpt
  ORDER BY [GodownCode], [Item];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_StockInHand   (report: stockinhand)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_StockInHand','P') IS NOT NULL DROP PROCEDURE dbo.usp_StockInHand;
GO
CREATE PROCEDURE dbo.usp_StockInHand 
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [GrpName] NVARCHAR(100),
    [Item] NVARCHAR(100),
    [StockInHand] DECIMAL(18,2),
    [Unit] NVARCHAR(100),
    [LastRate] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT CASE
  WHEN S.Item LIKE 'RICE%' THEN 'RICE'
  WHEN S.Item LIKE 'OIL%'  THEN 'OIL'
  WHEN S.Item LIKE 'WHKY%' THEN 'WHISKY'
  WHEN S.Item LIKE 'SUGR%' THEN 'SUGAR'
  WHEN S.Item LIKE 'ATTA%' THEN 'ATTA'
  WHEN S.Item LIKE 'TEA%'  THEN 'TEA'
  WHEN S.Item LIKE 'WINE%' THEN 'WINE'
  WHEN S.Item LIKE 'VODKA%' THEN 'VODKA'
  WHEN S.Item LIKE 'FRT%'  THEN 'FRUIT'
  ELSE 'OTHER'
  END AS GrpName,
  S.Item, SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) AS StockInHand,
  MAX(ISNULL(S.Unit,'')) AS Unit, MAX(ISNULL(S.Rate,0)) AS LastRate
  FROM Stock S
  WHERE ISNULL(S.VoidYN,'') <> 'Y'
  GROUP BY CASE
  WHEN S.Item LIKE 'RICE%' THEN 'RICE'
  WHEN S.Item LIKE 'OIL%'  THEN 'OIL'
  WHEN S.Item LIKE 'WHKY%' THEN 'WHISKY'
  WHEN S.Item LIKE 'SUGR%' THEN 'SUGAR'
  WHEN S.Item LIKE 'ATTA%' THEN 'ATTA'
  WHEN S.Item LIKE 'TEA%'  THEN 'TEA'
  WHEN S.Item LIKE 'WINE%' THEN 'WINE'
  WHEN S.Item LIKE 'VODKA%' THEN 'VODKA'
  WHEN S.Item LIKE 'FRT%'  THEN 'FRUIT'
  ELSE 'OTHER'
  END, S.Item
  HAVING SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) <> 0
;

  SELECT
  [GrpName] AS [GrpName       ],
  [Item] AS [Item          ],
  ROUND([StockInHand], 2) AS [StockInHand   ],
  [Unit] AS [Unit          ],
  ROUND([LastRate], 2) AS [LastRate      ]
  FROM #Rpt
  ORDER BY [GrpName], [Item];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_StockSummaryPSBasis   (report: stocksummaryp/sbasis)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_StockSummaryPSBasis','P') IS NOT NULL DROP PROCEDURE dbo.usp_StockSummaryPSBasis;
GO
CREATE PROCEDURE dbo.usp_StockSummaryPSBasis 
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [Item] NVARCHAR(100),
    [ConsumedQty] DECIMAL(18,2),
    [ConsumptionValue] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.Item,
  SUM(ISNULL(S.QtyIss,0)) AS ConsumedQty,
  SUM(ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0)) AS ConsumptionValue
  FROM Stock S
  GROUP BY S.Item
;

  SELECT
  [Item] AS [Item          ],
  ROUND([ConsumedQty], 2) AS [ConsumedQty   ],
  ROUND([ConsumptionValue], 2) AS [ConsumptionVal]
  FROM #Rpt
  ORDER BY [ConsumptionValue] DESC;

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_KitchenStockReport   (report: kitchenstkrep)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_KitchenStockReport','P') IS NOT NULL DROP PROCEDURE dbo.usp_KitchenStockReport;
GO
CREATE PROCEDURE dbo.usp_KitchenStockReport 
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [Kitchen] NVARCHAR(100),
    [GrpName] NVARCHAR(100),
    [Item] NVARCHAR(100),
    [KitchenStock] DECIMAL(18,2),
    [Unit] NVARCHAR(100)
  );

  INSERT INTO #Rpt
  SELECT ISNULL(NULLIF(S.ItemRestCode,S.RestCode),'KITCHEN') AS Kitchen,
  CASE
  WHEN S.Item LIKE 'RICE%' THEN 'RICE'
  WHEN S.Item LIKE 'OIL%'  THEN 'OIL'
  WHEN S.Item LIKE 'WHKY%' THEN 'WHISKY'
  WHEN S.Item LIKE 'SUGR%' THEN 'SUGAR'
  WHEN S.Item LIKE 'ATTA%' THEN 'ATTA'
  WHEN S.Item LIKE 'TEA%'  THEN 'TEA'
  WHEN S.Item LIKE 'WINE%' THEN 'WINE'
  WHEN S.Item LIKE 'VODKA%' THEN 'VODKA'
  WHEN S.Item LIKE 'FRT%'  THEN 'FRUIT'
  ELSE 'OTHER'
  END AS GrpName,
  S.Item, SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) AS KitchenStock,
  MAX(ISNULL(S.Unit,'')) AS Unit
  FROM Stock S
  GROUP BY ISNULL(NULLIF(S.ItemRestCode,S.RestCode),'KITCHEN'),
  CASE
  WHEN S.Item LIKE 'RICE%' THEN 'RICE'
  WHEN S.Item LIKE 'OIL%'  THEN 'OIL'
  WHEN S.Item LIKE 'WHKY%' THEN 'WHISKY'
  WHEN S.Item LIKE 'SUGR%' THEN 'SUGAR'
  WHEN S.Item LIKE 'ATTA%' THEN 'ATTA'
  WHEN S.Item LIKE 'TEA%'  THEN 'TEA'
  WHEN S.Item LIKE 'WINE%' THEN 'WINE'
  WHEN S.Item LIKE 'VODKA%' THEN 'VODKA'
  WHEN S.Item LIKE 'FRT%'  THEN 'FRUIT'
  ELSE 'OTHER'
  END, S.Item
;

  SELECT
  [Kitchen] AS [Kitchen       ],
  [GrpName] AS [GrpName       ],
  [Item] AS [Item          ],
  ROUND([KitchenStock], 2) AS [KitchenStock  ],
  [Unit] AS [Unit          ]
  FROM #Rpt
  ORDER BY [Kitchen], [GrpName], [Item];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_KitchenStockSummary   (report: kitchenstksumm)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_KitchenStockSummary','P') IS NOT NULL DROP PROCEDURE dbo.usp_KitchenStockSummary;
GO
CREATE PROCEDURE dbo.usp_KitchenStockSummary 
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [Item] NVARCHAR(100),
    [IssuedToKitchen] DECIMAL(18,2),
    [KitchenStockValue] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.Item, SUM(ISNULL(S.QtyIss,0)) AS IssuedToKitchen,
  SUM(ISNULL(S.QtyIss,0))*MAX(ISNULL(S.Rate,0)) AS KitchenStockValue
  FROM Stock S
  WHERE ISNULL(S.QtyIss,0) > 0
  GROUP BY S.Item
;

  SELECT
  [Item] AS [Item          ],
  ROUND([IssuedToKitchen], 2) AS [IssuedToKitche],
  ROUND([KitchenStockValue], 2) AS [KitchenStockVa]
  FROM #Rpt
  ORDER BY [KitchenStockValue] DESC;

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_ExcessConsumption   (report: excessconsumption)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_ExcessConsumption','P') IS NOT NULL DROP PROCEDURE dbo.usp_ExcessConsumption;
GO
CREATE PROCEDURE dbo.usp_ExcessConsumption 
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [Item] NVARCHAR(100),
    [TotalReceived] DECIMAL(18,2),
    [TotalIssued] DECIMAL(18,2),
    [Variance] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.Item, SUM(ISNULL(S.QtyRec,0)) AS TotalReceived,
  SUM(ISNULL(S.QtyIss,0)) AS TotalIssued,
  SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) AS Variance
  FROM Stock S
  GROUP BY S.Item
  HAVING SUM(ISNULL(S.QtyIss,0)) > SUM(ISNULL(S.QtyRec,0))
;

  SELECT
  [Item] AS [Item          ],
  ROUND([TotalReceived], 2) AS [TotalReceived ],
  ROUND([TotalIssued], 2) AS [TotalIssued   ],
  ROUND([Variance], 2) AS [Variance      ]
  FROM #Rpt
  ORDER BY [Variance];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_RestIssue   (report: restissue)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_RestIssue','P') IS NOT NULL DROP PROCEDURE dbo.usp_RestIssue;
GO
CREATE PROCEDURE dbo.usp_RestIssue @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [RestCode] NVARCHAR(100),
    [Item] NVARCHAR(100),
    [IssueQty] DECIMAL(18,2),
    [IssueValue] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.RestCode, S.Item, SUM(ISNULL(S.QtyIss,0)) AS IssueQty,
  SUM(ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0)) AS IssueValue
  FROM Stock S
  WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyIss,0) > 0
  GROUP BY S.RestCode, S.Item
;

  SELECT
  [RestCode] AS [RestCode      ],
  [Item] AS [Item          ],
  ROUND([IssueQty], 2) AS [IssueQty      ],
  ROUND([IssueValue], 2) AS [IssueValue    ]
  FROM #Rpt
  ORDER BY [RestCode], [IssueValue] DESC;

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_StoreIssueRegister   (report: storeissreg)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_StoreIssueRegister','P') IS NOT NULL DROP PROCEDURE dbo.usp_StoreIssueRegister;
GO
CREATE PROCEDURE dbo.usp_StoreIssueRegister @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [Vdate] DATE,
    [DocId] NVARCHAR(100),
    [Vtype] NVARCHAR(100),
    [Item] NVARCHAR(100),
    [QtyIss] DECIMAL(18,2),
    [Rate] DECIMAL(18,2),
    [Amount] DECIMAL(18,2),
    [RestCode] NVARCHAR(100),
    [GodownCode] NVARCHAR(100)
  );

  INSERT INTO #Rpt
  SELECT S.Vdate, S.DocId, S.Vtype, S.Item, S.QtyIss, S.Rate, S.Amount, S.RestCode, S.GodownCode
  FROM Stock S
  WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyIss,0) > 0
;

  SELECT
  [Vdate] AS [Vdate         ],
  [DocId] AS [DocId         ],
  [Vtype] AS [Vtype         ],
  [Item] AS [Item          ],
  ROUND([QtyIss], 2) AS [QtyIss        ],
  ROUND([Rate], 2) AS [Rate          ],
  ROUND([Amount], 2) AS [Amount        ],
  [RestCode] AS [RestCode      ],
  [GodownCode] AS [GodownCode    ]
  FROM #Rpt
  ORDER BY [Vdate], [DocId];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_StoreIssueReport   (report: storeissuereport)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_StoreIssueReport','P') IS NOT NULL DROP PROCEDURE dbo.usp_StoreIssueReport;
GO
CREATE PROCEDURE dbo.usp_StoreIssueReport @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [Item] NVARCHAR(100),
    [Vdate] DATE,
    [DocId] NVARCHAR(100),
    [RestCode] NVARCHAR(100),
    [IssueQty] DECIMAL(18,2),
    [Rate] DECIMAL(18,2),
    [IssueValue] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.Item, S.Vdate, S.DocId, S.RestCode, S.QtyIss AS IssueQty, S.Rate,
  ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0) AS IssueValue
  FROM Stock S
  WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyIss,0) > 0
;

  SELECT
  [Item] AS [Item          ],
  [Vdate] AS [Vdate         ],
  [DocId] AS [DocId         ],
  [RestCode] AS [RestCode      ],
  ROUND([IssueQty], 2) AS [IssueQty      ],
  ROUND([Rate], 2) AS [Rate          ],
  ROUND([IssueValue], 2) AS [IssueValue    ]
  FROM #Rpt
  ORDER BY [Item], [Vdate];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_DailyStoreIssue   (report: dailystoreissrpt)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_DailyStoreIssue','P') IS NOT NULL DROP PROCEDURE dbo.usp_DailyStoreIssue;
GO
CREATE PROCEDURE dbo.usp_DailyStoreIssue @D DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [Item] NVARCHAR(100),
    [DayIssueQty] DECIMAL(18,2),
    [DayIssueValue] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.Item, SUM(ISNULL(S.QtyIss,0)) AS DayIssueQty,
  SUM(ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0)) AS DayIssueValue
  FROM Stock S
  WHERE CAST(S.Vdate AS DATE) = @D AND ISNULL(S.QtyIss,0) > 0
  GROUP BY S.Item
;

  SELECT
  [Item] AS [Item          ],
  ROUND([DayIssueQty], 2) AS [DayIssueQty   ],
  ROUND([DayIssueValue], 2) AS [DayIssueValue ]
  FROM #Rpt
  ORDER BY [DayIssueValue] DESC;

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_IssueRegister   (report: issuereg)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_IssueRegister','P') IS NOT NULL DROP PROCEDURE dbo.usp_IssueRegister;
GO
CREATE PROCEDURE dbo.usp_IssueRegister @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [Vdate] DATE,
    [Vtype] NVARCHAR(100),
    [VNo] INT,
    [DocId] NVARCHAR(100),
    [Item] NVARCHAR(100),
    [QtyIss] DECIMAL(18,2),
    [Unit] NVARCHAR(100),
    [Rate] DECIMAL(18,2),
    [Value] DECIMAL(18,2),
    [RestCode] NVARCHAR(100),
    [U_Name] NVARCHAR(100)
  );

  INSERT INTO #Rpt
  SELECT S.Vdate, S.Vtype, S.VNo, S.DocId, S.Item, S.QtyIss, S.Unit, S.Rate,
  ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0) AS Value, S.RestCode, S.U_Name
  FROM Stock S
  WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyIss,0) > 0
;

  SELECT
  [Vdate] AS [Vdate         ],
  [Vtype] AS [Vtype         ],
  [VNo] AS [VNo           ],
  [DocId] AS [DocId         ],
  [Item] AS [Item          ],
  ROUND([QtyIss], 2) AS [QtyIss        ],
  [Unit] AS [Unit          ],
  ROUND([Rate], 2) AS [Rate          ],
  ROUND([Value], 2) AS [Value         ],
  [RestCode] AS [RestCode      ],
  [U_Name] AS [U_Name        ]
  FROM #Rpt
  ORDER BY [Vdate], [DocId];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_IssueRegisterByDept   (report: issueregister)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_IssueRegisterByDept','P') IS NOT NULL DROP PROCEDURE dbo.usp_IssueRegisterByDept;
GO
CREATE PROCEDURE dbo.usp_IssueRegisterByDept @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [DepartCode] NVARCHAR(100),
    [Item] NVARCHAR(100),
    [IssueQty] DECIMAL(18,2),
    [Value] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.DepartCode, S.Item, SUM(ISNULL(S.QtyIss,0)) AS IssueQty,
  SUM(ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0)) AS Value
  FROM Stock S
  WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyIss,0) > 0
  GROUP BY S.DepartCode, S.Item
;

  SELECT
  [DepartCode] AS [DepartCode    ],
  [Item] AS [Item          ],
  ROUND([IssueQty], 2) AS [IssueQty      ],
  ROUND([Value], 2) AS [Value         ]
  FROM #Rpt
  ORDER BY [DepartCode], [Item];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_ABCAnalysis   (report: abcanalysis)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_ABCAnalysis','P') IS NOT NULL DROP PROCEDURE dbo.usp_ABCAnalysis;
GO
CREATE PROCEDURE dbo.usp_ABCAnalysis 
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [Item] NVARCHAR(100),
    [ConsValue] DECIMAL(18,2),
    [CumPct] DECIMAL(18,2),
    [Class] NVARCHAR(100)
  );

  INSERT INTO #Rpt
  WITH Cons AS (
  SELECT Item, SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0)) AS ConsValue
  FROM Stock GROUP BY Item
  )
  SELECT Item, ConsValue,
  SUM(ConsValue) OVER (ORDER BY ConsValue DESC)*100.0 / NULLIF(SUM(ConsValue) OVER (),0) AS CumPct,
  CASE WHEN SUM(ConsValue) OVER (ORDER BY ConsValue DESC)*100.0
  / NULLIF(SUM(ConsValue) OVER (),0) <= 70 THEN 'A'
  WHEN SUM(ConsValue) OVER (ORDER BY ConsValue DESC)*100.0
  / NULLIF(SUM(ConsValue) OVER (),0) <= 90 THEN 'B'
  ELSE 'C' END AS Class
  FROM Cons
;

  SELECT
  [Item] AS [Item          ],
  ROUND([ConsValue], 2) AS [ConsValue     ],
  ROUND([CumPct], 2) AS [CumPct        ],
  [Class] AS [Class         ]
  FROM #Rpt
  ORDER BY [ConsValue] DESC;

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_ABCAnalysisSale   (report: abcanalysissale)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_ABCAnalysisSale','P') IS NOT NULL DROP PROCEDURE dbo.usp_ABCAnalysisSale;
GO
CREATE PROCEDURE dbo.usp_ABCAnalysisSale 
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [Item] NVARCHAR(100),
    [ConsValue] DECIMAL(18,2),
    [Class] NVARCHAR(100)
  );

  INSERT INTO #Rpt
  WITH Cons AS (
  SELECT Item, SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0)) AS ConsValue
  FROM Stock GROUP BY Item
  )
  SELECT TOP 100 PERCENT Item, ConsValue,
  CASE WHEN SUM(ConsValue) OVER (ORDER BY ConsValue DESC)*100.0
  / NULLIF(SUM(ConsValue) OVER (),0) <= 80 THEN 'A' ELSE 'B/C' END AS Class
  FROM Cons
;

  SELECT
  [Item] AS [Item          ],
  ROUND([ConsValue], 2) AS [ConsValue     ],
  [Class] AS [Class         ]
  FROM #Rpt
  ORDER BY [ConsValue] DESC;

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_PurchaseBill   (report: purchbill)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_PurchaseBill','P') IS NOT NULL DROP PROCEDURE dbo.usp_PurchaseBill;
GO
CREATE PROCEDURE dbo.usp_PurchaseBill @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [Vdate] DATE,
    [DocId] NVARCHAR(100),
    [VNo] INT,
    [PartyCode] NVARCHAR(100),
    [Item] NVARCHAR(100),
    [ChalQty] DECIMAL(18,2),
    [RecdQty] DECIMAL(18,2),
    [AccQty] DECIMAL(18,2),
    [RejQty] DECIMAL(18,2),
    [RecdUnit] NVARCHAR(100),
    [Rate] DECIMAL(18,2),
    [BillValue] DECIMAL(18,2),
    [TaxAmt] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.Vdate, S.DocId, S.VNo, S.PartyCode, S.Item, S.ChalQty, S.RecdQty, S.AccQty, S.RejQty,
  S.RecdUnit, S.Rate, ISNULL(S.RecdQty,0)*ISNULL(S.Rate,0) AS BillValue, S.TaxAmt
  FROM Stock S
  WHERE S.Vdate BETWEEN @F AND @T AND (ISNULL(S.RecdQty,0) > 0 OR ISNULL(S.ChalQty,0) > 0)
;

  SELECT
  [Vdate] AS [Vdate         ],
  [DocId] AS [DocId         ],
  [VNo] AS [VNo           ],
  [PartyCode] AS [PartyCode     ],
  [Item] AS [Item          ],
  ROUND([ChalQty], 2) AS [ChalQty       ],
  ROUND([RecdQty], 2) AS [RecdQty       ],
  ROUND([AccQty], 2) AS [AccQty        ],
  ROUND([RejQty], 2) AS [RejQty        ],
  [RecdUnit] AS [RecdUnit      ],
  ROUND([Rate], 2) AS [Rate          ],
  ROUND([BillValue], 2) AS [BillValue     ],
  ROUND([TaxAmt], 2) AS [TaxAmt        ]
  FROM #Rpt
  ORDER BY [Vdate], [DocId];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_PurchaseOrder   (report: purchorder)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_PurchaseOrder','P') IS NOT NULL DROP PROCEDURE dbo.usp_PurchaseOrder;
GO
CREATE PROCEDURE dbo.usp_PurchaseOrder @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [Vdate] DATE,
    [DocId] NVARCHAR(100),
    [Item] NVARCHAR(100),
    [OrderedQty] DECIMAL(18,2),
    [ReceivedQty] DECIMAL(18,2),
    [PendingQty] DECIMAL(18,2),
    [PartyCode] NVARCHAR(100)
  );

  INSERT INTO #Rpt
  SELECT S.Vdate, S.DocId, S.Item, S.ChalQty AS OrderedQty, S.RecdQty AS ReceivedQty,
  ISNULL(S.ChalQty,0)-ISNULL(S.RecdQty,0) AS PendingQty, S.PartyCode
  FROM Stock S
  WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.ChalQty,0) > 0
;

  SELECT
  [Vdate] AS [Vdate         ],
  [DocId] AS [DocId         ],
  [Item] AS [Item          ],
  ROUND([OrderedQty], 2) AS [OrderedQty    ],
  ROUND([ReceivedQty], 2) AS [ReceivedQty   ],
  ROUND([PendingQty], 2) AS [PendingQty    ],
  [PartyCode] AS [PartyCode     ]
  FROM #Rpt
  ORDER BY [Vdate], [DocId];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_PurchaseRegister   (report: purchasereg)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_PurchaseRegister','P') IS NOT NULL DROP PROCEDURE dbo.usp_PurchaseRegister;
GO
CREATE PROCEDURE dbo.usp_PurchaseRegister @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [Vdate] DATE,
    [DocId] NVARCHAR(100),
    [VNo] INT,
    [PartyCode] NVARCHAR(100),
    [Qty] DECIMAL(18,2),
    [Amount] DECIMAL(18,2),
    [TaxAmt] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.Vdate, S.DocId, S.VNo, S.PartyCode,
  SUM(ISNULL(S.QtyRec,0)) AS Qty,
  SUM(ISNULL(S.QtyRec,0)*ISNULL(S.Rate,0)) AS Amount,
  SUM(ISNULL(S.TaxAmt,0)) AS TaxAmt
  FROM Stock S
  WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyRec,0) > 0
  GROUP BY S.Vdate, S.DocId, S.VNo, S.PartyCode
;

  SELECT
  [Vdate] AS [Vdate         ],
  [DocId] AS [DocId         ],
  [VNo] AS [VNo           ],
  [PartyCode] AS [PartyCode     ],
  ROUND([Qty], 2) AS [Qty           ],
  ROUND([Amount], 2) AS [Amount        ],
  ROUND([TaxAmt], 2) AS [TaxAmt        ]
  FROM #Rpt
  ORDER BY [Vdate];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_PurchaseSummary   (report: purchasesumm)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_PurchaseSummary','P') IS NOT NULL DROP PROCEDURE dbo.usp_PurchaseSummary;
GO
CREATE PROCEDURE dbo.usp_PurchaseSummary @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [PartyCode] NVARCHAR(100),
    [Bills] INT,
    [PurchaseValue] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.PartyCode, COUNT(DISTINCT S.DocId) AS Bills,
  SUM(ISNULL(S.QtyRec,0)*ISNULL(S.Rate,0)) AS PurchaseValue
  FROM Stock S
  WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyRec,0) > 0
  GROUP BY S.PartyCode
;

  SELECT
  [PartyCode] AS [PartyCode     ],
  [Bills] AS [Bills         ],
  ROUND([PurchaseValue], 2) AS [PurchaseValue ]
  FROM #Rpt
  ORDER BY [PurchaseValue] DESC;

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_PurchaseLedger   (report: purchaseledger)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_PurchaseLedger','P') IS NOT NULL DROP PROCEDURE dbo.usp_PurchaseLedger;
GO
CREATE PROCEDURE dbo.usp_PurchaseLedger @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [PartyCode] NVARCHAR(100),
    [Item] NVARCHAR(100),
    [Vdate] DATE,
    [DocId] NVARCHAR(100),
    [QtyRec] DECIMAL(18,2),
    [Rate] DECIMAL(18,2),
    [Amount] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.PartyCode, S.Item, S.Vdate, S.DocId, S.QtyRec, S.Rate,
  ISNULL(S.QtyRec,0)*ISNULL(S.Rate,0) AS Amount
  FROM Stock S
  WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyRec,0) > 0
;

  SELECT
  [PartyCode] AS [PartyCode     ],
  [Item] AS [Item          ],
  [Vdate] AS [Vdate         ],
  [DocId] AS [DocId         ],
  ROUND([QtyRec], 2) AS [QtyRec        ],
  ROUND([Rate], 2) AS [Rate          ],
  ROUND([Amount], 2) AS [Amount        ]
  FROM #Rpt
  ORDER BY [PartyCode], [Vdate];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_CashCreditPurchase   (report: cashcreditpurch)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_CashCreditPurchase','P') IS NOT NULL DROP PROCEDURE dbo.usp_CashCreditPurchase;
GO
CREATE PROCEDURE dbo.usp_CashCreditPurchase @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [PartyCode] NVARCHAR(100),
    [Vdate] DATE,
    [DocId] NVARCHAR(100),
    [Amount] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.PartyCode, S.Vdate, S.DocId, SUM(ISNULL(S.QtyRec,0)*ISNULL(S.Rate,0)) AS Amount
  FROM Stock S
  WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyRec,0) > 0
  GROUP BY S.PartyCode, S.Vdate, S.DocId
;

  SELECT
  [PartyCode] AS [PartyCode     ],
  [Vdate] AS [Vdate         ],
  [DocId] AS [DocId         ],
  ROUND([Amount], 2) AS [Amount        ]
  FROM #Rpt
  ORDER BY [PartyCode], [Vdate];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_IndentRegister   (report: indentreg)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_IndentRegister','P') IS NOT NULL DROP PROCEDURE dbo.usp_IndentRegister;
GO
CREATE PROCEDURE dbo.usp_IndentRegister @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [IndentDocId] NVARCHAR(100),
    [IndentSNo] INT,
    [Vdate] DATE,
    [DocId] NVARCHAR(100),
    [Item] NVARCHAR(100),
    [QtyIss] DECIMAL(18,2),
    [Value] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.IndentDocId, S.IndentSNo, S.Vdate, S.DocId, S.Item, S.QtyIss,
  ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0) AS Value
  FROM Stock S
  WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.IndentDocId,'') <> '' AND ISNULL(S.QtyIss,0) > 0
;

  SELECT
  [IndentDocId] AS [IndentDocId   ],
  [IndentSNo] AS [IndentSNo     ],
  [Vdate] AS [Vdate         ],
  [DocId] AS [DocId         ],
  [Item] AS [Item          ],
  ROUND([QtyIss], 2) AS [QtyIss        ],
  ROUND([Value], 2) AS [Value         ]
  FROM #Rpt
  ORDER BY [IndentDocId];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_FoodCost   (report: foodcost)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_FoodCost','P') IS NOT NULL DROP PROCEDURE dbo.usp_FoodCost;
GO
CREATE PROCEDURE dbo.usp_FoodCost @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [Head] NVARCHAR(100),
    [Amount] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT 'Consumption' AS Head, SUM(ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0)) AS Amount
  FROM Stock S WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyIss,0) > 0
  UNION ALL
  SELECT 'Sales (Food)', SUM(L.NetAmt) FROM Sale1 L WHERE L.Vdate BETWEEN @F AND @T
  UNION ALL
  SELECT 'Sales Tax Amount', SUM(S2.TaxAmt) FROM Sale2 S2 WHERE S2.Vdate BETWEEN @F AND @T;

  SELECT
  [Head] AS [Head          ],
  ROUND([Amount], 2) AS [Amount        ]
  FROM #Rpt
  ORDER BY [Head];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_FBCostStatement   (report: fbcoststatement)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_FBCostStatement','P') IS NOT NULL DROP PROCEDURE dbo.usp_FBCostStatement;
GO
CREATE PROCEDURE dbo.usp_FBCostStatement @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [RestCode] NVARCHAR(100),
    [Consumption] DECIMAL(18,2),
    [Sales] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT R.RestCode,
  (SELECT SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0)) FROM Stock WHERE Vdate BETWEEN @F AND @T AND RestCode = R.RestCode) AS Consumption,
  (SELECT SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN @F AND @T AND RestCode = R.RestCode) AS Sales
  FROM (SELECT DISTINCT RestCode FROM Sale1 WHERE Vdate BETWEEN @F AND @T) R
;

  SELECT
  [RestCode] AS [RestCode      ],
  ROUND([Consumption], 2) AS [Consumption   ],
  ROUND([Sales], 2) AS [Sales         ]
  FROM #Rpt
  ORDER BY [RestCode];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_ProductionReport   (report: productionreport)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_ProductionReport','P') IS NOT NULL DROP PROCEDURE dbo.usp_ProductionReport;
GO
CREATE PROCEDURE dbo.usp_ProductionReport @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [Item] NVARCHAR(100),
    [QtyUsed] DECIMAL(18,2),
    [ProductionCost] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.Item, SUM(ISNULL(S.QtyIss,0)) AS QtyUsed,
  SUM(ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0)) AS ProductionCost
  FROM Stock S
  WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyIss,0) > 0 AND ISNULL(S.DepartCode,'') <> ''
  GROUP BY S.Item
;

  SELECT
  [Item] AS [Item          ],
  ROUND([QtyUsed], 2) AS [QtyUsed       ],
  ROUND([ProductionCost], 2) AS [ProductionCost]
  FROM #Rpt
  ORDER BY [ProductionCost] DESC;

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_LiquorSaleReport   (report: liquorsalerep)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_LiquorSaleReport','P') IS NOT NULL DROP PROCEDURE dbo.usp_LiquorSaleReport;
GO
CREATE PROCEDURE dbo.usp_LiquorSaleReport @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [Item] NVARCHAR(100),
    [QtySold] DECIMAL(18,2),
    [SaleValue] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.Item, SUM(ISNULL(S.QtyIss,0)) AS QtySold,
  SUM(ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0)) AS SaleValue
  FROM Stock S
  WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyIss,0) > 0
  AND (S.Item LIKE 'L%' OR S.Item LIKE 'B%' OR S.Item LIKE 'W%')  -- apne liquor codes yahan
  GROUP BY S.Item
;

  SELECT
  [Item] AS [Item          ],
  ROUND([QtySold], 2) AS [QtySold       ],
  ROUND([SaleValue], 2) AS [SaleValue     ]
  FROM #Rpt
  ORDER BY [SaleValue] DESC;

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_CostAnalysis   (report: costanalysis)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_CostAnalysis','P') IS NOT NULL DROP PROCEDURE dbo.usp_CostAnalysis;
GO
CREATE PROCEDURE dbo.usp_CostAnalysis @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [Item] NVARCHAR(100),
    [Qty] DECIMAL(18,2),
    [CostValue] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.Item, SUM(ISNULL(S.QtyIss,0)) AS Qty, SUM(ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0)) AS CostValue
  FROM Stock S
  WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyIss,0) > 0
  GROUP BY S.Item
;

  SELECT
  [Item] AS [Item          ],
  ROUND([Qty], 2) AS [Qty           ],
  ROUND([CostValue], 2) AS [CostValue     ]
  FROM #Rpt
  ORDER BY [CostValue] DESC;

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_RStockRegister   (report: rstockregister)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_RStockRegister','P') IS NOT NULL DROP PROCEDURE dbo.usp_RStockRegister;
GO
CREATE PROCEDURE dbo.usp_RStockRegister @F DATE, @T DATE
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [RestCode] NVARCHAR(100),
    [Item] NVARCHAR(100),
    [OpeningQty] DECIMAL(18,2),
    [ReceiptQty] DECIMAL(18,2),
    [IssueQty] DECIMAL(18,2),
    [ClosingQty] DECIMAL(18,2),
    [ClosingValue] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.RestCode, S.Item,
  SUM(CASE WHEN S.Vdate < @F THEN ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0) ELSE 0 END) AS OpeningQty,
  SUM(CASE WHEN S.Vdate BETWEEN @F AND @T THEN ISNULL(S.QtyRec,0) ELSE 0 END) AS ReceiptQty,
  SUM(CASE WHEN S.Vdate BETWEEN @F AND @T THEN ISNULL(S.QtyIss,0) ELSE 0 END) AS IssueQty,
  SUM(CASE WHEN S.Vdate <= @T THEN ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0) ELSE 0 END) AS ClosingQty,
  SUM(CASE WHEN S.Vdate <= @T THEN ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0) ELSE 0 END) * MAX(ISNULL(S.Rate,0)) AS ClosingValue
  FROM Stock S
  WHERE ISNULL(S.RestCode,'') <> ''
  GROUP BY S.RestCode, S.Item
;

  SELECT
  [RestCode] AS [RestCode      ],
  [Item] AS [Item          ],
  ROUND([OpeningQty], 2) AS [OpeningQty    ],
  ROUND([ReceiptQty], 2) AS [ReceiptQty    ],
  ROUND([IssueQty], 2) AS [IssueQty      ],
  ROUND([ClosingQty], 2) AS [ClosingQty    ],
  ROUND([ClosingValue], 2) AS [ClosingValue  ]
  FROM #Rpt
  ORDER BY [RestCode], [Item];

  DROP TABLE #Rpt;
END
GO

-- ----------------------------------------------------------------------------
-- usp_RStockSummary   (report: rstocksummary)
-- ----------------------------------------------------------------------------
IF OBJECT_ID('dbo.usp_RStockSummary','P') IS NOT NULL DROP PROCEDURE dbo.usp_RStockSummary;
GO
CREATE PROCEDURE dbo.usp_RStockSummary 
AS
BEGIN
  SET NOCOUNT ON;
  SET XACT_ABORT ON;

  IF OBJECT_ID('tempdb..#Rpt') IS NOT NULL DROP TABLE #Rpt;
  CREATE TABLE #Rpt (
    [RestCode] NVARCHAR(100),
    [Item] NVARCHAR(100),
    [BalQty] DECIMAL(18,2),
    [StockValue] DECIMAL(18,2)
  );

  INSERT INTO #Rpt
  SELECT S.RestCode, S.Item, SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) AS BalQty,
  SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) * MAX(ISNULL(S.Rate,0)) AS StockValue
  FROM Stock S
  WHERE ISNULL(S.RestCode,'') <> ''
  GROUP BY S.RestCode, S.Item
;

  SELECT
  [RestCode] AS [RestCode      ],
  [Item] AS [Item          ],
  ROUND([BalQty], 2) AS [BalQty        ],
  ROUND([StockValue], 2) AS [StockValue    ]
  FROM #Rpt
  ORDER BY [RestCode], [StockValue] DESC;

  DROP TABLE #Rpt;
END
GO

==============================================================================
 EXECUTION EXAMPLES
==============================================================================
EXEC dbo.usp_StockRegister        '2016-09-01','2016-09-30';
EXEC dbo.usp_StockInHand;
EXEC dbo.usp_ABCAnalysis;
EXEC dbo.usp_DailyStoreIssue      '2016-09-15';
EXEC dbo.usp_PurchaseRegister     '2016-09-01','2016-09-30';
==============================================================================
