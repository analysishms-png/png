# ==========================================================
# Module: SMSModule
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: DBSendSMS
-- --------------------------------------------
Select IsNull(Max(SNo),0)+1 From DBSendSMS With (NoLock)
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 2
-- Uses table: SMSEnviro
-- --------------------------------------------
Select * from SMSEnviro With (NoLock);

-- --------------------------------------------
-- Query 3
-- Uses table: DBSENDSMS
-- --------------------------------------------
Update DBSENDSMS
    Set DelvDT=Plz
    Set SMS Enviro Setting ........,DelvTM='<DelvTM>',SenderName='Analysis',SendTF='TRUE'
    Where DocId='<DocId>' And IsNull(SNo,0)=<Param><Param>;

-- --------------------------------------------
-- Query 4
-- Uses table: JOBScheduledDetail
-- --------------------------------------------
Select * from JOBScheduledDetail
    Where JobEnabled=1 And JobScheduledOn Is Not Null;

-- --------------------------------------------
-- Query 5
-- Uses table: RoomMast
-- --------------------------------------------
Select Count(*) From RoomMast RM
    WHERE RM.Type='RO' And RM.InclCount='Y' And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 7
-- Uses table: HallBook
-- Uses table: PayChargeH
-- --------------------------------------------
SELECT P.VTYPE,P.PayType, Sum(P.AmtCr) AS Amount FROM PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId <Param><Param> And P.PayType='Cash'
    Group By P.VTYPE,P.PayType;

-- --------------------------------------------
-- Query 8
-- Uses table: HallBook
-- Uses table: SubGroup
-- --------------------------------------------
SELECT P.VType,P.PayType,Sum(P.AmtCr) Amount FROM ((PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left
    Join SubGroup S On P.CompCode=S.SubCode) <Param><Param> And P.PayType='Company'
    Group By P.VTYPE,P.PayType;

-- --------------------------------------------
-- Query 9
-- Uses table: HallBook
-- Uses table: SubGroup
-- --------------------------------------------
SELECT P.VType,P.PayType,Sum(P.AmtCr) AS Amount FROM ((PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left
    Join SubGroup S On P.CompCode=S.SubCode) FOM: <Param> And P.PayType='Hold'
    Group By P.VType,P.PayType;

-- --------------------------------------------
-- Query 10
-- Uses table: HallBook
-- Uses table: SubGroup
-- --------------------------------------------
SELECT P.VType,P.PayType,Sum(P.AmtCr) Amount FROM ((PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left
    Join SubGroup S On P.CompCode=S.SubCode) FOM: <Param> And P.PayType='Cheque'
    Group By P.VTYPE,P.PayType;

-- --------------------------------------------
-- Query 11
-- Uses table: HallBook
-- Uses table: SubGroup
-- --------------------------------------------
SELECT P.VType,P.PayType,Sum(P.AmtCr) Amount FROM ((PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left
    Join SubGroup S On P.CompCode=S.SubCode) FOM: <Param> And P.PayType='Credit Card'
    Group By P.VTYPE,P.PAYTYPE;

-- --------------------------------------------
-- Query 12
-- Uses table: ITEMCATMAST
-- --------------------------------------------
SELECT DISTINCT CATTYPE AS NAME FROM ITEMCATMAST
    WHERE (REVCODE IS NOT NULL AND REVCODE<>'') AND (CATTYPE<>'' AND CATTYPE IS NOT NULL)
    Order By CATTYPE;

-- --------------------------------------------
-- Query 13
-- Uses table: Revmast
-- --------------------------------------------
SELECT Code,Name FROM Revmast
    WHERE FieldType IN ('T') And Sundry<>'<LogSiteCode>SCH';

-- --------------------------------------------
-- Query 14
-- Uses table: HallBook
-- Uses table: SubGroup
-- --------------------------------------------
SELECT P.VType,P.PayType,Sum(P.AmtCr) Amount FROM ((PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left
    Join SubGroup S On P.CompCode=S.SubCode) <Param><Param>
    Group By P.VTYPE,P.PayType;

-- --------------------------------------------
-- Query 15
-- Uses table: SmartCardRegistration
-- --------------------------------------------
Select Code,Name,IssDate,CardNo,Addr,Phone,ValidUpto,U_Name,MemberCode,RewardBal,RewardSale,RewardPoint,RedeemPoint From SmartCardRegistration
    Where Code='<Code>' And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 16
-- Uses table: SMSEnviro
-- --------------------------------------------
Select GuestRegistrationMsg,RewardPointMsg,RedeemPointMsg from SMSEnviro
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 17
-- Uses table: GuestReward
-- --------------------------------------------
Select Vdate,BillNo,BillAmt,U_Name,RewardPoint,RedemPoint,RewardValue,RedeemValue From GuestReward
    Where DocId='<DocId>' And RegId='<RegId>';

-- --------------------------------------------
-- Query 18
-- Uses table: GuestReward
-- --------------------------------------------
Select DepartName,Vdate,BillNo,DiscAmt,BillAmt,MobileNo,CustCode,U_Name From GuestReward
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 19
-- Uses table: SMSEnviro
-- --------------------------------------------
Select POSBillMsg,AssignDeliveryMsg from SMSEnviro
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 20
-- Uses table: EmailSMSForward
-- --------------------------------------------
Select IsNull(Max(GuestMsg),'') from EmailSMSForward
    WHERE Type='Assign Delivery' And FlagType='POS' And DepartCode='<DepartCode>' And LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 21
-- Uses table: EmailSMSForward
-- --------------------------------------------
Select IsNull(Max(GuestMsg),'') from EmailSMSForward
    WHERE Type='Outlet Bill' And FlagType='POS' And DepartCode='<DepartCode>' And LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 22
-- Uses table: DeliveryBoy
-- --------------------------------------------
Select AD.*,DB.Name From (AssignDelivery AD
    Left Join DeliveryBoy DB On AD.DeliBoy = DB.Code)
    Where AD.Site_Code='<Site_Code>' and (AD.LOGSITE_CODE='<LogSiteCode>' or AD.LOGSITE_CODE='HO') and DocId='<DocId>';

-- --------------------------------------------
-- Query 23
-- Uses table: EmailSMSForward
-- --------------------------------------------
Select IsNull(Max(MobileNo),'') from EmailSMSForward
    WHERE Type='Outlet Bill' And FlagType='POS' And DepartCode='<LogSiteCode>RS' And LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 24
-- Uses table: GuestReward
-- --------------------------------------------
Select MobileNo From GuestReward
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 25
-- Uses table: PayCharge
-- --------------------------------------------
Select Top 1 PayType from PayCharge
    where DocId='<DocId>'
    Order By SNo;

-- --------------------------------------------
-- Query 26
-- Uses table: Depart
-- Uses table: Sale1
-- --------------------------------------------
Select D.Name DEPARTNAME,S1.VType,S1.VDate,S1.VNo,S1.DiscAmt,S1.NetAmt,S1.U_Name,S1.RoomNo From Sale1 S1
    Left Join Depart D On S1.Restcode=D.Code
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 27
-- Uses table: ITEMMAST
-- Uses table: Stock
-- --------------------------------------------
Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,Sum(S.TAXAMT) AS TAXAMT,S.RATE,Max(S.Remarks) As Remarks,MAX(S.ItemRate) AS ItemRate,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,MAX(I.DISPCODE) As DISPCODE,Case When SUM(S.TAXAMT)=0 THEN SUM(S.AMOUNT) ELSE 0 END AS NONTAXABLE,Case When SUM(S.TAXAMT)<>0 THEN SUM(S.AMOUNT) ELSE 0 END AS TAXABLE,Max(S.Unit) As UNIT From Stock S
    LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode
    Where S.DocID='<DocID>'
    GROUP BY S.ITEM,S.RATE
    ORDER BY MAX(I.NAME);

-- --------------------------------------------
-- Query 28
-- Uses table: ITEMMAST
-- Uses table: Stock
-- --------------------------------------------
Select S.SNO,I.NAME AS ITEMNAME,S.AMOUNT From Stock S
    LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode
    Where S.DocID='<DocID>'
    ORDER BY S.SNO;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [DBSENDSMS]  NOT present in visahl.sql dump (schema unknown)
-- Table [DBSendSMS]  NOT present in visahl.sql dump (schema unknown)
-- Table [DeliveryBoy]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [EmailSMSForward]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestReward]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallBook]  NOT present in visahl.sql dump (schema unknown)
-- Table [ITEMCATMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [ITEMMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [JOBScheduledDetail]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [Revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SMSEnviro]  NOT present in visahl.sql dump (schema unknown)
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
