# ==========================================================
# Module: FrmClaimEntry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: LostFoundDetail
-- --------------------------------------------
SELECT Code AS Scode,FDate,Ftime,FArea,FindBy,Description,UName1,ClaimedBy,ContactNo,OtherDetail,DeliveredBy,DDate,Status FROM LostFoundDetail
    Order BY Code;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [LostFoundDetail]  NOT present in visahl.sql dump (schema unknown)
