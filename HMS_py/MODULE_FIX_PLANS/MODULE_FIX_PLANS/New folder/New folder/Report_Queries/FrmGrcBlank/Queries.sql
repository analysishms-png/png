# ==========================================================
# Module: FrmGrcBlank
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Enviro
-- --------------------------------------------
Select IncReservationInBlankGRC from Enviro
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: Booking
-- --------------------------------------------
Select DocId From Booking
    Where (Vtype='RES' and BookNo=<BookNo> and vprefix='<vprefix>' and LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO');



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Booking]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
