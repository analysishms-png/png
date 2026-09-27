# ==========================================================
# Module: frmTallyExport
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: AcGroup
-- Uses table: Acgroup
-- --------------------------------------------
Select Distinct Grp.GroupName,Grp1.GroupName As UnderGroupName,Cast(Grp.MainGrCode As Numeric) As nMainGrCode From Acgroup Grp
    Left Join AcGroup Grp1 On Grp1.MainGrCode=substring(Grp.MainGrCode,1,len(Grp.MainGrCode)-3)
    WHERE (Grp.LOGSITE_CODE='<LogSiteCode>' OR Grp.LOGSITE_CODE='HO')
    Order By Cast(Grp.MainGrCode As Numeric);

-- --------------------------------------------
-- Query 2
-- Uses table: AcGroup
-- Uses table: City
-- Uses table: State
-- Uses table: Subgroup
-- --------------------------------------------
Select M.*, G.Groupname, S.Name as Statename, G.Sysgroup From Subgroup M
    Left Join AcGroup G On M.GroupCode=G.GroupCode
    Left Join City C On M.Citycode=C.Citycode
    Left Join State S On C.Statecode=S.code
    where (M.LOGSITE_CODE='<LogSiteCode>' OR M.LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 3
-- Uses table: Ledger
-- --------------------------------------------
Select max(TImp_Dt) as TImp_Dt from Ledger
    where Logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 4
-- Uses table: AcGroup
-- Uses table: Acgroup
-- --------------------------------------------
Select Distinct Grp.groupname,(select GroupName from AcGroup
    where MainGrCode=substring(Grp.MainGrCode,1,len(Grp.MainGrCode)-3)) as UnderGroupName From Acgroup Grp
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    Order By Grp.groupname;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [AcGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Acgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [State]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
