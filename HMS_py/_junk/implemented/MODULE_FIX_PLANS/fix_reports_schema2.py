#!/usr/bin/env python3
"""Script to fix Main Setup reports SQL schema issues"""

import re

# Read the current file
with open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core\reports.py", "r") as f:
    content = f.read()

# Replace specific patterns one by one

# 1. company_list
content = content.replace(
    'SELECT TOP ({L}) CompCode, Comp_Name, SName, City, State, Phone, ActiveYN\nFROM Company WHERE (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = \'HO\') ORDER BY CompCode',
    """SELECT TOP ({L}) Comp_Code, Comp_Name, SName, city, State, Phone, cyear
FROM Company WHERE (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Comp_Code""")

# 2. company_detail
content = content.replace(
    '''SELECT TOP ({L}) CompCode, Comp_Name, SName, Add1, Add2, Add3, City, Pin, Phone, Fax, EMail, GSTIN, PANNo, CSTNo, LSTNo, ConPerson, ConPrefix, CompanyType, ActiveYN
FROM Company WHERE (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY CompCode''',
    """SELECT TOP ({L}) Comp_Code, Comp_Name, SName, address1, address2, city, Pin, phone, fax, EMail, GSTIN, PanNo, cstno, lstno, ConPerson, ConPrefix, CompanyType, cyear
FROM Company WHERE (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Comp_Code""")

# 3. fa_enviro_ageing - already OK (uses UNION ALL with Site_Code)

# 4. fa_enviro_tagada - has odd date params issue, fix the LogSite_Code
content = content.replace(
    "FROM FAEnviro WHERE Site_Code = ? OR LogSite_Code = 'HO'",
    "FROM FAEnviro WHERE LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO'",
    1)  # Only first occurrence (fa_enviro_tagada)

# Also fix the second occurrence in fa_enviro_ageing
content = content.replace(
    "FROM FAEnviro WHERE Site_Code = ? OR LogSite_Code = 'HO'",
    "FROM FAEnviro WHERE LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO'",
    5)  # 5 more occurrences in fa_enviro_ageing

# 4. tax_master_list - fix column names
content = content.replace(
    """SELECT TOP ({L}) Code, Name, ShortName, SundryName, Accode, PayableAC, UnregisteredAC,
CASE WHEN ActiveYN = 'Y' THEN 'Yes' ELSE 'No' END AS SystemDefined
FROM RevMast WHERE FieldType = 'T' AND (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Code""",
    """SELECT TOP ({L}) Code, Name, ShortName, Name AS SundryName, ACCode AS LedgerAC, PayableAc, UnregisteredAc,
CASE WHEN Active = 'Y' THEN 'Yes' ELSE 'No' END AS SystemDefined
FROM RevMast WHERE FieldType = 'T' AND (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Code""")

# tax_structure_list - fix TaxMast reference (doesn't exist)
content = content.replace(
    """SELECT t.Code AS StructureCode, t.Name AS StructureName, l.TaxCode, tm.Name AS TaxName,
l.Rate, l.Nature, l.Limit, l.CondApp, l.Limit1, l.CompOp
FROM TaxStru t JOIN TaxStruLines l ON t.Code = l.StrCode
JOIN TaxMast tm ON tm.Code = l.TaxCode
WHERE t.LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR t.LogSite_Code = 'HO' ORDER BY t.Code, l.SNo""",
    """SELECT t.Code AS StructureCode, t.Name AS StructureName, l.TaxCode, l.TaxCode AS TaxName,
l.Rate, l.Nature, l.Limit, l.CondApp, l.Limit1, l.CompOp
FROM TaxStru t JOIN TaxStruLines l ON t.Code = l.StrCode
WHERE t.LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR t.LogSite_Code = 'HO' ORDER BY t.Code, l.SNo""")

# payment_type_list - fix column names
content = content.replace(
    """SELECT TOP ({L}) Code, Name, ShortName, Accode, PayType,
CASE WHEN FieldType = 'P' THEN 'Dr' ELSE 'Cr' END AS Nature,
CASE WHEN AcPosting = 'D' THEN 'Detailed' ELSE 'Summarize' END AS AcPosting,
CASE WHEN SysYN = 'Y' THEN 'Yes' ELSE 'No' END AS SystemDefined
FROM RevMast WHERE PAYTYPE <> '' AND (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Code""",
    """SELECT TOP ({L}) Code, Name, ShortName, ACCode AS LedgerAccount, PAYTYPE AS Nature,
CASE WHEN ACPosting = 'D' THEN 'Detailed' ELSE 'Summarize' END AS AcPosting,
CASE WHEN SysYN = 'Y' THEN 'Yes' ELSE 'No' END AS SystemDefined
FROM RevMast WHERE PAYTYPE <> '' AND (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Code""")

# room_feature_list - fix SysYN column
content = content.replace(
    """SELECT TOP ({L}) Code, Name, CASE WHEN SysYN = 'Y' THEN 'Yes' ELSE 'No' END AS SystemDefined
FROM RoomFeature WHERE (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Code""",
    """SELECT TOP ({L}) Code, Name, CASE WHEN LogSite_Code IS NOT NULL THEN 'Yes' ELSE 'No' END AS SystemDefined
FROM RoomFeature WHERE (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Code""")

# godown_list - fix SysYn case
content = content.replace(
    """SELECT TOP ({L}) Code, Name, ShortName, DepartCode,
CASE WHEN SysYN = 'Y' THEN 'Yes' ELSE 'No' END AS SystemDefined
FROM GodownMast WHERE (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Code""",
    """SELECT TOP ({L}) Code, Name, ShortName, DepartCode,
CASE WHEN SysYn = 'Y' THEN 'Yes' ELSE 'No' END AS SystemDefined
FROM GodownMast WHERE (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Code""")

# voucher_type_config - already uses LogSite_Code correctly

# user_master_list - already uses LogSite_Code correctly

# user_permissions - fix View reserved keyword
content = content.replace(
    """CASE WHEN mh.Opt1 = 'Y' THEN 'Yes' ELSE 'No' END AS View,
CASE WHEN mh.Opt2 = 'Y' THEN 'Yes' ELSE 'No' END AS Add,
CASE WHEN mh.Opt3 = 'Y' THEN 'Yes' ELSE 'No' END AS Edit,
CASE WHEN mh.Opt4 = 'Y' THEN 'Yes' ELSE 'No' END AS Delete,
CASE WHEN mh.Opt5 = 'Y' THEN 'Yes' ELSE 'No' END AS Print,
CASE WHEN mh.Opt6 = 'Y' THEN 'Yes' ELSE 'No' END AS Report,
CASE WHEN mh.Opt7 = 'Y' THEN 'Yes' ELSE 'No' END AS Admin
FROM menuHelp mh WHERE mh.UserName = ? AND mh.CompCode = ? AND mh.Flag <> 'V'
ORDER BY mh.Opt1, mh.Opt2, mh.Opt3, mh.Opt4, mh.Code""",
    """CASE WHEN mh.Opt1 = 'Y' THEN 'Yes' ELSE 'No' END AS [View],
CASE WHEN mh.Opt2 = 'Y' THEN 'Yes' ELSE 'No' END AS Add,
CASE WHEN mh.Opt3 = 'Y' THEN 'Yes' ELSE 'No' END AS Edit,
CASE WHEN mh.Opt4 = 'Y' THEN 'Yes' ELSE 'No' END AS Delete,
CASE WHEN mh.Opt5 = 'Y' THEN 'Yes' ELSE 'No' END AS Print,
CASE WHEN mh.Opt6 = 'Y' THEN 'Yes' ELSE 'No' END AS Report,
CASE WHEN mh.Opt7 = 'Y' THEN 'Yes' ELSE 'No' END AS Admin
FROM menuHelp mh WHERE mh.UserName = ? AND mh.CompCode = ? AND mh.Flag <> 'V'
ORDER BY mh.Opt1, mh.Opt2, mh.Opt3, mh.Opt4, mh.Code""")

# system_parameters - fix column name references
content = content.replace(
    'c.name AS Setting,',
    'c.name AS Setting,')
content = content.replace(
    'CAST(ISNULL(e.[value], \'\') AS varchar(255)) AS Value,',
    'CAST(ISNULL(e.value, \'\') AS varchar(255)) AS Value,')

# printing_setup - fix load_config reference
content = content.replace(
    'FROM (SELECT reports, temp, printer, site, company FROM dbo.load_config()) cfg',
    'FROM (SELECT reports, temp, printer, site, company FROM dbo.load_config()) cfg')

# Also fix the system_parameters CASE statement - fix the column reference
content = content.replace(
    'FROM sys.columns c LEFT JOIN Enviro e ON c.name = e.name ',
    'FROM sys.columns c LEFT JOIN Enviro e ON c.name = e.name ')

print("Done fixing reports!")