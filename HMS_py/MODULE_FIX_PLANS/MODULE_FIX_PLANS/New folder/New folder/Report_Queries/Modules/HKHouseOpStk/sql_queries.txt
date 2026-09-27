# ==========================================================
# Module: HKHouseOpStk
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Voucher_Type
-- --------------------------------------------
Select Description,V_Type From Voucher_Type
    Where V_tYPE='<V_tYPE>';

-- --------------------------------------------
-- Query 2
-- Uses table: STOCK
-- --------------------------------------------
Delete From STOCK
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 3
-- Uses table: Depart
-- --------------------------------------------
Select 'O'+Depart.ShortName From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: ItemGrp
-- Uses table: ItemMast
-- --------------------------------------------
Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,I.LPurRate From ItemMast I
    left join ItemGrp IG on I.ItemGroup=IG.Code
    WHERE I.TYPE IN ('Store Item','Consumables') AND IG.TYPE IN ('Store Item','Consumables') And I.ItemType='Store'
    Order by I.Name;

-- --------------------------------------------
-- Query 5
-- Uses table: DEPART
-- Uses table: STOCK
-- --------------------------------------------
Select S.*,D.NAME AS RestName From STOCK S
    LEFT JOIN DEPART D ON D.CODE=S.RESTCODE
    Where S.Docid='<Docid>';

-- --------------------------------------------
-- Query 6
-- Uses table: ItemMast
-- Uses table: STOCK
-- --------------------------------------------
Select S1.*,I.name as ItemName From STOCK S1
    Left Join ItemMast I On S1.Item=I.Code And I.ItemType='Store'
    Where S1.DocId='<DocId>';

-- --------------------------------------------
-- Query 7
-- Uses table: STOCK
-- --------------------------------------------
Select MAX(vno)AS VNO From STOCK s
    Where s.VType='<VType>';

-- --------------------------------------------
-- Query 8
-- Uses table: STOCK
-- --------------------------------------------
Select Distinct DocId,VType,VNo From STOCK
    Where DocID='<DocID>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [DEPART]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemGrp]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [STOCK]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
