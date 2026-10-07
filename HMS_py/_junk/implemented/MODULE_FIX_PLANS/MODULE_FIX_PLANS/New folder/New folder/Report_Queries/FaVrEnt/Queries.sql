# ==========================================================
# Module: FaVrEnt
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: SUBGROUP
-- Uses table: VOUCHER_TYPE
-- --------------------------------------------
SELECT SUBGROUP.NAME,LEDGER.SubCode,LEDGER.Narration,LEDGER.AmtCr FROM (LEDGER
    LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE)
    LEFT JOIN VOUCHER_TYPE ON VOUCHER_TYPE.V_tYPE=LEDGER.V_TYPE
    WHERE LEDGER.DOCID='<DOCID>' And SUBGROUP.Nature='Bank' And LEDGER.AmtCr>0
    ORDER BY LEDGER.V_SNO;

-- --------------------------------------------
-- Query 2
-- Uses table: SUBGROUP
-- Uses table: VOUCHER_TYPE
-- --------------------------------------------
SELECT SUBGROUP.NAME,LEDGER.SubCode,LEDGER.Narration,LEDGER.AmtDr FROM (LEDGER
    LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE)
    LEFT JOIN VOUCHER_TYPE ON VOUCHER_TYPE.V_tYPE=LEDGER.V_TYPE
    WHERE LEDGER.DOCID='<DOCID>' And LEDGER.AmtDr>0
    ORDER BY LEDGER.V_SNO;

-- --------------------------------------------
-- Query 3
-- Uses table: VOUCHER_TYPE
-- --------------------------------------------
SELECT V_TYPE,DESCRIPTION FROM VOUCHER_TYPE
    WHERE Category='FA' AND SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='<LogSiteCode>'
    ORDER BY DESCRIPTION;

-- --------------------------------------------
-- Query 4
-- Uses table: FAENVIRO
-- --------------------------------------------
SELECT * FROM FAENVIRO
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 5
-- Uses table: LastVoucher
-- --------------------------------------------
SELECT DOCID FROM LastVoucher
    where SITE_cODE='<SITE_cODE>' AND LOGSITE_CODE='<LogSiteCode>' AND U_Name='<UserName>'
    ORDER BY U_EntDt DESC;

-- --------------------------------------------
-- Query 6
-- Uses table: LEDGERTDS
-- --------------------------------------------
SELECT * FROM LEDGERTDS
    WHERE DOCID='<DOCID>';

-- --------------------------------------------
-- Query 7
-- Uses table: LEDGER
-- --------------------------------------------
SELECT * FROM LEDGER
    WHERE DOCID='<DOCID>';

-- --------------------------------------------
-- Query 8
-- Uses table: LEDGER
-- --------------------------------------------
DELETE FROM LEDGER
    WHERE DOCID='<DOCID>';

-- --------------------------------------------
-- Query 9
-- Uses table: LEDGERM
-- --------------------------------------------
DELETE FROM LEDGERM
    WHERE DocID='<DocID>';

-- --------------------------------------------
-- Query 10
-- Uses table: LEDGERADJ
-- --------------------------------------------
DELETE FROM LEDGERADJ
    WHERE DocID1='<DocID1>' OR DocID2='<DocID2>';

-- --------------------------------------------
-- Query 11
-- Uses table: LEDGERREF
-- --------------------------------------------
DELETE FROM LEDGERREF
    WHERE DocID='<DocID>';

-- --------------------------------------------
-- Query 12
-- Uses table: ViewSubgroup
-- --------------------------------------------
Select SubCode,NameWithCity AS Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES From ViewSubgroup
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 13
-- Uses table: ViewSubgroup
-- --------------------------------------------
Select SubCode,Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES From ViewSubgroup
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 14
-- Uses table: LEDGERM
-- --------------------------------------------
SELECT DOCID,SITE_CODE,LOGSITE_CODE FROM LEDGERM
    WHERE DOCID='<DOCID>';

-- --------------------------------------------
-- Query 15
-- Uses table: SUBGROUPCURRBAL
-- --------------------------------------------
SELECT SUBCODE,SUM(CURR_BAL) AS CURRBAL FROM SUBGROUPCURRBAL
    GROUP BY SUBCODE
    ORDER BY SUBCODE;

-- --------------------------------------------
-- Query 16
-- Uses table: LEDGERADJ
-- --------------------------------------------
SELECT * FROM LEDGERADJ
    WHERE DOCID1='<DOCID1>' AND V_SNo1=<V_SNo1>;

-- --------------------------------------------
-- Query 17
-- Uses table: LEDGERADJ
-- --------------------------------------------
SELECT * FROM LEDGERADJ
    WHERE DOCID2='<DOCID2>' AND V_SNo2=<V_SNo2>;

-- --------------------------------------------
-- Query 18
-- Uses table: LedgerRef
-- --------------------------------------------
SELECT * FROM LedgerRef
    WHERE DOCID='<DOCID>' AND V_SNo=<V_SNo>;

-- --------------------------------------------
-- Query 19
-- Uses table: LEDGERTDS
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT LEDGERTDS.*,SUBGROUP.NAME AS TDSNAME FROM LEDGERTDS
    LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGERTDS.TDSCODE
    WHERE DOCID='<DOCID>' AND V_SNo=<V_SNo>;

-- --------------------------------------------
-- Query 20
-- Uses table: LEDGER
-- --------------------------------------------
SELECT * FROM LEDGER
    WHERE DOCID='<DOCID>' AND V_SNo=<V_SNo>;

-- --------------------------------------------
-- Query 21
-- Uses table: ledger
-- --------------------------------------------
SELECT MAX(V_NO) as vno from ledger
    WHERE V_TYPE='<V_TYPE>' AND V_PREFIX='<V_PREFIX>';

-- --------------------------------------------
-- Query 22
-- Uses table: LEDGERM
-- --------------------------------------------
SELECT COUNT(*) FROM LEDGERM
    WHERE DocId='<DocId>';

-- --------------------------------------------
-- Query 23
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT GROUPCODE FROM SUBGROUP
    WHERE SUBCODE=<SUBCODE>;

-- --------------------------------------------
-- Query 24
-- Uses table: VOUCHER_TYPE
-- --------------------------------------------
SELECT * FROM VOUCHER_TYPE
    WHERE NCAT='TDS' AND site_Code='<site_Code>' AND LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 25
-- Uses table: LEDGER
-- --------------------------------------------
SELECT Max(V_NO) AS VNO FROM LEDGER
    WHERE V_TYPE='<V_TYPE>' AND V_PREFIX='<V_PREFIX>' AND SITE_CODE='<SITE_CODE>';

-- --------------------------------------------
-- Query 26
-- Uses table: LEDGER
-- --------------------------------------------
SELECT * FROM LEDGER
    WHERE DocId='<DocId>';

-- --------------------------------------------
-- Query 27
-- Uses table: LEDGER
-- --------------------------------------------
DELETE FROM LEDGER
    WHERE DocId='<DocId>';

-- --------------------------------------------
-- Query 28
-- Uses table: LEDGERTDS
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT TDSCODE,TDSAMT,V_DATE,GROUPCODE,TDSDRCODE,TDSDocId FROM LEDGERTDS
    LEFT JOIN SUBGROUP ON LEDGERTDS.TDSCODE=SUBGROUP.SUBCODE
    WHERE DOCID='<DOCID>';

-- --------------------------------------------
-- Query 29
-- Uses table: LEDGERTDS
-- --------------------------------------------
DELETE FROM LEDGERTDS
    WHERE DocId='<DocId>';

-- --------------------------------------------
-- Query 30
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP
    WHERE SUBCODE='<SUBCODE>';

-- --------------------------------------------
-- Query 31
-- Uses table: LEDGERAdj
-- --------------------------------------------
DELETE FROM LEDGERAdj
    WHERE DocId1='<DocId1>' OR DocId2='<DocId2>';

-- --------------------------------------------
-- Query 32
-- Uses table: LedgerRef
-- --------------------------------------------
DELETE FROM LedgerRef
    WHERE DocId='<DocId>';

-- --------------------------------------------
-- Query 33
-- Uses table: LedgerRef
-- --------------------------------------------
SELECT MAX(ID) AS MaxId FROM LedgerRef;

-- --------------------------------------------
-- Query 34
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP
    WHERE SUBCODE='dd/MMM/yyyy';

-- --------------------------------------------
-- Query 35
-- Uses table: Ledger
-- Uses table: LedgerLog
-- --------------------------------------------
Insert Into LedgerLog Select * From Ledger
    Where DocId ='<DocId>';

-- --------------------------------------------
-- Query 36
-- Uses table: LedgerM
-- Uses table: LedgerMLog
-- --------------------------------------------
Insert Into LedgerMLog Select * From LedgerM
    Where DocId ='<DocId>';

-- --------------------------------------------
-- Query 37
-- Uses table: LedgerM
-- Uses table: LedgerMLog
-- --------------------------------------------
Insert Into LedgerMLog Select * From LedgerM
    Where DocId ='<DocId>')
    Where DocId ='<DocId>' And IsNull(SeqNo,0)=0;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [FAENVIRO]  NOT present in visahl.sql dump (schema unknown)
-- Table [LEDGER]  NOT present in visahl.sql dump (schema unknown)
-- Table [LEDGERADJ]  NOT present in visahl.sql dump (schema unknown)
-- Table [LEDGERAdj]  NOT present in visahl.sql dump (schema unknown)
-- Table [LEDGERM]  NOT present in visahl.sql dump (schema unknown)
-- Table [LEDGERREF]  NOT present in visahl.sql dump (schema unknown)
-- Table [LEDGERTDS]  NOT present in visahl.sql dump (schema unknown)
-- Table [LastVoucher]  NOT present in visahl.sql dump (schema unknown)
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [LedgerLog]  NOT present in visahl.sql dump (schema unknown)
-- Table [LedgerM]  NOT present in visahl.sql dump (schema unknown)
-- Table [LedgerMLog]  NOT present in visahl.sql dump (schema unknown)
-- Table [LedgerRef]  NOT present in visahl.sql dump (schema unknown)
-- Table [SUBGROUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [SUBGROUPCURRBAL]  NOT present in visahl.sql dump (schema unknown)
-- Table [VOUCHER_TYPE]  NOT present in visahl.sql dump (schema unknown)
-- Table [ViewSubgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [ledger]  NOT present in visahl.sql dump (schema unknown)
