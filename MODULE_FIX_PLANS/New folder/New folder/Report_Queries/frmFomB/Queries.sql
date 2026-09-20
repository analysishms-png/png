# ==========================================================
# Module: frmFomB
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where lOGSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where lOGSite_code='<LogSiteCode>'' AND MODESET<>'S';

-- --------------------------------------------
-- Query 3
-- Uses table: PayCharge
-- Uses table: Voucher_Prefix
-- Uses table: Voucher_Type
-- --------------------------------------------
Update Voucher_Prefix
    Set Start_Srl_No=Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,BillAmount,AmtDr,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,U_Name,U_EntDt,U_AE,RestCode,PlanCharge,FixedChargeCode,FolioNoDocid,LogSite_Code,Split,Bill_no,SettleDate) Values ('Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT
    Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE)
    Where (VP.SITE_CODE='<SITE_CODE>
    Where (SITE_CODE='';

-- --------------------------------------------
-- Query 4
-- Uses table: paycharge
-- --------------------------------------------
Select Sum(Amtcr-amtdr) from paycharge
    where FolionoDocid='<FolionoDocid>' and modeset='S';

-- --------------------------------------------
-- Query 5
-- Uses table: PAYCHARGE
-- --------------------------------------------
UPDATE PAYCHARGE
    SET AMTCR=<AMTCR>
    WHERE FOLIONODOCID='<FOLIONODOCID>' AND Modeset='S' and PayType='Cash';

-- --------------------------------------------
-- Query 6
-- Uses table: PayCharge
-- Uses table: PayChargeLog
-- --------------------------------------------
Insert into PayChargeLog Select * from PayCharge
    WHERE DOCID='<DOCID><Param>;

-- --------------------------------------------
-- Query 7
-- Uses table: PayChargeLog
-- --------------------------------------------
Select Max(SeqNo) From PayChargeLog
    WHERE DOCID='<DOCID>';

-- --------------------------------------------
-- Query 8
-- Uses table: PAYCHARGE
-- --------------------------------------------
DELETE FROM PAYCHARGE
    WHERE DOCID='<DOCID><Param>;

-- --------------------------------------------
-- Query 9
-- Uses table: City
-- Uses table: FOMBillDetails
-- Uses table: GuestFolio
-- Uses table: State
-- Uses table: Subgroup
-- --------------------------------------------
SELECT G.DocId,S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS CompName,S.LegalName,S.TradeName,S.Add1 CompAdd1,S.Add2 CompAdd2,S.Add3 CompAdd3,CC.CityName,CS.ShortName StateCode,CS.Name CompState,S.GSTIN,S.PIN,S.EMail,S.Mobile,F.Bill_Date,F.Bill_No FROM GuestFolio G
    left joIn Subgroup S on G.Company=S.Subcode
    Left Join FOMBillDetails F On G.DocId=F.FolioNoDocid
    Left Join City CC On CC.CityCode=S.CityCode
    Left Join State CS On CS.Code=CC.State
    Where G.Docid='<Docid>';

-- --------------------------------------------
-- Query 10
-- Uses table: RoundOffSetting
-- --------------------------------------------
SELECT RoundOffType FROM RoundOffSetting
    WHERE ModuleName='Guest Bill' And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 11
-- Uses table: eInvoiceBill1
-- --------------------------------------------
Select Count(*) From eInvoiceBill1
    Where DocId='<DocId>' And Isnull(IRN,'')='';

-- --------------------------------------------
-- Query 12
-- Uses table: eInvoiceBill1
-- --------------------------------------------
Delete From eInvoiceBill1
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 13
-- Uses table: eInvoiceBill2
-- --------------------------------------------
Delete From eInvoiceBill2
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 14
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 15
-- Uses table: PrinterSetup
-- --------------------------------------------
Select * from PrinterSetup
    Where RestCode='<LogSiteCode>FOM';

-- --------------------------------------------
-- Query 16
-- Uses table: Subgroup
-- --------------------------------------------
Select Name From Subgroup
    where Subcode='<Subcode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [FOMBillDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolio]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [PayChargeLog]  NOT present in visahl.sql dump (schema unknown)
-- Table [PrinterSetup]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoundOffSetting]  NOT present in visahl.sql dump (schema unknown)
-- Table [State]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Prefix]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [eInvoiceBill1]  NOT present in visahl.sql dump (schema unknown)
-- Table [eInvoiceBill2]  NOT present in visahl.sql dump (schema unknown)
-- Table [paycharge]  NOT present in visahl.sql dump (schema unknown)
