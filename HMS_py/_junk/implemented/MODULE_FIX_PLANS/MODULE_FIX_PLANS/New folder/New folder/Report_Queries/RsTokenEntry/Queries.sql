# ==========================================================
# Module: RsTokenEntry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: SessionMast
-- --------------------------------------------
Select Name From SessionMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND <Param> BETWEEN FromTime AND ToTime;

-- --------------------------------------------
-- Query 2
-- Uses table: Stock
-- --------------------------------------------
Select count(*) from Stock
    Where KOTDocId='<KOTDocId>' and '<Param>'<>'N';

-- --------------------------------------------
-- Query 3
-- Uses table: Stock
-- --------------------------------------------
Select VNo from Stock
    Where KOTDocId='<KOTDocId>';

-- --------------------------------------------
-- Query 4
-- Uses table: TOKEN
-- --------------------------------------------
Select count(*) from TOKEN
    Where DocId='<DocId>' And IsNull(ContraDocId,'')<>'';

-- --------------------------------------------
-- Query 5
-- Uses table: Stock
-- --------------------------------------------
Select VNo from Stock
    Where KOTDocId='<KOTDocId>' and '<Param>'<>'N';

-- --------------------------------------------
-- Query 6
-- Uses table: TOKEN
-- --------------------------------------------
Select K.U_Name,K.U_AE,K.U_EntDt,K.Pending From TOKEN K
    Where K.Docid='<Docid>';

-- --------------------------------------------
-- Query 7
-- Uses table: Depart
-- --------------------------------------------
Select ShortName From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 8
-- Uses table: Depart
-- --------------------------------------------
Select 'N'+ShortName From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 9
-- Uses table: Depart
-- --------------------------------------------
Select CKOTPrintYN,NoOfKot From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 10
-- Uses table: Enviro
-- --------------------------------------------
SELECT KOTPrinting FROM Enviro;

-- --------------------------------------------
-- Query 11
-- Uses table: Depart
-- --------------------------------------------
Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart
    Where Depart.Code='<LogSiteCode>MK';

-- --------------------------------------------
-- Query 12
-- Uses table: TOKEN
-- --------------------------------------------
Select Count(Distinct Printed) from TOKEN
    where docid='<docid>' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y');

-- --------------------------------------------
-- Query 13
-- Uses table: TOKEN
-- --------------------------------------------
Select Printed from TOKEN
    where docid='<docid>';

-- --------------------------------------------
-- Query 14
-- Uses table: TOKEN
-- --------------------------------------------
UPDATE TOKEN
    SET PRINTED='Y'
    WHERE DOCID='<DOCID>';

-- --------------------------------------------
-- Query 15
-- Uses table: enviro
-- --------------------------------------------
Select NCUR from enviro
    where LogSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 16
-- Uses table: TOKEN
-- --------------------------------------------
Select * from TOKEN
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 17
-- Uses table: TOKEN
-- --------------------------------------------
Delete From TOKEN
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 18
-- Uses table: Stock
-- --------------------------------------------
Delete From Stock
    Where KOTDocID='<KOTDocID>';

-- --------------------------------------------
-- Query 19
-- Uses table: Stock
-- --------------------------------------------
Delete From Stock
    Where DocID='Please Specify, Reason of Editing ?';

-- --------------------------------------------
-- Query 20
-- Uses table: Depart
-- --------------------------------------------
Select 'N'+ ShortName From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 21
-- Uses table: Depart
-- --------------------------------------------
Select 'T'+ShortName From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 22
-- Uses table: MemEnviro
-- --------------------------------------------
Select Interface From MemEnviro
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 23
-- Uses table: NCTypeMast
-- --------------------------------------------
SELECT NCType,NcPer FROM NCTypeMast
    ORDER BY NCType;

-- --------------------------------------------
-- Query 24
-- Uses table: Depart
-- --------------------------------------------
Select CKOTPrintYN From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 25
-- Uses table: Depart
-- --------------------------------------------
Select CKOTPrintPath From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 26
-- Uses table: Depart
-- --------------------------------------------
Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart
    Where Depart.Code='<Code>';

-- --------------------------------------------
-- Query 27
-- Uses table: RoomMast
-- Uses table: TOKEN
-- --------------------------------------------
Select K.*,R.name as RName From TOKEN K
    left join RoomMast R on R.Type=K.RoomType and R.Code=K.RoomNo
    Where K.Docid='<Docid>'
    order by K.Sno;

-- --------------------------------------------
-- Query 28
-- Uses table: Voucher_Type
-- --------------------------------------------
Select NCAT From Voucher_Type
    Where (SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='<LogSiteCode>') and V_Type='<V_Type>';

-- --------------------------------------------
-- Query 29
-- Uses table: Voucher_Type
-- --------------------------------------------
Select NCAT From Voucher_Type
    Where (SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='';

-- --------------------------------------------
-- Query 30
-- Uses table: Voucher_Type
-- --------------------------------------------
Select NCAT From Voucher_Type
    Where (SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='' and (code is not null or code <> '');

-- --------------------------------------------
-- Query 31
-- Uses table: SessionMast
-- --------------------------------------------
Select Name From SessionMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and <Param> BETWEEN FromTime AND ToTime;

-- --------------------------------------------
-- Query 32
-- Uses table: Depart
-- Uses table: ItemMast
-- Uses table: UnitMast
-- --------------------------------------------
Select K1.*,I.name as ItemName,I.Unit,IsNull(U.PriceType,0) As PriceType,DispCode,D.Code as DepartCode,D.ShortName as DepartName From (TOKEN K1
    Inner Join ItemMast I On K1.Item=I.Code And K1.ItemRestCode=I.RestCode)Inner
    Join Depart D on D.Code=I.RestCode
    Left Join UnitMast U On U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code
    Where K1.DocId='<DocId>'
    order by K1.Sno;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [NCTypeMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SessionMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Stock]  (schema from visahl.sql):
--     DocId                  varchar (21) NOT NULL,
--     Sno                    smallint NOT NULL,
--     Vtype                  varchar (5) NULL,
--     VNo                    int NULL,
--     Site_Code              varchar (2) NULL,
--     Vprefix                varchar (5) NULL,
--     Vdate                  datetime NULL,
--     PartyCode              varchar (8) NULL,
--     RestCode               varchar (6) NULL,
--     RoomCat                varchar (5) NULL,
--     RoomType               varchar (2) NULL,
--     RoomNo                 varchar (5) NULL,
--     ContraDocId            varchar (21) NULL,
--     ContraSno              int NULL,
--     Item                   varchar (8) NULL,
--     QtyIss                 float NULL,
--     QtyRec                 float NULL,
--     Unit                   varchar (6) NULL,
--     Rate                   float NULL,
--     Amount                 float NULL,
--     TaxPer                 float NULL,
--     TaxAmt                 float NULL,
--     DiscPer                float NULL,
--     DiscAmt                float NULL,
--     VoidYN                 varchar (1) NULL,
--     Remarks                varchar (75) NULL,
--     KOTDocId               varchar (21) NULL,
--     KOTSno                 smallint NULL,
--     VTime                  varchar (6) NULL,
--     U_Name                 varchar (10) NULL,
--     U_EntDt                datetime NULL,
--     U_AE                   varchar (1) NULL,
--     Total                  float NULL,
--     DiscApp                varchar (1) NULL,
--     RoundOff               varchar (3) NULL,
--     DepartCode             varchar (6) NULL,
--     GodownCode             varchar (6) NULL,
--     ChalQty                float NULL,
--     RecdQty                float NULL,
--     AccQty                 float NULL,
--     RejQty                 float NULL,
--     RecdUnit               varchar (6) NULL,
--     Specification          varchar (35) NULL,
--     ItemRate               float NULL,
--     DelFlag                varchar (1) NULL,
--     LandVal                float NULL,
--     ConvRatio              float NULL,
--     IndentDocId            varchar (21) NOT NULL,
--     IndentSNo              int NULL,
--     IssQty                 float NULL,
--     IssueUnit              varchar (6) NULL,
--     LogSite_Code           varchar (2) NULL,
--     FreeSno                int NULL,
--     SchemeCode             varchar (6) NULL,
--     SeqNo                  smallint NULL,
--     Company                varchar (8) NULL,
--     ExpDate                datetime NULL,
--     MfdDate                datetime NULL,
--     ItemRestCode           varchar (6) NULL,
--     ShiftCode              varchar (5) NULL,
--     MRP                    float NULL,
--     SChrgApp               varchar (1) NULL,
--     SChrgPer               float NULL,
--     SChrgAmt               float NULL,
--     RefDocId               varchar (21) NULL,
-- Table [TOKEN]  NOT present in visahl.sql dump (schema unknown)
-- Table [UnitMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
