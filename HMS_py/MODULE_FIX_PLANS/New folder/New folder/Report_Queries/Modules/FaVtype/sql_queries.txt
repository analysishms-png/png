# ==========================================================
# Module: FaVtype
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Voucher_Prefix
-- --------------------------------------------
Delete From Voucher_Prefix
    Where V_Type='<V_Type>' AND SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 2
-- Uses table: Voucher_Include
-- --------------------------------------------
Delete From Voucher_Include
    Where V_Type='<V_Type>' AND SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 3
-- Uses table: Voucher_Exclude
-- --------------------------------------------
Delete From Voucher_Exclude
    Where V_Type='<V_Type>' AND SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 4
-- Uses table: Voucher_Type
-- --------------------------------------------
Delete From Voucher_Type
    Where V_Type='<V_Type>' AND SITE_CODE='<SITE_CODE>' AND LOGSITE_CODE='<LOGSITE_CODE>';

-- --------------------------------------------
-- Query 5
-- Uses table: Voucher_Type
-- --------------------------------------------
Select V_Type,U_AE,U_Name,U_Entdt From Voucher_Type
    Where V_Type='<V_Type>';

-- --------------------------------------------
-- Query 6
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT NAME FROM SUBGROUP
    WHERE SUBCODE='<SUBCODE>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [SUBGROUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Exclude]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Include]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Prefix]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
