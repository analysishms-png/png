# ==========================================================
# Module: Hotlib
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Subgroup
-- --------------------------------------------
Select * from Subgroup
    where subcode='<subcode>';

-- --------------------------------------------
-- Query 2
-- Uses table: RevMast
-- --------------------------------------------
Select Name From RevMast
    Where Code='<LogSiteCode>RMCH';

-- --------------------------------------------
-- Query 3
-- Uses table: enviro
-- --------------------------------------------
select * from enviro
    where logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 4
-- Uses table: LeaderRev
-- --------------------------------------------
Select * from LeaderRev
    Where MFolioNo=<MFolioNo>;

-- --------------------------------------------
-- Query 5
-- Uses table: GuestProf
-- --------------------------------------------
Select DiplomatYN from GuestProf
    Where Code='<Code>';

-- --------------------------------------------
-- Query 6
-- Uses table: RevMast
-- --------------------------------------------
Select Name,Code PayCode,AcCode From RevMast
    Where Code='<LogSiteCode>DISC';

-- --------------------------------------------
-- Query 7
-- Uses table: REVMAST
-- Uses table: TaxStru
-- --------------------------------------------
SELECT RevMast.TaxStru,RevMast.Name AS RevName,TaxMast.Name AS TaxName, TaxMast.ACCode AS RoomTaxAc,TaxMast.Code as TaxCode,TaxStru.Rate,TaxStru.Limit,TaxStru.Limit1, TaxStru.Nature, TaxStru.CondApp,TaxStru.CompOperator FROM (RevMast
    LEFT JOIN TaxStru ON RevMast.TaxStru=TaxStru.Code)
    LEFT JOIN REVMAST TaxMast ON TaxStru.TaxCode = TaxMast.Code
    Where TaxMast.FIELDTYPE='T' AND REVMAST.FIELDTYPE='C' AND RevMast.Code='<Code>';

-- --------------------------------------------
-- Query 8
-- Uses table: REVMAST
-- --------------------------------------------
SELECT * FROM REVMAST
    WHERE CODE='<CODE>';

-- --------------------------------------------
-- Query 9
-- Uses table: RoomOcc
-- --------------------------------------------
Select * from RoomOcc
    where chkoutdate is NULL and foliono=<foliono> and Site_Code='<Site_Code>';

-- --------------------------------------------
-- Query 10
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select taxstru.*,TaxStru.Rate As TaxRate,RevMAst.Name AS TaxName,REVMAST.RoundOff from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and taxstru.Code='<Code>'
    Order by Sno;

-- --------------------------------------------
-- Query 11
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select taxstru.*,taxstru.Rate As TaxRate,RevMAst.Name AS TaxName,REVMAST.RoundOff from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and taxstru.Code='<Code>'
    Order by Sno;

-- --------------------------------------------
-- Query 12
-- Uses table: PayChargeH
-- Uses table: VenueOCC
-- --------------------------------------------
Select Distinct Ltrim(SUBSTRING(FPDocid,14,8)) FPNo,FromDate From VenueOCC
    Where FPDocid In (Select Distinct ContraDocId From PayChargeH
    Where Docid ='<Docid>' And IsNull(ContraDocID,'')<>'')
    order By FromDate;

-- --------------------------------------------
-- Query 13
-- --------------------------------------------
Select GetDate();

-- --------------------------------------------
-- Query 14
-- Uses table: PayCharge
-- --------------------------------------------
Select * from PayCharge
    where Vtype='RC' and Vdate=<Vdate> is not Posted' and delflag<>'D' and SunTran.LogSite_Code='<LogSite_Code>';

-- --------------------------------------------
-- Query 15
-- Uses table: PayCharge
-- --------------------------------------------
Select * from PayCharge
    where Vtype='RC' and Vdate=<Vdate> is not Posted<Param>;

-- --------------------------------------------
-- Query 16
-- Uses table: ledger
-- --------------------------------------------
Delete from ledger
    where Docid='<Docid>' AND LogSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 17
-- Uses table: RevMast
-- Uses table: paycharge
-- --------------------------------------------
select sum(isnull(AmtDr,0))-sum(isnull(AmtCr,0)) as DebitAmt,PayCode,max(Accode) as ACCode,max(RevMast.Name) as RevenueName from paycharge
    Left Join RevMast on Revmast.Code=PayCharge.PayCode
    where PayCharge.LogSITE_CODE='<LogSiteCode>;

-- --------------------------------------------
-- Query 18
-- Uses table: REvmast
-- --------------------------------------------
Select * from REvmast
    where paytype='Cash' and FieldType='P';

-- --------------------------------------------
-- Query 19
-- Uses table: paycharge
-- --------------------------------------------
select distinct bill_no from paycharge
    where folionoDocid in ('<Param>') and (Bill_No<>'' and Bill_No is not NULL);

-- --------------------------------------------
-- Query 20
-- Uses table: REvmast
-- --------------------------------------------
Select * from REvmast
    where paytype='Member' and FieldType='P';

-- --------------------------------------------
-- Query 21
-- Uses table: REvmast
-- --------------------------------------------
Select * from REvmast
    where paytype='Company' and FieldType='P';

-- --------------------------------------------
-- Query 22
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 23
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP
    WHERE SUBCODE='<SUBCODE>';

-- --------------------------------------------
-- Query 24
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    Where Code='<Code>' and AmtCr<>0 and (paycharge.VTYPE Not In ('ARRES','ADRES')) AND ((Bill_No is NULL OR Bill_No='') OR MODESET='S') and paycharge.PayType in ('Company','Member');

-- --------------------------------------------
-- Query 25
-- Uses table: REVMAST
-- --------------------------------------------
SELECT ACCODE FROM REVMAST
    WHERE CODE='yyyyMMdd';

-- --------------------------------------------
-- Query 26
-- Uses table: GUESTSTAT
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- Uses table: SubGroup
-- --------------------------------------------
SELECT RoomMast.Code AS SearchCode,RoomMast.Code AS RoomNo FROM (((((RoomMast
    RIGHT JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo)
    LEFT JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId)
    LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code)
    LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode)
    LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)
    LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS
    WHERE roomocc.type not in ('C','O') AND ROOMMAST.TYPE='RO' AND RoomMast.LogSite_Code='<LogSiteCode>'
    ORDER BY RoomMast.Code;

-- --------------------------------------------
-- Query 27
-- Uses table: RoomMAst
-- --------------------------------------------
Update RoomMAst
    set roomStat='D'
    WHERE CODE='yyyyMMdd' AND LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 28
-- Uses table: GuestFolio
-- Uses table: RoomOcc
-- --------------------------------------------
select DocId ,Depdate,VDate as ChkInDate,NoDays from GuestFolio
    where Docid in (Select DocId from RoomOcc
    where chkoutdate is NULL);

-- --------------------------------------------
-- Query 29
-- Uses table: RoomMAst
-- Uses table: RoomOcc
-- --------------------------------------------
Update RoomOcc
    Set Depdate=Update RoomMAst
    set roomStat='D'
    WHERE CODE='yyyyMMdd' AND LOGSITE_CODE=',U_EntDt=<U_EntDt>,U_AE='E'
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 30
-- Uses table: enviro
-- Uses table: paycharge
-- --------------------------------------------
Update enviro
    set ncur=SELECT Distinct Bill_No FROM paycharge
    where PayCharge.Folionodocid='<Folionodocid>,ImprestAmount=0
    where Logsite_code='<Logsite_code>';

-- --------------------------------------------
-- Query 31
-- Uses table: Depart
-- --------------------------------------------
Update Depart
    Set CurTokenNo=0,CurTokenNoKOT=0
    where AutoResetToken='Yes' And Logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 32
-- Uses table: Depart
-- --------------------------------------------
Select ShortName,Code From Depart
    where AutoResetToken='Yes' And AutoSplit='Yes' And Logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 33
-- Uses table: RoomMAst
-- Uses table: RoomOcc
-- --------------------------------------------
Update RoomOcc
    Set Depdate=Update RoomMAst
    set roomStat='D'
    WHERE CODE='yyyyMMdd' AND LOGSITE_CODE=',U_EntDt=<U_EntDt>,U_AE='E'
    Where Docid=';

-- --------------------------------------------
-- Query 34
-- Uses table: RoomMAst
-- Uses table: RoomOcc
-- --------------------------------------------
Update RoomOcc
    Set Depdate=Update RoomMAst
    set roomStat='D'
    WHERE CODE='yyyyMMdd' AND LOGSITE_CODE=',U_EntDt=<U_EntDt>,U_AE='E'
    Where Docid='<Docid>;

-- --------------------------------------------
-- Query 35
-- Uses table: POS_SBill
-- Uses table: SplitSale1
-- --------------------------------------------
Delete From POS_SBill
    Where DocID In (Select DocId From SplitSale1
    Where VType='B<Param>' And LogSite_Code='<LogSite_Code>';

-- --------------------------------------------
-- Query 36
-- Uses table: TaxStru
-- Uses table: revmast
-- --------------------------------------------
Select AcCode,Rate,TaxStru.Nature from TaxStru
    INNER JOIN revmast on RevMast.Code=TaxStru.TaxCode
    Where TaxStru.Code='<Code>';

-- --------------------------------------------
-- Query 37
-- Uses table: PayCharge
-- --------------------------------------------
Select * from PayCharge
    where Vtype='RC' and Vdate= First Fill Enviro Setting Related to Daily Posting is not Posted' and SunTran.LogSite_Code='<LogSite_Code>';

-- --------------------------------------------
-- Query 38
-- Uses table: PayCharge
-- --------------------------------------------
Select * from PayCharge
    where Vtype='RC' and Vdate= First Fill Enviro Setting Related to Daily Posting is not Posted<Param>;

-- --------------------------------------------
-- Query 39
-- Uses table: ledger
-- --------------------------------------------
Delete from ledger
    where Docid='<Docid>' AND SITE_CODE='<SITE_CODE>';

-- --------------------------------------------
-- Query 40
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    Where Code='<Code>FOM';

-- --------------------------------------------
-- Query 41
-- Uses table: TaxStru
-- Uses table: revmast
-- --------------------------------------------
Select AcCode,Rate from TaxStru
    INNER JOIN revmast on RevMast.Code=TaxStru.TaxCode
    Where TaxStru.Code='<Code>';

-- --------------------------------------------
-- Query 42
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    Where Code='<Code>','<Param>yyyyMMdd and AmtCr<>0 and paycharge.PayType in ('Company');

-- --------------------------------------------
-- Query 43
-- Uses table: REVMAST
-- --------------------------------------------
SELECT ACCODE FROM REVMAST
    WHERE cODE='yyyyMMdd';

-- --------------------------------------------
-- Query 44
-- Uses table: REVMAST
-- --------------------------------------------
SELECT ACCODE FROM REVMAST
    WHERE cODE='yyyyMMdd
    Group By AgAc,VType;

-- --------------------------------------------
-- Query 45
-- Uses table: TaxStru
-- Uses table: enviro
-- Uses table: revmast
-- --------------------------------------------
update enviro
    set ncur=Select AcCode,Rate from TaxStru
    INNER JOIN revmast on RevMast.Code=TaxStru.TaxCode
    Where TaxStru.Code='<Code>
    where sitecode='<sitecode>';

-- --------------------------------------------
-- Query 46
-- Uses table: GUESTSTAT
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- Uses table: SubGroup
-- --------------------------------------------
SELECT RoomMast.Code AS SearchCode,RoomMast.Code AS RoomNo FROM (((((RoomMast
    RIGHT JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo)
    LEFT JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId)
    LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code)
    LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode)
    LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)
    LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS
    WHERE roomocc.type not in ('C','O') AND ROOMMAST.TYPE='RO' AND RoomMast.Site_Code='<Site_Code>'
    ORDER BY RoomMast.Code;

-- --------------------------------------------
-- Query 47
-- Uses table: RoomMAst
-- --------------------------------------------
Update RoomMAst
    set roomStat='D'
    WHERE CODE='yyyyMMdd' AND SITE_CODE='<SITE_CODE>';

-- --------------------------------------------
-- Query 48
-- Uses table: RoomMAst
-- Uses table: RoomOcc
-- --------------------------------------------
Update RoomOcc
    Set Depdate=Update RoomMAst
    set roomStat='D'
    WHERE CODE='yyyyMMdd' AND SITE_CODE=',U_EntDt=<U_EntDt>,U_AE='E'
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 49
-- Uses table: Ledger
-- Uses table: SubGroup
-- --------------------------------------------
SELECT SubGroup.SubCode, SubGroup.Name,Sum(Ledger.AmtCr)-Sum(Ledger.AmtDr) AS Balance FROM SubGroup
    LEFT JOIN Ledger ON SubGroup.SubCode = Ledger.SubCode
    GROUP BY SubGroup.SubCode, SubGroup.Name;

-- --------------------------------------------
-- Query 50
-- Uses table: SubGroup
-- --------------------------------------------
Update SubGroup
    Set Curr_Bal=<Curr_Bal>
    Where SubCode='<SubCode>';

-- --------------------------------------------
-- Query 51
-- Uses table: GUESTSTAT
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- Uses table: SubGroup
-- --------------------------------------------
SELECT RoomMast.Code AS SearchCode,RoomMast.Code AS RoomNo FROM (((((RoomMast
    RIGHT JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo)
    LEFT JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId)
    LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code)
    LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode)
    LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)
    LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS
    WHERE roomocc.type not in ('C','O') AND ROOMMAST.TYPE='RO' AND RoomMast.Site_Code='<Site_Code>;

-- --------------------------------------------
-- Query 52
-- Uses table: Depart
-- --------------------------------------------
Select RestType,Name,ShortName,BackColor From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 53
-- Uses table: HallBook
-- --------------------------------------------
Select * From HallBook
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 54
-- Uses table: RevMast
-- Uses table: paycharge
-- --------------------------------------------
select sum(AmtDr)-sum(AmtCr) as DebitAmt,PayCode,max(Accode) as ACCode,max(RevMast.Name) as RevenueName from paycharge
    Left Join RevMast on Revmast.Code=PayCharge.PayCode
    where PayCharge.SITE_CODE='<SITE_CODE>;

-- --------------------------------------------
-- Query 55
-- Uses table: paycharge
-- --------------------------------------------
select distinct bill_no from paycharge
    where foliono in (<Param>) and (Bill_No<>'' and Bill_No is not NULL);

-- --------------------------------------------
-- Query 56
-- Uses table: TaxStru
-- Uses table: revmast
-- --------------------------------------------
Select AcCode,Rate from TaxStru
    INNER JOIN revmast on RevMast.Code=TaxStru.TaxCode
    Where TaxStru.Code='<Code>
    Group By AgAc,VType;

-- --------------------------------------------
-- Query 57
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select Sum(TaxStru.Rate) as Rate from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='<Code>'
    Group By TaxStru.Nature;

-- --------------------------------------------
-- Query 58
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select sum(TaxStru.Rate) as Rate from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='<Code>'
    Group By TaxStru.Nature;

-- --------------------------------------------
-- Query 59
-- Uses table: RevMast
-- --------------------------------------------
Select Code As RevCode,* From RevMast
    where Shortname='EXTB';

-- --------------------------------------------
-- Query 60
-- Uses table: BOM
-- Uses table: ItemMast
-- Uses table: Itemmast
-- --------------------------------------------
Select Top 1 I.Code,I.Name,B.RawQty,I.Unit from Itemmast I
    Inner Join BOM B On I.Code=B.RawItem And I.ItemType='Store'
    Left Join ItemMast Fin On Fin.Code=B.FinItem
    Where B.FinItem='<FinItem>' And B.Site_Code='<Site_Code>' And Fin.NType='Trade Item'
    Order By B.RawSno;

-- --------------------------------------------
-- Query 61
-- Uses table: GodownMast
-- --------------------------------------------
Select Name from GodownMast
    Where Code='<Code>' And Site_Code='<Site_Code>';

-- --------------------------------------------
-- Query 62
-- Uses table: ItemMast
-- Uses table: Voucher_type
-- --------------------------------------------
SELECT Sum(S.RecdQty) AS QTY FROM ((Stock S
    Left Join ItemMast I On S.Item=I.Code)
    Left Join Voucher_type VT On S.VType=VT.V_Type)
    Where VT.NCAT IN ('PBC','PBR','MRE','RQI','STOP','BKREC','KSREC','KMREC') AND S.RecdQty>0 AND I.CONSUMPTIONITEM='<CONSUMPTIONITEM>' and S.GodownCode='<GodownCode>' and S.Site_Code='<Site_Code>';

-- --------------------------------------------
-- Query 63
-- Uses table: ItemMast
-- Uses table: Voucher_type
-- --------------------------------------------
SELECT Sum(S.IssQty) AS QTY FROM ((Stock S
    Left Join ItemMast I On S.Item=I.Code)
    Left Join Voucher_type VT On S.VType=VT.V_Type)
    Where VT.NCAT IN ('PRR','PRC','RQR','STOP','KSISS','KMISS') AND S.IssQty>0 AND I.CONSUMPTIONITEM='<CONSUMPTIONITEM>' and S.GodownCode='<GodownCode>' and S.Site_Code='<Site_Code>';

-- --------------------------------------------
-- Query 64
-- Uses table: BOM
-- Uses table: ItemMast
-- Uses table: Itemmast
-- --------------------------------------------
Select Top 1 I.Code,I.Name,B.RawQty,I.Unit,I.ConvRatio,I.IssueUnit from Itemmast I
    Inner Join BOM B On I.Code=B.RawItem And I.ItemType='Store'
    Left Join ItemMast Fin On Fin.Code=B.FinItem
    Where B.FinItem='<FinItem>' And B.Site_Code='<Site_Code>' And Fin.NType='Trade Item'
    Order By B.RawSno;

-- --------------------------------------------
-- Query 65
-- Uses table: Itemmast
-- --------------------------------------------
Select Name,Unit from Itemmast
    Where Code='<Code>' And ItemType='Store' And Site_Code='<Site_Code>';

-- --------------------------------------------
-- Query 66
-- Uses table: ItemMast
-- Uses table: Voucher_type
-- --------------------------------------------
SELECT Sum(S.RecdQty) AS QTY FROM ((Stock S
    Left Join ItemMast I On S.Item=I.Code And I.ItemType='Store')
    Left Join Voucher_type VT On S.VType=VT.V_Type)
    Where VT.NCAT IN ('PBC','PBR','MRE','RQI','STOP','BKREC','KSREC','KMREC') AND S.RecdQty>0 AND I.CONSUMPTIONITEM='<CONSUMPTIONITEM>' and S.GodownCode='<GodownCode>' and S.Site_Code='<Site_Code>';

-- --------------------------------------------
-- Query 67
-- Uses table: ItemMast
-- Uses table: Voucher_type
-- --------------------------------------------
SELECT Sum(S.IssQty) AS QTY FROM ((Stock S
    Left Join ItemMast I On S.Item=I.Code And I.ItemType='Store')
    Left Join Voucher_type VT On S.VType=VT.V_Type)
    Where VT.NCAT IN ('PRR','PRC','RQR','STOP','KSISS','KMISS') AND S.IssQty>0 AND I.CONSUMPTIONITEM='<CONSUMPTIONITEM>' and S.GodownCode='<GodownCode>' and S.Site_Code='<Site_Code>';

-- --------------------------------------------
-- Query 68
-- Uses table: ItemMast
-- Uses table: Voucher_type
-- --------------------------------------------
SELECT Sum(S.ThCons)/MAX(ConvRatio) AS QTY FROM ((RawConsumption S
    Left Join ItemMast I On S.RawItem=I.Code And I.ItemType='Store')
    Left Join Voucher_type VT On S.V_Type=VT.V_Type)
    Where VT.NCAT IN ('CONS') AND S.thcons>0 AND I.CONSUMPTIONITEM='<CONSUMPTIONITEM>' and S.DepartCode='<DepartCode>' and S.Site_Code='<Site_Code>';

-- --------------------------------------------
-- Query 69
-- Uses table: Voucher_Type
-- --------------------------------------------
Select * from Voucher_Type
    where Site_Code='<Site_Code>' and Ncat='CONS';

-- --------------------------------------------
-- Query 70
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    Where resttype in('Room Service','Outlet','Production');

-- --------------------------------------------
-- Query 71
-- Uses table: ComboPackDetail
-- Uses table: ItemMast
-- --------------------------------------------
Select ItemCode As Item,Qty,ItemMast.Name As ItemName,Itemmast.Restcode from ComboPackDetail
    Left Join ItemMast On ItemMast.Code=ComboPackDetail.ItemCode And ItemMast.RestCode=ComboPackDetail.RestCode
    WHERE ComboCode ='<ComboCode>' And ItemMast.RestCode ='<RestCode>';

-- --------------------------------------------
-- Query 72
-- Uses table: Depart
-- --------------------------------------------
SELECT Slogan1 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 73
-- Uses table: Depart
-- --------------------------------------------
SELECT Slogan2 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 74
-- Uses table: PayCharge
-- --------------------------------------------
Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge
    Where DocID='<DocID>' And PayType='Cash';

-- --------------------------------------------
-- Query 75
-- Uses table: Suntran
-- --------------------------------------------
Select st.sno,st.SunCode,st.dispname,St.Svalue,St.AMOUNT From Suntran St
    Where St.DocID='<DocID>'
    order by sno;

-- --------------------------------------------
-- Query 76
-- Uses table: sale1
-- --------------------------------------------
Update sale1
    set Printed='Y'
    where Docid='<Docid>';

-- --------------------------------------------
-- Query 77
-- Uses table: RoundOffSetting
-- --------------------------------------------
SELECT RoundOffType FROM RoundOffSetting
    WHERE ModuleName='Guest Bill' And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 78
-- Uses table: DEPART
-- --------------------------------------------
Select R.NAME,R.HEADER1,R.HEADER2,R.HEADER3,R.HEADER4,R.COMPANYTITLE,R.OUTLETTITLE From DEPART R
    Where R.CODE='<CODE>';

-- --------------------------------------------
-- Query 79
-- Uses table: paycharge
-- --------------------------------------------
Select isnull(bill_no,'') as Bill_NO,AmtDr from paycharge
    where IsNull(ContraDocId,'')='' and folionoDocid='<folionoDocid>';

-- --------------------------------------------
-- Query 80
-- Uses table: paycharge
-- --------------------------------------------
Select * from paycharge
    where IsNull(ContraDocId,'')='' and folionoDocid='<folionoDocid>'
    order by vDate,VNO,SNO;

-- --------------------------------------------
-- Query 81
-- Uses table: paycharge
-- --------------------------------------------
Select Distinct Split,FolioNoDocid from paycharge
    where IsNull(ContraDocId,'')='' and folionoDocid='<folionoDocid>';

-- --------------------------------------------
-- Query 82
-- Uses table: PayCharge
-- --------------------------------------------
Select Distinct Bill_NO from PayCharge
    where IsNull(ContraDocId,'')='' and folionoDocid='<folionoDocid>' and (Bill_No<>'' or Bill_No is Not Null);

-- --------------------------------------------
-- Query 83
-- Uses table: paycharge
-- --------------------------------------------
Select Distinct Split,Bill_no from paycharge
    where AMtdr<>0 and IsNull(ContraDocId,'')='' AND (BILL_NO IS NOT NULL OR BILL_NO<>'') and folionoDocid='<folionoDocid>';

-- --------------------------------------------
-- Query 84
-- Uses table: paycharge
-- --------------------------------------------
Select Distinct Split,Bill_no from paycharge
    where AMtdr<>0 and IsNull(ContraDocId,'')='' and folionoDocid='<folionoDocid>';

-- --------------------------------------------
-- Query 85
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where LOGSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 86
-- Uses table: paycharge
-- --------------------------------------------
Select Distinct Split,Bill_No from paycharge
    where IsNull(ContraDocId,'')='' and folionoDocid='<folionoDocid>' and (Modeset<>'S' or ModeSet is NULL);

-- --------------------------------------------
-- Query 87
-- Uses table: PayCharge
-- --------------------------------------------
select max(Plancharge) as PlanCharge from PayCharge
    where folioNODocid='<folioNODocid>';

-- --------------------------------------------
-- Query 88
-- Uses table: PlanDetails
-- --------------------------------------------
Select * from PlanDetails
    where Docid='<Docid>' And PrintOption='Print Seperately';

-- --------------------------------------------
-- Query 89
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- Uses table: Subgroup
-- --------------------------------------------
SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo, RoomOcc.Adult,RoomOcc.ChkOutTime,RoomOcc.ChkOutdate, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory,isnull(ST.Name,'') As TravelA, RoomOcc.DepTime, RoomOcc.ChkInTime,RoomOcc.PlanCode FROM (((GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)
    left joIn Subgroup S on GuestFolio.Company=s.Subcode)Left
    Join Subgroup ST on GuestFolio.TravelAgent=ST.Subcode
    Where GuestFolio.Docid = '<Docid>'
    order by RoomOcc.Sno Desc;

-- --------------------------------------------
-- Query 90
-- Uses table: PlanMast
-- --------------------------------------------
Select Name from PlanMast
    where Code='<Code>';

-- --------------------------------------------
-- Query 91
-- Uses table: FixedCharge
-- --------------------------------------------
Select name from FixedCharge
    where Code='<Code>';

-- --------------------------------------------
-- Query 92
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- Uses table: Subgroup
-- --------------------------------------------
SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo,RoomOcc.ChkOutTime,RoomOcc.ChkOutdate, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory,isnull(ST.Name,'') As TravelA, RoomOcc.DepTime, RoomOcc.ChkInTime,RoomOcc.PlanCode FROM (((GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)
    left joIn Subgroup S on GuestFolio.Company=s.Subcode)Left
    Join Subgroup ST on GuestFolio.TravelAgent=ST.Subcode
    Where GuestFolio.Docid = '<Docid>'
    order by RoomOcc.Sno Desc;

-- --------------------------------------------
-- Query 93
-- Uses table: paycharge
-- --------------------------------------------
Select Distinct Split,Bill_No from paycharge
    where IsNull(ContraDocId,'')='' and folionoDocid='<folionoDocid>' and (Modeset<>'S' or ModeSet is NULL OR mODESET='') AND (bILL_NO IS NOT NULL AND BILL_NO<>'');

-- --------------------------------------------
-- Query 94
-- Uses table: Taxstru
-- --------------------------------------------
Select Taxcode from Taxstru
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 95
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- Uses table: Subgroup
-- --------------------------------------------
SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,Guestprof.ConPrefix as CPrefix,GuestProf.Name,GuestProf.Type As type_g,GuestProf.CODE AS code_g, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomCat.Name As Room_CAT , RoomOcc.RoomNo,RoomOcc.ChkOutTime,RoomOcc.ChkOutdate, RoomOcc.Adult, RoomOcc.Children, Guestfolio.BookingDocId, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory,isnull(ST.Name,'') As TravelA, RoomOcc.DepTime, RoomOcc.ChkInTime,RoomOcc.PlanCode,GuestFolio.RoDisc FROM (((GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)
    left joIn Subgroup S on GuestFolio.Company=s.Subcode)Left
    Join Subgroup ST on GuestFolio.TravelAgent=ST.Subcode
    Where GuestFolio.Docid = '<Docid>'
    order by RoomOcc.Sno Desc;

-- --------------------------------------------
-- Query 96
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select * from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='<LogSiteCode>TR';

-- --------------------------------------------
-- Query 97
-- Uses table: GuestProfFor
-- --------------------------------------------
SELECT PassNo FROM GuestProfFor
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 98
-- Uses table: Taxstru
-- Uses table: revmast
-- --------------------------------------------
Select DISTINCT taxstru.taxcode,revmast.name from Taxstru
    inner join revmast on taxstru.taxcode=revmast.code
    Where taxstru.LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 99
-- Uses table: RoomOcc
-- --------------------------------------------
SELECT RoomOcc.RoomNo FROM (GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    Where RoomOcc.Type<>'C' And GuestFolio.mfolionoDocid = '<mfolionoDocid>'
    Order By RoomOcc.RoomNo;

-- --------------------------------------------
-- Query 100
-- Uses table: RevMast
-- --------------------------------------------
Select Max(Name) As Name from RevMast
    where Code='<Code>';

-- --------------------------------------------
-- Query 101
-- Uses table: Depart
-- --------------------------------------------
Select Max(Name) As Name from Depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 102
-- Uses table: paycharge
-- --------------------------------------------
Select Distinct Split,Bill_No from paycharge
    where IsNull(ContraDocId,'')='' and folionoDocid='<folionoDocid>' and (Modeset<>'S' or ModeSet is NULL OR mODESET='');

-- --------------------------------------------
-- Query 103
-- Uses table: RoomOcc
-- --------------------------------------------
SELECT sum(RoomOcc.Adult) As Adult, sum(RoomOcc.Children) As Child FROM (GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    Where RoomOcc.Type<>'C' And GuestFolio.mfolionoDocid = '<mfolionoDocid>';

-- --------------------------------------------
-- Query 104
-- Uses table: Country
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- Uses table: Subgroup
-- --------------------------------------------
SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,Guestprof.ConPrefix as CPrefix,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo,RoomOcc.ChkOutTime,RoomOcc.ChkOutdate, RoomOcc.Adult, RoomOcc.Children, Case When isnull(Country.Nationality,'')='' Then Country.Name Else Country.Nationality End As Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory,isnull(ST.Name,'') As TravelA, RoomOcc.DepTime, RoomOcc.ChkInTime,RoomOcc.PlanCode FROM (((GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)
    left joIn Subgroup S on GuestFolio.Company=s.Subcode)Left
    Join Subgroup ST on GuestFolio.TravelAgent=ST.Subcode
    left Join Country On GuestProf.Nationality=Country.Code
    Where GuestFolio.Docid = '<Docid>'
    order by RoomOcc.Sno Desc;

-- --------------------------------------------
-- Query 105
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- Uses table: Subgroup
-- --------------------------------------------
SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,Guestprof.ConPrefix as CPrefix,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo,RoomOcc.ChkOutTime,RoomOcc.ChkOutdate, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory,isnull(ST.Name,'') As TravelA, RoomOcc.DepTime, RoomOcc.ChkInTime,RoomOcc.PlanCode FROM (((GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)
    left joIn Subgroup S on GuestFolio.Company=s.Subcode)Left
    Join Subgroup ST on GuestFolio.TravelAgent=ST.Subcode
    Where GuestFolio.Docid = '<Docid>'
    order by RoomOcc.Sno Desc;

-- --------------------------------------------
-- Query 106
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- Uses table: Subgroup
-- --------------------------------------------
SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,Guestprof.ConPrefix as CPrefix,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo,RoomOcc.ChkOutTime,RoomOcc.ChkOutdate, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, GuestFolio.RODisc, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory,isnull(ST.Name,'') As TravelA, RoomOcc.DepTime, RoomOcc.ChkInTime,RoomOcc.PlanCode FROM (((GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)
    left joIn Subgroup S on GuestFolio.Company=s.Subcode)Left
    Join Subgroup ST on GuestFolio.TravelAgent=ST.Subcode
    Where GuestFolio.Docid = '<Docid>'
    order by RoomOcc.Sno Desc;

-- --------------------------------------------
-- Query 107
-- Uses table: PayCharge
-- --------------------------------------------
Update PayCharge
    Set Bill_No='<Bill_No>',U_AE='E'
    Where IsNull(ContraDocId,'')='' And FolioNoDocid='<FolioNoDocid>';

-- --------------------------------------------
-- Query 108
-- Uses table: PayCharge
-- --------------------------------------------
Update PayCharge
    Set Bill_No='<Bill_No>'
    Where IsNull(ContraDocId,'')='' And FolioNoDocid='<FolioNoDocid>';

-- --------------------------------------------
-- Query 109
-- Uses table: Taxstru
-- --------------------------------------------
Select Distinct Taxcode from Taxstru
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 110
-- Uses table: paycharge
-- --------------------------------------------
Select Distinct Split,Bill_No from paycharge
    where IsNull(ContraDocId,'')='' and folionoDocid='<folionoDocid>' and (Modeset<>'S' or ModeSet is NULL OR mODESET='')
    Where GuestFolio.Docid = '<Docid>'
    order by RoomOcc.Sno Desc;

-- --------------------------------------------
-- Query 111
-- Uses table: Employee
-- Uses table: GuestProf
-- Uses table: RevMast
-- Uses table: RoomMast
-- Uses table: SubGroup
-- --------------------------------------------
SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf,GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, R.Name AS RoomName, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGE AS ST
    LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code)
    LEFT JOIN Employee AS E ON ST.EmpCode = E.Code)
    LEFT JOIN RevMast AS P ON ST.PayCode = P.Code)
    LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left
    join SubGroup CC on CC.SubCode=ST.CompCode
    where ModeSet='S' and ST.FolionoDocid='<FolionoDocid>' And AmtCr>0;

-- --------------------------------------------
-- Query 112
-- Uses table: Depart
-- Uses table: PayCharge
-- Uses table: ViewPosSale
-- --------------------------------------------
Select RestCode,MAX(D.Name) Outlet,SUM(BaseValue)GOODSVALUE,CGSTPER,SUM(CGST)CGST,SGSTPER,SUM(SGST)SGST,IGSTPER,SUM(IGST)IGST,SUM(NonGST)NonGST,SUM(Exempted)Exempted,SUM(TaxAmtOther)TaxAmtOther,SUM(BillTotal) BillTotal From ViewPosSale VP
    Left Join Depart D On VP.RestCode=D.Code
    Where Docid In (Select DocId From PayCharge
    Where FolioNoDocid ='<FolioNoDocid>')
    Group By RestCode,CGSTPER,SGSTPER,IGSTPER;

-- --------------------------------------------
-- Query 113
-- Uses table: eInvoiceBill1
-- --------------------------------------------
Select IRN,AckNo,AckDt From eInvoiceBill1
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 114
-- --------------------------------------------
Select isnull(bill_no,'') as Bill_NO,AmtDr from <Param>
    where IsNull(ContraDocId,'')='' and folionoDocid='<folionoDocid>';

-- --------------------------------------------
-- Query 115
-- --------------------------------------------
Select * from <Param>
    where IsNull(ContraDocId,'')='' and folionoDocid='<folionoDocid>'
    order by vDate,VNO,SNO;

-- --------------------------------------------
-- Query 116
-- Uses table: PayCharge
-- --------------------------------------------
Update PayCharge
    Set Split='1'
    Where Docid='<Docid>' and Sno=<Sno> And FolioNoDocid='<FolioNoDocid>';

-- --------------------------------------------
-- Query 117
-- Uses table: PayCharge
-- --------------------------------------------
Update PayCharge
    Set Split='1'
    Where Docid='<Docid>' and Sno=<Sno>Bill Alredy Generated Between Date_From And Date_To;

-- --------------------------------------------
-- Query 118
-- --------------------------------------------
Update <Param>
    Set Bill_No='<Bill_No>'
    Where IsNull(ContraDocId,'')='' And FolioNoDocid='<FolioNoDocid>';

-- --------------------------------------------
-- Query 119
-- --------------------------------------------
Select Distinct Split,Bill_No from <Param>
    where IsNull(ContraDocId,'')='' and folionoDocid='<folionoDocid>' and (Modeset<>'S' or ModeSet is NULL OR mODESET='');

-- --------------------------------------------
-- Query 120
-- Uses table: PayCharge
-- --------------------------------------------
Update PayCharge
    Set Split='1'
    Where Docid='<Docid>' and Sno=<Sno> And Amtcr<>0
    order by VDate;

-- --------------------------------------------
-- Query 121
-- --------------------------------------------
SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, <Param>.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (
    Where GuestFolio.Docid = '<Docid>'
    order by RoomOcc.Sno Desc;

-- --------------------------------------------
-- Query 122
-- Uses table: GuestFolio
-- Uses table: Roomocc
-- --------------------------------------------
Select Distinct PlanAmt from Roomocc
    Where (Docid In (Select DocId From GuestFolio
    Where mFolioNoDocId='<mFolioNoDocId>') Or Docid='<Docid>') And Type Not In ('C')
    order by PlanAmt;

-- --------------------------------------------
-- Query 123
-- Uses table: GuestFolio
-- Uses table: Roomocc
-- --------------------------------------------
Select Distinct PlanAmt from Roomocc
    Where (Docid In (Select DocId From GuestFolio
    Where mFolioNoDocId='<mFolioNoDocId>') Or Docid='<Docid>' And PayCode='<LogSiteCode>RMCH' And Vtype='RC'
    Order By FB.Vdate Desc;

-- --------------------------------------------
-- Query 124
-- Uses table: PlanMast
-- --------------------------------------------
Select Name,Tariff,Adults from PlanMast
    where Code='<Code>';

-- --------------------------------------------
-- Query 125
-- Uses table: GuestFolio
-- Uses table: Roomocc
-- --------------------------------------------
Select Distinct PlanAmt from Roomocc
    Where (Docid In (Select DocId From GuestFolio
    Where mFolioNoDocId='<mFolioNoDocId>') Or Docid='' And RestType In ('Outlet','Room Service');

-- --------------------------------------------
-- Query 126
-- Uses table: GuestFolio
-- Uses table: Roomocc
-- --------------------------------------------
Select Distinct PlanAmt from Roomocc
    Where (Docid In (Select DocId From GuestFolio
    Where mFolioNoDocId='<mFolioNoDocId>') Or Docid='<Docid>' And AmtCr>0;

-- --------------------------------------------
-- Query 127
-- Uses table: Taxstru
-- --------------------------------------------
Select Distinct Taxcode from Taxstru
    Where LogSite_Code='<LogSiteCode>'
    Order By TaxCode;

-- --------------------------------------------
-- Query 128
-- Uses table: Taxstru
-- --------------------------------------------
Select Taxcode from Taxstru
    where taxcode='<LogSiteCode>LT';

-- --------------------------------------------
-- Query 129
-- Uses table: company
-- --------------------------------------------
Select LstNo from company
    where Comp_Code='<CompCode>';

-- --------------------------------------------
-- Query 130
-- Uses table: company
-- --------------------------------------------
Select CstNo from company
    where Comp_Code='<CompCode>';

-- --------------------------------------------
-- Query 131
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 132
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select * from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='<LogSiteCode>TR'
    Order By TaxStru.Limit,TaxStru.Limit1;

-- --------------------------------------------
-- Query 133
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select * from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='<LogSiteCode>TR' And Sundry<>'<Param>SCH'
    Order By TaxStru.Limit,TaxStru.Limit1;

-- --------------------------------------------
-- Query 134
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select * from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='<Code>'
    Order By TaxStru.Limit,TaxStru.Limit1;

-- --------------------------------------------
-- Query 135
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select * from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='<Code>';

-- --------------------------------------------
-- Query 136
-- Uses table: ROOMMAST
-- --------------------------------------------
SELECT MULTPER,* FROM ROOMMAST
    WHERE TYPE='RO' AND InclCount='Y' AND ROOMCAT='<ROOMCAT>' AND CODE='<CODE>';

-- --------------------------------------------
-- Query 137
-- Uses table: ROOMCAT
-- --------------------------------------------
SELECT MULTPER FROM ROOMCAT
    WHERE CODE='<CODE>';

-- --------------------------------------------
-- Query 138
-- Uses table: RATELIST
-- --------------------------------------------
SELECT * FROM RATELIST
    WHERE ROOMCAT='<ROOMCAT>'
    ORDER BY ROOMCAT,ROOMNO,CODE,OCCTYPE;

-- --------------------------------------------
-- Query 139
-- Uses table: SeasonMast1
-- --------------------------------------------
Select * from SeasonMast1;

-- --------------------------------------------
-- Query 140
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select * from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and RevMast.Sundry<>'<LogSiteCode>SCH' and TaxStru.nature='On Base Amt' and taxstru.Code='<Code>';

-- --------------------------------------------
-- Query 141
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select * from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and RevMast.Sundry<>'<LogSiteCode>SCH' and TaxStru.nature='On Base Amt' and taxstru.Code='<LogSiteCode>TR';

-- --------------------------------------------
-- Query 142
-- Uses table: DepartRWScheme
-- --------------------------------------------
Select IsNull(Max(RSchemeCode),'') From DepartRWScheme
    Where AssociatedRestCode='<AssociatedRestCode>';

-- --------------------------------------------
-- Query 143
-- Uses table: GuestReward
-- --------------------------------------------
Select * From GuestReward
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 144
-- Uses table: SmartCardRegistration
-- --------------------------------------------
Select Code,CardNo,SerialNo,MemberCode,RewardBal,RewardSale,RewardPoint,RedeemPoint From SmartCardRegistration
    Where MemberCode='<MemberCode>' And CardType='Cash Card' And LogSite_Code='<LogSite_Code>';

-- --------------------------------------------
-- Query 145
-- Uses table: RWParameter
-- --------------------------------------------
Select * from RWParameter
    where Code='<Code>';

-- --------------------------------------------
-- Query 146
-- Uses table: GuestReward
-- --------------------------------------------
Update GuestReward
    Set SaleUpTo=<SaleUpTo>,RPointOnAmt=<RPointOnAmt>,RewardPoint=<RewardPoint>,RewardValue=<RewardValue>,SchemeCode='<SchemeCode>',RegId='<RegId>'
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 147
-- Uses table: RWParameter
-- --------------------------------------------
Select * from RWParameter
    where Code='<Code>' And CardType='Cash Card' And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 148
-- Uses table: GuestReward
-- --------------------------------------------
Select IsNull(Sum(RPointOnAmt),0) SaleUpTo From GuestReward
    Where CustCode='<CustCode>' And SchemeCode='<SchemeCode>';

-- --------------------------------------------
-- Query 149
-- Uses table: FOlioLog
-- --------------------------------------------
Select Max(Id) from FOlioLog
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 150
-- Uses table: BookingLog
-- --------------------------------------------
Select Max(Id) from BookingLog
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 151
-- Uses table: PrintFormats
-- --------------------------------------------
Select count(*) from PrintFormats
    where ModuleDescription='KOT Plain Paper Running' and ModuleName='POS';

-- --------------------------------------------
-- Query 152
-- Uses table: PrintFormats
-- --------------------------------------------
Select count(*) from PrintFormats
    where ModuleDescription='GUEST BILL WINDOWS PLAIN PAPER NEW' and ModuleName='FOM';

-- --------------------------------------------
-- Query 153
-- Uses table: PrintFormats
-- --------------------------------------------
Select count(*) from PrintFormats
    where ModuleDescription='BILL WINDOWS PLAIN PAPER RUNNING' and ModuleName='POS';

-- --------------------------------------------
-- Query 154
-- Uses table: PrintFormats
-- --------------------------------------------
Select count(*) from PrintFormats
    where ModuleDescription='BILL DOS PLAIN (3) PAPER RUNNING' and ModuleName='POS';

-- --------------------------------------------
-- Query 155
-- Uses table: PrintFormats
-- --------------------------------------------
Select count(*) from PrintFormats
    where ModuleDescription='GUEST BILL DOS 80 COL PLAIN FORMAT1' and ModuleName='FOM';

-- --------------------------------------------
-- Query 156
-- Uses table: PrintFormats
-- --------------------------------------------
Select count(*) from PrintFormats
    where ModuleDescription='GUEST BILL DOS 80 COL PREPRINTED FORMAT1' and ModuleName='FOM';

-- --------------------------------------------
-- Query 157
-- Uses table: PrintFormats
-- --------------------------------------------
Select count(*) from PrintFormats
    where ModuleDescription='BILL DOS POS PREPRINTED FORMAT2' and ModuleName='POS';

-- --------------------------------------------
-- Query 158
-- Uses table: PrintFormats
-- --------------------------------------------
Select count(*) from PrintFormats
    where ModuleDescription='BILL DOS POS PREPRINTED FORMAT3' and ModuleName='POS';

-- --------------------------------------------
-- Query 159
-- Uses table: PrintFormats
-- --------------------------------------------
Select count(*) from PrintFormats
    where ModuleDescription='GUEST BILL DOS 80 COL PREPRINTED FORMAT2' and ModuleName='FOM';

-- --------------------------------------------
-- Query 160
-- Uses table: PrintFormats
-- --------------------------------------------
Select count(*) from PrintFormats
    where ModuleDescription='GUEST BILL DOS 80 COL PREPRINTED FORMAT3' and ModuleName='FOM';

-- --------------------------------------------
-- Query 161
-- Uses table: PrintFormats
-- --------------------------------------------
Select count(*) from PrintFormats
    where ModuleDescription='BILL DOS POS PLAIN FORMAT1' and ModuleName='POS';

-- --------------------------------------------
-- Query 162
-- Uses table: PrintFormats
-- --------------------------------------------
Select count(*) from PrintFormats
    where ModuleDescription='BILL DOS PLAIN (3) PAPER RUNNING (TVSRP3200)' and ModuleName='POS';

-- --------------------------------------------
-- Query 163
-- Uses table: PrintFormats
-- --------------------------------------------
Select count(*) from PrintFormats
    where ModuleDescription='BILL DOS PLAIN (3) PAPER RUNNING DELAY (TVSRP3200)' and ModuleName='POS';

-- --------------------------------------------
-- Query 164
-- Uses table: PrintFormats
-- --------------------------------------------
Select count(*) from PrintFormats
    where ModuleDescription='BILL DOS PLAIN (3) INCH INCLUSIVE TAX (TVSRP3200)' and ModuleName='POS';

-- --------------------------------------------
-- Query 165
-- Uses table: PrintFormats
-- --------------------------------------------
Select count(*) from PrintFormats
    where ModuleDescription='BILL DOS PLAIN PAPER 2IN1' and ModuleName='POS';

-- --------------------------------------------
-- Query 166
-- Uses table: PrintFormats
-- --------------------------------------------
Select count(*) from PrintFormats
    where ModuleDescription='BILL DOS PLAIN PAPER 2IN1 (HANS REGENCY)' and ModuleName='POS';

-- --------------------------------------------
-- Query 167
-- Uses table: PrintFormats
-- --------------------------------------------
Select count(*) from PrintFormats
    where ModuleDescription='BILL DOS PLAIN (3) INCH NO TAX (TVSRP3200)' and ModuleName='POS';

-- --------------------------------------------
-- Query 168
-- Uses table: PrintFormats
-- --------------------------------------------
Select count(*) from PrintFormats
    where ModuleDescription='BILL DOS PLAIN PAPER TVSDOT4 (WITH EJECT)' and ModuleName='POS';

-- --------------------------------------------
-- Query 169
-- Uses table: Depart
-- Uses table: ItemCatMast
-- Uses table: ItemGrp
-- Uses table: TaxStru
-- --------------------------------------------
SELECT Distinct I.Code,I.Name,I.Unit,I.ItemGroup,I.DISPCODE,IG.Type,I.PurchRate,I.LPurRate, IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,T.Name TaxStru,I.NType,SChrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END, REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END, RateIncTax=CASE I.RateIncTax WHEN 'Y' THEN 'Yes' ELSE 'No' END, K.Name as KitchenName,I.ActiveYN,I.BarCode,I.LabelName,I.LabelQty,I.LabelRemark1,I.LabelRemark2,I.LabelRemark3,I.LabelRemark4,I.LabelRemark5 FROM ((ItemMast I
    Left join ItemGrp IG on IG.Code=I.ItemGroup)
    Left Join ItemCatMast IC on I.ItemCatCode=IC.Code)
    left Join TaxStru T On IC.TaxStru=T.Code
    Left Join Depart K on K.Code=I.Kitchen
    Where SELECT Distinct I.Code,I.Name,I.Unit,I.ItemGroup,I.DISPCODE,IG.Type,I.PurchRate,I.LPurRate, IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,T.Name TaxStru,I.NType,SChrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END, REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END, RateIncTax=CASE I.RateIncTax WHEN 'Y' THEN 'Yes' ELSE 'No' END, K.Name as KitchenName,I.ActiveYN,I.BarCode,I.LabelName,I.LabelQty,I.LabelRemark1,I.LabelRemark2,I.LabelRemark3,I.LabelRemark4,I.LabelRemark5 FROM ((ItemMast I
    Left join ItemGrp IG on IG.Code=I.ItemGroup)
    Left Join ItemCatMast IC on I.ItemCatCode=IC.Code)
    left Join TaxStru T On IC.TaxStru=T.Code
    Left Join Depart K on K.Code=I.Kitchen
    Where <Param>'
    order by I.Name;

-- --------------------------------------------
-- Query 170
-- Uses table: Subgroup
-- --------------------------------------------
Select Subcode From Subgroup
    Where MapCode='<MapCode>';

-- --------------------------------------------
-- Query 171
-- Uses table: RoomCat
-- --------------------------------------------
Select Code From RoomCat
    Where MapCode='<MapCode>';

-- --------------------------------------------
-- Query 172
-- Uses table: RoomCat
-- --------------------------------------------
Select Top 1 Min(Code) From RoomCat
    Where Inclcount='Y';

-- --------------------------------------------
-- Query 173
-- Uses table: PlanMast
-- --------------------------------------------
Select Code From PlanMast
    Where MapCode='<MapCode>';

-- --------------------------------------------
-- Query 174
-- Uses table: GUESTPROF
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),1)+1 AS MyCode From GUESTPROF;

-- --------------------------------------------
-- Query 175
-- Uses table: eInvoiceBill1
-- --------------------------------------------
Select * From eInvoiceBill1
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 176
-- Uses table: eInvoiceBill2
-- --------------------------------------------
Select * From eInvoiceBill2
    Where DocId='<DocId>'
    Order By Cast(SlNo As Integer);



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [BOM]  NOT present in visahl.sql dump (schema unknown)
-- Table [BookingLog]  NOT present in visahl.sql dump (schema unknown)
-- Table [ComboPackDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [Country]  NOT present in visahl.sql dump (schema unknown)
-- Table [DEPART]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [DepartRWScheme]  NOT present in visahl.sql dump (schema unknown)
-- Table [Employee]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [FOlioLog]  NOT present in visahl.sql dump (schema unknown)
-- Table [FixedCharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [GUESTPROF]  NOT present in visahl.sql dump (schema unknown)
-- Table [GUESTSTAT]  NOT present in visahl.sql dump (schema unknown)
-- Table [GodownMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestProf]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestProfFor]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestReward]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallBook]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemGrp]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Itemmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [LeaderRev]  NOT present in visahl.sql dump (schema unknown)
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [POS_SBill]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [PayChargeH]  NOT present in visahl.sql dump (schema unknown)
-- Table [PlanDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [PlanMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [PrintFormats]  NOT present in visahl.sql dump (schema unknown)
-- Table [RATELIST]  NOT present in visahl.sql dump (schema unknown)
-- Table [REVMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [REvmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMCAT]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [RWParameter]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomCat]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMAst]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [Roomocc]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoundOffSetting]  NOT present in visahl.sql dump (schema unknown)
-- Table [SUBGROUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [SeasonMast1]  NOT present in visahl.sql dump (schema unknown)
-- Table [SmartCardRegistration]  NOT present in visahl.sql dump (schema unknown)
-- Table [SplitSale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Suntran]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [Taxstru]  NOT present in visahl.sql dump (schema unknown)
-- Table [VenueOCC]  NOT present in visahl.sql dump (schema unknown)
-- Table [ViewPosSale]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_type]  NOT present in visahl.sql dump (schema unknown)
-- Table [company]  NOT present in visahl.sql dump (schema unknown)
-- Table [eInvoiceBill1]  NOT present in visahl.sql dump (schema unknown)
-- Table [eInvoiceBill2]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [paycharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [sale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [taxstru]  NOT present in visahl.sql dump (schema unknown)
