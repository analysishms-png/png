# ==========================================================
# Module: FaGrEnt
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: acgroup
-- --------------------------------------------
select SYSGROUP,GroupName,Nature,GNature= CASE GroupNature WHEN 'A' THEN 'A S S E T S' WHEN 'E' THEN 'E X P E N D I T U R E' WHEN 'L' THEN 'L I A B I L I T Y' WHEN 'R' THEN 'R E V E N U E' ELSE 'Others' END,MainGrCode from acgroup
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    order by groupname;

-- --------------------------------------------
-- Query 2
-- Uses table: AcGroup
-- --------------------------------------------
Select GROUPCODE as SearchCode,ID,Site_Code,GroupCode,GroupName,GroupNameBiLang,GroupNature,MainGrCode,CurrentBalance,SubLedYN,BlOrd,AliasYN,GroupHelp,Nature,SysGroup,TRADINGYN,LogSite_Code From AcGroup
    Where (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO') AND AliasYN<>'Y'
    Order by GroupName;

-- --------------------------------------------
-- Query 3
-- Uses table: AcGroup
-- --------------------------------------------
Select GroupCode,GroupName,MainGrCode,Nature,AliasYN From AcGroup
    Where GroupCode='<GroupCode>';

-- --------------------------------------------
-- Query 4
-- Uses table: AcGroup
-- --------------------------------------------
Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup
    Where MainGrCode<>'999' AND (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    Order by GroupName;

-- --------------------------------------------
-- Query 5
-- Uses table: AcGroup
-- --------------------------------------------
Select GroupCode,GroupName,MainGrCode,Nature,AliasYN,TRADINGYN,GroupNature From AcGroup
    Where GroupCode='Duplicate Account Group not Allowed';

-- --------------------------------------------
-- Query 6
-- Uses table: Acgroup
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From Acgroup
    where groupCode='<groupCode>';

-- --------------------------------------------
-- Query 7
-- Uses table: AcGroup
-- --------------------------------------------
Select GroupName From AcGroup
    Where MainGrCode='<MainGrCode>';

-- --------------------------------------------
-- Query 8
-- Uses table: AcGroup
-- --------------------------------------------
Select GroupCode From AcGroup
    Where MainGrCode='<MainGrCode>';

-- --------------------------------------------
-- Query 9
-- Uses table: AcGroup
-- --------------------------------------------
Select COUNT(*) from AcGroup
    Where MAINGRCODE='<MAINGRCODE><Param>';

-- --------------------------------------------
-- Query 10
-- Uses table: ACGROUP
-- --------------------------------------------
SELECT * FROM ACGROUP
    WHERE LEFT(MAINGRCODE,LEN('<Param>'))='<Param>';

-- --------------------------------------------
-- Query 11
-- Uses table: LEDGER
-- --------------------------------------------
UPDATE LEDGER
    SET GROUPNATURE='<GROUPNATURE>'
    Where GROUPCODE='<GROUPCODE>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [ACGROUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [AcGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Acgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [LEDGER]  NOT present in visahl.sql dump (schema unknown)
-- Table [acgroup]  NOT present in visahl.sql dump (schema unknown)
