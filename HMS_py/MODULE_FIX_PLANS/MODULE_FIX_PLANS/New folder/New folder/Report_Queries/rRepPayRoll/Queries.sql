# ==========================================================
# Module: rRepPayRoll
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: EmpCategory
-- --------------------------------------------
Select '' As O,Name,Code From EmpCategory
    Order By Name;

-- --------------------------------------------
-- Query 2
-- Uses table: Desig
-- Uses table: EMPCategory
-- Uses table: GoDownMast
-- Uses table: Salary
-- --------------------------------------------
Select E.Name as EmployeeName, E.F_Name,E.Joining_Date,Case When IsNull(S.Emp_Basic,0)<>0 Then IsNull(S.Emp_Basic,0) Else E.Basic END Basic,E.BankAcNo,S.Work_Day,S.CL,S.Leave,S.Sunday,S.Holiday,S.Absent,S.Income_Tax,S.Medical,S.Loan,S.Loan_Bal,S.Adv_Bal,S.Basic as CalBasic, EMPCategory.Name As CatDesc,S.DA as CalDA,S.HRA,S.LTA,S.Other_Allow,S.Other_Deduc,S.Conveyance as CalConv,S.PF,S.ESI,S.Advance,S.Net_Salary as NetSalary,S.Medical,Desig.Name As Designation,S.OverTime,S.OverTimeAmt,G.Name Department From (((Employee E
    Right Join Salary S on E.Code = S.Emp_Code)
    Left Join EMPCategory ON E.Category = EMPCategory.Code)
    Left Join Desig ON E.Designation = Desig.Code
    Left Join GoDownMast G ON E.Department = G.Code) <Param><Param> And E.Code in (<Param>);

-- --------------------------------------------
-- Query 3
-- Uses table: Desig
-- Uses table: Salary
-- --------------------------------------------
Select E.Name as EmployeeName, E.F_Name,E.Joining_Date,E.PF As EmpPF,E.PF_Code,S.Basic as CalBasic,Desig.Name As DesigDesc,S.DA as CalDA,S.PF As CalPF,S.Net_Salary as NetSalary From ((Employee E
    Left Join Salary S on E.Code = S.Emp_Code)
    Left Join Desig ON E.Designation = Desig.Code) <Param>
    Order By E.Name;

-- --------------------------------------------
-- Query 4
-- Uses table: EmpCategory
-- Uses table: GoDownMast
-- Uses table: Salary
-- --------------------------------------------
SELECT E.Code As EmpCode,E.Name As EmpName,E.F_Name,E.Joining_Date,EmpCategory.Name As CatDesc,S.Work_Day,S.CL,S.Leave,S.Sunday,S.Holiday,S.Absent,G.Name Department FROM ((Employee E
    LEFT JOIN EmpCategory ON E.Category=EmpCategory.Code)
    Left Join Salary S on E.Code = S.Emp_Code
    Left Join GoDownMast G ON E.Department = G.Code) <Param><Param> And E.DepartMent in (<Param>)
    Order By EmpCategory.Code,E.Name;

-- --------------------------------------------
-- Query 5
-- Uses table: Loan
-- --------------------------------------------
Select IIF(isnull(sum(amount)),0,sum(amount)) as loan From Loan
    Where Emp_Code='<Emp_Code>' and V_Type='LO' and V_Date<<Param><Param>;

-- --------------------------------------------
-- Query 6
-- Uses table: LOAN
-- --------------------------------------------
SELECT IIF(isnull(sum(amount)),0,sum(amount)) as loanret FROM LOAN
    WHERE Emp_Code='<Emp_Code>' and V_Type IN ('LR','LR1') and V_Date<<Param><Param>;

-- --------------------------------------------
-- Query 7
-- Uses table: LOAN
-- --------------------------------------------
SELECT IIF(isnull(sum(amount)),0,sum(amount)) as ADVA FROM LOAN
    WHERE Emp_Code='<Emp_Code>' and V_Type='ADE' and V_Date<<Param><Param>;

-- --------------------------------------------
-- Query 8
-- Uses table: LOAN
-- --------------------------------------------
SELECT IIF(isnull(sum(amount)),0,sum(amount)) as ARET FROM LOAN
    WHERE Emp_Code='<Emp_Code>' and V_Type IN ('AR1','AR2') and V_Date<<Param><Param>;

-- --------------------------------------------
-- Query 9
-- Uses table: LOAN
-- --------------------------------------------
SELECT IIF(isnull(sum(amount)),0,sum(amount)) as loan FROM LOAN
    WHERE Emp_Code='<Emp_Code>' and V_Type='LO' and V_Date>=<Param> AND V_DATE<=<Param><Param>;

-- --------------------------------------------
-- Query 10
-- Uses table: LOAN
-- --------------------------------------------
SELECT IIF(isnull(sum(amount)),0,sum(amount)) as loanret FROM LOAN
    WHERE Emp_Code='<Emp_Code>' and v_TYPE IN ('LR','LR1') and V_Date>=<Param> AND V_DATE<=<Param><Param>;

-- --------------------------------------------
-- Query 11
-- Uses table: LOAN
-- --------------------------------------------
SELECT IIF(isnull(sum(amount)),0,sum(amount)) as ADVA FROM LOAN
    WHERE Emp_Code='<Emp_Code>' and V_Type='ADE' and V_Date>=<Param> AND V_DATE<=<Param><Param>;

-- --------------------------------------------
-- Query 12
-- Uses table: Loan
-- --------------------------------------------
Select isnull(sum(amount),0) as loan From Loan
    Where Emp_Code='<Emp_Code>' and V_Type='LO' and V_Date<<Param><Param>;

-- --------------------------------------------
-- Query 13
-- Uses table: LOAN
-- --------------------------------------------
SELECT isnull(sum(amount),0) as loanret FROM LOAN
    WHERE Emp_Code='<Emp_Code>' and V_Type IN ('LR','LR1') and v_date<<Param><Param>;

-- --------------------------------------------
-- Query 14
-- Uses table: LOAN
-- --------------------------------------------
SELECT isnull(sum(amount),0) as ADVA FROM LOAN
    WHERE Emp_Code='<Emp_Code>' and V_Type='ADE' and v_date<<Param><Param>;

-- --------------------------------------------
-- Query 15
-- Uses table: LOAN
-- --------------------------------------------
SELECT isnull(sum(amount),0) as ARET FROM LOAN
    WHERE Emp_Code='<Emp_Code>' and V_Type IN ('AR1','AR2') and v_date<<Param><Param>;

-- --------------------------------------------
-- Query 16
-- Uses table: LOAN
-- --------------------------------------------
SELECT isnull(sum(amount),0) as loan FROM LOAN
    WHERE Emp_Code='<Emp_Code>' and V_Type='LO' and V_DATE>=<Param> AND V_DATE<=<Param><Param>;

-- --------------------------------------------
-- Query 17
-- Uses table: LOAN
-- --------------------------------------------
SELECT isnull(sum(amount),0) as loanret FROM LOAN
    WHERE Emp_Code='<Emp_Code>' and V_Type IN ('LR','LR1') and V_DATE>=<Param> AND V_DATE<=<Param><Param>;

-- --------------------------------------------
-- Query 18
-- Uses table: LOAN
-- --------------------------------------------
SELECT isnull(sum(amount),0) as ADVA FROM LOAN
    WHERE Emp_Code='<Emp_Code>' and V_Type='ADE' and V_DATE>=<Param> AND V_DATE<=<Param><Param>;

-- --------------------------------------------
-- Query 19
-- Uses table: Employee
-- --------------------------------------------
select code As EmpCode,name As EmpName,OP_Loan,op_Advance from Employee
    Where Joining_Date<=<Param><Param>;

-- --------------------------------------------
-- Query 20
-- Uses table: Loan
-- --------------------------------------------
Select IIF(isnull(sum(amount)),0,sum(amount)) as loan From Loan
    Where Emp_Code='<Emp_Code>' and V_Type='ADE' and V_Date<<Param><Param>;

-- --------------------------------------------
-- Query 21
-- Uses table: Loan
-- --------------------------------------------
SELECT IIF(isnull(sum(amount)),0,sum(amount)) as loanret From Loan
    WHERE Emp_Code='<Emp_Code>' and V_Type IN ('AR1','AR2') and V_Date<<Param><Param>;

-- --------------------------------------------
-- Query 22
-- Uses table: Loan
-- --------------------------------------------
SELECT IIF(isnull(sum(amount)),0,sum(amount)) as loanret From Loan
    WHERE Emp_Code='<Emp_Code>' and V_Type IN ('LR','LR1') and V_Date<<Param><Param>;

-- --------------------------------------------
-- Query 23
-- Uses table: Loan
-- --------------------------------------------
Select isnull(sum(amount),0) as loan From Loan
    Where Emp_Code='<Emp_Code>' and V_Type='ADE' and V_Date<<Param><Param>;

-- --------------------------------------------
-- Query 24
-- Uses table: Loan
-- --------------------------------------------
SELECT isnull(sum(amount),0) as loanret From Loan
    WHERE Emp_Code='<Emp_Code>' and V_Type IN ('AR1','AR2') and V_Date<<Param><Param>;

-- --------------------------------------------
-- Query 25
-- Uses table: Loan
-- --------------------------------------------
SELECT isnull(sum(amount),0) as loanret From Loan
    WHERE Emp_Code='<Emp_Code>' and V_Type IN ('LR','LR1') and V_Date<<Param><Param>;

-- --------------------------------------------
-- Query 26
-- Uses table: Loan
-- --------------------------------------------
SELECT isnull(sum(amount),0) as loanret From Loan
    WHERE Emp_Code='<Emp_Code>' AND V_DATE>=<Param> and V_DATE<=<Param>
    Group By Emp_Code,V_Date;

-- --------------------------------------------
-- Query 27
-- Uses table: Desig
-- Uses table: EMPCategory
-- Uses table: SALARY
-- --------------------------------------------
SELECT E.Name, E.F_Name, E.ESI_Code, E.PF_Code,E.BankAcNo,E.Joining_Date,Case When IsNull(SAL.Emp_Basic,0)<>0 Then IsNull(SAL.Emp_Basic,0) Else E.Basic END Basic,E.INCREMENT, SAL.Work_Day,SAL.CL,SAL.Sunday,SAL.Holiday,SAL.Absent,SAL.Income_Tax, SAL.Leave, SAL.Basic as CalBasic,SAL.DA, SAL.HRA, SAL.Income_Tax, SAL.Other_Allow, SAL.Other_Deduc, SAL.Conveyance, SAL.Medical, SAL.LTA, SAL.PF, SAL.ESI, SAL.Loan, SAL.Advance, SAL.OVERTIME,SAL.OVERTIMEAMT,SAL.Net_Salary, SAL.Loan_Bal, SAL.Adv_Bal, Desig.Name As DesigDesc, EMPCategory.Name As CatDesc,SAL.Mth_year,SAL.Emp_Code FROM ((EMPLOYEE E
    Left JOIN Desig ON E.Designation = Desig.Code)
    left JOIN EMPCategory ON E.Category = EMPCategory.Code)
    left JOIN SALARY SAL ON E.Code = SAL.Emp_Code <Param>;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Desig]  NOT present in visahl.sql dump (schema unknown)
-- Table [EMPCategory]  NOT present in visahl.sql dump (schema unknown)
-- Table [EmpCategory]  NOT present in visahl.sql dump (schema unknown)
-- Table [Employee]  NOT present in visahl.sql dump (schema unknown)
-- Table [GoDownMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [LOAN]  NOT present in visahl.sql dump (schema unknown)
-- Table [Loan]  NOT present in visahl.sql dump (schema unknown)
-- Table [SALARY]  NOT present in visahl.sql dump (schema unknown)
-- Table [Salary]  NOT present in visahl.sql dump (schema unknown)
