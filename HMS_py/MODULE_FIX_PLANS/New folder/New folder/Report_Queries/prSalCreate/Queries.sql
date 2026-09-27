# ==========================================================
# Module: prSalCreate
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Employee
-- Uses table: Salary
-- --------------------------------------------
Select Count(*) From Salary
    Where LOGSITE_CODE='<LogSiteCode>' AND Mth_Year='<Mth_Year>' And Emp_Code In (Select Code From Employee
    Where site_code='<LogSiteCode>' And Department='<Department>');

-- --------------------------------------------
-- Query 2
-- Uses table: Employee
-- --------------------------------------------
SELECT IncrMth, Basic, Increment FROM Employee
    WHERE Code='<Code><Param>';

-- --------------------------------------------
-- Query 3
-- Uses table: Employee
-- --------------------------------------------
SELECT IncrMth, Basic, Increment FROM Employee
    WHERE Code='<Code>' AND IncrMth='<IncrMth>';

-- --------------------------------------------
-- Query 4
-- Uses table: Loan
-- --------------------------------------------
Select IsNull(Sum(Amount),0) From Loan
    Where V_Type In('AR1','AR2') AND Emp_Code='<Emp_Code>' and V_Date<=<Param>;

-- --------------------------------------------
-- Query 5
-- Uses table: Loan
-- --------------------------------------------
Select IsNull(Sum(Amount),0) From Loan
    Where LOGSITE_CODE='<LogSiteCode>' and V_Type='AR2';

-- --------------------------------------------
-- Query 6
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP
    WHERE SUBCODE='<SUBCODE>';

-- --------------------------------------------
-- Query 7
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP
    WHERE SUBCODE='<SUBCODE><Param>';

-- --------------------------------------------
-- Query 8
-- Uses table: Salary
-- --------------------------------------------
Select * From Salary
    Where Emp_COde='<Emp_COde>' and Mth_Year='<Mth_Year>';

-- --------------------------------------------
-- Query 9
-- Uses table: Employee
-- Uses table: Salary
-- --------------------------------------------
Select * From Salary
    Where Logsite_code='<LogSiteCode>' and Mth_Year='<Mth_Year>' And Emp_Code In (Select Code From Employee
    Where site_code='<LogSiteCode>' And Department='<Department>');

-- --------------------------------------------
-- Query 10
-- Uses table: Employee
-- Uses table: Salary
-- --------------------------------------------
Delete From Salary
    Where Logsite_code='<LogSiteCode>' and Mth_Year='<Mth_Year>' And Emp_Code In (Select Code From Employee
    Where site_code='<LogSiteCode>' And Department='<Department>');

-- --------------------------------------------
-- Query 11
-- Uses table: Employee
-- Uses table: Salary
-- --------------------------------------------
Delete From Salary
    Where Logsite_code='<LogSiteCode>' and Mth_Year='<Mth_Year>' And V_Type In('LR1','AR2') And Emp_Code In (Select Code From Employee
    Where site_code='<LogSiteCode>' And Department='<Department>');

-- --------------------------------------------
-- Query 12
-- Uses table: Employee
-- Uses table: Ledger
-- --------------------------------------------
Select * From Ledger
    Where Logsite_code='<LogSiteCode>' and V_Type In('LR1','AR2','SL') And UPpER(mth_year)='<Param>' And Emp_Code In (Select Code From Employee
    Where site_code='<LogSiteCode>' And Department='<Department>');

-- --------------------------------------------
-- Query 13
-- Uses table: Employee
-- Uses table: Ledger
-- --------------------------------------------
Delete From Ledger
    Where Logsite_code='<LogSiteCode>' and V_Type In('LR1','AR2','SL') And UPpER(mth_year)='<Param>' And Emp_Code In (Select Code From Employee
    Where site_code='<LogSiteCode>' And Department='<Department>');



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Employee]  NOT present in visahl.sql dump (schema unknown)
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [Loan]  NOT present in visahl.sql dump (schema unknown)
-- Table [SUBGROUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [Salary]  NOT present in visahl.sql dump (schema unknown)
