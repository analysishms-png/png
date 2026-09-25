# ==========================================================
# Module: PrEmployee
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Salary
-- --------------------------------------------
Delete From Salary
    Where Site_code='<Site_code>' And Emp_Code='<Emp_Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: Attend
-- --------------------------------------------
Delete From Attend
    Where Site_code='<Site_code>' And Emp_Code='<Emp_Code>';

-- --------------------------------------------
-- Query 3
-- Uses table: Attendence
-- --------------------------------------------
Delete From Attendence
    Where Site_code='<Site_code>' And Emp_Code='<Emp_Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: Loan
-- --------------------------------------------
Delete From Loan
    Where Site_code='<Site_code>' And Emp_Code='<Emp_Code>';

-- --------------------------------------------
-- Query 5
-- Uses table: Leave_Ench
-- --------------------------------------------
Delete From Leave_Ench
    Where Site_code='<Site_code>' And Emp_Code='<Emp_Code>';

-- --------------------------------------------
-- Query 6
-- Uses table: OverTime
-- --------------------------------------------
Delete From OverTime
    Where Site_code='<Site_code>' And EmpCode='<EmpCode>';

-- --------------------------------------------
-- Query 7
-- Uses table: Depart
-- Uses table: GodownMast
-- --------------------------------------------
Select G.Code,G.Name From GodownMast G
    iNNER join Depart D on D.Code=G.Code
    Where (G.LOGSITE_CODE='<LogSiteCode>')
    Order by G.Name;

-- --------------------------------------------
-- Query 8
-- Uses table: Desig
-- --------------------------------------------
SELECT Code, Name FROM Desig
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 9
-- Uses table: SubGroup
-- --------------------------------------------
SELECT SubCode as Code, Name FROM SubGroup
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and Nature='Employee'
    ORDER BY Name;

-- --------------------------------------------
-- Query 10
-- Uses table: SubGroup
-- --------------------------------------------
SELECT SubCode as Code, Name FROM SubGroup
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 11
-- Uses table: EmpCategory
-- --------------------------------------------
SELECT Code, Name FROM EmpCategory
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 12
-- Uses table: Desig
-- Uses table: EmpCategory
-- Uses table: SubGroup
-- --------------------------------------------
SELECT Employee.code as searchcode,employee.*,EC.Name as CatName,Desig.Name as DesigName,SG.Name as AcName,EC.Code as CatCode,Desig.Code as DesigCode,SG.SubCode as AcCode FROM (((Employee
    Left Join EmpCategory EC on EC.Code=Employee.Category)
    Left Join Desig on Desig.Code=Employee.Designation)
    Left Join SubGroup SG on SG.SubCode=Employee.AC_Code)
    ORDER BY Employee.<Param>;

-- --------------------------------------------
-- Query 13
-- Uses table: Desig
-- Uses table: EmpCategory
-- --------------------------------------------
SELECT EMPCATEGORY.Name as Cat_Desc,DESIG.Name as Desg_Desc, Employee.Code, Employee.Name, Employee.Sex, Employee.F_Name, Employee.Birth_Date, Employee.Add1, Employee.Add2, Employee.Marital, Employee.Spouse, Employee.Qualification, Employee.Joining_Date, Employee.ESI_Code, Employee.PF_Code, Employee.Basic, Employee.DA, Employee.HRA ,Employee.Income_Tax, Employee.Other_Allow, Employee.Other_Deduc, Employee.Medical, Employee.Conveyance, Employee.LTA, Employee.PF, Employee.ESI, Employee.IdProof, Employee.IdProofNo FROM (Employee
    LEFT JOIN Desig ON Employee.Designation = Desig.Code)
    LEFT JOIN EmpCategory ON Employee.Category = EmpCategory.Code;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Attend]  NOT present in visahl.sql dump (schema unknown)
-- Table [Attendence]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Desig]  NOT present in visahl.sql dump (schema unknown)
-- Table [EmpCategory]  NOT present in visahl.sql dump (schema unknown)
-- Table [GodownMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Leave_Ench]  NOT present in visahl.sql dump (schema unknown)
-- Table [Loan]  NOT present in visahl.sql dump (schema unknown)
-- Table [OverTime]  NOT present in visahl.sql dump (schema unknown)
-- Table [Salary]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
