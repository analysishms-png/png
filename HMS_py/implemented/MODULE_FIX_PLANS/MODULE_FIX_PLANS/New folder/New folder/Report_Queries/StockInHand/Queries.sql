# ==========================================================
# Report : Stock In Hand (StkINHand)  -- DIRECT SQL RUN VERSION
# Module : rInventRepView  ->  Sub StkINHand(formName, FRow, Fcol)
# Source : C:\FODER\HMS.bas  (Sub at ~line 644001, byte offset 1CC83D0)
#
# Ye "Stock In Hand" report ka data bananewale SQL queries hain.
# Har store item ka: opening stock (period se pehle), period me received,
# period me issued, aur closing stock (hand me kitna hai) dikhata hai.
#
# FORMULA :  Closing (Stock in Hand) = Opening + Received - Issued
#
# MODIFIED FOR DIRECT RUN: params concrete values se badal diye hain.
#   <SiteCode>  -> LogSite_Code  (abhi example 'RR'; apne site code se badlo)
#   <FromDate>  -> period start (abhi '2024-01-01')
#   <ToDate>    -> period end   (abhi '2024-01-31')
#
# Tables: Stock, ItemMast, Voucher_type, ItemGrp.
# Stock -> visahl.sql dump me hai (schema neeche diya hai).
# ==========================================================


-- ==========================================================
-- QUERY 1 : ITEM LIST (Store items with min/max/restock levels)
-- ==========================================================
SELECT DISTINCT
    S.Item,
    I.Name AS ItemName,
    S.Unit AS IssueUnit,
    I.MaxStock  * I.ConvRatio AS MaxStock,
    I.MinStock  * I.ConvRatio AS MinStock,
    I.ReStock  * I.ConvRatio AS ReStock,
    I.Type,
    I.DirectSale,
    ISNULL(ItemGrp.Name,'') ItemGrpName,
    I.ActiveYN
FROM (
        (Stock S INNER JOIN ItemMast I ON S.Item = I.Code AND I.ItemType = 'Store')
        INNER JOIN Voucher_type VT ON (S.VType = VT.V_Type AND S.LogSite_Code = VT.LogSite_Code)
     )
    LEFT JOIN ItemGrp ON ItemGrp.Code = I.ItemGroup
WHERE S.LogSite_Code = 'RR'


-- ==========================================================
-- QUERY 2 : OPENING STOCK (period se PEHLE received)
-- ==========================================================
SELECT
    S.Item,
    SUM(S.QtyRec) AS Qty,
    S.Unit,
    SUM(S.Amount) AS Amt
FROM (
        (Stock S INNER JOIN ItemMast I ON S.Item = I.Code AND I.ItemType = 'Store')
        INNER JOIN Voucher_type VT ON (S.VType = VT.V_Type AND S.LogSite_Code = VT.LogSite_Code)
     )
WHERE S.LogSite_Code = 'RR'
  AND S.VDate < '2024-01-01'
GROUP BY S.Item, S.Unit


-- ==========================================================
-- QUERY 3 : RECEIVED DURING PERIOD
-- ==========================================================
SELECT
    S.Item,
    SUM(S.QtyRec) AS Qty,
    S.Unit,
    SUM(S.Amount) AS Amt
FROM (
        (Stock S INNER JOIN ItemMast I ON S.Item = I.Code AND I.ItemType = 'Store')
        INNER JOIN Voucher_type VT ON (S.VType = VT.V_Type AND S.LogSite_Code = VT.LogSite_Code)
     )
WHERE S.LogSite_Code = 'RR'
  AND S.VDate BETWEEN '2024-01-01' AND '2024-01-31'
GROUP BY S.Item, S.Unit


-- ==========================================================
-- QUERY 4 : ISSUED DURING PERIOD
-- ==========================================================
SELECT
    S.Item,
    SUM(S.QtyIss) AS Qty,
    S.Unit,
    SUM(S.Amount) AS Amt
FROM (
        (Stock S INNER JOIN ItemMast I ON S.Item = I.Code AND I.ItemType = 'Store')
        INNER JOIN Voucher_type VT ON (S.VType = VT.V_Type AND S.LogSite_Code = VT.LogSite_Code)
     )
WHERE S.LogSite_Code = 'RR'
  AND S.VDate BETWEEN '2024-01-01' AND '2024-01-31'
GROUP BY S.Item, S.Unit


-- ==========================================================
-- QUERY 5 : CLOSING STOCK IN HAND  (SINGLE QUERY - YE RUN KARO)
-- Har item ka closing = Opening + Received - Issued.
-- ==========================================================
SELECT
    I.Name AS ItemName,
    I.Item,
    ISNULL(Op.Qty,0)                              AS Opening,
    ISNULL(Rec.Qty,0)                             AS Received,
    ISNULL(Iss.Qty,0)                             AS Issued,
    ISNULL(Op.Qty,0) + ISNULL(Rec.Qty,0) - ISNULL(Iss.Qty,0) AS ClosingStock
FROM ItemMast I
LEFT JOIN (
        SELECT S.Item, SUM(S.QtyRec) AS Qty
        FROM Stock S
        WHERE S.LogSite_Code = 'RR' AND S.VDate < '2024-01-01'
        GROUP BY S.Item
) Op   ON Op.Item = I.Code
LEFT JOIN (
        SELECT S.Item, SUM(S.QtyRec) AS Qty
        FROM Stock S
        WHERE S.LogSite_Code = 'RR'
          AND S.VDate BETWEEN '2024-01-01' AND '2024-01-31'
        GROUP BY S.Item
) Rec  ON Rec.Item = I.Code
LEFT JOIN (
        SELECT S.Item, SUM(S.QtyIss) AS Qty
        FROM Stock S
        WHERE S.LogSite_Code = 'RR'
          AND S.VDate BETWEEN '2024-01-01' AND '2024-01-31'
        GROUP BY S.Item
) Iss  ON Iss.Item = I.Code
WHERE I.ItemType = 'Store'
ORDER BY I.Name


# ==========================================================
# SCHEMA NOTES
# ==========================================================
# ItemMast, Voucher_type, ItemGrp -> visahl.sql dump me NAAHI hain (unknown).
# Stock -> visahl.sql dump me hai (neeche):

-- Table [Stock]  (schema from visahl.sql):
--     DocId            [varchar](21) NOT NULL
--     Sno              [smallint]   NOT NULL
--     Vtype            [varchar](5) NULL
--     VNo              [int]        NULL
--     Site_Code        [varchar](2) NULL
--     Vprefix          [varchar](5) NULL
--     Vdate            [datetime]   NULL
--     PartyCode        [varchar](8) NULL
--     RestCode         [varchar](6) NULL
--     RoomCat          [varchar](5) NULL
--     RoomType         [varchar](2) NULL
--     RoomNo           [varchar](5) NULL
--     ContraDocId      [varchar](21) NULL
--     ContraSno        [int]        NULL
--     Item             [varchar](8) NULL
--     QtyIss           [float]      NULL
--     QtyRec           [float]      NULL
--     Unit             [varchar](6) NULL
--     Rate             [float]      NULL
--     Amount           [float]      NULL
--     TaxPer           [float]      NULL
--     TaxAmt           [float]      NULL
--     DiscPer          [float]      NULL
--     DiscAmt          [float]      NULL
--     VoidYN           [varchar](1) NULL
--     Remarks          [varchar](75) NULL
--     KOTDocId         [varchar](21) NULL
--     KOTSno           [smallint]   NULL
--     VTime            [varchar](6) NULL
--     U_Name           [varchar](10) NULL
--     U_EntDt          [datetime]   NULL
--     U_AE             [varchar](1) NULL
# (Note: code uses S.LogSite_Code jo scheme me 'Site_Code' hoga / or
#  LogSite_Code column. Agar error aaye to 'LogSite_Code' ko apne DB ke
#  actual column naam se badlo - ya to 'Site_Code'.)
