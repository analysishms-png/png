# ==========================================================
# Module: FrmMenuRate
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ItemMast
-- --------------------------------------------
Select I.Code,I.Name as Name,I.DispCode,I.RestCode OutletCode From ItemMast I
    Where I.Type='Finish' And I.ItemType<>'Store' And I.DispCode <>9999 and I.ActiveYN<>'No'
    Order by I.Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
