# ==========================================================
# Module: FrmItemIssuedOnCleaning
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ITEMRATE
-- --------------------------------------------
SELECT RATE FROM ITEMRATE
    WHERE ITEMCODE='<ITEMCODE>' AND RestCode='<RestCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: DepartWiseItemIssueList
-- Uses table: GodownMast
-- Uses table: ItemMast
-- --------------------------------------------
Select D.SNo,D.Item,I.Name As ItemName,I.Unit,D.IssQty,D.FrDepart,FrG.Name As FrDepartName,D.ToDepart,ToG.Name As ToDepartName,I.RestCode From DepartWiseItemIssueList D
    Left Join ItemMast I On I.Code=D.Item And I.ItemType='Store'
    Left Join GodownMast FrG On D.FrDepart=FrG.Code
    Left Join GodownMast ToG On D.ToDepart=ToG.Code
    where D.FrDepart+D.ToDepart='<ToDepart>'
    Order By Sno;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [DepartWiseItemIssueList]  NOT present in visahl.sql dump (schema unknown)
-- Table [GodownMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ITEMRATE]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
