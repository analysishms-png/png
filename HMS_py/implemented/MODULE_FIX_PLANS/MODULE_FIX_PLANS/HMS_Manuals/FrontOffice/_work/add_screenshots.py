# -*- coding: utf-8 -*-
"""Add screenshots + logic reference to FrontOfficeModuleManual.docx (in place, with backup)."""
import os, shutil, copy, zipfile
import docx
from docx.shared import Inches, Pt, RGBColor
from docx.oxml import OxmlElement
from docx.oxml.ns import qn
from docx.enum.text import WD_ALIGN_PARAGRAPH

BASE = r"C:/Users/PC/Downloads/189/113/MANUAL/HMS_Manuals/FrontOffice"
SRC  = BASE + "/FrontOfficeModuleManual.docx"
BAKDIR = BASE + "/_backup"
SHOTS = BASE + "/screenshots"

os.makedirs(BAKDIR, exist_ok=True)
bak = BAKDIR + "/FrontOfficeModuleManual_pre_screenshots.docx"
if not os.path.exists(bak):
    shutil.copy(SRC, bak)
    print("backup ->", bak)

d = docx.Document(SRC)
paras = list(d.paragraphs)

# ---------- 1. snapshot: headings, blip locations, rels ----------
heads = []           # (index, paragraph, text)
blip_owner = {}      # rId -> paragraph containing that blip
for i, p in enumerate(paras):
    if p.style.name.startswith("Heading"):
        heads.append((i, p, p.text.strip()))
    for b in p._p.findall(".//" + qn("a:blip")):
        rid = b.get(qn("r:embed"))
        blip_owner.setdefault(rid, p)

rid_of_media = {}
for rid, rel in d.part.rels.items():
    if "media" in rel.target_ref:
        rid_of_media[rel.target_ref.split("/")[-1]] = rid

def section_range(title):
    for k, (i, p, t) in enumerate(heads):
        if t == title:
            end = heads[k + 1][0] if k + 1 < len(heads) else len(paras)
            return i, end
    raise KeyError("heading not found: " + title)

def nav_anchor(title, contains=None):
    """paragraph object right after which an image should sit"""
    s, e = section_range(title)
    seg = paras[s:e]
    if contains:
        for p in seg:
            if contains in p.text:
                return p
    for p in seg:
        if p.text.strip().startswith("Navigation Path"):
            return p
    for p in reversed(seg):
        if p.text.strip():
            return p
    return seg[0]

# ---------- helpers ----------
def new_centered_p():
    p = OxmlElement("w:p")
    pPr = OxmlElement("w:pPr")
    jc = OxmlElement("w:jc"); jc.set(qn("w:val"), "center")
    pPr.append(jc); p.append(pPr)
    return p

def make_caption(text):
    cp = d.add_paragraph()
    r = cp.add_run(text)
    r.italic = True; r.font.size = Pt(9); r.font.color.rgb = RGBColor(0x59, 0x59, 0x59)
    cp.alignment = WD_ALIGN_PARAGRAPH.CENTER
    return cp

def run_containing_blip(p_elem):
    for r in p_elem.iter(qn("w:r")):
        if r.find(".//" + qn("a:blip")) is not None:
            return r
    return None

def move_image(src_para, anchor_para, caption=None):
    """move first blip-run of src_para to a new centered paragraph after anchor_para"""
    r = run_containing_blip(src_para._p)
    if r is None:
        print("  !! no blip in source paragraph"); return None
    newp = new_centered_p()
    newp.append(copy.deepcopy(r))
    r.getparent().remove(r)
    # position: after anchor's caption chain (anchor element itself if first)
    anchor_para._p.addnext(newp)
    last = newp
    if caption:
        cap = make_caption(caption)
        last.addnext(cap._p); last = cap._p
    return last

def insert_new_image(img_path, anchor_elem, caption):
    tmp = d.add_paragraph()
    tmp.alignment = WD_ALIGN_PARAGRAPH.CENTER
    tmp.add_run().add_picture(img_path, width=Inches(6.2))
    anchor_elem.addnext(tmp._p)
    cap = make_caption(caption)
    tmp._p.addnext(cap._p)
    return cap._p

# ---------- 2. move the 14 off-by-one matched images ----------
MATCHED = [
    ("image3.png",  "1.1 FOM Parameter",           "FOM Parameter"),
    ("image4.png",  "1.2 Business Source",         "Business Source"),
    ("image5.png",  "1.3 Booking Source",          "Booking Source"),
    ("image6.png",  "1.4 Guest Status",            "Guest Status"),
    ("image7.png",  "1.5 Charge Master",           "Charge Master"),
    ("image8.png",  "1.6 Room Features",           "Room Features"),
    ("image9.png",  "1.7 Room Category",           "Room Category"),
    ("image10.png", "1.8 Room Master",             "Room Master"),
    ("image11.png", "1.9 Plan Master",             "Plan Master"),
    ("image12.png", "1.10 Building Master",        "Building Master"),
    ("image13.png", "2.1 Front Office Room Status","Front Office Room Status"),
    ("image14.png", "2.2 In-House Room Status",    "In-House Room Status"),
    ("image15.png", "2.4 Check-in List",           "Check-in List"),
    ("image16.png", "2.5 Walk-in Check-in",        "Walk-in Check-in"),
]
print("--- moving matched images ---")
for media, sec, label in MATCHED:
    src_p = blip_owner[rid_of_media[media]]
    anc = nav_anchor(sec)
    move_image(src_p, anc, "Screenshot: " + label)
    print("  moved", media, "->", sec)

# ---------- 3. move unmatched images stuck inside heading paragraphs ----------
print("--- moving stray heading images ---")
STRAY = [
    ("image22.png", "3.1 Guest Ledger",        None),
    ("image23.png", "3.2 Guest Charge",        None),
    ("image28.png", "4.1 Cashier Report",      None),
    ("image29.png", "4.1 Occupancy Report",    None),
    ("image33.png", "4.6 Check-out Register",  None),
]
empty_headings = []
for media, sec, _ in STRAY:
    src_p = blip_owner[rid_of_media[media]]
    anc = nav_anchor(sec)
    move_image(src_p, anc, None)
    if src_p.style.name.startswith("Heading") and not src_p.text.strip() \
       and src_p._p.find(".//" + qn("a:blip")) is None:
        empty_headings.append(src_p)
    print("  moved", media, "->", sec)

for p in empty_headings:   # drop now-empty heading paragraph (was image-only H1)
    p._p.getparent().remove(p._p)
    print("  removed empty heading paragraph")

# ---------- 4. insert 16 new screenshots ----------
print("--- inserting new screenshots ---")
NEW = [
    ("00_Login/01_Login_Page.png",        "SECTION 2 | LOGIN & NAVIGATION",  "Login Page",                       "Provide access"),
    ("02_Operations/01_Blank_GRC.png",    "2.5 Walk-in Check-in",            "Blank GRC (Guest Registration Card)", None),
    ("02_Operations/05_Bill_Reprint.png", "3.4 Bill Print / Bill Cancellation","Bill Reprint",                    None),
    ("02_Operations/06_Bill_ReSettlement.png", "3.3 Room Bill Settlement",   "Bill Re-Settlement",               None),
    ("02_Operations/07_Misc_Payment.png", "4.1 Cashier Report",              "Misc Payment / Rectification",     None),
    ("02_Operations/08_Merge_Folio.png",  "3.6 Merge Folio / Reverse Merge", "Merge Folio",                      None),
    ("02_Operations/09_Reverse_Merge_Folio.png", "3.6 Merge Folio / Reverse Merge", "Reverse Merge Folio",     None),
    ("02_Operations/11_Add_New_Profile.png", "2.7 Guest Profile",            "Add New Profile",                  None),
    ("03_Reports/01_CheckIn_Register.png","4.6 Check-in Register",           "Check-in Register",                None),
    ("03_Reports/02_CheckOut_Register.png","4.6 Check-out Register",         "Check-out Register",               None),
    ("03_Reports/03_Cashier_Report.png",  "4.1 Cashier Report",              "Cashier Report",                   None),
    ("03_Reports/04_Cancel_Bill_Details.png", "3.4 Bill Print / Bill Cancellation", "Cancel Bill Details",     None),
    ("03_Reports/05_Occupancy_Report.png","4.1 Occupancy Report",            "Occupancy Report",                 None),
    ("03_Reports/06_Expected_CheckOut.png","4.2 Occupancy Forecast",         "Expected Check-out",               None),
    ("03_Reports/07_Complimentary_Report.png","4.3 Guest Status Report",     "Complimentary Report",             None),
    ("03_Reports/08_Room_Change_History.png","2.8 Amend Stay",               "Room Change History",              None),
]
last_in_sec = {}
for rel, sec, label, contains in NEW:
    anc = last_in_sec.get(sec) or nav_anchor(sec, contains)
    el = insert_new_image(SHOTS + "/" + rel, anc._p if hasattr(anc, "_p") else anc, "Screenshot: " + label)
    last_in_sec[sec] = el
    print("  inserted", rel, "->", sec)

# ---------- 5. small text fixes ----------
print("--- text fixes ---")
s, e = section_range("4.1 Cashier Report")
for p in paras[s:e]:
    if p.text.strip().startswith("Provides occupancy reporting"):
        for r in list(p.runs): r._r.getparent().remove(r._r)
        p.add_run("Provides cashier-wise payment and settlement activity for a selected date "
                  "range - advances, checkout settlements and misc receipts per payment mode "
                  "(Cash / UPI / Card / Company). Used for shift-handover cash reconciliation.")
        print("  fixed Cashier Report purpose text")
s, e = section_range("4.6 Check-out Register")
for p in paras[s:e]:
    if p.text.strip().startswith("Retrieves check-in register data"):
        for r in list(p.runs): r._r.getparent().remove(r._r)
        p.add_run("Retrieves check-out register data through the reporting/property route. "
                  "Bills are listed from fom_billdetail by bill-date with revenue-wise columns.")
        print("  fixed Check-out Register text")

# ---------- 6. SECTION 8 | SCREEN LOGIC REFERENCE ----------
print("--- logic section ---")
B = []
B.append(("h1", "SECTION 8 | SCREEN LOGIC REFERENCE (01-18 SEP)"))
B.append(("p", "Condensed internal logic of every Front Office screen and report, distilled from "
               "the analysishms-master (Laravel) codebase. Use it to explain the 'why' behind each "
               "screen during training. Full detail: FO_Logic_Explanation_01to18Sep.txt"))
B.append(("h2", "B.1 Core Data Model (6 Tables)"))
B.append(("b", "guestfolio - master bill ledger; one Docid/folio_no per check-in; mFoliono links merged folios; every charge/payment hangs off its Docid."))
B.append(("b", "roomocc - actual room-stay rows; chkoutdate IS NULL = in-house; newroomno = room change; sno/sno1 handle repeat stays."))
B.append(("b", "guestprof - guest profile; reused for repeat guests (search by mobile); source of nationality/ID/GuestStatus in reports."))
B.append(("b", "paycharge - common financial ledger of FO, POS, Banquet, Laundry; VTYPE (RC=room charge, ARRES/ADRES=advance, CHK=checkout bill); AmtCr=charge, AmtDr=payment; balance = SUM(AmtCr) - SUM(AmtDr); RESTCODE tells which desk posted."))
B.append(("b", "room_mast + room_cat - rooms and categories; InclCount='Y' rooms only are counted in occupancy/inventory."))
B.append(("b", "Master tables - plan_mast (EP/CP/MAP/AP tariff), revmast (revenue heads, field_type C/P), subgroup (company/TA/OTA), busssource, gueststats, rate_list, fom_billdetail (printed bills; status='Cancel' tracks cancellations)."))
B.append(("h2", "B.2 Master Screens - Internal Logic"))
B.append(("b", "FOM Parameter: global FO settings (checkout time, RRTaxInc, folio series, night-audit lock). One wrong value affects every bill."))
B.append(("b", "Business Source: market segments; stored on guestfolio.busssource; Revenue Source Report groups revenue by this."))
B.append(("b", "Booking Source: booking.bookedby; Room Inventory joins it with busssource for market segment."))
B.append(("b", "Guest Status: guestprof.guest_status FK; gives the GuestStatus column in the Occupancy Report."))
B.append(("b", "Charge Master: revmast charge heads (Desk_code='FOM'); reports exclude special codes ROFF, DISC, CGSS/SGSS, TOUT, RMCH."))
B.append(("b", "Plan Master: EP/CP/MAP/AP; Night Audit auto-posts meal charges per planamt; Occupancy 'package' column = plan name."))
B.append(("b", "Room Features: amenity tags shown with room availability."))
B.append(("b", "Room Category: availability = NoOfRoom - occupied; rate_list is category-wise."))
B.append(("b", "Room Master: physical rooms; InclCount flag decides occupancy/inventory counting."))
B.append(("b", "Building Master: block-wise occupancy and housekeeping assignment."))
B.append(("h2", "B.3 Operations Screens - Internal Logic"))
B.append(("b", "Blank GRC: print-only template, reads no data - same fields as Walk-in Check-in."))
B.append(("b", "Walk-in Check-in: availability from room_mast vs roomocc (chkoutdate IS NULL) -> reuse/insert guestprof -> INSERT guestfolio -> INSERT roomocc -> advance to paycharge (VTYPE=ADRES) -> room 'O'. All in one DB transaction - failure rolls back, never a half folio."))
B.append(("b", "Check-in List: guestfolio JOIN roomocc by vdate; advance = SUM(paycharge.amtcr) WHERE modeset != 'S' (settled advances excluded)."))
B.append(("b", "Room Status: room_mast LEFT JOIN roomocc (chkoutdate IS NULL); rooms not found = VACANT; housekeeping tables give cleanliness."))
B.append(("b", "Bill Reprint: read-only reprint from fom_billdetail - no new voucher, no accounting effect."))
B.append(("b", "Bill Re-Settlement: old settlement reversed via refdocid trail, bill back to open, new VNO issued; entries are never deleted (audit trail)."))
B.append(("b", "Misc Payment/Rect.: cash entries outside a folio (petty cash, corrections); appear in the Cashier Report."))
B.append(("b", "Merge Folio: other folios' Docids go into target's mFoliono and paycharge.FOLIONODOCID is re-pointed; Reverse Merge undoes it in order."))
B.append(("b", "In-House Room Status: live folio balance = SUM(AmtCr - AmtDr) per in-house guest."))
B.append(("b", "Add New Profile: guestprof entry without check-in; guest code reused at Walk-in/Reservation."))
B.append(("b", "Amend Stay: roomocc UPDATE; room change = old row keeps roomno, gets newroomno + chngdate, new row sno+1 - this is what makes Room Change History possible."))
B.append(("h2", "B.4 Reports - Query Logic (01-18 Sep data)"))
B.append(("b", "Check-in Register: guestfolio.vdate range; merged folios show mFoliono; TotalGuest = adult + children; operator shown in USER column."))
B.append(("b", "Check-out Register: fom_billdetail by billdate + paycharge revenue columns via revmast (field_type='C', Desk_code='FOM')."))
B.append(("b", "Cashier Report: RESTCODE='FOM'; advances appear only when not applied at check-in (DbtChkIn<>'Yes'); refdocid-linked entries skipped to avoid double count; CHK vouchers from second query; Net = AmtCr - AmtDr; mode-wise Cash/UPI/Card totals."))
B.append(("b", "Cancel Bill Details: status='Cancel' (never deleted) + reason - full fraud/audit trail."))
B.append(("b", "Occupancy Report: overlap logic - chkindate <= to-date AND (chkoutdate >= from-date OR NULL) - counts room-nights sold, not just check-ins; DayUse = same-day type='O'."))
B.append(("b", "Expected Check Out: chkoutdate IS NULL AND depdate in range; night audit's 'who leaves tomorrow' list."))
B.append(("b", "Complimentary Report: guestprof.complimentry='Y'; comp stays take zero/comp revenue code so they never double-count."))
B.append(("b", "Room Change History: roomocc self-join on newroomno chain; shows old -> new room/rate, changedby and reason."))
B.append(("b", "MIS Room Inventory: live snapshot - total stock (InclCount='Y') minus occupied = free; rack vs actual rate gap."))
B.append(("b", "MIS Sale Summary: pivot report - every FOM revenue head is a column, rows are days; ADR = RoomRent / room-nights."))
B.append(("b", "MIS Company Contribution: per company/TA per day room-nights (paycode='RMCH', vtype='RC', sno=1) - contribution matrix."))
B.append(("b", "MIS Guest Trail: one guest's full financial trail - rent, discount, extra charges, tax, outlet transfers, credit."))
B.append(("b", "MIS Company-wise Analysis: corporate room-nights, guests, gross revenue, rent, tax per company."))
B.append(("b", "MIS Revenue Source: revenue/room-nights/ADR GROUP BY busssource - OTA vs direct vs corporate mix."))
B.append(("b", "FOM Tax Detail: paycharge where paycode IN (CGSS, SGSS, luxury tax codes); GST slabs 0% / 12% (Rs. 7,500 room-rate threshold rule)."))
B.append(("h2", "B.5 Key Code Patterns"))
B.append(("b", "Permission: every screen calls revokeopen(<code>); code = MMGGSS - 14=Front Office, 11=Operations, 12=Reports, 13=MIS, 15=Tax."))
B.append(("b", "Multi-tenancy: every query filters propertyid - data isolation across hotels."))
B.append(("b", "Financial duality: AmtCr = charge (guest debit), AmtDr = payment; checkout allowed only when balance = 0."))
B.append(("b", "Date-logic gotcha: the same From-To means different columns per report - vdate (check-in), overlap (occupancy), depdate with chkoutdate IS NULL (expected checkout), billdate (cancel bill)."))
B.append(("b", "Settlement chain: ADRES/ARRES advance -> DbtChkIn flag -> CHK checkout voucher -> refdocid link -> cancel = status change."))
B.append(("b", "Merge trail: mFoliono + FOLIONODOCID re-pointing + reverse-merge helper - records are never physically deleted."))
B.append(("h2", "B.6 Suggested 5-Day Training Flow"))
B.append(("b", "Day 1 - Masters: Room Category -> Room Master -> Plan -> Charge Master -> Business Source."))
B.append(("b", "Day 2 - Operations: Room Status -> Walk-in Check-in -> In-House -> Amend Stay -> Merge Folio -> Bill Re-Settlement -> verify via Check-out Register."))
B.append(("b", "Day 3 - Reports: practice each dated report (01-18 Sep screenshots): fill filters -> read data -> explain the logic -> Excel/Print."))
B.append(("b", "Day 4 - Cash & Tax: Cashier Report reconciliation + FOM Tax Detail + GST slabs."))
B.append(("b", "Day 5 - Revision: Appendix Q&A + full live cycle (check-in to bill) on the demo property."))

# TOC entry under APPENDIX
for i, p, t in heads:
    if t == "APPENDIX" and i < 25:
        toc_text = paras[i + 1]
        h = d.add_paragraph("SCREEN LOGIC REFERENCE", style=toc_text.style)
        b = d.add_paragraph("B.1 Core Data Model | B.2 Master Logic | B.3 Operations Logic | "
                            "B.4 Report Query Logic | B.5 Code Patterns | B.6 Training Flow",
                            style=toc_text.style)
        toc_text._p.addnext(b._p)
        toc_text._p.addnext(h._p)
        print("  TOC entry added")
        break

def emit(kind, text):
    if kind == "h1":
        p = d.add_heading(text, level=1)
    elif kind == "h2":
        p = d.add_heading(text, level=2)
    elif kind == "b":
        p = d.add_paragraph(text, style="List Bullet")
    else:
        p = d.add_paragraph(text)
    return p

for kind, text in B:
    emit(kind, text)

# ---------- 7. save + verify ----------
d.save(SRC)
print("saved:", SRC)

z = zipfile.ZipFile(SRC)
assert z.testzip() is None
xml = z.read("word/document.xml").decode("utf-8")
import re
print("total blips now:", len(re.findall(r'r:embed="(rId\d+)"', xml)))
media = [n for n in z.namelist() if n.startswith("word/media/")]
print("media files now:", len(media))
z.close()

# placement report
d2 = docx.Document(SRC)
cur = "(start)"
print("--- final placement ---")
for p in d2.paragraphs:
    if p.style.name.startswith("Heading"):
        cur = p.text.strip()
    for b in p._p.findall(".//" + qn("a:blip")):
        print(f"  [{cur}]  <- image")
print("DONE")
