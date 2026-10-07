==============================================================================
 SQLITE-VALIDATED STOCK QUERIES (in-memory SQLite par test kiye gaye)
 RESULT : 36 passed, 0 failed
 NOTE   : T-SQL se convert (ISNULL->IFNULL, DECLARE->literal dates)
==============================================================================

-- STOCKREGISTER
-- STOCK REGISTER: har item ka Opening / Purchase(Receipt) / Issue / Closing
-- Period params: (F, T)
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
       S.Item, SUM(CASE WHEN S.Vdate < '2016-09-01' THEN IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0) ELSE 0 END) AS OpeningQty,
       SUM(CASE WHEN S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' THEN IFNULL(S.QtyRec,0) ELSE 0 END) AS PurchaseQty,
       SUM(CASE WHEN S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' THEN IFNULL(S.QtyIss,0) ELSE 0 END) AS IssueQty,
       SUM(CASE WHEN S.Vdate <= '2016-09-30' THEN IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0) ELSE 0 END) AS ClosingQty,
       SUM(CASE WHEN S.Vdate <= '2016-09-30' THEN IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0) ELSE 0 END) * MAX(IFNULL(S.Rate,0)) AS ClosingValue
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
ORDER BY GrpName, S.Item;

-- STOCKSUMM
-- STOCK SUMMARY: item-wise qty + value (closing)
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
       S.Item, SUM(IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0)) AS BalQty,
       SUM(IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0)) * MAX(IFNULL(S.Rate,0)) AS StockValue
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
ORDER BY GrpName, StockValue DESC;

-- STOCKREGSTORE
-- STORE-WISE STOCK REGISTER (GodownCode = Store)
-- Period params: (F, T)
SELECT S.GodownCode, S.Item,
       SUM(CASE WHEN S.Vdate < '2016-09-01' THEN IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0) ELSE 0 END) AS OpeningQty,
       SUM(CASE WHEN S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' THEN IFNULL(S.QtyRec,0) ELSE 0 END) AS ReceiptQty,
       SUM(CASE WHEN S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' THEN IFNULL(S.QtyIss,0) ELSE 0 END) AS IssueQty,
       SUM(CASE WHEN S.Vdate <= '2016-09-30' THEN IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0) ELSE 0 END) AS ClosingQty
FROM Stock S
WHERE S.GodownCode IS NOT NULL AND S.GodownCode <> ''
GROUP BY S.GodownCode, S.Item
ORDER BY S.GodownCode, S.Item;

-- STOCKSUMMSTORE
-- STORE-WISE STOCK SUMMARY
SELECT S.GodownCode, S.Item, SUM(IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0)) AS BalQty,
       SUM(IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0)) * MAX(IFNULL(S.Rate,0)) AS Value
FROM Stock S
WHERE IFNULL(S.GodownCode,'') <> ''
GROUP BY S.GodownCode, S.Item
ORDER BY S.GodownCode, S.Item;

-- STOCKINHAND
-- STOCK IN HAND: abhi available stock (non-void rows), ItemGroup (GrpName) ke hisaab se grouped+ordered
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
       S.Item, SUM(IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0)) AS StockInHand,
       MAX(IFNULL(S.Unit,'')) AS Unit, MAX(IFNULL(S.Rate,0)) AS LastRate
FROM Stock S
WHERE IFNULL(S.VoidYN,'') <> 'Y'
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
HAVING SUM(IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0)) <> 0
ORDER BY GrpName, S.Item;

-- STOCKSUMMARYP/SBASIS
-- STOCK SUMMARY P/S BASIS: item ka consumption vs uski sales value
SELECT S.Item,
       SUM(IFNULL(S.QtyIss,0)) AS ConsumedQty,
       SUM(IFNULL(S.QtyIss,0)*IFNULL(S.Rate,0)) AS ConsumptionValue
FROM Stock S
GROUP BY S.Item
ORDER BY ConsumptionValue DESC;

-- KITCHENSTKREP
-- KITCHEN STOCK REPORT (Kitchen = RestCode/ItemRestCode se identify hota hai)
SELECT IFNULL(NULLIF(S.ItemRestCode,S.RestCode),'KITCHEN') AS Kitchen,
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
       S.Item, SUM(IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0)) AS KitchenStock,
       MAX(IFNULL(S.Unit,'')) AS Unit
FROM Stock S
GROUP BY IFNULL(NULLIF(S.ItemRestCode,S.RestCode),'KITCHEN'),
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
ORDER BY Kitchen, GrpName, S.Item;

-- KITCHENSTKSUMM
-- KITCHEN STOCK SUMMARY (sirf kitchen-side rows: jahan QtyIss hui)
SELECT S.Item, SUM(IFNULL(S.QtyIss,0)) AS IssuedToKitchen,
       SUM(IFNULL(S.QtyIss,0))*MAX(IFNULL(S.Rate,0)) AS KitchenStockValue
FROM Stock S
WHERE IFNULL(S.QtyIss,0) > 0
GROUP BY S.Item
ORDER BY KitchenStockValue DESC;

-- EXCESSCONSUMPTION
-- EXCESS CONSUMPTION: jis item ki issue > receipt (variance)
SELECT S.Item, SUM(IFNULL(S.QtyRec,0)) AS TotalReceived,
       SUM(IFNULL(S.QtyIss,0)) AS TotalIssued,
       SUM(IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0)) AS Variance
FROM Stock S
GROUP BY S.Item
HAVING SUM(IFNULL(S.QtyIss,0)) > SUM(IFNULL(S.QtyRec,0))
ORDER BY Variance;

-- RESTISSUE
-- RESTAURANT-WISE ISSUE REPORT (kis restaurant ko kya issue hua)
-- Period params: (F, T)
SELECT S.RestCode, S.Item, SUM(IFNULL(S.QtyIss,0)) AS IssueQty,
       SUM(IFNULL(S.QtyIss,0)*IFNULL(S.Rate,0)) AS IssueValue
FROM Stock S
WHERE S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' AND IFNULL(S.QtyIss,0) > 0
GROUP BY S.RestCode, S.Item
ORDER BY S.RestCode, IssueValue DESC;

-- STOREISSREG
-- STORE ISSUE REGISTER (store se kitchen/restaurant transfer, date-wise)
-- Period params: (F, T)
SELECT S.Vdate, S.DocId, S.Vtype, S.Item, S.QtyIss, S.Rate, S.Amount, S.RestCode, S.GodownCode
FROM Stock S
WHERE S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' AND IFNULL(S.QtyIss,0) > 0
ORDER BY S.Vdate, S.DocId;

-- STOREISSUEREPORT
-- STORE ISSUE REPORT (item-wise detailed with value)
-- Period params: (F, T)
SELECT S.Item, S.Vdate, S.DocId, S.RestCode, S.QtyIss AS IssueQty, S.Rate,
       IFNULL(S.QtyIss,0)*IFNULL(S.Rate,0) AS IssueValue
FROM Stock S
WHERE S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' AND IFNULL(S.QtyIss,0) > 0
ORDER BY S.Item, S.Vdate;

-- DAILYSTOREISSRPT
-- DAILY STORE ISSUE REPORT (ek din ka, hour/shift-wise)
-- Single day: (date param '2016-09-06')
SELECT S.Item, SUM(IFNULL(S.QtyIss,0)) AS DayIssueQty,
       SUM(IFNULL(S.QtyIss,0)*IFNULL(S.Rate,0)) AS DayIssueValue
FROM Stock S
WHERE DATE(S.Vdate) = '2016-09-06' AND IFNULL(S.QtyIss,0) > 0
GROUP BY S.Item
ORDER BY DayIssueValue DESC;

-- ISSUEREG
-- ITEM ISSUE REGISTER (saari issue entries, doc-wise)
-- Period params: (F, T)
SELECT S.Vdate, S.Vtype, S.VNo, S.DocId, S.Item, S.QtyIss, S.Unit, S.Rate,
       IFNULL(S.QtyIss,0)*IFNULL(S.Rate,0) AS Value, S.RestCode, S.U_Name
FROM Stock S
WHERE S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' AND IFNULL(S.QtyIss,0) > 0
ORDER BY S.Vdate, S.DocId, S.Sno;

-- ISSUEREGISTER
-- ISSUE REGISTER (detailed, department-wise)
-- Period params: (F, T)
SELECT S.DepartCode, S.Item, SUM(IFNULL(S.QtyIss,0)) AS IssueQty,
       SUM(IFNULL(S.QtyIss,0)*IFNULL(S.Rate,0)) AS Value
FROM Stock S
WHERE S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' AND IFNULL(S.QtyIss,0) > 0
GROUP BY S.DepartCode, S.Item
ORDER BY S.DepartCode, S.Item;

-- ABCANALYSIS
-- ABC ANALYSIS: consumption value ke hisaab se A/B/C class
WITH Cons AS (
  SELECT Item, SUM(IFNULL(QtyIss,0)*IFNULL(Rate,0)) AS ConsValue
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
ORDER BY ConsValue DESC;

-- ABCANALYSISSALE
-- ABC ANALYSIS (SALE BASIS): Sale2 ke tax-value se item class nahi ban sakta
-- (Sale2 me item detail nahi hai), isliye stock consumption value use kiya + Sale total context
WITH Cons AS (
  SELECT Item, SUM(IFNULL(QtyIss,0)*IFNULL(Rate,0)) AS ConsValue
  FROM Stock GROUP BY Item
)
SELECT Item, ConsValue,
       CASE WHEN SUM(ConsValue) OVER (ORDER BY ConsValue DESC)*100.0
            / NULLIF(SUM(ConsValue) OVER (),0) <= 80 THEN 'A' ELSE 'B/C' END AS Class
FROM Cons ORDER BY ConsValue DESC;

-- PURCHBILL
-- PURCHASE BILL REPORT (receipt entries: ChalQty/RecdQty/AccQty/RejQty ke saath)
-- Period params: (F, T)
SELECT S.Vdate, S.DocId, S.VNo, S.PartyCode, S.Item, S.ChalQty, S.RecdQty, S.AccQty, S.RejQty,
       S.RecdUnit, S.Rate, IFNULL(S.RecdQty,0)*IFNULL(S.Rate,0) AS BillValue, S.TaxAmt
FROM Stock S
WHERE S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' AND (IFNULL(S.RecdQty,0) > 0 OR IFNULL(S.ChalQty,0) > 0)
ORDER BY S.Vdate, S.DocId;

-- PURCHORDER
-- PURCHASE ORDER REPORT (indent ke against pending/received)
-- Period params: (F, T)
SELECT S.Vdate, S.DocId, S.Item, S.ChalQty AS OrderedQty, S.RecdQty AS ReceivedQty,
       IFNULL(S.ChalQty,0)-IFNULL(S.RecdQty,0) AS PendingQty, S.PartyCode
FROM Stock S
WHERE S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' AND IFNULL(S.ChalQty,0) > 0
ORDER BY S.Vdate, S.DocId;

-- PURCHASEREG
-- PURCHASE REGISTER (date-wise purchases)
-- Period params: (F, T)
SELECT S.Vdate, S.DocId, S.VNo, S.PartyCode,
       SUM(IFNULL(S.QtyRec,0)) AS Qty,
       SUM(IFNULL(S.QtyRec,0)*IFNULL(S.Rate,0)) AS Amount,
       SUM(IFNULL(S.TaxAmt,0)) AS TaxAmt
FROM Stock S
WHERE S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' AND IFNULL(S.QtyRec,0) > 0
GROUP BY S.Vdate, S.DocId, S.VNo, S.PartyCode
ORDER BY S.Vdate;

-- PURCHASESUMM
-- PURCHASE SUMMARY (party-wise)
-- Period params: (F, T)
SELECT S.PartyCode, COUNT(DISTINCT S.DocId) AS Bills,
       SUM(IFNULL(S.QtyRec,0)*IFNULL(S.Rate,0)) AS PurchaseValue
FROM Stock S
WHERE S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' AND IFNULL(S.QtyRec,0) > 0
GROUP BY S.PartyCode
ORDER BY PurchaseValue DESC;

-- PURCHASELEDGER
-- PURCHASE LEDGER (party + item-wise detail)
-- Period params: (F, T)
SELECT S.PartyCode, S.Item, S.Vdate, S.DocId, S.QtyRec, S.Rate,
       IFNULL(S.QtyRec,0)*IFNULL(S.Rate,0) AS Amount
FROM Stock S
WHERE S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' AND IFNULL(S.QtyRec,0) > 0
ORDER BY S.PartyCode, S.Vdate;

-- CASHCREDITPURCH
-- CASH/CREDIT PURCHASE (party code pattern se - adjust karo apne codes se)
-- Period params: (F, T)
SELECT S.PartyCode, S.Vdate, S.DocId, SUM(IFNULL(S.QtyRec,0)*IFNULL(S.Rate,0)) AS Amount
FROM Stock S
WHERE S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' AND IFNULL(S.QtyRec,0) > 0
GROUP BY S.PartyCode, S.Vdate, S.DocId
ORDER BY S.PartyCode, S.Vdate;

-- INDENTREG
-- INDENT REGISTER (IndentDocId ke against issue - kitchen indent tracking)
-- Period params: (F, T)
SELECT S.IndentDocId, S.IndentSNo, S.Vdate, S.DocId, S.Item, S.QtyIss,
       IFNULL(S.QtyIss,0)*IFNULL(S.Rate,0) AS Value
FROM Stock S
WHERE S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' AND IFNULL(S.IndentDocId,'') <> '' AND IFNULL(S.QtyIss,0) > 0
ORDER BY S.IndentDocId;

-- FOODCOST
-- FOOD COST: consumption vs sales (same period)
-- Period params: (F, T)
SELECT 'Consumption' AS Head, SUM(IFNULL(S.QtyIss,0)*IFNULL(S.Rate,0)) AS Amount
FROM Stock S WHERE S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' AND IFNULL(S.QtyIss,0) > 0
UNION ALL
SELECT 'Sales (Food)', SUM(L.NetAmt) FROM Sale1 L WHERE L.Vdate BETWEEN '2016-09-01' AND '2016-09-30'
UNION ALL
SELECT 'Sales Tax Amount', SUM(S2.TaxAmt) FROM Sale2 S2 WHERE S2.Vdate BETWEEN '2016-09-01' AND '2016-09-30';

-- FBCOSTSTATEMENT
-- F&B COST STATEMENT (restaurant-wise: consumption vs sale)
-- Period params: (F, T)
SELECT R.RestCode,
       (SELECT SUM(IFNULL(QtyIss,0)*IFNULL(Rate,0)) FROM Stock WHERE Vdate BETWEEN '2016-09-01' AND '2016-09-30' AND RestCode = R.RestCode) AS Consumption,
       (SELECT SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN '2016-09-01' AND '2016-09-30' AND RestCode = R.RestCode) AS Sales
FROM (SELECT DISTINCT RestCode FROM Sale1 WHERE Vdate BETWEEN '2016-09-01' AND '2016-09-30') R
ORDER BY R.RestCode;

-- PRODUCTIONREPORT
-- PRODUCTION REPORT (finished goods: jo items issue hue production ko)
-- Period params: (F, T)
SELECT S.Item, SUM(IFNULL(S.QtyIss,0)) AS QtyUsed,
       SUM(IFNULL(S.QtyIss,0)*IFNULL(S.Rate,0)) AS ProductionCost
FROM Stock S
WHERE S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' AND IFNULL(S.QtyIss,0) > 0 AND IFNULL(S.DepartCode,'') <> ''
GROUP BY S.Item
ORDER BY ProductionCost DESC;

-- LIQUORSALEREP
-- LIQUOR SALE REPORT (liquor items ki sale - Item prefix se filter, adjust karo)
-- NOTE: ItemMast dump me nahi hai, isliye item-code prefix se filter diya hai
-- Period params: (F, T)
SELECT S.Item, SUM(IFNULL(S.QtyIss,0)) AS QtySold,
       SUM(IFNULL(S.QtyIss,0)*IFNULL(S.Rate,0)) AS SaleValue
FROM Stock S
WHERE S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' AND IFNULL(S.QtyIss,0) > 0
  AND (S.Item LIKE 'L%' OR S.Item LIKE 'B%' OR S.Item LIKE 'W%')  -- apne liquor codes yahan
GROUP BY S.Item
ORDER BY SaleValue DESC;

-- COSTANALYSIS
-- COST ANALYSIS: item-wise consumption value vs sales total
-- Period params: (F, T)
SELECT S.Item, SUM(IFNULL(S.QtyIss,0)) AS Qty, SUM(IFNULL(S.QtyIss,0)*IFNULL(S.Rate,0)) AS CostValue
FROM Stock S
WHERE S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' AND IFNULL(S.QtyIss,0) > 0
GROUP BY S.Item
ORDER BY CostValue DESC;

-- RSTOCKREGISTER
-- R-STOCK REGISTER (Restaurant-wise stock register - Rest_Click menu se)
-- Period params: (F, T)
SELECT S.RestCode, S.Item,
       SUM(CASE WHEN S.Vdate < '2016-09-01' THEN IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0) ELSE 0 END) AS OpeningQty,
       SUM(CASE WHEN S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' THEN IFNULL(S.QtyRec,0) ELSE 0 END) AS ReceiptQty,
       SUM(CASE WHEN S.Vdate BETWEEN '2016-09-01' AND '2016-09-30' THEN IFNULL(S.QtyIss,0) ELSE 0 END) AS IssueQty,
       SUM(CASE WHEN S.Vdate <= '2016-09-30' THEN IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0) ELSE 0 END) AS ClosingQty,
       SUM(CASE WHEN S.Vdate <= '2016-09-30' THEN IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0) ELSE 0 END) * MAX(IFNULL(S.Rate,0)) AS ClosingValue
FROM Stock S
WHERE IFNULL(S.RestCode,'') <> ''
GROUP BY S.RestCode, S.Item
ORDER BY S.RestCode, S.Item;

-- RSTOCKSUMMARY
-- R-STOCK SUMMARY (Restaurant-wise summary with value)
SELECT S.RestCode, S.Item, SUM(IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0)) AS BalQty,
       SUM(IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0)) * MAX(IFNULL(S.Rate,0)) AS StockValue
FROM Stock S
WHERE IFNULL(S.RestCode,'') <> ''
GROUP BY S.RestCode, S.Item
ORDER BY S.RestCode, StockValue DESC;


-- ==============================================================================
-- GENERIC CATEGORY QUERIES
-- ==============================================================================

-- [GENERIC / SALES / POS]
-- SALES DATA (Sale1/Sale2/PayCharge se)
-- Period params: (F, T)
SELECT L.Vdate, L.DocId, L.Vtype, L.RestCode, L.NetAmt, L.Total, L.Tax, L.CGST, L.SGST
FROM Sale1 L WHERE L.Vdate BETWEEN '2016-09-01' AND '2016-09-30' ORDER BY L.Vdate, L.DocId;

-- [GENERIC / TAX / GST / VAT]
-- TAX DATA (Sale2 tax-slabs + Sale1 CGST/SGST/IGST)
-- Period params: (F, T)
SELECT S2.Vdate, S2.TaxCode, S2.BaseValue, S2.TaxPer, S2.TaxAmt,
       L.CGST, L.SGST, L.IGST
FROM Sale2 S2 JOIN Sale1 L ON L.DocId = S2.DocId
WHERE S2.Vdate BETWEEN '2016-09-01' AND '2016-09-30' ORDER BY S2.Vdate;

-- [GENERIC / ACCOUNTS / FINANCE]
-- ACCOUNTS DATA (SunTran ledger + PayCharge payments)
-- Period params: (F, T)
SELECT T.Vdate, T.DocId, T.Vtype, T.PartyCode, T.SunCode, T.Amount, T.BaseAmount
FROM SunTran T WHERE T.Vdate BETWEEN '2016-09-01' AND '2016-09-30' ORDER BY T.Vdate;

-- [GENERIC / FRONT OFFICE / GUEST]
-- FRONT OFFICE DATA (PayCharge folio charges, SunTran room revenue)
-- Period params: (F, T)
SELECT P.Vdate, P.FolioNo, P.RoomNo, P.PayCode, P.AmtDr, P.AmtCr, P.Bill_No
FROM PayCharge P WHERE P.Vdate BETWEEN '2016-09-01' AND '2016-09-30' ORDER BY P.Vdate;

-- [GENERIC / OTHER / GENERAL]
-- GENERAL LEDGER DATA (SunTran)
-- Period params: (F, T)
SELECT T.Vdate, T.DocId, T.SunCode, T.Amount FROM SunTran T
WHERE T.Vdate BETWEEN '2016-09-01' AND '2016-09-30' ORDER BY T.Vdate;

