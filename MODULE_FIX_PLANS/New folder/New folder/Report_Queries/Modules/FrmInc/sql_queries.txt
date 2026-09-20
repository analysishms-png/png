# ==========================================================
# Module: FrmInc
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: SundryTypeFix
-- --------------------------------------------
Delete From SundryTypeFix
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: depart
-- --------------------------------------------
select * from depart
    where outletYN='Y';

-- --------------------------------------------
-- Query 3
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT COUNT(*) FROM Voucher_Type
    WHERE V_Type='<V_Type>' AND SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 4
-- Uses table: FAENVIRO
-- --------------------------------------------
SELECT * FROM FAENVIRO
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 5
-- Uses table: FAENVIRO
-- --------------------------------------------
INSERT INTO FAENVIRO (AGE1,LogSite_Code,Site_Code) VALUES (0,'<LogSiteCode>','<Param>');

-- --------------------------------------------
-- Query 6
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Age1=0;

-- --------------------------------------------
-- Query 7
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Age2=15;

-- --------------------------------------------
-- Query 8
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Age3=30;

-- --------------------------------------------
-- Query 9
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Age4=45;

-- --------------------------------------------
-- Query 10
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Age5=60;

-- --------------------------------------------
-- Query 11
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Age6=90;

-- --------------------------------------------
-- Query 12
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Amt1=1000;

-- --------------------------------------------
-- Query 13
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Amt2=2000;

-- --------------------------------------------
-- Query 14
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Amt3=3000;

-- --------------------------------------------
-- Query 15
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Amt4=4000;

-- --------------------------------------------
-- Query 16
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Amt5=5000;

-- --------------------------------------------
-- Query 17
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET Amt6=6000;

-- --------------------------------------------
-- Query 18
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaHeader1='Dear Sirs,';

-- --------------------------------------------
-- Query 19
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaHeader2=' SUB : Outstanding Letter';

-- --------------------------------------------
-- Query 20
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaHeader3='';

-- --------------------------------------------
-- Query 21
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaHeader4='We Wish to draw your immediate attention towards our bills.details of which';

-- --------------------------------------------
-- Query 22
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaHeader5='are given below for your ready reference.';

-- --------------------------------------------
-- Query 23
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaFooter1='The payment of the bills have become late and as such, we request you to';

-- --------------------------------------------
-- Query 24
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaFooter2='send payment of the same at earliest,preferably vide draft drawn at kanpur.';

-- --------------------------------------------
-- Query 25
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaFooter3='Thanking you Yours Faithfully';

-- --------------------------------------------
-- Query 26
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaFooter4='';

-- --------------------------------------------
-- Query 27
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET TagadaFooter5=' For ABC & Company';

-- --------------------------------------------
-- Query 28
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET CreditLimit='Yes';

-- --------------------------------------------
-- Query 29
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET DebitLimit='Yes';

-- --------------------------------------------
-- Query 30
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET NegativeCashBalancE='Yes';

-- --------------------------------------------
-- Query 31
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET ShowGroup='No';

-- --------------------------------------------
-- Query 32
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET DonotShowGroup='No';

-- --------------------------------------------
-- Query 33
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET ShowCurrentBalance='Yes';

-- --------------------------------------------
-- Query 34
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET VerticleBalanceSheet='No';

-- --------------------------------------------
-- Query 35
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET ShowQty='No';

-- --------------------------------------------
-- Query 36
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET ShowCityName='No';

-- --------------------------------------------
-- Query 37
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET LedDivCode='No';

-- --------------------------------------------
-- Query 38
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET LedPrefix='No';

-- --------------------------------------------
-- Query 39
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET daterfill='Y';

-- --------------------------------------------
-- Query 40
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET titlerfill='M';

-- --------------------------------------------
-- Query 41
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET pagenofill='Y';

-- --------------------------------------------
-- Query 42
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET RunPIF='Y';

-- --------------------------------------------
-- Query 43
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET FilterAC='No';

-- --------------------------------------------
-- Query 44
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET AddressHelp='Yes';

-- --------------------------------------------
-- Query 45
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET DateLock='Y';

-- --------------------------------------------
-- Query 46
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET CashBookBalance='Yes';

-- --------------------------------------------
-- Query 47
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET MonthTotal='Yes';

-- --------------------------------------------
-- Query 48
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET OnLineAdjustment='Yes';

-- --------------------------------------------
-- Query 49
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET linefiller='-';

-- --------------------------------------------
-- Query 50
-- Uses table: FAENVIRO
-- --------------------------------------------
UPDATE FAENVIRO
    SET CashBookPage='Yes';

-- --------------------------------------------
-- Query 51
-- Uses table: ENVIRO
-- --------------------------------------------
SELECT * FROM ENVIRO
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 52
-- Uses table: ENVIRO
-- --------------------------------------------
INSERT INTO ENVIRO (Cash_Ac,SiteCode,LogSite_Code) VALUES ('<Param>','<Param>','<Param>');

-- --------------------------------------------
-- Query 53
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET Cash_Ac='<Cash_Ac>'
    WHERE LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 54
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET PF_LIMIT=5000
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 55
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET PF_EMPLOYEE=12
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 56
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET PF_EMPLOYER=8
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 57
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET ESI_LIMIT=6000
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 58
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET esi_employee=8
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 59
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET SALARY_AC='<SALARY_AC>'
    WHERE LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 60
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET Loan_AC='<Loan_AC>'
    WHERE LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 61
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET SiteCode='<SiteCode>';

-- --------------------------------------------
-- Query 62
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET calcMethod='A'
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 63
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET Checkout='Other'
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 64
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET Variation='01:00'
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 65
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET CheckoutVar='10:00'
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 66
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET PurchaseAdd1='Addition1'
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 67
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET PurchaseDed1='Deduction1'
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 68
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET PurchaseAdd2='Addition2'
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 69
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET PurchaseDed2='Deduction2'
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 70
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET Rate1='High Rate'
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 71
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET Rate2='Rack Rate'
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 72
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET Rate3='Disc1 Rate'
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 73
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET Rate4='Disc2 Rate'
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 74
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET Rate5='Disc3 Rate'
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 75
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET DefCompGroup='0020'
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 76
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET ReservationPrinting='W'
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 77
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET ArrDateTimeEdit='N'
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 78
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET CashPayType='<CashPayType><Param>'
    WHERE LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 79
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET RoomPayType='<RoomPayType><Param>'
    WHERE LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 80
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET RoomChrgDueAc='<RoomChrgDueAc><Param>'
    WHERE LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 81
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET OutletDiscAc='<OutletDiscAc><Param>'
    WHERE LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 82
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET OutletRoundAc='<OutletRoundAc><Param>'
    WHERE LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 83
-- Uses table: ENVIRO
-- --------------------------------------------
UPDATE ENVIRO
    SET AdvanceAc='<AdvanceAc>'
    WHERE LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 84
-- Uses table: PayCharge
-- --------------------------------------------
UPDATE PayCharge
    SET AMTDR=0
    WHERE AMTDR IS NULL;

-- --------------------------------------------
-- Query 85
-- Uses table: PayCharge
-- --------------------------------------------
UPDATE PayCharge
    SET AMTCR=0
    WHERE AMTCR IS NULL;

-- --------------------------------------------
-- Query 86
-- Uses table: PayCharge
-- --------------------------------------------
UPDATE PayCharge
    SET COMMENTS=''
    WHERE COMMENTS IS NULL;

-- --------------------------------------------
-- Query 87
-- Uses table: PayCharge
-- --------------------------------------------
SELECT * From PayCharge
    WHERE PayType IS NOT NULL AND PAYTYPE<>'' AND (PAYCODE IS NULL OR PAYCODE='');

-- --------------------------------------------
-- Query 88
-- Uses table: PAYCHARGE
-- --------------------------------------------
SELECT * FROM PAYCHARGE
    WHERE SETTLEDATE IS NOT NULL AND (BILL_NO IS NULL OR BILL_NO='') AND MODESET<>'S' AND vTYPE Not In ('ARRES','ADRES');

-- --------------------------------------------
-- Query 89
-- Uses table: PAYCHARGE
-- --------------------------------------------
SELECT * FROM PAYCHARGE
    WHERE (FOLIONODOCID IS NOT NULL AND FOLIONODOCID<>'') AND SETTLEDATE IS NULL AND (BILL_NO IS NOT NULL AND BILL_NO<>'') AND MODESET<>'S' AND vTYPE Not In ('ARRES','ADRES');

-- --------------------------------------------
-- Query 90
-- Uses table: PAYCHARGE
-- --------------------------------------------
SELECT FolionoDocId,Sum(AmtDr) As AmtDr,Sum(AmtCr) As AmtCr,Sum(AmtDr)-Sum(AmtCr) As Diff,Max(Bill_No) As Bill_No FROM PAYCHARGE
    Group By FOLIONODOCID
    Having Round((Sum(AmtDr)-Sum(AmtCr)),2)<>0
    Order By FolionoDocId;

-- --------------------------------------------
-- Query 91
-- Uses table: PAYCHARGE
-- Uses table: REVMAST
-- --------------------------------------------
SELECT * FROM PAYCHARGE
    WHERE PAYCODE NOT IN (SELECT CODE FROM REVMAST);

-- --------------------------------------------
-- Query 92
-- Uses table: PAYCHARGE
-- --------------------------------------------
SELECT * FROM PAYCHARGE
    WHERE Docid is NUll or Docid='';

-- --------------------------------------------
-- Query 93
-- Uses table: paycharge
-- --------------------------------------------
Delete from paycharge
    where Docid is NULL or Docid='';

-- --------------------------------------------
-- Query 94
-- Uses table: GuestFolio
-- --------------------------------------------
SELECT * FROM GuestFolio
    WHERE Docid is NUll or Docid='';

-- --------------------------------------------
-- Query 95
-- Uses table: GuestFolio
-- --------------------------------------------
Delete from GuestFolio
    where Docid is NULL or Docid='';

-- --------------------------------------------
-- Query 96
-- Uses table: GuestFolio
-- Uses table: PayCharge
-- --------------------------------------------
Update PayCharge
    set GuestProf=GF.GuestProf from GuestFolio GF
    Where FolioNoDocid=GF.Docid And ISNULL(PayCharge.FolioNoDocid,'')<>'';

-- --------------------------------------------
-- Query 97
-- Uses table: INDENT1
-- Uses table: ITEMMAST
-- --------------------------------------------
UPDATE INDENT1
    INNER JOIN ITEMMAST ON [itemmast].[CODE]=[INDENT1].[ITEM]
    SET INDENT1.CONVFACTOR = [ITEMMAST].[CONVRATIO], INDENT1.WTUNIT = [ITEMMAST].[ISSUEUNIT],INDENT1.WTQTY=[INDENT1].[qTY]*[ITEMMAST].[cONVRATIO]
    WHERE VTYPE='PIND';

-- --------------------------------------------
-- Query 98
-- Uses table: INDENT1
-- --------------------------------------------
UPDATE INDENT1
    SET WTQTY=QTY,WTUNIT=UNIT
    WHERE VtYPE='RQ';

-- --------------------------------------------
-- Query 99
-- Uses table: INDENT1
-- Uses table: ITEMMAST
-- --------------------------------------------
UPDATE INDENT1
    INNER JOIN ITEMMAST ON [itemmast].[CODE]=[INDENT1].[ITEM]
    SET INDENT1.CONVFACTOR = [ITEMMAST].[CONVRATIO], INDENT1.UNIT = [ITEMMAST].[UNIT], INDENT1.QTY = [INDENT1].[WTQTY]/[ITEMMAST].[cONVRATIO]
    WHERE VTYPE='RQ';

-- --------------------------------------------
-- Query 100
-- Uses table: Indent
-- Uses table: stock
-- --------------------------------------------
update Indent
    set clearyn='Y'
    where indent.Vtype='RQ' and docid in (select Contradocid from stock
    where vtype='RQI');

-- --------------------------------------------
-- Query 101
-- Uses table: ITEMMAST
-- Uses table: PORDER1
-- --------------------------------------------
UPDATE PORDER1
    INNER JOIN ITEMMAST ON [itemmast].[CODE]=[PORDER1].[ITEMCODE]
    SET PORDER1.CONVRATIO = [ITEMMAST].[CONVRATIO], PORDER1.WTUNIT = [ITEMMAST].[ISSUEUNIT], PORDER1.WTQTY = [PORDER1].[QTY]*[ITEMMAST].[cONVRATIO]
    WHERE VTYPE='PORD';

-- --------------------------------------------
-- Query 102
-- Uses table: ITEMMAST
-- Uses table: STOCK
-- --------------------------------------------
UPDATE STOCK
    LEFT JOIN ITEMMAST ON STOCK.ITEM=ITEMMAST.CODE
    SET STOCK.CONVRATIO=ITEMMAST.CONVRATIO,STOCK.RECDUNIT=ITEMMAST.UNIT,STOCK.RECDQTY=STOCK.QTYREC/ITEMMAST.CONVRATIO, STOCK.ACCQTY = STOCK.QTYREC / ITEMMAST.ConvRatio
    WHERE VTYPE='RQI';

-- --------------------------------------------
-- Query 103
-- Uses table: ITEMMAST
-- Uses table: STOCK
-- --------------------------------------------
UPDATE STOCK
    LEFT JOIN ITEMMAST ON STOCK.ITEM=ITEMMAST.CODE
    SET STOCK.CONVRATIO=ITEMMAST.CONVRATIO,STOCK.ISSUEUNIT=ITEMMAST.UNIT,STOCK.ISSQTY=STOCK.QTYISS/ITEMMAST.CONVRATIO
    WHERE VTYPE='RQR';

-- --------------------------------------------
-- Query 104
-- Uses table: stock
-- --------------------------------------------
update stock
    set ISSQTY=QTYISS,ISSUEUNIT=UNIT
    WHERE VTYPE IN ('KSISS','KMISS');

-- --------------------------------------------
-- Query 105
-- Uses table: stock
-- --------------------------------------------
update stock
    set ACCQTY=QTYREC,RECDQTY=QTYREC,RECDUNIT=UNIT
    WHERE VTYPE IN ('KSREC','KMREC');

-- --------------------------------------------
-- Query 106
-- Uses table: ITEMMAST
-- Uses table: STOCK
-- --------------------------------------------
UPDATE STOCK
    INNER JOIN ITEMMAST ON [itemmast].[CODE]=[STOCK].[ITEM]
    SET STOCK.UNIT = [ITEMMAST].[ISSUEUNIT],STOCK.QTYISS=STOCK.CONVRATIO*STOCK.ISSQTY,STOCK.QTYREC=STOCK.CONVRATIO*STOCK.RECDQTY
    WHERE VTYPE IN ('KSISS','KSREC','KMREC','KMISS');

-- --------------------------------------------
-- Query 107
-- Uses table: stock
-- --------------------------------------------
update stock
    Set IssQty=Recdqty,Accqty=0,ChalQty=0,IssueUnit=RECDUNIT
    where vtype='PRPB';

-- --------------------------------------------
-- Query 108
-- Uses table: ITEMMAST
-- Uses table: STOCK
-- --------------------------------------------
Update STOCK
    Inner Join ITEMMAST on (ITEMMAST.cODE=STOCK.ITEM)
    Set STOCK.RECDQTY=0,STOCK.ISSUEUNIT=ITEMMAST.UNIT,STOCK.ISSQTY=STOCK.QTYISS/STOCK.CONVRATIO
    WHERE VTYPE IN ('PRPB','PRPC');

-- --------------------------------------------
-- Query 109
-- Uses table: Stock
-- Uses table: purch2
-- --------------------------------------------
Update purch2
    Inner Join Stock on (Stock.Docid=Purch2.ContraDocid And Stock.Sno=Purch2.ContraSno)
    Set Purch2.ChalQty=Stock.ChalQty,Purch2.AccQty=Stock.AccQty,Purch2.RecdQty=Stock.RecdQty,Purch2.RejQty=Stock.RejQty,purch2.ConvRatio=Stock.ConvRatio;

-- --------------------------------------------
-- Query 110
-- Uses table: Stock
-- Uses table: purch2
-- --------------------------------------------
Update purch2
    Inner Join Stock on (Stock.Docid=Purch2.Docid And Stock.Sno=Purch2.Sno)
    Set Purch2.ChalQty=Stock.ChalQty,Purch2.AccQty=Stock.AccQty,Purch2.RecdUnit=Stock.RecdUnit,Purch2.RecdQty=Stock.RecdQty,Purch2.RejQty=Stock.RejQty,purch2.ConvRatio=Stock.ConvRatio
    Where Purch2.QtyIss=0;

-- --------------------------------------------
-- Query 111
-- Uses table: Stock
-- Uses table: purch2
-- --------------------------------------------
Update purch2
    Inner Join Stock on (Stock.Docid=Purch2.Docid And Stock.Sno=Purch2.Sno)
    Set Purch2.iSSQty=Stock.iSSQty,Purch2.ISSUEUNIT=Stock.ISSUEUNIT
    Where Purch2.QtyIss<>0;

-- --------------------------------------------
-- Query 112
-- Uses table: Stock
-- Uses table: purch2
-- --------------------------------------------
Update purch2
    Inner Join Stock on (Stock.Docid=Purch2.ContraDocid And Stock.Sno=Purch2.ContraSno)
    Set Purch2.QtyIss=Stock.QtyIss,Purch2.RecdUnit=Stock.RecdUnit,Purch2.QtyRec=Stock.QtyRec,Purch2.UNIT=Stock.UNIT;

-- --------------------------------------------
-- Query 113
-- Uses table: Stock
-- Uses table: purch2
-- --------------------------------------------
Update purch2
    Inner Join Stock on (Stock.Docid=Purch2.Docid And Stock.Sno=Purch2.Sno)
    Set Purch2.QtyIss=Stock.QtyIss,Purch2.QtyRec=Stock.QtyRec,Purch2.UNIT=Stock.UNIT;

-- --------------------------------------------
-- Query 114
-- --------------------------------------------
Drop table Itemmast;

-- --------------------------------------------
-- Query 115
-- --------------------------------------------
Drop table Voucher_Type;

-- --------------------------------------------
-- Query 116
-- --------------------------------------------
Drop table Voucher_Prefix;

-- --------------------------------------------
-- Query 117
-- --------------------------------------------
Drop table Depart;

-- --------------------------------------------
-- Query 118
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    Where Site_Code='<LogSiteCode>' and LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 119
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT COUNT(*) FROM SUBGROUP
    WHERE Upper(NAME)='<Param>' AND SITE_CODE='<LogSiteCode>' AND LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 120
-- Uses table: RevMast
-- --------------------------------------------
SELECT COUNT(*) FROM RevMast
    WHERE UPPER(NAME)='<Param>' AND SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 121
-- Uses table: TelCallType
-- --------------------------------------------
SELECT COUNT(*) FROM TelCallType
    WHERE UPPER(CallType)='<Param>' AND SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 122
-- Uses table: TelCallType
-- --------------------------------------------
SELECT COUNT(*) FROM TelCallType
    WHERE UPPER(CallType)='<Param>' AND SITE_CODE='<SITE_CODE>,'A','<Param>');

-- --------------------------------------------
-- Query 123
-- Uses table: GodownMast
-- --------------------------------------------
SELECT COUNT(*) FROM GodownMast
    WHERE Code='<Code>' and Site_Code='<LogSiteCode>' and LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 124
-- Uses table: Depart
-- --------------------------------------------
SELECT COUNT(*) FROM Depart
    WHERE UPPER(NAME)='<Param>' AND SITE_CODE='<SITE_CODE>' AND LogSITE_CODE='<LogSITE_CODE>';

-- --------------------------------------------
-- Query 125
-- Uses table: ACGROUP
-- --------------------------------------------
SELECT COUNT(*) FROM ACGROUP
    WHERE UPPER(GROUPNAME)='<Param>' AND LOGSITE_CODE='HO' AND SITE_CODE='HO';

-- --------------------------------------------
-- Query 126
-- Uses table: ACGROUP
-- --------------------------------------------
SELECT MAX(ID) AS MAXID FROM ACGROUP;

-- --------------------------------------------
-- Query 127
-- Uses table: VoucherCat
-- --------------------------------------------
SELECT COUNT(*) FROM VoucherCat
    WHERE Category='<Category>' And NCat='<NCat>';

-- --------------------------------------------
-- Query 128
-- Uses table: VoucherCat
-- --------------------------------------------
Insert Into VoucherCat (Category,NCat,Site_Code,LogSite_Code) VALUES ('<Param>','<Param>','HO','HO');

-- --------------------------------------------
-- Query 129
-- Uses table: ItemCatMast
-- --------------------------------------------
SELECT COUNT(*) FROM ItemCatMast
    WHERE UPPER(NAME)='<Param>' AND LEFT(CODE,2)='<Param>';

-- --------------------------------------------
-- Query 130
-- Uses table: TaxStru
-- --------------------------------------------
SELECT COUNT(*) FROM TaxStru
    WHERE CODE='<CODE>' AND SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 131
-- Uses table: UnitMast
-- --------------------------------------------
SELECT COUNT(*) FROM UnitMast
    WHERE UPPER(NAME)='<Param>' AND SITE_CODE='HO' AND LOGSITE_CODE='HO';

-- --------------------------------------------
-- Query 132
-- Uses table: SundryMast
-- --------------------------------------------
SELECT COUNT(*) FROM SundryMast
    WHERE UPPER(NAME)='<Param>' AND SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 133
-- Uses table: SundryTypeFix
-- --------------------------------------------
SELECT COUNT(*) FROM SundryTypeFix
    WHERE UPPER(SundryCode)='<Param>' AND SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 134
-- Uses table: SundryTypeFix
-- --------------------------------------------
SELECT COUNT(*) FROM SundryTypeFix
    WHERE UPPER(SundryCode)='<Param>' AND SITE_CODE='<SITE_CODE>,'A','<Param>');



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [ACGROUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [ENVIRO]  NOT present in visahl.sql dump (schema unknown)
-- Table [FAENVIRO]  NOT present in visahl.sql dump (schema unknown)
-- Table [GodownMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [INDENT1]  NOT present in visahl.sql dump (schema unknown)
-- Table [ITEMMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [Indent]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [PAYCHARGE]  NOT present in visahl.sql dump (schema unknown)
-- Table [PORDER1]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [REVMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [STOCK]  NOT present in visahl.sql dump (schema unknown)
-- Table [SUBGROUP]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [SundryMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryTypeFix]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [TelCallType]  NOT present in visahl.sql dump (schema unknown)
-- Table [UnitMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [VoucherCat]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [paycharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [purch2]  NOT present in visahl.sql dump (schema unknown)
-- Table [stock]  NOT present in visahl.sql dump (schema unknown)
