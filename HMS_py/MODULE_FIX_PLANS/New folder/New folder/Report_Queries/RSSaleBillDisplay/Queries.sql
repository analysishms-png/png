# ==========================================================
# Module: RSSaleBillDisplay
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: PrinterSetup
-- --------------------------------------------
Select * from PrinterSetup
    where SITE_CODE='<LogSiteCode>' AND RestCode='<RestCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: depart
-- --------------------------------------------
Select RateInclTax from depart
    where code='<code>';

-- --------------------------------------------
-- Query 3
-- Uses table: depart
-- --------------------------------------------
Select KOtYn from depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: depart
-- --------------------------------------------
Select KOtYn from depart
    where Code='<Code>'';

-- --------------------------------------------
-- Query 5
-- Uses table: Depart
-- --------------------------------------------
Select 'B'+ShortName From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 6
-- Uses table: SundryType
-- --------------------------------------------
Select Count(*) From SundryType
    WHERE V_Type='<V_Type>';

-- --------------------------------------------
-- Query 7
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 8
-- Uses table: Depart
-- --------------------------------------------
Select Name from Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 9
-- Uses table: Sale1
-- --------------------------------------------
Select S.* From Sale1 S
    Where S.Docid='<Docid>';

-- --------------------------------------------
-- Query 10
-- Uses table: Voucher_Type
-- --------------------------------------------
Select NCAT From Voucher_Type
    Where V_Type='<V_Type>';

-- --------------------------------------------
-- Query 11
-- Uses table: RoomMast
-- --------------------------------------------
Select Name From RoomMast
    Where [Type]='HL' AND RoomCat='HALL' And Code='<Code>';

-- --------------------------------------------
-- Query 12
-- Uses table: SessionMast
-- --------------------------------------------
Select Name From SessionMast
    WHERE <Param> BETWEEN FromTime AND ToTime;

-- --------------------------------------------
-- Query 13
-- Uses table: SunTran
-- --------------------------------------------
Select S.* From SunTran S
    Where S.DocId='<DocId>'
    Order By SNo;

-- --------------------------------------------
-- Query 14
-- Uses table: Voucher_Type
-- --------------------------------------------
Select NCAT From Voucher_Type
    Where V_Type='<V_Type>'' And PayType='Cash';

-- --------------------------------------------
-- Query 15
-- Uses table: Depart
-- Uses table: ItemCatMast
-- Uses table: ItemMast
-- Uses table: KOT
-- --------------------------------------------
Select S.*,I.Name as ItemName,DispCode,S.DiscApp as DApp,S.RoundOff as ROff,IC.TaxStru as TaxCode,RateEdit,K.DociD as KOTDocID ,K.SNo as KOTSno,D.Code as DepartCode,D.ShortName as DepartName From (((Stock S
    Left Join KOT K on K.ContraDocId=S.DocId and K.ContraSNo=S.SNo)Left
    Join ItemMast I On S.Item=I.Code And I.RestCode=S.ItemRestCode)Left
    join ItemCatMast IC on IC.Code=I.ItemCatCode)Left
    Join Depart D on D.Code=I.RestCode
    Where S.DocId='<DocId>'
    Order By S.SNo;

-- --------------------------------------------
-- Query 16
-- Uses table: RoomMast
-- --------------------------------------------
Select T.Code,T.Name As Name From RoomMast T
    where T.Type in('HL')
    Order by T.Code;

-- --------------------------------------------
-- Query 17
-- Uses table: ROOMOCC
-- --------------------------------------------
Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat,RC.docid as FolioNoDocid From ROOMOCC RC
    where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL
    Order by RC.ROOMNO;

-- --------------------------------------------
-- Query 18
-- Uses table: Depart
-- --------------------------------------------
Select 'B'+ShortName From Depart
    Where LOGSITE_CODE='<LogSiteCode>' and Code='<Code>';

-- --------------------------------------------
-- Query 19
-- Uses table: guestfolio
-- --------------------------------------------
Select * from guestfolio
    where foliono=<foliono><Param>;

-- --------------------------------------------
-- Query 20
-- Uses table: RoundOffSetting
-- --------------------------------------------
SELECT RoundOffType FROM RoundOffSetting
    WHERE ModuleName='Sale Bill';

-- --------------------------------------------
-- Query 21
-- Uses table: DEPART
-- --------------------------------------------
Select R.HEADER1,R.HEADER2,R.COMPANYTITLE From DEPART R
    Where R.CODE='<CODE>';

-- --------------------------------------------
-- Query 22
-- Uses table: Revmast
-- --------------------------------------------
Select DeskCode AS RestCode from Revmast
    where taxstru='<taxstru>';

-- --------------------------------------------
-- Query 23
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS
    LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code
    Where TS.Code='<Code>';

-- --------------------------------------------
-- Query 24
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT TS.Code, TS.TaxCode, RM.Name, TS.Rate,RoundOff FROM TaxStru AS TS
    inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code)
    Where TS.Code='<Code><Param>'
    ORDER BY SNO DESC;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [DEPART]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [KOT]  NOT present in visahl.sql dump (schema unknown)
-- Table [PrinterSetup]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMOCC]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoundOffSetting]  NOT present in visahl.sql dump (schema unknown)
-- Table [Sale1]  (schema from visahl.sql):
--     DocId                  varchar (21) NOT NULL,
--     Vtype                  varchar (5) NULL,
--     VNo                    int NULL,
--     Vtime                  varchar (5) NULL,
--     Site_Code              varchar (2) NULL,
--     Vprefix                varchar (5) NULL,
--     Vdate                  datetime NULL,
--     RestCode               varchar (6) NULL,
--     RoomCat                varchar (5) NULL,
--     RoomType               varchar (2) NULL,
--     RoomNo                 varchar (5) NULL,
--     FolioNo                int NULL,
--     Party                  varchar (8) NULL,
--     Total                  float NULL,
--     DiscPer                float NULL,
--     DiscAmt                float NULL,
--     NonTaxable             float NULL,
--     Taxable                float NULL,
--     Tax                    float NULL,
--     ServiceCharge          float NULL,
--     AddAmt                 float NULL,
--     DedAmt                 float NULL,
--     RoundOff               float NULL,
--     NetAmt                 float NULL,
--     Remark                 varchar (255) NULL,
--     Waiter                 varchar (8) NULL,
--     FrBookDate             datetime NULL,
--     FrBookTime             varchar (5) NULL,
--     MenuSpl1               varchar (30) NULL,
--     MenuSpl2               varchar (30) NULL,
--     MenuSpl3               varchar (30) NULL,
--     MenuSpl4               varchar (30) NULL,
--     FuncName               varchar (30) NULL,
--     HouseKeep              varchar (25) NULL,
--     FrontOff               varchar (25) NULL,
--     Engg                   varchar (25) NULL,
--     Security               varchar (25) NULL,
--     Chef                   varchar (25) NULL,
--     Board                  varchar (25) NULL,
--     KOTNo                  varchar (255) NULL,
--     TokenNo                int NULL,
--     ExpAtt                 smallint NULL,
--     GuarAtt                smallint NULL,
--     CoverRate              float NULL,
--     U_Name                 varchar (10) NULL,
--     U_EntDt                datetime NULL,
--     U_AE                   varchar (1) NULL,
--     ToBookDate             datetime NULL,
--     ToBookTime             varchar (5) NULL,
--     HallRent               float NULL,
--     TotalPerCover          float NULL,
--     Amount                 float NULL,
--     Advance                float NULL,
--     RecNo                  int NULL,
--     RecDate                datetime NULL,
--     CrCardNo               varchar (20) NULL,
--     CrCardHolder           varchar (35) NULL,
--     BookDocId              varchar (21) NULL,
--     DelFlag                varchar (1) NULL,
--     PRINTED                varchar (1) NULL,
--     LogSite_Code           varchar (2) NULL,
--     DeliveredYN            varchar (1) NULL,
--     PhoneNo                varchar (20) NULL,
--     CustName               varchar (50) NULL,
--     Addr1                  varchar (50) NULL,
--     Addr2                  varchar (50) NULL,
--     CashRecd               float NULL,
--     BookNo                 int NULL,
--     SeqNo                  smallint NULL,
--     CardNo                 varchar (15) NULL,
--     ServiceTax             float NULL,
--     FolionoDocid           varchar (21) NULL,
--     AU_Name                varchar (10) NULL,
--     AU_EntDt               datetime NULL,
--     Redemption             float NULL,
--     DiscRemark             varchar (50) NULL,
--     CGST                   float NULL,
--     SGST                   float NULL,
--     IGST                   float NULL,
--     EditRemark             varchar (75) NULL,
-- Table [SessionMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SunTran]  (schema from visahl.sql):
--     DocId                  varchar (21) NOT NULL,
--     Sno                    smallint NOT NULL,
--     Vtype                  varchar (5) NULL,
--     VNo                    int NULL,
--     Vdate                  datetime NULL,
--     PartyCode              varchar (8) NULL,
--     SunCode                varchar (6) NULL,
--     Limit                  float NULL,
--     DispName               varchar (20) NULL,
--     ROff                   varchar (3) NULL,
--     CalcFormula            varchar (50) NULL,
--     SValue                 float NULL,
--     Amount                 float NULL,
--     BaseAmount             float NULL,
--     U_Name                 varchar (10) NULL,
--     U_EntDt                datetime NULL,
--     U_AE                   varchar (1) NULL,
--     SunAppDate             datetime NULL,
--     RevCode                varchar (6) NULL,
--     RestCode               varchar (6) NULL,
--     DelFlag                varchar (1) NULL,
--     SiteCode               varchar (2) NULL,
--     LogSite_Code           varchar (2) NULL,
--     SeqNo                  smallint NULL,
-- Table [SundryType]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [guestfolio]  NOT present in visahl.sql dump (schema unknown)
