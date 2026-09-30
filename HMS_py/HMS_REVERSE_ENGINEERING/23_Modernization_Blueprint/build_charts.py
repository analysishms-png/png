"""Draw blueprint charts from MEASURED data (no invented numbers).
Sources: DATABASE_INVENTORY.md (usage counts), vb6_form_inventory.md (module forms),
BUG_REGISTER.md (severity), LIVE_DATABASE_DICTIONARY.md (object counts)."""
import os
from PIL import Image, ImageDraw, ImageFont

OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "charts")
os.makedirs(OUT, exist_ok=True)

def font(sz=16):
    for name in ("arial.ttf", "segoeui.ttf", "calibri.ttf"):
        try:
            return ImageFont.truetype(name, sz)
        except Exception:
            pass
    return ImageFont.load_default()

BLUE, GREEN, ORANGE, RED, GRAY = (31,78,121), (84,130,53), (197,90,17), (192,0,0), (100,100,100)

def hbar(rows, title, fname, color=BLUE, note=""):
    """rows: list of (label, value). Horizontal bars, value labels, footer note."""
    W = 1100; pad = 320; rh = 34; top = 90
    H = top + rh * len(rows) + 70
    img = Image.new("RGB", (W, H), "white")
    d = ImageDraw.Draw(img)
    d.text((30, 25), title, fill=(0,0,0), font=font(24))
    if note:
        d.text((30, 56), note, fill=GRAY, font=font(13))
    mx = max(v for _, v in rows) or 1
    for i, (lab, v) in enumerate(rows):
        y = top + i * rh
        d.text((10, y + 7), lab[:38], fill=(0,0,0), font=font(15))
        w = int((W - pad - 120) * v / mx)
        d.rectangle([pad, y + 4, pad + max(w, 3), y + rh - 8], fill=color)
        d.text((pad + max(w, 3) + 8, y + 7), f"{v:,}", fill=(0,0,0), font=font(15))
    d.text((30, H - 32), "Source: measured evidence in HMS_REVERSE_ENGINEERING workspace", fill=GRAY, font=font(12))
    img.save(os.path.join(OUT, fname))
    print("chart:", fname)

# 1. Top tables by SQL usage in decompiled code  [VERIFIED-VB6]
hbar([
 ("Depart", 1378), ("PayCharge", 873), ("GuestFolio", 869), ("GuestProf", 840),
 ("RevMast", 835), ("SubGroup", 741), ("ItemMast", 618), ("Voucher_Type", 563),
 ("Stock", 473), ("RoomOcc", 457), ("Voucher_Prefix", 434), ("PlanMast", 321),
 ("RoomMast", 310), ("Ledger", 253), ("ItemCatMast", 246),
], "Top 15 Database Tables by SQL Usage in HMS Code", "chart1_top_tables.png",
 note="Count = occurrences in INSERT/UPDATE/DELETE/SELECT/JOIN inside decompiled HMS.exe (EXTRAS.text)")

# 2. VB6 objects per module  [VERIFIED-VB6]
hbar([
 ("Front Office", 55), ("Point Of Sale", 49), ("Shell/Core", 32), ("Finance", 25),
 ("Members Mgmt", 24), ("Inventory", 21), ("Reservation", 19), ("Main Setup", 18),
 ("Banquet", 17), ("House Keeping", 11), ("HR & Payroll", 11), ("Reports/Viewers", 9),
 ("Messaging", 8), ("EPABX", 7), ("Smart Card", 7), ("Mall Mgmt", 5), ("Night Audit", 5),
 ("Sales & Mktg", 3),
], "VB6 Forms/Modules per HMS Module (351 objects total)", "chart2_module_complexity.png",
 color=GREEN, note="From decompiled object inventory (vb6_form_inventory.md)")

# 3. Bug severity  [VERIFIED-SQL/VB6]
hbar([("HIGH", 2), ("MEDIUM", 5), ("LOW", 2)],
     "Documented Bugs by Severity (BUG_REGISTER.md)", "chart3_bug_severity.png",
     color=RED, note="BUG-003/008 HIGH; 001/002/004/005/007 MEDIUM; 006/009 LOW")

# 4. Live DB objects  [VERIFIED-SQL]
hbar([("Tables", 277), ("Indexes/PKs", 244), ("Views", 10), ("Procedures", 3),
      ("Triggers", 0), ("Functions", 0), ("Foreign Keys", 0)],
     "MOONData2627 Live Object Counts (2026-09-28)", "chart4_db_objects.png",
     color=ORANGE, note="sys.* catalog queries; zero triggers/FKs => integrity lives in VB6 app")

# 5. Modernization effort estimate  [INFERRED - explicitly marked]
hbar([
 ("Night Audit engine", 9), ("Front Office", 9), ("Finance/GL", 8), ("Point Of Sale", 8),
 ("Inventory", 6), ("Members/SmartCard", 6), ("Banquet", 5), ("Reservation", 5),
 ("HR & Payroll", 5), ("Main Setup/Security", 4), ("House Keeping", 3), ("EPABX", 3),
 ("Messaging/SMS", 2), ("Mall Mgmt", 2), ("Reports", 7),
], "Modernization Effort Estimate (1-10, relative)  [INFERRED]", "chart5_effort.png",
     color=GRAY, note="INFERRED from code volume (chart 2), table coupling (chart 1) and transaction criticality - not measured")
print("ALL CHARTS DONE")
