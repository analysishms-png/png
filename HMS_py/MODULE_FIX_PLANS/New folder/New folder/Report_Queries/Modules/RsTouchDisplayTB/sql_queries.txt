# ==========================================================
# Module: RsTouchDisplayTB
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Voucher_Type
-- --------------------------------------------
Select V_Type from Voucher_Type
    Where Ncat='ORDER' and RestCode='<RestCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: KOT
-- --------------------------------------------
Select DOCID from KOT
    Where ISNULL(PrintFlag,'')='N' AND Printed<>'Y' AND PENDING='Y' And RestCode='<RestCode>'
    Group By DocId;

-- --------------------------------------------
-- Query 3
-- Uses table: Waiter
-- --------------------------------------------
Select count(*) from Waiter
    where logsite_code='<LogSiteCode>' And ActiveYN='Yes';

-- --------------------------------------------
-- Query 4
-- Uses table: Sale1
-- --------------------------------------------
Select Vtype As VoucherType,RoomNo as TableNo,DocId,RoomCat,RoomType,NetAmt from Sale1
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 5
-- Uses table: Waiter
-- --------------------------------------------
Select W.Name From Waiter W
    wHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and W.code='<code>';

-- --------------------------------------------
-- Query 6
-- Uses table: Waiter
-- --------------------------------------------
Select count(*) from Waiter
    where logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 7
-- Uses table: roommast
-- --------------------------------------------
Select Name from roommast
    where (LOGSITE_CODE='<LogSiteCode>') and TYPE='TB' AND code='<code>';

-- --------------------------------------------
-- Query 8
-- Uses table: Dispcolor
-- --------------------------------------------
delete from Dispcolor
    where [index]=<Param> and Logsite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 9
-- Uses table: DispColor
-- --------------------------------------------
Select * from DispColor;

-- --------------------------------------------
-- Query 10
-- Uses table: Depart
-- --------------------------------------------
Select Order_Booking,Kotyn from Depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 11
-- Uses table: Depart
-- --------------------------------------------
Select Name From Depart
    Where Code ='<Code>';

-- --------------------------------------------
-- Query 12
-- Uses table: KOT
-- --------------------------------------------
Select Count(DOCID) from KOT
    Where ISNULL(PrintFlag,'')='N' AND Printed<>'Y' AND PENDING='Y' And RestCode='<RestCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [DispColor]  NOT present in visahl.sql dump (schema unknown)
-- Table [Dispcolor]  NOT present in visahl.sql dump (schema unknown)
-- Table [KOT]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [Waiter]  NOT present in visahl.sql dump (schema unknown)
-- Table [roommast]  NOT present in visahl.sql dump (schema unknown)
