# ==========================================================
# Module: MDIForm1
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Enviro
-- --------------------------------------------
Select KOTAtNightAudit,POSBillAtNightAudit from Enviro
    where logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro;

-- --------------------------------------------
-- Query 3
-- Uses table: Depart
-- --------------------------------------------
Select 'B'+ShortName as Adv_Type From Depart
    Where Code='<RestCode>';

-- --------------------------------------------
-- Query 4
-- Uses table: Depart
-- --------------------------------------------
Select Count(*) From Depart
    Where Code='<RestCode>' And RestType='Production';

-- --------------------------------------------
-- Query 5
-- Uses table: Voucher_Type
-- --------------------------------------------
Select * from Voucher_Type
    Where Ncat='ORDER' and RestCode='<RestCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: Voucher_Type
-- --------------------------------------------
Select V_Type from Voucher_Type
    Where Ncat='PADV' and RestCode='<RestCode>';

-- --------------------------------------------
-- Query 7
-- --------------------------------------------
sp_dropdevice 'HOTELBKUP';

-- --------------------------------------------
-- Query 8
-- --------------------------------------------
sp_addumpdevice 'Disk' , 'HOTELBKUP' ,'Creating the ZIP at '<Param>',2;

-- --------------------------------------------
-- Query 9
-- Uses table: COMPANY
-- --------------------------------------------
SELECT CENTRALDATA_PATH FROM COMPANY
    WHERE COMP_CODE='<CompCode>';

-- --------------------------------------------
-- Query 10
-- --------------------------------------------
sp_addumpdevice 'Disk' , 'HOTELBKUP' ,'Creating the ZIP at '<Param>sp_addumpdevice 'Disk' , 'HOTELBKUP' ,'Creating the ZIP at '<Param> to HOTELBKUP;

-- --------------------------------------------
-- Query 11
-- --------------------------------------------
sp_dropdevice 'MAINBKUP';

-- --------------------------------------------
-- Query 12
-- --------------------------------------------
sp_addumpdevice 'Disk' , 'MAINBKUP' ,'Creating the ZIP at '<Param>',2;

-- --------------------------------------------
-- Query 13
-- --------------------------------------------
sp_addumpdevice 'Disk' , 'HOTELBKUP' ,'Creating the ZIP at '<Param>sp_addumpdevice 'Disk' , 'HOTELBKUP' ,'Creating the ZIP at '<Param> WITH TRUNCATE_ONLY;

-- --------------------------------------------
-- Query 14
-- --------------------------------------------
sp_addumpdevice 'Disk' , 'HOTELBKUP' ,'Creating the ZIP at '<Param>sp_addumpdevice 'Disk' , 'HOTELBKUP' ,'Creating the ZIP at '<Param> WITH NO_LOG;

-- --------------------------------------------
-- Query 15
-- --------------------------------------------
sp_addumpdevice 'Disk' , 'HOTELBKUP' ,'Creating the ZIP at '<Param>sp_addumpdevice 'Disk' , 'HOTELBKUP' ,'Creating the ZIP at '<Param> , 0, TRUNCATEONLY);

-- --------------------------------------------
-- Query 16
-- Uses table: MenuHelp
-- --------------------------------------------
Update MenuHelp
    set ShowInList='Y'
    Where Code=<Code> AND USERNAME='<UserName>' AND CompCode='<CompCode>';

-- --------------------------------------------
-- Query 17
-- Uses table: MenuHelp
-- --------------------------------------------
Update MenuHelp
    set ShowInList=''
    Where Code=<Code> AND USERNAME='<UserName>' AND CompCode='<CompCode>';

-- --------------------------------------------
-- Query 18
-- Uses table: MENUHELP
-- --------------------------------------------
SELECT * FROM MENUHELP
    Where Flag<>'V' AND USERNAME='<UserName>' AND CompCode='<CompCode>' AND [Option]<>'-' AND ShowInList='Y'
    ORDER BY OPT1,OPT2,OPT3,OPT4;

-- --------------------------------------------
-- Query 19
-- Uses table: MENUHELP
-- --------------------------------------------
SELECT * FROM MENUHELP
    Where Flag<>'V' AND USERNAME='<UserName>' AND CompCode='<CompCode>' AND Opt1=<Opt1><Param>;

-- --------------------------------------------
-- Query 20
-- Uses table: tbl_EventExc
-- --------------------------------------------
Delete From tbl_EventExc;

-- --------------------------------------------
-- Query 21
-- Uses table: tbl_EventPrameter
-- --------------------------------------------
Delete From tbl_EventPrameter;

-- --------------------------------------------
-- Query 22
-- Uses table: Booking
-- Uses table: tbl_GetBooking
-- --------------------------------------------
Update Booking
    Set CancelDate=Q.DateBooked,BookStatus=Q.BookingStatus,Cancel='Y' From (Select Distinct BookingCode,DateBooked,BookingStatus From tbl_GetBooking
    Where BookingStatus='CANCELLED')Q
    Where Booking.RefCode=Q.BookingCode;

-- --------------------------------------------
-- Query 23
-- Uses table: Booking
-- Uses table: GrpBookingDetails
-- --------------------------------------------
Update GrpBookingDetails
    Set CancelDate=Q.CancelDate,Cancel='Y' From (Select Distinct DocId,CancelDate From Booking
    Where BookStatus='CANCELLED' And Cancel='Y')Q
    Where GrpBookingDetails.BookingDocId=Q.DocId;

-- --------------------------------------------
-- Query 24
-- Uses table: Messaging
-- --------------------------------------------
SELECT * FROM Messaging
    Where Receiver='<UserName>' and(Cleared is Null Or Cleared='' Or Cleared='N')And ReadYN='N'
    Order By VDATE DESC,VType DESC,VNo DESC,Sender;

-- --------------------------------------------
-- Query 25
-- Uses table: Enviro
-- --------------------------------------------
Select PlanMastType from Enviro
    where logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 26
-- Uses table: menuHelp
-- --------------------------------------------
DELETE FROM menuHelp
    WHERE UserName='SA' and CompCode='<CompCode>';

-- --------------------------------------------
-- Query 27
-- Uses table: menuHelp1
-- --------------------------------------------
DELETE FROM menuHelp1
    WHERE UserName='SA' and CompCode='<CompCode>';

-- --------------------------------------------
-- Query 28
-- Uses table: User_Module
-- --------------------------------------------
DELETE FROM User_Module
    WHERE 1<>2;

-- --------------------------------------------
-- Query 29
-- Uses table: User1
-- --------------------------------------------
DELETE FROM User1
    WHERE 1<>2;

-- --------------------------------------------
-- Query 30
-- Uses table: User_Module
-- --------------------------------------------
INSERT INTO User_Module (Code,Name,Flag,SrNo,Module_Name,ID) VALUES('<Param>',<Param>,<Param>,<Param>,'<Param>','<Param>');

-- --------------------------------------------
-- Query 31
-- Uses table: menuHelp
-- --------------------------------------------
UPDATE menuHelp
    SET Flag='R'
    WHERE [Option]='<Param>' AND Flag NOT IN ('N','V');

-- --------------------------------------------
-- Query 32
-- Uses table: menuHelp1
-- --------------------------------------------
UPDATE menuHelp1
    SET Flag='R'
    WHERE MenuCaption='<MenuCaption>' AND Flag NOT IN ('N','V');

-- --------------------------------------------
-- Query 33
-- Uses table: User_Module
-- --------------------------------------------
UPDATE User_Module
    SET Flag=1
    WHERE Name='<Name>' AND Flag <>9;

-- --------------------------------------------
-- Query 34
-- Uses table: Depart
-- --------------------------------------------
SELECT Code,Name FROM Depart
    WHERE LogSite_Code='<LogSiteCode>' and Resttype IN ('Outlet','Room Service');

-- --------------------------------------------
-- Query 35
-- Uses table: menuHelp
-- --------------------------------------------
SELECT Max(Opt1) FROM menuHelp
    WHERE [Option]='POS Operations';

-- --------------------------------------------
-- Query 36
-- Uses table: menuHelp
-- --------------------------------------------
SELECT max(Opt2) FROM menuHelp
    WHERE [Option]='POS Operations';

-- --------------------------------------------
-- Query 37
-- Uses table: menuHelp
-- --------------------------------------------
UPDATE menuHelp
    set Flag='D'
    WHERE Opt1=<Opt1> AND Opt2=<Opt2>;

-- --------------------------------------------
-- Query 38
-- Uses table: menuHelp
-- --------------------------------------------
SELECT Opt1,Opt2,[Option],Flag FROM menuHelp
    WHERE Opt1=<Opt1> AND Opt2=<Opt2> AND Opt3<>0 AND Opt4=0 AND Flag<>'N';

-- --------------------------------------------
-- Query 39
-- Uses table: User_Module
-- --------------------------------------------
UPDATE User_Module
    SET Flag=1
    WHERE Name='<Name>UPDATE User_Module
    SET Flag=1
    WHERE Name='<Name>,'N','<Param>');

-- --------------------------------------------
-- Query 40
-- Uses table: menuHelp
-- --------------------------------------------
DELETE FROM menuHelp
    WHERE flag='D';

-- --------------------------------------------
-- Query 41
-- Uses table: menuHelp
-- --------------------------------------------
SELECT Opt1,opt2,opt3,opt4,[option],flag FROM menuHelp
    WHERE [Option]='-' and Flag='E';

-- --------------------------------------------
-- Query 42
-- Uses table: menuHelp
-- --------------------------------------------
UPDATE menuHelp
    SET Flag='R'
    WHERE Opt1=<Opt1> AND Opt2><Param> AND Opt3=0 AND Opt4=0 AND Flag NOT IN ('N','V');

-- --------------------------------------------
-- Query 43
-- Uses table: menuHelp1
-- --------------------------------------------
UPDATE menuHelp1
    SET Flag='R'
    WHERE Opt1=<Opt1> AND Opt2><Param> AND Opt3=0 AND Opt4=0 AND Flag NOT IN ('N','V');

-- --------------------------------------------
-- Query 44
-- Uses table: menuHelp
-- --------------------------------------------
UPDATE menuHelp
    SET Flag='E'
    WHERE UserName='SA' AND [Option] IN ('Gravy Item Entry','Room Inventory ','Room Inventory','Leave','Telephone Call Entry','InBox') AND Module_Name IN ('Purch','NightAuditMenu','Pay','mnuTelMast','mnuMSG');

-- --------------------------------------------
-- Query 45
-- Uses table: menuHelp
-- --------------------------------------------
UPDATE menuHelp
    SET Flag='V'
    WHERE UserName='SA' AND [Option] IN ('Restaurant Change ','Restaurant Change') AND Module_Name IN ('Rest');

-- --------------------------------------------
-- Query 46
-- Uses table: menuHelp
-- --------------------------------------------
SELECT Opt1,Opt2 FROM menuHelp
    WHERE Opt3=0 AND Opt4=0 AND Opt2<>0 AND Flag='V' AND UserName='SA';

-- --------------------------------------------
-- Query 47
-- Uses table: menuHelp
-- --------------------------------------------
UPDATE menuHelp
    SET Flag='V'
    WHERE opt1=<opt1> AND Opt2=<Opt2>;

-- --------------------------------------------
-- Query 48
-- Uses table: menuHelp
-- --------------------------------------------
SELECT Opt1 FROM menuHelp
    WHERE Opt2=0 AND Opt3=0 AND Flag='V' AND UserName='SA';

-- --------------------------------------------
-- Query 49
-- Uses table: menuHelp
-- --------------------------------------------
UPDATE menuHelp
    SET Flag='V'
    WHERE Opt1=<Opt1>;

-- --------------------------------------------
-- Query 50
-- Uses table: menuHelp1
-- --------------------------------------------
UPDATE menuHelp1
    SET Flag='V'
    WHERE Opt1=<Opt1>;

-- --------------------------------------------
-- Query 51
-- Uses table: menuHelp
-- --------------------------------------------
UPDATE menuHelp
    SET Flag='V'
    WHERE [Option]='' OR [Option] is Null;

-- --------------------------------------------
-- Query 52
-- Uses table: menuHelp1
-- --------------------------------------------
UPDATE menuHelp1
    SET Flag='V'
    WHERE MenuCaption='' OR MenuCaption is Null;

-- --------------------------------------------
-- Query 53
-- Uses table: User_Module
-- --------------------------------------------
SELECT Code,Name,SrNo FROM User_Module;

-- --------------------------------------------
-- Query 54
-- Uses table: menuHelp1
-- --------------------------------------------
UPDATE menuHelp1
    SET Flag='R'
    WHERE Opt1=<Opt1> AND Opt2><Param> AND Opt3=0 AND Opt4=0 AND Flag NOT IN ('N','V'),<Param>);

-- --------------------------------------------
-- Query 55
-- Uses table: menuHelp1
-- --------------------------------------------
UPDATE menuHelp1
    SET Param_Str='AEDP'
    WHERE Flag IN ('E','N')AND MenuIndex >=0;

-- --------------------------------------------
-- Query 56
-- Uses table: menuHelp1
-- --------------------------------------------
UPDATE menuHelp1
    SET Param_Str='***P'
    WHERE Flag = 'R';

-- --------------------------------------------
-- Query 57
-- Uses table: menuHelp
-- --------------------------------------------
UPDATE menuHelp
    SET Param_Str='AEDP'
    WHERE Flag IN ('E','N')AND Menu_Index >=0;

-- --------------------------------------------
-- Query 58
-- Uses table: menuHelp
-- --------------------------------------------
UPDATE menuHelp
    SET Param_Str='***P'
    WHERE Flag = 'R';

-- --------------------------------------------
-- Query 59
-- Uses table: Company
-- --------------------------------------------
SELECT Comp_Code FROM Company
    where SIteCode='<LogSiteCode>';

-- --------------------------------------------
-- Query 60
-- Uses table: menuHelp
-- --------------------------------------------
UPDATE menuHelp
    SET CompCode='<CompCode>', UserName='SA'
    WHERE (CompCode is NULL or CompCode='' or CompCode='<CompCode>'<Param>;

-- --------------------------------------------
-- Query 61
-- Uses table: menuHelp1
-- --------------------------------------------
UPDATE menuHelp1
    SET CompCode='<CompCode>', UserName='SA'
    WHERE (CompCode is NULL or CompCode='' or CompCode='<CompCode>'<Param>;

-- --------------------------------------------
-- Query 62
-- Uses table: menuHelp
-- --------------------------------------------
SELECT CompCode,UserName,Opt1,Opt2,Opt3,Opt4,Code,[Option],Menu_Index,Param_Str,Flag,ShowInList,OutLetCode,Module_Name FROM menuHelp
    WHERE CompCode='<CompCode>' AND UserName='SA';

-- --------------------------------------------
-- Query 63
-- Uses table: menuHelp1
-- --------------------------------------------
SELECT CompCode,UserName,Opt1,Opt2,Opt3,Opt4,Code,MenuName,MenuIndex,MenuCaption,Param_Str,Flag FROM menuHelp1
    WHERE CompCode='<CompCode>' AND UserName='SA';

-- --------------------------------------------
-- Query 64
-- Uses table: menuHelp
-- --------------------------------------------
SELECT Distinct UserName,CompCode FROM menuHelp
    WHERE UserName<>'SA';

-- --------------------------------------------
-- Query 65
-- Uses table: menuHelp
-- --------------------------------------------
SELECT CompCode,UserName,Opt1,Opt2,Opt3,Opt4,Code,[Option],Menu_Index,Param_Str,Flag,ShowInList,Module_Name,OutLetCode FROM menuHelp
    WHERE CompCode='<CompCode>' AND UserName='SA';

-- --------------------------------------------
-- Query 66
-- Uses table: menuHelp
-- --------------------------------------------
SELECT Opt1,Opt2,Opt3,Opt4,Code,[Option],Flag,OutLetCode FROM menuHelp
    WHERE UserName='SA' AND CompCode='<CompCode>';

-- --------------------------------------------
-- Query 67
-- Uses table: menuHelp1
-- --------------------------------------------
SELECT Opt1,Opt2,Opt3,Opt4,Code,MenuCaption,Flag FROM menuHelp1
    WHERE UserName='SA' AND CompCode='<CompCode>';

-- --------------------------------------------
-- Query 68
-- Uses table: KOT
-- --------------------------------------------
Select Top 1 DOCID from KOT
    Where ISNULL(PrintFlag,'')='N' AND Printed<>'Y' AND PENDING='Y'
    ORDER BY U_EntDt;

-- --------------------------------------------
-- Query 69
-- Uses table: DBSENDSMS
-- --------------------------------------------
Select * from DBSENDSMS
    Where ISNULL(SENDTF,'')<>'TRUE';

-- --------------------------------------------
-- Query 70
-- Uses table: ENVIRO
-- --------------------------------------------
SELECT * FROM ENVIRO
    WHERE SITECODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 71
-- Uses table: UserMenu
-- --------------------------------------------
Select * from UserMenu
    Where ucase(UserName)='<Param>';

-- --------------------------------------------
-- Query 72
-- Uses table: MenuHelp
-- --------------------------------------------
Select [Option] Name,OPT1 from MenuHelp
    Where Flag<>'V' And OPT1<>0 And OPT2=0 And OPT3=0 And OPT4=0 And UserName='<UserName>' And CompCode='<CompCode>'
    Order By Code;

-- --------------------------------------------
-- Query 73
-- Uses table: MenuHelp
-- --------------------------------------------
Select [Option] Name,Cast(Code As Varchar) CODE from MenuHelp
    Where Flag<>'V' And OPT1=<OPT1> And OPT2=<OPT2> And OPT3=<OPT3> And OPT4=<OPT4> And UserName='<UserName>' And CompCode='<CompCode>';

-- --------------------------------------------
-- Query 74
-- Uses table: menuHelp1
-- --------------------------------------------
select MenuCaption AS FORM_NAME from menuHelp1
    WHERE MenuName='<MenuName>' And MenuCaption='<MenuCaption>' And UserName='<UserName>' and (CompCode='<CompCode>' OR CompCode='<CompCode> ');

-- --------------------------------------------
-- Query 75
-- Uses table: menuHelp1
-- --------------------------------------------
SELECT MenuCaption,MenuName,MenuIndex FROM menuHelp1
    WHERE Opt1=<Opt1> AND Opt2=0 AND UserName='SA' and (CompCode='<CompCode>' OR CompCode='<CompCode><Param>;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Booking]  NOT present in visahl.sql dump (schema unknown)
-- Table [COMPANY]  NOT present in visahl.sql dump (schema unknown)
-- Table [Company]  NOT present in visahl.sql dump (schema unknown)
-- Table [DBSENDSMS]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [ENVIRO]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [GrpBookingDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [KOT]  NOT present in visahl.sql dump (schema unknown)
-- Table [MENUHELP]  NOT present in visahl.sql dump (schema unknown)
-- Table [MenuHelp]  NOT present in visahl.sql dump (schema unknown)
-- Table [Messaging]  NOT present in visahl.sql dump (schema unknown)
-- Table [User1]  NOT present in visahl.sql dump (schema unknown)
-- Table [UserMenu]  NOT present in visahl.sql dump (schema unknown)
-- Table [User_Module]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [menuHelp]  NOT present in visahl.sql dump (schema unknown)
-- Table [menuHelp1]  NOT present in visahl.sql dump (schema unknown)
-- Table [tbl_EventExc]  NOT present in visahl.sql dump (schema unknown)
-- Table [tbl_EventPrameter]  NOT present in visahl.sql dump (schema unknown)
-- Table [tbl_GetBooking]  NOT present in visahl.sql dump (schema unknown)
