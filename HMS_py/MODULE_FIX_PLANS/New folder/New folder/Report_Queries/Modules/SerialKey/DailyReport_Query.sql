-- =====================================================================
-- DAILY REPORT - UNIFIED VIEW  (sab data EK SAATH)
-- Source: HMS.bas -> DailyReport (1F0DBE4) / DailyReportPart1,2
-- Ek hi result me poora daily report: summary + detail list.
-- DATE change karo (@Date) aur chalao.
-- =====================================================================

DECLARE @Date DATETIME = GETDATE();              -- report date
DECLARE @D1   DATETIME = DATEADD(DAY,-1,@Date);  -- yesterday

-- =====================================================================
-- [A] SUMMARY - ek hi row me saare figures
-- =====================================================================
SELECT
  CONVERT(VARCHAR(20),@Date,103)                          AS 'ReportDate',

  -- Rooms
  (SELECT COUNT(*) FROM RoomMast RM
     WHERE RM.Type='RO' AND RM.InclCount='Y')             AS 'TotalRooms',

  (SELECT COUNT(DISTINCT CONVERT(VARCHAR(11),Vdate,102)+RoomNo)
     FROM paycharge
     WHERE Amtdr>0
       AND PayCode IN (SELECT Code FROM RevMast
                       WHERE FlagAMR='Detail' AND FlagType='FOM'
                         AND FieldType='C' And Nature='Room Charge')
       AND CONVERT(DATETIME,CONVERT(VARCHAR(11),Vdate,102))=@Date)
                                                          AS 'RoomsCharged',

  (SELECT COUNT(*) FROM RoomBlockOut
     WHERE Type='O' AND ((FromDate BETWEEN @Date AND @Date)
                         OR (FromDate<=@Date And ToDate>=@Date)))
                                                          AS 'BlockedRooms',

  -- Revenue
  (SELECT ISNULL(SUM(AmtCr)-SUM(AmtDr),0) FROM PayCharge
     WHERE VDate=@Date
       AND PayCode IN (SELECT Code FROM RevMast
                       WHERE FlagAMR='Detail' AND FlagType='FOM'
                         AND FieldType='C' And Nature='Room Charge'))
                                                          AS 'RoomRevenue',

  (SELECT ISNULL(SUM(AmtCr)-SUM(AmtDr),0) FROM PayCharge
     WHERE VDate=@D1
       AND PayCode IN (SELECT Code FROM RevMast
                       WHERE FlagAMR='Detail' AND FlagType='FOM'
                         AND FieldType='C' And Nature='Room Charge'))
                                                          AS 'RoomRevenueYesterday',

  -- Settlements / payments (total aaj, non-room)
  (SELECT ISNULL(SUM(AmtCr)-SUM(AmtDr),0)
     FROM RevMast RM LEFT JOIN PayCharge PC ON RM.Code=PC.PayCode
     WHERE RM.FIELDTYPE='P' AND PC.PayType<>'' AND PC.PayType<>'Room'
       AND PC.VDate=@Date)                                 AS 'TotalSettlements',

  -- Tax
  (SELECT ISNULL(SUM(PC.AmtDr),0)
     FROM Paycharge PC JOIN Revmast RM ON RM.Code=PC.PayCode
     WHERE RM.FieldType='T'
       AND CONVERT(DATETIME,CONVERT(VARCHAR(11),PC.VDate,102))=@Date)
                                                          AS 'TotalTax',

  -- Banquet outside
  (SELECT ISNULL(SUM(AA.NETAMT),0) FROM (
        SELECT SUM(AMOUNT) AS NETAMT FROM suntran
           WHERE vtype IN ('IDC','ODC') AND VDate=@Date
        UNION ALL
        SELECT SUM(AMOUNT) AS NETAMT FROM suntranH
           WHERE vtype IN ('IDC','ODC') AND VDate=@Date
     ) AA)                                                AS 'BanquetAmount',

  -- Round off POS
  (SELECT ISNULL(SUM(RoundOff),0) FROM Sale1
     WHERE Delflag='N' AND VDate=@Date)                    AS 'RoundOff',

  -- Advances
  (SELECT ISNULL(SUM(AmtCr),0) FROM PayCharge
     WHERE AmtCr<>0 AND ModeSet<>'S' AND VDate=@Date
       AND PayCode NOT IN ('SSDISC'))                      AS 'AdvanceFOM',
  (SELECT ISNULL(SUM(Advance),0) FROM HallSale1
     WHERE VDate=@Date)                                    AS 'AdvanceBanq',

  -- Misc receipts
  (SELECT ISNULL(SUM(Amount),0) FROM ExpSheet
     WHERE Vtype='HTSAL' AND ExpSheet.VDate=@Date)         AS 'MiscReceipts'
;

-- =====================================================================
-- [B] DETAIL - payment method wise (aaj)
-- =====================================================================
SELECT Code AS PayCode,
       MAX(Name) AS PayName,
       MAX(RevMast.PayType) AS [PayType],
       SUM(AmtCr)-SUM(AmtDr) AS PayAmount
FROM RevMast
LEFT JOIN PayCharge ON RevMast.Code=PayCharge.PayCode
WHERE RevMast.FIELDTYPE='P'
  AND paycharge.PayType<>'' AND paycharge.PayType<>'Room'
  AND VDate=@Date
GROUP BY Code
ORDER BY PayName;

-- =====================================================================
-- [C] DETAIL - tax code wise (aaj)
-- =====================================================================
SELECT PC.PayCode AS TaxCode, RM.Name AS TaxName,
       SUM(PC.AmtDr) AS TaxAmount
FROM Paycharge PC
JOIN Revmast RM ON RM.Code=PC.PayCode
WHERE RM.FieldType='T'
  AND CONVERT(DATETIME,CONVERT(VARCHAR(11),PC.VDate,102))=@Date
GROUP BY PC.PayCode, RM.Name
ORDER BY RM.Name;

-- =====================================================================
-- [D] DETAIL - room categories
-- =====================================================================
SELECT Code AS RoomCat, Name AS RoomCatName, ShortName
FROM RoomCat WHERE Type='RO' ORDER BY Name;

-- =====================================================================
-- NOTE: '<<DISC>>' ki jagah apna Discount revenue code daalo (chhodo to
-- AdvanceFOM me sab come karega). Baaki placeholders hata diye hain -
-- ab sab ek hi run me saath saath dikhega.
-- =====================================================================
