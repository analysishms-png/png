# ==========================================================
# Module: FrmMergeCharge
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: RoomOcc
-- --------------------------------------------
Select DocId,FolioNo From RoomOcc
    Where RTrim(LTrim(RoomOcc.RoomNo))='<Param>' And (Roomocc.Type Not in ('C','O') OR Roomocc.Type is Null);

-- --------------------------------------------
-- Query 2
-- Uses table: paycharge
-- --------------------------------------------
Select * from paycharge
    where (ContraDocId is NULL or contradocid='') and folionoDocid='<folionoDocid>'
    order by vDate,VTIME,VNO,SNO;

-- --------------------------------------------
-- Query 3
-- Uses table: GuestProf
-- Uses table: PayCharge
-- --------------------------------------------
SELECT PayCharge.RoomNo AS [S All], PayCharge.RoomNo, PayCharge.RoomType, convert(Varchar(11),PayCharge.VDate) AS [Dept Date], PayCharge.Comments, PayCharge.PayType, PayCharge.AmtCr AS Credit, PayCharge.AmtDr AS Debit, PayCharge.TipAmt, GuestProf.Name As [Guest Name], PayCharge.FolioNo, PayCharge.FolioNoDocid, PayCharge.VTime From PayCharge
    Left Join GuestProf on guestprof.code=paycharge.guestProf <Param>
    ORDER BY PayCharge.RoomNo, PayCharge.Vdate, PayCharge.Vtime;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [GuestProf]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [paycharge]  NOT present in visahl.sql dump (schema unknown)
