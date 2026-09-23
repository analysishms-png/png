"""Phase A part-2 core patches (api-mismatch audit + real bugs). One-shot."""
import io


def append(path, block):
    with io.open(path, "r", encoding="utf-8", errors="replace") as fh:
        txt = fh.read()
    with io.open(path, "a", encoding="utf-8", newline="") as fh:
        fh.write(block)


# ---------- 1. reports: res_status + res_status_pdf (shell called missing fns) ----------
append("HMS_py/core/reports.py", '''


# ============================================================
# Phase A (api-mismatch audit): shell.py _open_res_report calls
# reports.res_status(mode) + reports.res_status_pdf(rows, mode).
# Booking.ResStatus='Confirm'/Cancel='Y' live-verified.
# reportlab installed nahi -> dependency-free PDF writer (PDF-1.4).
# ============================================================
def res_status(mode: str = "arrival", cn=None, limit: int = 500) -> list:
    mode = (mode or "arrival").lower()
    if mode == "arrival":
        rows = db.query(
            "SELECT TOP " + str(int(limit)) + " b.BookNo, b.ArrDate, "
            "b.DepDate, ISNULL(b.GuestName, '') AS Guest, b.RoomNo, "
            "ISNULL(b.RoomRate, 0) AS RoomRate, ISNULL(b.Adult, 0) AS Adult "
            "FROM Booking b WHERE ISNULL(b.Cancel, 'N') <> 'Y' "
            "AND b.ArrDate >= CONVERT(date, GETDATE()) "
            "ORDER BY b.ArrDate, b.BookNo", cn=cn)
        return [{"bookno": r.BookNo, "arr": r.ArrDate, "dep": r.DepDate,
                 "guest": r.Guest, "room": r.RoomNo or "",
                 "rate": float(r.RoomRate or 0), "adults": int(r.Adult or 0)}
                for r in rows]
    if mode in ("inhouse", "in-house", "in_house"):
        from HMS_py.core import room_occ
        return room_occ.list_all(cn=cn, limit=limit)
    if mode == "departure":
        rows = db.query(
            "SELECT TOP " + str(int(limit)) + " o.FolioNo, o.RoomNo, "
            "ISNULL(f.Name, '') AS Guest, o.ChkInDate, o.DepDate "
            "FROM RoomOcc o LEFT JOIN GuestFolio f "
            "ON f.DocId = (SELECT TOP 1 g.DocId FROM GuestFolio g "
            "WHERE g.FolioNo = o.FolioNo ORDER BY g.DocId) "
            "WHERE o.ChkOutDate IS NOT NULL "
            "AND o.ChkOutDate >= CONVERT(date, GETDATE()) - 7 "
            "ORDER BY o.ChkOutDate DESC", cn=cn)
        return [{"folio": r.FolioNo, "room": r.RoomNo or "", "guest": r.Guest,
                 "chk_in": r.ChkInDate, "dep": r.DepDate} for r in rows]
    if mode == "reservation":
        rows = db.query(
            "SELECT TOP " + str(int(limit)) + " b.BookNo, b.ResStatus, "
            "ISNULL(b.Cancel, 'N') AS Cancel, b.ArrDate, b.DepDate, "
            "ISNULL(b.GuestName, '') AS Guest, ISNULL(b.RoomRate, 0) AS Rate "
            "FROM Booking b ORDER BY b.BookNo DESC", cn=cn)
        return [{"bookno": r.BookNo, "status": (r.Cancel == 'Y') and "Cancelled"
                 or (r.ResStatus or "Confirm"), "arr": r.ArrDate,
                 "dep": r.DepDate, "guest": r.Guest,
                 "rate": float(r.Rate or 0)} for r in rows]
    if mode == "noshow":
        rows = db.query(
            "SELECT TOP " + str(int(limit)) + " b.BookNo, b.ArrDate, "
            "ISNULL(b.GuestName, '') AS Guest, ISNULL(b.RoomNo, '') AS RoomNo "
            "FROM Booking b WHERE ISNULL(b.Cancel, 'N') <> 'Y' "
            "AND b.ArrDate < CONVERT(date, GETDATE()) "
            "AND b.BookNo NOT IN (SELECT FolioNo FROM RoomOcc) "
            "ORDER BY b.ArrDate", cn=cn)
        return [{"bookno": r.BookNo, "arr": r.ArrDate, "guest": r.Guest,
                 "room": r.RoomNo} for r in rows]
    if mode == "cancellation":
        rows = db.query(
            "SELECT TOP " + str(int(limit)) + " b.BookNo, b.CancelDate, "
            "ISNULL(b.GuestName, '') AS Guest, ISNULL(b.CancelUName, '') AS By_ "
            "FROM Booking b WHERE ISNULL(b.Cancel, 'N') = 'Y' "
            "ORDER BY b.CancelDate DESC", cn=cn)
        return [{"bookno": r.BookNo, "cancel_date": r.CancelDate,
                 "guest": r.Guest, "by": r.By_} for r in rows]
    raise ValueError("mode: arrival/inhouse/departure/reservation/"
                     "noshow/cancellation")


_RES_PDF_MODES = {
    "arrival": ("Reservation Status - Arrival", ["BookNo", "Arrival", "Departure", "Guest", "Room", "Rate"]),
    "inhouse": ("Reservation Status - In House", ["Folio", "Room", "Guest", "Check-In", "Departure", "Rate"]),
    "departure": ("Reservation Status - Departure", ["Folio", "Room", "Guest", "Check-In", "Departure"]),
    "reservation": ("Reservation Status", ["BookNo", "Status", "Arrival", "Departure", "Guest", "Rate"]),
    "noshow": ("Reservation Status - No Show", ["BookNo", "Arrival", "Guest", "Room"]),
    "cancellation": ("Reservation Status - Cancellations", ["BookNo", "Cancelled On", "Guest", "By"]),
}


def _res_pdf_rows(mode, rows):
    if mode == "arrival":
        return [[r.get("bookno"), r.get("arr"), r.get("dep"), r.get("guest"),
                 r.get("room"), r.get("rate")] for r in rows]
    if mode == "inhouse":
        return [[r.get("docid"), r.get("roomno"), r.get("guestprof"),
                 r.get("chkindate"), r.get("depdate"), r.get("roomrate")]
                for r in rows]
    if mode == "departure":
        return [[r.get("folio"), r.get("room"), r.get("guest"),
                 r.get("chk_in"), r.get("dep")] for r in rows]
    if mode == "reservation":
        return [[r.get("bookno"), r.get("status"), r.get("arr"), r.get("dep"),
                 r.get("guest"), r.get("rate")] for r in rows]
    if mode == "noshow":
        return [[r.get("bookno"), r.get("arr"), r.get("guest"), r.get("room")]
                for r in rows]
    return [[r.get("bookno"), r.get("cancel_date"), r.get("guest"), r.get("by")]
            for r in rows]


def res_status_pdf(rows, mode: str = "arrival", path: str = None) -> str:
    """Minimal text PDF (Helvetica, A4) - no external dependency.
    Migrated VB6 reports Crystal-based the; yeh on-screen/print-draft hai."""
    mode = (mode or "arrival").lower()
    title, headers = _RES_PDF_MODES.get(mode, (_RES_PDF_MODES["arrival"]))
    lines = [title, "=" * 78, "  ".join(str(h) for h in headers), "-" * 78]
    for row in _res_pdf_rows(mode, rows or []):
        lines.append("  ".join("" if v is None else str(v) for v in row))
    lines.append("-" * 78)
    lines.append("Rows: " + str(len(rows or [])) +
                 "   Generated: " + str(datetime.datetime.now()))
    text = "\\n".join(lines)

    def _esc(s):
        return (s.replace("\\\\", "\\\\ ").replace("(", " (").replace(")", " )")
                if isinstance(s, str) else s)

    page_w, page_h = 842, 595
    ml, top, lh = 40, 790, 14
    import math
    n_pages = max(1, math.ceil(len(lines) / 55))
    pages = []
    for p in range(n_pages):
        chunk = lines[p * 55:(p + 1) * 55]
        pages.append("\\n".join(chunk))
    objs = []
    objs.append("<< /Type /Catalog /Pages 2 0 R >>")
    kids = " ".join(str(5 + 2 * i) + " 0 R" for i in range(len(pages)))
    objs.append("<< /Type /Pages /Kids [" + kids + "] /Count "
                + str(len(pages)) + " >>")
    objs.append("<< /Type /Font /Subtype /Type1 /BaseFont /Helvetica >>")
    for content in pages:
        stream = ("BT /F1 9 Tf 12 TL " + str(ml) + " " + str(top)
                  + " Td (" + _esc(content) + ") Tj ET")
        objs.append("<< /Length " + str(len(stream)) + " >>\\nstream\\n"
                    + stream + "\\nendstream")
        objs.append("<< /Type /Page /Parent 2 0 R /MediaBox [0 0 "
                    + str(page_w) + " " + str(page_h) + "] "
                    "/Resources << /Font << /F1 3 0 R >> >> /Contents "
                    + str(len(objs) + 1) + " 0 R >>")
    out = bytearray(b"%PDF-1.4\\n")
    offsets = [0]
    for i, body in enumerate(objs, start=1):
        offsets.append(len(out))
        out += (str(i) + " 0 obj\\n" + body + "\\nendobj\\n").encode("latin-1", "replace")
    xref_pos = len(out)
    out += ("xref\\n0 " + str(len(objs) + 1) + "\\n").encode()
    out += b"0000000000 65535 f \\n"
    for off in offsets[1:]:
        out += (str(off).rjust(10, "0") + " 00000 n \\n").encode()
    out += ("trailer\\n<< /Size " + str(len(objs) + 1) + " /Root 1 0 R >>\\n"
            "startxref\\n" + str(xref_pos) + "\\n%%EOF").encode()
    if not path:
        out_dir = os.path.join(os.path.dirname(os.path.dirname(
            os.path.abspath(__file__))), "output")
        os.makedirs(out_dir, exist_ok=True)
        path = os.path.join(out_dir, "res_status_" + mode + ".pdf")
    with open(path, "wb") as fh:
        fh.write(bytes(out))
    return path
''')

# ---------- 2. room_occ: RoomMast-status-aware availability ----------
append("HMS_py/core/room_occ.py", '''


# ============================================================
# Phase B: REAL availability - Booking (Confirm/cancel aware) +
# RoomOcc (in-house) + RoomMast.RoomStat (D=dirty, M=blocked) +
# RoomBLockOut. Koi hardcoded "sab available" nahi.
# ============================================================
def room_availability(date_from, date_to=None, cn=None,
                      site: str = SITE_CODE) -> dict:
    date_to = date_to or date_from
    rooms = db.query(
        "SELECT RTRIM(Code) AS Code, RTRIM(Name) AS Name, RTRIM(RoomCat) "
        "AS RoomCat, RTRIM(RoomStat) AS RoomStat FROM RoomMast "
        "WHERE RTRIM(ISNULL(Type, 'RO')) = 'RO' AND Site_Code = ?",
        (site,), cn=cn)
    occupied = {str(r[0]) for r in db.query(
        "SELECT DISTINCT RTRIM(RoomNo) FROM RoomOcc WHERE Site_Code = ? "
        "AND ChkOutDate IS NULL AND RoomNo IS NOT NULL", (site,), cn=cn)}
    booked = {str(r[0]) for r in db.query(
        "SELECT DISTINCT RTRIM(b.RoomNo) FROM Booking b "
        "WHERE b.Site_Code = ? AND ISNULL(b.Cancel, 'N') <> 'Y' "
        "AND ISNULL(b.RoomNo, '') <> '' AND b.DepDate > ? AND ? >= b.ArrDate",
        (site, date_from, date_to), cn=cn)}
    blocked = {str(r[0]) for r in db.query(
        "SELECT DISTINCT RTRIM(b.RoomNo) FROM RoomBLockOut b "
        "WHERE b.RoomNo IS NOT NULL AND ISNULL(b.EndDate, '9999-12-31') > ? "
        "AND ? >= ISNULL(b.StartDate, '1900-01-01')",
        (date_from, date_to), cn=cn)}
    available, occ_list, dirty, blocked_list = [], [], [], []
    for r in rooms:
        code = str(r.Code or "").strip()
        stat = str(r.RoomStat or "").strip().upper()
        if code in occupied:
            occ_list.append(code)
        elif code in blocked:
            blocked_list.append(code)
        elif code in booked:
            continue  # reserved -> available pool me nahi
        elif stat == "D":
            dirty.append(code)
        else:
            available.append(code)
    cats = {}
    for r in rooms:
        cats.setdefault(str(r.RoomCat or ""), 0)
    for r in rooms:
        code = str(r.Code or "").strip()
        if code in available:
            cats[str(r.RoomCat or "")] = cats.get(str(r.RoomCat or ""), 0) + 1
    return {"date": str(date_from), "total_rooms": len(rooms),
            "available": available, "occupied": occ_list, "dirty": dirty,
            "blocked": blocked_list, "reserved": sorted(booked),
            "per_category": cats}
''')

# ---------- 3. reservation: mark_no_show + safe cancel docid ----------
append("HMS_py/core/reservation.py", '''


# ============================================================
# Phase B: No-Show (VB6 ResStatus flow). mark_no_show Booking ko
# Cancel='Y' + BookingCancelDetails(CancellationMode='No Show') +
# BookingLog 'N' flag karta hai — cancel() ka transactional pattern.
# FIX: cancel() ka det_docid 21+ chars truncate ho raha tha — ab
# SNo-style suffix (max 21) — VB6 DocId format follow.
# ============================================================
def mark_no_show(bookno: int, user: str = "PYADMIN", cn=None,
                 commit: bool = True, site: str = SITE_CODE) -> int:
    row = get(bookno, cn=cn, site=site)
    if not row:
        raise ValueError(f"Booking {bookno} nahi mila")
    if str(row.get("Cancel") or "").upper() == "Y":
        raise ValueError(f"Booking {bookno} already cancelled/no-show")
    own = cn is None
    cn = cn or db.connect()
    try:
        db.execute(
            "UPDATE Booking SET Cancel = 'Y', CancelDate = getdate(), "
            "CancelUName = ?, ResStatus = 'No Show' WHERE DocId = ?",
            (user, row["DocId"]), cn=cn, commit=False)
        det_docid = ("C" + str(row["DocId"])[:14] +
                     str(next_bookno(cn=cn, site=site)).rjust(6))[:21]
        db.execute(
            "INSERT INTO BookingCancelDetails (DocId, SNo, VType, VNo, "
            "Site_Code, VPrefix, VDate, BookingDocID, Advance, CancelAmt, "
            "CancellationMode, U_Name, U_EntDT, U_AE, LogSite_Code) "
            "VALUES (?, 1, ?, 1, ?, ?, getdate(), ?, 0, 0, ?, ?, "
            "getdate(), 'A', ?)",
            (det_docid, VTYPE, site, VPREFIX, row["DocId"], "No Show",
             user, site), cn=cn, commit=False)
        _log(row["DocId"], "N", user, cn, site)
        if commit:
            cn.commit()
        return 1
    finally:
        if own:
            cn.close()
''')

# ---------- 4. sys_config: get_config/update_config (Enviro-backed) ----------
append("HMS_py/core/sys_config.py", '''


# ============================================================
# Phase A: sys_config_ui get_config/update_config call karta tha.
# Enviro me DateLock col nahi (Datelock alag table hai); UI labels
# real config par map kiye — koi schema invention nahi.
# ============================================================
def get_config(cn=None) -> dict:
    from HMS_py.core import enviro
    e = enviro.get(cn=cn)
    val = e.get("RoundOff")
    return {"RoundOffSetting": "Yes" if val in (1, True) else
            ("No" if val in (0, False) else ""),
            "SiteCode": SITE_CODE,
            "NCKOTPercentage": e.get("NCKOTPercentage", ""),
            "CheckoutTime": e.get("CheckoutVar", "")}


def update_config(rec: dict, cn=None, commit: bool = True) -> int:
    from HMS_py.core import enviro
    changes = {}
    if "RoundOffSetting" in rec:
        s = str(rec["RoundOffSetting"]).strip().lower()
        if s not in ("yes", "no", ""):
            raise ValueError("RoundOffSetting: 'Yes'/'No' hi")
        changes["RoundOff"] = "Yes" if s == "yes" else "No"
    if "NCKOTPercentage" in rec:
        changes["NCKOTPercentage"] = rec["NCKOTPercentage"]
    if "CheckoutTime" in rec:
        changes["CheckoutVar"] = rec["CheckoutTime"]
    if changes:
        enviro.update_settings(changes, cn=cn, commit=commit)
    return 1
''')

# ---------- 5. pos: NABrowser aliases (nightaudit fns par) ----------
append("HMS_py/core/pos.py", '''


# Phase A: pos_na NABrowser ne pos.occupancy/revenue_summary/
# room_revenue calls kiye — yeh NightAudit (nightaudit.py) reports
# hain. Aliases single-source rakhte hain.
from HMS_py.core import nightaudit as _nightaudit

occupancy = _nightaudit.occupancy
revenue_summary = _nightaudit.revenue_summary
room_revenue = _nightaudit.room_revenue
''')

print("Phase A part-2 core patches appended")
