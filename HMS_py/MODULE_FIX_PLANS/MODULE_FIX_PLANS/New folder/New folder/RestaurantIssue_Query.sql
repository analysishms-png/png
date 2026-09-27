-- =====================================================
-- RESTAURANT ISSUE REPORT (RestIssue)
-- 01/04/2025 se aaj tak
-- Item-wise restaurant issues (RQI vouchers)
-- Site: ss
-- =====================================================

DECLARE @FromDate   datetime = '2025-04-01';  -- 01 April 2025
DECLARE @ToDate     datetime = GETDATE();     -- aaj ki date (fixed date chahiye to yahan likh do, jaise '2026-09-03')
DECLARE @SiteCode   varchar(10) = 'ss';       -- apna login site code
-- Restaurant filter:
--   ''  = saare restaurants ka data
--   warna comma-separated restaurant codes, jaise  'R01,R02'
DECLARE @RestFilter varchar(500) = '';

SELECT S.Item                                  AS ItemCode,
       MAX(IM.Name)                            AS ItemName,
       SUM(S.QtyIss)                           AS Qty,
       SUM(S.Amount)                           AS TotCost,
       CASE WHEN SUM(S.QtyIss) > 0
            THEN SUM(S.Amount) / SUM(S.QtyIss)
            ELSE 0 END                         AS AvgRate
FROM Stock S
LEFT JOIN ItemMast IM ON IM.Code = S.Item
LEFT JOIN Voucher_Type VT ON VT.V_Type = S.VType AND S.LogSite_Code = VT.LogSite_Code
WHERE S.VDate BETWEEN @FromDate AND @ToDate
  AND IM.ItemType = 'Store'
  AND S.LogSite_Code = @SiteCode
  AND ( @RestFilter = ''
        OR CHARINDEX(',' + S.RestCode + ',', ',' + @RestFilter + ',') > 0 )
  AND VT.NCat IN ('RQI')                       -- RQI = Restaurant Issue voucher type
GROUP BY S.Item
ORDER BY ItemName