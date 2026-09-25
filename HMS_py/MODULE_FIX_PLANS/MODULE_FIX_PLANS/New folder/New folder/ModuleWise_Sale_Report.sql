-- =====================================================
-- MODULE WISE SALE REPORT (PURA SOFTWARE KI SALES)
-- Shows sales from: POS/Room, Hall/Banquet, Member, FOM
-- Plus Advance Collection, Payment Mode breakup
-- =====================================================

DECLARE @FromDate  datetime = '2026-08-01';  -- Report start date
DECLARE @ToDate    datetime = '2026-09-03';  -- Report end date (GETDATE() for today)
DECLARE @SiteCode  varchar(10) = 'KK';       -- Your site code
DECLARE @CompCode  varchar(10) = '';         -- Leave blank for all, or specify company

-- Charge PayCodes (RevMast codes - apne site ke hisaab se change karo)
DECLARE @RoomCharge   varchar(10) = @SiteCode + 'RMCH';  -- ROOM CHARGE
DECLARE @ExtraBed     varchar(10) = @SiteCode + 'EXTB';  -- EXTRA BED  
DECLARE @MealCharge   varchar(10) = @SiteCode + 'MK';    -- MEAL CHARGE

-- =====================================================
-- PART 1: MODULE WISE TOTAL SALES SUMMARY
-- =====================================================
SELECT 
    '=== MODULE WISE SALES SUMMARY ===' AS ReportHeader,
    '' AS Details
UNION ALL
SELECT 
    'Date Range: ' + CONVERT(varchar(10), @FromDate, 103) + ' to ' + CONVERT(varchar(10), @ToDate, 103),
    'Site: ' + @SiteCode
UNION ALL
SELECT 
    ' ',
    ' '
UNION ALL
(SELECT 
    'POS/Room Sale' AS Module,
    SUM(CASE WHEN S.LogSite_Code = @SiteCode 
             AND S.VDate BETWEEN @FromDate AND @ToDate
             AND (S.DelFlag IS NULL OR S.DelFlag <> 'Y')
        THEN ISNULL(S.NetAmt, 0) 
        ELSE 0 END) AS TotalSale,
    SUM(CASE WHEN S.LogSite_Code = @SiteCode 
             AND S.VDate BETWEEN @FromDate AND @ToDate
             AND (S.DelFlag IS NULL OR S.DelFlag <> 'Y')
        THEN ISNULL(S.DiscAmt, 0) 
        ELSE 0 END) AS Discount,
    SUM(CASE WHEN S.LogSite_Code = @SiteCode 
             AND S.VDate BETWEEN @FromDate AND @ToDate
             AND (S.DelFlag IS NULL OR S.DelFlag <> 'Y')
        THEN ISNULL(S.Tax, 0) + ISNULL(S.ServiceCharge, 0) 
        ELSE 0 END) AS TaxServiceCharge,
    COUNT(DISTINCT CASE WHEN S.LogSite_Code = @SiteCode 
                         AND S.VDate BETWEEN @FromDate AND @ToDate
                         AND (S.DelFlag IS NULL OR S.DelFlag <> 'Y')
                    THEN S.DocId END) AS BillCount
FROM Sale1 S
WHERE S.LogSite_Code = @SiteCode
  AND S.VDate BETWEEN @FromDate AND @ToDate
  AND (S.DelFlag IS NULL OR S.DelFlag <> 'Y')
)
UNION ALL
(SELECT 
    'Hall/Banquet Sale' AS Module,
    ISNULL((
        SELECT SUM(HB.Total)
        FROM HallBill HB
        WHERE HB.LogSite_Code = @SiteCode
          AND HB.VDate BETWEEN @FromDate AND @ToDate
    ), 0) AS TotalSale,
    ISNULL((
        SELECT SUM(HB.DiscAmt)
        FROM HallBill HB
        WHERE HB.LogSite_Code = @SiteCode
          AND HB.VDate BETWEEN @FromDate AND @ToDate
    ), 0) AS Discount,
    0 AS TaxServiceCharge,
    ISNULL((
        SELECT COUNT(*)
        FROM HallBill HB
        WHERE HB.LogSite_Code = @SiteCode
          AND HB.VDate BETWEEN @FromDate AND @ToDate
    ), 0) AS BillCount
)
UNION ALL
(SELECT 
    'Member Sale' AS Module,
    ISNULL((
        SELECT SUM(SR.NetAmt)
        FROM Sale1 SR
        INNER JOIN SubGroup SG ON SR.Party = SG.SubCode
        WHERE SR.LogSite_Code = @SiteCode
          AND SR.VDate BETWEEN @FromDate AND @ToDate
          AND (SR.DelFlag IS NULL OR SR.DelFlag <> 'Y')
          AND SG.Nature = 'Member'
    ), 0) AS TotalSale,
    ISNULL((
        SELECT SUM(SR.DiscAmt)
        FROM Sale1 SR
        INNER JOIN SubGroup SG ON SR.Party = SG.SubCode
        WHERE SR.LogSite_Code = @SiteCode
          AND SR.VDate BETWEEN @FromDate AND @ToDate
          AND (SR.DelFlag IS NULL OR SR.DelFlag <> 'Y')
          AND SG.Nature = 'Member'
    ), 0) AS Discount,
    0 AS TaxServiceCharge,
    ISNULL((
        SELECT COUNT(DISTINCT SR.DocId)
        FROM Sale1 SR
        INNER JOIN SubGroup SG ON SR.Party = SG.SubCode
        WHERE SR.LogSite_Code = @SiteCode
          AND SR.VDate BETWEEN @FromDate AND @ToDate
          AND (SR.DelFlag IS NULL OR SR.DelFlag <> 'Y')
          AND SG.Nature = 'Member'
    ), 0) AS BillCount
)
UNION ALL
(SELECT 
    'FOM/Food & Beverage' AS Module,
    ISNULL((
        SELECT SUM(SR.Total)
        FROM Sale1 SR
        INNER JOIN Depart D ON SR.RestCode = D.Code
        WHERE SR.LogSite_Code = @SiteCode
          AND SR.VDate BETWEEN @FromDate AND @ToDate
          AND (SR.DelFlag IS NULL OR SR.DelFlag <> 'Y')
          AND D.RestType = 'FOM'
    ), 0) AS TotalSale,
    ISNULL((
        SELECT SUM(SR.DiscAmt)
        FROM Sale1 SR
        INNER JOIN Depart D ON SR.RestCode = D.Code
        WHERE SR.LogSite_Code = @SiteCode
          AND SR.VDate BETWEEN @FromDate AND @ToDate
          AND (SR.DelFlag IS NULL OR SR.DelFlag <> 'Y')
          AND D.RestType = 'FOM'
    ), 0) AS Discount,
    0 AS TaxServiceCharge,
    ISNULL((
        SELECT COUNT(DISTINCT SR.DocId)
        FROM Sale1 SR
        INNER JOIN Depart D ON SR.RestCode = D.Code
        WHERE SR.LogSite_Code = @SiteCode
          AND SR.VDate BETWEEN @FromDate AND @ToDate
          AND (SR.DelFlag IS NULL OR SR.DelFlag <> 'Y')
          AND D.RestType = 'FOM'
    ), 0) AS BillCount
)
UNION ALL
SELECT 
    '=== ADVANCE COLLECTION ===' AS Module,
    '' AS Details
UNION ALL
(SELECT 
    'Cash Advance' AS Module,
    SUM(A.AmtCr - A.AmtDr) AS Amount,
    0 AS Discount,
    0 AS TaxServiceCharge,
    COUNT(DISTINCT A.DocId) AS Count
FROM PayCharge A
WHERE A.LogSite_Code = @SiteCode
  AND A.VDate BETWEEN @FromDate AND @ToDate
  AND A.PayType IN ('Cash', 'Cashier')
  AND A.Modeset <> 'S'
  AND (A.ContraDocID IS NULL OR A.ContraDocID = '')
)
UNION ALL
(SELECT 
    'Card Advance' AS Module,
    SUM(A.AmtCr - A.AmtDr) AS Amount,
    0 AS Discount,
    0 AS TaxServiceCharge,
    COUNT(DISTINCT A.DocId) AS Count
FROM PayCharge A
WHERE A.LogSite_Code = @SiteCode
  AND A.VDate BETWEEN @FromDate AND @ToDate
  AND A.PayType IN ('Credit Card', 'Debit Card', 'Smart Card')
  AND A.Modeset <> 'S'
  AND (A.ContraDocID IS NULL OR A.ContraDocID = '')
)
UNION ALL
SELECT 
    '=== TOTAL SUMMARY ===' AS Module,
    '' AS Details
UNION ALL
(SELECT 
    'GRAND TOTAL SALE' AS Module,
    (SELECT SUM(NetAmt) FROM Sale1 WHERE LogSite_Code = @SiteCode 
     AND VDate BETWEEN @FromDate AND @ToDate 
     AND (DelFlag IS NULL OR DelFlag <> 'Y')) +
    (SELECT ISNULL(SUM(Total),0) FROM HallBill WHERE LogSite_Code = @SiteCode 
     AND VDate BETWEEN @FromDate AND @ToDate) AS TotalSale,
    (SELECT SUM(DiscAmt) FROM Sale1 WHERE LogSite_Code = @SiteCode 
     AND VDate BETWEEN @FromDate AND @ToDate 
     AND (DelFlag IS NULL OR DelFlag <> 'Y')) AS Discount,
    (SELECT SUM(ISNULL(Tax,0) + ISNULL(ServiceCharge,0)) FROM Sale1 WHERE LogSite_Code = @SiteCode 
     AND VDate BETWEEN @FromDate AND @ToDate 
     AND (DelFlag IS NULL OR DelFlag <> 'Y')) AS TaxServiceCharge,
    (SELECT COUNT(DISTINCT DocId) FROM Sale1 WHERE LogSite_Code = @SiteCode 
     AND VDate BETWEEN @FromDate AND @ToDate 
     AND (DelFlag IS NULL OR DelFlag <> 'Y'))
    +
    (SELECT COUNT(*) FROM HallBill WHERE LogSite_Code = @SiteCode 
     AND VDate BETWEEN @FromDate AND @ToDate) AS BillCount
)


-- =====================================================
-- PART 2: DATE WISE SALE BREAKUP (SAVE KARNE KE LIYE)
-- =====================================================
-- Note: Ye table hai jo Excel me save ho sakti hai
-- CREATE TABLE #TempSaleReport (VDate datetime, SaleType varchar(50), Amount decimal(15,2), BillCount int)

SELECT 
    CONVERT(varchar(10), S.VDate, 103) AS [Date],
    FORMAT(S.VDate, 'dddd') AS DayName,
    SUM(CASE WHEN S.DocId IS NOT NULL THEN S.NetAmt ELSE 0 END) AS [POS Sale (Net Amt)],
    SUM(CASE WHEN S.DocId IS NOT NULL THEN S.DiscAmt ELSE 0 END) AS [Discount],
    SUM(CASE WHEN S.DocId IS NOT NULL THEN ISNULL(S.Tax,0) + ISNULL(S.ServiceCharge,0) ELSE 0 END) AS [Tax+SC],
    SUM(CASE WHEN S.DocId IS NOT NULL THEN S.Total ELSE 0 END) AS [Gross Sale (Room/Hall)],
    -- Advance Collection
    SUM(CASE WHEN A.DocId IS NOT NULL THEN A.AmtCr - A.AmtDr ELSE 0 END) AS [Advance Collection],
    -- Payment Mode Breakup
    SUM(CASE WHEN P.DocId IS NOT NULL AND P.PayType = 'Cash' THEN P.AmtCr ELSE 0 END) AS [Cash Receipt],
    SUM(CASE WHEN P.DocId IS NOT NULL AND P.PayType IN ('Credit Card','Debit Card') THEN P.AmtCr ELSE 0 END) AS [Card Receipt],
    SUM(CASE WHEN P.DocId IS NOT NULL AND P.PayType = 'Cheque' THEN P.AmtCr ELSE 0 END) AS [Cheque Receipt],
    SUM(CASE WHEN P.DocId IS NOT NULL AND P.PayType = 'Online' THEN P.AmtCr ELSE 0 END) AS [Online Receipt]
FROM (
    SELECT VDate, DocId, NetAmt, DiscAmt, Tax, ServiceCharge, Total, RestCode
    FROM Sale1 
    WHERE LogSite_Code = @SiteCode 
      AND VDate BETWEEN @FromDate AND @ToDate
      AND (DelFlag IS NULL OR DelFlag <> 'Y')
) S
LEFT JOIN (
    SELECT VDate, DocId, AmtCr, PayType
    FROM PayCharge 
    WHERE LogSite_Code = @SiteCode 
      AND VDate BETWEEN @FromDate AND @ToDate
      AND Modeset = 'S'
      AND PayCode <> @SiteCode + 'ROFF'  -- RoundOff exclude
) P ON S.DocId = P.DocId
LEFT JOIN (
    SELECT VDate, DocId, (AmtCr - AmtDr) AS AmtCr
    FROM PayCharge 
    WHERE LogSite_Code = @SiteCode 
      AND VDate BETWEEN @FromDate AND @ToDate
      AND Modeset <> 'S'
      AND Vtype IN ('REC', 'Chk')
      AND (ContraDocID IS NULL OR ContraDocID = '')
) A ON S.VDate = A.VDate
GROUP BY CONVERT(varchar(10), S.VDate, 103), FORMAT(S.VDate, 'dddd')
ORDER BY MIN(S.VDate)


-- =====================================================
-- PART 3: DEPARTMENT WISE SALE (RESTAURANT/ROOM)
-- =====================================================
SELECT 
    D.Name AS Department,
    D.ShortName AS ShortCode,
    D.RestType AS Type,
    COUNT(DISTINCT S.DocId) AS BillCount,
    SUM(S.Total) AS GrossAmount,
    SUM(S.DiscAmt) AS DiscountGiven,
    SUM(S.NetAmt) AS NetSale,
    SUM(ISNULL(S.Tax,0)) AS Tax,
    SUM(ISNULL(S.ServiceCharge,0)) AS ServiceCharge,
    SUM(ISNULL(S.CGST,0)) AS CGST,
    SUM(ISNULL(S.SGST,0)) AS SGST,
    SUM(ISNULL(S.IGST,0)) AS IGST
FROM Sale1 S
INNER JOIN Depart D ON S.RestCode = D.Code
WHERE S.LogSite_Code = @SiteCode
  AND S.VDate BETWEEN @FromDate AND @ToDate
  AND (S.DelFlag IS NULL OR S.DelFlag <> 'Y')
  AND D.LogSite_Code = @SiteCode
GROUP BY D.Code, D.Name, D.ShortName, D.RestType
ORDER BY D.RestType, D.Name


-- =====================================================
-- PART 4: PAYMENT MODE WISE COLLECTION
-- =====================================================
SELECT 
    PC.PayType AS PaymentMode,
    COUNT(DISTINCT PC.DocId) AS BillCount,
    SUM(PC.AmtCr) AS TotalReceived,
    SUM(PC.TipAmt) AS TipAmount
FROM PayCharge PC
WHERE PC.LogSite_Code = @SiteCode
  AND PC.VDate BETWEEN @FromDate AND @ToDate
  AND PC.Modeset = 'S'  -- Payment entries only
  AND PC.PayCode <> @SiteCode + 'ROFF'  -- RoundOff exclude
  AND (PC.ContraDocID IS NULL OR PC.ContraDocID = '')
GROUP BY PC.PayType
ORDER BY 
    CASE PC.PayType 
        WHEN 'Cash' THEN 1 
        WHEN 'Credit Card' THEN 2 
        WHEN 'Debit Card' THEN 3 
        WHEN 'Cheque' THEN 4 
        WHEN 'Online' THEN 5 
        ELSE 6 
    END


-- =====================================================
-- PART 5: HALL/BANQUET EVENT WISE SALE
-- =====================================================
SELECT 
    HB.VDate AS EventDate,
    HB.VNo AS EventNo,
    HB.Party AS GuestName,
    D.Name AS EventType,
    HB.RoomNo AS HallRoom,
    COUNT(HBD.SNo) AS ItemCount,
    SUM(HBD.Qty) AS TotalQty,
    SUM(HBD.Amount) AS GrossAmount,
    SUM(HB.DiscAmt) AS Discount,
    HB.NetAmt AS NetAmount,
    HB.CrCardNo AS CardNo,
    HB.BookNo AS BookingRef,
    HB.U_Name AS EnteredBy
FROM HallBill HB
INNER JOIN HallBill1 HBD ON HB.DocId = HBD.DocId
INNER JOIN Depart D ON HB.RestCode = D.Code
WHERE HB.LogSite_Code = @SiteCode
  AND HB.VDate BETWEEN @FromDate AND @ToDate
  AND (HB.DelFlag IS NULL OR HB.DelFlag <> 'Y')
GROUP BY HB.DocId, HB.VDate, HB.VNo, HB.Party, D.Name, HB.RoomNo, 
         HB.DiscAmt, HB.NetAmt, HB.CrCardNo, HB.BookNo, HB.U_Name
ORDER BY HB.VDate, HB.VNo


-- =====================================================
-- PART 6: MEMBER PURCHASE SUMMARY
-- =====================================================
SELECT 
    SG.Name AS MemberName,
    SG.CardNo AS CardNumber,
    COUNT(DISTINCT S.DocId) AS VisitCount,
    SUM(S.Total) AS TotalPurchase,
    SUM(S.DiscAmt) AS DiscountReceived,
    SUM(S.NetAmt) AS NetPurchase,
    MAX(S.VDate) AS LastVisitDate
FROM Sale1 S
INNER JOIN SubGroup SG ON S.Party = SG.SubCode
WHERE S.LogSite_Code = @SiteCode
  AND S.VDate BETWEEN @FromDate AND @ToDate
  AND (S.DelFlag IS NULL OR S.DelFlag <> 'Y')
  AND SG.Nature = 'Member'
GROUP BY SG.SubCode, SG.Name, SG.CardNo
ORDER BY TotalPurchase DESC


-- =====================================================
-- PART 7: WAITER/SERVER PERFORMANCE REPORT
-- =====================================================
SELECT 
    W.Name AS WaiterName,
    W.Code AS WaiterCode,
    COUNT(DISTINCT S.DocId) AS BillCount,
    SUM(S.Total) AS GrossSale,
    SUM(S.NetAmt) AS NetSale,
    SUM(S.DiscAmt) AS Discount,
    AVG(CASE WHEN COUNT(S.DocId) > 0 THEN S.NetAmt ELSE 0 END) AS AvgBillSize
FROM Sale1 S
INNER JOIN Waiter W ON S.Waiter = W.Code
WHERE S.LogSite_Code = @SiteCode
  AND S.VDate BETWEEN @FromDate AND @ToDate
  AND (S.DelFlag IS NULL OR S.DelFlag <> 'Y')
  AND S.Waiter IS NOT NULL
GROUP BY W.Code, W.Name
ORDER BY NetSale DESC


-- =====================================================
-- PART 8: SAVE KARNE KE LIYE TEMP TABLE CREATION
-- (Agar aapko result save karna hai to ye use karo)
-- =====================================================
/*
-- Step 1: Temp table create karo
CREATE TABLE #ModuleWiseSaleReport (
    ReportDate datetime,
    ModuleName varchar(50),
    Department varchar(50),
    BillNo varchar(20),
    BillDate varchar(10),
    GuestName varchar(50),
    NetAmount decimal(15,2),
    TaxAmount decimal(15,2),
    Discount decimal(15,2),
    PaymentMode varchar(20),
    PaymentAmount decimal(15,2),
    EnteredBy varchar(10)
);

-- Step 2: POS Sale insert karo
INSERT INTO #ModuleWiseSaleReport
SELECT 
    S.VDate,
    'POS/Room Sale',
    D.Name,
    S.VNo,
    CONVERT(varchar(10), S.VDate, 103),
    SG.Name,
    S.NetAmt,
    ISNULL(S.Tax,0) + ISNULL(S.ServiceCharge,0),
    S.DiscAmt,
    'N/A',
    0,
    S.U_Name
FROM Sale1 S
LEFT JOIN Depart D ON S.RestCode = D.Code
LEFT JOIN SubGroup SG ON S.Party = SG.SubCode
WHERE S.LogSite_Code = @SiteCode
  AND S.VDate BETWEEN @FromDate AND @ToDate
  AND (S.DelFlag IS NULL OR S.DelFlag <> 'Y');

-- Step 3: Hall Sale insert karo
INSERT INTO #ModuleWiseSaleReport
SELECT 
    HB.VDate,
    'Hall/Banquet',
    D.Name,
    HB.VNo,
    CONVERT(varchar(10), HB.VDate, 103),
    HB.Party,
    HB.NetAmt,
    0,
    HB.DiscAmt,
    'N/A',
    0,
    HB.U_Name
FROM HallBill HB
LEFT JOIN Depart D ON HB.RestCode = D.Code
WHERE HB.LogSite_Code = @SiteCode
  AND HB.VDate BETWEEN @FromDate AND @ToDate
  AND (HB.DelFlag IS NULL OR HB.DelFlag <> 'Y');

-- Step 4: Payments insert karo
INSERT INTO #ModuleWiseSaleReport
SELECT 
    PC.VDate,
    'Payment Received',
    'N/A',
    PC.DocId,
    CONVERT(varchar(10), PC.VDate, 103),
    'N/A',
    0,
    0,
    0,
    PC.PayType,
    PC.AmtCr,
    PC.U_Name
FROM PayCharge PC
WHERE PC.LogSite_Code = @SiteCode
  AND PC.VDate BETWEEN @FromDate AND @ToDate
  AND PC.Modeset = 'S'
  AND PC.PayCode <> @SiteCode + 'ROFF';

-- Step 5: Result dekhano
SELECT * FROM #ModuleWiseSaleReport ORDER BY ReportDate, ModuleName;

-- Step 6: Temp table drop karo
DROP TABLE #ModuleWiseSaleReport;
*/


-- =====================================================
-- PART 9: COMPLETE MODULAR SALE WITH PAYMENT LINKING
-- =====================================================
-- Ye query pura software ki sale dikhata hai with payment tracking
SELECT 
    'MODULE WISE COMPLETE SALE REPORT' AS ReportTitle,
    @SiteCode AS SiteCode,
    @FromDate AS FromDate,
    @ToDate AS ToDate,
    '' AS Details
UNION ALL
SELECT 
    ' ',
    '',
    '',
    '',
    CAST((
        SELECT COUNT(*) FROM Sale1 WHERE LogSite_Code = @SiteCode 
        AND VDate BETWEEN @FromDate AND @ToDate 
        AND (DelFlag IS NULL OR DelFlag <> 'Y')
    ) AS varchar) + ' POS Bills | ' +
    CAST((
        SELECT COUNT(*) FROM HallBill WHERE LogSite_Code = @SiteCode 
        AND VDate BETWEEN @FromDate AND @ToDate
    ) AS varchar) + ' Hall Events'
)
UNION ALL
SELECT 
    'Module',
    'Total Sale',
    'Bill Count',
    'Avg per Bill',
    'Payment Status'
UNION ALL
(SELECT 
    'POS/Room Sales' AS Module,
    CAST(SUM(S.NetAmt) AS varchar(20)) AS [Total Sale],
    CAST(COUNT(DISTINCT S.DocId) AS varchar(20)) AS [Bill Count],
    CAST(AVG(S.NetAmt) AS varchar(20)) AS [Avg per Bill],
    CAST(COUNT(DISTINCT P.DocId) AS varchar(20)) + ' Bills Paid' AS [Payment Status]
FROM Sale1 S
LEFT JOIN PayCharge P ON S.DocId = P.DocId AND P.Modeset = 'S'
WHERE S.LogSite_Code = @SiteCode
  AND S.VDate BETWEEN @FromDate AND @ToDate
  AND (S.DelFlag IS NULL OR S.DelFlag <> 'Y')
)
UNION ALL
(SELECT 
    'Hall/Banquet' AS Module,
    CAST(ISNULL(SUM(H.Total),0) AS varchar(20)) AS [Total Sale],
    CAST(COUNT(H.DocId) AS varchar(20)) AS [Bill Count],
    CAST(AVG(H.Total) AS varchar(20)) AS [Avg per Bill],
    CAST(COUNT(DISTINCT P.DocId) AS varchar(20)) + ' Events Paid' AS [Payment Status]
FROM HallBill H
LEFT JOIN PayCharge P ON H.DocId = P.DocId AND P.Modeset = 'S'
WHERE H.LogSite_Code = @SiteCode
  AND H.VDate BETWEEN @FromDate AND @ToDate
)
UNION ALL
(SELECT 
    'Members' AS Module,
    CAST(SUM(S.NetAmt) AS varchar(20)) AS [Total Sale],
    CAST(COUNT(DISTINCT S.DocId) AS varchar(20)) AS [Bill Count],
    CAST(AVG(S.NetAmt) AS varchar(20)) AS [Avg per Bill],
    CAST(COUNT(DISTINCT M.CardNo) AS varchar(20)) + ' Active Members' AS [Payment Status]
FROM Sale1 S
INNER JOIN SubGroup M ON S.Party = M.SubCode
WHERE S.LogSite_Code = @SiteCode
  AND S.VDate BETWEEN @FromDate AND @ToDate
  AND (S.DelFlag IS NULL OR S.DelFlag <> 'Y')
  AND M.Nature = 'Member'
)
UNION ALL
SELECT 
    'Earning Summary',
    '',
    '',
    '',
    ''
UNION ALL
(SELECT 
    'Total Revenue',
    CAST((
        SELECT SUM(NetAmt) FROM Sale1 WHERE LogSite_Code = @SiteCode 
        AND VDate BETWEEN @FromDate AND @ToDate 
        AND (DelFlag IS NULL OR DelFlag <> 'Y')
    ) + (
        SELECT ISNULL(SUM(Total),0) FROM HallBill WHERE LogSite_Code = @SiteCode 
        AND VDate BETWEEN @FromDate AND @ToDate
    ) AS varchar(20)) AS Total,
    '',
    '',
    ''
)
UNION ALL
(SELECT 
    'Total Tax Collected',
    CAST((
        SELECT SUM(ISNULL(Tax,0) + ISNULL(ServiceCharge,0) + ISNULL(CGST,0) + ISNULL(SGST,0) + ISNULL(IGST,0))
        FROM Sale1 WHERE LogSite_Code = @SiteCode 
        AND VDate BETWEEN @FromDate AND @ToDate 
        AND (DelFlag IS NULL OR DelFlag <> 'Y')
    ) AS varchar(20)) AS Total,
    '',
    '',
    ''
)
UNION ALL
(SELECT 
    'Total Discount Given',
    CAST((
        SELECT SUM(DiscAmt) FROM Sale1 WHERE LogSite_Code = @SiteCode 
        AND VDate BETWEEN @FromDate AND @ToDate 
        AND (DelFlag IS NULL OR DelFlag <> 'Y')
    ) AS varchar(20)) AS Total,
    '',
    '',
    ''
)
UNION ALL
(SELECT 
    'Total Cash Collected',
    CAST((
        SELECT SUM(AmtCr) FROM PayCharge WHERE LogSite_Code = @SiteCode 
        AND VDate BETWEEN @FromDate AND @ToDate 
        AND Modeset = 'S' AND PayType = 'Cash'
    ) AS varchar(20)) AS Total,
    '',
    '',
    ''
)
