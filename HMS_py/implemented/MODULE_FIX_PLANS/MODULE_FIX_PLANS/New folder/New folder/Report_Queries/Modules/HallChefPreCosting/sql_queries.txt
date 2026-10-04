# ==========================================================
# Module: HallChefPreCosting
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: HallPreCosting
-- --------------------------------------------
Delete From HallPreCosting
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 2
-- Uses table: VenueMast
-- Uses table: VenueOcc
-- --------------------------------------------
Select VC.*,D.Name as VenuName From VenueOcc VC
    Left Join VenueMast D On VC.VenuCode=D.Code
    Where VC.FPDocId='<FPDocId>';

-- --------------------------------------------
-- Query 3
-- Uses table: PayChargeH
-- --------------------------------------------
Select AmtCr,PayType,VNo,VDate FROM PayChargeH
    Where VType='AD' AND ContraDocId='<ContraDocId>';

-- --------------------------------------------
-- Query 4
-- Uses table: VenueMast
-- Uses table: VenueOCC
-- --------------------------------------------
Select VC.*,D.Name as VenuName From VenueOCC VC
    Left Join VenueMast D On VC.VenuCode=D.Code
    Where VC.FPDocId='<FPDocId>';

-- --------------------------------------------
-- Query 5
-- Uses table: FunctionType
-- --------------------------------------------
SELECT Name FROM FunctionType
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 6
-- Uses table: HallBook
-- --------------------------------------------
Select S.* From HallBook S
    Where S.Docid='<Docid>';

-- --------------------------------------------
-- Query 7
-- Uses table: HallPreCosting
-- Uses table: ItemMast
-- --------------------------------------------
Select S.*,I.Name as ItemName From HallPreCosting S
    Left Join ItemMast I On S.Item=I.Code And S.RestCode=I.RestCode
    Where S.DocId='<DocId>';

-- --------------------------------------------
-- Query 8
-- Uses table: HallBook
-- --------------------------------------------
Select Distinct DocId,V_Type,V_No From HallBook
    Where DocID='<DocID>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [FunctionType]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallBook]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallPreCosting]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [PayChargeH]  NOT present in visahl.sql dump (schema unknown)
-- Table [VenueMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [VenueOCC]  NOT present in visahl.sql dump (schema unknown)
-- Table [VenueOcc]  NOT present in visahl.sql dump (schema unknown)
