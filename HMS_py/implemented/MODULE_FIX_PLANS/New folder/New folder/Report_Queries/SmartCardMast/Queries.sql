# ==========================================================
# Module: SmartCardMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ItemMast
-- --------------------------------------------
Select IsNull(Max(Name),'') From ItemMast
    Where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
