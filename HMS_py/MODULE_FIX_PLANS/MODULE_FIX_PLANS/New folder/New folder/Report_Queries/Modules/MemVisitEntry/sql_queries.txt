# ==========================================================
# Module: MemVisitEntry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: MemVisitEntry
-- --------------------------------------------
Update MemVisitEntry
    Set OUTDate=Member Visit Entry, U_EntDt=<U_EntDt>, OUTTime='<OUTTime>'
    Where Logsite_Code='<Logsite_Code>' And OUTDate IS NULL;

-- --------------------------------------------
-- Query 2
-- Uses table: MemEnviro
-- --------------------------------------------
Select * From MemEnviro
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: MemVisitEntry
-- --------------------------------------------
Select * From MemVisitEntry
    Where SerialNo=(Select Top 1 SerialNo From MemVisitEntry
    Where LogSite_Code='<LogSiteCode>' And MemCode='<MemCode>' And CardRegId='<CardRegId>'
    Order By SerialNo Desc) And INDate IS NOT NULL And OUTDate IS NULL;

-- --------------------------------------------
-- Query 4
-- Uses table: MemberFamily
-- --------------------------------------------
Select IsNull(Max(PicPath),'') From MemberFamily
    Where CardRegId='<CardRegId>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [MemEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemVisitEntry]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemberFamily]  NOT present in visahl.sql dump (schema unknown)
