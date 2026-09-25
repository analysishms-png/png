"""Laravel HMS (analysishms-master) -> Python port logic cross-check.

Laravel controllers me jo business rules mile, unme se jo Python port me
missing/nominal hain, unhe list karta hai. Evidence-based: har rule ka
Laravel file:line + Python check result.
Run: python MODULE_FIX_PLANS/_laravel_logic_scan.py
"""
import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
LC = os.path.join(ROOT, "MODULE_FIX_PLANS", "MODULE_FIX_PLANS",
                  "analysishms-master")
PY_CORE = os.path.join(ROOT, "core")
PY_UI = os.path.join(ROOT, "ui")

PY_TEXT = ""
for bd in (PY_CORE, PY_UI):
    for f in os.listdir(bd):
        if f.endswith(".py"):
            PY_TEXT += open(os.path.join(bd, f), encoding="utf-8",
                            errors="ignore").read().lower()


def py_has(*terms):
    return all(t.lower() in PY_TEXT for t in terms)


def grep(pattern, path, ctx=2, max_hits=3):
    hits = []
    try:
        lines = open(path, encoding="utf-8", errors="ignore").readlines()
    except Exception:
        return hits
    rx = re.compile(pattern, re.I)
    for i, ln in enumerate(lines):
        if rx.search(ln):
            hits.append((i + 1, ln.strip()[:100]))
            if len(hits) >= max_hits:
                break
    return hits


CHECKS = [
    # (label, laravel file, laravel pattern, python terms that must exist)
    ("NA: complimentary rooms skip RC posting",
     "app/Http/Controllers/CompanyController.php", r"complimentry",
     ("complimentry",)),
    ("NA: no-show auto-cancel (Tentative days)",
     "app/Http/Controllers/CompanyController.php", r"tentativedays",
     ("tentativedays", "noshow")),
    ("NA: uncharged-room hard stop (RC missing)",
     "app/Http/Controllers/CompanyController.php", r"Please Charge Posting",
     ("charge posting",)),
    ("NA: unsettled-bill stop before rollover",
     "app/Http/Controllers/CompanyController.php", r"unsettled Bills",
     ("unsettled",)),
    ("NA: today-checkout depdate rollover",
     "app/Http/Controllers/CompanyController.php", r"todayscheckout",
     ("depdate",)),
    ("NA: auto room-assign to housekeepers",
     "app/Http/Controllers/CompanyController.php", r"autoroomassign",
     ("autoroomassign", "housekeeper")),
    ("NA: env-general ncur rollover",
     "app/Http/Controllers/CompanyController.php", r"ncurdate",
     ("ncur",)),
    ("Booking: channel push (ChannelPush)",
     "app/Http/Controllers/CompanyController.php", r"ChannelPush",
     ("channelpush", "channelpush")),
    ("Payroll: essl biometric import",
     "app/Http/Controllers", r"Essl", ("essl",)),
    ("HK: room-clean QR flow (HkQrLogin)",
     "app/Http/Controllers/HkQrLoginController.php", r"function ",
     ("hkqr", "room clean qr")),
    ("WhatsApp notify (EnviroWhatsapp)",
     "app/Http/Controllers", r"EnviroWhatsapp", ("whatsapp",)),
    ("Support tickets",
     "app/Http/Controllers", r"SupportTicket", ("supportticket",)),
    ("Gate-pass in/out",
     "app/Http/Controllers", r"GatePass", ("gatepass",)),
    ("Mall/shop lease meter reading",
     "app/Http/Controllers", r"MallMeterReading", ("mallmeterreading",)),
    ("Laundry service (HkLaundryService)",
     "app/Http/Controllers", r"Laundry", ("laundryservice", "laundry")),
]

rows = []
for label, rel, pat, terms in CHECKS:
    p = os.path.join(LC, rel)
    hits = []
    if os.path.isdir(p):
        for dirpath, _dirs, files in os.walk(p):
            for f in files:
                if f.endswith(".php"):
                    hits += [(os.path.join(dirpath, f), ln, txt)
                             for ln, txt in grep(pat, os.path.join(dirpath, f),
                                                 max_hits=1)]
                    if len(hits) >= 3:
                        break
            if len(hits) >= 3:
                break
    else:
        hits = [(p, ln, txt) for ln, txt in grep(pat, p, max_hits=3)]
    lv = bool(hits)
    pv = py_has(*terms)
    status = ("PORT-PARTIAL" if lv and pv else
              "MISSING-IN-PY" if lv and not pv else
              "N/A-LARAVEL-ONLY" if not lv else "PORTED")
    ev = hits[0][0].replace(LC, "").strip(os.sep) + ":" + str(hits[0][1]) \
        if hits else "-"
    rows.append((label, ev, status))

print(f"{'LOGIC RULE':46s} {'LARAVEL EVIDENCE':46s} STATUS")
print("-" * 110)
for label, ev, st in rows:
    print(f"{label[:45]:46s} {ev[:45]:46s} {st}")
print("-" * 110)
from collections import Counter
print("SUMMARY:", dict(Counter(r[2] for r in rows)))
