# ==========================================================
# Module: FrmFomBillDeletion
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Depart
-- --------------------------------------------
SELECT Code,Name,RestType,DiscApp FROM Depart
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND RestType='Fom'
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: RevMast
-- --------------------------------------------
SELECT Code,Name,PayType FROM RevMast
    Where PayType In('Cash','Member','Credit Card','Company','Complementary') And (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND FieldType='P'
    ORDER BY Name;

-- --------------------------------------------
-- Query 3
-- Uses table: TempPosDel
-- --------------------------------------------
Delete from TempPosDel;

-- --------------------------------------------
-- Query 4
-- Uses table: FomBillDetails
-- --------------------------------------------
Delete From FomBillDetails
    Where FolioNoDocID='<FolioNoDocID>' And RTrim(LTrim(Bill_no))='<Param>';

-- --------------------------------------------
-- Query 5
-- Uses table: Paycharge
-- --------------------------------------------
Select count(*) From Paycharge
    Where FolioNoDocID='<FolioNoDocID>' And RTrim(LTrim(Bill_no))='<Param>';

-- --------------------------------------------
-- Query 6
-- Uses table: Paycharge
-- --------------------------------------------
Delete From Paycharge
    Where FolioNoDocID='<FolioNoDocID>';

-- --------------------------------------------
-- Query 7
-- Uses table: TempPosDel
-- --------------------------------------------
Select * from TempPosDel
    Order By OldVno;

-- --------------------------------------------
-- Query 8
-- Uses table: TempPosDel
-- --------------------------------------------
Update TempPosDel
    Set NewVno=<NewVno>
    Where OldDocId='<OldDocId>' And OldVno=<OldVno>;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [FomBillDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [Paycharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [TempPosDel]  NOT present in visahl.sql dump (schema unknown)
