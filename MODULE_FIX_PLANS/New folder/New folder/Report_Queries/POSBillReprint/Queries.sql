# ==========================================================
# Module: POSBillReprint
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: PrinterSetup
-- --------------------------------------------
Select * from PrinterSetup
    where RestCode='<RestCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: ENVIRO
-- --------------------------------------------
SELECT * FROM ENVIRO
    WHERE LOGSITE_CODE='<LogSiteCode>';

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
Select AutoSplit from depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 5
-- Uses table: Depart
-- --------------------------------------------
SELECT p_Name =CASE PartyName WHEN 'Y' THEN 'Yes' ELSE 'No' END FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 6
-- Uses table: Depart
-- --------------------------------------------
select MemberInfo from Depart
    where (Logsite_code='<LogSiteCode>'or LOGSITE_CODE='HO') and Code='<Code>';

-- --------------------------------------------
-- Query 7
-- Uses table: PayCharge
-- --------------------------------------------
Select * from PayCharge
    where docid='<docid>' and Sno=1;

-- --------------------------------------------
-- Query 8
-- Uses table: PayCharge
-- Uses table: Subgroup
-- --------------------------------------------
Select Name from PayCharge
    left join Subgroup on Paycharge.CompCode=Subgroup.Subcode
    where docid='<docid>';

-- --------------------------------------------
-- Query 9
-- Uses table: SplitSale1
-- --------------------------------------------
Select S.* From SplitSale1 S
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
-- Uses table: Voucher_Type
-- --------------------------------------------
Select NCAT From Voucher_Type
    Where V_Type='<V_Type>'';

-- --------------------------------------------
-- Query 13
-- Uses table: SessionMast
-- --------------------------------------------
Select Name From SessionMast
    WHERE <Param> BETWEEN FromTime AND ToTime;

-- --------------------------------------------
-- Query 14
-- Uses table: SplitedSunTran
-- --------------------------------------------
Select S.* From SplitedSunTran S
    Where S.DocId='<DocId>'
    Order By SNo;

-- --------------------------------------------
-- Query 15
-- Uses table: Voucher_Type
-- --------------------------------------------
Select NCAT From Voucher_Type
    Where V_Type='<V_Type>'' And PayType='Cash';

-- --------------------------------------------
-- Query 16
-- Uses table: Depart
-- Uses table: ItemCatMast
-- Uses table: ItemMast
-- Uses table: KOT
-- --------------------------------------------
Select Distinct S.*,I.Name as ItemName,I.RateIncTax,DispCode,I.SchrgApp,S.DiscApp as DApp,S.RoundOff as ROff,IC.TaxStru as TaxCode,RateEdit,D.Code as DepartCode,D.ShortName as DepartName From (((SplitStock S
    Left Join KOT K on K.ContraDocId=S.DocId and K.ContraSNo=S.SNo)Left
    Join ItemMast I On S.Item=I.Code And S.ItemRestCode=I.RestCode)Left
    join ItemCatMast IC on IC.Code=I.ItemCatCode)Left
    Join Depart D on D.Code=I.RestCode
    Where S.DocId='<DocId>'
    Order By S.SNo;

-- --------------------------------------------
-- Query 17
-- Uses table: Sale1
-- --------------------------------------------
Select S.* From Sale1 S
    Where S.Docid='<Docid>';

-- --------------------------------------------
-- Query 18
-- Uses table: SunTran
-- --------------------------------------------
Select S.* From SunTran S
    Where S.DocId='<DocId>'
    Order By SNo;

-- --------------------------------------------
-- Query 19
-- Uses table: Depart
-- Uses table: ItemCatMast
-- Uses table: ItemMast
-- Uses table: KOT
-- --------------------------------------------
Select Distinct S.*,I.Name as ItemName,I.RateIncTax,DispCode,S.DiscApp as DApp,I.SchrgApp,S.RoundOff as ROff,IC.TaxStru as TaxCode,RateEdit,D.Code as DepartCode,D.ShortName as DepartName From (((Stock S
    Left Join KOT K on K.ContraDocId=S.DocId and K.ContraSNo=S.SNo)Left
    Join ItemMast I On S.Item=I.Code And S.ItemRestCode=I.RestCode)Left
    join ItemCatMast IC on IC.Code=I.ItemCatCode)Left
    Join Depart D on D.Code=I.RestCode
    Where S.DocId='<DocId>'
    Order By S.SNo;

-- --------------------------------------------
-- Query 20
-- Uses table: Depart
-- --------------------------------------------
Select 'B'+ShortName From Depart
    Where LOGSITE_CODE='<LogSiteCode>' and Code='<Code>';

-- --------------------------------------------
-- Query 21
-- Uses table: Depart
-- --------------------------------------------
Select 'B'+ShortName From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 22
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 23
-- Uses table: Sale1
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName From Sale1
    left join waiter W on sale1.waiter=w.code
    Where Sale1.DocID='<DocID>';

-- --------------------------------------------
-- Query 24
-- Uses table: Sale1
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName From Sale1
    left join waiter W on sale1.waiter=w.code
    Where Sale1.DocID='<DocID><Param>'
    GROUP BY S.ITEM
    ORDER BY MAX(I.NAME);

-- --------------------------------------------
-- Query 25
-- Uses table: Sale1
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName From Sale1
    left join waiter W on sale1.waiter=w.code
    Where Sale1.DocID='<DocID><Param>'
    ORDER BY I.Kitchen;

-- --------------------------------------------
-- Query 26
-- Uses table: Depart
-- --------------------------------------------
SELECT Slogan1 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 27
-- Uses table: Depart
-- --------------------------------------------
SELECT Slogan2 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 28
-- Uses table: Sale1
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName From Sale1
    left join waiter W on sale1.waiter=w.code
    Where Sale1.DocID='<DocID><Param>'
    order by sno;

-- --------------------------------------------
-- Query 29
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- Uses table: SubGroup
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,S.CardNo,IsNull(S.Name,'') As MemName,W.Name as WaiterName,Case When IsNull(Sale1.RoomType,'')='RO' Then RTrim(LTrim(IsNull(GP.ConPrefix,'')))+' '+RTrim(LTrim(IsNull(GP.Name,''))) When IsNull(S.Name,'')<>'' Then RTrim(LTrim(IsNull(S.Name,'')))+' - '+RTrim(LTrim(IsNull(S.CardNo,''))) Else IsNull(Sale1.Remark,'') End Remark1 From ((((Sale1
    left join waiter W on sale1.waiter=w.code)
    left join SubGroup S On Sale1.Party=S.SubCode)
    left join GuestFolio GF On Sale1.FolionoDocid=GF.DocId)
    left join GuestProf GP On GF.GuestProf=GP.Code)
    Where Sale1.DocID='<DocID>';

-- --------------------------------------------
-- Query 30
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    where code='<code>';

-- --------------------------------------------
-- Query 31
-- Uses table: Sale1
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName From Sale1
    left join waiter W on sale1.waiter=w.code
    Where Sale1.DocID='<DocID><Param>'
    GROUP BY KOT.VDATE,S.ITEM
    ORDER BY KOT.VDATE,MAX(I.NAME);

-- --------------------------------------------
-- Query 32
-- Uses table: enviro
-- --------------------------------------------
Select * from enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 33
-- Uses table: revmast
-- --------------------------------------------
Select Min(Sale2.SNo1) as SNo1,max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (sale2
    left join revmast on revmast.code=sale2.Taxcode)
    where Sale2.DocID='<DocID>'
    group by revmast.code,TaxPer
    Order by Min(Sale2.SNo1),TaxPer;

-- --------------------------------------------
-- Query 34
-- Uses table: SubGroup
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,S.CardNo,S.Name As MemName,W.Name as WaiterName From ((Sale1
    left join waiter W on sale1.waiter=w.code)
    left join SubGroup S On Sale1.Party=S.SubCode)
    Where Sale1.DocID='<DocID>';

-- --------------------------------------------
-- Query 35
-- Uses table: PayCharge
-- --------------------------------------------
Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge
    Where DocID='<DocID>' And PayType='Cash';

-- --------------------------------------------
-- Query 36
-- Uses table: SubGroup
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,S.CardNo,S.Name As MemName,W.Name as WaiterName,Printed From ((Sale1
    left join waiter W on sale1.waiter=w.code)
    left join SubGroup S On Sale1.Party=S.SubCode)
    Where Sale1.DocID='<DocID>';

-- --------------------------------------------
-- Query 37
-- Uses table: Depart
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName,depart.ShortName From (Sale1
    left join waiter W on sale1.waiter=w.code)
    LEFT JOIN Depart ON Sale1.RestCode = Depart.Code
    Where Sale1.DocID='<DocID>';

-- --------------------------------------------
-- Query 38
-- Uses table: Depart
-- --------------------------------------------
SELECT Slogan1,Slogan2 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 39
-- Uses table: revmast
-- --------------------------------------------
select max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (sale2
    left join revmast on revmast.code=sale2.Taxcode)
    where Sale2.DocID='<DocID>'
    group by revmast.code,TaxPer
    Order by TaxPer;

-- --------------------------------------------
-- Query 40
-- Uses table: City
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- Uses table: State
-- Uses table: SubGroup
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,S.CardNo,IsNull(S.Name,'') As MemName,W.Name as WaiterName,Case When IsNull(Sale1.RoomType,'')='RO' Then RTrim(LTrim(IsNull(GP.ConPrefix,'')))+' '+RTrim(LTrim(IsNull(GP.Name,''))) When IsNull(S.Name,'')<>'' And IsNull(S.CompanyType,'')<>'Corporate' Then RTrim(LTrim(IsNull(S.Name,'')))+' - '+RTrim(LTrim(IsNull(S.CardNo,''))) Else IsNull(Sale1.Remark,'') End Remark1,S.NAME AS CompanyName,S.Add1 CompAdd1,S.Add2 CompAdd2,S.Add3 CompAdd3,CC.CityName CompCity,CS.ShortName CompStateCode,CS.Name CompState,S.GSTIN CompGSTIN From ((((((Sale1
    left join waiter W on sale1.waiter=w.code)
    left join SubGroup S On Sale1.Party=S.SubCode)
    Left Join City CC On CC.CityCode=S.CityCode)
    Left Join State CS On CS.Code=CC.State)
    left join GuestFolio GF On Sale1.FolionoDocId=GF.DocId)
    left join GuestProf GP On GF.GuestProf=GP.Code)
    Where Sale1.DocID='<DocID>';

-- --------------------------------------------
-- Query 41
-- Uses table: Depart
-- --------------------------------------------
SELECT Header1,Header2,Header3,Header4,Slogan1,Slogan2 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 42
-- Uses table: RoundOffSetting
-- --------------------------------------------
SELECT Max(RoundOffType) FROM RoundOffSetting
    WHERE ModuleName='Sale Bill' And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 43
-- Uses table: Sale1
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName From Sale1
    left join waiter W on sale1.waiter=w.code
    Where Sale1.DocID='<DocID><Param>'
    order by sno <Param> %);

-- --------------------------------------------
-- Query 44
-- Uses table: SubGroup
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,S.Name As MemName,W.Name as WaiterName From ((Sale1
    left join waiter W on sale1.waiter=w.code)
    left join SubGroup S On Sale1.Party=S.SubCode)
    Where Sale1.DocID='<DocID>';

-- --------------------------------------------
-- Query 45
-- Uses table: Depart
-- --------------------------------------------
SELECT TOKENPrint FROM Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 46
-- Uses table: Depart
-- --------------------------------------------
SELECT HEADER1 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 47
-- Uses table: Depart
-- --------------------------------------------
SELECT HEADER2 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 48
-- Uses table: enviro
-- --------------------------------------------
Select * from enviro
    where LOGSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 49
-- Uses table: DEPART
-- --------------------------------------------
Select R.NAME,R.HEADER1,R.HEADER2,R.HEADER3,R.HEADER4,R.COMPANYTITLE,R.OUTLETTITLE From DEPART R
    Where R.CODE='<CODE>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [DEPART]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [ENVIRO]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestProf]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [KOT]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [PrinterSetup]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [SplitSale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [SplitedSunTran]  NOT present in visahl.sql dump (schema unknown)
-- Table [State]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [waiter]  NOT present in visahl.sql dump (schema unknown)
