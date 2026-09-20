# ==========================================================
# Module: HallSundry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Voucher_Type
-- --------------------------------------------
Select V_Type From Voucher_Type
    Where LogSite_Code in ('<LogSiteCode>','HO') And RestCode='<RestCode>' And NCat IN ('BBILL');

-- --------------------------------------------
-- Query 2
-- Uses table: SundryMast
-- Uses table: SundryTypeFix
-- --------------------------------------------
SELECT SF.*,SM.Name as SundryName FROM SundryTypeFix SF
    Inner JOIN SundryMast SM ON SF.SundryCode = SM.Code
    Where SF.LogSite_Code='<LogSiteCode>'
    Order By SNo;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [SundryMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryTypeFix]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
