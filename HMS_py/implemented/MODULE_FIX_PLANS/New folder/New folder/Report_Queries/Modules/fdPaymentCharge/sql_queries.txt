# ==========================================================
# Module: fdPaymentCharge
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode as Code,Name From SubGroup
    where ActiveYN=1 and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate','Travel Agency')
    Order By Name;

-- --------------------------------------------
-- Query 3
-- Uses table: Employee
-- --------------------------------------------
SELECT Code,Name FROM Employee
    WHERE (LOGSITE_CODE='<LogSiteCode>')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: MemCatMast
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode as Code,Name From SubGroup
    where ActiveYN=1 and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast
    where LogSite_Code='<LogSiteCode>')
    Order By Name;

-- --------------------------------------------
-- Query 5
-- Uses table: enviro
-- --------------------------------------------
Select NCUR from enviro
    where LOGsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: depart
-- --------------------------------------------
Select Name,ShortName from depart
    where code='<LogSiteCode>FOM';

-- --------------------------------------------
-- Query 7
-- Uses table: RevMAst
-- --------------------------------------------
Select * From RevMAst
    where code='<code>'<Param>;

-- --------------------------------------------
-- Query 8
-- Uses table: RoomOcc
-- --------------------------------------------
SELECT IsNull(Max(RoomOcc.RoomNo),'') From RoomOcc
    WHERE (RoomOcc.LOGSITE_CODE='<LogSiteCode>') AND CHKOUTDATE IS NULL And DOCID='<DOCID><Param>;

-- --------------------------------------------
-- Query 9
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select sum(TaxStru.Rate) as Rate from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='<Code>'
    Group By Taxstru.Nature;

-- --------------------------------------------
-- Query 10
-- Uses table: REVMAST
-- --------------------------------------------
SELECT * FROM REVMAST
    WHERE CODE='<CODE>';

-- --------------------------------------------
-- Query 11
-- Uses table: GUESTFOLIO
-- Uses table: PAYCHARGE
-- --------------------------------------------
SELECT MAX(P.VNO) AS RECTNO,MAX(P.VDATE) AS RECTDATE,MAX(P.PAYTYPE) AS RECTMODE,MAX(P.AMTCR) AS RECTAMT,MAX(P.ROOMNO) AS ROOMNO,MAX(P.FOLIONO) AS GRCNO,MAX(GP.NAME) AS GUESTNAME,MAX(P.BILL_NO) AS BILLNO,MAX(P.SETTLEDATE) AS SETTLEDATE FROM (GUESTPROF GP
    left join GUESTFOLIO GF ON GF.GUESTPROF=GP.CODE)
    LEFT JOIN PAYCHARGE P ON GF.DOCID=P.FOLIONODOCID
    WHERE P.DOCID IN ('<Param>') AND P.VTYPE='REC'
    Group By P.DocId;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Employee]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [GUESTFOLIO]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [PAYCHARGE]  NOT present in visahl.sql dump (schema unknown)
-- Table [REVMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMAst]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [taxstru]  NOT present in visahl.sql dump (schema unknown)
