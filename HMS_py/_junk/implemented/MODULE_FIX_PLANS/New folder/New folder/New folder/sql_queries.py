# -*- coding: utf-8 -*-
"""
visahl.sql (Stock, Sale1, Sale2, SunTran, PayCharge) par chalne wali
ready-to-run SQL queries - 31 Stock/Inventory reports ke liye.
Sirf in 5 tables ka use hua hai jo dump me maujood hain.
Date filters me '2016-09-01' example dates hain - apni dates daal do.
SQL Server (T-SQL) syntax.
"""

SQL_QUERIES = {
# GrpName helper (ItemMast dump me nahi hai, isliye Item-code prefix se derive):
# har group-by query me yehi CASE SELECT + GROUP BY dono me paste hota hai.
# Real DB me: JOIN ItemMast IM ON IM.ItemCode = S.Item, ORDER BY IM.GrpName, ...
# Prefixes: RICE%, OIL%, WHKY%, SUGR%, ATTA%, TEA%, WINE%, VODKA%, FRT%

"stockregister": """-- STOCK REGISTER: har item ka Opening / Purchase(Receipt) / Issue / Closing
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';

-- Sab movements (Purchase=QtyRec wale rows, Issue/Consumption=QtyIss wale rows)
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
ORDER BY GrpName, S.Item;""",

"stocksumm": """-- STOCK SUMMARY: item-wise qty + value (closing)
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
ORDER BY GrpName, StockValue DESC;""",

"stockregstore": """-- STORE-WISE STOCK REGISTER (GodownCode = Store)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT S.GodownCode, S.Item,
       SUM(CASE WHEN S.Vdate < @F THEN ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0) ELSE 0 END) AS OpeningQty,
       SUM(CASE WHEN S.Vdate BETWEEN @F AND @T THEN ISNULL(S.QtyRec,0) ELSE 0 END) AS ReceiptQty,
       SUM(CASE WHEN S.Vdate BETWEEN @F AND @T THEN ISNULL(S.QtyIss,0) ELSE 0 END) AS IssueQty,
       SUM(CASE WHEN S.Vdate <= @T THEN ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0) ELSE 0 END) AS ClosingQty
FROM Stock S
WHERE S.GodownCode IS NOT NULL AND S.GodownCode <> ''
GROUP BY S.GodownCode, S.Item
ORDER BY S.GodownCode, S.Item;""",

"stocksummstore": """-- STORE-WISE STOCK SUMMARY
SELECT S.GodownCode, S.Item, SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) AS BalQty,
       SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) * MAX(ISNULL(S.Rate,0)) AS Value
FROM Stock S
WHERE ISNULL(S.GodownCode,'') <> ''
GROUP BY S.GodownCode, S.Item
ORDER BY S.GodownCode, S.Item;""",

"stockinhand": """-- STOCK IN HAND: abhi available stock (non-void rows), ItemGroup (GrpName) ke hisaab se grouped+ordered
-- NOTE: ItemMast dump me nahi hai, isliye GrpName Item-code prefix se derive ho raha hai
--       (real DB me: JOIN ItemMast IM ON IM.ItemCode = S.Item, ORDER BY IM.GrpName, S.Item)
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
ORDER BY GrpName, S.Item;""",
"stocksummaryp/sbasis": """-- STOCK SUMMARY P/S BASIS: item ka consumption vs uski sales value
SELECT S.Item,
       SUM(ISNULL(S.QtyIss,0)) AS ConsumedQty,
       SUM(ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0)) AS ConsumptionValue
FROM Stock S
GROUP BY S.Item
ORDER BY ConsumptionValue DESC;""",

"kitchenstkrep": """-- KITCHEN STOCK REPORT (Kitchen = RestCode/ItemRestCode se identify hota hai)
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
ORDER BY Kitchen, GrpName, S.Item;""",

"kitchenstksumm": """-- KITCHEN STOCK SUMMARY (sirf kitchen-side rows: jahan QtyIss hui)
SELECT S.Item, SUM(ISNULL(S.QtyIss,0)) AS IssuedToKitchen,
       SUM(ISNULL(S.QtyIss,0))*MAX(ISNULL(S.Rate,0)) AS KitchenStockValue
FROM Stock S
WHERE ISNULL(S.QtyIss,0) > 0
GROUP BY S.Item
ORDER BY KitchenStockValue DESC;""",

"excessconsumption": """-- EXCESS CONSUMPTION: jis item ki issue > receipt (variance)
SELECT S.Item, SUM(ISNULL(S.QtyRec,0)) AS TotalReceived,
       SUM(ISNULL(S.QtyIss,0)) AS TotalIssued,
       SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) AS Variance
FROM Stock S
GROUP BY S.Item
HAVING SUM(ISNULL(S.QtyIss,0)) > SUM(ISNULL(S.QtyRec,0))
ORDER BY Variance;""",

"restissue": """-- RESTAURANT-WISE ISSUE REPORT (kis restaurant ko kya issue hua)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT S.RestCode, S.Item, SUM(ISNULL(S.QtyIss,0)) AS IssueQty,
       SUM(ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0)) AS IssueValue
FROM Stock S
WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyIss,0) > 0
GROUP BY S.RestCode, S.Item
ORDER BY S.RestCode, IssueValue DESC;""",

"storeissreg": """-- STORE ISSUE REGISTER (store se kitchen/restaurant transfer, date-wise)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT S.Vdate, S.DocId, S.Vtype, S.Item, S.QtyIss, S.Rate, S.Amount, S.RestCode, S.GodownCode
FROM Stock S
WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyIss,0) > 0
ORDER BY S.Vdate, S.DocId;""",

"storeissuereport": """-- STORE ISSUE REPORT (item-wise detailed with value)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT S.Item, S.Vdate, S.DocId, S.RestCode, S.QtyIss AS IssueQty, S.Rate,
       ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0) AS IssueValue
FROM Stock S
WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyIss,0) > 0
ORDER BY S.Item, S.Vdate;""",

"dailystoreissrpt": """-- DAILY STORE ISSUE REPORT (ek din ka, hour/shift-wise)
DECLARE @D DATE='2016-09-06';
SELECT S.Item, SUM(ISNULL(S.QtyIss,0)) AS DayIssueQty,
       SUM(ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0)) AS DayIssueValue
FROM Stock S
WHERE CAST(S.Vdate AS DATE) = @D AND ISNULL(S.QtyIss,0) > 0
GROUP BY S.Item
ORDER BY DayIssueValue DESC;""",

"issuereg": """-- ITEM ISSUE REGISTER (saari issue entries, doc-wise)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT S.Vdate, S.Vtype, S.VNo, S.DocId, S.Item, S.QtyIss, S.Unit, S.Rate,
       ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0) AS Value, S.RestCode, S.U_Name
FROM Stock S
WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyIss,0) > 0
ORDER BY S.Vdate, S.DocId, S.Sno;""",

"issueregister": """-- ISSUE REGISTER (detailed, department-wise)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT S.DepartCode, S.Item, SUM(ISNULL(S.QtyIss,0)) AS IssueQty,
       SUM(ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0)) AS Value
FROM Stock S
WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyIss,0) > 0
GROUP BY S.DepartCode, S.Item
ORDER BY S.DepartCode, S.Item;""",

"abcanalysis": """-- ABC ANALYSIS: consumption value ke hisaab se A/B/C class
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
ORDER BY ConsValue DESC;""",

"abcanalysissale": """-- ABC ANALYSIS (SALE BASIS): Sale2 ke tax-value se item class nahi ban sakta
-- (Sale2 me item detail nahi hai), isliye stock consumption value use kiya + Sale total context
WITH Cons AS (
  SELECT Item, SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0)) AS ConsValue
  FROM Stock GROUP BY Item
)
SELECT TOP 100 PERCENT Item, ConsValue,
       CASE WHEN SUM(ConsValue) OVER (ORDER BY ConsValue DESC)*100.0
            / NULLIF(SUM(ConsValue) OVER (),0) <= 80 THEN 'A' ELSE 'B/C' END AS Class
FROM Cons ORDER BY ConsValue DESC;""",

"purchbill": """-- PURCHASE BILL REPORT (receipt entries: ChalQty/RecdQty/AccQty/RejQty ke saath)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT S.Vdate, S.DocId, S.VNo, S.PartyCode, S.Item, S.ChalQty, S.RecdQty, S.AccQty, S.RejQty,
       S.RecdUnit, S.Rate, ISNULL(S.RecdQty,0)*ISNULL(S.Rate,0) AS BillValue, S.TaxAmt
FROM Stock S
WHERE S.Vdate BETWEEN @F AND @T AND (ISNULL(S.RecdQty,0) > 0 OR ISNULL(S.ChalQty,0) > 0)
ORDER BY S.Vdate, S.DocId;""",

"purchorder": """-- PURCHASE ORDER REPORT (indent ke against pending/received)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT S.Vdate, S.DocId, S.Item, S.ChalQty AS OrderedQty, S.RecdQty AS ReceivedQty,
       ISNULL(S.ChalQty,0)-ISNULL(S.RecdQty,0) AS PendingQty, S.PartyCode
FROM Stock S
WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.ChalQty,0) > 0
ORDER BY S.Vdate, S.DocId;""",

"purchasereg": """-- PURCHASE REGISTER (date-wise purchases)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT S.Vdate, S.DocId, S.VNo, S.PartyCode,
       SUM(ISNULL(S.QtyRec,0)) AS Qty,
       SUM(ISNULL(S.QtyRec,0)*ISNULL(S.Rate,0)) AS Amount,
       SUM(ISNULL(S.TaxAmt,0)) AS TaxAmt
FROM Stock S
WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyRec,0) > 0
GROUP BY S.Vdate, S.DocId, S.VNo, S.PartyCode
ORDER BY S.Vdate;""",

"purchasesumm": """-- PURCHASE SUMMARY (party-wise)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT S.PartyCode, COUNT(DISTINCT S.DocId) AS Bills,
       SUM(ISNULL(S.QtyRec,0)*ISNULL(S.Rate,0)) AS PurchaseValue
FROM Stock S
WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyRec,0) > 0
GROUP BY S.PartyCode
ORDER BY PurchaseValue DESC;""",

"purchaseledger": """-- PURCHASE LEDGER (party + item-wise detail)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT S.PartyCode, S.Item, S.Vdate, S.DocId, S.QtyRec, S.Rate,
       ISNULL(S.QtyRec,0)*ISNULL(S.Rate,0) AS Amount
FROM Stock S
WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyRec,0) > 0
ORDER BY S.PartyCode, S.Vdate;""",

"cashcreditpurch": """-- CASH/CREDIT PURCHASE (party code pattern se - adjust karo apne codes se)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT S.PartyCode, S.Vdate, S.DocId, SUM(ISNULL(S.QtyRec,0)*ISNULL(S.Rate,0)) AS Amount
FROM Stock S
WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyRec,0) > 0
GROUP BY S.PartyCode, S.Vdate, S.DocId
ORDER BY S.PartyCode, S.Vdate;""",

"indentreg": """-- INDENT REGISTER (IndentDocId ke against issue - kitchen indent tracking)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT S.IndentDocId, S.IndentSNo, S.Vdate, S.DocId, S.Item, S.QtyIss,
       ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0) AS Value
FROM Stock S
WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.IndentDocId,'') <> '' AND ISNULL(S.QtyIss,0) > 0
ORDER BY S.IndentDocId;""",

"foodcost": """-- FOOD COST: consumption vs sales (same period)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT 'Consumption' AS Head, SUM(ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0)) AS Amount
FROM Stock S WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyIss,0) > 0
UNION ALL
SELECT 'Sales (Food)', SUM(L.NetAmt) FROM Sale1 L WHERE L.Vdate BETWEEN @F AND @T
UNION ALL
SELECT 'Sales Tax Amount', SUM(S2.TaxAmt) FROM Sale2 S2 WHERE S2.Vdate BETWEEN @F AND @T;""",

"fbcoststatement": """-- F&B COST STATEMENT (restaurant-wise: consumption vs sale)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT R.RestCode,
       (SELECT SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0)) FROM Stock WHERE Vdate BETWEEN @F AND @T AND RestCode = R.RestCode) AS Consumption,
       (SELECT SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN @F AND @T AND RestCode = R.RestCode) AS Sales
FROM (SELECT DISTINCT RestCode FROM Sale1 WHERE Vdate BETWEEN @F AND @T) R
ORDER BY R.RestCode;""",

"productionreport": """-- PRODUCTION REPORT (finished goods: jo items issue hue production ko)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT S.Item, SUM(ISNULL(S.QtyIss,0)) AS QtyUsed,
       SUM(ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0)) AS ProductionCost
FROM Stock S
WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyIss,0) > 0 AND ISNULL(S.DepartCode,'') <> ''
GROUP BY S.Item
ORDER BY ProductionCost DESC;""",

"liquorsalerep": """-- LIQUOR SALE REPORT (liquor items ki sale - Item prefix se filter, adjust karo)
-- NOTE: ItemMast dump me nahi hai, isliye item-code prefix se filter diya hai
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT S.Item, SUM(ISNULL(S.QtyIss,0)) AS QtySold,
       SUM(ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0)) AS SaleValue
FROM Stock S
WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyIss,0) > 0
  AND (S.Item LIKE 'L%' OR S.Item LIKE 'B%' OR S.Item LIKE 'W%')  -- apne liquor codes yahan
GROUP BY S.Item
ORDER BY SaleValue DESC;""",

"costanalysis": """-- COST ANALYSIS: item-wise consumption value vs sales total
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT S.Item, SUM(ISNULL(S.QtyIss,0)) AS Qty, SUM(ISNULL(S.QtyIss,0)*ISNULL(S.Rate,0)) AS CostValue
FROM Stock S
WHERE S.Vdate BETWEEN @F AND @T AND ISNULL(S.QtyIss,0) > 0
GROUP BY S.Item
ORDER BY CostValue DESC;""",

"rstockregister": """-- R-STOCK REGISTER (Restaurant-wise stock register - Rest_Click menu se)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT S.RestCode, S.Item,
       SUM(CASE WHEN S.Vdate < @F THEN ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0) ELSE 0 END) AS OpeningQty,
       SUM(CASE WHEN S.Vdate BETWEEN @F AND @T THEN ISNULL(S.QtyRec,0) ELSE 0 END) AS ReceiptQty,
       SUM(CASE WHEN S.Vdate BETWEEN @F AND @T THEN ISNULL(S.QtyIss,0) ELSE 0 END) AS IssueQty,
       SUM(CASE WHEN S.Vdate <= @T THEN ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0) ELSE 0 END) AS ClosingQty,
       SUM(CASE WHEN S.Vdate <= @T THEN ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0) ELSE 0 END) * MAX(ISNULL(S.Rate,0)) AS ClosingValue
FROM Stock S
WHERE ISNULL(S.RestCode,'') <> ''
GROUP BY S.RestCode, S.Item
ORDER BY S.RestCode, S.Item;""",

"rstocksummary": """-- R-STOCK SUMMARY (Restaurant-wise summary with value)
SELECT S.RestCode, S.Item, SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) AS BalQty,
       SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) * MAX(ISNULL(S.Rate,0)) AS StockValue
FROM Stock S
WHERE ISNULL(S.RestCode,'') <> ''
GROUP BY S.RestCode, S.Item
ORDER BY S.RestCode, StockValue DESC;""",
}

# Non-stock categories ke liye generic query templates
GENERIC_QUERIES = {
"SALES / POS": """-- SALES DATA (Sale1/Sale2/PayCharge se)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT L.Vdate, L.DocId, L.Vtype, L.RestCode, L.NetAmt, L.Total, L.Tax, L.CGST, L.SGST
FROM Sale1 L WHERE L.Vdate BETWEEN @F AND @T ORDER BY L.Vdate, L.DocId;""",
"TAX / GST / VAT": """-- TAX DATA (Sale2 tax-slabs + Sale1 CGST/SGST/IGST)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT S2.Vdate, S2.TaxCode, S2.BaseValue, S2.TaxPer, S2.TaxAmt,
       L.CGST, L.SGST, L.IGST
FROM Sale2 S2 JOIN Sale1 L ON L.DocId = S2.DocId
WHERE S2.Vdate BETWEEN @F AND @T ORDER BY S2.Vdate;""",
"ACCOUNTS / FINANCE": """-- ACCOUNTS DATA (SunTran ledger + PayCharge payments)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT T.Vdate, T.DocId, T.Vtype, T.PartyCode, T.SunCode, T.Amount, T.BaseAmount
FROM SunTran T WHERE T.Vdate BETWEEN @F AND @T ORDER BY T.Vdate;""",
"FRONT OFFICE / GUEST": """-- FRONT OFFICE DATA (PayCharge folio charges, SunTran room revenue)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT P.Vdate, P.FolioNo, P.RoomNo, P.PayCode, P.AmtDr, P.AmtCr, P.Bill_No
FROM PayCharge P WHERE P.Vdate BETWEEN @F AND @T ORDER BY P.Vdate;""",
"OTHER / GENERAL": """-- GENERAL LEDGER DATA (SunTran)
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT T.Vdate, T.DocId, T.SunCode, T.Amount FROM SunTran T
WHERE T.Vdate BETWEEN @F AND @T ORDER BY T.Vdate;""",
}
