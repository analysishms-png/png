# ==========================================================
# Module: FaTDSChal
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Voucher_Type
-- --------------------------------------------
Select Description From Voucher_Type
    Where NCat='TDSCH' AND SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: LEDGERTDS
-- --------------------------------------------
UPDATE LEDGERTDS
    SET TDSPOST=''
    WHERE TDSDocId='<TDSDocId>' AND TDSV_Sno=<TDSV_Sno>;

-- --------------------------------------------
-- Query 3
-- Uses table: LEDGERTDS
-- --------------------------------------------
UPDATE LEDGERTDS
    SET TDSPOST='Y'
    WHERE TDSDocId='UPDATE LEDGERTDS
    SET TDSPOST=''
    WHERE TDSDocId='<TDSDocId>' AND TDSV_Sno=<TDSV_Sno>' AND TDSV_Sno=<TDSV_Sno><Param>;

-- --------------------------------------------
-- Query 4
-- Uses table: LEDGERTDS
-- --------------------------------------------
UPDATE LEDGERTDS
    SET TDSPOST='Y'
    WHERE TDSDocId='UPDATE LEDGERTDS
    SET TDSPOST=''
    WHERE TDSDocId='<TDSDocId>' AND TDSV_Sno=<TDSV_Sno>' AND LOGSITE_CODE='<LogSiteCode>'
    GROUP BY TDSCODE;

-- --------------------------------------------
-- Query 5
-- Uses table: VOUCHER_Prefix
-- --------------------------------------------
UPDATE VOUCHER_Prefix
    SET Start_Srl_No=<Start_Srl_No>
    WHERE V_Type='<V_Type>' and Prefix='<Prefix>' AND SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: LEDGERTDS
-- Uses table: SUBGROUP
-- --------------------------------------------
Select TDSCHAL1.*,SUBGROUP.NAME AS ACNAME,LEDGERTDS.DOCID AS LDOCID,LEDGERTDS.V_SNO AS LV_SNO,LEDGERTDS.V_DATE AS LV_DATE From (TDSCHAL1
    LEFT Join SUBGROUP on SUBGROUP.SUBCODE=TDSCHAL1.ACCODE)
    LEFT JOIN LEDGERTDS ON (TDSCHAL1.TDSVSno=LEDGERTDS.TDSV_SNo) AND (TDSCHAL1.TDSDocId=LEDGERTDS.TDSDocId)
    WHERE TDSCHAL1.DOCID='<DOCID>'
    ORDER BY VSNO;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [LEDGERTDS]  NOT present in visahl.sql dump (schema unknown)
-- Table [SUBGROUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [VOUCHER_Prefix]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
