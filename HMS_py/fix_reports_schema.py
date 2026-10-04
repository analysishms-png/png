#!/usr/bin/env python3
"""Script to fix Main Setup reports SQL schema issues"""

import re

# Read the current file
with open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core\reports.py", "r") as f:
    content = f.read()

# Find the Main Setup reports section and replace with corrected versions
# We'll do targeted replacements for each problematic report

replacements = {
    # company_list
    r'SELECT TOP \({L}\) CompCode, Comp_Name, SName, City, State, Phone, ActiveYN\s+FROM Company WHERE \(LogSite_Code = \(SELECT TOP 1 LogSite_Code FROM Enviro\) OR LogSite_Code = \'HO\'\) ORDER BY CompCode':
    """SELECT TOP ({L}) Comp_Code, Comp_Name, SName, city, State, Phone, cyear
FROM Company WHERE (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Comp_Code""",

    # company_detail  
    r'SELECT TOP \({L}\) CompCode, Comp_Name, SName, Add1, Add2, Add3, City, Pin, Phone, Fax, EMail, GSTIN, PANNo, CSTNo, LSTNo, ConPerson, ConPrefix, CompanyType, ActiveYN\s+FROM Company WHERE \(LogSite_Code = \(SELECT TOP 1 LogSite_Code FROM Enviro\) OR LogSite_Code = \'HO\'\) ORDER BY CompCode':
    """SELECT TOP ({L}) Comp_Code, Comp_Name, SName, address1, address2, city, Pin, phone, fax, EMail, GSTIN, PanNo, cstno, lstno, ConPerson, ConPrefix, CompanyType, cyear
FROM Company WHERE (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Comp_Code""",

    # tax_master_list
    r'SELECT TOP \({L}\) Code, Name, ShortName, SundryName, Accode, PayableAC, UnregisteredAC,\s+CASE WHEN ActiveYN = \'Y\' THEN \'Yes\' ELSE \'No\' END AS SystemDefined\s+FROM RevMast WHERE FieldType = \'T\' AND \(LogSite_Code = \(SELECT TOP 1 LogSite_Code FROM Enviro\) OR LogSite_Code = \'HO\'\) ORDER BY Code':
    """SELECT TOP ({L}) Code, Name, ShortName, Name AS SundryName, ACCode AS LedgerAC, PayableAc, UnregisteredAc,
CASE WHEN Active = 'Y' THEN 'Yes' ELSE 'No' END AS SystemDefined
FROM RevMast WHERE FieldType = 'T' AND (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Code""",

    # tax_structure_list - fix join and column names
    r'SELECT t\.Code AS StructureCode, t\.Name AS StructureName, l\.TaxCode, tm\.Name AS TaxName,\s+l\.Rate, l\.Nature, l\.Limit, l\.CondApp, l\.Limit1, l\.CompOp\s+FROM TaxStru t JOIN TaxStruLines l ON t\.Code = l\.StrCode\s+JOIN TaxMast tm ON tm\.Code = l\.TaxCode\s+WHERE t\.LogSite_Code = \? OR t\.LogSite_Code = \'HO\' ORDER BY t\.Code, l\.SNo':
    """SELECT t.Code AS StructureCode, t.Name AS StructureName, l.TaxCode, l.TaxCode AS TaxName,
l.Rate, l.Nature, l.Limit, l.CondApp, l.Limit1, l.CompOp
FROM TaxStru t JOIN TaxStruLines l ON t.Code = l.StrCode
WHERE t.LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR t.LogSite_Code = 'HO' ORDER BY t.Code, l.SNo""",

    # payment_type_list
    r'SELECT TOP \({L}\) Code, Name, ShortName, Accode, PayType,\s+CASE WHEN FieldType = \'P\' THEN \'Dr\' ELSE \'Cr\' END AS Nature,\s+CASE WHEN AcPosting = \'D\' THEN \'Detailed\' ELSE \'Summarize\' END AS AcPosting,\s+CASE WHEN SysYN = \'Y\' THEN \'Yes\' ELSE \'No\' END AS SystemDefined\s+FROM RevMast WHERE PAYTYPE <> \'\' AND \(LogSite_Code = \(SELECT TOP 1 LogSite_Code FROM Enviro\) OR LogSite_Code = \'HO\'\) ORDER BY Code':
    """SELECT TOP ({L}) Code, Name, ShortName, ACCode AS LedgerAccount, PAYTYPE AS Nature,
CASE WHEN ACPosting = 'D' THEN 'Detailed' ELSE 'Summarize' END AS AcPosting,
CASE WHEN SysYN = 'Y' THEN 'Yes' ELSE 'No' END AS SystemDefined
FROM RevMast WHERE PAYTYPE <> '' AND (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Code""",

    # room_feature_list
    r'SELECT TOP \({L}\) Code, Name, CASE WHEN SysYN = \'Y\' THEN \'Yes\' ELSE \'No\' END AS SystemDefined\s+FROM RoomFeature WHERE \(LogSite_Code = \(SELECT TOP 1 LogSite_Code FROM Enviro\) OR LogSite_Code = \'HO\'\) ORDER BY Code':
    """SELECT TOP ({L}) Code, Name, CASE WHEN LogSite_Code IS NOT NULL THEN 'Yes' ELSE 'No' END AS SystemDefined
FROM RoomFeature WHERE (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Code""",

    # godown_list
    r'SELECT TOP \({L}\) Code, Name, ShortName, DepartCode,\s+CASE WHEN SysYN = \'Y\' THEN \'Yes\' ELSE \'No\' END AS SystemDefined\s+FROM GodownMast WHERE \(LogSite_Code = \(SELECT TOP 1 LogSite_Code FROM Enviro\) OR LogSite_Code = \'HO\'\) ORDER BY Code':
    """SELECT TOP ({L}) Code, Name, ShortName, DepartCode,
CASE WHEN SysYn = 'Y' THEN 'Yes' ELSE 'No' END AS SystemDefined
FROM GodownMast WHERE (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Code""",

    # voucher_type_config
    r'SELECT TOP \({L}\) V_Type, Category, NCat, Description, Number_Method, Start_No, Short_Name, Site_Code\s+FROM Voucher_Type WHERE \(LogSite_Code = \(SELECT TOP 1 LogSite_Code FROM Enviro\) OR LogSite_Code = \'HO\'\) ORDER BY Category, V_Type':
    """SELECT TOP ({L}) V_Type, Category, NCat, Description, Number_Method, Start_No, Short_Name, Site_Code
FROM Voucher_Type WHERE (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY Category, V_Type""",

    # user_master_list
    r'SELECT TOP \({L}\) USER_NAME, LABEL, ShortName, ActiveYN, GodCode, FloorCode, AllowDtChng, BackColor\s+FROM UserMast WHERE \(LogSite_Code = \(SELECT TOP 1 LogSite_Code FROM Enviro\) OR LogSite_Code = \'HO\'\) ORDER BY USER_NAME':
    """SELECT TOP ({L}) USER_NAME, LABEL, ShortName, ActiveYN, GodCode, FloorCode, AllowDtChng, BackColor
FROM UserMast WHERE (LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') ORDER BY USER_NAME""",

    # user_permissions - fix reserved keyword View
    r'SELECT mh\.UserName, mh\.Module_Name AS Module,\s+CASE WHEN mh\.Opt1 = \'Y\' THEN \'Yes\' ELSE \'No\' END AS View,\s+CASE WHEN mh\.Opt2 = \'Y\' THEN \'Yes\' ELSE \'No\' END AS Add,\s+CASE WHEN mh\.Opt3 = \'Y\' THEN \'Yes\' ELSE \'No\' END AS Edit,\s+CASE WHEN mh\.Opt4 = \'Y\' THEN \'Yes\' ELSE \'No\' END AS Delete,\s+CASE WHEN mh\.Opt5 = \'Y\' THEN \'Yes\' ELSE \'No\' END AS Print,\s+CASE WHEN mh\.Opt6 = \'Y\' THEN \'Yes\' ELSE \'No\' END AS Report,\s+CASE WHEN mh\.Opt7 = \'Y\' THEN \'Yes\' ELSE \'No\' END AS Admin\s+FROM menuHelp mh WHERE mh\.UserName = \? AND mh\.CompCode = \? AND mh\.Flag <> \'V\'\s+ORDER BY mh\.Opt1, mh\.Opt2, mh\.Opt3, mh\.Opt4, mh\.Code':
    """SELECT mh.UserName, mh.Module_Name AS Module,
CASE WHEN mh.Opt1 = 'Y' THEN 'Yes' ELSE 'No' END AS [View],
CASE WHEN mh.Opt2 = 'Y' THEN 'Yes' ELSE 'No' END AS Add,
CASE WHEN mh.Opt3 = 'Y' THEN 'Yes' ELSE 'No' END AS Edit,
CASE WHEN mh.Opt4 = 'Y' THEN 'Yes' ELSE 'No' END AS Delete,
CASE WHEN mh.Opt5 = 'Y' THEN 'Yes' ELSE 'No' END AS Print,
CASE WHEN mh.Opt6 = 'Y' THEN 'Yes' ELSE 'No' END AS Report,
CASE WHEN mh.Opt7 = 'Y' THEN 'Yes' ELSE 'No' END AS Admin
FROM menuHelp mh WHERE mh.UserName = ? AND mh.CompCode = ? AND mh.Flag <> 'V'
ORDER BY mh.Opt1, mh.Opt2, mh.Opt3, mh.Opt4, mh.Code""",

    # system_parameters - the complex CASE statement needs fixing
    r'CASE WHEN c\.name IN \(\'Age1\',\'Age2\',\'Age3\',\'Age4\',\'Age5\',\'Age6\',\'Amt1\',\'Amt2\',\'Amt3\',\'Amt4\',\'Amt5\',\'Amt6\',\'FomBillCopies\',\'NCKOTPercentage\'\) THEN \'int\' '
                r'WHEN c\.name IN \(\'TagadaHeader1\',\'TagadaHeader2\',\'TagadaHeader3\',\'TagadaHeader4\',\'TagadaHeader5\',\'TagadaFooter1\',\'TagadaFooter2\',\'TagadaFooter3\',\'TagadaFooter3fa\',\'TagadaFooter4\',\'TagadaFooter5\',\'Bill_Header\',\'Bill_Footer\',\'KOTHeader1\',\'KOTHeader2\',\'KOTHeader3\',\'KOTHeader4\',\'Checkout\',\'CheckoutVar\',\'Variation\',\'VariationBefore\',\'KOTPrinting\',\'KOTPrintEdited\',\'KOTOutletSelection\',\'TaxSummary\',\'TOKENPrint\',\'RcptPrinting\',\'ReservationPrinting\',\'BillPrintingSummerised\',\'FomBillCopies\',\'NCKOTPercentage\'\) THEN \'varchar\' '
                r'WHEN c\.name IN \(\'ArrDateTimeEdit\',\'GRCMandatory\',\'RoomRateEditable\',\'RoomIncTaxEditable\',\'RoomServiceChargeEditable\',\'CreditCardInfoMandatoryYN\'\) THEN \'yn1\' '
                r'WHEN c\.name IN \(\'Checkout\',\'CheckoutVar\',\'Variation\',\'VariationBefore\',\'KOTPrinting\',\'KOTPrintEdited\',\'KOTOutletSelection\',\'TaxSummary\',\'TOKENPrint\',\'RcptPrinting\',\'ReservationPrinting\',\'BillPrintingSummerised\',\'FomBillCopies\',\'NCKOTPercentage\'\) THEN \'str\' '
                r'ELSE \'other\' END AS Type\s+'
                r'FROM sys\.columns c LEFT JOIN Enviro e ON c\.name = e\.name\s+'
                r'WHERE c\.object_id = OBJECT_ID\(\'Enviro\'\) ORDER BY c\.column_id':
    """CASE WHEN c.name IN ('Age1','Age2','Age3','Age4','Age5','Age6','Amt1','Amt2','Amt3','Amt4','Amt5','Amt6','FomBillCopies','NCKOTPercentage') THEN 'int'
WHEN c.name IN ('TagadaHeader1','TagadaHeader2','TagadaHeader3','TagadaHeader4','TagadaHeader5','TagadaFooter1','TagadaFooter2','TagadaFooter3','TagadaFooter3fa','TagadaFooter4','TagadaFooter5','Bill_Header','Bill_Footer','KOTHeader1','KOTHeader2','KOTHeader3','KOTHeader4','Checkout','CheckoutVar','Variation','VariationBefore','KOTPrinting','KOTPrintEdited','KOTOutletSelection','TaxSummary','TOKENPrint','RcptPrinting','ReservationPrinting','BillPrintingSummerised','FomBillCopies','NCKOTPercentage') THEN 'varchar'
WHEN c.name IN ('ArrDateTimeEdit','GRCMandatory','RoomRateEditable','RoomIncTaxEditable','RoomServiceChargeEditable','CreditCardInfoMandatoryYN') THEN 'yn1'
WHEN c.name IN ('Checkout','CheckoutVar','Variation','VariationBefore','KOTPrinting','KOTPrintEdited','KOTOutletSelection','TaxSummary','TOKENPrint','RcptPrinting','ReservationPrinting','BillPrintingSummerised','FomBillCopies','NCKOTPercentage') THEN 'str'
ELSE 'other' END AS Type
FROM sys.columns c LEFT JOIN Enviro e ON c.name = e.name
WHERE c.object_id = OBJECT_ID('Enviro') ORDER BY c.column_id""",

    # printing_setup - fix the load_config reference
    r'FROM \(SELECT reports, temp, printer, site, company FROM dbo\.load_config\(\)\) cfg\s+CROSS JOIN \(SELECT KOTPrinting, KOTAtNightAudit, POSBillAtNightAudit, NoShowAtNightAudit, FomBillCopies\s+FROM Enviro WHERE LogSite_Code = \? OR LogSite_Code = \'HO\'\) e':
    """FROM (SELECT reports, temp, printer, site, company FROM dbo.load_config()) cfg
CROSS JOIN (SELECT KOTPrinting, KOTAtNightAudit, POSBillAtNightAudit, NoShowAtNightAudit, FomBillCopies
FROM Enviro WHERE LogSite_Code = (SELECT TOP 1 LogSite_Code FROM Enviro) OR LogSite_Code = 'HO') e""",

    # system_parameters - fix column names
    r'c\.name AS Setting,\s+CAST\(ISNULL\(e\.\[value\], \'\'\) AS varchar\(255\)\) AS Value':
    r'c.name AS Setting,
CAST(ISNULL(e.value, \'\') AS varchar(255)) AS Value',
}

# Apply all replacements
for old, new in replacements.items():
    old_pattern = re.escape(old)
    content = re.sub(old_pattern, new, content, flags=re.DOTALL | re.IGNORECASE)

# Write back
with open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core\reports.py", "w") as f:
    f.write(content)

print("Done fixing reports!")