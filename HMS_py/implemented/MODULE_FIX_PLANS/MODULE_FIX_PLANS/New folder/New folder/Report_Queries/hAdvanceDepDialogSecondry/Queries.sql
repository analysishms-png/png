# ==========================================================
# Module: hAdvanceDepDialogSecondry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: PAYCHARGEH
-- --------------------------------------------
Delete From PAYCHARGEH
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 2
-- Uses table: depart
-- --------------------------------------------
Select Name,ShortName from depart
    where code='<code>';

-- --------------------------------------------
-- Query 3
-- Uses table: REVMAST
-- --------------------------------------------
SELECT * FROM REVMAST
    WHERE CODE='<LogSiteCode>TOUT';

-- --------------------------------------------
-- Query 4
-- Uses table: GuestFolio
-- --------------------------------------------
Select GuestProf from GuestFolio
    where FolioNo=<FolioNo>;

-- --------------------------------------------
-- Query 5
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where Logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: RevMast
-- --------------------------------------------
SELECT Code,Name,PayType FROM RevMast
    Where Code <>'<LogSiteCode>ROOM' and LogSite_Code in ('<LogSiteCode>','HO') and FieldType='P' and paytype='Cash'
    ORDER BY Name;

-- --------------------------------------------
-- Query 7
-- Uses table: RevMast
-- --------------------------------------------
SELECT Code,Name,PayType FROM RevMast
    Where LogSite_Code in ('<LogSiteCode>','HO') and FieldType='P' and paytype='Cash'
    ORDER BY Name;

-- --------------------------------------------
-- Query 8
-- Uses table: Employee
-- --------------------------------------------
SELECT Code,Name FROM Employee
    ORDER BY Name;

-- --------------------------------------------
-- Query 9
-- Uses table: RoomMast
-- Uses table: RoomOcc
-- --------------------------------------------
Select T.Type+t.RoomCat+space(5-len(T.RoomCat))+Code+space(5-len(Code)) as Code,T.Code As Name,RoomOcc.FolioNO From RoomMast T
    inner join RoomOcc on RoomOcc.RoomNo=T.Code
    where T.Type in ('RO') and RoomOcc.ChkoutDate is NULL
    Order By T.Code;

-- --------------------------------------------
-- Query 10
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode as Code,Name From SubGroup
    where CompanyType in ('Corporate','Travel Agency')
    Order By Name;

-- --------------------------------------------
-- Query 11
-- Uses table: PAYCHARGEH
-- --------------------------------------------
SELECT Distinct Docid as SearchCode FROM PAYCHARGEH
    Where Vtype='<Vtype>';

-- --------------------------------------------
-- Query 12
-- --------------------------------------------
SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,;

-- --------------------------------------------
-- Query 13
-- Uses table: RoomMast
-- --------------------------------------------
Select T.Code,T.Name As Name From RoomMast T
    where T.Type in('HL')
    Order by T.Code;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Employee]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [PAYCHARGEH]  NOT present in visahl.sql dump (schema unknown)
-- Table [REVMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
