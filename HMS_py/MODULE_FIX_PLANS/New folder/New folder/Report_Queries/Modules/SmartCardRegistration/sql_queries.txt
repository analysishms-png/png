# ==========================================================
# Module: SmartCardRegistration
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: GuestProf
-- Uses table: SmartCardRegistration
-- --------------------------------------------
SELECT R.Code As SearchCode,R.*,S.PicPath,S.IdPicPath SigPath,S.Name MemberName From SmartCardRegistration R
    Left Join GuestProf S On R.MemberCode=S.Code
    where R.CardType='Cash Card' And R.Site_Code='<Site_Code>' And (R.LOGSITE_CODE='<LogSiteCode>' or R.LOGSITE_CODE='HO')
    Order By R.IssDate,R.Code;

-- --------------------------------------------
-- Query 2
-- Uses table: MemberFamily
-- Uses table: SmartCardRegistration
-- Uses table: Subgroup
-- --------------------------------------------
SELECT R.Code As SearchCode,R.*,MF.PicPath,MF.SigPath,S.Name MemberName From SmartCardRegistration R
    Left Join MemberFamily MF On R.Code=MF.CardRegId
    Left Join Subgroup S On R.MemberCode=S.SubCode
    where R.Site_Code='<Site_Code>' And (R.LOGSITE_CODE='<LogSiteCode>' or R.LOGSITE_CODE='HO')
    Order By R.IssDate,R.Code;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [GuestProf]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemberFamily]  NOT present in visahl.sql dump (schema unknown)
-- Table [SmartCardRegistration]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
