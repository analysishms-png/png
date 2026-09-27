# ==========================================================
# Module: PrLoan
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: employee
-- --------------------------------------------
Select Joining_date from employee
    where code='<code>';

-- --------------------------------------------
-- Query 2
-- Uses table: employee
-- --------------------------------------------
Select Resign_date from employee
    where code='<code>';

-- --------------------------------------------
-- Query 3
-- Uses table: EMPLOYEE
-- --------------------------------------------
SELECT IIF(ISNULL(OP_Loan),0,OP_Loan) FROM EMPLOYEE
    WHERE CODE='<CODE>';

-- --------------------------------------------
-- Query 4
-- Uses table: EMPLOYEE
-- --------------------------------------------
SELECT ISNULL(OP_Loan,0) FROM EMPLOYEE
    WHERE CODE='<CODE>';

-- --------------------------------------------
-- Query 5
-- Uses table: EMPLOYEE
-- --------------------------------------------
SELECT IIF(ISNULL(OP_Inst),0,OP_Inst) FROM EMPLOYEE
    WHERE CODE='<CODE>';

-- --------------------------------------------
-- Query 6
-- Uses table: EMPLOYEE
-- --------------------------------------------
SELECT ISNULL(OP_Inst,0) FROM EMPLOYEE
    WHERE CODE='<CODE>';

-- --------------------------------------------
-- Query 7
-- Uses table: EMPLOYEE
-- --------------------------------------------
SELECT IIF(ISNULL(OP_ADVANCE),0,OP_aDVANCE) FROM EMPLOYEE
    WHERE CODE='<CODE>';

-- --------------------------------------------
-- Query 8
-- Uses table: EMPLOYEE
-- --------------------------------------------
SELECT ISNULL(OP_ADVANCE,0) FROM EMPLOYEE
    WHERE CODE='<CODE>';

-- --------------------------------------------
-- Query 9
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT SUBCODE as Code, NAME FROM SUBGROUP
    WHERE NATURE IN ('Cash','Bank')
    ORDER BY NAME;

-- --------------------------------------------
-- Query 10
-- Uses table: Depart
-- Uses table: Desig
-- Uses table: Employee
-- --------------------------------------------
Select Employee.Code,Employee.Name,IsNull(Depart.Name,'') As Department,Desig.Name As Designation From Employee
    Left Join Depart On Depart.Code=Employee.Department
    Left Join Desig on Desig.Code=Employee.Designation
    Where Employee.Site_Code='<LogSiteCode>'
    Order by Employee.Name;

-- --------------------------------------------
-- Query 11
-- Uses table: Depart
-- Uses table: Desig
-- Uses table: Employee
-- Uses table: SubGroup
-- --------------------------------------------
SELECT LOAN.SR_NO AS SEARCHCODE,LOAN.*,Employee.Name as EmpName,SG.Name as AcName,IsNull(Depart.Name,'') As Department,Desig.Name As Designation FROM ((LOAN
    Left join Employee on Employee.Code=Loan.Emp_Code)
    Left Join SubGroup SG on SG.SubCode=Loan.AC_Code)
    Left Join Depart On Depart.Code=Employee.Department
    Left Join Desig on Desig.Code=Employee.Designation
    WHERE Loan.site_code='<site_code>' and MTH_YEAR IS NULL OR MTH_YEAR=' '
    ORDER BY <Param>;

-- --------------------------------------------
-- Query 12
-- Uses table: EMPLOYEE
-- Uses table: Voucher_Prefix
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT ISNULL(OP_Loan,0) FROM EMPLOYEE
    WHERE CODE='Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT
    Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE)
    Where (VP.SITE_CODE='<SITE_CODE>';

-- --------------------------------------------
-- Query 13
-- Uses table: EMPLOYEE
-- Uses table: Voucher_Prefix
-- Uses table: Voucher_Type
-- --------------------------------------------
SELECT ISNULL(OP_Inst,0) FROM EMPLOYEE
    WHERE CODE='Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT
    Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE)
    Where (VP.SITE_CODE='<SITE_CODE>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Desig]  NOT present in visahl.sql dump (schema unknown)
-- Table [EMPLOYEE]  NOT present in visahl.sql dump (schema unknown)
-- Table [Employee]  NOT present in visahl.sql dump (schema unknown)
-- Table [SUBGROUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Prefix]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [employee]  NOT present in visahl.sql dump (schema unknown)
