# ==========================================================
# Module: FrmGuestAddObj
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Member
-- --------------------------------------------
Select * From Member
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 2
-- Uses table: Waiter
-- --------------------------------------------
Select Name From Waiter
    Where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Member]  NOT present in visahl.sql dump (schema unknown)
-- Table [Waiter]  NOT present in visahl.sql dump (schema unknown)
