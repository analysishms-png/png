# ==========================================================
# Module: rPOSRepView
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: FAEnviro
-- --------------------------------------------
Select * From FAEnviro;

-- --------------------------------------------
-- Query 2
-- Uses table: Site
-- --------------------------------------------
Select Site_Code AS Code,Site_Desc AS NAME From Site
    Order by Site_Desc;

-- --------------------------------------------
-- Query 3
-- Uses table: Depart
-- Uses table: Sale1
-- --------------------------------------------
SELECT Depart.Name as DepartName, S.Vdate, S.VNo, S.NetAmt, S.Taxable, S.NonTaxable, S.RestCode, S.RoundOff, S.DedAmt, S.AddAmt, S.ServiceCharge, S.DiscAmt,S.DelFlag,S.Total FROM Sale1 AS S
    LEFT JOIN Depart ON S.RestCode = Depart.Code
    Where S.DelFlag='N' and S.LogSite_Code='<LogSite_Code>' <Param>
    order by Depart.Name,VDate,Vno;

-- --------------------------------------------
-- Query 4
-- Uses table: RevMast
-- Uses table: SundryMast
-- --------------------------------------------
SELECT DISTINCT SundryMast.Name, SundryMast.code,S.TaxPer FROM (Sale2 AS S
    INNER JOIN RevMast ON S.TaxCode = RevMast.Code)
    INNER JOIN SundryMast ON RevMast.Sundry = SundryMast.Code
    where S.DELFLAG<>'D' <Param>
    Order by S.TaxPer desc;

-- --------------------------------------------
-- Query 5
-- Uses table: RevMast
-- --------------------------------------------
SELECT DISTINCT RevMast.Name, RevMast.code,S.TaxPer FROM (Sale2 AS S
    INNER JOIN RevMast ON S.TaxCode = RevMast.Code)
    where S.DELFLAG<>'D' <Param>
    Order by S.TaxPer desc;

-- --------------------------------------------
-- Query 6
-- Uses table: depart
-- Uses table: revmast
-- --------------------------------------------
select max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt,sale2.restcode,max(Depart.Name) as RestName from (sale2
    left join revmast on revmast.code=sale2.Taxcode)
    left join depart on depart.code=Sale2.RestCode
    where <Param>
    group by sale2.restcode,revmast.code,TaxPer
    order by Sale2.restcode,max(revmast.Name),TaxPer;

-- --------------------------------------------
-- Query 7
-- Uses table: depart
-- Uses table: revmast
-- --------------------------------------------
Select Sum(TaxableAmt) TaxableAmt From (select Max(BaseValue) as TaxableAmt,sale2.restcode,max(Depart.Name) as RestName from (sale2
    left join revmast on revmast.code=sale2.Taxcode)
    left join depart on depart.code=Sale2.RestCode
    where <Param>
    group by sale2.restcode,Sale2.DocId,Sale2.Sno)Q;

-- --------------------------------------------
-- Query 8
-- Uses table: Depart
-- Uses table: Sale1
-- Uses table: Subgroup
-- --------------------------------------------
SELECT Depart.Name as DepartName,SB.Name As Company,SB.GSTIN, S.Vdate, S.Docid,S.VNo, S.NetAmt, S.Taxable, S.NonTaxable, S.RestCode, S.RoundOff, S.DedAmt, S.AddAmt, S.ServiceCharge, S.DiscAmt,S.DelFlag FROM Sale1 AS S
    LEFT JOIN Depart ON S.RestCode = Depart.Code
    LEFT JOIN Subgroup SB ON S.Party = SB.SubCode
    Where S.LogSite_Code='<LogSite_Code>'<Param>
    order by Depart.Name,VDate,Vno;

-- --------------------------------------------
-- Query 9
-- Uses table: SunTran
-- Uses table: SundryMast
-- --------------------------------------------
Select Distinct S.SNO, SM.Name, SM.Code From SunTran S
    Left Join SundryMast SM On S.SunCode=SM.Code
    Where S.DELFLAG='N' And Nature In ('CGST','SGST','Sale Tax','Service Tax','Luxury Tax') AND s.restcode in (<Param>)<Param>
    Order By Sno,SM.Name;

-- --------------------------------------------
-- Query 10
-- Uses table: Depart
-- Uses table: Sale1
-- Uses table: Subgroup
-- --------------------------------------------
SELECT Depart.Name as DepartName,SB.Name As Company,SB.GSTIN, S.Vdate, S.Docid,S.VNo, S.NetAmt, S.Taxable, S.NonTaxable, S.RestCode, S.RoundOff, S.DedAmt, S.AddAmt, S.ServiceCharge, S.DiscAmt,S.DelFlag FROM Sale1 AS S
    LEFT JOIN Depart ON S.RestCode = Depart.Code
    LEFT JOIN Subgroup SB ON S.Party = SB.SubCode
    Where S.LogSite_Code='<LogSite_Code>;

-- --------------------------------------------
-- Query 11
-- Uses table: SunTran
-- --------------------------------------------
Select sum(Amount) as TaxAmt from SunTran
    where SunCode='<SunCode>' and Docid='<Docid>' And RestCode='<RestCode>';

-- --------------------------------------------
-- Query 12
-- Uses table: SmartCardRegistration
-- --------------------------------------------
SELECT CardType,CardNo,Name,Addr,Phone,CashAmt,SecurityAmt,IssDate,ValidUpto,BlockedYN,CurrBal,SecurBal,LastTransAmt,LastTransDate,Remark,SerialNo FROM SmartCardRegistration
    Where LogSite_Code='<LogSite_Code>' And CardType='<CardType>'
    ORDER BY Name;

-- --------------------------------------------
-- Query 13
-- Uses table: Depart
-- Uses table: Sale1
-- --------------------------------------------
SELECT Depart.Name as DepartName,s.Vdate, sum(S.NetAmt) as NetAmt, sum(S.Taxable) as Taxable, sum(S.NonTaxable) as NonTaxable, max(S.RestCode) as RestCode, Sum(S.RoundOff) as RoundOff, sum(S.DedAmt) as DedAmt, sum(S.AddAmt) as AddAmt, Sum(S.ServiceCharge) as ServiceCharge, Sum(S.DiscAmt) as DiscAmt, Sum(S.CGST) as CGST, Sum(S.SGST) as SGST, Sum(S.ServiceTax) as ServiceTax FROM Sale1 AS S
    LEFT JOIN Depart ON S.RestCode = Depart.Code
    Where S.DELFLAG<>'D' AND S.LogSite_Code='<LogSite_Code>'<Param>
    Group by Depart.Name,VDate
    Order by Depart.Name,VDate;

-- --------------------------------------------
-- Query 14
-- Uses table: enviro
-- --------------------------------------------
Select ServiceTaxOnServiceChargeYN from enviro
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 15
-- Uses table: RevMast
-- Uses table: SundryMast
-- --------------------------------------------
SELECT DISTINCT RevMast.Name, RevMast.code,S.TaxPer FROM (Sale2 AS S
    INNER JOIN RevMast ON S.TaxCode = RevMast.Code
    Left Join SundryMast On RevMast.Sundry=SundryMast.Code)
    where SundryMast.Nature<>'Service Tax' And S.DELFLAG<>'D' <Param>
    Order by S.TaxPer Desc;

-- --------------------------------------------
-- Query 16
-- Uses table: RevMast
-- Uses table: SundryMast
-- --------------------------------------------
SELECT DISTINCT RevMast.Name, RevMast.code,S.TaxPer FROM (Sale2 AS S
    INNER JOIN RevMast ON S.TaxCode = RevMast.Code
    Left Join SundryMast On RevMast.Sundry=SundryMast.Code)
    where S.DELFLAG<>'D' <Param>
    Order by S.TaxPer Desc;

-- --------------------------------------------
-- Query 17
-- Uses table: PayCharge
-- Uses table: Sale1
-- --------------------------------------------
SELECT s.docId as Docid , s.vtype AS vtype , p.docid as Code FROM Sale1 s LEFT OUTER
    JOIN PayCharge p ON s.DocId = p.DocId
    WHERE s.vdate <Param> And s.RestCode In (<Param>) and s.logsite_code ='<LogSiteCode>'
    order by p.docid desc;

-- --------------------------------------------
-- Query 18
-- Uses table: DEPART
-- Uses table: ItemMast
-- Uses table: KOT
-- Uses table: Stock
-- Uses table: Subgroup
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT s.u_name as UserName,S.TokenNo,S.DELFLAG,S.VType,S.VTime,V.Description VDesc,S.DocId,s.Vdate,St.VDate as Vdate1,s.VNo,St.SNo,s.RoomNo AS TABLENo,s.RoomType,S.Total as GoodsAmt,S.DiscAmt,s.NonTaxable,s.Taxable,s.Tax,s.ServiceCharge,s.CGST,s.SGST,S.ServiceTax,S.AddAmt,S.DedAmt,s.RoundOff,s.NetAmt,S.Remark,S.DiscRemark,St.QtyIss,St.rate,St.Amount,I.Name as ItemName,D.Name as OutletName,D.CODE AS DepartCode,IsNull(D.MultiBill,'') MultiBill,IsNull(SG.Name,'') As Company FROM (((((SAle1 S
    Inner Join Stock St On S.DocId=St.DocId)
    LEFT Join KOT K On St.KOTDocId=K.DOCID And St.KOTSno=K.Sno)
    Inner Join Voucher_Type V On (S.VType=V.V_Type And S.LogSite_Code=V.LogSite_Code))
    Inner Join DEPART D On S.RESTCODE=D.Code)
    Inner JOIN ItemMast AS I ON (St.Item=I.Code And St.ItemRestCode=I.RestCode))
    Left Join Subgroup SG On SG.SubCode=S.Party <Param>)
    Order By D.Name,S.VType,S.VDate,S.VNo,st.SNo;

-- --------------------------------------------
-- Query 19
-- Uses table: RevMast
-- --------------------------------------------
SELECT RM.PayType,IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) as BalAmt From (PayCharge S
    Left Join RevMast RM ON S.PayCode=RM.Code) <Param> And RM.FieldType='P' AND S.ROOMTYPE IN ('TB','RO')
    Group by RM.PayType;

-- --------------------------------------------
-- Query 20
-- Uses table: PayCharge
-- --------------------------------------------
Select * from PayCharge
    where docid='<docid>' and IsNull(FolionoDocid,'')='';

-- --------------------------------------------
-- Query 21
-- Uses table: SunTran
-- --------------------------------------------
Select sum(Amount) as TaxAmt from SunTran
    where SunCode='<SunCode>' and Docid='<Docid>';

-- --------------------------------------------
-- Query 22
-- Uses table: RevMast
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT DISTINCT RevMast.Name,RevMast.code,RevMast.Sundry,S.TaxPer FROM ((Sale2 AS S
    INNER JOIN RevMast ON S.TaxCode = RevMast.Code)
    Inner Join Voucher_Type V On (S.VType=V.V_Type And S.LogSite_Code=V.LogSite_Code)) <Param>)
    Order by S.TaxPer desc;

-- --------------------------------------------
-- Query 23
-- Uses table: PayCharge
-- Uses table: RevMast
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT DISTINCT RevMast.Name, RevMast.code,S.TaxPer FROM ((Sale2 AS S
    INNER JOIN RevMast ON S.TaxCode = RevMast.Code)
    Inner Join Voucher_Type V On (S.VType=V.V_Type And S.LogSite_Code=V.LogSite_Code)) Select * from PayCharge
    where docid='<docid>SrNo)
    Order by S.TaxPer desc;

-- --------------------------------------------
-- Query 24
-- Uses table: DEPART
-- Uses table: ROOMMAST
-- Uses table: Waiter
-- --------------------------------------------
SELECT S.VTYPE,S.VNO,S.VDATE,S.VTIME,W.Name AS WAITER,S.ROOMNO AS TABLENO ,S.NETAMT as NetSale,S.RESTCODE,D.NAME AS DEPARTNAME,S.Remark,S.U_name FROM (((Sale1 S
    LEFT JOIN DEPART AS D ON S.RestCode = D.Code)
    LEFT JOIN Waiter W ON S.Waiter = W.Code)
    LEFT JOIN ROOMMAST RM ON (S.RestCode=RM.RestCode) AND (S.RoomNo=RM.Code))
    Where S.LogSite_Code='<LogSite_Code>'<Param>
    Order By D.NAME,S.DOCID;

-- --------------------------------------------
-- Query 25
-- Uses table: ItemMast
-- Uses table: KOT
-- Uses table: Stock
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT I.Code As Item,Max(I.ItemGroup) as ItemGroup FROM ((((SAle1 S
    Inner Join Stock St On S.DocId=St.DocId)
    LEFT Join KOT K On St.KOTDocId=K.DOCID And St.KOTSno=K.Sno)
    Inner Join Voucher_Type V On (S.VType=V.V_Type And S.Site_Code=V.Site_Code))
    Inner JOIN ItemMast AS I ON (St.Item=I.Code And St.RestCode=I.RestCode))<Param><Param> And V.NCat in ('RSBIL')
    Group By I.Code
    Order By I.Code;

-- --------------------------------------------
-- Query 26
-- Uses table: ItemMast
-- Uses table: KOT
-- Uses table: Stock
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT Sum(St.QtyIss) As Qty,Max(St.rate) As ItemRate,Sum(St.Amount) As TotCost,Max(I.Name) as ItemName,I.Code As Item FROM ((((SAle1 S
    Inner Join Stock St On S.DocId=St.DocId)
    LEFT Join KOT K On St.KOTDocId=K.DOCID And St.KOTSno=K.Sno)
    Inner Join Voucher_Type V On (S.VType=V.V_Type And S.Site_Code=V.Site_Code))
    Inner JOIN ItemMast AS I ON (St.Item=I.Code And St.RestCode=I.RestCode))<Param> And V.NCat in ('RSBIL')
    Group By I.Code
    Order By TotCost Desc;

-- --------------------------------------------
-- Query 27
-- Uses table: ItemMast
-- Uses table: KOT
-- Uses table: Stock
-- Uses table: Voucher_Type
-- --------------------------------------------
Select Sum(TotCost) from (SELECT Sum(St.Amount) As TotCost FROM ((((SAle1 S
    Inner Join Stock St On S.DocId=St.DocId)
    LEFT Join KOT K On St.KOTDocId=K.DOCID And St.KOTSno=K.Sno)
    Inner Join Voucher_Type V On (S.VType=V.V_Type And S.Site_Code=V.Site_Code))
    Inner JOIN ItemMast AS I ON (St.Item=I.Code And St.RestCode=I.RestCode))<Param> And V.NCat in ('RSBIL')
    Group By I.Code) Q;

-- --------------------------------------------
-- Query 28
-- Uses table: Paycharge
-- Uses table: Subgroup
-- --------------------------------------------
Select PayCharge.Docid,SubGroup.Name from Paycharge
    Left join Subgroup on PayCharge.CompCode=Subgroup.Subcode
    where docid='<docid>' and PayCode<>'<Param>TOUT';

-- --------------------------------------------
-- Query 29
-- Uses table: Paycharge
-- --------------------------------------------
Select * from Paycharge
    where docid='<docid>' and PayCode='<PayCode>TOUT';

-- --------------------------------------------
-- Query 30
-- Uses table: DEPART
-- Uses table: ItemCatMast
-- Uses table: ItemMast
-- --------------------------------------------
SELECT S.VDATE,Sum(S.Amount) as NetAmt,Sum(S.DiscAmt) AS DiscAmt,S.RESTCODE,MAX(D.NAME) AS DEPARTNAME,IC.CatType FROM (((Stock S
    LEFT JOIN DEPART AS D ON S.RestCode=D.Code)
    Left Join ItemMast I On S.Item=I.Code And S.RestCode=I.RestCode)
    Left join ItemCatMast IC on IC.Code=I.ItemCatCode)
    Where S.DelFlag<>'D' and S.LogSite_Code='<LogSite_Code>'<Param>
    Group By S.RESTCODE,S.VDATE,IC.CatType
    HAVING Sum(S.DiscAmt)>0;

-- --------------------------------------------
-- Query 31
-- Uses table: DEPART
-- Uses table: ItemMast
-- --------------------------------------------
SELECT S.VDATE AS VDATE, S.VTYPE AS VTYPE, S.VNO AS VNO, S.QtyIss AS Quantity, S.RATE AS RATE, S.Amount AS Amount, S.DiscPer as DiscPer, S.DiscAmt AS DiscAmt,S.RESTCODE, I.NAME AS ITEMNAME, D.NAME AS DEPARTNAME FROM ((Stock S
    LEFT JOIN DEPART AS D ON S.RestCode=D.Code)
    Left Join ItemMast I On S.Item=I.Code And S.RestCode=I.RestCode)
    Where S.DelFlag<>'D' and S.LogSite_Code='<LogSite_Code>' AND S.DiscPer >0 <Param>
    order by D.NAME;

-- --------------------------------------------
-- Query 32
-- Uses table: DEPART
-- Uses table: Subgroup
-- --------------------------------------------
SELECT S1.DocID As DocId,S1.VDATE AS VDATE,S1.VTYPE AS VTYPE,S1.VNO AS VNO,S1.Total AS Amount, S1.DiscPer as DiscPer,S1.DiscAmt AS DiscAmt,S1.RESTCODE As RestCode,D.NAME AS DEPARTNAME,S1.Party as PartyCode,Sub.name as PartyName,case when isnull(Sub.name,'')='' then S1.Remark else Sub.name end as Remark FROM ((Sale1 S1
    LEFT JOIN DEPART D ON S1.RestCode=D.Code)
    Left Join Subgroup Sub on S1.Party=Sub.Subcode)
    Where S1.DelFlag<>'D' and S1.LogSite_Code='<LogSite_Code>' AND S1.DiscPer >0 AND S1.DiscAmt >0 <Param>
    order by Sub.Name,S1.VDATE;

-- --------------------------------------------
-- Query 33
-- Uses table: SessionMast
-- --------------------------------------------
Select Name from SessionMast
    Where <Param> Between FromTime and ToTime
    Order By Name;

-- --------------------------------------------
-- Query 34
-- Uses table: RevMast
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT DISTINCT RevMast.Name, RevMast.code,S.TaxPer FROM (Sale2 AS S
    INNER JOIN RevMast ON S.TaxCode = RevMast.Code)
    Inner Join Voucher_Type V On (S.VType = V.V_Type And S.Site_Code=V.Site_Code) <Param>)
    Order by S.TaxPer Desc;

-- --------------------------------------------
-- Query 35
-- Uses table: RevMast
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT DISTINCT RevMast.Name, RevMast.code,S.TaxPer FROM (Sale2 AS S
    INNER JOIN RevMast ON S.TaxCode = RevMast.Code)
    Inner Join Voucher_Type V On (S.VType = V.V_Type And S.Site_Code=V.Site_Code) <Param>
    Order by S.TaxPer Desc;

-- --------------------------------------------
-- Query 36
-- Uses table: GuestReward
-- Uses table: SmartCardRegistration
-- --------------------------------------------
Select S.Code RegId,S.Issdate,S.Name,S.Addr,S.Phone,S.RewardSale,S.RewardPoint,S.RedeemPoint,G.SchemeCode from SmartCardRegistration S
    Left Join (Select RegId,MAX(SchemeCode) SchemeCode From GuestReward
    Where IsNull(SchemeCode,'')<>''
    Group By RegId) G On G.RegId=S.Code
    Order By Cast(S.Code as Numeric);

-- --------------------------------------------
-- Query 37
-- Uses table: AssignDelivery
-- Uses table: DEPART
-- Uses table: DeliveryBoy
-- Uses table: Sale1
-- --------------------------------------------
Select S.Docid,S.VNo,S.Vdate,AD.Ddate,DB.Name DeliBoy,S.NetAmt,BillStatus = Case When ISNULL(AD.DeliBoy,'')='' Then 'Pending' Else 'Assigned' End,AD.Remark,AD.U_Name,D.Name as OutletName,D.Code as OutletCode From Sale1 S
    Left Join DEPART AS D ON S.RestCode = D.Code
    Left Join AssignDelivery AD On S.DocId = AD.DocId
    Left Join DeliveryBoy DB On AD.DeliBoy=DB.Code
    Where S.DELFLAG ='N' And S.LOGSITE_CODE='<LogSiteCode>'<Param>
    Order By S.DocId;

-- --------------------------------------------
-- Query 38
-- Uses table: DEPART
-- Uses table: ITEMMAST
-- Uses table: KOTLog
-- Uses table: SALE1
-- Uses table: Waiter
-- --------------------------------------------
SELECT K.ROOMNO,K.VNO AS KOTNO,K.VDATE,K.VTIME,K.RESTCODE,K.QTY,K.RATE,K.U_Name,K.Remarks,S.VNO AS BILLNO,D.NAME AS DEPARTNAME,I.NAME AS ITEMNAME, case K.voidyn when 'N' then 'No' when 'Y' then 'Yes' else '' end as VoidYN,W.Name WAITER,K.Reasons,KL.VTime EditTime FROM ((KOT K
    Left Join SALE1 S on K.ContraDocId=S.DocId)
    LEFT JOIN DEPART AS D ON K.RestCode = D.Code)
    Left Join (Select DocId,Max(VTime) VTime From KOTLog
    Group By DocId) KL on KL.DocId=K.DocId
    LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And K.ItemRestCode=I.RestCode
    Left Join Waiter W On K.Waiter=W.Code
    Where K.LogSite_Code='<LogSite_Code>' AND IsNull(S.DELFLAG,'') Not In ('D','Y') AND NCKOT='N'<Param><Param>;

-- --------------------------------------------
-- Query 39
-- Uses table: SessionMast
-- --------------------------------------------
Select Name from SessionMast
    Where '<Param>' Between FromTime and ToTime
    Order By Name;

-- --------------------------------------------
-- Query 40
-- Uses table: SessionMast
-- --------------------------------------------
Select Name from SessionMast
    Where CAST(<Param> AS Numeric) Between FromTime and ToTime
    Order By Name;

-- --------------------------------------------
-- Query 41
-- Uses table: enviro
-- --------------------------------------------
Select NCKOTPercentage from enviro
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 42
-- Uses table: SessionMast
-- --------------------------------------------
Select Name from SessionMast
    Where <Param><Param> To : ' Between FromTime and ToTime
    Order By Name;

-- --------------------------------------------
-- Query 43
-- Uses table: DEPART
-- Uses table: ROOMMAST
-- Uses table: Waiter
-- --------------------------------------------
SELECT S.VNo,S.VDATE,S.ROOMNO ,(S.NETAMT) ,S.GuarAtt,W.Name as Steward,D.Name as OutletName,D.Code as OutletCode,S.Remark,S.U_Name FROM ((Sale1 S
    LEFT JOIN ROOMMAST RM ON (S.RestCode = RM.RestCode) AND (S.RoomNo = RM.Code))
    LEFT JOIN DEPART AS D ON S.RestCode = D.Code)LEFT
    JOIN Waiter AS W ON S.Waiter = W.Code
    Where S.LogSite_Code='<LogSite_Code>'<Param> AND S.DELFLAG <>'N';

-- --------------------------------------------
-- Query 44
-- Uses table: DEPART
-- Uses table: ROOMMAST
-- Uses table: Waiter
-- --------------------------------------------
SELECT S.VNo,S.VDATE,S.ROOMNO ,(S.NETAMT) ,S.GuarAtt,W.Name as Steward,D.Name as OutletName,D.Code as OutletCode,S.Remark,S.U_Name FROM ((Sale1 S
    LEFT JOIN ROOMMAST RM ON (S.RestCode = RM.RestCode) AND (S.RoomNo = RM.Code))
    LEFT JOIN DEPART AS D ON S.RestCode = D.Code)LEFT
    JOIN Waiter AS W ON S.Waiter = W.Code
    Where S.LogSite_Code='<LogSite_Code>'<Param>;

-- --------------------------------------------
-- Query 45
-- Uses table: ItemCatMast
-- --------------------------------------------
Select Distinct CatType FROM ItemCatMast
    WHERE Flag='Category' AND RestCode In (<Param>);

-- --------------------------------------------
-- Query 46
-- Uses table: Depart
-- --------------------------------------------
SELECT Name FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 47
-- Uses table: Enviro
-- --------------------------------------------
Select * From Enviro
    Where Logsite_Code='<Logsite_Code>';

-- --------------------------------------------
-- Query 48
-- Uses table: Depart
-- --------------------------------------------
Select '' as Opt,Name ,Code As Code From Depart
    Where Logsite_Code='<Logsite_Code>' and RestType in ('Room Service')
    Order By Name;

-- --------------------------------------------
-- Query 49
-- Uses table: Depart
-- --------------------------------------------
Select '' As Opt,Name,Code From Depart
    Where Logsite_Code='<Logsite_Code>' and RestType in('Outlet','Room Service')
    Order By Name;

-- --------------------------------------------
-- Query 50
-- Uses table: RevMast
-- --------------------------------------------
SELECT Code,Name,FlagType,ShortName,DESKCODE FROM RevMast
    Where FlagAMR='Header' AND CODE NOT IN ('<Param>MK','<Param>HK','<Param>DBAR') And FlagType<>'FOM'
    Order By FlagType;

-- --------------------------------------------
-- Query 51
-- Uses table: ITEMCATMAST
-- --------------------------------------------
SELECT DISTINCT CATTYPE AS NAME FROM ITEMCATMAST
    WHERE (REVCODE IS NOT NULL AND REVCODE<>'') AND (CATTYPE<>'' AND CATTYPE IS NOT NULL)
    Order By CATTYPE;

-- --------------------------------------------
-- Query 52
-- Uses table: ItemMast
-- --------------------------------------------
SELECT MAX(I.Name) As FinishItem,S.FinItem,S.FinQty,MAX(IR.Name) As RItemName,S.RawItem,MAX(IR.Type) AS Type,SUM(S.RawQty) AS SemiQty FROM ((BOM S
    Left Join ItemMast I On S.FinItem=I.Code And S.RestCode=I.RestCode)
    Left Join ItemMast IR On S.RawItem=IR.Code And (IR.ItemType='Store' Or IR.GravyItem='Yes'))
    Where FinItem='<FinItem>'
    GROUP BY S.FinItem,S.FinQty,S.RawItem
    Order By Max(I.Name);



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [AssignDelivery]  NOT present in visahl.sql dump (schema unknown)
-- Table [DEPART]  NOT present in visahl.sql dump (schema unknown)
-- Table [DeliveryBoy]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [FAEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestReward]  NOT present in visahl.sql dump (schema unknown)
-- Table [ITEMCATMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [ITEMMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [KOT]  NOT present in visahl.sql dump (schema unknown)
-- Table [KOTLog]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [Paycharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SALE1]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [Site]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [SundryMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [Waiter]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [revmast]  NOT present in visahl.sql dump (schema unknown)
