# ==========================================================
# Module: FrmRevenueWiseBudget
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: BUDGETDETAILS
-- --------------------------------------------
SELECT B.Month_Year As SearchCode FROM BUDGETDETAILS B
    ORDER BY MONTH_YEAR,SNO;

-- --------------------------------------------
-- Query 2
-- Uses table: BudgetDetails
-- --------------------------------------------
Select * from BudgetDetails
    where Month_year='<Month_year>'
    Order by Month_Year,SNO;

-- --------------------------------------------
-- Query 3
-- Uses table: RevMast
-- --------------------------------------------
SELECT Name,Code From RevMast
    WHERE (FlagAMR = 'Header') AND (FlagType = 'POS') AND (Type = 'Cr') AND LOGSITE_CODE='<LogSiteCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [BUDGETDETAILS]  NOT present in visahl.sql dump (schema unknown)
-- Table [BudgetDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
