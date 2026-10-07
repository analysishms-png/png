# ==========================================================
# Module: PIndent
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: POrder1
-- --------------------------------------------
Select Count(*) From POrder1
    Where IndentDocId='<IndentDocId>' And IndentSno=<IndentSno>;

-- --------------------------------------------
-- Query 2
-- Uses table: STOCK
-- --------------------------------------------
Select Count(*) From STOCK
    Where IndentDocId='<IndentDocId>' And IndentSno=<IndentSno>;

-- --------------------------------------------
-- Query 3
-- Uses table: Indent1
-- --------------------------------------------
Delete From Indent1
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 4
-- Uses table: Indent
-- --------------------------------------------
Select count(*) from Indent
    where DocID='<DocID>';

-- --------------------------------------------
-- Query 5
-- Uses table: Indent
-- --------------------------------------------
Delete From Indent
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 6
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT V_TYPE,DESCRIPTION FROM Voucher_Type
    WHERE Site_Code='<Site_Code>' and logsite_code='<LogSiteCode>' and NCAT IN ('PIND')
    ORDER BY DESCRIPTION;

-- --------------------------------------------
-- Query 7
-- Uses table: GodownMast
-- Uses table: Voucher_Type
-- --------------------------------------------
Select I.*,Description,d.Name as DepartmentName From (Indent I
    Inner join Voucher_Type VT on Vt.V_type=I.VType)
    Inner join GodownMast D on D.CODE=I.Department
    where DocID='<DocID>';

-- --------------------------------------------
-- Query 8
-- Uses table: INDENT
-- --------------------------------------------
SELECT COUNT(*) FROM INDENT
    WHERE DOCID='<DOCID>';

-- --------------------------------------------
-- Query 9
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS
    LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code
    Where TS.Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [GodownMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [INDENT]  NOT present in visahl.sql dump (schema unknown)
-- Table [Indent]  NOT present in visahl.sql dump (schema unknown)
-- Table [Indent1]  NOT present in visahl.sql dump (schema unknown)
-- Table [POrder1]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [STOCK]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
