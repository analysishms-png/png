# ==========================================================
# Module: frmAdvanceDepDialog
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: RevMast
-- --------------------------------------------
SELECT Code,Name,PayType FROM RevMast
    Where PayType<>'Hold' and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and FieldType='P'
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: TaxStru
-- --------------------------------------------
SELECT distinct Code,Name FROM TaxStru
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 3
-- Uses table: Employee
-- --------------------------------------------
SELECT Code,Name FROM Employee
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: Employee
-- --------------------------------------------
SELECT Code,Name FROM Employee
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and ChkOutDate is null;

-- --------------------------------------------
-- Query 5
-- Uses table: Employee
-- Uses table: guestfolio
-- --------------------------------------------
SELECT Code,Name FROM Employee
    where (LOGSITE_CODE='<LogSiteCode>' or Booking.LOGSITE_CODE='HO') and booking.docid not in (select bookingdocid from guestfolio) And isnull(Booking.Cancel,'')<>'Y'
    ORDER BY Name;

-- --------------------------------------------
-- Query 6
-- Uses table: Employee
-- --------------------------------------------
SELECT Code,Name FROM Employee
    where (LOGSITE_CODE='<LogSiteCode>' or RoomOcc.LOGSITE_CODE='HO') and T.Type in ('RO') and RoomOcc.ChkoutDate is NULL
    Order By T.Code;

-- --------------------------------------------
-- Query 7
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode as Code,Name,CompanyType From SubGroup
    where ActiveYN=1 and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and CompanyType in ('Corporate','Travel Agency')
    Order By Name;

-- --------------------------------------------
-- Query 8
-- Uses table: enviro
-- --------------------------------------------
Select NCUR,CreditCardInfoMandatory from enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 9
-- Uses table: PayCharge
-- --------------------------------------------
SELECT Distinct RefDocid as SearchCode,Site_Code,LogSite_Code FROM PayCharge
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') And VType In ('ARRES','ADRES');

-- --------------------------------------------
-- Query 10
-- Uses table: enviro
-- --------------------------------------------
Select Max(NCUR) from enviro
    where logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 11
-- Uses table: enviro
-- --------------------------------------------
Select NCUR from enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 12
-- Uses table: PayCharge
-- --------------------------------------------
Delete From PayCharge
    Where Docid='Please Fill Payment Details Before Saving..';

-- --------------------------------------------
-- Query 13
-- Uses table: roomCat
-- --------------------------------------------
Select minadv from roomCat
    where Code='<Code>';

-- --------------------------------------------
-- Query 14
-- Uses table: PayCharge
-- --------------------------------------------
Select sum(AmtCr) from PayCharge
    where RefDocid='<RefDocid>' And VType In ('ARRES','ADRES');



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Employee]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [guestfolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [roomCat]  NOT present in visahl.sql dump (schema unknown)
