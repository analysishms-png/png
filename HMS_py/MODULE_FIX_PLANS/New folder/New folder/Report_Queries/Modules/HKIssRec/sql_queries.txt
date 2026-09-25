# ==========================================================
# Module: HKIssRec
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Voucher_Type
-- --------------------------------------------
Select Description,V_Type From Voucher_Type
    Where V_tYPE IN <Param>;

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
Select 'I'+ShortName From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: Depart
-- --------------------------------------------
Select 'R'+ShortName From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 5
-- Uses table: ItemGrp
-- Uses table: ItemMast
-- --------------------------------------------
Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,I.LPurRate From ItemMast I
    left join ItemGrp IG on I.ItemGroup=IG.Code
    WHERE I.TYPE IN ('Store Item','Consumables') AND IG.TYPE IN ('Store Item','Consumables') And I.ItemType='Store'
    Order by I.Name;

-- --------------------------------------------
-- Query 6
-- Uses table: Depart
-- Uses table: GodownMast
-- --------------------------------------------
SELECT D.Code, GodownMast.Name FROM Depart AS D
    RIGHT JOIN GodownMast ON D.Code = GodownMast.Code
    where resttype='House Keeping';

-- --------------------------------------------
-- Query 7
-- Uses table: STOCK
-- --------------------------------------------
Select S.* From STOCK S
    Where S.Docid='<Docid>';

-- --------------------------------------------
-- Query 8
-- Uses table: ItemMast
-- Uses table: ROOMMAST
-- --------------------------------------------
Select S1.*,I.name as ItemName,R.NAME AS ROOM From (STOCK S1
    Left Join ItemMast I On S1.Item=I.Code And I.ItemType='Store')
    Left Join ROOMMAST R On S1.ROOMNO=R.Code
    Where S1.DocId='<DocId>';

-- --------------------------------------------
-- Query 9
-- Uses table: STOCK
-- --------------------------------------------
Select Distinct DocId,VType,VNo From STOCK
    Where DocID='<DocID>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [GodownMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemGrp]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [STOCK]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
