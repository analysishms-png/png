# ==========================================================
# Module: CateringBooking
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where lOGSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: HallSale1
-- --------------------------------------------
SELECT Count(*) FROM HallSale1
    WHERE Vtype='IDC' AND BookDocId='<BookDocId>';

-- --------------------------------------------
-- Query 3
-- Uses table: PayChargeH
-- --------------------------------------------
SELECT Count(*) From PayChargeH
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 4
-- Uses table: HallBook1
-- --------------------------------------------
Delete From HallBook1
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 5
-- Uses table: HallBook1
-- --------------------------------------------
Select HB.*,HB1.SNo,HB1.Item,HB1.QtyIss,HB1.Rate,HB1.Amount As LineAmt,HB1.Unit,HB1.TaxPer AS LineTaxPer,HB1.TaxAmt, HB1.DiscPer As LineDiscP,HB1.DiscAmt as LineDiscA,HB1.Remarks,HB1.Total As LineTotal,I.name As IName,ItemGrp.Name As ItemGrpName From ((HallBook HB
    INNER Join HallBook1 HB1 on HB.DocID=HB1.DocID) ';

-- --------------------------------------------
-- Query 6
-- Uses table: FunctionType
-- --------------------------------------------
SELECT Name FROM FunctionType
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 7
-- Uses table: HallBook
-- --------------------------------------------
Select S.* From HallBook S
    Where S.Docid='<Docid>';

-- --------------------------------------------
-- Query 8
-- Uses table: ItemCatMast
-- Uses table: ItemMast
-- --------------------------------------------
SELECT S.*, I.Name AS ItemName, I.Type, ItemCatMast.CatType FROM (HallBook1 AS S
    LEFT JOIN ItemMast AS I ON S.Item = I.Code)
    LEFT JOIN ItemCatMast ON I.ItemCatCode = ItemCatMast.Code
    Where S.DocId='<DocId>'
    Order By S.Sno;

-- --------------------------------------------
-- Query 9
-- Uses table: HallBook
-- --------------------------------------------
Select Distinct DocId,V_Type,V_No From HallBook
    Where DocID='<DocID>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [FunctionType]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallBook]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallBook1]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallSale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [PayChargeH]  NOT present in visahl.sql dump (schema unknown)
