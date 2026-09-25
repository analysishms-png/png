-- =====================================================================
-- OCCUPANCY CHECK - single query  (Room Occupancy Report)
-- DATE APNE HISAB SE DAALO:
--   neeche @Date me apni date likho, warna GETDATE() (=aaj) lega.
--   Format: 'YYYY-MM-DD'   (example: '2026-09-04')
-- =====================================================================
DECLARE @Date DATETIME = '2026-09-04';   -- <<< APNI DATE YAHAN BADLO
--DECLARE @Date DATETIME = GETDATE();     -- (ya is line ko use karo = aaj)

-- =====================================================================
-- [A] SUMMARY - overall occupancy (ek row)
-- OccupiedNow = us date tak check-in hua aur abhi tak checkout nahi (ya us date ke baad)
-- =====================================================================
SELECT
  CONVERT(VARCHAR(20),@Date,103)                                AS 'AsOnDate',

  -- Total sellable rooms
  (SELECT COUNT(*) FROM RoomMast
     WHERE Type='RO' AND InclCount='Y')                         AS 'TotalRooms',

  -- Rooms occupied as of that date
  (SELECT COUNT(*) FROM RoomOcc
     WHERE Type='O'
       AND ChkInDate <= @Date
       AND (ChkOutDate IS NULL OR ChkOutDate > @Date))          AS 'OccupiedOnDate',

  -- Rooms blocked / out-of-order for that date
  (SELECT COUNT(*) FROM RoomBlockOut
     WHERE Type='O'
       AND ((FromDate BETWEEN @Date AND @Date)
            OR (FromDate<=@Date AND ToDate>=@Date)))            AS 'BlockedRooms',

  -- Available = Total - Occupied - Blocked
  (SELECT COUNT(*) FROM RoomMast WHERE Type='RO' AND InclCount='Y')
   - (SELECT COUNT(*) FROM RoomOcc
        WHERE Type='O'
          AND ChkInDate <= @Date
          AND (ChkOutDate IS NULL OR ChkOutDate > @Date))
   - (SELECT COUNT(*) FROM RoomBlockOut
        WHERE Type='O'
          AND ((FromDate BETWEEN @Date AND @Date)
               OR (FromDate<=@Date AND ToDate>=@Date)))         AS 'AvailableRooms',

  -- Occupancy %
  CAST(ROUND(100.0 *
    (SELECT COUNT(*) FROM RoomOcc
       WHERE Type='O'
         AND ChkInDate <= @Date
         AND (ChkOutDate IS NULL OR ChkOutDate > @Date))
    / NULLIF((SELECT COUNT(*) FROM RoomMast WHERE Type='RO' AND InclCount='Y'),0)
  ,2) AS DECIMAL(5,2))                                         AS 'OccupancyPct'
;

-- =====================================================================
-- [B] DETAIL - room category wise occupied (us date par)
-- =====================================================================
SELECT RM.RoomCat AS RoomCat,
       ISNULL(RC.Name,'') AS RoomCatName,
       COUNT(DISTINCT RM.Code) AS TotalRooms_Cat,
       COUNT(DISTINCT CASE WHEN RO.RoomNo IS NOT NULL THEN RM.Code END) AS Occupied_Cat
FROM RoomMast RM
LEFT JOIN RoomCat RC ON RC.Code=RM.RoomCat
LEFT JOIN (SELECT DISTINCT RoomNo FROM RoomOcc
           WHERE Type='O'
             AND ChkInDate <= @Date
             AND (ChkOutDate IS NULL OR ChkOutDate > @Date)) RO
       ON RO.RoomNo=RM.Code
WHERE RM.Type='RO' AND RM.InclCount='Y'
GROUP BY RM.RoomCat, RC.Name
ORDER BY RM.RoomCat;

-- =====================================================================
-- [C] DETAIL - in-house guests (us date par check-in me)
-- =====================================================================
SELECT RO.RoomNo,
       RO.GuestProf AS GuestCode,
       RO.RoomCat,
       RO.RoomType,
       RO.Adult,
       RO.Children,
       CONVERT(VARCHAR(11),RO.ChkInDate,103) AS ChkInDate,
       CONVERT(VARCHAR(11),ISNULL(RO.DepDate,RO.ChkOutDate),103) AS ExpectedDepDate
FROM RoomOcc RO
WHERE RO.Type='O'
  AND RO.ChkInDate <= @Date
  AND (RO.ChkOutDate IS NULL OR RO.ChkOutDate > @Date)
ORDER BY RO.RoomNo;

-- =====================================================================
-- NOTE: Occupancy% = OccupiedOnDate / TotalRooms * 100.
-- OccupiedOnDate = jo room us date ko check-in me the (ChkInDate <= @Date
-- aur ChkOutDate NULL ya @Date ke baad).
-- =====================================================================
