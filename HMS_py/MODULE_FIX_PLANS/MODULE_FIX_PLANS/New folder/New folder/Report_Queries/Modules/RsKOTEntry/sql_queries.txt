# ==========================================================
# Module: RsKOTEntry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: MemEnviro
-- --------------------------------------------
Select Interface From MemEnviro
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: GuestFolio
-- --------------------------------------------
Select mFolioNoDocId From GuestFolio
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 3
-- Uses table: paycharge
-- --------------------------------------------
Select count(Distinct Bill_no) from paycharge
    where bill_no is not null and bill_no<>'' and FolionoDocid='<FolionoDocid>';

-- --------------------------------------------
-- Query 4
-- Uses table: Depart
-- --------------------------------------------
Select 'N'+ ShortName From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 5
-- Uses table: Depart
-- --------------------------------------------
Select 'K'+ShortName From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 6
-- Uses table: Depart
-- --------------------------------------------
Select CKOTPrintYN From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 7
-- Uses table: Enviro
-- --------------------------------------------
SELECT KOTPrinting FROM Enviro;

-- --------------------------------------------
-- Query 8
-- Uses table: SessionMast
-- --------------------------------------------
Select Name From SessionMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND <Param> BETWEEN FromTime AND ToTime;

-- --------------------------------------------
-- Query 9
-- Uses table: Stock
-- --------------------------------------------
Select count(*) from Stock
    Where KOTDocId='<KOTDocId>' and '<Param>'<>'N';

-- --------------------------------------------
-- Query 10
-- Uses table: Stock
-- --------------------------------------------
Select VNo from Stock
    Where KOTDocId='<KOTDocId>';

-- --------------------------------------------
-- Query 11
-- Uses table: KOT
-- --------------------------------------------
Select count(*) from KOT
    Where DocId='<DocId>' And IsNull(ContraDocId,'')<>'';

-- --------------------------------------------
-- Query 12
-- Uses table: Stock
-- --------------------------------------------
Select VNo from Stock
    Where KOTDocId='<KOTDocId>' and '<Param>'<>'N';

-- --------------------------------------------
-- Query 13
-- Uses table: KOT
-- --------------------------------------------
Select K.U_Name,K.U_AE,K.U_EntDt,K.Pending From KOT K
    Where K.Docid='<Docid>';

-- --------------------------------------------
-- Query 14
-- Uses table: Depart
-- --------------------------------------------
Select ShortName From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 15
-- Uses table: Depart
-- --------------------------------------------
Select 'N'+ShortName From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 16
-- Uses table: GuestFolio
-- --------------------------------------------
Select Max(mFolioNoDocId) From GuestFolio
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 17
-- Uses table: enviro
-- --------------------------------------------
Select NCUR from enviro
    where LogSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 18
-- Uses table: KOT
-- --------------------------------------------
Select * from KOT
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 19
-- Uses table: KOTLog
-- --------------------------------------------
Update KOTLog
    Set SeqNo=(Select ISNull(Max(SeqNo),0)+1 From KOTLog
    Where Docid= '<Docid>'<Param><Param>'<Param>;

-- --------------------------------------------
-- Query 20
-- Uses table: KOT
-- --------------------------------------------
Delete From KOT
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 21
-- Uses table: Stock
-- --------------------------------------------
Delete From Stock
    Where KOTDocID='<KOTDocID>';

-- --------------------------------------------
-- Query 22
-- Uses table: Stock
-- --------------------------------------------
Delete From Stock
    Where DocID='You must Enter a Valid Reason of Editing';

-- --------------------------------------------
-- Query 23
-- Uses table: Depart
-- --------------------------------------------
Update Depart
    Set CurTokenNoKOT=<CurTokenNoKOT>
    Where Logsite_Code='<LogSiteCode>'And code='<code>';

-- --------------------------------------------
-- Query 24
-- Uses table: Enviro
-- --------------------------------------------
SELECT KOTPrintEdited FROM Enviro;

-- --------------------------------------------
-- Query 25
-- Uses table: DEPART
-- Uses table: ItemMast
-- Uses table: VOUCHER_TYPE
-- Uses table: wAITER
-- --------------------------------------------
SELECT k.docid as DocID,K.Vtime as KotTime,K.VNo,k.Vdate,W.NAME AS WAITER,K.RoomNo AS TABLENo,I.NAME AS PRODUCT,K.Qty,D.NAME AS DEPARTNAME FROM ((((KOT AS K
    INNER JOIN wAITER AS W ON K.Waiter = W.Code)
    INNER JOIN ItemMast AS I ON (K.Item = I.Code And K.ItemRestCode=I.RestCode))
    INNER JOIN DEPART AS D ON K.RestCode = D.Code)
    INNER JOIN VOUCHER_TYPE AS V ON (K.Vtype = V.V_Type AND K.SITE_CODE=V.SITE_CODE))
    where k.contradocid='' and k.VoidYN='N' and k.delFlag<>'Y' and k.nckot='N' and k.restcode='<restcode>'
    Order By K.DocId,K.RESTCODE,I.Name;

-- --------------------------------------------
-- Query 26
-- Uses table: UserPermission
-- --------------------------------------------
SELECT EditItemInKOT,FreeItemAllow FROM UserPermission
    WHERE LOGSITE_CODE='<LogSiteCode>' And CompCode='<CompCode>' And UserName='<UserName>';

-- --------------------------------------------
-- Query 27
-- Uses table: depart
-- --------------------------------------------
Select FreeItemApp from depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 28
-- Uses table: ENVIRO
-- --------------------------------------------
SELECT * FROM ENVIRO
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 29
-- Uses table: PrinterSetup
-- --------------------------------------------
Select * from PrinterSetup
    where SITE_CODE='<LogSiteCode>' AND RestCode='<RestCode>' And ModType='KOT';

-- --------------------------------------------
-- Query 30
-- Uses table: depart
-- --------------------------------------------
Select AutoSplit from depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 31
-- Uses table: depart
-- --------------------------------------------
Select OpenItemYN from depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 32
-- Uses table: Depart
-- --------------------------------------------
Select Name From Depart
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND Code ='<Code>';

-- --------------------------------------------
-- Query 33
-- Uses table: NCTypeMast
-- --------------------------------------------
SELECT NCType,NcPer FROM NCTypeMast
    ORDER BY NCType;

-- --------------------------------------------
-- Query 34
-- Uses table: Depart
-- --------------------------------------------
Select ShortName From Depart
    Where Code='<Code><Param>' And LOGSITE_CODE='';

-- --------------------------------------------
-- Query 35
-- Uses table: Depart
-- Uses table: SubGroup
-- Uses table: Waiter
-- --------------------------------------------
Select DISTINCT K.Vtype,k.Vtime,K.VNo,K.VDate,S.CardNo,S.Name As MemName,W.name as WaiterName,k.RoomNo as TableNo,K.NCKOT,K.NCTYPE,K.Remarks , K.ContraDocId, D.ShortName,K.GuarAtt,K.U_AE,K.U_Name,K.TokenNo From (((KOT K
    Left Join Waiter W on K.Waiter=W.Code)
    left join SubGroup S On K.Party=S.SubCode)
    Left Join Depart D on D.Code=K.RestCode)
    Where K.DocID='' AND CONTRADOCID IS NULL;

-- --------------------------------------------
-- Query 36
-- Uses table: kot
-- --------------------------------------------
Select Count(Distinct Printed) from kot
    where docid='<docid>' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y');

-- --------------------------------------------
-- Query 37
-- Uses table: kot
-- --------------------------------------------
Select Printed from kot
    where docid='<docid>';

-- --------------------------------------------
-- Query 38
-- Uses table: Depart
-- --------------------------------------------
Select CKOTPrintPath From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 39
-- Uses table: Depart
-- --------------------------------------------
Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart
    Where Depart.Code='<LogSiteCode>MK';

-- --------------------------------------------
-- Query 40
-- Uses table: SmartCardRegistration
-- --------------------------------------------
Select Code,Name,CardNo From SmartCardRegistration
    Where Code='<Code>';

-- --------------------------------------------
-- Query 41
-- Uses table: Depart
-- --------------------------------------------
Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart
    Where Depart.Code='<Code>';

-- --------------------------------------------
-- Query 42
-- Uses table: kot
-- --------------------------------------------
Select Max(Printed) from kot
    where docid='<docid>';

-- --------------------------------------------
-- Query 43
-- Uses table: Depart
-- --------------------------------------------
Select CKOTPrintYN,PrintType,CKOTPrintPath,NoOfKot From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 44
-- Uses table: Depart
-- --------------------------------------------
Select * From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 45
-- Uses table: Depart
-- Uses table: ItemMast
-- --------------------------------------------
Select Count(Distinct Depart.Code) From (KOT K
    Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode)
    LEFT JOIN Depart ON I.Kitchen=Depart.Code
    Where K.DocID='<DocID>';

-- --------------------------------------------
-- Query 46
-- Uses table: kot
-- --------------------------------------------
Select Count(Distinct Printed) from kot
    where docid='<docid>' AND SNO In (Select SNo From (<Param><Param>;

-- --------------------------------------------
-- Query 47
-- Uses table: kot
-- --------------------------------------------
Select Printed from kot
    where docid='<docid>' AND SNO In (Select SNo From (<Param><Param>;

-- --------------------------------------------
-- Query 48
-- Uses table: KOT
-- --------------------------------------------
UPDATE KOT
    SET PRINTED='Y'
    WHERE DOCID='<DOCID>';

-- --------------------------------------------
-- Query 49
-- Uses table: Depart
-- --------------------------------------------
SELECT IsNull(Max(Name),'') FROM Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 50
-- Uses table: KOT
-- Uses table: RoomMast
-- --------------------------------------------
Select K.*,R.name as RName From KOT K
    left join RoomMast R on R.Type=K.RoomType and R.Code=K.RoomNo
    Where K.Docid='<Docid>'
    order by K.Sno;

-- --------------------------------------------
-- Query 51
-- Uses table: Voucher_Type
-- --------------------------------------------
Select NCAT From Voucher_Type
    Where (SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='<LogSiteCode>') and V_Type='<V_Type>';

-- --------------------------------------------
-- Query 52
-- Uses table: Voucher_Type
-- --------------------------------------------
Select NCAT From Voucher_Type
    Where (SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='';

-- --------------------------------------------
-- Query 53
-- Uses table: Voucher_Type
-- --------------------------------------------
Select NCAT From Voucher_Type
    Where (SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='' and (code is not null or code <> '');

-- --------------------------------------------
-- Query 54
-- Uses table: SessionMast
-- --------------------------------------------
Select Name From SessionMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and <Param> BETWEEN FromTime AND ToTime;

-- --------------------------------------------
-- Query 55
-- Uses table: Depart
-- Uses table: ItemMast
-- Uses table: UnitMast
-- --------------------------------------------
Select K1.*,I.name as ItemName,I.Unit,IsNull(U.PriceType,0) As PriceType,DispCode,D.Code as DepartCode,D.ShortName as DepartName,I.Kitchen From (KOT K1
    Inner Join ItemMast I On K1.Item=I.Code And K1.ItemRestCode=I.RestCode)Inner
    Join Depart D on D.Code=I.RestCode
    Left Join UnitMast U On U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code
    Where K1.DocId='<DocId>'
    order by K1.Sno;

-- --------------------------------------------
-- Query 56
-- Uses table: Depart
-- --------------------------------------------
Select CurTokenNoKOT From Depart
    Where Logsite_code='<LogSiteCode>' And Code='<Code>';

-- --------------------------------------------
-- Query 57
-- Uses table: Depart
-- Uses table: ItemMast
-- --------------------------------------------
Select K.Sno,I.Name as ItemName,K.Description,K.Qty,K.Rate,K.Amount,K.VoidYN As Cancel,Depart.ShortName From (KOT K
    Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode)
    LEFT JOIN Depart ON I.Kitchen=Depart.Code
    Where K.DocID='<DocID>'
    Order By K.Sno;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [DEPART]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [ENVIRO]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [KOT]  NOT present in visahl.sql dump (schema unknown)
-- Table [KOTLog]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [NCTypeMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [PrinterSetup]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SessionMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SmartCardRegistration]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [UnitMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [UserPermission]  NOT present in visahl.sql dump (schema unknown)
-- Table [VOUCHER_TYPE]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [Waiter]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [kot]  NOT present in visahl.sql dump (schema unknown)
-- Table [paycharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [wAITER]  NOT present in visahl.sql dump (schema unknown)
