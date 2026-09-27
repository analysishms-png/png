# -*- coding: utf-8 -*-
"""Round 1+2 ke saare findings se module-wise bug .txt files generate karta hai."""
import os, sys
sys.stdout.reconfigure(encoding='utf-8')

BASE = 'HMS_Manuals/Bug_Manual/modules'
os.makedirs(BASE, exist_ok=True)

HDR = """================================================================================
   ANALYSIS HMS - {module} MODULE : BUG REPORT (TESTER FORMAT)
================================================================================
Property: Demo Property | Report Date: 21-Sep-2026 | Round: 1 + 2 (Demo entries)
Method: Manual UI testing on live app - demo entries, empty submits, duplicates,
        report fetches. Source code sirf root-cause confirm karne ke liye dekha.
================================================================================
"""

FMT = """
--------------------------------------------------------------------------------
[{bid}] {title}
Severity : {sev}
Screen   : {screen}

Steps:
{steps}

Expected: {expected}

Actual (BUG): {actual}

Impact: {impact}
{note}
--------------------------------------------------------------------------------"""

MODS = {
"FrontOffice": {
  "file": "FrontOffice_Bugs.txt",
  "module": "FRONT OFFICE",
  "bugs": [
    dict(bid="FO-01", sev="HIGH", title="Check In Register me same guest/booking ki 14+ duplicate rows",
      screen="Reports > Check In Register (/checkinreg)",
      steps="1. Check In Register kholo\n2. From 01-Sep-2026 To 21-Sep-2026\n3. Fetch dabao",
      expected="Har check-in ki ek distinct row (ya guest-level grouping).",
      actual="Ek hi guest/GRC ki 14+ rows (har room entry ke liye). 60 rows me sirf 4-5 unique guests.",
      impact="Counts galat lagte hain; print me duplicates chhapte hain; report par bharosa nahi rehta.",
      note="\nEvidence: screenshots/FO_checkinreg_data.png"),
    dict(bid="FO-02", sev="HIGH", title="Cashier Report me kuch receipts ka BillNo 'Not Found'",
      screen="Reports > Cashier Report (/cashierreport)",
      steps="1. Cashier Report kholo\n2. 01-Sep se 21-Sep, Fetch",
      expected="Har receipt row me bill/receipt number.",
      actual="REC/74, REC/79, REC/77 rows me BillNo = 'Not Found'.",
      impact="Cashier reconciliation me in receipts ka source trace nahi hota (audit gap).",
      note="\nEvidence: screenshots/FO_cashier_data.png"),
    dict(bid="FO-03", sev="MEDIUM", title="Purane URLs 404 dete hain (/walkin, /checkinregister)",
      screen="Walk-In Check-In, Check In Register (direct URLs)",
      steps="1. Browser me /walkin ya /checkinregister kholo",
      expected="Page khule ya redirect ho.",
      actual="Dono 404. Sahi URLs: /walkincheckin, /checkinreg.",
      impact="Purane bookmarks/training links dead-end.",
      note="\nEvidence: screenshots/FO_walkin_stale.png (404 render)"),
    dict(bid="FO-04", sev="LOW", title="Guest History page par kabhi-kabhi 2 error-words visible",
      screen="Operations > Guest History (/guesthistory)",
      steps="1. Guest History kholo",
      expected="Page cleanly load ho.",
      actual="Page-load par state capture me 2 baar 'error' string dikhi (console/hidden element). UI kaam karta hai par yeh intermittent issue check karna chahiye.",
      impact="Minor - intermittent, user impact limited.",
      note=""),
  ],
  "ok": ["Business Source master - create OK, success popup sahi",
         "Business Source duplicate - properly block hota hai ('Name already exists!')",
         "Charge Master - empty submit par required-field validation sahi",
         "Walk-In form - validation sahi, dates current (21-Sep)",
         "In-House Room Status - page load hota hai (slow render, dekha gaya)",
         "Reports (Check-In Reg, Cashier) - data fetch + render OK"],
},
"Reservation": {
  "file": "Reservation_Bugs.txt",
  "module": "RESERVATION",
  "bugs": [
    dict(bid="RES-01", sev="HIGH", title="Past-date (August) reservations par aaj bhi 'Checkin' button active",
      screen="Reservation > Reservation List (/reservationlist)",
      steps="1. Reservation List kholo\n2. Sn 13/14 wali rows dekho (ArrDate 25-Aug-2026, aaj 21-Sep)",
      expected="Past arrival-date wali booking par Checkin allow na ho (ya warning aaye).",
      actual="25-Aug-2026 arrival wali bookings me aaj bhi 'Checkin' button active hai - us date par checkin ho sakta hai jo 1 mahina purani hai.",
      impact="Back-dated check-in possible - room inventory aur reports dono galat ho sakte hain.",
      note="\nEvidence: screenshots/RES2_list.png (rows 13-14, Checkin button visible)"),
    dict(bid="RES-02", sev="MEDIUM", title="Cancelled bookings par bhi 'Delete' button maujood",
      screen="Reservation > Reservation List",
      steps="1. Cancelled (Cancel=Y) rows dekho (Sn 4, 10, 11)\n2. Action buttons dekho",
      expected="Cancelled booking delete na ho - records audit ke liye rakhne chahiye (ya sirf admin ko allow ho).",
      actual="Cancelled bookings par bhi Delete button hai - booking history permanently delete ho sakti hai.",
      impact="Audit trail khatam ho sakta hai. Revenue/cancel reports me gaps aa sakte hain.",
      note="\nEvidence: screenshots/RES2_list.png"),
    dict(bid="RES-03", sev="LOW", title="Business Source dropdown load-par invalid styling",
      screen="Reservation > New Reservation form",
      steps="1. New reservation form kholo, Business Source dekho",
      expected="Load par normal dikhna chahiye.",
      actual="Field load-par invalid/underlined state me hai (cross-module pattern ka hissa).",
      impact="Cosmetic.",
      note="\nEvidence: screenshots/RES_empty_submit.png (warna validation sahi chalti hai)"),
  ],
  "ok": ["Reservation List - 33 bookings, sorting/actions render OK",
         "New Reservation - empty submit par friendly highlight validation",
         "Business Source dropdowns loaded sahi"],
},
"PointOfSale": {
  "file": "POS_Bugs.txt",
  "module": "POINT OF SALE",
  "bugs": [
    dict(bid="POS-01", sev="CRITICAL", title="KOT Entry page poora CRASH - order lena ruka hua hai",
      screen="POS > KOT Entry (/kotentry)",
      steps="1. POS > KOT Entry kholo",
      expected="KOT/order entry form khule.",
      actual="Page crash: 'Undefined variable $restcodes' - poora debug page (stack trace, file path Kot.php:192, PHP version, code) user ko dikhta hai.",
      impact="Is configuration me order entry IMPOSSIBLE. Revenue loss. Sath me internal server details expose - security risk bhi.",
      note="\nEvidence: screenshots/POS_kot_crash.png"),
    dict(bid="POS-02", sev="MEDIUM", title="Outlet Setup ke required dropdowns load-par invalid",
      screen="POS > Setup Outlet",
      steps="1. Setup Outlet kholo, Outlet Nature/KOT dekho",
      expected="Clean form.",
      actual="Outlet Nature, KOT fields load-par hi invalid state me (cross-module pattern).",
      impact="UX confusion.",
      note="\nEvidence: screenshots/POS_outlet_empty.png"),
    dict(bid="POS-03", sev="LOW", title="Table Master duplicate message 'Code' bolta hai, check naam/code dono par hona chahiye",
      screen="POS > Table Master",
      steps="1. Table banao (Code T99, Name 'QA DEMO TABLE')\n2. Wahi Code + naya Name se dobara save karo",
      expected="Dono duplicate cases (code aur name) ke clear alag messages.",
      actual="Same Code par sahi block hota hai lekin message 'Table Master Code already exists' - agar user ne Name duplicate kiya ho to kya hota hai ye bhi verify karna chahiye (is test me code-duplicate hi hua).",
      impact="Minor - message clarity.",
      note="Demo entry: T99 / QA DEMO TABLE (create OK + duplicate block OK)"),
  ],
  "ok": ["Table Master - create OK ('Table Master Inserted successfully!') + duplicate block OK",
         "Setup Outlet - required validation sahi"],
},
"Banquet": {
  "file": "Banquet_Bugs.txt",
  "module": "BANQUET",
  "bugs": [
    dict(bid="BNQ-01", sev="LOW", title="Daily Function Sheet me sirf 'No Data' mila (demo booking na hone par bhi Excel/CSV/Print buttons active)",
      screen="Banquet > Daily Function Sheet (/dailyfunctionsheet)",
      steps="1. DFS kholo\n2. 01-Sep se 21-Sep, Refresh",
      expected="No-data state me export/print buttons disabled ho sakte hain (UX nicety).",
      actual="0 rows par bhi Excel/CSV/Print buttons active hain - blank file print/export ho sakti hai.",
      impact="Minor UX.",
      note="\nEvidence: screenshots/BNQ2_dfs_data.png"),
  ],
  "ok": ["Daily Function Sheet - clean 'No Data Available In Table' message, totals 0",
         "Events master - empty submit validation sahi",
         "Banquet booking page load OK"],
},
"Inventory": {
  "file": "Inventory_Bugs.txt",
  "module": "INVENTORY",
  "bugs": [
    dict(bid="INV-01", sev="MEDIUM", title="Opening Stock me Department dropdown load-par invalid",
      screen="Inventory > Opening Stock",
      steps="1. Opening Stock kholo, Department dekho",
      expected="Clean form.",
      actual="Department field load-par invalid/underlined (cross-module pattern).",
      impact="UX confusion.",
      note=""),
    dict(bid="INV-02", sev="MEDIUM", title="HK godown me negative stock already hai (HK report se linked)",
      screen="Inventory context - HK Stock Report cross-check",
      steps="1. HK Stock Report dekho (Coffee -52 etc.)",
      expected="Inventory me kisi item ka balance negative na ho.",
      actual="HK godown items negative me hain - Inventory module ka godown-wise view bhi check karna chahiye ki wahan bhi yahi dikhe ya chhup raha hai.",
      impact="Stock integrity - valuation galat.",
      note="\nEvidence: screenshots/hks_data.png (HK report se)"),
  ],
  "ok": ["Stock Summary - 01-21 Sep fetch OK, 8 items, totals sahi (Op 158328 / Rec 1325 / Iss 8065 / Bal 151588)",
         "Item Group page load OK",
         "Requisition Slip page load OK"],
},
"Finance": {
  "file": "Finance_Bugs.txt",
  "module": "FINANCE",
  "bugs": [
    dict(bid="FIN-01", sev="MEDIUM", title="Ledger Account - Group Code field load-par invalid",
      screen="Finance > Ledger Account",
      steps="1. Ledger Account kholo, Group Code dekho",
      expected="Clean form.",
      actual="Group Code load-par invalid/underlined state me.",
      impact="UX confusion.",
      note=""),
    dict(bid="FIN-02", sev="MEDIUM", title="Payment Received page kabhi-kabhi poori tarah blank render hota hai",
      screen="Finance > Payment Received (/paymentreceived)",
      steps="1. Payment Received kholo (do-teen baar kholke dekho)",
      expected="Page hamesha cleanly load ho.",
      actual="Ek baar page bilkul blank render hua (sirf header). Reload par theek hua - intermittent.",
      impact="User ko lagta hai system hang - support calls badh sakti hain.",
      note="\nEvidence: screenshots/FIN_ledger_page.png (blank render)"),
  ],
  "ok": ["Ledger Account form load + fields OK",
         "Tax Master (Sundry) form load OK"],
},
"NightAudit": {
  "file": "NightAudit_Bugs.txt",
  "module": "NIGHT AUDIT",
  "bugs": [
    dict(bid="NA-01", sev="MEDIUM", title="Night Audit Process par koi pre-check summary/confirmation nahi",
      screen="Night Audit > Open Night Audit",
      steps="1. Open Night Audit kholo\n2. Screen dekho (process RUN nahi kiya gaya - live data)",
      expected="Process se pehle checklist: open folios, pending KOTs, unpublished bills, expected arrivals ka summary + confirm dialog.",
      actual="Sirf 'For Date: 21-09-2026' + Process button. Ek click me day-end.",
      impact="Galat click se day-end ho sakta hai bina kisi check ke. Recovery mushkil.",
      note="\nEvidence: screenshots/NA_open.png"),
  ],
  "ok": ["Night Audit screen ka For Date sahi (21-09-2026) - stale-date issue yahan nahi",
         "Night Audit Log page load OK (date fields + user filters)"],
},
"HRPayroll": {
  "file": "HRPayroll_Bugs.txt",
  "module": "HR / PAYROLL",
  "bugs": [
    dict(bid="HR-01", sev="MEDIUM", title="Designation create hota hai par SILENT - koi success message nahi",
      screen="HR > Designation Master",
      steps="1. Designation 'QA DEMO DESIGNATION' bhar ke Submit dabao",
      expected="Success popup/toast: 'Designation saved'.",
      actual="Entry save ho gayi (list me row 1 par dikh gayi) par screen par koi message nahi aaya.",
      impact="User sochta hai save nahi hua - duplicate entries ka risk.",
      note="\nDemo entry: 'Qa Demo Designation' (list me visible)\nEvidence: screenshots/HR2_des_after.png"),
    dict(bid="HR-02", sev="MEDIUM", title="Salary Creation - Month/Department load-par invalid",
      screen="HR > Salary Creation",
      steps="1. Salary Creation kholo, Month/Department dekho",
      expected="Clean form.",
      actual="Dono fields load-par invalid/underlined state me.",
      impact="UX confusion.",
      note=""),
  ],
  "ok": ["Designation Master - create functionally OK (58 entries, list render sahi)",
         "Salary Creation page load OK"],
},
"Members": {
  "file": "Members_Bugs.txt",
  "module": "MEMBERS MANAGEMENT",
  "bugs": [
    dict(bid="MEM-01", sev="LOW", title="Member Master - bahut saare optional dropdowns hain, koi group/section heading nahi",
      screen="Members > Member Master",
      steps="1. Member Master form kholo",
      expected="Itne saare fields (30+) sections me grouped hone chahiye (Personal/Address/Membership).",
      actual="Ek hi lamba form - Family Member/Address tabs neeche chhupe hain. Naya user confuse hota hai.",
      impact="Training time badhta hai; data-entry mistakes possible.",
      note="\nEvidence: screenshots/MEM2_empty.png"),
  ],
  "ok": ["Member Master form load OK (photo upload, signature, family grid sab render hote hain)",
         "Membership date default current (21-Sep) sahi"],
},
"Maintenance": {
  "file": "Maintenance_Bugs.txt",
  "module": "MAINTENANCE",
  "bugs": [
    dict(bid="MNT-01", sev="LOW", title="Master form me sirf Name+Active - koi category/priority/location fields nahi",
      screen="Maintenance > Maintenance Master",
      steps="1. Maintenance Master kholo",
      expected="Maintenance item ke saath category/priority jaisi fields useful hoti.",
      actual="Sirf Name + Active Y/N hai. (Simple rakha gaya hai shayad - product team se confirm karna chahiye.)",
      impact="Feature-gap lag sakta hai, bug nahi.",
      note="\nEvidence: screenshots/MNT_master_empty.png (validation 'Please fill in this field' sahi chalti hai)"),
  ],
  "ok": ["Maintenance Master - required validation sahi (browser tooltip 'Please fill in this field.')"],
},
"MallManagement": {
  "file": "MallManagement_Bugs.txt",
  "module": "MALL MANAGEMENT",
  "bugs": [
    dict(bid="MALL-01", sev="MEDIUM", title="Floor dropdowns me shop-naam mixed ('LIQUOR LAND(19)', 'SHOP NO.1')",
      screen="Mall > Lease Agreement / Shop Master (floor dropdowns)",
      steps="1. Lease Agreement kholo\n2. Floor dropdown kholo",
      expected="Floor list me sirf floors.",
      actual="21 options me shops bhi floor ke roop me aa rahe hain.",
      impact="Galat floor select ho sakta hai; master data ganda.",
      note=""),
    dict(bid="MALL-02", sev="LOW", title="MR Entry - Challan No./Inv. No. disabled jab tak Type select na ho (acha hai) par koi hint nahi",
      screen="Mall > MR Entry (/mrentry)",
      steps="1. MR Entry kholo, Type select karne se pehle Challan No. dekho",
      expected="Disabled fields par tooltip/hint: 'Pehle Type select karo'.",
      actual="Fields grey hain par koi hint nahi - user samajh nahi pata aage kya kare.",
      impact="Minor UX.",
      note="\nEvidence: screenshots/MALL2_mr_empty.png (Type validation sahi hai)"),
  ],
  "ok": ["Lease Agreement - friendly validation ('Please select a Tenant.')",
         "MR Entry - Type required validation sahi",
         "Shop Master load OK"],
},
"Extras": {
  "file": "Extras_Bugs.txt",
  "module": "EXTRAS (Tax / General Setup)",
  "bugs": [
    dict(bid="EX-01", sev="LOW", title="Tax Master - Sundry/Ledger dropdowns me 115 accounts plain list me",
      screen="Extras > Tax Master",
      steps="1. Tax Master kholo, Ledger Account dropdown kholo",
      expected="115 accounts searchable/grouped hone chahiye.",
      actual="Plain long list - scroll karke dhundhna padta hai (select2/search nahi laga kuch jagah).",
      impact="Slow data entry, galat account select hone ka risk.",
      note=""),
  ],
  "ok": ["Tax Master form load OK (Sundry/Ledger/Payable dropdowns populated)",
         "Tax Structure page route OK"],
},
"CROSS": {
  "file": "CrossCutting_Bugs.txt",
  "module": "CROSS-CUTTING (Multiple Modules)",
  "bugs": [
    dict(bid="X-01", sev="HIGH", title="5+ modules me required dropdowns page-load par hi 'invalid' dikhti hain",
      screen="POS Outlet, Inventory (Requisition/Opening), Finance Ledger, HR Salary, Reservation",
      steps="1. Koi bhi form kholo bina kuch kiye\n2. Required selects dekho",
      expected="Validation highlight sirf submit attempt ke baad.",
      actual="Load par hi underlined/invalid state - same framework-wide pattern.",
      impact="Professional look kharab; user ko lagta hai form already galat bhara hai. Ek CSS/JS fix se sab modules theek.",
      note=""),
    dict(bid="X-02", sev="MEDIUM", title="Support/Ticket widget har page par upar chhaya rehta hai",
      screen="Saare screens (bottom-right headset)",
      steps="1. Koi bhi screen kholo\n2. HK Laundry Send me submit karo",
      expected="Widget chhupa ho, sirf click par khule; forms ke saath interfere na kare.",
      actual="Har page par prominent; HK Laundry me submit karte hi auto-open ho jata tha (focus chura leta hai).",
      impact="Data-entry disturbance; HK silent-fail ke saath milakar confuse karta hai.",
      note=""),
    dict(bid="X-03", sev="MEDIUM", title="Kayi masters SILENT save karte hain (success message nahi)",
      screen="HR Designation, HK Floor, HK Lost & Found, Start/Complete Cleaning",
      steps="1. Designation banao / Floor banao / L&F entry karo",
      expected="Har save par visible confirmation.",
      actual="Kuch masters me popup hai (Business Source, Table Master) par kuch me bilkul silent (Designation, Floor, L&F). Inconsistent pattern.",
      impact="Duplicate entries + user confusion. Ek standard toast pattern sab jagah lagao.",
      note=""),
  ],
  "ok": ["Login flow stable (dono rounds me kaam kiya)",
         "Navigation/menu saare 13 modules ke pages tak pahuncha",
         "Har module me kam-se-kam ek data-entry + ek report screen test hua"],
},
}

for key, m in MODS.items():
    out = HDR.format(module=m["module"])
    out += "\nTOTAL BUGS: %d\n" % len(m["bugs"])
    for b in m["bugs"]:
        out += FMT.format(**b)
    out += "\n\n================================================================================\n  JO SAHI KAAM KAR RAHA HAIN (VERIFIED)\n================================================================================\n"
    for o in m["ok"]:
        out += "  [OK] %s\n" % o
    out += "\n================================================================================\nEND OF " + m["module"] + " BUG REPORT\n================================================================================\n"
    with open(os.path.join(BASE, m["file"]), "w", encoding="utf-8") as f:
        f.write(out)
    print("wrote", m["file"])

print("DONE")
