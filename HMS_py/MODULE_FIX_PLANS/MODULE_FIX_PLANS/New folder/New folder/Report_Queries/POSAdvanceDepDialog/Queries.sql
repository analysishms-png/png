# ==========================================================
# Module: POSAdvanceDepDialog
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: HallBook
-- --------------------------------------------
SELECT PartyName FROM HallBook
    WHERE DocId='<DocId>';

-- --------------------------------------------
-- Query 2
-- Uses table: HallBook
-- --------------------------------------------
SELECT HallBook.DocId AS Code, HallBook.VNo AS Name,HallBook.PartyName FROM HallBook
    WHERE HallBook.RestCode='<RestCode>' AND HallbOOK.Docid='<Docid>';

-- --------------------------------------------
-- Query 3
-- Uses table: PackingOrder
-- --------------------------------------------
SELECT PD.DocId AS Code, PD.VNo AS Name,PD.CustName As PartyName FROM PackingOrder PD
    WHERE PD.RestCode='<RestCode>' AND PD.Docid='<Docid>';

-- --------------------------------------------
-- Query 4
-- Uses table: Ledger
-- --------------------------------------------
SELECT count(*) FROM Ledger
    WHERE DocId='<DocId>' AND V_Type='BREC';

-- --------------------------------------------
-- Query 5
-- Uses table: PayChargeH
-- --------------------------------------------
Delete From PayChargeH
    Where VType In ('AD','AR') AND Docid='<Docid>';

-- --------------------------------------------
-- Query 6
-- Uses table: lEDGER
-- --------------------------------------------
Delete From lEDGER
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 7
-- Uses table: PayCharge
-- --------------------------------------------
Delete From PayCharge
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 8
-- Uses table: PayCharge
-- --------------------------------------------
SELECT Sum(AmtCr) FROM PayCharge
    Where ContraDocid='<ContraDocid>';

-- --------------------------------------------
-- Query 9
-- Uses table: HallSale1
-- --------------------------------------------
UPDATE HallSale1
    SET Advance=<Advance>
    WHERE BookDocId='<BookDocId>';

-- --------------------------------------------
-- Query 10
-- Uses table: Enviro
-- --------------------------------------------
SELECT NCUR FROM Enviro;

-- --------------------------------------------
-- Query 11
-- Uses table: REVMAST
-- --------------------------------------------
SELECT * FROM REVMAST
    WHERE CODE='<LogSiteCode>TOUT';

-- --------------------------------------------
-- Query 12
-- Uses table: PayChargeH
-- --------------------------------------------
Insert Into PayChargeH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,AmtCr,TipAmt,;

-- --------------------------------------------
-- Query 13
-- Uses table: PayCharge
-- --------------------------------------------
Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,AmtCr,TipAmt,;

-- --------------------------------------------
-- Query 14
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 15
-- Uses table: RevMast
-- --------------------------------------------
SELECT Code,Name,PayType FROM RevMast
    Where (LogSite_Code='<LogSiteCode>' OR LogSite_Code='HO') and FieldType='P'
    ORDER BY Name;

-- --------------------------------------------
-- Query 16
-- Uses table: Employee
-- --------------------------------------------
SELECT Code,Name FROM Employee
    Where (LogSite_Code='<LogSiteCode>' or LogSite_Code='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 17
-- Uses table: Employee
-- --------------------------------------------
SELECT Code,Name FROM Employee
    Where (LogSite_Code='<LogSiteCode>' and RoomOcc.LogSite_Code='<LogSiteCode>') and T.Type in ('HL') and RoomOcc.ChkoutDate is NULL
    Order By T.Code;

-- --------------------------------------------
-- Query 18
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode as Code,Name From SubGroup
    where LogSite_Code in ('HO','<LogSiteCode>') and CompanyType in ('Corporate','Travel Agency')
    Order By Name;

-- --------------------------------------------
-- Query 19
-- Uses table: PackingOrder
-- --------------------------------------------
SELECT PD.DocId AS Code, PD.VNo AS Name,PD.CustName As PartyName,LogSite_Code,Site_Code FROM PackingOrder PD
    WHERE LogSite_Code='<LogSiteCode>' and RestCode='<RestCode>';

-- --------------------------------------------
-- Query 20
-- Uses table: PayChargeH
-- --------------------------------------------
SELECT Distinct Docid as SearchCode,PostDocId,LogSite_Code,Site_Code FROM PayChargeH
    Where LogSite_Code='<LogSiteCode>' And ContraDocId='<ContraDocId>' AND Vtype='<Vtype>';

-- --------------------------------------------
-- Query 21
-- Uses table: PayCharge
-- --------------------------------------------
SELECT Distinct Docid as SearchCode,ContraDocId,LogSite_Code,Site_Code FROM PayCharge
    Where LogSite_Code='<LogSiteCode>' And ContraDocId='<ContraDocId>' And Vtype='<Vtype>';

-- --------------------------------------------
-- Query 22
-- Uses table: PayCharge
-- --------------------------------------------
SELECT Distinct Docid as SearchCode,ContraDocId,LogSite_Code,Site_Code FROM PayCharge
    Where LogSite_Code='<LogSiteCode>' And Vtype='<Vtype>';

-- --------------------------------------------
-- Query 23
-- Uses table: menuHelp
-- --------------------------------------------
SELECT Param_Str AS UPrivilege,Module_Name FROM menuHelp
    WHERE UserName='<UserName>' AND CompCode='<CompCode>' AND OutletCode='<OutletCode>' AND [Option]='Order Booking Advance';

-- --------------------------------------------
-- Query 24
-- Uses table: PackingOrderDetail
-- --------------------------------------------
Select Count(*) From PackingOrderDetail
    Where DocId='<DocId>' And isnull(Contradocid,'')='' And IsNull(VoidYN,'')<>'Y';

-- --------------------------------------------
-- Query 25
-- Uses table: PayChargeH
-- --------------------------------------------
SELECT Distinct Docid as SearchCode,PostDocId,ContraDocId FROM PayChargeH
    Where Vtype='<Vtype>' AND ContraDocID='<ContraDocID>';

-- --------------------------------------------
-- Query 26
-- Uses table: PayChargeH
-- --------------------------------------------
SELECT Distinct Docid as SearchCode,PostDocId FROM PayChargeH
    Where Vtype='<Vtype>' AND ContraDocID='<ContraDocID>';

-- --------------------------------------------
-- Query 27
-- Uses table: PayCharge
-- --------------------------------------------
SELECT Distinct Docid as SearchCode,ContraDocId FROM PayCharge
    Where Vtype='<Vtype>' AND ContraDocID='<ContraDocID>';

-- --------------------------------------------
-- Query 28
-- Uses table: PackingOrder
-- --------------------------------------------
SELECT CustName FROM PackingOrder
    WHERE DocId='<DocId>';

-- --------------------------------------------
-- Query 29
-- Uses table: PackingOrder
-- --------------------------------------------
SELECT P.VNO AS RECTNO,P.VDATE AS RECTDATE,P.PAYTYPE AS RECTMODE,P.U_Name As UserName,P.CardNo AS CCardNo,P.Cardholder As CCardholder,P.ChqNo As ChqNo,P.ChqDate AS ChqDate,P.ExpDate AS CCExpDate,P.BatchNo As BatchNo,P.AMTCR AS RECTAMT,PO.VType+'/'+Cast(PO.VNO As Char)AS BOOKNO,PO.CUSTNAME,P.TxnNo FROM (PAYCHARGE P
    left join PackingOrder PO On P.ContraDocid=PO.DocId)
    WHERE P.DOCID IN ('<Param>') AND P.VTYPE='<VTYPE>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Employee]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallBook]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallSale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [PackingOrder]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [PayChargeH]  NOT present in visahl.sql dump (schema unknown)
-- Table [REVMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [lEDGER]  NOT present in visahl.sql dump (schema unknown)
-- Table [menuHelp]  NOT present in visahl.sql dump (schema unknown)
