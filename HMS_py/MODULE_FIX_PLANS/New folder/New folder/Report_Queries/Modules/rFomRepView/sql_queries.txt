# ==========================================================
# Module: rFomRepView
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Site
-- --------------------------------------------
Select Site_Code AS Code,Site_Desc AS NAME From Site
    Order by Site_Desc;

-- --------------------------------------------
-- Query 2
-- Uses table: FAEnviro
-- --------------------------------------------
Select * From FAEnviro;

-- --------------------------------------------
-- Query 3
-- --------------------------------------------
Select Q.* From <Param>
    Where IsNull(Q.SupplierGSTIN,'')<>'' And IsNull(R2.SupplierGSTIN,'')='' And Q.InvoiceDate <Param><Param> And <Param>
    Order By Q.SupplierGSTIN,Q.InvoiceDate;

-- --------------------------------------------
-- Query 4
-- --------------------------------------------
Select R2.*,'' VoucherNo From <Param>
    Where IsNull(Q.SupplierGSTIN,'')='' And IsNull(R2.SupplierGSTIN,'')<>'' And R2.InvoiceDate <Param><Param> And <Param>
    Order By R2.SupplierGSTIN,R2.InvoiceDate,Q.SupplierGSTIN,Q.InvoiceDate;

-- --------------------------------------------
-- Query 5
-- Uses table: RoomCat
-- Uses table: RoomMast
-- --------------------------------------------
Select Count(Distinct RoomMast.Code) from RoomMast
    Left Join RoomCat On RoomCat.Code=RoomMast.RoomCat
    Where RoomMast.Type='RO' And RoomMast.Logsite_code='<Logsite_code>';

-- --------------------------------------------
-- Query 6
-- Uses table: RoomCat
-- Uses table: RoomMast
-- --------------------------------------------
Select Distinct RoomMast.RoomCat,RoomCat.Name as RoomCatagory from RoomMast
    Left Join RoomCat On RoomCat.Code=RoomMast.RoomCat
    Where RoomMast.Type='RO' And RoomMast.Logsite_code='<Logsite_code>'
    Order By RoomCat.Name;

-- --------------------------------------------
-- Query 7
-- Uses table: Depart
-- Uses table: RoomMast
-- --------------------------------------------
Select Distinct RoomMast.MaidStation As MaidStationCode,Depart.Name as MaidStation from RoomMast
    Left Join Depart On Depart.Code=RoomMast.MaidStation
    Where RoomMast.Type='RO' And RoomMast.Logsite_code='<Logsite_code>'
    Order By Depart.Name;

-- --------------------------------------------
-- Query 8
-- Uses table: RoomCat
-- --------------------------------------------
Select Code AS RoomCat,Name As RoomCatName,ShortName,NoRooms From RoomCat
    Where Type='RO'
    Order By Name;

-- --------------------------------------------
-- Query 9
-- Uses table: Roommast
-- --------------------------------------------
Select Count(*) From Roommast
    Where InclCount='Y' And RoomCat='<RoomCat>';

-- --------------------------------------------
-- Query 10
-- Uses table: Roommast
-- --------------------------------------------
Select Count(*) From Roommast
    Where InclCount='Y' And RoomCat='<RoomCat>' <Param> And AmtDr>0;

-- --------------------------------------------
-- Query 11
-- Uses table: Roommast
-- --------------------------------------------
Select Count(*) From Roommast
    Where InclCount='Y' And RoomCat='<RoomCat>' <Param><Param>;

-- --------------------------------------------
-- Query 12
-- Uses table: PayCharge
-- --------------------------------------------
Select Count(Distinct Convert(Varchar(11),Vdate,102)+Case When RelatedFolionoDocid='' Then FolionoDocId Else RelatedFolionoDocid End) RoomOcc From PayCharge
    Where RoomCat='<RoomCat>' <Param> And AmtDr>0;

-- --------------------------------------------
-- Query 13
-- Uses table: PayCharge
-- --------------------------------------------
Select Sum(AmtDr-AmtCr) From PayCharge
    Where RoomCat='<RoomCat>' <Param><Param>;

-- --------------------------------------------
-- Query 14
-- Uses table: RoomOccDet
-- --------------------------------------------
Select Max(ChkOutDate) From RoomOccDet
    Where LogSite_Code='<LogSiteCode>' And RoomType='RO' And RoomNo='<RoomNo>' And ChkOutDate <Param>;

-- --------------------------------------------
-- Query 15
-- Uses table: PlanMast
-- --------------------------------------------
Select Count(Distinct PlanMast.Tariff) from PlanMast
    Where PlanMast.Logsite_code='<Logsite_code>';

-- --------------------------------------------
-- Query 16
-- Uses table: PlanMast
-- --------------------------------------------
Select Distinct PlanMast.Tariff from PlanMast
    Where PlanMast.Logsite_code='<Logsite_code>'
    Order By PlanMast.Tariff;

-- --------------------------------------------
-- Query 17
-- Uses table: PayCharge
-- --------------------------------------------
Select Count(Distinct VDate) NightStay,Sum(AmtDr) TRoomRent From PayCharge
    Where LogSite_Code='<LogSiteCode>' And (PayCode In ('';

-- --------------------------------------------
-- Query 18
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- Uses table: SubGroup
-- --------------------------------------------
Select GP.ConPrefix,GP.Name GuestName,S.Name Company From GuestFolio GF
    Left Join GuestProf GP On GF.GuestProf=GP.Code
    Left Join SubGroup S On GF.Company=S.SubCode
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 19
-- Uses table: ITEMCATMAST
-- --------------------------------------------
SELECT DISTINCT CATTYPE AS NAME FROM ITEMCATMAST
    WHERE (REVCODE IS NOT NULL AND REVCODE<>'') AND (CATTYPE<>'' AND CATTYPE IS NOT NULL)
    Order By CATTYPE;

-- --------------------------------------------
-- Query 20
-- Uses table: RevMast
-- Uses table: paycharge
-- --------------------------------------------
Select * from RevMast
    where (code in (select distinct Paycode from paycharge
    where settledate between <Param><Param> and <Param> and foliono<>0) and ((FlagType = 'FOM' AND FlagAMR <> 'Header') OR (FieldType = 'T'))) OR cODE='<LogSiteCode>ROFF'
    order by SEQNO;

-- --------------------------------------------
-- Query 21
-- Uses table: Paycharge
-- --------------------------------------------
Select distinct Bill_No from Paycharge
    where Bill_No is not NUll and Bill_No <>'' and FolioNoDocid='<FolioNoDocid>';

-- --------------------------------------------
-- Query 22
-- Uses table: Paycharge
-- --------------------------------------------
Select distinct Bill_No from Paycharge
    where Bill_No is not NUll and Bill_No <>'' and FolioNoDocid='<FolioNoDocid><Param>' and (PayType='Room');

-- --------------------------------------------
-- Query 23
-- Uses table: BillDet
-- --------------------------------------------
SELECT sum(BillDet.Bill_Amt) as Bill_Amt FROM BillDet
    where FOlionoDocid='<FOlionoDocid>';

-- --------------------------------------------
-- Query 24
-- Uses table: Roomocc
-- --------------------------------------------
Select chkoutuser from Roomocc
    where docid='<docid>' and type='O';

-- --------------------------------------------
-- Query 25
-- Uses table: suntranfacility
-- --------------------------------------------
select Sum(Amount) as Disc from suntranfacility s
    where S.docid='<docid>' and Suncode='<Suncode>DIS';

-- --------------------------------------------
-- Query 26
-- Uses table: suntranfacility
-- --------------------------------------------
select Sum(Amount) as ROff from suntranfacility s
    where S.docid='<docid>' and Suncode='<Suncode>ROFF';

-- --------------------------------------------
-- Query 27
-- Uses table: suntranfacility
-- --------------------------------------------
select Sum(Amount) as NetAmt from suntranfacility s
    where S.docid='<docid>' and Suncode='<Suncode>NET';

-- --------------------------------------------
-- Query 28
-- Uses table: GuestFolio
-- Uses table: PayCharge
-- Uses table: RoomOccDet
-- --------------------------------------------
Select Paytype,Sum(AmtCr) As SettleAmt From PayCharge
    Where ModeSet='S' And AmtCr<>0 And FolioNoDocid In (Select Distinct RD.Docid From RoomOccDet RD
    Inner Join GuestFolio On GuestFolio.Docid=RD.Docid
    Where RD.ChkOutDate between <Param> and <Param>)
    Group By PayType
    Order By PayType;

-- --------------------------------------------
-- Query 29
-- Uses table: GuestFolio
-- --------------------------------------------
Select BookingDocId from GuestFolio
    where Docid='<Docid>';

-- --------------------------------------------
-- Query 30
-- Uses table: GuestFolio
-- --------------------------------------------
Select RefBookNo from GuestFolio
    where Docid='<Docid>';

-- --------------------------------------------
-- Query 31
-- Uses table: Roomocc
-- --------------------------------------------
Select RoomTarrif from Roomocc
    where docid='<docid>' and type='O';

-- --------------------------------------------
-- Query 32
-- Uses table: SubGroup
-- Uses table: guestfolio
-- --------------------------------------------
select IsNull(Max(SubGroup.Name),'')+'/'+IsNull(Max(sg.Name),'') As mCompany,IsNull(Max(SubGroup.GSTIN),'') As GSTIN from guestfolio G
    Left Join SubGroup On G.Company=SubGroup.Subcode
    Left Join SubGroup sg On G.TravelAgent=sg.Subcode
    Where G.Docid='<Docid>';

-- --------------------------------------------
-- Query 33
-- Uses table: Paycharge
-- --------------------------------------------
Select Count(distinct Vdate) from Paycharge
    where RelatedFolionoDocId='<RelatedFolionoDocId>';

-- --------------------------------------------
-- Query 34
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 35
-- Uses table: paycharge
-- --------------------------------------------
Select DIstinct Bill_NO as billNo from paycharge
    where folionoDocid='<folionoDocid>' and Amtdr<>0 AND (MODESET IS NULL OR MODESET ='');

-- --------------------------------------------
-- Query 36
-- Uses table: RoomOcc
-- --------------------------------------------
Select * from RoomOcc
    where Chkoutdate is Not NULL and Type='O' and Docid='<Docid>';

-- --------------------------------------------
-- Query 37
-- Uses table: NightAuditLog
-- --------------------------------------------
Select DateChngFrom,StartNightAudit,EndNightAudit,U_Name from NightAuditLog
    where LogSite_Code='<LogSiteCode>' And DateChngFrom between <Param> and <Param>
    Order By Id;

-- --------------------------------------------
-- Query 38
-- Uses table: RoomMast
-- --------------------------------------------
Select Count(*) From RoomMast
    Where Type='RO' And InclCount='Y';

-- --------------------------------------------
-- Query 39
-- Uses table: RevMast
-- Uses table: RoomOccDet
-- --------------------------------------------
Select Count(*) From RoomOccDet
    Where ChkINDt=ChkOutDt And Type='O' And ChkInDt=<ChkInDt> And RestCode='<RestCode>FOM' And PayCode In (Select Code FROM RevMast
    Where FlagAMR='Detail' AND FlagType='FOM' AND FieldType='C' And Nature='Room Charge');

-- --------------------------------------------
-- Query 40
-- Uses table: FOMBillChangeDetails
-- --------------------------------------------
Select Distinct Bill_No as BillNo,U_Name As UName,BillChangeDate,BillAmt,SettleAmt,NextSettleAmt,SettledBy,BillSettleDate from FOMBillChangeDetails FBC
    Where <Param><Param> And <Param>;

-- --------------------------------------------
-- Query 41
-- Uses table: Booking
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- Uses table: PayCharge
-- --------------------------------------------
SELECT RC.RoomNo,GF.Name As GuestName FROM ((((RoomOCC RC
    LEFT JOIN GuestProf GP ON RC.GuestProf = GP.Code)
    LEFT JOIN GuestFolio GF ON RC.FolioNo = GF.FolioNo)
    Left Join Booking B ON GF.BookingDocId=B.DocId)
    LEFT JOIN PayCharge AS PC ON RC.DocId = PC.DocId) <Param><Param>'<Param>;

-- --------------------------------------------
-- Query 42
-- Uses table: PayCharge
-- --------------------------------------------
Select PC.DocId,PC.Vdate AS DateRec,PC.PayType,PC.AmtCr AS DepRec,PC.Comments From PayCharge PC
    wHERE PC.Vdate IS NOT NULL
    Order By PC.DOCID,PC.SNO;

-- --------------------------------------------
-- Query 43
-- Uses table: PayCharge
-- Uses table: Paycharge
-- --------------------------------------------
Select PC.DocId,PC.Vdate AS DateRec,PC.PAYTYPE As PayType,PC.AmtCr AS DepRec,PC.Comments From PayCharge PC
    where PC.DocId in (Select Docid from Paycharge
    where ContraDocid='<ContraDocid>'<Param>;

-- --------------------------------------------
-- Query 44
-- Uses table: PlanMast
-- --------------------------------------------
SELECT Max(B.NoDays) As NoDays,Max(PlanMast.Name) As PackageName,B.ArrDate,B.PackageCode,Max(B.NoofRooms) As NoofRooms,Max(B.DepDate) AS DepDate FROM (Booking B
    LEFT JOIN PlanMast On B.PackageCode=PlanMast.Code) <Param><Param> And B.ArrDate<=<Param><Param>
    Group By B.PackageCode,B.ArrDate
    HAVING MAX(B.RateCode)='P'
    Order by B.PackageCode,B.ArrDate;

-- --------------------------------------------
-- Query 45
-- Uses table: RoomMast
-- --------------------------------------------
Select Count(*) From RoomMast RM
    WHERE RM.Type='RO' And RM.InclCount='Y';

-- --------------------------------------------
-- Query 46
-- Uses table: RoomCat
-- --------------------------------------------
Select Code AS RoomCat,Name As RoomCatName,ShortName From RoomCat
    Where Type='RO'
    Order By Name;

-- --------------------------------------------
-- Query 47
-- Uses table: menuhelp
-- --------------------------------------------
Select count(*) from menuhelp
    where Flag<>'V' And username='<UserName>' and CompCode='<CompCode>' AND MODULE_NAME='FrontDesk';

-- --------------------------------------------
-- Query 48
-- Uses table: Revmast
-- --------------------------------------------
SELECT Code,Name FROM Revmast
    WHERE FieldType IN ('T') And Sundry<>'<LogSiteCode>SCH';

-- --------------------------------------------
-- Query 49
-- Uses table: Revmast
-- --------------------------------------------
SELECT Code,Name FROM Revmast
    WHERE FieldType IN ('T') And Sundry='<LogSiteCode>SCH';

-- --------------------------------------------
-- Query 50
-- Uses table: Paycharge
-- Uses table: suntran
-- --------------------------------------------
SELECT Sum(AmtDr) FROM Paycharge
    WHERE PayCode='<PayCode>' AND VDate= And VDate Between SELECT SUM(AA.NETAMT) FROM (select SUM(aMOUNT) AS NETAMT from suntran
    where vtype in ('IDC','ODC') AND REVCODE='<REVCODE><Param>;

-- --------------------------------------------
-- Query 51
-- Uses table: Paycharge
-- Uses table: suntran
-- --------------------------------------------
SELECT Sum(AmtDr) FROM Paycharge
    WHERE PayCode='<PayCode>' AND VDate BETWEEN And VDate Between SELECT SUM(AA.NETAMT) FROM (select SUM(aMOUNT) AS NETAMT from suntran
    where vtype in ('IDC','ODC') AND REVCODE='<REVCODE><Param> AND 0.00;

-- --------------------------------------------
-- Query 52
-- Uses table: Paycharge
-- Uses table: suntran
-- --------------------------------------------
SELECT Sum(AmtDr) FROM Paycharge
    WHERE PayCode='<PayCode>' AND VDate BETWEEN And VDate Between SELECT SUM(AA.NETAMT) FROM (select SUM(aMOUNT) AS NETAMT from suntran
    where vtype in ('IDC','ODC') AND REVCODE='<REVCODE><Param> And 0.00;

-- --------------------------------------------
-- Query 53
-- Uses table: Paycharge
-- --------------------------------------------
SELECT Sum(AmtDr) FROM Paycharge
    WHERE PayCode='<PayCode>' AND VDate BETWEEN 0.00 AND 0.00;

-- --------------------------------------------
-- Query 54
-- Uses table: HallSale1
-- --------------------------------------------
Select Sum(Advance) From HallSale1
    Where VDate=0.00;

-- --------------------------------------------
-- Query 55
-- Uses table: suntran
-- --------------------------------------------
SELECT SUM(AA.NETAMT) FROM (select SUM(aMOUNT) AS NETAMT from suntran
    where vtype in ('IDC','ODC') AND REVCODE='<REVCODE>
    Group by Vtype;

-- --------------------------------------------
-- Query 56
-- Uses table: PayCharge
-- --------------------------------------------
Select count(Distinct Convert(Varchar(11),Vdate,102)+RoomNo) From PayCharge
    Where RoomCat='<RoomCat>' <Param> And AmtDr>0;

-- --------------------------------------------
-- Query 57
-- Uses table: RevMast
-- --------------------------------------------
SELECT Code,Name,FlagType,ShortName,DESKCODE FROM RevMast
    Where FlagAMR='Header' And FlagType='FOM' AND CODE NOT IN ('<Param>MK','<Param>HK','<Param>DBAR')
    Order By FlagType;

-- --------------------------------------------
-- Query 58
-- Uses table: RevMast
-- --------------------------------------------
SELECT Code,Name,FlagType,Nature FROM RevMast
    Where FlagAMR='Detail' AND FlagType='FOM' AND FieldType='C' And Nature <> 'Meal Charge'
    Order By Code;

-- --------------------------------------------
-- Query 59
-- Uses table: RevMast
-- --------------------------------------------
SELECT Code,Name,FlagType,Nature FROM RevMast
    Where FlagAMR='Detail' AND FlagType='FOM' AND FieldType='C' And Nature = 'Meal Charge'
    Order By Code;

-- --------------------------------------------
-- Query 60
-- Uses table: RevMast
-- --------------------------------------------
SELECT Code,Name,FlagType,ShortName,DESKCODE FROM RevMast
    Where FlagAMR='Header' And FlagType<>'FOM' AND CODE NOT IN ('<Param>MK','<Param>HK','<Param>DBAR')
    Order By FlagType;

-- --------------------------------------------
-- Query 61
-- Uses table: HallBook
-- Uses table: SubGroup
-- --------------------------------------------
SELECT P.VNO As Bill_No,P.VTYPE , P.PayType, S.Name, P.AmtCr AS Amount FROM ((PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left
    Join SubGroup S On P.CompCode=S.SubCode) <Param><Param> And P.PayType='Company'
    Order By S.Name;

-- --------------------------------------------
-- Query 62
-- Uses table: Depart
-- --------------------------------------------
Select '' As Opt,Name As Outlet,Code From Depart
    Where Site_Code='<Site_Code>' AND RestType in('Outlet', 'Room Service')AND POS IN('Y')Order By Name;

-- --------------------------------------------
-- Query 63
-- Uses table: paycharge
-- --------------------------------------------
Select DIstinct Bill_NO as billNo from paycharge
    where folionoDocid='<folionoDocid>' and Amtdr<>0 AND (MODESET IS NULL OR MODESET ='')<Param> and P.PAYTYPE ='Company'
    order by S.Name;

-- --------------------------------------------
-- Query 64
-- Uses table: RevMast
-- --------------------------------------------
SELECT Code,Name,FlagType,ShortName,DESKCODE FROM RevMast
    Where FlagAMR='Header' AND CODE NOT IN ('<Param>MK','<Param>HK','<Param>DBAR')
    Order By FlagType;

-- --------------------------------------------
-- Query 65
-- Uses table: RoomMast
-- --------------------------------------------
Select Count(*) From RoomMast RM
    WHERE RM.Type='RO';

-- --------------------------------------------
-- Query 66
-- Uses table: Revmast
-- --------------------------------------------
SELECT Code,Name FROM Revmast
    WHERE FieldType='T';

-- --------------------------------------------
-- Query 67
-- Uses table: RevMast
-- --------------------------------------------
SELECT Code,Name,FlagType FROM RevMast
    Where FlagAMR='Detail' AND FlagType='FOM' AND FieldType='C'
    Order By Code;

-- --------------------------------------------
-- Query 68
-- Uses table: Paycharge
-- --------------------------------------------
SELECT Sum(AmtDr) FROM Paycharge
    WHERE PayCode='<PayCode>' AND VDate=<VDate>;

-- --------------------------------------------
-- Query 69
-- Uses table: Paycharge
-- --------------------------------------------
SELECT Sum(AmtDr) FROM Paycharge
    WHERE PayCode='<PayCode>' AND VDate BETWEEN <Param> AND 0.00;

-- --------------------------------------------
-- Query 70
-- Uses table: Paycharge
-- --------------------------------------------
SELECT Sum(AmtDr) FROM Paycharge
    WHERE PayCode='<PayCode>' AND VDate BETWEEN <Param> And 0.00;

-- --------------------------------------------
-- Query 71
-- Uses table: Paycharge
-- --------------------------------------------
SELECT Sum(AmtDr) FROM Paycharge
    WHERE PayCode='<PayCode>' AND VDate=0.00;

-- --------------------------------------------
-- Query 72
-- Uses table: Paycharge
-- --------------------------------------------
SELECT Sum(AmtDr) FROM Paycharge
    WHERE PayCode='<PayCode>' AND VDate BETWEEN 0.00 And 0.00;

-- --------------------------------------------
-- Query 73
-- Uses table: paycharge
-- --------------------------------------------
Select Sum(AmtDr) as Amount from paycharge
    where Bill_No='<Bill_No>' and Paycode='<Paycode>';

-- --------------------------------------------
-- Query 74
-- Uses table: paycharge
-- --------------------------------------------
Select Sum(AmtDr) as Amount from paycharge
    where Bill_No='<Bill_No>';

-- --------------------------------------------
-- Query 75
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- Uses table: PlanMast
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- Uses table: SubGroup
-- --------------------------------------------
SELECT GuestFolio.Company, SubGroup.Name AS CompanyName, GuestProf.Name As GuestName,BillDet.Folio_No as FolioNO,Billdet.FolionoDocId, BillDet.Bill_No, BillDet.Bill_Amt, BillDet.BillSettleDate, BillDet.Folio_No, BillDet.ChkInDate as ChkInDt, BillDet.ChkOutDate As ChkOutDt,cast(BillDet.Nights as Integer) as TotNights, BillDet.ChkOutTime, BillDet.GuestProf,BillDet.ChkoutRoom as RoomNO,RO.RoomCatName,RO.PlanType FROM ((BillDet
    LEFT JOIN GuestFolio ON BillDet.FolioNoDocId = GuestFolio.DocId)
    Left Join (Select RoomOcc.DocId,Max(RoomCat.Name) RoomCatName,Case When IsNull(Max(PlanMast.Tariff),'')='' Then 'E.P.' Else Max(PlanMast.Tariff) End PlanType From RoomOcc
    Left Join RoomCat On RoomCat.Code=RoomOcc.RoomCat
    Left Join PlanMast On RoomOcc.PlanCode=PlanMast.Code And RoomOcc.Type='O'
    Group By RoomOcc.DocId) RO On RO.DocId=BillDet.FolioNoDocId
    LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode)
    LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code
    Where GuestFolio.GuestProf='<GuestProf>';

-- --------------------------------------------
-- Query 76
-- Uses table: RoomCat
-- --------------------------------------------
Select Code AS RoomCat,Name As RoomCatName,ShortName From RoomCat
    Where LOGSITE_CODE='<LOGSITE_CODE>' AND Type='RO'
    Order By Name;

-- --------------------------------------------
-- Query 77
-- Uses table: RoomMast
-- --------------------------------------------
Select Count(*) From RoomMast
    Where LogSITE_CODE='<LogSiteCode>' AND Type='RO' And InclCount='Y';

-- --------------------------------------------
-- Query 78
-- Uses table: RoomMast
-- --------------------------------------------
Select Count(*) From RoomMast RM
    where RM.Type='RO' AND RM.LogSite_Code='<LogSiteCode>'<Param><Param>;

-- --------------------------------------------
-- Query 79
-- Uses table: RoomMast
-- --------------------------------------------
Select COUNT(*) From RoomMast RM
    where RM.Type='RO' AND RM.LogSite_Code='<LogSiteCode>'<Param><Param>' AND (FROMDate<=<Param> And TODATE>=<Param>))<Param>;

-- --------------------------------------------
-- Query 80
-- Uses table: RoomMast
-- --------------------------------------------
Select COUNT(*) From RoomMast RM
    where RM.Type='RO' AND RM.LogSite_Code='<LogSiteCode>'<Param><Param>' And (FROMDate<=<Param> And TODATE>=<Param>))<Param>;

-- --------------------------------------------
-- Query 81
-- Uses table: GuestFolio
-- Uses table: MarketSeg
-- --------------------------------------------
Select Distinct(GF.MarketSeg) AS Code,MS.Name As MarketSegName From GuestFolio GF
    LEFT JOIN MarketSeg MS ON GF.MarketSeg=MS.CODE
    Where GF.LogSite_Code='<LogSiteCode>' AND GF.MarketSeg IS NOT NULL AND GF.MarketSeg <>'' And IsNull(MS.Name,'')<>''
    Order By MS.Name;

-- --------------------------------------------
-- Query 82
-- Uses table: RoomMast
-- --------------------------------------------
Select Count(*) From RoomMast
    Where LOGSITE_CODE='<LogSiteCode>' AND Type='RO';

-- --------------------------------------------
-- Query 83
-- Uses table: Enviro
-- --------------------------------------------
Select PlanCalc from Enviro
    where Logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 84
-- Uses table: Plan1
-- --------------------------------------------
Select sum(NetAmount) as MealAmt from Plan1
    where Code='<Code>';

-- --------------------------------------------
-- Query 85
-- Uses table: RoomMast
-- --------------------------------------------
select count(*) from RoomMast
    where Type='RO' And InclCount='Y';

-- --------------------------------------------
-- Query 86
-- Uses table: GuestProf
-- --------------------------------------------
Select DiplomatYN from GuestProf
    Where Code='<Code>';

-- --------------------------------------------
-- Query 87
-- Uses table: REVMAST
-- Uses table: TaxStru
-- --------------------------------------------
SELECT RevMast.TaxStru,RevMast.Name AS RevName,TaxMast.Name AS TaxName, TaxMast.ACCode AS RoomTaxAc,TaxMast.Code as TaxCode,TaxStru.Rate,TaxStru.Limit,TaxStru.Limit1, TaxStru.Nature, TaxStru.CondApp,TaxStru.CompOperator FROM (RevMast
    LEFT JOIN TaxStru ON RevMast.TaxStru=TaxStru.Code)
    LEFT JOIN REVMAST TaxMast ON TaxStru.TaxCode = TaxMast.Code
    Where TaxMast.FIELDTYPE='T' AND REVMAST.FIELDTYPE='C' AND RevMast.Code='<Code>';

-- --------------------------------------------
-- Query 88
-- Uses table: revmast
-- --------------------------------------------
Select Roundoff from revmast
    where code='<code>';

-- --------------------------------------------
-- Query 89
-- Uses table: BussSource
-- Uses table: GuestFolio
-- --------------------------------------------
Select Distinct(GF.BussSource) AS Code,BS.Name As BussSourceName From GuestFolio GF
    LEFT JOIN BussSource BS ON GF.BussSource=BS.CODE
    Where GF.LogSite_Code='<LogSiteCode>' AND GF.BussSource IS NOT NULL AND GF.BussSource <>'' And IsNull(BS.Name,'')<>''
    Order By BS.Name;

-- --------------------------------------------
-- Query 90
-- Uses table: RoomMast
-- --------------------------------------------
Select Count(*) From RoomMast
    Where LogSITE_CODE='<LogSiteCode>' AND Type='RO';

-- --------------------------------------------
-- Query 91
-- Uses table: GuestFolio
-- Uses table: Subgroup
-- --------------------------------------------
Select Distinct(GF.Company) AS Code,SG.Name As CompanyName From GuestFolio GF
    LEFT JOIN Subgroup SG ON GF.Company=SG.SUBCODE
    Where GF.LogSite_Code='<LogSiteCode>' AND GF.Company IS NOT NULL AND GF.Company <>''
    Order By SG.Name;

-- --------------------------------------------
-- Query 92
-- Uses table: RoomMast
-- --------------------------------------------
Select Count(*) From RoomMast
    Where LOGSITE_CODE='<LogSiteCode>' AND Type='RO' AND InclCount='Y';

-- --------------------------------------------
-- Query 93
-- Uses table: GuestFolio
-- Uses table: Subgroup
-- --------------------------------------------
Select Distinct(GF.TravelAgent) AS Code,SG.Name As TravelAgentName From GuestFolio GF
    LEFT JOIN Subgroup SG ON GF.TravelAgent=SG.SUBCODE
    Where GF.LogSite_Code='<LogSiteCode>' AND GF.TravelAgent IS NOT NULL AND GF.TravelAgent <>''
    Order By SG.Name;

-- --------------------------------------------
-- Query 94
-- Uses table: RoomCat
-- Uses table: RoomMast
-- --------------------------------------------
Select RM.code AS ROOMNO,RM.Name AS ROOMNAME,RC.Name As RoomCatName From RoomMast RM
    LEFT JOIN RoomCat RC ON RM.RoomCat = RC.Code
    Where RM.Type='RO'
    ORDER BY RM.CODE;

-- --------------------------------------------
-- Query 95
-- Uses table: RoomBlockOut
-- --------------------------------------------
Select RoomCode,FromDate,ToDate,DateDiff(d,FromDate,Todate) as Days From RoomBlockOut
    Where Type='O';

-- --------------------------------------------
-- Query 96
-- Uses table: RoomMast
-- --------------------------------------------
Select Count(*) From RoomMast
    Where Type='RO' and inclcount='Y';

-- --------------------------------------------
-- Query 97
-- Uses table: PayCharge
-- --------------------------------------------
Select PC.DocId,PC.Vdate AS DateRec,PC.PAYTYPE,PC.AmtCr AS DepRec,PC.Comments,PC.RefDocId From PayCharge PC <Param>
    Order By PC.RefDOCID,PC.Vdate,PC.SNO;

-- --------------------------------------------
-- Query 98
-- Uses table: GuestProf
-- --------------------------------------------
SELECT B.DocId,B.BookNo,B.VDate, GF.Name AS GuestName,B.ArrDate,B.DepositeReq AS MinAdv FROM (Booking B
    LEFT JOIN GuestProf GF ON B.GuestProf = GF.Code) <Param>
    Order By GF.Name,B.DocId;

-- --------------------------------------------
-- Query 99
-- Uses table: PayCharge
-- --------------------------------------------
Select PC.DocId,PC.Vdate AS DateRec,PC.PAYTYPE,PC.AmtCr AS DepRec,PC.Comments,PC.RefDocId From PayCharge PC
    Order By PC.RefDOCID,PC.Vdate,PC.SNO;

-- --------------------------------------------
-- Query 100
-- Uses table: RoomBlockOut
-- Uses table: RoomMast
-- --------------------------------------------
Select RB.RoomCode as RoomNo,RB.Reasons From RoomBlockOut RB
    Left Join RoomMast RM On RM.CODE=RB.RoomCode
    where (RB.Type='O' And RB.FromDate>=<Param>And <Param><= RB.ToDate )<Param><Param>;

-- --------------------------------------------
-- Query 101
-- Uses table: Booking
-- Uses table: GuestFolio
-- Uses table: RoomMast
-- --------------------------------------------
Select B.RoomNo From Booking B
    Left Join RoomMast RM On RM.CODE=B.RoomNo
    Where (B.ARRDATE=<ARRDATE> AND B.DOCID NOT IN (Select BookingDocId From GuestFolio))<Param><Param>;

-- --------------------------------------------
-- Query 102
-- Uses table: Booking
-- Uses table: GuestFolio
-- --------------------------------------------
SELECT RO.DocId,RO.FolioNo,B.BookNo,B.VDate, GF.Name AS GuestName,RO.ChkInDate AS ArrDate,B.DepositeReq AS MinAdv FROM ((RoomOcc RO
    LEFT JOIN GuestFolio GF ON RO.FolioNo = GF.FolioNo)
    Left Join Booking B ON GF.BookingDocId=B.DocId) <Param>And RO.ChkOutDate Is NULL
    Order By GF.Name,RO.DocId;

-- --------------------------------------------
-- Query 103
-- Uses table: BOOKING
-- Uses table: BookingMore
-- Uses table: BussSource
-- Uses table: City
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- Uses table: RoomCat
-- Uses table: State
-- --------------------------------------------
SELECT RO.RoomNo,RO.FolioNo,RO.ChkInDate,RO.DepDate,RO.Adult,RO.Children As Child,GF.Name AS GuestName,City.CityName As City,State.ShortName As State,BussSource.Name AS Bussiness,GP.Comments1,GP.Comments2,GP.Comments3,BM.Name As BookMoreName,B.BookNo,B.DocId As BDocId,RC.ShortName As RoomCat FROM ((((((((RoomOCC RO
    LEFT JOIN GuestFolio GF ON RO.FolioNo = GF.FolioNo)
    LEFT JOIN BOOKING B ON B.DOCID=GF.BookingDocId)
    LEFT JOIN GuestProf GP ON RO.GuestProf = GP.Code)
    Left Join BussSource On B.BussSource=BussSource.Code)
    Left Join BookingMore BM On B.DocId=BM.DocId)
    LEFT JOIN RoomCat RC ON (RO.RoomCat = RC.Code And RO.RoomType=RC.Type))
    LEFT JOIN City ON GP.City = City.CityCode)
    LEFT JOIN State ON City.State = State.Code)
    Where <Param> And ChkOutDate is Null
    Order By RO.RoomNo;

-- --------------------------------------------
-- Query 104
-- Uses table: BOOKING
-- Uses table: BookingMore
-- Uses table: BussSource
-- Uses table: City
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- Uses table: RoomCat
-- Uses table: State
-- --------------------------------------------
SELECT RO.RoomNo,RO.FolioNo,RO.ChkInDate,RO.DepDate,RO.Adult,RO.Children As Child,GF.Name AS GuestName,City.CityName As City,State.ShortName As State,BussSource.Name AS Bussiness,GP.Comments1,GP.Comments2,GP.Comments3,BM.Name As BookMoreName,B.BookNo,B.DocId As BDocId,RC.ShortName As RoomCat FROM ((((((((RoomOCC RO
    LEFT JOIN GuestFolio GF ON RO.FolioNo = GF.FolioNo)
    LEFT JOIN BOOKING B ON B.DOCID=GF.BookingDocId)
    LEFT JOIN GuestProf GP ON RO.GuestProf = GP.Code)
    Left Join BussSource On B.BussSource=BussSource.Code)
    Left Join BookingMore BM On B.DocId=BM.DocId)
    LEFT JOIN RoomCat RC ON (RO.RoomCat = RC.Code And RO.RoomType=RC.Type))
    LEFT JOIN City ON GP.City = City.CityCode)
    LEFT JOIN State ON City.State = State.Code)
    Where <Param>;

-- --------------------------------------------
-- Query 105
-- Uses table: BookingMore
-- --------------------------------------------
Select Name From BookingMore
    Where DocId='<DocId>'
    Order By DocId;

-- --------------------------------------------
-- Query 106
-- Uses table: RoomCat
-- --------------------------------------------
Select RM.code AS ROOMNO,RM.Name AS ROOMNAME,RM.RoomStat,RM.RoomCat,RC.Name As RoomCatName From (RoomMast RM
    LEFT JOIN RoomCat RC ON (RM.RoomCat = RC.Code And RM.Type=RC.Type))
    Where RM.Type='RO' And RM.InclCount='Y' <Param>
    ORDER BY RM.CODE;

-- --------------------------------------------
-- Query 107
-- Uses table: PayCharge
-- --------------------------------------------
Select PC.DocId,PC.PAYTYPE As PayType,PC.AmtCr AS DepRec From PayCharge PC
    Where PC.RefDocId='<RefDocId>' And PC.VType In ('ARRES','ADRES')
    Order By PC.DOCID,PC.SNO;

-- --------------------------------------------
-- Query 108
-- Uses table: RoomOCC
-- --------------------------------------------
Select ISNULL(sum(RoomRate),0) As Rate From RoomOCC
    Where ChkIndate=<ChkIndate> And ChkInTime<='<Param>';

-- --------------------------------------------
-- Query 109
-- Uses table: Depart
-- --------------------------------------------
Select D.Name As Name,D.Code As Code from Depart D
    Where D.RestType='Kitchen'
    Order by Name;

-- --------------------------------------------
-- Query 110
-- Uses table: itemcatmast
-- --------------------------------------------
select Distinct cattype from itemcatmast
    where CatType<>'' and CatType is Not NULL and Cattype<>'Hall Rent';

-- --------------------------------------------
-- Query 111
-- Uses table: ItemcatMast
-- Uses table: Itemmast
-- Uses table: Stock
-- --------------------------------------------
Select ItemCatMast.CatType,Sum(Amount) as NetSale,MAx(Depart.Name) as KitcName,S.DepartCode from ((Depart
    Left Join Stock S on Depart.Code=S.DepartCode)
    Left join Itemmast on Itemmast.COde=S.item And itemmast.Restcode=S.ItemRestCode)
    Left join ItemcatMast on Itemmast.itemcatCode=Itemcatmast.code
    Where Itemmast.type='Finish' and Itemcatmast.CatType<>'Hall Rent' and s.RestCode <>'' and s.RestCode is NOT NULL And S.DelFlag<>'D' And RestType='Kitchen' <Param>
    Group By ItemCatMast.CatType,S.DepartCode
    Order by ItemCatMast.CatType;

-- --------------------------------------------
-- Query 112
-- Uses table: ItemGrp
-- --------------------------------------------
Select IG.Name,IG.Code As Code,Type,CatType from ItemGrp IG
    Where IG.Type='Raw Material' Or IG.Type='Semi Finish'
    Order by IG.Name;

-- --------------------------------------------
-- Query 113
-- Uses table: PAYCHARGE
-- Uses table: REVMAST
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT PAYCHARGE.*,SUBGROUP.NAME,R.SHORTNAME FROM PAYCHARGE
    LEFT JOIN SUBGROUP ON PAYCHARGE.COMPCODE=SUBGROUP.SUBCODE
    LEFT JOIN REVMAST R ON R.CODE=PAYCHARGE.PAYCODE
    WHERE ROOMNO='<ROOMNO>' AND FOLIONODOCID='<FOLIONODOCID>' AND MODESET='S' AND AmtCr<>0;

-- --------------------------------------------
-- Query 114
-- Uses table: paycharge
-- --------------------------------------------
Select max(Bill_NO) as billNo from paycharge
    where folionoDOCID='<folionoDOCID>' and Amtdr<>0;

-- --------------------------------------------
-- Query 115
-- Uses table: RoomMast
-- --------------------------------------------
Select Count(*) From RoomMast
    Where Type='RO' And LogSite_Code='<LogSiteCode>' And InclCount='Y';

-- --------------------------------------------
-- Query 116
-- Uses table: PayCharge
-- --------------------------------------------
Select COUNT(*) From PayCharge
    Where LogSite_Code='<LogSiteCode>' <Param><Param> And PayCode='<PayCode>RMCH' And AmtDr>=1<Param>;

-- --------------------------------------------
-- Query 117
-- Uses table: PayCharge
-- --------------------------------------------
Select COUNT(*) From PayCharge
    Where LogSite_Code='<LogSiteCode>' <Param><Param>;

-- --------------------------------------------
-- Query 118
-- Uses table: PayCharge
-- --------------------------------------------
Select Sum(AmtDr) As Revenue From PayCharge
    Where LogSite_Code='<LogSiteCode>' <Param><Param> And PayCode='<PayCode>RMCH' And AmtDr>=1<Param>;

-- --------------------------------------------
-- Query 119
-- Uses table: PayCharge
-- --------------------------------------------
Select Sum(AmtDr) As Revenue From PayCharge
    Where logSite_Code='<LogSiteCode>' <Param><Param>;

-- --------------------------------------------
-- Query 120
-- Uses table: ITEMCATMAST
-- Uses table: ItemCatMast
-- Uses table: PayCharge
-- Uses table: RevMast
-- --------------------------------------------
SELECT SUM(AMTDR-AmtCr) AS PAY2 From PayCharge
    LEFT JOIN ITEMCATMAST ON ITEMCATMAST.REVCODE=PAYCHARGE.PAYCODE
    Where VDate=<VDate> And PayCode IN (Select Distinct REVCODE From ItemCatMast
    Where IsNull(RevCode,'')<>'' And CatType In ('Food','Confectionary','Liquor','Beverage','Tobacco') And RestCode In (SELECT Distinct DESKCODE FROM RevMast
    Where FlagAMR='Header' AND IsNull(DeskCode,'')<>'' And FlagType In ('POS','RS')));

-- --------------------------------------------
-- Query 121
-- Uses table: RevMast
-- Uses table: Stock
-- --------------------------------------------
SELECT SUM(DiscAmt) AS PAY2 From Stock
    Where DelFlag<>'D' and DiscPer >0 and VDate=<VDate> And RestCode In (SELECT Distinct DESKCODE FROM RevMast
    Where FlagAMR='Header' AND IsNull(DeskCode,'')<>'' And FlagType In ('POS','RS'));

-- --------------------------------------------
-- Query 122
-- Uses table: ItemCatMast
-- Uses table: RevMast
-- Uses table: Stock
-- --------------------------------------------
SELECT SUM(DiscAmt) AS PAY2 From Stock
    Where DelFlag<>'D' and DiscPer >0 and VDate=<VDate> And <Param> And PayCode IN (Select Distinct REVCODE From ItemCatMast
    Where IsNull(RevCode,'')<>'' And CatType In ('Food','Confectionary','Liquor','Beverage','Tobacco') And RestCode In (SELECT Distinct DESKCODE FROM RevMast
    Where FlagAMR='Header' AND IsNull(DeskCode,'')<>'' And FlagType In ('POS','RS')));

-- --------------------------------------------
-- Query 123
-- Uses table: RevMast
-- Uses table: Stock
-- --------------------------------------------
SELECT SUM(DiscAmt) AS PAY2 From Stock
    Where DelFlag<>'D' and DiscPer >0 and VDate Between <Param> And <Param> And RestCode In (SELECT Distinct DESKCODE FROM RevMast
    Where FlagAMR='Header' AND IsNull(DeskCode,'')<>'' And FlagType In ('POS','RS'));

-- --------------------------------------------
-- Query 124
-- Uses table: ItemCatMast
-- Uses table: RevMast
-- Uses table: Stock
-- --------------------------------------------
SELECT SUM(DiscAmt) AS PAY2 From Stock
    Where DelFlag<>'D' and DiscPer >0 and VDate Between <Param> And <Param> And PayCode IN (Select Distinct REVCODE From ItemCatMast
    Where IsNull(RevCode,'')<>'' And CatType In ('Food','Confectionary','Liquor','Beverage','Tobacco') And RestCode In (SELECT Distinct DESKCODE FROM RevMast
    Where FlagAMR='Header' AND IsNull(DeskCode,'')<>'' And FlagType In ('POS','RS')));

-- --------------------------------------------
-- Query 125
-- Uses table: ItemCatMast
-- Uses table: ItemMast
-- --------------------------------------------
SELECT sum(Stock.Amount) as Amount FROM (Stock
    INNER JOIN ItemMast ON Stock.Item = ItemMast.Code And itemmast.Restcode=Stock.RestCode)
    INNER JOIN ItemCatMast ON ItemMast.ItemCatCode = ItemCatMast.Code
    WHERE (((Stock.Vdate) = 0.00<Param>;

-- --------------------------------------------
-- Query 126
-- Uses table: RevMast
-- Uses table: Stock
-- --------------------------------------------
SELECT SUM(DiscAmt) AS PAY2 From Stock
    Where DelFlag<>'D' and DiscPer >0 and VDate Between 0.00 And <Param> And RestCode In (SELECT Distinct DESKCODE FROM RevMast
    Where FlagAMR='Header' AND IsNull(DeskCode,'')<>'' And FlagType In ('POS','RS'))<Param>;

-- --------------------------------------------
-- Query 127
-- Uses table: Ledger
-- Uses table: RevMast
-- Uses table: Stock
-- --------------------------------------------
Select sum(AmtDr) as Amount From Ledger
    Where SubCode='<SubCode>' And LogSite_Code='<LogSite_Code>' And V_Date Between SELECT SUM(DiscAmt) AS PAY2 From Stock
    Where DelFlag<>'D' and DiscPer >0 and VDate Between 0.00 And <Param> And RestCode In (SELECT Distinct DESKCODE FROM RevMast
    Where FlagAMR='Header' AND IsNull(DeskCode,'')<>'' And FlagType In ('POS','RS')) And ACCOUNT RECEIVABLE <Param>;

-- --------------------------------------------
-- Query 128
-- Uses table: Ledger
-- Uses table: RevMast
-- Uses table: Stock
-- --------------------------------------------
Select sum(AmtDr) as Amount From Ledger
    Where SubCode='<SubCode>' And LogSite_Code='<LogSite_Code>' And V_Date Between SELECT SUM(DiscAmt) AS PAY2 From Stock
    Where DelFlag<>'D' and DiscPer >0 and VDate Between 0.00 And Select sum(AmtDr) as Amount From Ledger
    Where SubCode='<SubCode>' And LogSite_Code='<LogSite_Code> And RestCode In (SELECT Distinct DESKCODE FROM RevMast
    Where FlagAMR='Header' AND IsNull(DeskCode,'')<>'' And FlagType In ('POS','RS')) And ACCOUNT RECEIVABLE <Param>;

-- --------------------------------------------
-- Query 129
-- Uses table: enviro
-- --------------------------------------------
Select * from enviro
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 130
-- Uses table: HallSale1
-- --------------------------------------------
Select Sum(Total) from HallSale1
    where Vdate Between <Param> and <Param>;

-- --------------------------------------------
-- Query 131
-- Uses table: HallSale1
-- --------------------------------------------
Select Sum(Total) from HallSale1
    where Vdate Between <Param> and <Param> and ChgCategory='Meal Charges' and FIXEDCHARGECODE<>'' AND FIXEDCHARGECODE IS NOT NULL;

-- --------------------------------------------
-- Query 132
-- Uses table: HallSale1
-- --------------------------------------------
Select Sum(Total) from HallSale1
    where Vdate Between <Param> and <Param> and revmast.code in (<Param>);

-- --------------------------------------------
-- Query 133
-- Uses table: RoomMast
-- --------------------------------------------
Select Count(*) From RoomMast
    Where Type='RO';

-- --------------------------------------------
-- Query 134
-- Uses table: PAYCHARGE
-- --------------------------------------------
SELECT * FROM PAYCHARGE
    WHERE FOLIONO=<FOLIONO> AND MODESET='S' AND AmtCr<>0;

-- --------------------------------------------
-- Query 135
-- Uses table: paycharge
-- --------------------------------------------
Select max(Bill_NO) as billNo from paycharge
    where foliono=<foliono> and Amtdr<>0;

-- --------------------------------------------
-- Query 136
-- Uses table: Country
-- Uses table: GuestFolio
-- Uses table: PlanMast
-- --------------------------------------------
Select RC.FolioNo,Max(RC.GuestProf) As GuestProf,Max(Country.Name) As CountryName,Max(GF.Name) as GuestName,Min(ChkInDt) As ChkInDt,Cast(Min(ChkInTm) As DateTime) As ChkInTm,max(ChkOutDt) as ChkOutDt,Cast(Min(ChkOutTm) As DateTime) As ChkOutTm, ISNULL(max(PlanMast.Name), 'EP') AS PlanName,RoomNo =Max(CASE WHEN RC.TYPE='C' THEN '' ELSE RC.ROOMNO END)From ((RoomOccdet RC
    LEFT JOIN GuestFolio GF ON RC.DocId = GF.DocId)Left
    Join PlanMast On PlanMast.Code=rc.PlanCode)Left
    Join Country On Country.Code=GF.Nationality
    WHERE (RC.ChkInDate Between <Param> And <Param> or RC.ChkOutDate Between <Param> And <Param>) And RC.Vtype='CHK'
    Group By RC.FolioNo
    Order by Max(isnull(ChkOutDate,''));

-- --------------------------------------------
-- Query 137
-- Uses table: PayCharge
-- Uses table: RevMast
-- --------------------------------------------
SELECT distinct Py.ShortName AS TYPE FROM PayCharge P
    left join RevMast py on p.paycode=py.code <Param><Param>);

-- --------------------------------------------
-- Query 138
-- Uses table: GUESTPROF
-- Uses table: RoomOcc
-- --------------------------------------------
SELECT R.DocId FROM RoomOcc R
    Left Join GUESTPROF G On R.GUESTPROF=G.CODE
    WHERE R.DocId In (SELECT Distinct R.DocId FROM RoomOcc R
    WHERE R.ROOMTYPE IN ('RO') AND R.TYPE IN ('C') <Param><Param>) And R.Sno=1
    ORDER BY G.NAME,R.CHKOUTDATE,R.CHKOUTTIME;

-- --------------------------------------------
-- Query 139
-- Uses table: Paycharge
-- Uses table: Subgroup
-- --------------------------------------------
Select PayCharge.Docid,SubGroup.Name from Paycharge
    Left join Subgroup on PayCharge.CompCode=Subgroup.Subcode
    where docid='<docid>' and PayCode<>'<Param>TOUT';

-- --------------------------------------------
-- Query 140
-- Uses table: Country
-- Uses table: GuestFolio
-- Uses table: PlanMast
-- --------------------------------------------
Select RC.FolioNo,Max(RC.GuestProf) As GuestProf,Max(Country.Name) As CountryName,Max(GF.Name) as GuestName,Min(ChkInDate) As ChkInDt,max(ChkOutDate) as ChkOutDt, ISNULL(max(PlanMast.Name), 'EP') AS PlanName,Max(PlanMast.Tariff) As PlanTariff,Max(RC.RoomRate) As RoomTariff,RoomNo =Max(CASE WHEN RC.TYPE='C' THEN '' ELSE RC.ROOMNO END) From ((RoomOcc RC
    LEFT JOIN GuestFolio GF ON RC.FolioNo = GF.FolioNo)
    Left Join PlanMast On PlanMast.Code=rc.PlanCode)Left
    Join Country On Country.Code=GF.Nationality <Param> and PlanMast.Code In (<Param>)
    Group By RC.FolioNo
    Order by max(roomNo), Max(isnull(ChkOutDate,''));

-- --------------------------------------------
-- Query 141
-- Uses table: Subgroup
-- --------------------------------------------
Select * from Subgroup
    where CompanyType='Corporate'
    order by name;

-- --------------------------------------------
-- Query 142
-- Uses table: Subgroup
-- --------------------------------------------
Select * from Subgroup
    where CompanyType='Travel Agent'
    order by name;

-- --------------------------------------------
-- Query 143
-- Uses table: FixedCharge
-- --------------------------------------------
Select code,name From FixedCharge where<Param><Param>);

-- --------------------------------------------
-- Query 144
-- Uses table: PlanDetails
-- --------------------------------------------
Select sum(NoOfDays) from PlanDetails
    where DocId='<DocId>' and ChrgCode ='<ChrgCode>';

-- --------------------------------------------
-- Query 145
-- Uses table: PayCharge
-- --------------------------------------------
select count(*) from PayCharge
    Where folioNoDocId='<folioNoDocId>' and FixedChargeCode='<FixedChargeCode>';

-- --------------------------------------------
-- Query 146
-- Uses table: BillDet
-- Uses table: GuestProf
-- --------------------------------------------
SELECT distinct max(BillDet.BillSettleDate) as BillSettleDate,max(BillDet.Bill_no) as Bill_No ,max(BillDet.ChkOutRoom) as ChkOutRoom, max(GuestProf.Name) as Name, max(BillDet.Nights) as Nights,sum(BillDet.Bill_Amt) as Bill_Amt,max(BillDet.ChkOutDate) as ChkOutDate, max(BillDet.ChkOutTime) as ChkOutTime, max(BillDet.Folio_No) as Folio_No,FolioNoDocid FROM BillDet
    INNER JOIN GuestProf ON BillDet.GuestProf = GuestProf.Code
    Where BillSettleDate <Param>
    Group By BillDet.FolioNoDocid
    ORDER BY max(BillDet.Bill_no),max(BillDet.ChkOutDate), max(BillDet.ChkOutTime);

-- --------------------------------------------
-- Query 147
-- Uses table: Paycharge
-- --------------------------------------------
Select distinct Bill_No from Paycharge
    where Bill_No is not NUll and Bill_No <>'' and FolioNoDOCID='<FolioNoDOCID>';

-- --------------------------------------------
-- Query 148
-- Uses table: Paycharge
-- --------------------------------------------
Select distinct PayType from Paycharge
    where FolioNoDOCID='<FolioNoDOCID>' AND SettleDate <Param> and ModeSet='S' AND (PAYTYPE IS NOT NULL AND PAYTYPE<>'');

-- --------------------------------------------
-- Query 149
-- Uses table: Paycharge
-- --------------------------------------------
Select Sum(AmtDr) from Paycharge
    where FolioNoDocid='<FolioNoDocid>' and PayCode='<PayCode>RMCH';

-- --------------------------------------------
-- Query 150
-- Uses table: Paycharge
-- --------------------------------------------
Select Sum(AmtDr) from Paycharge
    where FolioNoDocid='<FolioNoDocid>' and PayCode='<PayCode>LT';

-- --------------------------------------------
-- Query 151
-- Uses table: Paycharge
-- --------------------------------------------
Select distinct Bill_No from Paycharge
    where Bill_No is not NUll and Bill_No <>'' and FolioNoDOCID='<FolioNoDOCID>' and RestCode='<RestCode>RS');

-- --------------------------------------------
-- Query 152
-- Uses table: Paycharge
-- --------------------------------------------
Select Sum(AmtDr) from Paycharge
    where FolioNoDocid='<FolioNoDocid>' and RestCode='<RestCode>RS';

-- --------------------------------------------
-- Query 153
-- Uses table: RevMast
-- Uses table: SundryMast
-- --------------------------------------------
SELECT DISTINCT sale2.TaxCode, RevMast.ShortName AS TaxName FROM (sale2
    INNER JOIN RevMast ON sale2.TaxCode = RevMast.Code)
    inner JOIN SundryMast ON RevMast.Sundry = SundryMast.Code
    WHERE sale2.RestCode='<LogSiteCode>RS';

-- --------------------------------------------
-- Query 154
-- Uses table: paycharge
-- --------------------------------------------
Select DIstinct Bill_NO as billNo from paycharge
    where folionoDOCID='<folionoDOCID>' and Amtdr<>0 AND (MODESET IS NULL OR MODESET ='');

-- --------------------------------------------
-- Query 155
-- Uses table: HallBook
-- Uses table: PayChargeH
-- Uses table: paycharge
-- --------------------------------------------
SELECT P.PayType, P.AmtCr AS Amount FROM PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId <Param>Select DIstinct Bill_NO as billNo from paycharge
    where folionoDOCID='<folionoDOCID>' and Amtdr<>0 AND (MODESET IS NULL OR MODESET ='') And P.PayType='Cash';

-- --------------------------------------------
-- Query 156
-- Uses table: HallBook
-- Uses table: SubGroup
-- Uses table: paycharge
-- --------------------------------------------
SELECT P.VType,P.VNO, P.PayType, S.Name, P.AmtCr AS Amount,P.ContraDocId,P.U_Name FROM ((PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left
    Join SubGroup S On P.CompCode=S.SubCode) <Param>Select DIstinct Bill_NO as billNo from paycharge
    where folionoDocid='<folionoDocid>' and Amtdr<>0 AND (MODESET IS NULL OR MODESET ='') And P.PayType='Company'
    Order By S.Name;

-- --------------------------------------------
-- Query 157
-- Uses table: paycharge
-- --------------------------------------------
Select DIstinct Bill_NO as billNo from paycharge
    where folionodocid='<folionodocid>' and Amtdr<>0 AND (MODESET IS NULL OR MODESET ='');

-- --------------------------------------------
-- Query 158
-- Uses table: HallBook
-- Uses table: SubGroup
-- Uses table: paycharge
-- --------------------------------------------
SELECT P.VType,P.VNO, P.PayType, S.Name, P.AmtCr AS Amount,P.ContraDocId,P.U_Name FROM ((PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left
    Join SubGroup S On P.CompCode=S.SubCode) <Param>Select DIstinct Bill_NO as billNo from paycharge
    where folionodocid='<folionodocid>' and Amtdr<>0 AND (MODESET IS NULL OR MODESET ='') And P.PayType='Hold'
    Order By S.Name;

-- --------------------------------------------
-- Query 159
-- Uses table: HallBook
-- Uses table: SubGroup
-- Uses table: paycharge
-- --------------------------------------------
SELECT P.VType,P.VNO,P.ChqNo As ChqNo, P.PayType, S.Name, P.AmtCr AS Amount,P.U_Name,P.ContraDocId FROM ((PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left
    Join SubGroup S On P.CompCode=S.SubCode) <Param>Select DIstinct Bill_NO as billNo from paycharge
    where folionodocid='<folionodocid>' and Amtdr<>0 AND (MODESET IS NULL OR MODESET ='') And P.PayType='Cheque'
    Order By S.Name;

-- --------------------------------------------
-- Query 160
-- Uses table: HallBook
-- Uses table: SubGroup
-- Uses table: paycharge
-- --------------------------------------------
SELECT P.VType,P.VNO,P.BatchNo As BNo, P.PayType, S.Name, P.AmtCr AS Amount,P.ContraDocId,P.U_Name FROM ((PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left
    Join SubGroup S On P.CompCode=S.SubCode) <Param>Select DIstinct Bill_NO as billNo from paycharge
    where folionodocid='<folionodocid>' and Amtdr<>0 AND (MODESET IS NULL OR MODESET ='') And P.PayType='Credit Card'
    Order By S.Name;

-- --------------------------------------------
-- Query 161
-- Uses table: HallBook
-- Uses table: SubGroup
-- Uses table: paycharge
-- --------------------------------------------
SELECT P.VType,P.VNO As Bill_No, P.PayType, S.Name, P.AmtCr AS Amount FROM ((PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left
    Join SubGroup S On P.CompCode=S.SubCode) <Param>Select DIstinct Bill_NO as billNo from paycharge
    where folionoDocid='<folionoDocid>' and Amtdr<>0 AND (MODESET IS NULL OR MODESET ='') And P.PayType='Company'
    Order By S.Name;

-- --------------------------------------------
-- Query 162
-- Uses table: HallBook
-- Uses table: SubGroup
-- Uses table: paycharge
-- --------------------------------------------
SELECT P.VType,P.VNO As Bill_No, P.PayType, S.Name, P.AmtCr AS Amount FROM ((PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left
    Join SubGroup S On P.CompCode=S.SubCode) <Param>Select DIstinct Bill_NO as billNo from paycharge
    where folionodocid='<folionodocid>' and Amtdr<>0 AND (MODESET IS NULL OR MODESET ='') And P.PayType='Hold'
    Order By S.Name;

-- --------------------------------------------
-- Query 163
-- Uses table: HallBook
-- Uses table: SubGroup
-- Uses table: paycharge
-- --------------------------------------------
SELECT P.VType,P.VNO As Bill_No,P.ChqNo As ChqNo, P.PayType, S.Name, P.AmtCr AS Amount FROM ((PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left
    Join SubGroup S On P.CompCode=S.SubCode) <Param>Select DIstinct Bill_NO as billNo from paycharge
    where folionodocid='<folionodocid>' and Amtdr<>0 AND (MODESET IS NULL OR MODESET ='') And P.PayType='Cheque'
    Order By S.Name;

-- --------------------------------------------
-- Query 164
-- Uses table: HallBook
-- Uses table: SubGroup
-- Uses table: paycharge
-- --------------------------------------------
SELECT P.VType,P.VNO,P.BatchNo As BNo, P.PayType, S.Name, P.AmtCr AS Amount,P.ContraDocId FROM ((PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left
    Join SubGroup S On P.CompCode=S.SubCode) <Param>Select DIstinct Bill_NO as billNo from paycharge
    where folionodocid='<folionodocid>' and Amtdr<>0 AND (MODESET IS NULL OR MODESET ='') And P.PayType='Credit Card'
    Order By S.Name;

-- --------------------------------------------
-- Query 165
-- Uses table: HallBook
-- Uses table: SubGroup
-- Uses table: paycharge
-- --------------------------------------------
SELECT P.VType,P.VNO,P.BatchNo As BNo, P.PayType, S.Name, P.AmtCr AS Amount,P.ContraDocId FROM ((PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left
    Join SubGroup S On P.CompCode=S.SubCode) <Param>Select DIstinct Bill_NO as billNo from paycharge
    where folionodocid='<folionodocid>' and Amtdr<>0 AND (MODESET IS NULL OR MODESET ='') And P.PayType='UPI'
    Order By S.Name;

-- --------------------------------------------
-- Query 166
-- Uses table: HallBook
-- Uses table: SubGroup
-- Uses table: paycharge
-- --------------------------------------------
SELECT P.VType,P.VNO,P.BatchNo As BNo, P.PayType, S.Name, P.AmtCr AS Amount,P.ContraDocId FROM ((PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left
    Join SubGroup S On P.CompCode=S.SubCode) <Param>Select DIstinct Bill_NO as billNo from paycharge
    where folionodocid='<folionodocid>' and Amtdr<>0 AND (MODESET IS NULL OR MODESET ='') And P.PayType='Other'
    Order By S.Name;

-- --------------------------------------------
-- Query 167
-- Uses table: GroupProf
-- --------------------------------------------
Select '' As O,Name,Code From GroupProf
    Order By Name;

-- --------------------------------------------
-- Query 168
-- Uses table: Enviro
-- --------------------------------------------
Select IsNull(Max(ImprestAmount),0) From Enviro
    where Logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 169
-- Uses table: RoomMast
-- --------------------------------------------
Select distinct '' As O,CAST(MaidStation AS VARCHAR) As Name,MaidStation As Code From RoomMast
    Where Type='RO' AND MaidStation IS NOT NULL
    Order by MaidStation;

-- --------------------------------------------
-- Query 170
-- Uses table: RevMast
-- --------------------------------------------
SELECT DISTINCT RevMast.Name,RevMast.code,P.TaxPer FROM (PayCharge AS P
    INNER JOIN RevMast ON P.PayCode = RevMast.Code) <Param><Param>Where P.RoomType='RO' And P.PayCode IN (<Param>) And <Param>
    Order by RevMast.Name,P.TaxPer;

-- --------------------------------------------
-- Query 171
-- Uses table: Paycharge
-- --------------------------------------------
Select Sum(AmtCr) from Paycharge
    where FolioNoDOCID='<FolioNoDOCID>' And ModeSet='S' AND PAYCODE=<PAYCODE>;

-- --------------------------------------------
-- Query 172
-- Uses table: Paycharge
-- Uses table: RoomOcc
-- --------------------------------------------
Select Case When Min(Vdate) Is Not Null Then Min(Vdate) Else (Select ChkInDate From RoomOcc
    Where Docid='<Docid>' And Sno=1<Param><Param>'<Param>;

-- --------------------------------------------
-- Query 173
-- Uses table: Paycharge
-- --------------------------------------------
Select Sum(AmtDr) from Paycharge
    where FolioNoDocid='<FolioNoDocid>' and PayCode='<PayCode><Param>Order By SNo Desc;

-- --------------------------------------------
-- Query 174
-- Uses table: Country
-- Uses table: GuestFolioProfDetail
-- Uses table: GuestProf
-- --------------------------------------------
Select GP.ConPrefix,GP.Name,GP.Age,CO.Name As Country,CO.Nationality AS Nationality From GuestFolioProfDetail GD
    Inner Join GuestProf GP On GD.GuestProf=GP.Code
    Left Join Country CO On GP.Nationality=CO.Code
    Where GD.Docid='<Docid>' And GD.GuestProf<>'<Param>';

-- --------------------------------------------
-- Query 175
-- Uses table: PayCharge
-- Uses table: RoomOccDet
-- --------------------------------------------
Select Paytype,Sum(AmtCr) As SettleAmt From PayCharge
    Where ModeSet='S' And AmtCr<>0 And FolioNoDocid In (Select Distinct Docid From RoomOccDet RD
    Where RD.UserChkOutDate Between <Param> And <Param><Param>;

-- --------------------------------------------
-- Query 176
-- Uses table: Depart
-- --------------------------------------------
Select Code,ShortName,Name,RestType From Depart
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') And RestType IN ('Outlet','Room Service')
    Order by Name;

-- --------------------------------------------
-- Query 177
-- Uses table: PlanMast
-- Uses table: RoomOcc
-- --------------------------------------------
Select TOP 1 RO.*,PM.Tariff From RoomOcc RO
    Left Join PlanMast PM On RO.PlanCode=PM.Code
    where RO.Docid='<Docid>' and RO.ChngDate<=;

-- --------------------------------------------
-- Query 178
-- Uses table: RevMast
-- Uses table: paycharge
-- --------------------------------------------
Select * from RevMast
    where (code in (select distinct Paycode from paycharge
    where settledate between <Param> and foliono<>0) and ((FlagType = 'FOM' AND FlagAMR <> 'Header') OR (FieldType = 'T'))) OR cODE='<cODE>ROFF'
    order by SEQNO;

-- --------------------------------------------
-- Query 179
-- Uses table: GuestFolio
-- Uses table: Sale1
-- --------------------------------------------
Update Sale1
    Set Party=Q.Company From Sale1,(Select DocId,Company From GuestFolio
    Where Vdate>='01/JUL/2017' And Company<>'')Q
    Where Sale1.FolionoDocid=Q.DocId;

-- --------------------------------------------
-- Query 180
-- Uses table: Voucher_Type
-- --------------------------------------------
Select LTRIM(RTRIM(IsNull(Max(Alias),''))) From Voucher_Type
    Where LogSite_Code='<LogSiteCode>' And V_Type='BCNT';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [BOOKING]  NOT present in visahl.sql dump (schema unknown)
-- Table [BillDet]  NOT present in visahl.sql dump (schema unknown)
-- Table [Booking]  NOT present in visahl.sql dump (schema unknown)
-- Table [BookingMore]  NOT present in visahl.sql dump (schema unknown)
-- Table [BussSource]  NOT present in visahl.sql dump (schema unknown)
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [Country]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [FAEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [FOMBillChangeDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [FixedCharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [GUESTPROF]  NOT present in visahl.sql dump (schema unknown)
-- Table [GroupProf]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolioProfDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestProf]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallBook]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallSale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [ITEMCATMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemGrp]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemcatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Itemmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [MarketSeg]  NOT present in visahl.sql dump (schema unknown)
-- Table [NightAuditLog]  NOT present in visahl.sql dump (schema unknown)
-- Table [PAYCHARGE]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [Paycharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [Plan1]  NOT present in visahl.sql dump (schema unknown)
-- Table [PlanDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [PlanMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [REVMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomBlockOut]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomCat]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOCC]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOccDet]  NOT present in visahl.sql dump (schema unknown)
-- Table [Roommast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Roomocc]  NOT present in visahl.sql dump (schema unknown)
-- Table [SUBGROUP]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [Site]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [guestfolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [itemcatmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [menuhelp]  NOT present in visahl.sql dump (schema unknown)
-- Table [paycharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [suntran]  NOT present in visahl.sql dump (schema unknown)
-- Table [suntranfacility]  NOT present in visahl.sql dump (schema unknown)
