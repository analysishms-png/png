# -*- coding: utf-8 -*-
"""Build standalone trainer handout from SECTION 8 logic reference + export PDF via Word."""
import docx
from docx.shared import Pt, RGBColor, Inches
from docx.enum.text import WD_ALIGN_PARAGRAPH

OUT = r"C:/Users/PC/Downloads/189/113/MANUAL/HMS_Manuals/FrontOffice/FO_Screen_Logic_Reference_Handout.docx"

d = docx.Document()
for s in d.sections:
    s.top_margin = Inches(0.8); s.bottom_margin = Inches(0.8)
    s.left_margin = Inches(0.9); s.right_margin = Inches(0.9)

style = d.styles["Normal"]
style.font.name = "Calibri"
style.font.size = Pt(10.5)

# ---- title block ----
t = d.add_paragraph(); t.alignment = WD_ALIGN_PARAGRAPH.CENTER
r = t.add_run("ANALYSIS HMS - FRONT OFFICE MODULE")
r.bold = True; r.font.size = Pt(13); r.font.color.rgb = RGBColor(0x1F, 0x4E, 0x79)

t2 = d.add_paragraph(); t2.alignment = WD_ALIGN_PARAGRAPH.CENTER
r = t2.add_run("Screen Logic Reference (01-18 Sep)")
r.bold = True; r.font.size = Pt(20); r.font.color.rgb = RGBColor(0x1F, 0x4E, 0x79)

t3 = d.add_paragraph(); t3.alignment = WD_ALIGN_PARAGRAPH.CENTER
r = t3.add_run("Trainer Handout  |  Internal logic of every FO screen & report, from analysishms-master (Laravel)")
r.italic = True; r.font.size = Pt(10); r.font.color.rgb = RGBColor(0x59, 0x59, 0x59)

d.add_paragraph()

B = [
    ("h1", "B.1  Core Data Model (6 Tables)"),
    ("b", "guestfolio - master bill ledger; one Docid/folio_no per check-in; mFoliono links merged folios; every charge/payment hangs off its Docid."),
    ("b", "roomocc - actual room-stay rows; chkoutdate IS NULL = in-house; newroomno = room change; sno/sno1 handle repeat stays."),
    ("b", "guestprof - guest profile; reused for repeat guests (search by mobile); source of nationality/ID/GuestStatus in reports."),
    ("b", "paycharge - common financial ledger of FO, POS, Banquet, Laundry; VTYPE (RC=room charge, ARRES/ADRES=advance, CHK=checkout bill); AmtCr=charge, AmtDr=payment; balance = SUM(AmtCr) - SUM(AmtDr); RESTCODE tells which desk posted."),
    ("b", "room_mast + room_cat - rooms and categories; InclCount='Y' rooms only are counted in occupancy/inventory."),
    ("b", "Master tables - plan_mast (EP/CP/MAP/AP tariff), revmast (revenue heads, field_type C/P), subgroup (company/TA/OTA), busssource, gueststats, rate_list, fom_billdetail (printed bills; status='Cancel' tracks cancellations)."),
    ("h1", "B.2  Master Screens - Internal Logic"),
    ("b", "FOM Parameter: global FO settings (checkout time, RRTaxInc, folio series, night-audit lock). One wrong value affects every bill."),
    ("b", "Business Source: market segments; stored on guestfolio.busssource; Revenue Source Report groups revenue by this."),
    ("b", "Booking Source: booking.bookedby; Room Inventory joins it with busssource for market segment."),
    ("b", "Guest Status: guestprof.guest_status FK; gives the GuestStatus column in the Occupancy Report."),
    ("b", "Charge Master: revmast charge heads (Desk_code='FOM'); reports exclude special codes ROFF, DISC, CGSS/SGSS, TOUT, RMCH."),
    ("b", "Plan Master: EP/CP/MAP/AP; Night Audit auto-posts meal charges per planamt; Occupancy 'package' column = plan name."),
    ("b", "Room Features: amenity tags shown with room availability."),
    ("b", "Room Category: availability = NoOfRoom - occupied; rate_list is category-wise."),
    ("b", "Room Master: physical rooms; InclCount flag decides occupancy/inventory counting."),
    ("b", "Building Master: block-wise occupancy and housekeeping assignment."),
    ("h1", "B.3  Operations Screens - Internal Logic"),
    ("b", "Blank GRC: print-only template, reads no data - same fields as Walk-in Check-in."),
    ("b", "Walk-in Check-in: availability from room_mast vs roomocc (chkoutdate IS NULL) -> reuse/insert guestprof -> INSERT guestfolio -> INSERT roomocc -> advance to paycharge (VTYPE=ADRES) -> room 'O'. All in one DB transaction - failure rolls back, never a half folio."),
    ("b", "Check-in List: guestfolio JOIN roomocc by vdate; advance = SUM(paycharge.amtcr) WHERE modeset != 'S' (settled advances excluded)."),
    ("b", "Room Status: room_mast LEFT JOIN roomocc (chkoutdate IS NULL); rooms not found = VACANT; housekeeping tables give cleanliness."),
    ("b", "Bill Reprint: read-only reprint from fom_billdetail - no new voucher, no accounting effect."),
    ("b", "Bill Re-Settlement: old settlement reversed via refdocid trail, bill back to open, new VNO issued; entries are never deleted (audit trail)."),
    ("b", "Misc Payment/Rect.: cash entries outside a folio (petty cash, corrections); appear in the Cashier Report."),
    ("b", "Merge Folio: other folios' Docids go into target's mFoliono and paycharge.FOLIONODOCID is re-pointed; Reverse Merge undoes it in order."),
    ("b", "In-House Room Status: live folio balance = SUM(AmtCr - AmtDr) per in-house guest."),
    ("b", "Add New Profile: guestprof entry without check-in; guest code reused at Walk-in/Reservation."),
    ("b", "Amend Stay: roomocc UPDATE; room change = old row keeps roomno, gets newroomno + chngdate, new row sno+1 - this is what makes Room Change History possible."),
    ("h1", "B.4  Reports - Query Logic (01-18 Sep data)"),
    ("b", "Check-in Register: guestfolio.vdate range; merged folios show mFoliono; TotalGuest = adult + children; operator shown in USER column."),
    ("b", "Check-out Register: fom_billdetail by billdate + paycharge revenue columns via revmast (field_type='C', Desk_code='FOM')."),
    ("b", "Cashier Report: RESTCODE='FOM'; advances appear only when not applied at check-in (DbtChkIn<>'Yes'); refdocid-linked entries skipped to avoid double count; CHK vouchers from second query; Net = AmtCr - AmtDr; mode-wise Cash/UPI/Card totals."),
    ("b", "Cancel Bill Details: status='Cancel' (never deleted) + reason - full fraud/audit trail."),
    ("b", "Occupancy Report: overlap logic - chkindate <= to-date AND (chkoutdate >= from-date OR NULL) - counts room-nights sold, not just check-ins; DayUse = same-day type='O'."),
    ("b", "Expected Check Out: chkoutdate IS NULL AND depdate in range; night audit's 'who leaves tomorrow' list."),
    ("b", "Complimentary Report: guestprof.complimentry='Y'; comp stays take zero/comp revenue code so they never double-count."),
    ("b", "Room Change History: roomocc self-join on newroomno chain; shows old -> new room/rate, changedby and reason."),
    ("b", "MIS Room Inventory: live snapshot - total stock (InclCount='Y') minus occupied = free; rack vs actual rate gap."),
    ("b", "MIS Sale Summary: pivot report - every FOM revenue head is a column, rows are days; ADR = RoomRent / room-nights."),
    ("b", "MIS Company Contribution: per company/TA per day room-nights (paycode='RMCH', vtype='RC', sno=1) - contribution matrix."),
    ("b", "MIS Guest Trail: one guest's full financial trail - rent, discount, extra charges, tax, outlet transfers, credit."),
    ("b", "MIS Company-wise Analysis: corporate room-nights, guests, gross revenue, rent, tax per company."),
    ("b", "MIS Revenue Source: revenue/room-nights/ADR GROUP BY busssource - OTA vs direct vs corporate mix."),
    ("b", "FOM Tax Detail: paycharge where paycode IN (CGSS, SGSS, luxury tax codes); GST slabs 0% / 12% (Rs. 7,500 room-rate threshold rule)."),
    ("h1", "B.5  Key Code Patterns"),
    ("b", "Permission: every screen calls revokeopen(<code>); code = MMGGSS - 14=Front Office, 11=Operations, 12=Reports, 13=MIS, 15=Tax."),
    ("b", "Multi-tenancy: every query filters propertyid - data isolation across hotels."),
    ("b", "Financial duality: AmtCr = charge (guest debit), AmtDr = payment; checkout allowed only when balance = 0."),
    ("b", "Date-logic gotcha: the same From-To means different columns per report - vdate (check-in), overlap (occupancy), depdate with chkoutdate IS NULL (expected checkout), billdate (cancel bill)."),
    ("b", "Settlement chain: ADRES/ARRES advance -> DbtChkIn flag -> CHK checkout voucher -> refdocid link -> cancel = status change."),
    ("b", "Merge trail: mFoliono + FOLIONODOCID re-pointing + reverse-merge helper - records are never physically deleted."),
    ("h1", "B.6  Suggested 5-Day Training Flow"),
    ("b", "Day 1 - Masters: Room Category -> Room Master -> Plan -> Charge Master -> Business Source."),
    ("b", "Day 2 - Operations: Room Status -> Walk-in Check-in -> In-House -> Amend Stay -> Merge Folio -> Bill Re-Settlement -> verify via Check-out Register."),
    ("b", "Day 3 - Reports: practice each dated report (01-18 Sep screenshots): fill filters -> read data -> explain the logic -> Excel/Print."),
    ("b", "Day 4 - Cash & Tax: Cashier Report reconciliation + FOM Tax Detail + GST slabs."),
    ("b", "Day 5 - Revision: Appendix Q&A + full live cycle (check-in to bill) on the demo property."),
]

for kind, text in B:
    if kind == "h1":
        p = d.add_heading(text, level=1)
        for r in p.runs:
            r.font.color.rgb = RGBColor(0x1F, 0x4E, 0x79)
            r.font.size = Pt(13)
    else:
        p = d.add_paragraph(text, style="List Bullet")

d.save(OUT)
print("handout docx:", OUT)

# ---- PDF export via Word COM ----
try:
    import win32com.client
    word = win32com.client.DispatchEx("Word.Application")
    word.Visible = False
    doc = word.Documents.Open(OUT.replace("/", "\\"), ReadOnly=True)
    pdf = OUT.replace(".docx", ".pdf")
    doc.SaveAs(pdf, FileFormat=17)
    doc.Close(False)
    word.Quit()
    import os
    print("handout pdf:", pdf, os.path.getsize(pdf), "bytes")
except Exception as e:
    print("PDF export failed:", e)
