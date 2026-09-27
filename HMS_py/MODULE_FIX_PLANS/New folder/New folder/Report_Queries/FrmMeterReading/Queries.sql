# ==========================================================
# Module: FrmMeterReading
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: FMReading
-- --------------------------------------------
Delete From FMReading
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: FMReading1
-- --------------------------------------------
Delete From FMReading1
    Where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [FMReading]  NOT present in visahl.sql dump (schema unknown)
-- Table [FMReading1]  NOT present in visahl.sql dump (schema unknown)
