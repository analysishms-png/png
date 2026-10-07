==============================================================================
 STOCK REPORTS - ItemMast.GrpName JOIN VERSION (SQL SERVER ONLY)
 Ye file real ItemMast master (ya SECTION 0 ke seed) ke sath chalti hai.
 visahl.sql DUMP ke liye ye file NAHI chalegi jab tak SECTION 0 seed na
 chalao - dump-only version ke liye stock_reports_queries.sql dekho.
 Pattern   : LEFT JOIN + COALESCE(IM.GrpName,'OTHER') = missing items 'OTHER' group me
 ORDER     : har report GrpName pehle (Crystal .rpt ke group field jaisa)
 Source    : sql_queries.py ke prefix-CASE versions ka JOIN translation
==============================================================================

-- SECTION 0: ItemMast seed (SIRF tab chalega jab DB me ItemMast pehle se NAHI ho)
--            Real DB me skip hoga (guard ke wajah se) - aapka existing ItemMast use hoga.
IF OBJECT_ID('dbo.ItemMast','U') IS NULL
BEGIN
  CREATE TABLE dbo.ItemMast (
    ItemCode NVARCHAR(50) PRIMARY KEY,
    ItemName NVARCHAR(100),
    GrpName  NVARCHAR(50),
    Unit     NVARCHAR(20)
  );
  INSERT INTO dbo.ItemMast (ItemCode, ItemName, GrpName, Unit) VALUES
  ('ATTA001','ATTA 10KG PACK','ATTA','KG'),
  ('ATTA002','ATTA 5KG PACK','ATTA','KG'),
  ('OIL001','REFINED OIL','OIL','LTR'),
  ('RICE001','BASMATI RICE','RICE','KG'),
  ('SUGR001','SUGAR','SUGAR','KG'),
  ('TEA001','PREMIUM TEA','TEA','KG'),
  ('VODKA001','VODKA SMIRNOFF','VODKA','BTL'),
  ('WHKY001','WHISKY BLACK LABEL','WHISKY','BTL'),
  ('WINE001','RED WINE','WINE','BTL');
END
GO

------------------------------------------------------------------------------
-- STOCKREGISTER  (ItemMast JOIN version)
------------------------------------------------------------------------------
-- STOCK REGISTER (ItemMast JOIN): GrpName ke hisaab se ordered
DECLARE @F DATE='2016-09-01', @T DATE='2016-09-30';
SELECT COALESCE(IM.GrpName,'OTHER') AS GrpName, S.Item,
       SUM(CASE WHEN S.Vdate < @F THEN ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0) ELSE 0 END) AS OpeningQty,
       SUM(CASE WHEN S.Vdate BETWEEN @F AND @T THEN ISNULL(S.QtyRec,0) ELSE 0 END) AS PurchaseQty,
       SUM(CASE WHEN S.Vdate BETWEEN @F AND @T THEN ISNULL(S.QtyIss,0) ELSE 0 END) AS IssueQty,
       SUM(CASE WHEN S.Vdate <= @T THEN ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0) ELSE 0 END) AS ClosingQty,
       SUM(CASE WHEN S.Vdate <= @T THEN ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0) ELSE 0 END) * MAX(ISNULL(S.Rate,0)) AS ClosingValue
FROM Stock S
LEFT JOIN ItemMast IM ON IM.ItemCode = S.Item
GROUP BY COALESCE(IM.GrpName,'OTHER'), S.Item
ORDER BY COALESCE(IM.GrpName,'OTHER'), S.Item;

------------------------------------------------------------------------------
-- STOCKSUMM  (ItemMast JOIN version)
------------------------------------------------------------------------------
-- STOCK SUMMARY (ItemMast JOIN): GrpName pehle, phir value DESC
SELECT COALESCE(IM.GrpName,'OTHER') AS GrpName, S.Item,
       SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) AS BalQty,
       SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) * MAX(ISNULL(S.Rate,0)) AS StockValue
FROM Stock S
LEFT JOIN ItemMast IM ON IM.ItemCode = S.Item
WHERE S.VoidYN <> 'Y' OR S.VoidYN IS NULL
GROUP BY COALESCE(IM.GrpName,'OTHER'), S.Item
ORDER BY COALESCE(IM.GrpName,'OTHER'), StockValue DESC;

------------------------------------------------------------------------------
-- STOCKINHAND  (ItemMast JOIN version)
------------------------------------------------------------------------------
-- STOCK IN HAND (ItemMast JOIN): Crystal report (StockInHand.rpt) ke GrpName group jaisa order
SELECT COALESCE(IM.GrpName,'OTHER') AS GrpName, S.Item,
       SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) AS StockInHand,
       MAX(ISNULL(S.Unit,'')) AS Unit, MAX(ISNULL(S.Rate,0)) AS LastRate
FROM Stock S
LEFT JOIN ItemMast IM ON IM.ItemCode = S.Item
WHERE ISNULL(S.VoidYN,'') <> 'Y'
GROUP BY COALESCE(IM.GrpName,'OTHER'), S.Item
HAVING SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) <> 0
ORDER BY COALESCE(IM.GrpName,'OTHER'), S.Item;

------------------------------------------------------------------------------
-- KITCHENSTKREP  (ItemMast JOIN version)
------------------------------------------------------------------------------
-- KITCHEN STOCK REPORT (ItemMast JOIN): Kitchen -> GrpName -> Item order
SELECT ISNULL(NULLIF(S.ItemRestCode,S.RestCode),'KITCHEN') AS Kitchen,
       COALESCE(IM.GrpName,'OTHER') AS GrpName, S.Item,
       SUM(ISNULL(S.QtyRec,0)-ISNULL(S.QtyIss,0)) AS KitchenStock,
       MAX(ISNULL(S.Unit,'')) AS Unit
FROM Stock S
LEFT JOIN ItemMast IM ON IM.ItemCode = S.Item
GROUP BY ISNULL(NULLIF(S.ItemRestCode,S.RestCode),'KITCHEN'),
         COALESCE(IM.GrpName,'OTHER'), S.Item
ORDER BY ISNULL(NULLIF(S.ItemRestCode,S.RestCode),'KITCHEN'),
         COALESCE(IM.GrpName,'OTHER'), S.Item;
