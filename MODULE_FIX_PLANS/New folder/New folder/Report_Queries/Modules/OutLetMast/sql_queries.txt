# ==========================================================
# Module: OutLetMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Depart
-- --------------------------------------------
Select Count(*) from Depart
    where OutletYN='Y';

-- --------------------------------------------
-- Query 2
-- Uses table: Depart
-- --------------------------------------------
Delete From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 3
-- Uses table: RevMast
-- --------------------------------------------
Delete From RevMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: Voucher_Type
-- --------------------------------------------
Delete From Voucher_Type
    Where V_Type='KBAN';

-- --------------------------------------------
-- Query 5
-- Uses table: Voucher_Prefix
-- --------------------------------------------
Delete From Voucher_Prefix
    Where V_Type='KBAN';

-- --------------------------------------------
-- Query 6
-- Uses table: Voucher_Type
-- --------------------------------------------
Delete From Voucher_Type
    Where V_Type='NBAN';

-- --------------------------------------------
-- Query 7
-- Uses table: Voucher_Prefix
-- --------------------------------------------
Delete From Voucher_Prefix
    Where V_Type='NBAN';

-- --------------------------------------------
-- Query 8
-- Uses table: Voucher_Type
-- --------------------------------------------
Delete From Voucher_Type
    Where V_Type='BBAN';

-- --------------------------------------------
-- Query 9
-- Uses table: Voucher_Prefix
-- --------------------------------------------
Delete From Voucher_Prefix
    Where V_Type='BBAN';

-- --------------------------------------------
-- Query 10
-- Uses table: MenuHelp
-- --------------------------------------------
Delete from MenuHelp
    where OutletCode='<OutletCode>';

-- --------------------------------------------
-- Query 11
-- Uses table: SchemeMast
-- Uses table: Voucher_Prefix
-- --------------------------------------------
Select * From SchemeMast
    Where Code='Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('<Param>';

-- --------------------------------------------
-- Query 12
-- Uses table: SchemeOutletDiscount
-- Uses table: Voucher_Prefix
-- --------------------------------------------
Insert into SchemeOutletDiscount(RestCode,Appdate,EndDate,FromTime,ToTime,SchemeCode,DiscPer,Active,Days,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('<Param>';

-- --------------------------------------------
-- Query 13
-- Uses table: Depart
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From Depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 14
-- Uses table: RevMast
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),0)+1 AS MyCode From RevMast
    WHERE SUBSTRING(Code,1,3) ='<Param>' AND ISNUMERIC(SUBSTRING(Code,4,3))=1;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [MenuHelp]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SchemeMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SchemeOutletDiscount]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Prefix]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
