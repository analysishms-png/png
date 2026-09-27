# ==========================================================
# Module: memFacilityMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: MemFacilityMast
-- --------------------------------------------
Delete From MemFacilityMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: MemFacilityMast
-- Uses table: SubGroup
-- Uses table: TaxStru
-- --------------------------------------------
SELECT DISTINCT MF.Code, MF.Name , MF.SName , MF.ChargeType , MF.FixedRate , MF.PrimaryMember , MF.Spouse, MF.Child,MF.AddAdult,MF.AddChild,TS.Code As TCode , TS.Name As TName , SB.SubCode As ACode , SB.Name as AName , CASE MF.ActiveYN WHEN 'Y' then 'Yes' ELSE 'No' END, MF.LOGSITE_CODE , MF.Site_Code FROM MemFacilityMast MF
    LEFT join TaxStru TS On MF.TaxStru = TS.Code
    LEFT join SubGroup SB on MF.ACCode = SB.SubCode
    WHERE (MF.LOGSITE_CODE='<LogSiteCode>' or MF.LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 3
-- Uses table: MemFacilityMast
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From MemFacilityMast;

-- --------------------------------------------
-- Query 4
-- Uses table: SubGroup
-- --------------------------------------------
SELECT SubCode AS Code,Name FROM SubGroup
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 5
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT distinct Revmast.Code as Code,RevMast.Name as Name,RevMast.taxstru as TaxCode,TaxStru.name as Taxname FROM RevMast
    left join TaxStru on Taxstru.Code=Revmast.Taxstru
    where (Revmast.LOGSITE_CODE='<LogSiteCode>' or RevMast.LOGSITE_CODE='HO') AND FlagType='FOM' AND FlagAMR='Detail'
    ORDER BY Revmast.Name;

-- --------------------------------------------
-- Query 6
-- Uses table: TaxStru
-- --------------------------------------------
SELECT distinct Code,Name FROM TaxStru
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 7
-- Uses table: MemFacilityMast
-- Uses table: SubGroup
-- Uses table: TaxStru
-- --------------------------------------------
SELECT DISTINCT MF.Code,MF.Name,MF.SName,MF.U_AE,MF.U_Name,MF.U_EntDt,MF.ChargeType,MF.FixedRate,MF.PrimaryMember,MF.Spouse, MF.Child,MF.AddAdult,MF.AddChild,TS.Code As TCode , TS.Name As TName , SB.SubCode As ACode , SB.Name as AName , MF.ActiveYN, MF.LOGSITE_CODE , MF.Site_Code FROM MemFacilityMast MF
    LEFT join TaxStru TS On MF.TaxStru = TS.Code
    LEFT join SubGroup SB on MF.ACCode = SB.SubCode
    WHERE (MF.LOGSITE_CODE='<LogSiteCode>' or MF.LOGSITE_CODE='HO');



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [MemFacilityMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
