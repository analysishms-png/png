# ==========================================================
# Module: rRepTel
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Site
-- --------------------------------------------
Select Site_Code AS Code,Site_Desc AS NAME From Site
    Order by Site_Desc;

-- --------------------------------------------
-- Query 2
-- Uses table: EPABX_Data
-- --------------------------------------------
Select Distinct PNT_NO As PNTNo,PNT_No As Code From EPABX_Data
    Order by PNT_NO;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [EPABX_Data]  NOT present in visahl.sql dump (schema unknown)
-- Table [Site]  NOT present in visahl.sql dump (schema unknown)
