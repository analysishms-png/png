# ==========================================================
# Module: RsBookingEntryAdvance
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: PackingOrder
-- --------------------------------------------
SELECT P.DocId AS Code, P.BNo AS Name,P.CustName,LogSite_Code,Site_Code FROM PackingOrder P
    WHERE LogSite_Code='<LogSiteCode>' and P.RestCode='<RestCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [PackingOrder]  NOT present in visahl.sql dump (schema unknown)
