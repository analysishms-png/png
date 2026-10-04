# ==========================================================
# Module: hAdvanceDepDialog
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
-- Uses table: Ledger
-- --------------------------------------------
Delete From Ledger
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 3
-- Uses table: depart
-- --------------------------------------------
Select Name,ShortName from depart
    where code='<code>';

-- --------------------------------------------
-- Query 4
-- Uses table: REVMAST
-- --------------------------------------------
SELECT * FROM REVMAST
    WHERE CODE='<LogSiteCode>TOUT';

-- --------------------------------------------
-- Query 5
-- Uses table: HallSale1
-- --------------------------------------------
SELECT BookDocId FROM HallSale1
    WHERE DocId='<DocId>';

-- --------------------------------------------
-- Query 6
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where Logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 7
-- Uses table: DepartPay
-- Uses table: RevMast
-- --------------------------------------------
SELECT DP.PayCode as code, RevMast.name as Name, revMast.PayType as PayType FROM DepartPay as DP LEFT OUTER
    JOIN RevMast ON DP.PayCode = RevMast.code
    where (DP.LOGSITE_CODE='<LogSiteCode>') AND DP.restcode='BANQ'
    ORDER BY NAME;

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
    inner join RoomOcc on (RoomOcc.RoomNo=T.Code and RoomOcc.LogSite_Code=T.LogSite_Code)
    where T.LogSite_Code in ('<LogSiteCode>','HO') and T.Type in ('RO') and RoomOcc.ChkoutDate is NULL
    Order By T.Code;

-- --------------------------------------------
-- Query 10
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode as Code,Name From SubGroup
    where LogSite_Code in ('<LogSiteCode>','HO') and CompanyType in ('Corporate','Travel Agency')
    Order By Name;

-- --------------------------------------------
-- Query 11
-- Uses table: MemCatMast
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode as Code,Name,CardNo From SubGroup
    where ActiveYN=1 and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast
    where LogSite_Code='<LogSiteCode>')
    Order By Name;

-- --------------------------------------------
-- Query 12
-- Uses table: PAYCHARGEH
-- --------------------------------------------
SELECT Distinct Docid as SearchCode FROM PAYCHARGEH
    Where LogSite_Code in ('<LogSiteCode>') and Vtype='<Vtype>';

-- --------------------------------------------
-- Query 13
-- --------------------------------------------
SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,;

-- --------------------------------------------
-- Query 14
-- --------------------------------------------
Delete...';

-- --------------------------------------------
-- Query 15
-- Uses table: Enviro
-- --------------------------------------------
Select OUTDOORPARTYAC AS IndoorPartyAC from Enviro
    where LOGSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 16
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where LOGSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 17
-- Uses table: Ledger
-- --------------------------------------------
Delete from Ledger
    where Docid='<Docid>' AND V_Type='BREC';

-- --------------------------------------------
-- Query 18
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 19
-- Uses table: PaychargeH
-- --------------------------------------------
UPDATE PaychargeH
    SET PostDocId='<PostDocId>;

-- --------------------------------------------
-- Query 20
-- Uses table: Voucher_Prefix
-- Uses table: Voucher_Type
-- --------------------------------------------
Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT
    Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE)
    Where (VP.SITE_CODE='<SITE_CODE>' AND VP.LOGSITE_CODE='';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [DepartPay]  NOT present in visahl.sql dump (schema unknown)
-- Table [Employee]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallSale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [PAYCHARGEH]  NOT present in visahl.sql dump (schema unknown)
-- Table [PaychargeH]  NOT present in visahl.sql dump (schema unknown)
-- Table [REVMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Prefix]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
