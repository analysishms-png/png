# ==========================================================
# Module: Transfer
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Table_SearchField
-- --------------------------------------------
DELETE FROM Table_SearchField;

-- --------------------------------------------
-- Query 2
-- Uses table: Enviro
-- --------------------------------------------
Select DTCPETakeEffectHeadToSite from Enviro
    where LOGSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: Site
-- --------------------------------------------
Select Site_Code as Code,Site_Desc as Name From Site
    Order by Name;

-- --------------------------------------------
-- Query 4
-- Uses table: company
-- --------------------------------------------
Select Comp_Name,Comp_Code,SName,CYear from company
    order by STart_dt Desc;

-- --------------------------------------------
-- Query 5
-- Uses table: Company
-- --------------------------------------------
Select HeadOffice From Company;

-- --------------------------------------------
-- Query 6
-- Uses table: TransOut
-- --------------------------------------------
Select * From TransOut
    Where SiteCode ='<SiteCode>' And MainDB='M'
    Order By TableName;

-- --------------------------------------------
-- Query 7
-- --------------------------------------------
Delete From <Param>;

-- --------------------------------------------
-- Query 8
-- --------------------------------------------
Select * From <Param>;

-- --------------------------------------------
-- Query 9
-- --------------------------------------------
Select * From <Param> <Param>;

-- --------------------------------------------
-- Query 10
-- Uses table: TransIn
-- --------------------------------------------
Select * From TransIn
    Where SiteCode ='<SiteCode>' And MainDB='M'
    Order By TableName;

-- --------------------------------------------
-- Query 11
-- --------------------------------------------
Select * From <Param>
    Where site_code='HO';

-- --------------------------------------------
-- Query 12
-- --------------------------------------------
Select * From <Param>
    Where Logsite_code='<Logsite_code>';

-- --------------------------------------------
-- Query 13
-- --------------------------------------------
Select * From <Param>
    Where <Param>;

-- --------------------------------------------
-- Query 14
-- --------------------------------------------
Select * From <Param>
    Where Site_Code='HO';

-- --------------------------------------------
-- Query 15
-- --------------------------------------------
Select * From <Param>
    Where LogSite_Code='<LogSite_Code>';

-- --------------------------------------------
-- Query 16
-- --------------------------------------------
Delete <Param>
    Where <Param>;

-- --------------------------------------------
-- Query 17
-- Uses table: TransDel
-- --------------------------------------------
Select * From TransDel
    Where TableName='<TableName>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Company]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [Site]  NOT present in visahl.sql dump (schema unknown)
-- Table [Table_SearchField]  NOT present in visahl.sql dump (schema unknown)
-- Table [TransDel]  NOT present in visahl.sql dump (schema unknown)
-- Table [TransIn]  NOT present in visahl.sql dump (schema unknown)
-- Table [TransOut]  NOT present in visahl.sql dump (schema unknown)
-- Table [company]  NOT present in visahl.sql dump (schema unknown)
