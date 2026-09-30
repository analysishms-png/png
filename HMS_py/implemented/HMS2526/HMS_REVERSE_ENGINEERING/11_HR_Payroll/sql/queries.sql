-- =====================================================================
-- 11_HR_Payroll — SQL extracted from VB6 source (EXTRAS.text)
-- READ-ONLY EXTRACTION. These statements were NEVER executed.
-- Source: decompiled VB6 string literals; `&` concatenations are marked.
-- Evidence tag on every statement: [VERIFIED-VB6] (string literal) /
--                                  [VERIFIED-SQL] (present in 18_Database extracts).
-- =====================================================================

-- ---------------------------------------------------------------------
-- 1. Attendance daily row (prAttend) — EXTRAS.text L905302 (variant L905350)
--    Columns match 18_Database/tables_rowcounts.txt: Attend = 1323 rows [VERIFIED-SQL]
-- ---------------------------------------------------------------------
Insert Into Attend(V_Prefix,V_Date,Emp_Code,FirstShift,SecondShift,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code)
Values ('<LblVPrefix|grid caption>', <V_Date>, '<Emp_Code>', '<FirstShift>', '<SecondShift>', '<Site_Code>', '<U_Name>', <U_EntDt>, '<U_AE>', '<LogSite_Code>')

-- Alternate insert used by PrAttend1 — EXTRAS.text L917584
Insert Into Attend(V_Prefix,V_Date,Emp_Code,FirstShift,SecondShift,SIte_Code,U_Name,U_EntDt,U_AE)
Values (...)

-- ---------------------------------------------------------------------
-- 2. Attendance month string (PrAttend1) — EXTRAS.text L917592
--    table Attendence, 0 rows in extract; Attn_Str is varchar(62) [VERIFIED-SQL]
-- ---------------------------------------------------------------------
insert into attendence(MTH_YEAR,emp_code,Attn_Str,Site_Code) values ('<Mth_Year>','<Emp_Code>',...)

-- ---------------------------------------------------------------------
-- 3. Monthly salary row (prSalCreate) — EXTRAS.text L912272
--    Salary = 282 rows [VERIFIED-SQL]
-- ---------------------------------------------------------------------
Insert Into Salary(Mth_Year,Emp_Code,Work_Day,Leave,Sunday,Holiday,Absent,Basic,DA,HRA,Income_Tax,
 Other_Allow,Other_Deduc,Conveyance,Medical,LTA,PF,EPF,ESI,Loan,Advance,Net_Salary,Loan_Bal,Adv_Bal,
 Emp_Basic,OverTime,OverTimeAmt,CL,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)
VALUES ('<Mth_Year>','<Emp_Code>',<Work_Day>,<Leave>,<Sunday>,<Holiday>,<Absent>,<Basic>,...)

-- Salary audit log — delete+insert pair, EXTRAS.text L911659 / L911661 (repeat L911732 / L911734)
Delete from salarylog where LOGSITE_CODE='<logsite>' and mth_year='<Mth_Year>' and Emp_Code='<Emp_Code>'
Insert Into SalaryLog(Mth_Year,Emp_Code,Basic,Increment,U_Name,U_EntDt,Site_code,logsite_code,CreationDate)
VALUES('<Mth_Year>','<Emp_Code>',<Basic>,<Increment>,...)

-- Basic revision written back to the employee master — EXTRAS.text L911672 region
Update Employee Set Basic=<Basic> ... Where Code='<Emp_Code>'

-- ---------------------------------------------------------------------
-- 4. Loan / advance vouchers (PrLoan + salary-creation postings)
--    V_Type vocabulary decoded from aggregates at L915272-L915397:
--      LO  = loan granted, LR/LR1 = loan repayment,
--      ADE = advance given, AR1/AR2 = advance recovery   [VERIFIED-VB6]
--    Loan = 0 rows in extract [VERIFIED-SQL]
-- ---------------------------------------------------------------------
INSERT INTO LOAN (Sr_No,V_Type,V_Date,Emp_Code,Amount,Installment,Remark,AC_Code,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code)
VALUES (...)                                                                  -- EXTRAS.text L908843

-- posted during salary creation (L911955, L912096)
Insert Into Loan(Sr_No,V_Type,V_Date,Emp_Code,Amount,Installment,Remark,AC_Code,MTH_YEAR,
 Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values (...)

-- ---------------------------------------------------------------------
-- 5. Overtime (prOverTime) — EXTRAS.text L910442; OverTime = 0 rows [VERIFIED-SQL]
-- ---------------------------------------------------------------------
Insert Into Overtime(EmpCode,OTDate,OTIME,Site_Code,LogSite_Code,U_Name,U_EntDt,U_AE,OTRate,Amount,Remark)
Values('<EmpCode>',<OTDate>,'<OTime>','<Site_Code>','<LogSite_Code>','<U_Name>',<U_EntDt>,'<U_AE>',<OTRate>,<Amount>,'<Remark>')

-- ---------------------------------------------------------------------
-- 6. Leave encashment (PrLeavench) — EXTRAS.text L906606; Leave_Ench = 0 rows [VERIFIED-SQL]
-- ---------------------------------------------------------------------
INSERT INTO LEAVE_ENCH (Sr_No,L_Date,Emp_Code,Leave_Ench,Amt_Ench,AC_Code,Site_Code,U_EntDt,U_AE)
VALUES (...)

-- ---------------------------------------------------------------------
-- 7. Ledger posting produced by salary creation (narrations in same block)
--    'Being Salary Paid' / 'Being leave encashment allowed' style entries [VERIFIED-VB6]
--    Ledger table: 40818 rows [VERIFIED-SQL]
-- ---------------------------------------------------------------------
Insert Into Ledger(...)   -- built inside prSalCreate around EXTRAS.text L911973-L912303

-- ---------------------------------------------------------------------
-- 8. Report datasets (rRepPayRoll, host form at EXTRAS.text L912857)
-- ---------------------------------------------------------------------
-- Pay Slip (GRepFormName = "PaySlip") — EXTRAS.text L915020
Select E.Name as EmployeeName, E.F_Name, E.Joining_Date,
       Case When IsNull(S.Emp_Basic,0)<>0 Then IsNull(S.Emp_Basic,0) Else E.Basic END Basic,
       E.BankAcNo, S.Work_Day, S.CL, S.Leave, S.Sunday, S.Holiday, S.Absent, S.Income_Tax,
       S.Medical, S.Loan, S.Loan_Bal, S.Adv_Bal, S.Basic as CalBasic, EMPCategory.Name As CatDesc,
       S.DA as CalDA, S.HRA, S.LTA, S.Other_Allow, S.Other_Deduc, S.Conveyance as CalConv,
       S.PF, S.ESI, S.Advance, S.Net_Salary as NetSalary, Desig.Name As Designation,
       S.OverTime, S.OverTimeAmt, G.Name Department
From (((Employee E Right Join Salary S on E.Code = S.Emp_Code)
       Left Join EMPCategory ON E.Category = EMPCategory.Code)
       Left Join Desig ON E.Designation = Desig.Code
       Left Join GoDownMast G ON E.Department = G.Code) & <filters>

-- PF Statement — EXTRAS.text L915101
Select E.Name as EmployeeName, E.F_Name, E.Joining_Date, E.PF As EmpPF, E.PF_Code,
       S.Basic as CalBasic, Desig.Name As DesigDesc, S.DA as CalDA, S.PF As CalPF,
       S.Net_Salary as NetSalary
From ((Employee E Left Join Salary S on E.Code = S.Emp_Code)
      Left Join Desig ON E.Designation = Desig.Code) & <filters>

-- Attendance Report — EXTRAS.text L915181
SELECT E.Code As EmpCode, E.Name As EmpName, E.F_Name, E.Joining_Date, EmpCategory.Name As CatDesc,
       S.Work_Day, S.CL, S.Leave, S.Sunday, S.Holiday, S.Absent, G.Name Department
FROM ((Employee E LEFT JOIN EmpCategory ON E.Category=EmpCategory.Code)
      Left Join Salary S on E.Code = S.Emp_Code
      Left Join GoDownMast G ON E.Department = G.Code) & <filters>

-- Loan / advance ledger aggregates — EXTRAS.text L915261-L915397 (two date ranges: before / on-or-after)
select code As EmpCode, name As EmpName, F_Name As FName, OP_Loan, OP_Advance
from employee Where Joining_Date <= <Date>                                     -- L915261
SELECT isnull(sum(amount),0) as loan   FROM LOAN WHERE Emp_Code='<c>' and V_Type='LO'  and V_Date <  <d>  -- L915336
SELECT isnull(sum(amount),0) as loanret FROM LOAN WHERE Emp_Code='<c>' and V_Type IN ('LR','LR1') and v_date < <d> -- L915344
SELECT isnull(sum(amount),0) as ADVA   FROM LOAN WHERE Emp_Code='<c>' and V_Type='ADE' and v_date <  <d>  -- L915352
SELECT isnull(sum(amount),0) as ARET   FROM LOAN WHERE Emp_Code='<c>' and V_Type IN ('AR1','AR2') and v_date < <d> -- L915360

-- ---------------------------------------------------------------------
-- 9. Menu / permission SQL executed on the HR dispatch path
-- ---------------------------------------------------------------------
-- EXTRAS.text L477046 (dispatcher privilege read)
SELECT Param_Str AS UPrivilege, Module_Name, OutletCode FROM menuHelp
WHERE UserName='<user>' AND CompCode='<comp>' AND Code=<arg_C>

-- EXTRAS.text L480844 (dispatch key resolution)
SELECT [Option] FROM MenuHelp WHERE Code=<arg_C> AND UserName='<user>' and compcode='<comp>'

-- Permission seeding (EXTRAS.text L6603)
... Module_Name IN ('Purch','NightAuditMenu','Pay','mnuTelMast','mnuMSG')
    AND [Option] IN ('Leave','Telephone Call Entry','InBox') ...

-- ---------------------------------------------------------------------
-- 10. menuHelp rows actually present for this module (extracted trees,
--     19_VB6_Logic/MenuHelp_SA_tree.txt) — [VERIFIED-SQL]
--     format: Option|OPT1|OPT2|OPT3|OPT4|Flag   (OPT1=20 == builder module &H14)
-- ---------------------------------------------------------------------
HR/Payroll           |20|0 |0 |0|N     -- L321 module root
Operations           |20|11|0 |0|N     -- L438 group
Leave                |20|11|11|0|E     -- L439
Loan/Advance         |20|11|13|0|E     -- L324
Over Time            |20|11|14|0|E     -- L325
Leave Encashment     |20|11|15|0|E     -- L326
Salary Creation      |20|11|16|0|E     -- L327
Reports              |20|12|0 |0|N     -- L328 group
Pay Slip             |20|12|11|0|R     -- L329
Payroll Register     |20|12|12|0|R     -- L330
Loan Register        |20|12|13|0|R     -- L331
Loan/Advance Summary |20|12|14|0|R     -- L332
Loan/Advance Ledger  |20|12|15|0|R     -- L333
Attendence Report    |20|12|16|0|R     -- L334
Gratuity Report      |20|12|17|0|R     -- L335
PF Statement         |20|12|18|0|R     -- L336
Form C               |20|12|19|0|R     -- L337
