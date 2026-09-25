# ==========================================================
# Module: OutLetSundry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: SundryType
-- --------------------------------------------
Delete From SundryType
    Where V_Type='XXX';

-- --------------------------------------------
-- Query 2
-- Uses table: Enviro
-- --------------------------------------------
Select SundryPassword from Enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: SundryMast
-- Uses table: SundryTypeFix
-- --------------------------------------------
SELECT SF.*,SM.Name as SundryName FROM SundryTypeFix SF
    INNER JOIN SundryMast SM ON SF.SundryCode = SM.Code
    where (SF.LOGSITE_CODE='<LogSiteCode>' or SF.LOGSITE_CODE='HO')
    Order By SNo;

-- --------------------------------------------
-- Query 4
-- Uses table: Depart
-- Uses table: RevMast
-- Uses table: SundryMast
-- Uses table: SundryType
-- --------------------------------------------
Select SP.*,SM.Name As SundryName,RM.Name As RevName,'B'+D.ShortName V_Type1 From SundryType SP
    Left Join SundryMast SM On SP.SundryCode=SM.Code
    Left Join RevMast RM On SP.RevCode=RM.Code
    Left Join Depart D On RM.DeskCode=D.Code
    Where SP.LogSite_Code='<LogSiteCode>' And SP.V_Type='XXX'
    Order By SP.SNo;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryType]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryTypeFix]  NOT present in visahl.sql dump (schema unknown)
