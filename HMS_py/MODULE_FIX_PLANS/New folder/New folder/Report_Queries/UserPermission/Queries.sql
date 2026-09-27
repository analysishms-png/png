# ==========================================================
# Module: UserPermission
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Company
-- --------------------------------------------
SELECT Comp_Code FROM Company
    WHERE Cast(Comp_Code As Integer)=<Param><Param>;

-- --------------------------------------------
-- Query 2
-- Uses table: MenuHelp
-- --------------------------------------------
Delete From MenuHelp
    Where Opt1=<Opt1> And (UserName='<UserName>' And Cast(CompCode As Integer)=<Param>);

-- --------------------------------------------
-- Query 3
-- Uses table: MenuHelp
-- --------------------------------------------
SELECT [Option],Menu_Index,OutletCode,Module_Name FROM MenuHelp
    WHERE UserName='SA' And Cast(CompCode As Integer)=<Param> AND Code=<Code><Param>;

-- --------------------------------------------
-- Query 4
-- Uses table: MenuHelp
-- --------------------------------------------
Select Count(*) From MenuHelp
    Where Opt1=<Opt1><Param><Param>' And Cast(CompCode As Integer)=<Param><Param>;

-- --------------------------------------------
-- Query 5
-- Uses table: MenuHelp
-- --------------------------------------------
Delete From MenuHelp
    Where Opt1=<Opt1> And (UserName='<UserName>' And Cast(CompCode As Integer)=<Param><Param>;

-- --------------------------------------------
-- Query 6
-- Uses table: MenuHelp
-- Uses table: UserMast
-- --------------------------------------------
Select UserName,[OPTION],[ADD]=Case When SubString(IsNull(Param_Str,''),1,1)='A' Then 'A' ELSE '' END,[EDIT]=Case When SubString(IsNull(Param_Str,''),2,1)='E' Then 'E' ELSE '' END,[DELETE]=Case When SubString(IsNull(Param_Str,''),3,1)='D' Then 'D' ELSE '' END,[PRINT]=Case When SubString(IsNull(Param_Str,''),4,1)='P' Then 'P' ELSE '' END,UserMast.ActiveYN,OPT1,OPT2,OPT3,OPT4,Menu_Index From MenuHelp
    Inner Join UserMast On MenuHelp.UserName=UserMast.User_Name
    Where Cast(CompCode As Int)=<Param> And Flag<>'V'
    Order By UserName,OPT1,OPT2,OPT3,OPT4;

-- --------------------------------------------
-- Query 7
-- Uses table: MenuHelp
-- --------------------------------------------
Select Count(*) From MenuHelp
    Where UserName='<UserName>' And Cast(CompCode As Integer)=<Param>;

-- --------------------------------------------
-- Query 8
-- Uses table: MenuHelp
-- --------------------------------------------
Delete From MenuHelp
    Where UserName='<UserName>' And Cast(CompCode As Integer)=<Param>;

-- --------------------------------------------
-- Query 9
-- Uses table: MenuHelp
-- --------------------------------------------
Select * From MenuHelp
    Where UserName='<UserName>' And Cast(CompCode As Integer)=<Param>;

-- --------------------------------------------
-- Query 10
-- Uses table: MenuHelp
-- --------------------------------------------
SELECT Menu_Index,Flag FROM MenuHelp
    WHERE [Option]=<Param> AND Code=<Code>;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Company]  NOT present in visahl.sql dump (schema unknown)
-- Table [MenuHelp]  NOT present in visahl.sql dump (schema unknown)
-- Table [UserMast]  NOT present in visahl.sql dump (schema unknown)
