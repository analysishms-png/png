"""Disabled menubar leaves ka detailed reason-map (V2).

Method:
  1. Headless Qt walk: sab 14 modules ka menubar build -> disabled leaf
     names + group path capture.
  2. Har leaf ke liye evidence:
     - VB6 form: kaunsa .frm is caption ko handle karta hai (menuHelp
       Module_Name + VB6 folder .frm text-search)
     - DB tables: caption ke candidate tables live hain?
     - shell blocked-bucket membership (documented unavailable-message)
  3. Reason classify -> report (project root DISABLED_LEAVES_REASON_MAP_V2.txt)

Reason buckets:
  TABLES_ABSENT      - VB6 form tha, DB tables is DB me nahi (port blocked)
  VB6_TABLE_LESS     - VB6 me bhi table-backed nahi tha (dead leaf)
  FORM_NOT_PORTED    - tables live, python form abhi nahi bana
  BLOCKED_CONV       - registry me hai par blocked-message (should be enabled)
  NO_OPENER_NO_DATA  - na VB6 form mila, na table (investigate)
"""
import os
import re
import sys

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

# db FIRST: HMS_py/__init__ chain HMS_py.db attribute bind karta hai;
# shell->menu_help ka `from .. import db` isi attribute ko dhundta hai
from HMS_py.core import db as _db  # noqa: E402

OUT = (r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py"
       r"\DISABLED_LEAVES_REASON_MAP_V2.txt")
VB6_DIR = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy"

MODULES = ("Finance", "Main Setup", "Reservation", "Front Office",
           "House Keeping", "Inventory", "Point Of Sale", "Banquet",
           "Night Audit", "HR/Payroll", "Members Mgmt", "Extras",
           "EPABX", "Messaging")

# caption -> (reason-hint, candidate DB tables, note)
HINTS = {
    "Sale Bill Entry":        ("TABLES_ABSENT", ["RestTable", "POSMast", "POSSaleBill"], "POS outlet transactions"),
    "Settlement Entry":       ("TABLES_ABSENT", ["RestTable", "POSMast", "POSSettlement"], "POS outlet settlement"),
    "Display Table":          ("TABLES_ABSENT", ["RestTable", "POSMast"], "POS table-layout viewer"),
    "Order Booking":          ("TABLES_ABSENT", ["POSOrderBook", "RestOrder"], "outlet advance-order"),
    "Order Booking Advance":  ("TABLES_ABSENT", ["POSOrderBook", "RestOrder"], "outlet order advance"),
    "Bill Lookup":            ("TABLES_ABSENT", ["POSBill", "POSSaleBill"], "outlet bill search"),
    "Token Entry":            ("TABLES_ABSENT", ["POSToken", "RestToken"], "token/queue entry"),
    "Payment Receive":        ("TABLES_ABSENT", ["POSMast", "POSSettlement"], "POS payment (menuHelp V-flag in SA for some outlets)"),
    "Reservation With History": ("TABLES_ABSENT", ["ResMast", "ResHisto"], "FOKQueue/ResHisto absent"),
    "Advance Deposit":        ("TABLES_ABSENT", ["ResAdvance", "AdvDeposit"], "probed MISSING"),
    "Confirmation Letters":   ("TABLES_ABSENT", ["ResConfirm", "LetterMast"], "letter-print block"),
    "Cancellation Letters":   ("TABLES_ABSENT", ["ResCancel", "LetterMast"], "letter-print block"),
    "Reservation Status Screen": ("TABLES_ABSENT", ["ResMast"], "grid screen (ResMast cols insufficient for VB6 rack view)"),
    "Display Rack":           ("TABLES_ABSENT", ["RoomMast", "RoomOcc"], "VB6 graphical rack (MDIForm grid) — needs custom Qt widget"),
    "Reverse Room Merge":     ("TABLES_ABSENT", ["RoomMerge", "FolioMerge"], "merge-audit tables absent"),
    "Blank GRC":              ("TABLES_ABSENT", ["GRCMast", "GuestGRC"], "probed MISSING"),
    "Laundry Memo":           ("VB6_TABLE_LESS", ["LinenMem"], "LinenMem DB me nahi — VB6 me bhi table-less (documented skip)"),
    "Memo Reprint":           ("VB6_TABLE_LESS", ["LinenMem"], "same as Laundry Memo"),
    "Inconsistency Check":    ("BLOCKED_CONV", ["FaVoucher"], "VB6 FaCheck — blocked-message convention"),
    "Menu Item Copy":         ("BLOCKED_CONV", ["MenuMast"], "VB6 FrmItemCopy — blocked convention"),
    "Task Scheduler":         ("BLOCKED_CONV", ["TaskSched"], "blocked convention"),
    "Voucher Serialisation":  ("BLOCKED_CONV", ["Voucher_Prefix"], "blocked convention"),
    "Delete Message":         ("BLOCKED_CONV", ["MsgLog"], "blocked convention"),
}

FRM_CACHE = None


def vb6_form_for(caption: str):
    """Kaunse .frm files me caption literal hai (ek baar scan, phir cache)."""
    global FRM_CACHE
    if FRM_CACHE is None:
        FRM_CACHE = {}
        pat = re.compile(r'Caption\s*=\s*"([^"]{3,60})"')
        for fn in os.listdir(VB6_DIR):
            if not fn.lower().endswith(".frm"):
                continue
            try:
                txt = open(os.path.join(VB6_DIR, fn), encoding="latin-1",
                           errors="ignore").read()
            except Exception:
                continue
            for m in pat.finditer(txt):
                FRM_CACHE.setdefault(m.group(1).strip(), set()).add(fn)
    return FRM_CACHE.get(caption.strip(), set())


def table_live(t: str) -> bool:
    from HMS_py.core import db
    try:
        db.query(f"SELECT TOP 1 1 FROM [{t}]")
        return True
    except Exception:
        return False


def main():
    from PyQt6.QtWidgets import QApplication
    from HMS_py.ui import shell

    app = QApplication.instance() or QApplication(sys.argv)
    win = shell.MainWindow("SA", {"name": "Moon and Mars Resorts",
                                  "short": "MMR", "year": "2026-27"})

    disabled = []  # (module, group_path, caption)
    for mod in MODULES:
        win._load_module_menu(mod)
        mb = win.menuBar()

        def walk(menu, path):
            for a in menu.actions():
                if a.menu():
                    walk(a.menu(), path + [a.text()])
                    continue
                t = a.text()
                if t and t != "-" and not a.isEnabled():
                    disabled.append((mod, " > ".join(path), t))

        for top in mb.actions():
            if top.menu():
                walk(top.menu(), [])

    from HMS_py.core import db, menu_help as mh
    rows = db.query(
        "SELECT [Option], Module_Name, Flag FROM menuHelp "
        "WHERE UserName='SA' AND Flag<>'V'")
    modname_of = {}
    flag_of = {}
    for cap, mn, fl in rows:
        c = str(cap or "").strip()
        if c and c not in modname_of:
            modname_of[c] = str(mn or "").strip()
            flag_of[c] = str(fl or "").strip()

    L = []
    ap = L.append
    W = 100
    ap("=" * W)
    ap("DISABLED MENUBAR LEAVES — DETAILED REASON MAP (V2)")
    ap(f"Generated: 2026-09-23 | walk = headless Qt, SA, 14 modules")
    ap("=" * W)

    by_mod = {}
    for mod, path, cap in disabled:
        by_mod.setdefault(mod, []).append((path, cap))

    ap("")
    ap(f"TOTAL disabled: {len(disabled)}  modules: {len(by_mod)}")
    counts = {}
    for mod, path, cap in disabled:
        hint = HINTS.get(cap, ("NO_OPENER_NO_DATA", [], ""))[0]
        counts[hint] = counts.get(hint, 0) + 1
    ap("Buckets: " + ", ".join(f"{k}={v}" for k, v in sorted(counts.items())))

    for mod in MODULES:
        items = by_mod.get(mod)
        if not items:
            continue
        ap("")
        ap("-" * W)
        ap(f"## {mod}  ({len(items)} disabled)")
        ap("-" * W)
        for path, cap in items:
            hint, tables, note = HINTS.get(cap, ("NO_OPENER_NO_DATA", [], ""))
            live = {t: table_live(t) for t in tables if t}
            live_txt = (", ".join(f"{t}:{'live' if v else 'ABSENT'}"
                                  for t, v in live.items())) or "-"
            frms = vb6_form_for(cap)
            frm_txt = ", ".join(sorted(frms)[:2]) or "-"
            mn = modname_of.get(cap, "-")
            fl = flag_of.get(cap, "-")
            ap(f"  {path} -> {cap}")
            ap(f"      flag={fl:<2} VB6 module={mn:<10} forms: {frm_txt}")
            ap(f"      tables: {live_txt}")
            ap(f"      reason: {hint}   {('— ' + note) if note else ''}")

    # recommended actions
    ap("")
    ap("=" * W)
    ap("RECOMMENDED ACTIONS")
    ap("=" * W)
    ap("  TABLES_ABSENT  -> DB me tables banao (CREATE TABLE + seed) ya VB6 form")
    ap("                    ka data-source dhang se map karo; phir port possible.")
    ap("  VB6_TABLE_LESS -> skip permanent (VB6 me bhi dead tha) — documented.")
    ap("  BLOCKED_CONV   -> chaho to temporary blocked-message openers enable kar")
    ap("                    sakte hain (registry bucket me already mapped hain —")
    ap("                    inhe koi asli opener nahi chalata).")
    ap("  NO_OPENER_NO_DATA -> manual investigation (caption VB6 forms me bhi")
    ap("                    nahi mila — shayad runtime-generated item).")

    with open(OUT, "w", encoding="utf-8") as fh:
        fh.write("\n".join(L) + "\n")
    print(f"written: {OUT}")
    print(f"disabled={len(disabled)} buckets={counts}")


if __name__ == "__main__":
    main()
