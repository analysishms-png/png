# ==========================================================
# Module: FrmTaxStruMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: TaxStru
-- --------------------------------------------
Delete From TaxStru
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
Select TaxStru.*,RevMast.Code as TaxCode, RevMast.Name as TaxName From TaxStru
    Left Join RevMast on RevMast.Code=TaxStru.TaxCode
    where (RevMast.LOGSITE_CODE='<LogSiteCode>' or RevMast.LOGSITE_CODE='HO') and RevMast.FieldType='T'
    Order by Sno;

-- --------------------------------------------
-- Query 3
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
Select TaxStru.*,RevMast.Code as TaxCode, RevMast.Name as TaxName From TaxStru
    Left Join RevMast on RevMast.Code=TaxStru.TaxCode
    where RevMast.FieldType='T' and TaxStru.Code='<Code>'
    Order by Sno;

-- --------------------------------------------
-- Query 4
-- Uses table: Taxstru
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From Taxstru
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [Taxstru]  NOT present in visahl.sql dump (schema unknown)
