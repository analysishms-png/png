# ==========================================================
# Module: ModuleAdd
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: UserModule
-- --------------------------------------------
Select Max(opt4) from UserModule
    where OPT3=<OPT3> And OPT2=<OPT2> And OPT1=<OPT1><Param>;

-- --------------------------------------------
-- Query 2
-- Uses table: UserModule
-- --------------------------------------------
Select Max(opt2) from UserModule
    where OPT1=<OPT1>;

-- --------------------------------------------
-- Query 3
-- Uses table: UserModule
-- --------------------------------------------
Select Max(opt3) from UserModule
    where OPT2=<OPT2> And OPT1=<OPT1>;

-- --------------------------------------------
-- Query 4
-- Uses table: UserModule
-- --------------------------------------------
Select Max(opt2) from UserModule
    where OPT1=<OPT1><Param>;

-- --------------------------------------------
-- Query 5
-- Uses table: UserModule
-- --------------------------------------------
Select Max(opt4) from UserModule
    where OPT3=<OPT3> And OPT2=<OPT2> And OPT1=<OPT1><Param><Param> As Int);

-- --------------------------------------------
-- Query 6
-- Uses table: MenuHelp
-- --------------------------------------------
Delete From MenuHelp
    Where CompCode='<CompCode>' And UserName='SA';

-- --------------------------------------------
-- Query 7
-- Uses table: UserModule
-- --------------------------------------------
Delete From UserModule;

-- --------------------------------------------
-- Query 8
-- Uses table: depart
-- --------------------------------------------
Select Code,Name,KOTYN,Order_Booking from depart
    where OutletYN='Y' And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 9
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro;

-- --------------------------------------------
-- Query 10
-- Uses table: menuHelp
-- --------------------------------------------
SELECT Param_Str AS UPrivilege,Module_Name,OutletCode FROM menuHelp
    WHERE UserName='<UserName>' AND CompCode='<CompCode>' AND Code=<Code>;

-- --------------------------------------------
-- Query 11
-- Uses table: Enviro
-- --------------------------------------------
Select PlanMastType from Enviro
    where logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 12
-- Uses table: Enviro
-- --------------------------------------------
Select KOTAtNightAudit,POSBillAtNightAudit from Enviro
    where logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 13
-- Uses table: MenuHelp
-- --------------------------------------------
Select [Option] From MenuHelp
    Where Code=<Code> AND UserName='<UserName>' and compcode='<CompCode>';

-- --------------------------------------------
-- Query 14
-- Uses table: MenuHelp
-- --------------------------------------------
Select OutletCode From MenuHelp
    Where Code=<Code> AND UserName='<UserName>' AND CompCode='<CompCode>';

-- --------------------------------------------
-- Query 15
-- Uses table: Depart
-- --------------------------------------------
Select RestType,BackColor From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 16
-- --------------------------------------------
sp_dropdevice 'HOTELBKUP';

-- --------------------------------------------
-- Query 17
-- --------------------------------------------
sp_addumpdevice 'Disk' , 'HOTELBKUP' ,'Creating the ZIP at '<Param>',2;

-- --------------------------------------------
-- Query 18
-- Uses table: COMPANY
-- --------------------------------------------
SELECT CENTRALDATA_PATH FROM COMPANY
    WHERE COMP_CODE='<CompCode>';

-- --------------------------------------------
-- Query 19
-- --------------------------------------------
sp_addumpdevice 'Disk' , 'HOTELBKUP' ,'Creating the ZIP at '<Param>sp_addumpdevice 'Disk' , 'HOTELBKUP' ,'Creating the ZIP at '<Param> to HOTELBKUP;

-- --------------------------------------------
-- Query 20
-- --------------------------------------------
sp_addumpdevice 'Disk' , 'HOTELBKUP' ,'Creating the ZIP at '<Param>sp_addumpdevice 'Disk' , 'HOTELBKUP' ,'Creating the ZIP at '<Param> WITH TRUNCATE_ONLY;

-- --------------------------------------------
-- Query 21
-- --------------------------------------------
sp_addumpdevice 'Disk' , 'HOTELBKUP' ,'Creating the ZIP at '<Param>sp_addumpdevice 'Disk' , 'HOTELBKUP' ,'Creating the ZIP at '<Param> WITH NO_LOG;

-- --------------------------------------------
-- Query 22
-- --------------------------------------------
sp_addumpdevice 'Disk' , 'HOTELBKUP' ,'Creating the ZIP at '<Param>sp_addumpdevice 'Disk' , 'HOTELBKUP' ,'Creating the ZIP at '<Param> , 0, TRUNCATEONLY);



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [COMPANY]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [MenuHelp]  NOT present in visahl.sql dump (schema unknown)
-- Table [UserModule]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [menuHelp]  NOT present in visahl.sql dump (schema unknown)
