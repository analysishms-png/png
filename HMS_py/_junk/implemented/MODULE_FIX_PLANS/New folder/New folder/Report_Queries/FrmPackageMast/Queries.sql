# ==========================================================
# Module: FrmPackageMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: PlanMast
-- --------------------------------------------
Select *,Code as SearchCode From PlanMast
    where Plan_Package = '<Plan_Package>' AND (LOGSITE_CODE='<LOGSITE_CODE>' or LOGSITE_CODE='HO')
    Order by Name;

-- --------------------------------------------
-- Query 2
-- Uses table: TaxStru
-- --------------------------------------------
SELECT distinct Code,Name FROM TaxStru
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 3
-- Uses table: PlanMast
-- --------------------------------------------
Delete From PlanMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: Plan1
-- --------------------------------------------
Delete from Plan1
    where Code='<Code>';

-- --------------------------------------------
-- Query 5
-- Uses table: Plan1
-- --------------------------------------------
Select Count(*) From Plan1
    Where Code='<Code>';

-- --------------------------------------------
-- Query 6
-- Uses table: PlanTokenDetails
-- --------------------------------------------
Select Count(*) From PlanTokenDetails
    Where PlanCode='<PlanCode>';

-- --------------------------------------------
-- Query 7
-- Uses table: PlanMast
-- Uses table: ROOMCAT
-- Uses table: TaxStru
-- --------------------------------------------
Select PLANMAST.*,ROOMCAT.NAME AS ROOMCATNAME,TaxStru.Name as TaxStruName From PlanMast
    LEFT JOIN ROOMCAT ON (ROOMCAT.CODE=PLANMAST.ROOMCAT)
    Left Join TaxStru on TaxStru.Code=PlanMast.RoomTaxStru
    Where PLANMAST.Code='<Code>';

-- --------------------------------------------
-- Query 8
-- Uses table: FixedCharge
-- Uses table: Plan1
-- --------------------------------------------
SELECT Plan1.*,FixedCharge.Name as RevName FROM Plan1
    Left Join FixedCharge on Plan1.ChrgCode=FixedCharge.Code
    WHERE Plan1.Code='<Code>'
    order by FixedCharge.Name;

-- --------------------------------------------
-- Query 9
-- Uses table: REVMAST
-- --------------------------------------------
SELECT * FROM REVMAST
    WHERE CODE='<CODE>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [FixedCharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [Plan1]  NOT present in visahl.sql dump (schema unknown)
-- Table [PlanMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [PlanTokenDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [REVMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMCAT]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
