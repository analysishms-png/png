# ==========================================================
# Module: fdDisplayFolio
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: UserPermission
-- --------------------------------------------
SELECT DeleteGuestCharges FROM UserPermission
    WHERE LOGSITE_CODE='<LogSiteCode>' And CompCode='<CompCode>' And UserName='<UserName>';

-- --------------------------------------------
-- Query 2
-- Uses table: Enviro
-- --------------------------------------------
Select GuestChargesDeleteLog from Enviro
    where logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: Depart
-- --------------------------------------------
Select Count(*) From (PayCharge P
    Left Join Depart D On P.RestCode=D.Code)
    Where ISNull(P.RestCode,'')<>'' And P.DocId='<DocId>' And ISNull(D.RestType,'') In('Room Service','Outlet')<Param>;

-- --------------------------------------------
-- Query 4
-- Uses table: PayCharge
-- Uses table: PayChargeLog
-- --------------------------------------------
Insert into PayChargeLog Select * from PayCharge
    WHERE DOCID='<DOCID><Param>;

-- --------------------------------------------
-- Query 5
-- Uses table: PayChargeLog
-- --------------------------------------------
Select Max(SeqNo) From PayChargeLog
    WHERE DOCID='<DOCID>';

-- --------------------------------------------
-- Query 6
-- Uses table: PAYCHARGE
-- --------------------------------------------
DELETE FROM PAYCHARGE
    WHERE DOCID='<DOCID><Param>;

-- --------------------------------------------
-- Query 7
-- Uses table: PayCharge
-- Uses table: PayChargeLog
-- --------------------------------------------
Insert into PayChargeLog Select * from PayCharge
    WHERE DOCID='<DOCID><Param><Param> And isnull(bill_no,'')='';

-- --------------------------------------------
-- Query 8
-- Uses table: PAYCHARGE
-- --------------------------------------------
DELETE FROM PAYCHARGE
    WHERE DOCID='<DOCID>' AND SNO=<SNO> And isnull(bill_no,'')='';

-- --------------------------------------------
-- Query 9
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 10
-- Uses table: RoomOcc
-- --------------------------------------------
Select * from RoomOcc
    Where DocId='<DocId>' And SNo=1;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [UserPermission]  NOT present in visahl.sql dump (schema unknown)
