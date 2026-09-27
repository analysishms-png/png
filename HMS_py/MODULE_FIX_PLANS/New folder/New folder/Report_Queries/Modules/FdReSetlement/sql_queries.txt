# ==========================================================
# Module: FdReSetlement
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: RoomOcc
-- --------------------------------------------
Select Top 1 RoomNo From RoomOcc
    Where Docid='<Docid>'
    Order By Sno Desc;

-- --------------------------------------------
-- Query 2
-- Uses table: enviro
-- --------------------------------------------
Select NCUR from enviro
    where LogSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: depart
-- --------------------------------------------
Select Name,ShortName from depart
    where code='<LogSiteCode>FOM';

-- --------------------------------------------
-- Query 4
-- Uses table: RevMast
-- --------------------------------------------
Select ShortName From RevMast
    where code='<code>'<Param>;

-- --------------------------------------------
-- Query 5
-- Uses table: RoomOcc
-- --------------------------------------------
SELECT IsNull(Max(RoomOcc.RoomNo),'') From RoomOcc
    WHERE (RoomOcc.LOGSITE_CODE='<LogSiteCode>') AND CHKOUTDATE IS NULL And DOCID='<DOCID><Param>;

-- --------------------------------------------
-- Query 6
-- Uses table: PayCharge
-- Uses table: Voucher_Prefix
-- --------------------------------------------
Select * From PayCharge
    Where DocId='<DocId>' And SNo=1 And FolioNoDocid='Update Voucher_Prefix
    Set Start_Srl_No=<Start_Srl_No>
    Where (SITE_CODE='';

-- --------------------------------------------
-- Query 7
-- Uses table: REVMAST
-- --------------------------------------------
SELECT * FROM REVMAST
    WHERE CODE='<CODE>';

-- --------------------------------------------
-- Query 8
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select sum(TaxStru.Rate) as Rate from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='<Code>'
    Group By Nature;

-- --------------------------------------------
-- Query 9
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode as Code,Name From SubGroup
    where ActiveYN=1 and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate','Travel Agency')
    Order By Name;

-- --------------------------------------------
-- Query 10
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 11
-- Uses table: Employee
-- --------------------------------------------
SELECT Code,Name FROM Employee
    WHERE (LOGSITE_CODE='<LogSiteCode>')
    ORDER BY Name;

-- --------------------------------------------
-- Query 12
-- Uses table: MemCatMast
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode as Code,Name From SubGroup
    where ActiveYN=1 and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast
    where LogSite_Code='<LogSiteCode>')
    Order By Name;

-- --------------------------------------------
-- Query 13
-- Uses table: BillDet
-- Uses table: GuestFolio
-- Uses table: Guestprof
-- --------------------------------------------
Select BillDet.Bill_No ,BillDet.BillSettleDate as SettleDate,BillDet.Folio_NO as FolioNo,GuestProf.Name as GuestName,GuestFolio.Docid as FolioNoDocid from BillDet
    inner join Guestprof on BillDet.GuestProf=GuestProf.code
    Inner Join GuestFolio on GuestFolio.docid=BillDet.FolioNodocid
    Where BillDet.BillSettleDate between <Param> And <Param> and BillDet.LogSite_Code='<LogSite_Code>'
    order by Bill_No;

-- --------------------------------------------
-- Query 14
-- Uses table: BillDet
-- Uses table: GuestFolio
-- Uses table: Guestprof
-- --------------------------------------------
Select BillDet.Bill_No ,BillDet.BillSettleDate as SettleDate,BillDet.Folio_NO as FolioNo,GuestProf.Name as GuestName,GuestFolio.Docid as FolioNoDocid from BillDet
    inner join Guestprof on BillDet.GuestProf=GuestProf.code
    Inner Join GuestFolio on GuestFolio.Docid=BillDet.FolioNoDocid
    Where BillDet.BillSettleDate=<BillSettleDate> and BillDet.LogSite_Code='<LogSite_Code>'
    order by Bill_No;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [BillDet]  NOT present in visahl.sql dump (schema unknown)
-- Table [Employee]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [Guestprof]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemCatMast]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Prefix]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [taxstru]  NOT present in visahl.sql dump (schema unknown)
