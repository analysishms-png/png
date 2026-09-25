# ==========================================================
# Module: RsTouchScreenBookingEntry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ItemGrp
-- --------------------------------------------
Select Name,Code from ItemGrp
    Where RestCode='<RestCode>' And (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    Order by Name;

-- --------------------------------------------
-- Query 2
-- Uses table: Depart
-- --------------------------------------------
Select Name From Depart
    Where Code ='<Code>';

-- --------------------------------------------
-- Query 3
-- Uses table: depart
-- --------------------------------------------
Select KOtYn from depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: Voucher_Type
-- --------------------------------------------
Select Description,V_Type From Voucher_Type
    Where RestCode='<RestCode>' and logSite_Code='<LogSiteCode>' and Site_Code='<Site_Code>' and NCat='ORDER';

-- --------------------------------------------
-- Query 5
-- Uses table: PackingOrderDetail
-- --------------------------------------------
Delete From PackingOrderDetail
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 6
-- Uses table: PackingOrder
-- --------------------------------------------
Delete From PackingOrder
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 7
-- Uses table: PackingOrder
-- --------------------------------------------
Select CustName,Addr1,Addr2 from PackingOrder
    Where PhoneNo='<PhoneNo>';

-- --------------------------------------------
-- Query 8
-- Uses table: PackingOrderDetail
-- --------------------------------------------
Select Distinct DocId,VType,BNo From PackingOrderDetail
    Where ContraDocId='<ContraDocId>';

-- --------------------------------------------
-- Query 9
-- Uses table: PackingOrder
-- --------------------------------------------
Select P.* From PackingOrder P
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 10
-- Uses table: RoundOffSetting
-- --------------------------------------------
Select RoundOfftype from RoundOffSetting
    where logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 11
-- Uses table: DEPART
-- --------------------------------------------
Select R.HEADER1,R.HEADER2,R.COMPANYTITLE From DEPART R
    Where R.CODE='<CODE>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [DEPART]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemGrp]  NOT present in visahl.sql dump (schema unknown)
-- Table [PackingOrder]  NOT present in visahl.sql dump (schema unknown)
-- Table [PackingOrderDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoundOffSetting]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
