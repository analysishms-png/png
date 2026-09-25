# ==========================================================
# Module: rRepHousePreview
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: FAEnviro
-- --------------------------------------------
Select * From FAEnviro;

-- --------------------------------------------
-- Query 2
-- Uses table: Depart
-- Uses table: RoomMast
-- --------------------------------------------
SELECT RoomMast.Code AS RoomNo,RoomMast.RoomStat AS Status, Depart.Name AS MaidStation FROM RoomMast
    LEFT JOIN Depart ON RoomMast.MaidStation = Depart.Code
    WHERE RoomMast.Type='RO'
    ORDER By Depart.Name,RoomMast.Code;

-- --------------------------------------------
-- Query 3
-- Uses table: RoomBlockOut
-- --------------------------------------------
SELECT RoomCode,Reasons FROM RoomBlockOut
    WHERE RoomCode='<RoomCode>' AND <Param> BETWEEN FromDate AND ToDate;

-- --------------------------------------------
-- Query 4
-- Uses table: roommast
-- --------------------------------------------
Select Count(*) from roommast
    where Type='RO' and InclCount='Y';

-- --------------------------------------------
-- Query 5
-- Uses table: ComplaintCategory
-- Uses table: Depart
-- --------------------------------------------
SELECT C.Code AS Scode,C.CDate AS CDate,C.CTime AS CTime,CC.Category AS Category,C.Description AS Description,Depart.Name AS Depart,C.UName AS UName,C.Status AS Status FROM (ComplaintDetail AS C
    Inner JOIN Depart ON C.Depart=Depart.Code)
    Inner JOIN ComplaintCategory CC ON C.Category=CC.Code <Param><Param>'
    ORDER BY CC.Category,C.Description;

-- --------------------------------------------
-- Query 6
-- Uses table: ItemMast
-- Uses table: ROOMMAST
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT S.DocId,S.Vdate,s.Sno,S.VNO,s.RoomNo,I.Name as Item,s.qtyISS as Qty FROM (((STOCK S
    Left Join ItemMast I On S.Item=I.Code And I.ItemType='Store')Left
    Join ROOMMAST R On S.RoomNo=R.Code)left
    join Voucher_Type V On V.V_Type=S.Vtype)<Param>
    Order By s.vdate,s.DocId,S.SNo,I.Name;

-- --------------------------------------------
-- Query 7
-- Uses table: ItemMast
-- Uses table: ROOMMAST
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT S.DocId,S.Vdate,s.Sno,S.VNo,s.RoomNo,I.Name as Item,s.qtyREC as Qty FROM (((STOCK S
    Left Join ItemMast I On S.Item=I.Code And I.ItemType='Store')Left
    Join ROOMMAST R On S.RoomNo=R.Code)left
    join Voucher_Type V On V.V_Type=S.Vtype)<Param>
    Order By s.vdate,s.DocId,S.SNo,I.Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [ComplaintCategory]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [FAEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomBlockOut]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [roommast]  NOT present in visahl.sql dump (schema unknown)
