# ==========================================================
# Module: rsAdvanceDepDialog
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: depart
-- --------------------------------------------
Select Name,ShortName from depart
    where code='<code>';

-- --------------------------------------------
-- Query 2
-- Uses table: REVMAST
-- --------------------------------------------
SELECT * FROM REVMAST
    WHERE CODE='<LogSiteCode>TOUT';

-- --------------------------------------------
-- Query 3
-- Uses table: GuestFolio
-- --------------------------------------------
Select Docid,GuestProf,Company from GuestFolio
    where Docid='<Docid><Param>;

-- --------------------------------------------
-- Query 4
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 5
-- Uses table: depart
-- --------------------------------------------
Select Max(ShortName) from depart
    where code='<code>';

-- --------------------------------------------
-- Query 6
-- Uses table: DepartPay
-- Uses table: RevMast
-- --------------------------------------------
SELECT DP.PayCode as code, RevMast.Name as Name, revMast.PayType as PayType FROM DepartPay as DP LEFT OUTER
    JOIN RevMast ON DP.PayCode = RevMast.code
    where (DP.LOGSITE_CODE='<LogSiteCode>') AND DP.restcode='<restcode>'
    ORDER BY NAME;

-- --------------------------------------------
-- Query 7
-- Uses table: Employee
-- --------------------------------------------
SELECT Code,Name FROM Employee
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 8
-- Uses table: Employee
-- --------------------------------------------
SELECT Code,Name FROM Employee
    WHERE (LOGSITE_CODE='<LogSiteCode>' or RoomOcc.LOGSITE_CODE='HO') AND T.Type in ('RO') and RoomOcc.ChkoutDate is NULL
    Order By T.Code;

-- --------------------------------------------
-- Query 9
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode as Code,Name From SubGroup
    where ActiveYN=1 and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate','Travel Agency')
    Order By Name;

-- --------------------------------------------
-- Query 10
-- Uses table: MemCatMast
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode as Code,Name,CardNo From SubGroup
    where ActiveYN=1 and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast
    where LogSite_Code='<LogSiteCode>')
    Order By Name;

-- --------------------------------------------
-- Query 11
-- Uses table: PayCharge
-- --------------------------------------------
SELECT Distinct Docid as SearchCode FROM PayCharge
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND Vtype='<Vtype>';

-- --------------------------------------------
-- Query 12
-- Uses table: paycharge
-- --------------------------------------------
Select count(Distinct Bill_no) from paycharge
    where bill_no is not null and bill_no<>'' and PayType='Room' And Docid='<Docid>';

-- --------------------------------------------
-- Query 13
-- Uses table: RoomMast
-- --------------------------------------------
Select Name from RoomMast
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND code='<code>' and Type='HL' and RoomCat='HALL';

-- --------------------------------------------
-- Query 14
-- Uses table: MemEnviro
-- --------------------------------------------
Select Interface From MemEnviro
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 15
-- Uses table: SmartCardRegistration
-- Uses table: SubGroup
-- --------------------------------------------
Select S.Name From SmartCardRegistration SCR
    Inner Join SubGroup S On SCR.MemberCode=S.SubCode
    Where SCR.Code='<Code>';

-- --------------------------------------------
-- Query 16
-- Uses table: RoomMast
-- --------------------------------------------
Select T.Code,T.Name As Name From RoomMast T
    where T.Type in('HL')
    Order by T.Code;

-- --------------------------------------------
-- Query 17
-- Uses table: RoomMast
-- --------------------------------------------
Select T.Code,T.Code As Name From RoomMast T
    where T.Type in ('HL')
    Order By T.Code;

-- --------------------------------------------
-- Query 18
-- Uses table: RoomMast
-- --------------------------------------------
Select T.Code,T.Code As Name,RoomCat From RoomMast T
    where T.Type in('RO')
    Order by T.Code;

-- --------------------------------------------
-- Query 19
-- Uses table: RoomMast
-- --------------------------------------------
Select T.Code,T.Code As Name From RoomMast T
    where T.Type in ('TB')
    Order By T.Code;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [DepartPay]  NOT present in visahl.sql dump (schema unknown)
-- Table [Employee]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [PayCharge]  (schema from visahl.sql):
--     DocId                  varchar (21) NOT NULL,
--     SNo                    int NOT NULL,
--     Vtype                  varchar (8) NULL,
--     VNo                    int NULL,
--     Site_Code              varchar (2) NULL,
--     VPrefix                varchar (5) NULL,
--     Vdate                  datetime NULL,
--     VTime                  varchar (5) NULL,
--     GuestProf              varchar (8) NULL,
--     EmpCode                varchar (8) NULL,
--     CompCode               varchar (8) NULL,
--     Comments               varchar (255) NULL,
--     PayCode                varchar (6) NULL,
--     PayType                varchar (15) NULL,
--     AmtCr                  float NULL,
--     AmtDr                  float NULL,
--     TipAmt                 float NULL,
--     RoomCat                varchar (5) NULL,
--     RoomType               varchar (2) NULL,
--     RoomNo                 varchar (5) NULL,
--     FolioNo                int NULL,
--     CardNo                 varchar (20) NULL,
--     CardHolder             varchar (35) NULL,
--     ChqNo                  varchar (20) NULL,
--     ChqDate                datetime NULL,
--     ExpDate                datetime NULL,
--     BookNo                 int NULL,
--     BookType               varchar (5) NULL,
--     U_Name                 varchar (10) NULL,
--     U_EntDt                datetime NULL,
--     U_AE                   varchar (1) NULL,
--     RestCode               varchar (6) NULL,
--     BillAmount             float NULL,
--     ContraDocID            varchar (21) NULL,
--     DbtChkIn               varchar (3) NULL,
--     TaxPer                 float NULL,
--     OnAmt                  float NULL,
--     Split                  varchar (2) NULL,
--     Bill_No                varchar (8) NULL,
--     MarkEntry              varchar (1) NULL,
--     ModeSet                varchar (1) NULL,
--     SettleDate             datetime NULL,
--     BatchNo                smallint NULL,
--     OldBill_No             varchar (8) NULL,
--     PlanCharge             varchar (6) NULL,
--     FixedChargeCode        varchar (5) NULL,
--     RelatedFolioNo         int NULL,
--     FolioNoDocid           varchar (21) NULL,
--     LogSite_Code           varchar (2) NOT NULL,
--     RefNo                  int NULL,
--     PlanCode               varchar (5) NULL,
--     SeqNo                  smallint NULL,
--     RelatedFolionoDocId    varchar (21) NULL,
--     RefDocId               varchar (21) NULL,
--     Remarks                varchar (255) NULL,
--     AU_Name                varchar (10) NULL,
--     AU_EntDt               datetime NULL,
--     TaxCondAmt             float NULL,
--     TaxStru                varchar (6) NULL,
--     AgAc                   varchar (8) NULL,
--     TxnNo                  varchar (20) NULL,
-- Table [REVMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SmartCardRegistration]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [paycharge]  NOT present in visahl.sql dump (schema unknown)
