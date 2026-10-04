# ==========================================================
# Module: MemRenewalEntry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: MemCatMast
-- --------------------------------------------
SELECT Code,Name FROM MemCatMast
    Where Corporate='Y';

-- --------------------------------------------
-- Query 2
-- Uses table: MemCatMast
-- --------------------------------------------
SELECT Code,Name FROM MemCatMast
    Where Corporate='N';

-- --------------------------------------------
-- Query 3
-- Uses table: MemCatMast
-- Uses table: Subgroup
-- --------------------------------------------
UPDATE Subgroup
    SET ValidFrom='SELECT '' as a, S.Name As Name , MCat.Name As Type , Convert(varchar,S.ValidFrom,103) as ValidFrom ,Convert(varchar,S.ValidateUpto,103) As ValidUntil , Convert(varchar,MHis.RenewalDate ,103) As RenewalDate, S.Subcode as Code FROM Subgroup S
    join MemCatMast MCat on S.Companytype = MCat.Code ', Validateupto='<Validateupto>'
    WHERE SubCode='<SubCode><Param>' AND Site_Code='<Site_Code>' AND LogSite_Code='<LogSiteCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [MemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
