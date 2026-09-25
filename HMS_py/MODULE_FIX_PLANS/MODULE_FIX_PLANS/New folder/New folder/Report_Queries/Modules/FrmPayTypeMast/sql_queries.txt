# ==========================================================
# Module: FrmPayTypeMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: REVMAST
-- --------------------------------------------
Delete From REVMAST
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: DepartPay
-- --------------------------------------------
Delete From DepartPay
    Where PayCode='<PayCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: REVMAST
-- Uses table: Subgroup
-- --------------------------------------------
SELECT P.*,P.Code as SearchCode,S.SubCode as LedgerCode,S.Name as LedgerName FROM REVMAST P
    Left join Subgroup S on S.SubCode=P.ACCode
    WHERE (P.LOGSITE_CODE='<LogSiteCode>' or P.LOGSITE_CODE='HO') and PayType<>'' AND PayType IS NOT NULL;

-- --------------------------------------------
-- Query 4
-- Uses table: CreditCardhistory
-- --------------------------------------------
Delete from CreditCardhistory
    where RevCode='<RevCode>';

-- --------------------------------------------
-- Query 5
-- Uses table: REVMAST
-- --------------------------------------------
SELECT Code,Name FROM REVMAST
    WHERE PayType<>'' AND PayType IS NOT NULL AND (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 6
-- Uses table: SubGroup
-- --------------------------------------------
SELECT SubCode as Code,Name FROM SubGroup
    WHERE ActiveYN=1 and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 7
-- Uses table: taxstru
-- --------------------------------------------
SELECT Distinct Code,Name FROM taxstru
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 8
-- Uses table: REVMAST
-- Uses table: Subgroup
-- --------------------------------------------
SELECT P.*,P.Code as SearchCode,S.SubCode as LedgerCode,S.Name as LedgerName,PayType AS CCARD FROM REVMAST P
    Left join Subgroup S on S.SubCode=P.ACCode
    WHERE PayType<>'' AND PayType IS NOT NULL AND (P.LOGSITE_CODE='<LogSiteCode>' or P.LOGSITE_CODE='HO')
    order by P.Name;

-- --------------------------------------------
-- Query 9
-- Uses table: MenuHelp
-- --------------------------------------------
Select [Option] Name,Flag,module_name from MenuHelp
    Where [Option] ='Banquet' and Flag='N';

-- --------------------------------------------
-- Query 10
-- Uses table: DepartPay
-- --------------------------------------------
Delete From DepartPay
    Where PayCode='<PayCode>' And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 11
-- Uses table: revmast
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From revmast
    where Code='<Code>';

-- --------------------------------------------
-- Query 12
-- Uses table: SubGroup
-- Uses table: TaxStru
-- --------------------------------------------
Select SubGroup.Name,TaxStru.Name as Tstru,TaxStru,CommAc,CommPer,AppDate,CreditCardHistory.Limit,CreditCardHistory.CompOperator,CreditCardHistory.Limit1 from (CreditCardHistory
    inner join SubGroup on SubGroup.SubCode=CreditCardHistory.CommAc)
    inner join TaxStru on Taxstru.Code=CreditCardHistory.TaxStru
    where Sno=1 and Revcode='<Revcode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [CreditCardhistory]  NOT present in visahl.sql dump (schema unknown)
-- Table [DepartPay]  NOT present in visahl.sql dump (schema unknown)
-- Table [MenuHelp]  NOT present in visahl.sql dump (schema unknown)
-- Table [REVMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [taxstru]  NOT present in visahl.sql dump (schema unknown)
