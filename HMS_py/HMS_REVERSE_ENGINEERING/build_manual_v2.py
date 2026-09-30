"""HMS_Complete_Reverse_Engineering_Manual_v2.docx — module-wise screenshots embedded.
Screenshots: HMS_REVERSE_ENGINEERING/screenshots/<Module>/*.png (48 captures).
Figures: number + title + menu path (window title = VERIFIED evidence)."""
import os, glob
from docx import Document
from docx.shared import Pt, Inches
from docx.enum.text import WD_ALIGN_PARAGRAPH

HERE = os.path.dirname(os.path.abspath(__file__))
SS = os.path.join(HERE, "screenshots")

doc = Document()
doc.styles["Normal"].font.name = "Calibri"
doc.styles["Normal"].font.size = Pt(10.5)

FIG = [0]
def FIGURE(path, caption, menu):
    FIG[0] += 1
    p = doc.add_paragraph(); p.alignment = WD_ALIGN_PARAGRAPH.CENTER
    try:
        p.add_run().add_picture(path, width=Inches(6.1))
    except Exception as e:
        doc.add_paragraph("[image error: %s]" % e)
        return
    c = doc.add_paragraph(); c.alignment = WD_ALIGN_PARAGRAPH.CENTER
    r = c.add_run("Figure %d — %s" % (FIG[0], caption)); r.bold = True; r.font.size = Pt(9)
    c2 = doc.add_paragraph(); c2.alignment = WD_ALIGN_PARAGRAPH.CENTER
    r2 = c2.add_run("Menu: %s" % menu); r2.italic = True; r2.font.size = Pt(8.5)

def H(t, lvl=1): doc.add_heading(t, level=lvl)
def P(t, bold=False):
    p = doc.add_paragraph(); r = p.add_run(t); r.bold = bold; return p
def B(t): doc.add_paragraph(t, style="List Bullet")

def add_module_shots(folder, modname, menu_prefix, notes=None):
    H(modname, 2)
    if notes: P(notes)
    files = sorted(glob.glob(os.path.join(SS, folder, "*.png")))
    files = [f for f in files if "_debug" not in f]
    for f in files:
        base = os.path.splitext(os.path.basename(f))[0]
        pretty = base.replace("_", " ")
        menu = pretty if ">" in base else "%s" % menu_prefix
        FIGURE(f, pretty, menu)

# ---------- Cover ----------
H("HMS - Hotel Management System", 0)
P("Complete Reverse-Engineering Manual — v2 with GUI Captures", bold=True)
P("VB6 MDI app (351 objects) + SQL Server 2008 R2 (MOONData2627, 277 tables)")
P("Date: 2026-09-28 | Session: SA/****** (masked), company via Company Details grid")
P("Evidence: decompiled HMS.exe (EXTRAS.text), live DB catalog, runtime logs, "
  "48 verified GUI captures. All figures are real application screenshots.")

# ---------- 1-14: prior manual content (condensed) ----------
H("1. Executive Summary", 1)
B("15 modules; 351 VB6 objects; 524 menu items (MENU_INVENTORY.md); 277 live tables.")
B("9+ documented bugs (BUG_REGISTER.md); security notes SRN-001 (F-1..F-5).")
B("This v2 adds the missing visual layer: verified screen-by-screen captures.")

H("2. System Architecture", 1)
P("See 22_Final_Manual/HMS_SYSTEM_ARCHITECTURE.md — MDI + TopBarLib menus + ADODB + SQL Server.")

H("3. Login & Security", 1)
B("Login flow verified in UI: invalid user MsgBox, virtual keyboard, company grid.")
B("Screenshots in section 5.1; full flow in 01_Login_Security/LOGIN_FLOW.md.")

H("4. Navigation Architecture [VERIFIED-UI]", 1)
B("Left strip: 11 module buttons (Finance ... EXTRAs).")
B("Top bar: per-module menu buttons (owner-drawn TopBarLib).")
B("Child forms titled 'Module > Group > Screen' — window titles used as evidence.")
B("Menu tree source: 524 items in 19_VB6_Logic/MENU_INVENTORY.md.")

# ---------- 5. Module-wise captures ----------
H("5. Module-wise Screens (live captures)", 1)

H("5.1 Login & Security", 2)
for f in sorted(glob.glob(os.path.join(SS, "01_Login_Security", "0*.png")))[:6]:
    FIGURE(f, os.path.splitext(os.path.basename(f))[0].replace("_", " "),
           "Application startup")

H("5.2 Main Dashboard", 2)
f = os.path.join(SS, "02_Main_Setup", "014_Main_Menu_AfterLogin.png")
if os.path.exists(f):
    FIGURE(f, "Main HMS dashboard (maximized)", "MDI after company selection")

add_module_shots("03_Finance", "5.3 Finance", "Finance > Transaction")
add_module_shots("02_Main_Setup", "5.4 Main Setup", "Main Setup > General Setup")
add_module_shots("04_Reservation", "5.5 Reservation", "Reservation > Operations")
add_module_shots("05_Front_Office", "5.6 Front Office", "Front Office > Operations",
                 notes="WalkIn CheckIn is the entry chooser (Guest Profile / Check In / "
                       "Duplicate Last Check In / Check In with Guest History / Advance Entry / "
                       "Rooms Display) -> fdWalkInEntry/fdCheckIn forms.")
add_module_shots("06_House_Keeping", "5.7 House Keeping", "House Keeping > Operations")
add_module_shots("07_Inventory", "5.8 Inventory", "Inventory > Operations")
add_module_shots("08_POS", "5.9 Point Of Sale", "Point Of Sale > POS Reports")
add_module_shots("09_Banquet", "5.10 Banquet", "Banquet > Operation")
add_module_shots("10_Night_Audit", "5.11 Night Audit (reports only)",
                 "Night Audit > GST Reports",
                 notes="Audit engine NOT executed (production safety). Only report screens opened.")
add_module_shots("11_HR_Payroll", "5.12 HR & Payroll", "HR/Payroll > Operations")

# ---------- 6-15 condensed prior sections ----------
H("6. Night Audit", 1)
P("Engine flow (code-verified, not executed): revenue posting -> dirty rooms -> due-out "
  "extension -> enviro.ncur+1 -> NightAuditLog -> token reset. See 10_Night_Audit/NIGHT_AUDIT_FLOW.md.")
H("7. Database", 1)
P("277 tables, 10 views, 3 procs, 0 triggers/FKs. See 18_Database/LIVE_DATABASE_DICTIONARY.md.")
H("8. Known Bugs", 1)
B("BUG-001..010 in 21_Testing/BUG_REGISTER.md (incl. security BUG-008, BUG-010).")
H("9. Security Remediation", 1)
P("SRN-001 with F-1..F-5 and decision points: 21_Testing/SECURITY_REMEDIATION_NOTE_SRN-001.md.")
H("10. Modernization", 1)
P("23_Modernization_Blueprint/MODERNIZATION_BLUEPRINT.md (charts embedded there).")
H("11. GST e-Invoice", 1)
P("24_GST_EInvoice/GST_EINVOICE_FLOW.md — CI GSP, IRN 185/211, JSON v1.1 flow.")
H("12. Screen Inventory & Evidence", 1)
B("screenshots/CAPTURE_INDEX.md — 48 windows, environment notes, pass-4 plan.")
B("action_log.csv — step/timestamp/window per capture.")
H("13. Regeneration Scripts", 1)
B("hms_capture2.py / hms_capture3.py (GUI), build_manual.py / build_manual_v2.py (docs),")
B("build_inventories.py (Excel), build_charts.py + build_blueprint_docx.py (blueprint).")

doc.save(os.path.join(HERE, "22_Final_Manual", "HMS_Complete_Reverse_Engineering_Manual_v2.docx"))
print("v2 manual saved with", FIG[0], "figures")
