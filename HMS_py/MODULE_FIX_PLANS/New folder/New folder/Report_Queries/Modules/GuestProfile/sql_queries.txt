# ==========================================================
# Module: GuestProfile
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: City
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(CityCode,3,3) AS INT)),1)+1 AS MyCode From City;

-- --------------------------------------------
-- Query 2
-- Uses table: State
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From State;

-- --------------------------------------------
-- Query 3
-- Uses table: Country
-- --------------------------------------------
SELECT Country.Name AS CountryName,Country.Type as CountryType FROM Country
    WHERE Upper(CODE)='<Param>';

-- --------------------------------------------
-- Query 4
-- Uses table: Country
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From Country;

-- --------------------------------------------
-- Query 5
-- Uses table: GuestFolioProfDetail
-- --------------------------------------------
Delete From GuestFolioProfDetail
    where Docid='<Docid>';

-- --------------------------------------------
-- Query 6
-- Uses table: GuestFolioProfDetail
-- --------------------------------------------
Delete From GuestFolioProfDetail
    Where IsNull(Docid,'')='' And GuestProf='<GuestProf>' And mProf='<mProf>';

-- --------------------------------------------
-- Query 7
-- Uses table: PayCharge
-- --------------------------------------------
Update PayCharge
    Set GuestProf='<GuestProf>'
    where FolioNoDocid='<FolioNoDocid>';

-- --------------------------------------------
-- Query 8
-- Uses table: GuestFolioProfDetail
-- Uses table: guestfolio
-- --------------------------------------------
Select docid, guestprof from guestfolio
    where docid not in (select docid from GuestFolioProfDetail);

-- --------------------------------------------
-- Query 9
-- Uses table: GUESTPROF
-- --------------------------------------------
Delete From GUESTPROF
    Where Code='<Code>';

-- --------------------------------------------
-- Query 10
-- Uses table: GuestProfFor
-- --------------------------------------------
Delete From GuestProfFor
    Where Code='<Code>';

-- --------------------------------------------
-- Query 11
-- Uses table: GuestProfVeh
-- --------------------------------------------
Delete From GuestProfVeh
    Where Code='<Code>';

-- --------------------------------------------
-- Query 12
-- Uses table: GuestProf
-- --------------------------------------------
SELECT G.Name, G.Add1 AS Address1, G.Add2 AS Address2, G.CityName + ' ' +G.ZipCode AS City, G.CountryName AS Country, G.PhoneNo AS PhoneNo, G.MobileNo AS MobileNo, G.Gender AS Gender, G.MaritalStatus AS MaritalStatus, G.PanNo AS PanNo, G.GuestStatus AS Status From GuestProf G
    order by G.Name;

-- --------------------------------------------
-- Query 13
-- Uses table: Country
-- Uses table: GuestProf
-- --------------------------------------------
SELECT GuestProf.*,Country.Name As NationalName FROM GuestProf
    Left Join Country On GuestProf.Nationality=Country.Code
    WHERE GuestProf.Code='<Code>';

-- --------------------------------------------
-- Query 14
-- Uses table: ProfileImages
-- --------------------------------------------
SELECT GuestImage,IdImage,SignImage FROM ProfileImages
    WHERE ProfileCode='<ProfileCode>';

-- --------------------------------------------
-- Query 15
-- Uses table: Country
-- Uses table: State
-- --------------------------------------------
SELECT City.CityName,CITY.ZIPCODE,Country.Name AS CountryName,State.Name AS StateName FROM (City
    LEFT JOIN State ON City.State=State.Code)
    LEFT JOIN Country ON City.Country=Country.Code
    WHERE CITYCODE='<CITYCODE>';

-- --------------------------------------------
-- Query 16
-- Uses table: GUESTPROFFOR
-- --------------------------------------------
SELECT * FROM GUESTPROFFOR
    WHERE CODE='<CODE>';

-- --------------------------------------------
-- Query 17
-- Uses table: Country
-- --------------------------------------------
SELECT Code,Name FROM Country
    WHERE CODE='<CODE>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [Country]  NOT present in visahl.sql dump (schema unknown)
-- Table [GUESTPROF]  NOT present in visahl.sql dump (schema unknown)
-- Table [GUESTPROFFOR]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolioProfDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestProf]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestProfFor]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestProfVeh]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [ProfileImages]  NOT present in visahl.sql dump (schema unknown)
-- Table [State]  NOT present in visahl.sql dump (schema unknown)
-- Table [guestfolio]  NOT present in visahl.sql dump (schema unknown)
