#!/usr/bin/env python3
"""Script to insert Main Setup reports into reports.py"""

import re

# Read the current file
with open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core\reports.py", "r") as f:
    content = f.read()

# Find the closing bracket of REPORTS list
match = re.search(r'\n\]\s*\n\n# --------------------------------------------------------------------------', content)
if not match:
    # Try alternative pattern
    match = re.search(r'\n\]\s*\n\n#', content)

if match:
    insert_pos = match.start() + 1  # Position after the newline before ]
    print(f"Found insertion point at position {insert_pos}")
    
    # The new reports to insert - using a list of dicts to avoid string issues
    new_reports_list = [
        {
            "key": "company_list",
            "title": "Company Master List",
            "module": "Main Setup",
            "menu": ["Company Master List"],
            "cols": ["CompCode", "CompanyName", "ShortName", "City", "State", "Phone", "Active"],
            "sql": (
                "SELECT TOP ({L}) CompCode, Comp_Name, SName, City, State, Phone, ActiveYN "
                "FROM Company WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY CompCode"
            ),
            "note": "Company master list (VB6 CompMast.frm report)",
        },
        {
            "key": "company_detail",
            "title": "Company Detail",
            "module": "Main Setup",
            "menu": ["Company Detail"],
            "cols": ["CompCode", "CompanyName", "ShortName", "Address1", "Address2", "Address3", "City", "Pin", "Phone", "Fax", "Email", "GSTIN", "PAN", "CST", "LST", "ContactPerson", "ContactTitle", "CompanyType", "Active"],
            "sql": (
                "SELECT TOP ({L}) CompCode, Comp_Name, SName, Add1, Add2, Add3, City, Pin, Phone, Fax, EMail, GSTIN, PANNo, CSTNo, LSTNo, ConPerson, ConPrefix, CompanyType, ActiveYN "
                "FROM Company WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY CompCode"
            ),
            "note": "Company detail with all address/contact fields (VB6 CompMast.frm report)",
        },
        {
            "key": "fa_enviro_ageing",
            "title": "FA Ageing Analysis",
            "module": "Main Setup",
            "menu": ["FA Ageing Analysis"],
            "cols": ["Slab", "Days", "Amount"],
            "sql": (
                "SELECT 'Slab 1' AS Slab, Age1 AS Days, Amt1 AS Amount FROM FAEnviro WHERE Site_Code = ? OR LogSite_Code = 'HO' "
                "UNION ALL SELECT 'Slab 2', Age2, Amt2 FROM FAEnviro WHERE Site_Code = ? OR LogSite_Code = 'HO' "
                "UNION ALL SELECT 'Slab 3', Age3, Amt3 FROM FAEnviro WHERE Site_Code = ? OR LogSite_Code = 'HO' "
                "UNION ALL SELECT 'Slab 4', Age4, Amt4 FROM FAEnviro WHERE Site_Code = ? OR LogSite_Code = 'HO' "
                "UNION ALL SELECT 'Slab 5', Age5, Amt5 FROM FAEnviro WHERE Site_Code = ? OR LogSite_Code = 'HO' "
                "UNION ALL SELECT 'Slab 6', Age6, Amt6 FROM FAEnviro WHERE Site_Code = ? OR LogSite_Code = 'HO' "
            ),
            "note": "FA ageing slabs (VB6 FaEnvron.frm Age1-6/Amt1-6)",
        },
        {
            "key": "fa_enviro_tagada",
            "title": "Tagada Letter Settings",
            "module": "Main Setup",
            "menu": ["Tagada Letter Settings"],
            "cols": ["Header1", "Header2", "Header3", "Header4", "Header5", "Footer1", "Footer2", "Footer3", "Footer4", "Footer5"],
            "sql": (
                "SELECT TagadaHeader1, TagadaHeader2, TagadaHeader3, TagadaHeader4, TagadaHeader5, "
                "TagadaFooter1, TagadaFooter2, TagadaFooter3, TagadaFooter3fa, TagadaFooter4, TagadaFooter5 "
                "FROM FAEnviro WHERE Site_Code = ? OR LogSite_Code = 'HO'"
            ),
            "note": "Tagada letter headers/footers (VB6 FaEnvron.frm)",
        },
        {
            "key": "tax_master_list",
            "title": "Tax Master List",
            "module": "Main Setup",
            "menu": ["Tax Master List"],
            "cols": ["Code", "TaxName", "ShortName", "SundryName", "LedgerAC", "PayableAC", "UnregisteredAC", "SystemDefined"],
            "sql": (
                "SELECT TOP ({L}) Code, Name, ShortName, SundryName, Accode, PayableAC, UnregisteredAC, "
                "CASE WHEN ActiveYN = 'Y' THEN 'Yes' ELSE 'No' END AS SystemDefined "
                "FROM RevMast WHERE FieldType = 'T' AND (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Code"
            ),
            "note": "Tax master list (VB6 FrmTaxMast.frm report)",
        },
        {
            "key": "tax_structure_list",
            "title": "Tax Structure List",
            "module": "Main Setup",
            "menu": ["Tax Structure List"],
            "cols": ["StructureCode", "StructureName", "TaxCode", "TaxName", "Rate", "ApplyOn", "LLimit", "Comparison", "ULimit", "Condition"],
            "sql": (
                "SELECT t.Code AS StructureCode, t.Name AS StructureName, l.TaxCode, tm.Name AS TaxName, "
                "l.Rate, l.Nature, l.Limit, l.CondApp, l.Limit1, l.CompOp "
                "FROM TaxStru t JOIN TaxStruLines l ON t.Code = l.StrCode "
                "JOIN TaxMast tm ON tm.Code = l.TaxCode "
                "WHERE t.LogSite_Code = ? OR t.LogSite_Code = 'HO' ORDER BY t.Code, l.SNo"
            ),
            "note": "Tax structure with lines (VB6 FrmTaxStruMast.frm report)",
        },
        {
            "key": "payment_type_list",
            "title": "Payment Type List",
            "module": "Main Setup",
            "menu": ["Payment Type List"],
            "cols": ["Code", "PaymentName", "ShortName", "LedgerAccount", "Nature", "A/CPosting", "Detailed/Summarize", "SystemDefined"],
            "sql": (
                "SELECT TOP ({L}) Code, Name, ShortName, Accode, PayType, "
                "CASE WHEN FieldType = 'P' THEN 'Dr' ELSE 'Cr' END AS Nature, "
                "CASE WHEN AcPosting = 'D' THEN 'Detailed' ELSE 'Summarize' END AS AcPosting, "
                "CASE WHEN SysYN = 'Y' THEN 'Yes' ELSE 'No' END AS SystemDefined "
                "FROM RevMast WHERE PAYTYPE <> '' AND (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Code"
            ),
            "note": "Payment type list (VB6 fdPaymentCharge.frm report)",
        },
        {
            "key": "room_feature_list",
            "title": "Room Feature Master List",
            "module": "Main Setup",
            "menu": ["Room Feature Master List"],
            "cols": ["Code", "Name", "SystemDefined"],
            "sql": (
                "SELECT TOP ({L}) Code, Name, CASE WHEN SysYN = 'Y' THEN 'Yes' ELSE 'No' END AS SystemDefined "
                "FROM RoomFeature WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Code"
            ),
            "note": "Room feature master (VB6 General Setup -> Room Feature)",
        },
        {
            "key": "godown_list",
            "title": "Godown / Location Master List",
            "module": "Main Setup",
            "menu": ["Godown / Location Master List"],
            "cols": ["Code", "Name", "ShortName", "DeptCode", "SystemDefined"],
            "sql": (
                "SELECT TOP ({L}) Code, Name, ShortName, DepartCode, "
                "CASE WHEN SysYN = 'Y' THEN 'Yes' ELSE 'No' END AS SystemDefined "
                "FROM GodownMast WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Code"
            ),
            "note": "Godown/Location master (VB6 General Setup -> Godown)",
        },
        {
            "key": "voucher_type_config",
            "title": "Voucher Type Configuration",
            "module": "Main Setup",
            "menu": ["Voucher Type Configuration"],
            "cols": ["V_Type", "Category", "NCat", "Description", "NumberMethod", "StartNo", "ShortName", "SiteCode"],
            "sql": (
                "SELECT TOP ({L}) V_Type, Category, NCat, Description, Number_Method, Start_No, Short_Name, Site_Code "
                "FROM Voucher_Type WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Category, V_Type"
            ),
            "note": "Voucher type configuration (VB6 General Setup -> Voucher Environment)",
        },
        {
            "key": "user_master_list",
            "title": "User Master List",
            "module": "Main Setup",
            "menu": ["User Master List"],
            "cols": ["UserName", "FullName", "ShortName", "Active", "GodCode", "FloorCode", "AllowDateChange", "BackColor"],
            "sql": (
                "SELECT TOP ({L}) USER_NAME, LABEL, ShortName, ActiveYN, GodCode, FloorCode, AllowDtChng, BackColor "
                "FROM UserMast WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY USER_NAME"
            ),
            "note": "User master list (VB6 UserMast.frm report)",
        },
        {
            "key": "user_permissions",
            "title": "User Permissions Matrix",
            "module": "Main Setup",
            "menu": ["User Permissions"],
            "cols": ["UserName", "Module", "View", "Add", "Edit", "Delete", "Print", "Report", "Admin"],
            "sql": (
                "SELECT mh.UserName, mh.Module_Name AS Module, "
                "CASE WHEN mh.Opt1 = 'Y' THEN 'Yes' ELSE 'No' END AS View, "
                "CASE WHEN mh.Opt2 = 'Y' THEN 'Yes' ELSE 'No' END AS Add, "
                "CASE WHEN mh.Opt3 = 'Y' THEN 'Yes' ELSE 'No' END AS Edit, "
                "CASE WHEN mh.Opt4 = 'Y' THEN 'Yes' ELSE 'No' END AS Delete, "
                "CASE WHEN mh.Opt5 = 'Y' THEN 'Yes' ELSE 'No' END AS Print, "
                "CASE WHEN mh.Opt6 = 'Y' THEN 'Yes' ELSE 'No' END AS Report, "
                "CASE WHEN mh.Opt7 = 'Y' THEN 'Yes' ELSE 'No' END AS Admin "
                "FROM menuHelp mh WHERE mh.UserName = ? AND mh.CompCode = ? AND mh.Flag <> 'V' "
                "ORDER BY mh.Opt1, mh.Opt2, mh.Opt3, mh.Opt4, mh.Code"
            ),
            "note": "User permission matrix (VB6 UserPermission.frm report)",
        },
        {
            "key": "system_parameters",
            "title": "System Parameters (Enviro)",
            "module": "Main Setup",
            "menu": ["System Parameters"],
            "cols": ["Setting", "Value", "Type"],
            "sql": (
                "SELECT TOP ({L}) c.name AS Setting, "
                "CAST(ISNULL(e.[value], '') AS varchar(255)) AS Value, "
                "CASE WHEN c.name IN ('Age1','Age2','Age3','Age4','Age5','Age6','Amt1','Amt2','Amt3','Amt4','Amt5','Amt6','FomBillCopies','NCKOTPercentage') THEN 'int' "
                "WHEN c.name IN ('TagadaHeader1','TagadaHeader2','TagadaHeader3','TagadaHeader4','TagadaHeader5','TagadaFooter1','TagadaFooter2','TagadaFooter3','TagadaFooter3fa','TagadaFooter4','TagadaFooter5','Bill_Header','Bill_Footer','KOTHeader1','KOTHeader2','KOTHeader3','KOTHeader4','Checkout','CheckoutVar','Variation','VariationBefore','KOTPrinting','KOTPrintEdited','KOTOutletSelection','TaxSummary','TOKENPrint','RcptPrinting','ReservationPrinting','BillPrintingSummerised','FomBillCopies','NCKOTPercentage') THEN 'varchar' "
                "WHEN c.name IN ('ArrDateTimeEdit','GRCMandatory','RoomRateEditable','RoomIncTaxEditable','RoomServiceChargeEditable','CreditCardInfoMandatoryYN') THEN 'yn1' "
                "WHEN c.name IN ('Checkout','CheckoutVar','Variation','VariationBefore','KOTPrinting','KOTPrintEdited','KOTOutletSelection','TaxSummary','TOKENPrint','RcptPrinting','ReservationPrinting','BillPrintingSummerised','FomBillCopies','NCKOTPercentage') THEN 'str' "
                "ELSE 'other' END AS Type "
                "FROM sys.columns c LEFT JOIN Enviro e ON c.name = e.name "
                "WHERE c.object_id = OBJECT_ID('Enviro') ORDER BY c.column_id"
            ),
            "note": "All Enviro settings with type classification (VB6 frmEnviro.frm report)",
        },
        {
            "key": "printing_setup",
            "title": "Printing Setup / Parameters",
            "module": "Main Setup",
            "menu": ["Printing Setup"],
            "cols": ["ReportsPath", "TempPath", "Printer", "Site", "Company", "KOTPrinting", "KOTAtNightAudit", "POSBillAtNightAudit", "NoShowAtNightAudit", "FomBillCopies"],
            "sql": (
                "SELECT cfg.reports AS ReportsPath, cfg.temp AS TempPath, cfg.printer AS Printer, "
                "cfg.site AS Site, cfg.company AS Company, "
                "e.KOTPrinting, e.KOTAtNightAudit, e.POSBillAtNightAudit, e.NoShowAtNightAudit, e.FomBillCopies "
                "FROM (SELECT reports, temp, printer, site, company FROM dbo.load_config()) cfg "
                "CROSS JOIN (SELECT KOTPrinting, KOTAtNightAudit, POSBillAtNightAudit, NoShowAtNightAudit, FomBillCopies "
                "FROM Enviro WHERE LogSite_Code = ? OR LogSite_Code = 'HO') e"
            ),
            "note": "Printing setup with INI paths + Enviro flags (VB6 Printing Setup report)",
        },
    ]
    
    # Convert to string representation
    import json
    new_reports_str = "        # ============================================================\n"
    new_reports_str += "        # Main Setup Reports (VB6 Main Setup -> Reports)\n"
    new_reports_str += "        # ============================================================\n"
    
    for r in new_reports_list:
        # Convert to Python dict representation
        s = "        {\n"
        for k, v in r.items():
            if isinstance(v, str) and "\n" in v:
                # Multiline string - use triple quotes
                s += f'            "{k}": """{v}""",\n'
            else:
                s += f'            "{k}": {json.dumps(v)},\n'
        s += "        },\n"
        new_reports_str += s
    
    # Find insertion point
    import re
    match = re.search(r'\n\]\s*\n\n# --------------------------------------------------------------------------', content)
    if not match:
        match = re.search(r'\n\]\s*\n\n#', content)
    
    if match:
        insert_pos = match.start() + 1
        content = content[:insert_pos] + "\n" + new_reports_str + "\n" + content[insert_pos:]
        
        with open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core\reports.py", "w") as f:
            f.write(content)
        
        print("Successfully inserted Main Setup reports!")
    else:
        print("Could not find insertion point")
else:
    print("Could not find insertion point")