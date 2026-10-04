# ==========================================================
# Module: MemAutoSettleCardBalance
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Depart
-- --------------------------------------------
SELECT Code,Name,RestType,DiscApp FROM Depart
    Where Code<>'<LogSiteCode>RS' And (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen')
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: MemCatMast
-- Uses table: SmartCardRegistration
-- Uses table: SubGroup
-- --------------------------------------------
Select SC.Code,SC.CardNo,SC.Name,SC.SerialNo,SC.CurrBal,SC.SecurBal,S.Name MemberName,M.Name MemCategory From SmartCardRegistration SC
    Left Join SubGroup S On SC.MemberCode=S.SubCode
    Inner Join MemCatMast M On S.CompanyType=M.Code
    Where (SC.LOGSITE_CODE='<LogSiteCode>' or SC.LOGSITE_CODE='HO') And S.ActiveYN = 0 And (CurrBal <> 0 Or SecurBal <> 0);



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SmartCardRegistration]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
