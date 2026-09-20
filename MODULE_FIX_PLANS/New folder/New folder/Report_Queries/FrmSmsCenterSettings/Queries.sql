# ==========================================================
# Module: FrmSmsCenterSettings
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: EmailSMSForward
-- --------------------------------------------
Delete From EmailSMSForward
    Where Type In ('Common','Holiday','Outstanding','Birth Day','Marriage Anniversary') And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: EmailSMSForward
-- --------------------------------------------
Update EmailSMSForward
    Set FlagType='FOM',DepartCode='<LogSiteCode>FOM'
    Where Type In ('Reservation','Reservation Cancel','Check In','Check Out') And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: EmailSMSForward
-- --------------------------------------------
Update EmailSMSForward
    Set FlagType='BANQ',DepartCode='<LogSiteCode>BANQ'
    Where Type In ('Booking','Booking Cancel') And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 4
-- Uses table: EmailSMSForward
-- --------------------------------------------
Select IsNull(Max(Id),0)+1 From EmailSMSForward;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [EmailSMSForward]  NOT present in visahl.sql dump (schema unknown)
