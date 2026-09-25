# ==========================================================
# Module: RSSaleBill
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: UserPermission
-- --------------------------------------------
SELECT POSDiscountAllowUpto FROM UserPermission
    WHERE LOGSITE_CODE='<LogSiteCode>' And CompCode='<CompCode>' And UserName='<UserName>';

-- --------------------------------------------
-- Query 2
-- Uses table: ENVIRO
-- --------------------------------------------
SELECT * FROM ENVIRO
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: PrinterSetup
-- --------------------------------------------
Select * from PrinterSetup
    where SITE_CODE='<LogSiteCode>' AND RestCode='<RestCode>';

-- --------------------------------------------
-- Query 4
-- Uses table: DepartRWScheme
-- --------------------------------------------
Select Count(*) From DepartRWScheme
    Where AssociatedRestCode='<AssociatedRestCode>' And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 5
-- Uses table: depart
-- --------------------------------------------
Select RateInclTax,AutoSettlement,BillEditing,BarCodeApp,BarCodePartitionAppOn,GrpDiscApp,DiscRemarkYN,EditRemarkYN,OpenItemYN from depart
    where code='<code>';

-- --------------------------------------------
-- Query 6
-- Uses table: OutletBarCodePartDetail
-- --------------------------------------------
Select BarCodePart, BarCodeStartFrom, BarCodeLength from OutletBarCodePartDetail BD
    where RestCode='<RestCode>'
    Order By BarCodeStartFrom;

-- --------------------------------------------
-- Query 7
-- Uses table: depart
-- --------------------------------------------
Select KOtYn from depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 8
-- Uses table: depart
-- --------------------------------------------
Select IsNull(DirectBilling,'') from depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 9
-- Uses table: depart
-- --------------------------------------------
Select AutoSplit from depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 10
-- Uses table: Depart
-- --------------------------------------------
Select ShortName,Code from Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 11
-- Uses table: Depart
-- --------------------------------------------
SELECT p_Name =CASE PartyName WHEN 'Y' THEN 'Yes' ELSE 'No' END FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 12
-- Uses table: Depart
-- --------------------------------------------
Select Name From Depart
    Where Code ='<Code>';

-- --------------------------------------------
-- Query 13
-- Uses table: Depart
-- --------------------------------------------
Select Name From Depart
    Where Code ='<Code>'';

-- --------------------------------------------
-- Query 14
-- Uses table: Depart
-- Uses table: ItemCatMast
-- Uses table: ItemGrp
-- Uses table: UnitMast
-- --------------------------------------------
Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.Unit,IsNull(U.PriceType,0) As PriceType,IG.Name as ItemGroup,DispCode,IC.taxStru,IC.CatType,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,I.SChrgApp,I.RateIncTax,I.BarCode From (((ItemMast I
    left join ItemGrp IG on I.ItemGroup=IG.Code)Left
    Join UnitMast U On U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code)Left
    Join Depart D On D.Code=I.RestCode)Left
    join ItemCatMast IC on IC.Code=I.ItemCatCode
    Where I.Type='Finish' And I.ItemType<>'Store' And I.DispCode <>9999 and I.ActiveYN<>'No'
    Order by I.BarCode;

-- --------------------------------------------
-- Query 15
-- Uses table: Depart
-- Uses table: ItemCatMast
-- Uses table: ItemGrp
-- Uses table: UnitMast
-- --------------------------------------------
Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.Unit,IsNull(U.PriceType,0) As PriceType,IG.Name as ItemGroup,DispCode,IC.taxStru,IC.CatType,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,I.SChrgApp,I.RateIncTax,I.BarCode From (((ItemMast I
    left join ItemGrp IG on I.ItemGroup=IG.Code)Left
    Join UnitMast U On U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code)Left
    Join Depart D On D.Code=I.RestCode)Left
    join ItemCatMast IC on IC.Code=I.ItemCatCode
    Where I.Type='Finish' And I.ItemType<>'Store' And I.DispCode <>9999 and I.ActiveYN<>'No'
    Order by I.Name;

-- --------------------------------------------
-- Query 16
-- Uses table: MemENVIRO
-- --------------------------------------------
SELECT * FROM MemENVIRO
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 17
-- Uses table: Depart
-- --------------------------------------------
Select 'B'+ShortName From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 18
-- Uses table: SundryType
-- --------------------------------------------
Select Count(*) From SundryType
    WHERE V_Type='<V_Type>';

-- --------------------------------------------
-- Query 19
-- Uses table: UserPermission
-- --------------------------------------------
SELECT POSSettlementYN FROM UserPermission
    WHERE LOGSITE_CODE='<LogSiteCode>' And CompCode='<CompCode>' And UserName='<UserName>';

-- --------------------------------------------
-- Query 20
-- Uses table: PackingOrderDetail
-- --------------------------------------------
Select count(*) From PackingOrderDetail
    Where Docid='<Docid><Param>;

-- --------------------------------------------
-- Query 21
-- Uses table: KOT
-- --------------------------------------------
Select count(*) From KOT
    Where Docid='<Docid><Param>;

-- --------------------------------------------
-- Query 22
-- Uses table: KOT
-- --------------------------------------------
Select IsNull(Max(VTime),'') From KOT
    Where DocId='<DocId><Param>;

-- --------------------------------------------
-- Query 23
-- Uses table: Depart
-- Uses table: ITEMMAST
-- Uses table: ItemCatMast
-- Uses table: UnitMast
-- --------------------------------------------
Select * ,I.NAME AS ITEMNAME,DispCode,I.UNIT,IsNull(U.PriceType,0) As PriceType,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,IC.taxStru,IC.CatType,I.Kitchen,D.Code as OutletCode,D.ShortName as OutletSName From ((TOKEN K
    LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE AND K.ITEMRESTCODE=I.RESTCODE)Left
    join ItemCatMast IC on IC.Code=I.ItemCatCode)Left
    Join Depart D On D.Code=I.RestCode
    Left Join UnitMast U On U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code
    WHERE k.VDate<=<Param> And K.RestCode='<RestCode>' aND K.TokenNo In (<Param>) and K.PENDING IN('Y') AND VOIDYN NOT IN('Y') And (DelFlag<>'Y' or DelFlag Is NULL) And NCTOKEN<>'Y' And IsNull(CancelYN,'')<>'Y'
    Order by K.DOCID,K.SNo;

-- --------------------------------------------
-- Query 24
-- Uses table: MemEnviro
-- --------------------------------------------
Select Interface From MemEnviro
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 25
-- Uses table: SessionMast
-- --------------------------------------------
Select Name From SessionMast
    WHERE <Param> BETWEEN FromTime AND ToTime;

-- --------------------------------------------
-- Query 26
-- Uses table: Depart
-- Uses table: Depart1
-- --------------------------------------------
Select D1.AssociatedRestCode As OutletCode,D.Name OutLetName From Depart1 D1
    Left Join Depart D On D1.AssociatedRestCode=D.Code
    Where DepartCode='<DepartCode>' And D1.LOGSITE_CODE='<LogSiteCode>' And IsNull(AssociatedRestCode,'')<>''
    Order By D.Code;

-- --------------------------------------------
-- Query 27
-- Uses table: PAYCHARGE
-- --------------------------------------------
DELETE FROM PAYCHARGE
    WHERE dOCID='<dOCID>';

-- --------------------------------------------
-- Query 28
-- Uses table: paycharge
-- --------------------------------------------
Select count(Distinct Bill_no) from paycharge
    where bill_no is not null and bill_no<>'' and FolionoDocid='<FolionoDocid>';

-- --------------------------------------------
-- Query 29
-- Uses table: paycharge
-- --------------------------------------------
Select count(Distinct Bill_no) from paycharge
    where bill_no is not null and bill_no<>'' and FolionoDocid='<FolionoDocid>'';

-- --------------------------------------------
-- Query 30
-- Uses table: KOT
-- --------------------------------------------
Update KOT
    set delflag='Y'
    where Contradocid='<Contradocid>';

-- --------------------------------------------
-- Query 31
-- Uses table: Stock
-- --------------------------------------------
Update Stock
    set delflag='D'
    where docid='<docid>';

-- --------------------------------------------
-- Query 32
-- Uses table: Sale1
-- --------------------------------------------
Update Sale1
    set delflag='D',Remark='<Remark>',U_name='<U_name>',U_AE='E'
    where docid='<docid>';

-- --------------------------------------------
-- Query 33
-- Uses table: Sale2
-- --------------------------------------------
Update Sale2
    set delflag='D'
    where docid='<docid>';

-- --------------------------------------------
-- Query 34
-- Uses table: paycharge
-- --------------------------------------------
Select count(Distinct Bill_no) from paycharge
    where bill_no is not null and bill_no<>'' and FolionoDocid='<FolionoDocid>;

-- --------------------------------------------
-- Query 35
-- Uses table: PAYCHARGE
-- --------------------------------------------
SELECT Count(*) FROM PAYCHARGE
    WHERE DOCID='<DOCID>';

-- --------------------------------------------
-- Query 36
-- Uses table: Depart
-- Uses table: Voucher_Type
-- --------------------------------------------
Select S.Docid as SearchCode,S.VNo as [No] ,CAST(S.VDate AS VARCHAR(11)) as [Date],s.RoomNo as TableNo From (Sale1 S
    INNER Join Voucher_Type V On (S.VType= V.V_Type AND S.SITE_CODE=V.SITE_CODE))
    INNER Join Depart H on S.RestCode = H.Code
    Where S.LOGSITE_CODE='';

-- --------------------------------------------
-- Query 37
-- Uses table: depart
-- --------------------------------------------
Select CoverMandatory,MobileNoMandatory from depart
    where code='<code>';

-- --------------------------------------------
-- Query 38
-- Uses table: KOT
-- --------------------------------------------
Select Top 1 LTrim(SubString(IsNull(ContraDocId,''),14,8)) BillNo From KOT
    Where DocID In (<Param>) And IsNull(ContraDocId,'')<>'';

-- --------------------------------------------
-- Query 39
-- Uses table: enviro
-- --------------------------------------------
Select NCUR from enviro
    where Logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 40
-- Uses table: KOT
-- --------------------------------------------
Select Waiter From KOT
    where DocID='<DocID><Param>;

-- --------------------------------------------
-- Query 41
-- Uses table: TradeInfo_bTwin
-- --------------------------------------------
Delete From TradeInfo_bTwin
    Where LTrim(RTrim(TradeInfo_bTwin.c_cardno))=0;

-- --------------------------------------------
-- Query 42
-- Uses table: Sale1
-- --------------------------------------------
Insert Into Sale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Party,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,ServiceTax,CGST,SGST,IGST,AddAmt,Advance,Redemption,DedAmt,RoundOff,NetAmt,KOTNO,TokenNo,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag,LOGSITE_CODE,Remark,DiscRemark,EditRemark,PhoneNo,CustName,Addr1,Addr2,CashRecd,BookNo,CardNo,AU_Name,AU_EntDt) Values (';

-- --------------------------------------------
-- Query 43
-- Uses table: GuestProf
-- Uses table: KOT
-- --------------------------------------------
Update KOT
    Set ContraDocId='Insert Into GuestProf (Code,Name,Add1,MobileNo,CityName,Likes,DisLikes,BirthDate,Anniversary,POS,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values ('<Param>',ContraSno=<ContraSno><Param>' And SNo=<SNo>;

-- --------------------------------------------
-- Query 44
-- Uses table: GuestProf
-- Uses table: PackingOrderDetail
-- --------------------------------------------
Update PackingOrderDetail
    set ContraDocID='Insert Into GuestProf (Code,Name,Add1,MobileNo,CityName,Likes,DisLikes,BirthDate,Anniversary,POS,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values ('<Param>',ContraSno=<ContraSno><Param><Param><Param>;

-- --------------------------------------------
-- Query 45
-- Uses table: GuestProf
-- Uses table: TOKEN
-- --------------------------------------------
Update TOKEN
    set ContraDocID='Insert Into GuestProf (Code,Name,Add1,MobileNo,CityName,Likes,DisLikes,BirthDate,Anniversary,POS,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values ('<Param>',ContraSno=<ContraSno><Param>' and SNo=<SNo><Param>;

-- --------------------------------------------
-- Query 46
-- Uses table: DEPART
-- --------------------------------------------
SELECT SHORTNAME FROM DEPART
    WHERE CODE='<CODE>';

-- --------------------------------------------
-- Query 47
-- Uses table: REVMAST
-- --------------------------------------------
SELECT * FROM REVMAST
    WHERE CODE='<LogSiteCode>TOUT';

-- --------------------------------------------
-- Query 48
-- Uses table: PayCharge
-- --------------------------------------------
Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,;

-- --------------------------------------------
-- Query 49
-- Uses table: Depart
-- --------------------------------------------
Update Depart
    Set CurTokenNo=<CurTokenNo>
    Where Logsite_Code='<LogSiteCode>'And code='<code>';

-- --------------------------------------------
-- Query 50
-- Uses table: eInvoiceBill1
-- --------------------------------------------
Select Count(*) From eInvoiceBill1
    Where DocId='<DocId>' And Isnull(IRN,'')='';

-- --------------------------------------------
-- Query 51
-- Uses table: eInvoiceBill1
-- --------------------------------------------
Delete From eInvoiceBill1
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 52
-- Uses table: eInvoiceBill2
-- --------------------------------------------
Delete From eInvoiceBill2
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 53
-- Uses table: SmartCardRegistration
-- Uses table: SubGroup
-- --------------------------------------------
Select Code,Name,CardNo,GSTIN From (Select SubCode as Code,Name,CardNo,GSTIN From SubGroup
    union all Select Code,Name,CardNo,'' GSTIN From SmartCardRegistration) Q
    where Code='<Code>';

-- --------------------------------------------
-- Query 54
-- Uses table: TempPOSDel
-- --------------------------------------------
Delete From TempPOSDel;

-- --------------------------------------------
-- Query 55
-- Uses table: PayCharge
-- --------------------------------------------
Delete From PayCharge
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 56
-- Uses table: Sale1
-- --------------------------------------------
Update Sale1
    Set CashRecd=0
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 57
-- Uses table: PayCharge
-- --------------------------------------------
Select DocId,Min(SNo) SNo From PayCharge
    Where DocId='<DocId>'
    Group By DocId;

-- --------------------------------------------
-- Query 58
-- Uses table: PayCharge
-- --------------------------------------------
Delete From PayCharge
    Where DocId='<DocId>' And SNo<><Param>;

-- --------------------------------------------
-- Query 59
-- Uses table: TempPosDel
-- --------------------------------------------
Select * from TempPosDel
    Order By OldVno;

-- --------------------------------------------
-- Query 60
-- Uses table: Kot
-- --------------------------------------------
Update Kot
    Set ContraDocId='<ContraDocId>'
    Where ContraDocId='<ContraDocId>';

-- --------------------------------------------
-- Query 61
-- Uses table: TempPosDel
-- --------------------------------------------
Update TempPosDel
    Set NewDocId='<NewDocId>',NewVno=<NewVno>
    Where OldDocId='<OldDocId>' And OldVno=<OldVno>;

-- --------------------------------------------
-- Query 62
-- Uses table: Depart
-- --------------------------------------------
SELECT ShortName FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 63
-- Uses table: enviro
-- --------------------------------------------
Select NCUR from enviro
    where logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 64
-- Uses table: CashRegData
-- --------------------------------------------
Select Waiter From CashRegData
    where DocID='<DocID><Param>;

-- --------------------------------------------
-- Query 65
-- Uses table: CashRegData
-- Uses table: enviro
-- --------------------------------------------
Update CashRegData
    Set ContraDocId='Select NCUR from enviro
    where logsite_code='<LogSiteCode>',ContraSno=<ContraSno><Param><Param><Param>;

-- --------------------------------------------
-- Query 66
-- Uses table: SmartCardRegistration
-- --------------------------------------------
Select Code,Name,CardNo From SmartCardRegistration
    Where Code='<Code>';

-- --------------------------------------------
-- Query 67
-- Uses table: Depart
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName,depart.ShortName From (Sale1
    left join waiter W on sale1.waiter=w.code)
    LEFT JOIN Depart ON Sale1.RestCode = Depart.Code
    Where Sale1.DocID='<DocID>';

-- --------------------------------------------
-- Query 68
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 69
-- Uses table: Sale1
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName From Sale1
    left join waiter W on sale1.waiter=w.code
    Where Sale1.DocID='<DocID>';

-- --------------------------------------------
-- Query 70
-- Uses table: Sale1
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName From Sale1
    left join waiter W on sale1.waiter=w.code
    Where Sale1.DocID='<DocID><Param>'
    GROUP BY S.ITEM
    ORDER BY MAX(I.NAME);

-- --------------------------------------------
-- Query 71
-- Uses table: revmast
-- --------------------------------------------
Select Min(Sale2.SNo1) as SNo1,max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (sale2
    left join revmast on revmast.code=sale2.Taxcode)
    where Sale2.DocID='<DocID>'
    group by revmast.code,TaxPer
    Order by Min(Sale2.SNo1),TaxPer;

-- --------------------------------------------
-- Query 72
-- Uses table: SubGroup
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,S.CardNo,S.Name As MemName,W.Name as WaiterName From ((Sale1
    left join waiter W on sale1.waiter=w.code)
    left join SubGroup S On Sale1.Party=S.SubCode)
    Where Sale1.DocID='<DocID>';

-- --------------------------------------------
-- Query 73
-- Uses table: RoundOffSetting
-- --------------------------------------------
SELECT Max(RoundOffType) FROM RoundOffSetting
    WHERE ModuleName='Sale Bill' And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 74
-- Uses table: Sale1
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName From Sale1
    left join waiter W on sale1.waiter=w.code
    Where Sale1.DocID='<DocID><Param>'
    order by sno <Param> %);

-- --------------------------------------------
-- Query 75
-- Uses table: SubGroup
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,S.Name As MemName,W.Name as WaiterName From ((Sale1
    left join waiter W on sale1.waiter=w.code)
    left join SubGroup S On Sale1.Party=S.SubCode)
    Where Sale1.DocID='<DocID>';

-- --------------------------------------------
-- Query 76
-- Uses table: Depart
-- --------------------------------------------
SELECT Slogan1 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 77
-- Uses table: Depart
-- --------------------------------------------
SELECT Slogan2 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 78
-- Uses table: Depart
-- --------------------------------------------
SELECT TOKENPrint FROM Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 79
-- Uses table: Sale1
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName From Sale1
    left join waiter W on sale1.waiter=w.code
    Where Sale1.DocID='<DocID><Param>'
    ORDER BY I.Kitchen;

-- --------------------------------------------
-- Query 80
-- Uses table: Depart
-- --------------------------------------------
SELECT HEADER1 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 81
-- Uses table: Depart
-- --------------------------------------------
SELECT HEADER2 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 82
-- Uses table: revmast
-- --------------------------------------------
select max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (sale2
    left join revmast on revmast.code=sale2.Taxcode)
    where Sale2.DocID='<DocID>'
    group by revmast.code,TaxPer
    Order by TaxPer;

-- --------------------------------------------
-- Query 83
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
-- Query 84
-- Uses table: Depart
-- --------------------------------------------
SELECT TOKENPrintAfter FROM Depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 85
-- Uses table: Depart
-- --------------------------------------------
SELECT Header1,Header2,Header3,Header4,Slogan1,Slogan2 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 86
-- Uses table: POS_SBill
-- --------------------------------------------
Select DocId,OutletDocId,OutletCode from POS_SBill
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 87
-- Uses table: POS_SBill
-- Uses table: Sale1
-- --------------------------------------------
Select IsNull(Sum(NetAmt),0) As TotalAmt from Sale1
    Where DocId In (Select OutletDocId from POS_SBill
    Where DocId='<DocId>');

-- --------------------------------------------
-- Query 88
-- Uses table: POS_SBill
-- Uses table: Sale1
-- --------------------------------------------
Select IsNull(Sum(NetAmt),0) As TotalAmt from Sale1
    Where DocId In (Select OutletDocId from POS_SBill
    Where DocId='<DocId><Param>'
    GROUP BY S.ITEM,S.RATE,S.Remarks
    ORDER BY MAX(I.NAME);

-- --------------------------------------------
-- Query 89
-- Uses table: POS_SBill
-- Uses table: Sale1
-- --------------------------------------------
Select IsNull(Sum(NetAmt),0) As TotalAmt from Sale1
    Where DocId In (Select OutletDocId from POS_SBill
    Where DocId='<DocId>Total'
    ORDER BY I.Kitchen;

-- --------------------------------------------
-- Query 90
-- Uses table: POS_SBill
-- Uses table: Sale1
-- --------------------------------------------
Select IsNull(Sum(NetAmt),0) As TotalAmt from Sale1
    Where DocId In (Select OutletDocId from POS_SBill
    Where DocId='<DocId><Param>' AND I.Kitchen='<Kitchen>'
    GROUP BY S.ITEM,S.RATE,S.Remarks
    ORDER BY MAX(I.NAME);

-- --------------------------------------------
-- Query 91
-- Uses table: POS_SBill
-- Uses table: Sale1
-- --------------------------------------------
Select IsNull(Sum(NetAmt),0) As TotalAmt from Sale1
    Where DocId In (Select OutletDocId from POS_SBill
    Where DocId='<DocId>' And AmtCr>0;

-- --------------------------------------------
-- Query 92
-- Uses table: waiter
-- --------------------------------------------
Select S.* ,W.Name as WaiterName From (Sale1 S
    left join waiter W on S.waiter=w.code)
    Where S.DocID='<DocID>';

-- --------------------------------------------
-- Query 93
-- Uses table: waiter
-- --------------------------------------------
Select S.* ,W.Name as WaiterName From (Sale1 S
    left join waiter W on S.waiter=w.code)
    Where S.DocID='<DocID><Param>'
    GROUP BY S.ITEM
    ORDER BY MAX(I.NAME);

-- --------------------------------------------
-- Query 94
-- Uses table: waiter
-- --------------------------------------------
Select S.* ,W.Name as WaiterName From (Sale1 S
    left join waiter W on S.waiter=w.code)
    Where S.DocID='<DocID><Param>'
    ORDER BY I.Kitchen;

-- --------------------------------------------
-- Query 95
-- Uses table: Depart
-- --------------------------------------------
SELECT TOKENPrint FROM Depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 96
-- Uses table: PayCharge
-- --------------------------------------------
Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge
    Where DocID='<DocID>' And PayType='Cash';

-- --------------------------------------------
-- Query 97
-- Uses table: PayCharge
-- --------------------------------------------
Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge
    Where DocID='<DocID>''
    order by sno;

-- --------------------------------------------
-- Query 98
-- Uses table: PayCharge
-- --------------------------------------------
Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 99
-- Uses table: sale1
-- --------------------------------------------
Update sale1
    set Printed='Y'
    where Docid='<Docid>';

-- --------------------------------------------
-- Query 100
-- Uses table: revmast
-- --------------------------------------------
select Min(Sale2.SNo1) as SNo1,max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (sale2
    left join revmast on revmast.code=sale2.Taxcode)
    where Sale2.DocID='<DocID>'
    group by revmast.code,TaxPer
    Order by Min(Sale2.SNo1),TaxPer;

-- --------------------------------------------
-- Query 101
-- Uses table: City
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- Uses table: State
-- Uses table: SubGroup
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,S.CardNo,Case When IsNull(S.Name,'')<>'' And IsNull(S.CompanyType,'')<>'Corporate' Then IsNull(S.Name,'') Else '' End MemName,W.Name as WaiterName,Case When IsNull(Sale1.RoomType,'')='RO' Then RTrim(LTrim(IsNull(GP.ConPrefix,'')))+' '+RTrim(LTrim(IsNull(GP.Name,''))) When IsNull(S.Name,'')<>'' And IsNull(S.CompanyType,'')<>'Corporate' Then RTrim(LTrim(IsNull(S.Name,'')))+' - '+RTrim(LTrim(IsNull(S.CardNo,''))) Else IsNull(Sale1.Remark,'') End Remark1,S.NAME AS CompanyName,S.Add1 CompAdd1,S.Add2 CompAdd2,S.Add3 CompAdd3,CC.CityName CompCity,CS.ShortName CompStateCode,CS.Name CompState,S.GSTIN CompGSTIN From ((((((Sale1
    left join waiter W on sale1.waiter=w.code)
    left join SubGroup S On Sale1.Party=S.SubCode)
    Left Join City CC On CC.CityCode=S.CityCode)
    Left Join State CS On CS.Code=CC.State)
    left join GuestFolio GF On Sale1.FolionoDocId=GF.DocId)
    left join GuestProf GP On GF.GuestProf=GP.Code)
    Where Sale1.DocID='<DocID>';

-- --------------------------------------------
-- Query 102
-- Uses table: POS_SBill
-- --------------------------------------------
Select DocId,OutletDocId,OutletCode from POS_SBill
    Where DocId='<DocId><Param>'
    GROUP BY S.ITEM,S.RATE,S.Remarks
    ORDER BY MAX(I.NAME);

-- --------------------------------------------
-- Query 103
-- Uses table: Depart
-- --------------------------------------------
Select IsNull(PrintNetPayable,'') from Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 104
-- Uses table: SubGroup
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,S.CardNo,S.Name As MemName,W.Name as WaiterName,Printed From ((Sale1
    left join waiter W on sale1.waiter=w.code)
    left join SubGroup S On Sale1.Party=S.SubCode)
    Where Sale1.DocID='<DocID>';

-- --------------------------------------------
-- Query 105
-- Uses table: PayCharge
-- --------------------------------------------
Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge
    Where DocID='<DocID><Param>'
    GROUP BY S.ITEM
    ORDER BY MAX(I.NAME);

-- --------------------------------------------
-- Query 106
-- Uses table: PayCharge
-- --------------------------------------------
Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge
    Where DocID='<DocID><Param>'
    ORDER BY I.Kitchen;

-- --------------------------------------------
-- Query 107
-- Uses table: POS_SBill
-- --------------------------------------------
Select DocId,OutletDocId,OutletCode from POS_SBill
    Where DocId='<DocId><Param>'
    GROUP BY S.ITEM
    ORDER BY MAX(I.NAME);

-- --------------------------------------------
-- Query 108
-- Uses table: POS_SBill
-- --------------------------------------------
Select DocId,OutletDocId,OutletCode from POS_SBill
    Where DocId='<DocId><Param>'
    ORDER BY I.Kitchen;

-- --------------------------------------------
-- Query 109
-- Uses table: SplitedSunTran
-- --------------------------------------------
Select Sum(Amount) From SplitedSunTran
    Where DocId='<DocId><Param>'
    GROUP BY S.ITEM,S.ITEMRATE
    ORDER BY MAX(I.NAME);

-- --------------------------------------------
-- Query 110
-- Uses table: SplitedSunTran
-- --------------------------------------------
Select Sum(Amount) From SplitedSunTran
    Where DocId='<DocId><Param>'
    ORDER BY I.Kitchen;

-- --------------------------------------------
-- Query 111
-- Uses table: PayCharge
-- --------------------------------------------
Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge
    Where DocID='<DocID>' And PayType='Cash''
    order by sno;

-- --------------------------------------------
-- Query 112
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- Uses table: SubGroup
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,S.CardNo,IsNull(S.Name,'') As MemName,W.Name as WaiterName,Case When IsNull(Sale1.RoomType,'')='RO' Then RTrim(LTrim(IsNull(GP.ConPrefix,'')))+' '+RTrim(LTrim(IsNull(GP.Name,''))) When IsNull(S.Name,'')<>'' Then RTrim(LTrim(IsNull(S.Name,'')))+' - '+RTrim(LTrim(IsNull(S.CardNo,''))) Else IsNull(Sale1.Remark,'') End Remark1 From ((((Sale1
    left join waiter W on sale1.waiter=w.code)
    left join SubGroup S On Sale1.Party=S.SubCode)
    left join GuestFolio GF On Sale1.FolionoDocId=GF.DocId)
    left join GuestProf GP On GF.GuestProf=GP.Code)
    Where Sale1.DocID='<DocID>';

-- --------------------------------------------
-- Query 113
-- Uses table: ITEMCATMAST
-- Uses table: ITEMMAST
-- Uses table: Stock
-- --------------------------------------------
Select IM.CATTYPE,S.DISCPER,SUM(S.DISCAMT) AS DISCAMT From Stock S
    LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode
    LEFT JOIN ITEMCATMAST IM ON IM.CODE=I.ITEMCATCODE
    Where S.DocID='<DocID>'
    GROUP BY IM.CATTYPE,S.DISCPER
    HAVING SUM(S.DISCAMT)>0
    ORDER BY IM.CATTYPE,S.DISCPER DESC;

-- --------------------------------------------
-- Query 114
-- Uses table: Depart
-- --------------------------------------------
SELECT Slogan1,Slogan2 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 115
-- Uses table: PayCharge
-- --------------------------------------------
Select * from PayCharge
    where docid='<docid>' and Sno=1;

-- --------------------------------------------
-- Query 116
-- Uses table: PayCharge
-- Uses table: Subgroup
-- --------------------------------------------
Select Name from PayCharge
    left join Subgroup on Paycharge.CompCode=Subgroup.Subcode
    where docid='<docid>';

-- --------------------------------------------
-- Query 117
-- Uses table: PayCharge
-- --------------------------------------------
Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge
    Where DocID='<DocID>' And PayType='Cash'';

-- --------------------------------------------
-- Query 118
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    where code='<code>';

-- --------------------------------------------
-- Query 119
-- Uses table: Sale1
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName From Sale1
    left join waiter W on sale1.waiter=w.code
    Where Sale1.DocID='<DocID><Param>'
    GROUP BY KOT.VDATE,S.ITEM
    ORDER BY KOT.VDATE,MAX(I.NAME);

-- --------------------------------------------
-- Query 120
-- Uses table: enviro
-- --------------------------------------------
Select * from enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 121
-- Uses table: Guestfolio
-- --------------------------------------------
Select IsNull(Max(RSDisc),0) from Guestfolio
    where DocId='<DocId>';

-- --------------------------------------------
-- Query 122
-- Uses table: Depart
-- --------------------------------------------
SELECT IsNull(Max(Name),'') FROM Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 123
-- Uses table: SplitSale1
-- --------------------------------------------
Select S.* From SplitSale1 S
    Where S.Docid='<Docid>';

-- --------------------------------------------
-- Query 124
-- Uses table: Voucher_Type
-- --------------------------------------------
Select NCAT From Voucher_Type
    Where V_Type='<V_Type>';

-- --------------------------------------------
-- Query 125
-- Uses table: RoomMast
-- --------------------------------------------
Select Name From RoomMast
    Where [Type]='HL' AND RoomCat='HALL' And Code='<Code>';

-- --------------------------------------------
-- Query 126
-- Uses table: Voucher_Type
-- --------------------------------------------
Select NCAT From Voucher_Type
    Where V_Type='<V_Type>'';

-- --------------------------------------------
-- Query 127
-- Uses table: Voucher_Type
-- --------------------------------------------
Select NCAT From Voucher_Type
    Where V_Type='<V_Type>'' And PayType='Cash';

-- --------------------------------------------
-- Query 128
-- Uses table: Depart
-- Uses table: ItemCatMast
-- Uses table: ItemMast
-- Uses table: KOT
-- Uses table: UnitMast
-- --------------------------------------------
Select Distinct S.*,I.Name as ItemName,IsNull(U.PriceType,0) As PriceType,I.RateIncTax,DispCode,BarCode,I.SchrgApp,S.DiscApp as DApp,S.RoundOff as ROff,IC.TaxStru as TaxCode,IC.CatType,RateEdit,D.Code as OutletCode,D.ShortName as OutletSName From ((((SplitStock S
    Left Join KOT K on K.ContraDocId=S.DocId and K.ContraSNo=S.SNo)Left
    Join ItemMast I On S.Item=I.Code And S.ItemRestCode=I.RestCode)Left
    join UnitMast U on U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code)Left
    join ItemCatMast IC on IC.Code=I.ItemCatCode)Left
    Join Depart D on D.Code=I.RestCode
    Where S.DocId='<DocId>'
    Order By S.SNo;

-- --------------------------------------------
-- Query 129
-- Uses table: Sale1
-- --------------------------------------------
Select S.* From Sale1 S
    Where S.Docid='<Docid>';

-- --------------------------------------------
-- Query 130
-- Uses table: SunTran
-- --------------------------------------------
Select S.* From SunTran S
    Where S.DocId='<DocId>'
    Order By SNo;

-- --------------------------------------------
-- Query 131
-- Uses table: Depart
-- Uses table: ItemCatMast
-- Uses table: ItemMast
-- Uses table: KOT
-- Uses table: ShiftMast
-- Uses table: UnitMast
-- --------------------------------------------
Select Distinct S.*,I.Name as ItemName,IsNull(U.PriceType,0) As PriceType,I.RateIncTax,DispCode,BarCode,S.DiscApp as DApp,I.SchrgApp,S.RoundOff as ROff,IC.TaxStru as TaxCode,IC.CatType,RateEdit,D.Code as OutletCode,D.ShortName as OutletSName,S.ShiftCode,SM.Name As ShiftName From ((((Stock S
    Left Join KOT K on K.ContraDocId=S.DocId and K.ContraSNo=S.SNo)Left
    Join ItemMast I On S.Item=I.Code And S.ItemRestCode=I.RestCode)Left
    join UnitMast U on U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code)Left
    join ItemCatMast IC on IC.Code=I.ItemCatCode)Left
    Join Depart D on D.Code=I.RestCode
    Left Join ShiftMast SM On S.ShiftCode=SM.Code
    Where S.DocId='<DocId>'
    Order By S.SNo;

-- --------------------------------------------
-- Query 132
-- Uses table: Depart
-- Uses table: POS_SBILL
-- --------------------------------------------
Select OutletDocId,OutletCode,D.Name OutletName From POS_SBILL PS
    Left Join Depart D On PS.OutletCode=D.Code
    WHERE DocId='<DocId>'
    Order By D.Code;

-- --------------------------------------------
-- Query 133
-- Uses table: Depart
-- --------------------------------------------
Select CurTokenNo From Depart
    Where Logsite_code='<LogSiteCode>' And Code='<Code>';

-- --------------------------------------------
-- Query 134
-- Uses table: Depart
-- --------------------------------------------
Select Max(BookOfBills) From Depart
    Where SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='<LogSiteCode>' And Code='<Code>';

-- --------------------------------------------
-- Query 135
-- Uses table: Sale1
-- --------------------------------------------
Select Distinct DocId,V_Type,V_No From Sale1
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 136
-- Uses table: KOT
-- --------------------------------------------
Select Top 1 LTrim(SubString(IsNull(ContraDocId,''),14,8)) BillNo From KOT
    Where DocID In ('<Param>') And IsNull(ContraDocId,'')<>'';

-- --------------------------------------------
-- Query 137
-- Uses table: KOT
-- --------------------------------------------
Update KOT
    Set ContraDocId='Bill No. has saved As <Param>',ContraSno=<ContraSno><Param>' And SNo=<SNo>;

-- --------------------------------------------
-- Query 138
-- Uses table: PackingOrderDetail
-- --------------------------------------------
Update PackingOrderDetail
    set ContraDocID='Bill No. has saved As <Param>',ContraSno=<ContraSno><Param><Param><Param>;

-- --------------------------------------------
-- Query 139
-- Uses table: TOKEN
-- --------------------------------------------
Update TOKEN
    set ContraDocID='Bill No. has saved As <Param>',ContraSno=<ContraSno><Param>' and SNo=<SNo><Param>;

-- --------------------------------------------
-- Query 140
-- Uses table: KOT
-- Uses table: SplitStock
-- --------------------------------------------
Select * from KOT
    where Docid in (Select Distinct COntraDocid from SplitStock
    Where Docid='<Docid>');

-- --------------------------------------------
-- Query 141
-- Uses table: Itemmast
-- Uses table: KOT
-- --------------------------------------------
Select Distinct Depart.Code as OutletCode,Depart.Name as DepartName,Depart.RestType As OutletRestType from ((Depart
    Inner join Itemmast on Depart.Code=Itemmast.restcode)
    Inner Join KOT on KOT.Item=Itemmast.code And KOT.ItemRestCode=Itemmast.Restcode)
    where KOT.COntraDocid='<COntraDocid>';

-- --------------------------------------------
-- Query 142
-- Uses table: Itemmast
-- Uses table: SplitStock
-- --------------------------------------------
Select Distinct Depart.Code as OutletCode,Depart.Name as DepartName,Depart.RestType As OutletRestType from ((Depart
    Inner join Itemmast on Depart.Code=Itemmast.restcode)
    Inner Join SplitStock on SplitStock.Item=Itemmast.code And SplitStock.ItemRestCode=Itemmast.Restcode)
    where SplitStock.Docid='<Docid>';

-- --------------------------------------------
-- Query 143
-- Uses table: Sale1
-- Uses table: Sale1Log
-- --------------------------------------------
Insert into Sale1Log Select * from Sale1
    Where Docid= '<Docid>';

-- --------------------------------------------
-- Query 144
-- Uses table: Sale2
-- Uses table: Sale2Log
-- --------------------------------------------
Insert into Sale2Log Select * from Sale2
    Where Docid= '<Docid>';

-- --------------------------------------------
-- Query 145
-- Uses table: Stock
-- Uses table: StockLog
-- --------------------------------------------
Insert into StockLog Select * from Stock
    Where Docid= '<Docid>';

-- --------------------------------------------
-- Query 146
-- Uses table: SunTran
-- Uses table: SunTranLog
-- --------------------------------------------
Insert into SunTranLog Select * from SunTran
    Where Docid= '<Docid>';

-- --------------------------------------------
-- Query 147
-- Uses table: PayCharge
-- Uses table: PayChargeLog
-- --------------------------------------------
Insert into PayChargeLog Select * from PayCharge
    Where Docid= '<Docid>';

-- --------------------------------------------
-- Query 148
-- Uses table: Sale1Log
-- --------------------------------------------
Select Max(SeqNo) From Sale1Log
    Where Docid= '<Docid>';

-- --------------------------------------------
-- Query 149
-- Uses table: Sale1Log
-- --------------------------------------------
Update Sale1Log
    Set SeqNo=Select Max(SeqNo) From Sale1Log
    Where Docid= '<Docid>
    Where IsNull(SeqNo,0)=0 And Docid= '<Docid>';

-- --------------------------------------------
-- Query 150
-- Uses table: Sale1Log
-- Uses table: Sale2Log
-- --------------------------------------------
Update Sale2Log
    Set SeqNo=Select Max(SeqNo) From Sale1Log
    Where Docid= '<Docid>
    Where IsNull(SeqNo,0)=0 And Docid= '<Docid>';

-- --------------------------------------------
-- Query 151
-- Uses table: Sale1Log
-- Uses table: StockLog
-- --------------------------------------------
Update StockLog
    Set SeqNo=Select Max(SeqNo) From Sale1Log
    Where Docid= '<Docid>
    Where IsNull(SeqNo,0)=0 And Docid= '<Docid>';

-- --------------------------------------------
-- Query 152
-- Uses table: Sale1Log
-- Uses table: SunTranLog
-- --------------------------------------------
Update SunTranLog
    Set SeqNo=Select Max(SeqNo) From Sale1Log
    Where Docid= '<Docid>
    Where IsNull(SeqNo,0)=0 And Docid= '<Docid>';

-- --------------------------------------------
-- Query 153
-- Uses table: PayChargeLog
-- Uses table: Sale1Log
-- --------------------------------------------
Update PayChargeLog
    Set SeqNo=Select Max(SeqNo) From Sale1Log
    Where Docid= '<Docid>
    Where IsNull(SeqNo,0)=0 And Docid= '<Docid>';

-- --------------------------------------------
-- Query 154
-- Uses table: Sale1
-- --------------------------------------------
Delete From Sale1
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 155
-- Uses table: Sale2
-- --------------------------------------------
Delete From Sale2
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 156
-- Uses table: Stock
-- --------------------------------------------
Delete From Stock
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 157
-- Uses table: SunTran
-- --------------------------------------------
Delete From SunTran
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 158
-- Uses table: KOT
-- --------------------------------------------
Update KOT
    Set ContraDocId='<ContraDocId>',ContraSno=<ContraSno><Param>' And SNo=<SNo><Param>;

-- --------------------------------------------
-- Query 159
-- Uses table: PackingOrderDetail
-- --------------------------------------------
Update PackingOrderDetail
    set ContraDocID='<ContraDocID>',ContraSno=<ContraSno><Param><Param><Param>;

-- --------------------------------------------
-- Query 160
-- Uses table: TOKEN
-- --------------------------------------------
Update TOKEN
    set ContraDocID='<ContraDocID>',ContraSno=<ContraSno><Param><Param><Param>;

-- --------------------------------------------
-- Query 161
-- Uses table: SplitSale2
-- --------------------------------------------
Insert Into SplitSale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values (';

-- --------------------------------------------
-- Query 162
-- Uses table: PayCharge
-- --------------------------------------------
Delete From PayCharge
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 163
-- Uses table: RoomMast
-- --------------------------------------------
Select T.Code,T.Name As Name From RoomMast T
    where T.Type in('HL')
    Order by T.Code;

-- --------------------------------------------
-- Query 164
-- Uses table: ROOMOCC
-- --------------------------------------------
Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat,RC.docid as FolioNoDocid From ROOMOCC RC
    where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL
    Order by RC.ROOMNO;

-- --------------------------------------------
-- Query 165
-- Uses table: Depart
-- --------------------------------------------
Select 'B'+ShortName From Depart
    Where LOGSITE_CODE='<LogSiteCode>' and Code='<Code>';

-- --------------------------------------------
-- Query 166
-- Uses table: RoundOffSetting
-- --------------------------------------------
SELECT RoundOffType FROM RoundOffSetting
    WHERE ModuleName='Sale Bill' And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 167
-- Uses table: DEPART
-- --------------------------------------------
Select R.NAME,R.HEADER1,R.HEADER2,R.HEADER3,R.HEADER4,R.COMPANYTITLE,R.OUTLETTITLE From DEPART R
    Where R.CODE='<CODE>';

-- --------------------------------------------
-- Query 168
-- Uses table: Revmast
-- --------------------------------------------
Select DeskCode AS RestCode from Revmast
    where taxstru='<taxstru>';

-- --------------------------------------------
-- Query 169
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS
    LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code
    Where TS.Code='<Code>';

-- --------------------------------------------
-- Query 170
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT TS.Code, TS.TaxCode, RM.Name, TS.Rate,RoundOff FROM TaxStru AS TS
    inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code)
    Where TS.Code='<Code><Param>'
    ORDER BY SNO DESC;

-- --------------------------------------------
-- Query 171
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT IsNull(Sum(TS.Rate),0) FROM TaxStru AS TS
    inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code)
    Where TS.Code='<Code><Param>';

-- --------------------------------------------
-- Query 172
-- Uses table: guestprof
-- --------------------------------------------
Select * from guestprof
    Where MobileNo='<MobileNo>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [CashRegData]  NOT present in visahl.sql dump (schema unknown)
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [DEPART]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart1]  NOT present in visahl.sql dump (schema unknown)
-- Table [DepartRWScheme]  NOT present in visahl.sql dump (schema unknown)
-- Table [ENVIRO]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestProf]  NOT present in visahl.sql dump (schema unknown)
-- Table [Guestfolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [ITEMCATMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [ITEMMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemGrp]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Itemmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [KOT]  NOT present in visahl.sql dump (schema unknown)
-- Table [Kot]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemENVIRO]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [OutletBarCodePartDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [PAYCHARGE]  NOT present in visahl.sql dump (schema unknown)
-- Table [POS_SBILL]  NOT present in visahl.sql dump (schema unknown)
-- Table [POS_SBill]  NOT present in visahl.sql dump (schema unknown)
-- Table [PackingOrderDetail]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [PayChargeLog]  NOT present in visahl.sql dump (schema unknown)
-- Table [PrinterSetup]  NOT present in visahl.sql dump (schema unknown)
-- Table [REVMAST]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [Sale1Log]  NOT present in visahl.sql dump (schema unknown)
-- Table [Sale2]  (schema from visahl.sql):
--     DocId                  varchar (21) NOT NULL,
--     Sno                    smallint NOT NULL,
--     SNo1                   varchar (50) NOT NULL,
--     Vtype                  varchar (5) NULL,
--     VNo                    int NULL,
--     Site_Code              varchar (2) NULL,
--     Vprefix                varchar (5) NULL,
--     Vdate                  datetime NULL,
--     RestCode               varchar (6) NULL,
--     TaxCode                varchar (6) NULL,
--     BaseValue              float NULL,
--     TaxPer                 float NULL,
--     TaxAmt                 float NULL,
--     U_Name                 varchar (10) NULL,
--     U_EntDt                datetime NULL,
--     U_AE                   varchar (1) NULL,
--     DelFlag                varchar (1) NULL,
--     LogSite_Code           varchar (2) NULL,
--     SeqNo                  smallint NULL,
-- Table [Sale2Log]  NOT present in visahl.sql dump (schema unknown)
-- Table [SessionMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ShiftMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SmartCardRegistration]  NOT present in visahl.sql dump (schema unknown)
-- Table [SplitSale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [SplitSale2]  NOT present in visahl.sql dump (schema unknown)
-- Table [SplitStock]  NOT present in visahl.sql dump (schema unknown)
-- Table [SplitedSunTran]  NOT present in visahl.sql dump (schema unknown)
-- Table [State]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [StockLog]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [SunTranLog]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryType]  NOT present in visahl.sql dump (schema unknown)
-- Table [TOKEN]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [TempPOSDel]  NOT present in visahl.sql dump (schema unknown)
-- Table [TempPosDel]  NOT present in visahl.sql dump (schema unknown)
-- Table [TradeInfo_bTwin]  NOT present in visahl.sql dump (schema unknown)
-- Table [UnitMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [UserPermission]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [eInvoiceBill1]  NOT present in visahl.sql dump (schema unknown)
-- Table [eInvoiceBill2]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [guestprof]  NOT present in visahl.sql dump (schema unknown)
-- Table [paycharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [sale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [waiter]  NOT present in visahl.sql dump (schema unknown)
