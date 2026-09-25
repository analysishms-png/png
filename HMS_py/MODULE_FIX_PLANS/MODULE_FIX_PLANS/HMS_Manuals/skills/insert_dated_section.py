# -*- coding: utf-8 -*-
"""FrontOffice config me dated-reports section insert karta hai."""
import json, sys
sys.stdout.reconfigure(encoding='utf-8')

p = 'HMS_Manuals/skills/frontoffice_config.json'
cfg = json.load(open(p, encoding='utf-8'))

# Skip if already inserted
if any('Dated Reports' in s['title'] for s in cfg['sections']):
    print('Dated section already present, skipping.')
    sys.exit(0)

def shot(name):
    return 'screenshots/05_Reports_Dated/' + name

dated = {
  "title": "9. Dated Reports Analysis — 01-Sep to 18-Sep-2026 (Live Data + Internal Logic)",
  "intro": "Ye section live system (Property 103) se 01-Sep-2026 se 18-Sep-2026 ke date-filter lagakar bana gaya hai. Har report ke saath uska INTERNAL LOGIC diya gaya hai — kaunsi table, kaunsa join, kaunsa date column use hota hai. Screenshots folder: screenshots/05_Reports_Dated/. Detailed logic file: FO_Logic_Explanation_01to18Sep.txt (manual ke saath milegi).\n\nTraining me ye section 3rd day pe padhao — pehle Masters (data language), phir Operations (guest lifecycle), phir ye reports with logic.",
  "subsections": [
    {"title": "9.1 Check In Register (01-18 Sep) — Logic", "screenshot": shot("01_CheckIn_Register_01to18Sep.png"),
     "para": "Navigation: Front Office > Reports > Check In Register > From 01/Sep/2026 To 18/Sep/2026 > Refresh.\n\nINTERNAL LOGIC: guestfolio JOIN roomocc JOIN guestprof WHERE vdate BETWEEN 01 aur 18 Sep, GROUP BY docid+sno1. Advance column = SUM(paycharge.amtcr) WHERE modeset<>'S'. Merged folio mFoliono se dikhta hai.\n\nLive data me dikh raha hai: Guest 'Anurag Kushwaha' (Bageshwar) ka 14+ rooms ka group check-in 01-Sep ko (rooms 101-1151, rate 2500-3000, checkout 03-Sep) — group booking ka perfect example. USER column se operator audit hota hai."},
    {"title": "9.2 Check Out Register (01-18 Sep) — Logic", "screenshot": shot("02_CheckOut_Register.png"),
     "para": "INTERNAL LOGIC: fom_billdetail WHERE billdate BETWEEN dates. Filters: business source, company, travel agent, payment type. Revenue columns revmast (field_type='C', Desk_code='FOM103') se, EXCLUDING ROFF/DISC/CGSS/SGSS/TOUT special codes.\n\nKis source se kitne checkouts hue — market segment analysis ka base."},
    {"title": "9.3 Cashier Report (01-18 Sep) — Logic", "screenshot": shot("03_Cashier_Report.png"),
     "para": "INTERNAL LOGIC (payment reconciliation): paycharge JOIN revmast(field_type='P') WHERE RESTCODE='FOM103' AND VDate BETWEEN dates. Double-count se bachne ka logic: advance settles (ARRES/ADRES) sirf tab jab DbtChkIn<>'Yes'; refdocid-linked entries skip; CHK voucher alag query se.\n\nNetSale = AmtCr - AmtDr. Mode-wise totals (Cash/UPI/Card) = cashier shift-handover ka reconciliation tool."},
    {"title": "9.4 Cancel Bill Details (01-18 Sep) — Logic", "screenshot": shot("04_Cancel_Bill_Details.png"),
     "para": "INTERNAL LOGIC: fom_billdetail WHERE status='Cancel' AND billdate BETWEEN dates. Bill kabhi delete nahi hota — sirf status change + reason. Full audit trail.\n\nAudit point: kaun (u_name) kitne bills cancel kar raha hai."},
    {"title": "9.5 Occupancy Report (01-18 Sep) — Logic", "screenshot": shot("05_Occupancy_Report.png"),
     "para": "INTERNAL LOGIC (sabse important concept): roomocc WHERE chkindate <= to AND (chkoutdate >= from OR chkoutdate IS NULL) — matlab date range ke din jo bhi in-house the (check-in pehle ka ho ya checkout beech ka). Ye 'room-nights consumed' report hai, sirf check-ins nahi.\n\nJoins: room_mast(type='RO'), guestprof (nationality/ID), plan_mast (package), subgroup (company/TA), busssource (segment), rate_list (rack rate comparison). DayUse = chkindate=chkoutdate wale."},
    {"title": "9.6 Expected Check Out (01-18 Sep) — Logic", "screenshot": shot("06_Expected_Check_Out.png"),
     "para": "INTERNAL LOGIC: guestfolio JOIN roomocc WHERE chkoutdate IS NULL AND depdate BETWEEN dates. depdate check-in ke waqt set hoti hai — night audit isi se 'aaj/jo jaane wale' list banata hai. deptime = expected time.\n\nFront desk action: ye list dekh ke express checkout ready rakho, folio balance confirm karo."},
    {"title": "9.7 Complimentary Report (01-18 Sep) — Logic", "screenshot": shot("07_Complimentary_Report.png"),
     "para": "INTERNAL LOGIC: guestprof JOIN roomocc WHERE complimentry='Y' AND chkindate BETWEEN dates. Comp flag profile pe hota hai; comp rooms zero rate ya comp revenue code use karte hain isliye revenue reports me double-count nahi hote.\n\nManager audit: comps kisne sanction kiye."},
    {"title": "9.8 Room Change History (01-18 Sep) — Logic", "screenshot": shot("08_Room_Change_History.png"),
     "para": "INTERNAL LOGIC (self-join trick): roomocc oldr JOIN roomocc newr ON same folio AND newr.roomno=oldr.newroomno AND newr.sno>oldr.sno, WHERE chngdate BETWEEN dates. Room change pe nayi row (sno+1) banti hai, purani me newroomno likha jata hai — pura chain trace hota hai.\n\nColumns: old room/type/rate/plan -> new room/type/rate/plan, changedby, reason. Dispute resolution ka saboot."},
    {"title": "9.9 MIS Room Inventory — Logic", "screenshot": shot("09_MIS_Room_Inventory.png"),
     "para": "INTERNAL LOGIC (live snapshot): total = room_mast WHERE InclCount='Y'; occupied = roomocc WHERE chkoutdate IS NULL with guestfolio+booking+busssource+plan joins; free = total - occupied. RackRate = MAX(rate_list.rate2).\n\nDate filters yahan live position ke liye hain — training me 'aaj kitne room bech sakte hain' wala answer yahan se aata hai."},
    {"title": "9.10 MIS Sale Summary (01-18 Sep) — Logic", "screenshot": shot("10_MIS_Sale_Summary.png"),
     "para": "INTERNAL LOGIC (PIVOT report): revmast heads columns bante hain (EXCLUDE ROFF/DISC/GST/TOUT), paycharge SUM per rev_code per din. Occupancy% = sold/(rooms x days), ADR = RoomRent/room-nights.\n\nManager ka daily revenue dashboard — 01-18 Sep day-wise."},
    {"title": "9.11 MIS Company Contribution — Logic", "screenshot": shot("11_MIS_Company_Contribution.png"),
     "para": "INTERNAL LOGIC: month input (year+month) se start/end date banta hai. Corporate -> guestfolio.company join, warna travelagent. paycharge WHERE paycode='RMCH103' AND vtype='RC' AND sno=1 — sirf ROOM RENT room-nights. Day-wise COUNT matrix per company.\n\nKaunsa company kitne room-nights la raha hai kis din — sales review."},
    {"title": "9.12 MIS Guest Trail — Logic", "screenshot": shot("12_MIS_Guest_Trail.png"),
     "para": "INTERNAL LOGIC: per-folio SUM(paycharge) grouped by type: RoomRent, RoomDisc, ExtraCharge, Tax, Outlet(transfer), CreditAmt. Nights = chkout-chkin (ya today-chkin for in-house).\n\nEk guest ka complete financial journey — bill dispute ka single-window answer."},
    {"title": "9.13 MIS Company wise Analysis — Logic", "screenshot": shot("13_MIS_Company_wise_Analysis.png"),
     "para": "INTERNAL LOGIC: subgroup(Corporate) x guestfolio x paycharge — RoomNights, Guests, GrossRevenue, RoomRent, Outlet transfer, Tax. CASE paycode se amounts split hote hain.\n\nCorporate account performance review — renewal negotiations ka data."},
    {"title": "9.14 MIS Revenue Source — Logic", "screenshot": shot("14_MIS_Revenue_Source.png"),
     "para": "INTERNAL LOGIC (raw SQL): busssource ke against GROUP BY — SUM(RoomNights), SUM(Guests), SUM(GrossRevenue), SUM(RoomRent), SUM(Outlet), SUM(Tax), ADR = RoomRent/NULLIF(RoomNights,0).\n\nBusiness Source master yahan phal deta hai: OTA vs Direct vs Corporate mix — sales strategy ka base."},
    {"title": "9.15 FOM Tax Detail (01-18 Sep) — Logic", "screenshot": shot("15_Tax_FOM_Tax_Detail.png"),
     "para": "INTERNAL LOGIC: paycharge WHERE paycode IN (CGSS103, SGSS103, luxury codes) AND VDate BETWEEN dates — per voucher/bill tax amounts. GST slabs 0%/12% room-rate based (7500 threshold rule).\n\nCA ka monthly GST working — output tax on rooms. Excel export option available."},
    {"title": "9.16 Report Date-Logic Cheatsheet", 
     "table": {
      "headers": ["Report", "Date Column", "Range Ka Matlab", "Special Condition"],
      "rows": [
        ["Check In Register", "guestfolio.vdate", "Us range ke check-ins", "GROUP BY docid+sno1"],
        ["Check Out Register", "fom_billdetail.billdate", "Us range ke bill hue checkouts", "Status active bills"],
        ["Cashier Report", "paycharge.vdate", "Us range ki payments", "DbtChkIn + refdocid dedupe"],
        ["Cancel Bill", "billdate", "Us range ke cancel", "status='Cancel'"],
        ["Occupancy", "chkindate vs chkoutdate overlap", "Range me in-house the", "chkoutdate IS NULL bhi include"],
        ["Expected Checkout", "roomocc.depdate", "Range me departure expected", "chkoutdate IS NULL (abhi in-house)"],
        ["Complimentary", "chkindate", "Range ke comp check-ins", "complimentry='Y'"],
        ["Room Change", "chngdate", "Range me changes", "newroomno<>roomno"]
      ]
     },
     "para": "YE TABLE TRAINING KA CORE HAI: Same From-To har report me ALAG cheez napta hai. Trainee se har report pe poochho — 'is report me date ka matlab kya hai?'"},
    {"title": "9.17 Data Flow — Aapki Entry Database Me Kahan Jaati Hai",
     "table": {
      "headers": ["Screen/Report", "Main Table", "Key Columns", "Linked Tables"],
      "rows": [
        ["WalkIn Check In", "guestfolio + roomocc", "Docid, folio_no, chkindate, roomno, roomrate", "guestprof, plan_mast"],
        ["Advance", "paycharge", "VTYPE=ADRES, AmtCr, PayType", "guestfolio.Docid"],
        ["Room Change", "roomocc (new row sno+1)", "newroomno, chngdate, reasonrchange", "room_mast"],
        ["Settlement/Checkout", "paycharge", "VTYPE=CHK, refdocid", "fom_billdetail"],
        ["Merge Folio", "guestfolio.mFoliono", "mFoliono = merged target", "paycharge.FOLIONODOCID re-point"],
        ["Bill Print", "fom_billdetail", "billno, billdate, status", "guestfolio"],
        ["All Revenue Reports", "paycharge", "PayCode, AmtCr/AmtDr, VDATE", "revmast (heads)"]
      ]
     },
     "para": "Trainee ko ye samjhao — screen pe ek click database me kahan likha jata hai. Isse report ke numbers pe bharosa aata hai aur troubleshooting easy hoti hai."}
  ]
}

# Find Appendix index and insert before it
app_idx = next(i for i, s in enumerate(cfg['sections']) if 'Appendix' in s['title'])
cfg['sections'].insert(app_idx, dated)
# Renumber Appendix section title to 10
cfg['sections'][app_idx + 1]['title'] = cfg['sections'][app_idx + 1]['title'].replace('8. Appendix', '10. Appendix')

json.dump(cfg, open(p, 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
print('Config updated. Sections:', len(cfg['sections']))
for i, s in enumerate(cfg['sections']):
    print(i, '|', s['title'][:70])
