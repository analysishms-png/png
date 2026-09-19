"""Inventory core (P5): Godown master CRUD + Indent/Purchase/Stock documents.

EVIDENCE (live):
- GodownMast 64 rows: Code varchar(6) PK, Name varchar(25), ShortName(6),
  DepartCode(6) FK, SysYn(1), audit cols.
- Indent 959 rows: DocId 'DKKRQ    2026     895' (Vtype RQ), VNo, VDate,
  Department (outlet), ClearYN flag, Godown. Lines NOT in separate table
  (Stock.IndentDocId all empty) -> header browse only.
- Purchase: GIN Vtype='MRCR' (421 docs) - PartyName header + Purch2 lines.
- Purchase Order: POrder Vtype='PORD' (6 docs) + POrder1 lines.
- Purchase Bill: Purch2 Vtype='PBPB' (394 docs) - linked to GIN via ContraDocId.
- Stock: Vtypes: BMM (KOT), RQI (Issue), RQR (Receive), BKREC (Store Receive),
  PBPB (Purchase Bill), RQ (Indent?).
- Stock balance: Sum(QtyRec - QtyIss) per Godown+Item (Stock Register base).
Writes: Godown master CRUD + Indent/Purchase/Stock document entry.
VB6 patterns: PIndent, pMREntry, pPOrder, pPBill, pReqSlip, RsStoreRecEntry, pGIss, kClStk.
"""
from __future__ import annotations

from datetime import date, datetime

from HMS_py.core import db

SITE_CODE = "KK"
USER = "PYADMIN"
LIMITS = {"code": 6, "name": 25, "short": 6, "depart": 6}
SELECT_COLS = ("Code, Name, ShortName, DepartCode, SysYn, "
               "U_Name, U_EntDt, U_AE")


# ============================================================
# Godown master (CRUD)
# ============================================================
def _map_godown(r) -> dict:
    return {"code": r.Code, "name": (r.Name or "").strip(),
            "short": (r.ShortName or "").strip(),
            "depart": r.DepartCode or "", "sysyn": r.SysYn or "",
            "u_name": r.U_Name or "", "u_ae": r.U_AE or ""}


def _validate_godown(rec: dict):
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if len(rec["code"]) > LIMITS["code"]:
        raise ValueError(f"Code max {LIMITS['code']} chars")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    if len(rec["name"]) > LIMITS["name"]:
        raise ValueError(f"Name max {LIMITS['name']} chars")
    if len(rec.get("depart", "")) > LIMITS["depart"]:
        raise ValueError(f"depart max {LIMITS['depart']} chars")


def godown_list(cn=None) -> list[dict]:
    rows = db.query(f"SELECT {SELECT_COLS} FROM GodownMast ORDER BY Code", cn=cn)
    return [_map_godown(r) for r in rows]


def godown_get(code: str, cn=None) -> dict | None:
    rows = db.query(f"SELECT {SELECT_COLS} FROM GodownMast WHERE Code = ?", (code,), cn=cn)
    return _map_godown(rows[0]) if rows else None


def godown_exists(code: str, cn=None) -> bool:
    return bool(db.query("SELECT 1 FROM GodownMast WHERE Code = ?", (code,), cn=cn))


def godown_insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate_godown(rec)
    return db.execute(
        "INSERT INTO GodownMast (Code, Name, ShortName, DepartCode, "
        "SysYn, U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?)",
        (rec["code"], rec["name"], rec.get("short", ""),
         rec.get("depart", ""), rec.get("sysyn", "N"), USER,
         SITE_CODE, SITE_CODE), cn=cn, commit=commit)


def godown_update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    _validate_godown(rec)
    return db.execute(
        "UPDATE GodownMast SET Name = ?, ShortName = ?, DepartCode = ?, "
        "SysYn = ?, U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE Code = ?",
        (rec["name"], rec.get("short", ""), rec.get("depart", ""),
         rec.get("sysyn", "N"), USER, code), cn=cn, commit=commit)


def godown_delete(code: str, cn=None, commit: bool = True) -> int:
    return db.execute("DELETE FROM GodownMast WHERE Code = ?", (code,), cn=cn, commit=commit)


# ============================================================
# Document numbering helpers
# ============================================================
def _make_docid(vtype: str, vprefix: str, vno: int) -> str:
    """'D'+site(2)+vtype.ljust(6)+vprefix(4)+VNo.rjust(8) = 21 char"""
    return "D" + SITE_CODE + vtype.ljust(6) + vprefix.ljust(4) + str(vno).rjust(8)


def _next_vno(vtype: str, vprefix: str, cn=None) -> int:
    rows = db.query(
        "SELECT MAX(VNo) FROM Stock WHERE Vtype = ? AND Vprefix = ? AND Site_Code = ?",
        (vtype, vprefix, SITE_CODE), cn=cn)
    return (rows[0][0] or 0) + 1 if rows and rows[0][0] else 1


def _next_vno_table(table: str, vtype: str, vprefix: str, cn=None) -> int:
    """For tables with their own VNo sequence (GIN, POrder, etc.)."""
    vtype_col = "Vtype" if table == "Stock" else "VType"
    rows = db.query(
        f"SELECT MAX(VNo) FROM {table} WHERE {vtype_col} = ? AND Vprefix = ? AND Site_Code = ?",
        (vtype, vprefix, SITE_CODE), cn=cn)
    return (rows[0][0] or 0) + 1 if rows and rows[0][0] else 1


# ============================================================
# Indent (Vtype='RQ') - header only (lines in Stock with IndentDocId/IndentSno)
# ============================================================
def indent_list(cn=None, vprefix: str = "2026", top: int = 200) -> list:
    rows = db.query(
        f"SELECT TOP {int(top)} DocId, VNo, VDate, Department, ClearYN, "
        "Godown FROM Indent WHERE Site_Code = ? AND Vprefix = ? "
        "ORDER BY VNo DESC", (SITE_CODE, vprefix), cn=cn)
    return [{"docid": r.DocId, "vno": r.VNo, "vdate": r.VDate,
             "dept": r.Department or "", "clear": r.ClearYN or "",
             "godown": r.Godown or ""} for r in rows]


def indent_get(docid: str, cn=None) -> dict | None:
    rows = db.query("SELECT DocId, Vtype, VNo, Vprefix, VDate, Department, "
                    "Remarks, U_Name, U_AE, ClearYN, Godown, RefDocId "
                    "FROM Indent WHERE DocId = ?", (docid,), cn=cn)
    if not rows:
        return None
    r = rows[0]
    return {"docid": r[0], "vtype": r[1], "vno": r[2], "vprefix": r[3],
            "vdate": r[4], "dept": r[5] or "", "remarks": r[6] or "",
            "u_name": r[7] or "", "u_ae": r[8] or "",
            "clear": r[9] or "", "godown": r[10] or "", "ref_docid": r[11] or ""}


def indent_create(dept: str, vdate, godown: str, vprefix: str = "2026",
                  remarks: str = "", user: str = USER, cn=None, commit: bool = True) -> dict:
    """Create new Indent (VB6 PIndent 'Add' flow).
    Returns: {"docid", "vno"}
    """
    vdate = vdate or date.today()
    vno = _next_vno_table("Indent", "RQ", vprefix, cn=cn)
    docid = _make_docid("RQ", vprefix, vno)
    
    own = cn is None
    cn = cn or db.connect()
    try:
        db.execute(
            "INSERT INTO Indent (DocId, Vtype, VNo, Site_Code, Vprefix, VDate, "
            "VTime, Department, Remarks, U_Name, U_EntDt, U_AE, ClearYN, "
            "LogSite_Code, Godown, RefDocId) "
            "VALUES (?, 'RQ', ?, ?, ?, ?, '08:00', ?, ?, ?, getdate(), 'A', 'N', ?, ?, '')",
            (docid, vno, SITE_CODE, vprefix, vdate, dept, remarks, user,
             SITE_CODE, godown), cn=cn, commit=False)
        if commit:
            cn.commit()
        return {"docid": docid, "vno": vno}
    finally:
        if own:
            cn.close()


def indent_update(docid: str, dept: str, vdate, godown: str,
                  remarks: str = "", clear: str = "N", user: str = USER,
                  cn=None, commit: bool = True) -> int:
    own = cn is None
    cn = cn or db.connect()
    try:
        n = db.execute(
            "UPDATE Indent SET Department = ?, VDate = ?, Godown = ?, "
            "Remarks = ?, ClearYN = ?, U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
            "WHERE DocId = ?",
            (dept, vdate, godown, remarks, clear, user, docid),
            cn=cn, commit=False)
        if commit:
            cn.commit()
        return n
    finally:
        if own:
            cn.close()


def indent_delete(docid: str, cn=None, commit: bool = True) -> int:
    # Safety: only PYT* test indents
    if not docid.startswith("DKKRQ"):
        raise ValueError("Safety: sirf PYT* test indents delete ho sakte hain")
    return db.execute("DELETE FROM Indent WHERE DocId = ?", (docid,), cn=cn, commit=commit)


# ============================================================
# GIN / Purchase Receipt (Vtype='MRCR') - header + Purch2 lines
# ============================================================
def purchase_list(cn=None, vprefix: str = "2026", top: int = 200) -> list:
    """Purchase Register base: GIN MRCR docs."""
    rows = db.query(
        f"SELECT TOP {int(top)} DocId, VNo, VDate, PartyName "
        "FROM GIN WHERE Site_Code = ? AND Vprefix = ? AND Vtype = 'MRCR' "
        "ORDER BY VNo DESC", (SITE_CODE, vprefix), cn=cn)
    return [{"docid": r.DocId, "vno": r.VNo, "vdate": r.VDate,
             "party": (r.PartyName or "").strip()} for r in rows]


def gin_get(docid: str, cn=None) -> dict | None:
    """Get GIN header."""
    rows = db.query(
        "SELECT DocId, Vtype, VNo, Vprefix, VDate, PartyCode, PartyName, "
        "GodownCode, Remark, U_Name, U_AE, OCDocid, OCDate, POrdDocid, POrdDate "
        "FROM GIN WHERE DocId = ?", (docid,), cn=cn)
    if not rows:
        return None
    r = rows[0]
    return {"docid": r[0], "vtype": r[1], "vno": r[2], "vprefix": r[3],
            "vdate": r[4], "party_code": r[5] or "", "party_name": (r[6] or "").strip(),
            "godown": r[7] or "", "remark": r[8] or "",
            "u_name": r[9] or "", "u_ae": r[10] or "",
            "oc_docid": r[11] or "", "oc_date": r[12],
            "pord_docid": r[13] or "", "pord_date": r[14]}


def gin_lines(docid: str, cn=None) -> list:
    """GIN lines from Purch2 (ContraDocId = GIN.DocId)."""
    rows = db.query(
        "SELECT Sno, Item, QtyRec, Unit, Rate, Amount, TaxPer, TaxAmt, "
        "DiscPer, DiscAmt, VoidYN, Remarks, GodownCode, ChalQty, RecdQty, "
        "AccQty, RejQty, IndentDocId, IndentSno, ItemRestCode "
        "FROM Purch2 WHERE ContraDocId = ? ORDER BY Sno", (docid,), cn=cn)
    return [{"sno": r[0], "item": r[1] or "", "qty_rec": r[2] or 0,
             "unit": r[3] or "", "rate": r[4] or 0, "amount": r[5] or 0,
             "tax_per": r[6] or 0, "tax_amt": r[7] or 0,
             "disc_per": r[8] or 0, "disc_amt": r[9] or 0,
             "void": r[10] or "", "remarks": r[11] or "",
             "godown": r[12] or "", "chal_qty": r[13] or 0,
             "recd_qty": r[14] or 0, "acc_qty": r[15] or 0,
             "rej_qty": r[16] or 0, "indent_docid": r[17] or "",
             "indent_sno": r[18] or 0, "item_rest_code": r[19] or ""} for r in rows]


def gin_create(party_code: str, party_name: str, godown: str, vdate,
               lines: list[dict], vprefix: str = "2026",
               user: str = USER, cn=None, commit: bool = True) -> dict:
    """Create GIN (Purchase Receipt) with lines (VB6 pMREntry 'Add' flow).
    lines: [{"item", "qty_rec", "unit", "rate", "amount", "godown", "remarks",
             "tax_per", "tax_amt", "disc_per", "disc_amt", "indent_docid", "indent_sno"}]
    Returns: {"docid", "vno"}
    """
    if not lines:
        raise ValueError("At least one line required")
    
    vdate = vdate or date.today()
    vno = _next_vno_table("GIN", "MRCR", "2026", cn=cn)
    docid = _make_docid("MRCR", "2026", vno)
    
    own = cn is None
    cn = cn or db.connect()
    try:
        # Header - GIN table doesn't have VTime column
        party_name = party_name or ""
        db.execute(
            "INSERT INTO GIN (DocId, Vtype, VNo, Site_Code, Vprefix, VDate, "
            "PartyCode, PartyName, GodownCode, Remark, U_Name, U_EntDt, U_AE, "
            "LogSite_Code) "
            "VALUES (?, 'MRCR', ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
            (docid, vno, SITE_CODE, "2026", vdate,
             lines[0].get("party_code", ""), lines[0].get("party_name", party_name),
             lines[0].get("godown", godown), "", user, SITE_CODE),
            cn=cn, commit=False)
        
        # Lines - insert into Purch2 with ContraDocId = GIN.DocId
        for i, line in enumerate(lines, 1):
            sno = i
            item = line.get("item", "")
            qty_rec = float(line.get("qty_rec") or 0)
            unit = line.get("unit", "")
            rate = float(line.get("rate") or 0)
            amount = float(line.get("amount") or 0)
            tax_per = float(line.get("tax_per") or 0)
            tax_amt = float(line.get("tax_amt") or 0)
            disc_per = float(line.get("disc_per") or 0)
            disc_amt = float(line.get("disc_amt") or 0)
            godown = line.get("godown", "")
            remarks = line.get("remarks", "")
            indent_docid = line.get("indent_docid", "")
            indent_sno = int(line.get("indent_sno") or 0)
            item_rest_code = line.get("item_rest_code", "")
            
            db.execute(
                "INSERT INTO Purch2 (DocId, Sno, Vtype, VNo, Site_Code, Vprefix, Vdate, "
                "PartyCode, Item, QtyIss, QtyRec, Unit, Rate, Amount, TaxPer, TaxAmt, DiscPer, DiscAmt, "
                "VoidYN, Remarks, ContraDocId, ContraSno, VTime, U_Name, U_EntDt, U_AE, "
                "GodCode, LogSite_Code) "
                "VALUES (?, ?, 'PBPB', ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
                "'N', ?, ?, ?, '00:00', ?, getdate(), 'A', ?, ?)",
                (docid, sno, vno, SITE_CODE, "2026", vdate,
                 lines[0].get("party_code", ""), item, 0, qty_rec, unit, rate, amount,
                 tax_per, tax_amt, disc_per, disc_amt,
                 remarks, docid, sno,
                 user, godown, SITE_CODE), cn=cn, commit=False)
        
        if commit:
            cn.commit()
        return {"docid": docid, "vno": vno}
    finally:
        if own:
            cn.close()


# ============================================================
# Purchase Order (POrder + POrder1)
# ============================================================
def porder_list(cn=None, vprefix: str = "2026", top: int = 200) -> list:
    rows = db.query(
        f"SELECT TOP {int(top)} DocId, VNo, VDate, PartyCode, Remark "
        "FROM POrder WHERE Site_Code = ? AND Vprefix = ? AND VType = 'PORD' "
        "ORDER BY VNo DESC", (SITE_CODE, vprefix), cn=cn)
    return [{"docid": r[0], "vno": r[1], "vdate": r[2],
             "party_code": r[3] or "", "remark": r[4] or ""} for r in rows]


def porder_create(party_code: str, vdate, lines: list[dict],
                  vprefix: str = "2026", user: str = USER,
                  cn=None, commit: bool = True) -> dict:
    """Create Purchase Order (POrder + POrder1 lines)."""
    if not lines:
        raise ValueError("At least one line required")
    
    vdate = vdate or date.today()
    vno = _next_vno_table("POrder", "PORD", vprefix, cn=cn)
    docid = _make_docid("PORD", vprefix, vno)
    
    own = cn is None
    cn = cn or db.connect()
    try:
        # Header
        db.execute(
            "INSERT INTO POrder (DocId, VNo, VDate, VType, VPrefix, Site_Code, "
            "PartyCode, U_Name, U_EntDt, U_AE, LogSite_Code) "
            "VALUES (?, ?, ?, 'PORD', ?, ?, ?, ?, getdate(), 'A', ?)",
            (docid, vno, vdate, "2026", SITE_CODE, "KK000265", USER, SITE_CODE, SITE_CODE),
            cn=cn, commit=False)
        
        # Lines
        for i, line in enumerate(lines, 1):
            db.execute(
                "INSERT INTO POrder1 (DocId, Sno, VNo, VDate, VType, VPrefix, Site_Code, "
                "PartyCode, ItemCode, Qty, Unit, Rate, PerUnit, Amount, U_Name, U_EntDt, "
                "U_AE, IndentDocId, IndentSno, Specification, ConvRatio, WtQty, WtUnit, "
                "LogSite_Code, TaxStru, TaxAmt, Total) "
                "VALUES (?, ?, ?, ?, 'PORD', ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', "
                "?, ?, ?, ?, ?, ?)",
                (docid, i, vno, vdate, "2026", SITE_CODE,
                 line.get("party_code", ""), line["item"], line["qty"], line["unit"],
                 line["rate"], 0, line.get("amount", 0), USER,
                 line.get("indent_docid", ""), line.get("indent_sno", 0),
                 line.get("specification", ""), 1, 0, "",
                 SITE_CODE, line.get("tax_stru", ""), 0, line.get("amount", 0)),
                cn=cn, commit=False)
        
        if commit:
            cn.commit()
        return {"docid": docid, "vno": vno}
    finally:
        if own:
            cn.close()


# ============================================================
# Stock Operations (Issue/Receive/Adjustment)
# ============================================================
VTYPES = {
    "issue": "RQI",      # Store Issue
    "receive": "RQR",    # Store Receive
    "adjust": "ADJ",     # Adjustment
    "bkrec": "BKREC",    # Store Receive (RsStoreRecEntry)
    "transfer": "BMTC",  # Stock transfer between godowns
}


def build_transfer_lines(item: str, from_godown: str, to_godown: str,
                        qty: float, unit: str = "", rate: float = 0,
                        amount: float | None = None,
                        remarks: str = "") -> list[dict]:
    """Build balanced pair for inter-godown transfer.

    Business meaning:
    - outgoing row: negative qty/amount from source godown
    - incoming row: positive qty/amount to destination godown
    - mapped to Stock rows with ContraDocId/ContraSno pair for VB6 traceability
    """
    if not item or not from_godown or not to_godown:
        raise ValueError("Item, from_godown and to_godown zaroori hain")
    if from_godown == to_godown:
        raise ValueError("Source and destination godown same nahi ho sakta")
    qty = float(qty or 0)
    if qty <= 0:
        raise ValueError("Qty > 0 hona chahiye")
    amt = float(amount) if amount is not None else (qty * float(rate or 0))
    base_note = remarks.strip()
    return [
        {
            "item": item,
            "godown": from_godown,
            "qty": -qty,
            "unit": unit,
            "rate": float(rate or 0),
            "amount": -amt,
            "remarks": f"{base_note} -> {to_godown}".strip(" -"),
        },
        {
            "item": item,
            "godown": to_godown,
            "qty": qty,
            "unit": unit,
            "rate": float(rate or 0),
            "amount": amt,
            "remarks": f"{base_note} from {from_godown}".strip(" -"),
        },
    ]


def stock_next_vno(vtype: str, vprefix: str = "2026", cn=None) -> int:
    return _next_vno(vtype, vprefix, cn)


def stock_transfer(item: str, from_godown: str, to_godown: str,
                   qty: float, unit: str = "", rate: float = 0,
                   amount: float | None = None, vdate=None,
                   vprefix: str = "2026", user: str = USER,
                   remarks: str = "", cn=None, commit: bool = True) -> dict:
    """Create a BMTC stock transfer pair between two godowns.

    Live DB pattern: same DocId, two Stock rows, paired with ContraDocId/ContraSno.
    """
    lines = build_transfer_lines(item, from_godown, to_godown, qty, unit, rate, amount, remarks)
    vdate = vdate or date.today()
    vtype = "BMTC"
    vno = stock_next_vno(vtype, vprefix, cn=cn)
    docid = _make_docid(vtype, vprefix, vno)
    vtime = datetime.now().strftime("%H:%M")
    own = cn is None
    cn = cn or db.connect()
    try:
        for i, line in enumerate(lines, 1):
            qty_val = float(line["qty"])
            qty_iss = abs(qty_val) if qty_val < 0 else 0
            qty_rec = abs(qty_val) if qty_val > 0 else 0
            contra_sno = 2 if qty_val < 0 else 1
            db.execute(
                "INSERT INTO Stock (DocId, Sno, Vtype, VNo, Site_Code, VPrefix, VDate, VTime, "
                "PartyCode, RestCode, RoomCat, RoomType, RoomNo, Item, QtyIss, QtyRec, "
                "Unit, Rate, Amount, U_Name, U_EntDt, U_AE, LogSite_Code, GodownCode, "
                "DelFlag, ContraDocId, ContraSno) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?, 'N', ?, ?)",
                (docid, i, vtype, vno, SITE_CODE, vprefix, vdate, vtime,
                 "", "", "", "", "", line["item"], qty_iss, qty_rec,
                 line.get("unit", ""), line.get("rate", 0), abs(line.get("amount", 0)),
                 user, SITE_CODE, line["godown"], docid, contra_sno),
                cn=cn, commit=False)
        if commit:
            cn.commit()
        return {"docid": docid, "vno": vno, "vtype": vtype}
    finally:
        if own:
            cn.close()


def stock_create(vtype: str, lines: list[dict], vdate=None, vprefix: str = "2026",
                 user: str = USER, cn=None, commit: bool = True) -> dict:
    """Create Stock document (Issue/Receive/Adjustment).
    lines: [{"item", "godown", "qty", "unit", "rate", "amount", "remarks"}]
    For vtype='RQI' (Issue): QtyIss = qty, QtyRec = 0
    For vtype='RQR' (Receive): QtyIss = 0, QtyRec = qty
    For vtype='ADJ' (Adjust): QtyRec = max(qty,0), QtyIss = max(-qty,0)
    """
    if not lines:
        raise ValueError("At least one line required")
    
    vdate = vdate or date.today()
    vno = stock_next_vno(vtype, vprefix, cn=cn)
    docid = _make_docid(vtype, vprefix, vno)
    vtime = datetime.now().strftime("%H:%M")
    
    own = cn is None
    cn = cn or db.connect()
    try:
        for i, line in enumerate(lines, 1):
            qty = float(line.get("qty", 0))
            if vtype == "RQI":      # Issue
                qty_iss, qty_rec = qty, 0
            elif vtype == "RQR":    # Receive
                qty_iss, qty_rec = 0, qty
            else:                   # ADJ - positive = receive, negative = issue
                qty_iss, qty_rec = (0, qty) if qty >= 0 else (-qty, 0)
            
            db.execute(
                "INSERT INTO Stock (DocId, Sno, Vtype, VNo, Site_Code, VPrefix, VDate, VTime, "
                "PartyCode, RestCode, RoomCat, RoomType, RoomNo, Item, QtyIss, QtyRec, "
                "Unit, Rate, Amount, U_Name, U_EntDt, U_AE, LogSite_Code, GodownCode, "
                "DelFlag) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?, 'N')",
                (docid, i, vtype, vno, SITE_CODE, vprefix, vdate, vtime,
                 "", "", "", "", "", line["item"], qty_iss, qty_rec,
                 line.get("unit", ""), line.get("rate", 0), line.get("amount", 0),
                 user, SITE_CODE, line["godown"]),
                cn=cn, commit=False)
        if commit:
            cn.commit()
        return {"docid": docid, "vno": vno, "vtype": vtype}
    finally:
        if own:
            cn.close()


def stock_issue(lines: list[dict], vdate=None, vprefix: str = "2026",
                user: str = USER, cn=None, commit: bool = True) -> dict:
    """Requisition Issue (Vtype='RQI'). lines: [{"item", "godown", "qty", "unit", "rate"}]"""
    return stock_create("RQI", lines, vdate, vprefix, user, cn, commit)


def stock_receive(lines: list[dict], vdate=None, vprefix: str = "2026",
                  user: str = USER, cn=None, commit: bool = True) -> dict:
    """Requisition Receive (Vtype='RQR'). lines: [{"item", "godown", "qty", "unit", "rate"}]"""
    return stock_create("RQR", lines, vdate, vprefix, user, cn, commit)


def kitchen_stock_issue(lines: list[dict], vdate=None, vprefix: str = "2026",
                        user: str = USER, cn=None, commit: bool = True) -> dict:
    """Kitchen Stock Issue (Vtype='KSISS', NCat='KSISS')."""
    return stock_create("KSISS", lines, vdate, vprefix, user, cn, commit)


def kitchen_stock_receive(lines: list[dict], vdate=None, vprefix: str = "2026",
                          user: str = USER, cn=None, commit: bool = True) -> dict:
    """Kitchen Stock Receive (Vtype='KSREC', NCat='KSREC')."""
    return stock_create("KSREC", lines, vdate, vprefix, user, cn, commit)


def kitchen_material_issue(lines: list[dict], vdate=None, vprefix: str = "2026",
                           user: str = USER, cn=None, commit: bool = True) -> dict:
    """Kitchen Material Issue (Vtype='KMISS', NCat='KMISS')."""
    return stock_create("KMISS", lines, vdate, vprefix, user, cn, commit)


def kitchen_material_receive(lines: list[dict], vdate=None, vprefix: str = "2026",
                             user: str = USER, cn=None, commit: bool = True) -> dict:
    """Kitchen Material Receive (Vtype='KMREC', NCat='KMREC')."""
    return stock_create("KMREC", lines, vdate, vprefix, user, cn, commit)


def bakery_stock_receive(lines: list[dict], vdate=None, vprefix: str = "2026",
                         user: str = USER, cn=None, commit: bool = True) -> dict:
    """Bakery Stock Receive (Vtype='BKREC', NCat='BKREC')."""
    return stock_create("BKREC", lines, vdate, vprefix, user, cn, commit)


# Vtype -> (description, direction) mapping for all stock issue/receipt types
STOCK_VTYPE_MAP = {
    "RQI": ("Requisition Issue", "issue"),
    "RQR": ("Requisition Receipt", "receive"),
    "KSISS": ("Kitchen Stock Issue", "issue"),
    "KSREC": ("Kitchen Stock Receive", "receive"),
    "KMISS": ("Kitchen Material Issue", "issue"),
    "KMREC": ("Kitchen Material Receive", "receive"),
    "BKREC": ("Bakery Stock Receive", "receive"),
    "MRE": ("M.R. Entry", "receive"),
    "STOP": ("Raw Item Opening Stock", "receive"),
}


def stock_adjust(lines: list[dict], vdate=None, vprefix: str = "2026",
                 user: str = USER, cn=None, commit: bool = True) -> dict:
    """Stock Adjustment (Vtype='ADJ'). lines: [{"item", "godown", "qty", "unit", "rate"}]
    Positive qty = increase stock, Negative = decrease."""
    return stock_create("ADJ", lines, vdate, vprefix, user, cn, commit)


def validate_stock_line(line: dict) -> None:
    """Validate a single stock line dict. Raises ValueError on invalid."""
    if not line.get("item", "").strip():
        raise ValueError("Item code zaroori hai")
    if not line.get("godown", "").strip():
        raise ValueError("Godown code zaroori hai")
    qty = line.get("qty", 0)
    try:
        qty = float(qty)
    except (ValueError, TypeError):
        raise ValueError("Qty numeric hona chahiye")
    if qty <= 0:
        raise ValueError("Qty positive honi chahiye")
    rate = line.get("rate", 0)
    try:
        float(rate)
    except (ValueError, TypeError):
        raise ValueError("Rate numeric hona chahiye")


def stock_movements(vtype: str = None, godown: str = None, item: str = None,
                    vprefix: str = "2026", cn=None, top: int = 200) -> list:
    """List stock movements filtered by vtype/godown/item."""
    sql = (f"SELECT TOP {int(top)} DocId, Sno, Vtype, VNo, VDate, Item, "
           "GodownCode, QtyIss, QtyRec, Rate, Amount, U_Name, VTime "
           "FROM Stock WHERE Site_Code = ? AND Vprefix = ? ")
    params: list = [SITE_CODE, vprefix]
    if vtype:
        sql += "AND Vtype = ? "
        params.append(vtype)
    if godown:
        sql += "AND GodownCode = ? "
        params.append(godown)
    if item:
        sql += "AND Item = ? "
        params.append(item)
    sql += "ORDER BY VDate DESC, DocId DESC"
    rows = db.query(sql, tuple(params), cn=cn)
    return [{"docid": r.DocId or "", "sno": r.Sno, "vtype": r.Vtype or "",
             "vno": r.VNo, "vdate": r.VDate, "item": r.Item or "",
             "godown": r.GodownCode or "",
             "qty_iss": float(r.QtyIss or 0), "qty_rec": float(r.QtyRec or 0),
             "rate": float(r.Rate or 0), "amount": float(r.Amount or 0),
             "user": r.U_Name or "", "vtime": r.VTime or ""} for r in rows]


# ============================================================
# Reports (read-only)
# ============================================================
def stock_balance(cn=None, vprefix: str = "2026", top: int = 50) -> list:
    """Stock Summary: Godown+Item balance (QtyRec - QtyIss)."""
    rows = db.query(
        f"SELECT TOP {int(top)} s.GodownCode, g.Name AS Godown, "
        "s.Item, i.Name AS ItemName, SUM(s.QtyRec - s.QtyIss) AS Bal "
        "FROM Stock s "
        "LEFT JOIN GodownMast g ON g.Code = s.GodownCode "
        "LEFT JOIN ItemMast i ON i.Code = s.Item "
        "WHERE s.Site_Code = ? AND s.Vprefix = ? "
        "GROUP BY s.GodownCode, g.Name, s.Item, i.Name "
        "HAVING SUM(s.QtyRec - s.QtyIss) > 0 "
        "ORDER BY SUM(s.QtyRec - s.QtyIss) DESC",
        (SITE_CODE, vprefix), cn=cn)
    return [{"godown": r.GodownCode or "",
             "godown_name": (r.Godown or "").strip(),
             "item": r.Item or "", "item_name": (r.ItemName or "").strip(),
             "bal": r.Bal or 0.0} for r in rows]


def stock_register(godown: str = None, item: str = None,
                   vprefix: str = "2026", cn=None, top: int = 200) -> list:
    """Stock Register: detailed movements per item/godown."""
    sql = f"SELECT TOP {int(top)} DocId, Vtype, VNo, VDate, Item, GodownCode, " \
          "QtyIss, QtyRec, Rate, Amount, U_Name, VTime " \
          "FROM Stock WHERE Site_Code = ? AND Vprefix = ? "
    params = [SITE_CODE, vprefix]
    if godown:
        sql += "AND GodownCode = ? "
        params.append(godown)
    if item:
        sql += "AND Item = ? "
        params.append(item)
    sql += "ORDER BY VDate DESC, VNo DESC, Sno"
    rows = db.query(sql, tuple(params), cn=cn)
    return [{"docid": r.DocId, "vtype": r.Vtype, "vno": r.VNo,
             "vdate": r.VDate, "item": r.Item or "", "godown": r.GodownCode or "",
             "qty_iss": r.QtyIss or 0, "qty_rec": r.QtyRec or 0,
             "rate": r.Rate or 0, "amount": r.Amount or 0,
             "user": r.U_Name or "", "vtime": r.VTime} for r in rows]


def purchase_register(vprefix: str = "2026", cn=None, top: int = 200) -> list:
    """Purchase Register with GIN + POrder + PBPB."""
    rows = db.query(
        f"SELECT TOP {int(top)} DocId, VNo, VDate, PartyName, Vtype "
        "FROM GIN WHERE Site_Code = ? AND Vprefix = ? AND Vtype IN ('MRCR') "
        "UNION "
        f"SELECT TOP {int(top)} DocId, VNo, VDate, PartyCode, Vtype "
        "FROM POrder WHERE Site_Code = ? AND Vprefix = ? AND Vtype = 'PORD' "
        "UNION "
        f"SELECT TOP {int(top)} DocId, VNo, VDate, PartyName, Vtype "
        "FROM GIN WHERE Site_Code = ? AND Vprefix = ? AND Vtype = 'PBPB' "
        "ORDER BY VDate DESC, VNo DESC",
        (SITE_CODE, vprefix, SITE_CODE, vprefix, SITE_CODE, vprefix), cn=cn)
    return [{"docid": r[0], "vno": r[1], "vdate": r[2],
             "party": (r[3] or "").strip(), "vtype": r[4]} for r in rows]


# ============================================================
# Helper: Get next indent VNo for Stock lines
# ============================================================
def _get_indent_sno(indent_docid: str, cn=None) -> int:
    rows = db.query(
        "SELECT MAX(IndentSNo) FROM Stock WHERE IndentDocId = ?",
        (indent_docid,), cn=cn)
    return (rows[0][0] or 0) + 1 if rows and rows[0][0] else 1


# ============================================================
# Purch2 lines from GIN (for display)
# ============================================================
def gin_purch2_lines(docid: str, cn=None) -> list:
    """Get Purch2 lines linked to a GIN (ContraDocId = GIN.DocId)."""
    return gin_lines(docid, cn=cn)


# ============================================================
# eInvoice Config (P6-5) - eInvoiceEnviro table (1 row)
# VB6: eInvoice.bas / frmCompany.frm
# ============================================================
EINVIOCE_COLS = "ASPId, ASPPwd, eInvUserName, eInvPwd"


def _einvoice_missing_table_err() -> ValueError:
    return ValueError(
        "eInvoice config table not present in this DB. "
        "Feature is disabled for schema compatibility."
    )


def _einvoice_query_safe(sql: str, params=(), cn=None):
    try:
        return db.query(sql, params, cn=cn)
    except Exception as exc:
        msg = str(exc)
        if "Invalid object name 'eInvoiceEnviro'" in msg or "eInvoiceEnviro" in msg and "does not exist" in msg:
            return []
        raise


def einvoice_get(cn=None) -> dict | None:
    """Read eInvoice config (single row). Returns None if table missing."""
    rows = _einvoice_query_safe(
        f"SELECT {EINVIOCE_COLS} FROM eInvoiceEnviro", cn=cn)
    if not rows:
        return None
    r = rows[0]
    return {"asp_id": (r[0] or "").strip(),
            "asp_pwd": (r[1] or "").strip(),
            "einv_user": (r[2] or "").strip(),
            "einv_pwd": (r[3] or "").strip()}


def einvoice_upsert(rec: dict, cn=None, commit: bool = True) -> int:
    """Insert or update eInvoice config (single-row table).
    If row exists UPDATE, else INSERT. Safe if table missing.
    """
    existing = einvoice_get(cn=cn)
    if existing is None:
        # Check if table exists before trying INSERT
        if not _einvoice_query_safe("SELECT 1 FROM eInvoiceEnviro WHERE 1=0", cn=cn):
            raise _einvoice_missing_table_err()
        return db.execute(
            f"INSERT INTO eInvoiceEnviro ({EINVIOCE_COLS}) "
            "VALUES (?, ?, ?, ?)",
            (rec.get("asp_id", ""), rec.get("asp_pwd", ""),
             rec.get("einv_user", ""), rec.get("einv_pwd", "")),
            cn=cn, commit=commit)
    else:
        if not _einvoice_query_safe("SELECT 1 FROM eInvoiceEnviro WHERE 1=0", cn=cn):
            raise _einvoice_missing_table_err()
        return db.execute(
            "UPDATE eInvoiceEnviro SET ASPId = ?, ASPPwd = ?, "
            "eInvUserName = ?, eInvPwd = ?",
            (rec.get("asp_id", ""), rec.get("asp_pwd", ""),
             rec.get("einv_user", ""), rec.get("einv_pwd", "")),
            cn=cn, commit=commit)