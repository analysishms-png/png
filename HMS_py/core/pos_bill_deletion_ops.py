"""POS Bill Deletion core ops (VB6 FrmPOSBillDeletion "POS Bill Deletion").

DESTRUCTIVE port: selected POS bills ki rows 8 tables se DELETE + baaki
bills ko compact renumber (gap close) + VOUCHER_PREFIX START_SRL_NO update.

VB6 flow (FrmPOSBillDeletion.frm, decompiled — HMS_REVERSE_ENGINEERING/
HMS/FrmPOSBillDeletion.frm; verified SQL: 02_Main_Setup/sql/queries.sql
line 6190 "# ### FrmPOSBillDeletion (44 statement(s))"):
  Form_Load (loc_F92710)
    -> outlets query (loc_F92621, Depart) = list_outlets()
    -> paymodes query (loc_F92693, RevMast) = list_paymodes()
    -> grid setup Proc_179_23 (loc_11BC878) + CmdDelete disabled.
  CmdFill (loc_1191BAC): validations (exact order/messages =
    validate_fill()) -> Label1 "Processing..." -> Proc_179_24
    (loc_1319CD8) candidate fill = fill_candidates() (iska pehla statement
    global_80 = max(Vno) before FromDate, yahan max_vno_before()).
  CmdDelete (loc_1167180): SELECT SHORTNAME (loc_1166E79) ->
    BeginTrans (loc_1166F14) -> "Delete from TempPosDel" (loc_1166F2F)
    -> Proc_179_28 (loc_11A81CC) per-bill cascade = _cascade_statements()
    -> "Insert into TempPosDel(OldDocId,OldVno) ... VDate>=From And
    VDate<=FYEnd ... Order by Vno,VDate" (loc_1166F91..loc_1167026)
    -> Proc_179_27 (loc_107B368) renumber = _renumber()
    -> Proc_179_26 (loc_13CA384) propagate = _propagate()
    -> "UPDATE VOUCHER_PREFIX SET START_SRL_NO=<global_84> WHERE <ToDate>
    BETWEEN DATE_FROM AND DATE_TO AND V_TYPE='B<sn>' And Logsite_Code"
    (loc_1167097..loc_11670EE) -> CommitTrans (loc_1167120);
    error par RollbackTrans (loc_1167164). Kuch select na ho ->
    MsgBox "Select Bill No" (loc_11A8158, &H40 vbInformation).

Date range globals: MemVar_1F920F4 (FY start) / MemVar_1F920FC (FY end)
= Company Start_Dt/End_Dt (frmCompany.frm loc_195A183) — yahan
default_date_range() (pos_recycle_ops shared helper) padhta hai.
Outlet Txt(2): .Text = Depart.Name, .Tag = Depart.Code (loc_F39C67/
loc_F39CC7) — queries me Code (Tag) jaata hai. Payment Mode Txt(3) bhi
Code/Name par sirf VALIDATE hota hai (loc_1191AD7) — kisi bhi SQL me
paymode/PayType filter NAHI hai (44 verified stmts verify kiye).

Tables: Depart, RevMast, Sale1, Sale2, SunTran, Stock, PayCharge,
GuestReward, AssignDelivery, KOT, TempPosDel, VOUCHER_PREFIX (sab live
SQL Server me present).

Rules: sirf parameterized SQL ('?' placeholders — VB6 string-concat ka
safe equivalent); multi-statement writes ek hi cn par + ek hi commit
(db.transaction = VB6 BeginTrans/CommitTrans/RollbackTrans). VB6 is form
me koi U_Name/U_EntDt audit column NAHI likhta — port bhi nahi jodta.

Reconstruction notes (decompiled ambiguity, choices documented):
- renumber base (global_80) VB6 Fill par banta hai (loc_13195D8: "VDate>=
  <FYStart> And vdate<<FromDate" — strict less-than); port ise delete
  transaction ke andar banata hai (fresher, collision-free; qty same).
- VOUCHER_PREFIX date predicate decompile garbled hai (loc_11670CD
  " And VDate<=" artifact) — "WHERE <To Date> BETWEEN DATE_FROM AND
  DATE_TO" reconstruct kiya (CmdFill ka Txt(1), pos_recycle ke
  DATE_FROM/DATE_TO pattern ke saath consistent).
- V_TYPE = "B" & Depart.ShortName (CmdSerialize loc_12C001F se
  Proc_6_38_E68A98 ka 'B'-prefix semantics; pos_recycle B<sn> parity).
- Hidden CmdSerialize (Ctrl+H, loc_12C0488) PORT NAHI (see UI docstring).
"""
from __future__ import annotations

import datetime

from HMS_py.core import db
# shared FY helper (Company Start_Dt/End_Dt -> MemVar_1F920F4/1F920FC)
from HMS_py.core.pos_recycle_ops import default_date_range

SITE_CODE = db.get_site_code()
USER = db.get_user()

# VB6 GridSel tick glyph: CellFontName="WINGDINGS", Chr(252) checkmark
# (loc_1014B04 IIf(TextMatrix="ü", " ", "ü") toggle).
TICK = "\u00fc"


def _as_date(v) -> datetime.date:
    """date/datetime/ISO-str -> date (Company Start_Dt datetime aata hai)."""
    if isinstance(v, datetime.datetime):
        return v.date()
    if isinstance(v, datetime.date):
        return v
    return datetime.date.fromisoformat(str(v)[:10])


def list_outlets(cn=None) -> list[dict]:
    """Candidate outlets — VB6 Form_Load query (loc_F92621).

    VB6 verbatim:
      SELECT Code,Name,RestType,DiscApp FROM Depart Where
      (LOGSITE_CODE='<MemVar_1F92078>' or LOGSITE_CODE='HO') AND
      ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen')
      ORDER BY Name
    """
    rows = db.query(
        "SELECT Code, Name, RestType, DiscApp FROM Depart "
        "Where (LOGSITE_CODE = ? or LOGSITE_CODE = 'HO') "
        "AND ((OutletYN = 'Y' and RestType <> 'Banquet') "
        "OR RestType = 'Kitchen') ORDER BY Name",
        (SITE_CODE,), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip(),
             "resttype": (r.RestType or "").strip(),
             "discapp": (r.DiscApp or "").strip()} for r in rows]


def list_paymodes(cn=None) -> list[dict]:
    """Payment modes — VB6 Form_Load query (loc_F92693).

    VB6 verbatim:
      SELECT Code,Name,PayType FROM RevMast Where PayType
      In('Cash','Member','Complementary') And (LOGSITE_CODE='<site>'
      or LOGSITE_CODE='HO') AND FieldType='P' ORDER BY Name
    Sirf dropdown/validation ke liye — kisi delete/fill SQL me shamil
    nahi (VB6 me bhi nahi).
    """
    rows = db.query(
        "SELECT Code, Name, PayType FROM RevMast Where PayType "
        "In ('Cash', 'Member', 'Complementary') "
        "And (LOGSITE_CODE = ? or LOGSITE_CODE = 'HO') "
        "AND FieldType = 'P' ORDER BY Name",
        (SITE_CODE,), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip(),
             "paytype": (r.PayType or "").strip()} for r in rows]


def outlet_shortname(rest_code: str, cn=None) -> str:
    """Outlet ka ShortName = V_TYPE suffix (VB6 loc_1166E79).

    VB6 verbatim:
      SELECT SHORTNAME FROM DEPART WHERE CODE='<Txt(2).Tag>'
      And Logsite_Code='<MemVar_1F92078>'
    """
    rows = db.query(
        "SELECT SHORTNAME FROM DEPART WHERE CODE = ? And Logsite_Code = ?",
        (rest_code, SITE_CODE), cn=cn)
    return (rows[0].SHORTNAME or "").strip() if rows else ""


def validate_fill(date_from, date_to, outlet_code, paymode_code,
                  cn=None) -> str | None:
    """VB6 CmdFill validations — exact order + exact messages.

    loc_11917FA Proc_6_27_EA565C("From Date") -> "<f> is a required
    field." (MainLib.bas:415, title "Validation Error", &H10) — dekho
    _REQ. Then FY checks (loc_1191881/loc_1191978), From<To
    (loc_1191A29), "Outlet" (loc_1191A99), "Payment Mode" (loc_1191AD7).
    Date edits hamesha ek date rakhte hain (VB6 khali text tha) — required
    checks port me sirf None/blank par lagte hain.

    Returns error message (sabhi &H10 critical) ya None = valid.
    """
    fy_start, fy_end = default_date_range(cn=cn)
    d1 = None if date_from in (None, "") else _as_date(date_from)
    if d1 is None:
        return "From Date is a required field."
    if d1 > fy_end or d1 < fy_start:
        return "FromDate must be with in Financial Year"
    d2 = None if date_to in (None, "") else _as_date(date_to)
    if d2 is None:
        return "To Date is a required field."
    if d2 > fy_end or d2 < fy_start:
        return "ToDate must be with in Financial Year"
    if d1 > d2:
        return "FromDate must be less than ToDate"
    if not (outlet_code or "").strip():
        return "Outlet is a required field."
    if not (paymode_code or "").strip():
        return "Payment Mode is a required field."
    return None


def max_vno_before(date_from, rest_code: str, cn=None) -> int:
    """global_80 = renumber base (VB6 Proc_179_24 pehla query, loc_13195D8).

    VB6 verbatim (date appender Proc_6_7_F25D88 ke baad):
      Select max(Vno) From Sale1 Where VDate>=<FYStart> And
      vdate<<FromDate And RestCode='<Txt(2).Tag>' And
      Logsite_Code='<site>'
    Strict `<` (VB6 ` And vdate<`); NULL (koi purana bill nahi) -> 0.
    """
    d1 = _as_date(date_from)
    fy_start, _fy_end = default_date_range(cn=cn)
    rows = db.query(
        "Select max(Vno) From Sale1 Where VDate >= ? And VDate < ? "
        "And RestCode = ? And Logsite_Code = ?",
        (fy_start, d1, rest_code, SITE_CODE), cn=cn)
    v = rows[0][0] if rows else None
    return int(v or 0)


def fill_candidates(date_from, date_to, rest_code: str,
                    cn=None) -> list[dict]:
    """Candidate bills grid ke liye (VB6 Proc_179_24, loc_1319CD8).

    VB6 verbatim (loc_13196E6 + date/outlet append, loc_13197A6):
      Select Distinct S.DocId,S.Vno From (Sale1 S Left Join PayCharge P
      on P.DocId=S.DocId) Where IsNull(P.PayType,'') Not In('PPOS','IPOS')
      And S.VDate Between <From> And <To> And S.RestCode='<Code>' And
      S.Logsite_Code='<site>' Order by S.Vno
    Har candidate ka detail (loc_13198BE):
      Select Vno,Vdate,NetAmt as BillAmount,DocId From Sale1 Where
      DocId='<docid>'  -- RecordCount=1 hi fill hota hai (loc_13198F7)
    PayType col (loc_1319C0A):
      Select Case When IsNull(Sum(AmtCr),0)=<BillAmount> Then 'Cash'
      Else 'Non-Cash' End From Paycharge Where PayType='Cash' And
      DocId='<docid>'
    """
    d1, d2 = _as_date(date_from), _as_date(date_to)
    if d1 > d2:
        raise ValueError("FromDate must be less than ToDate")
    cand = db.query(
        "Select Distinct S.DocId, S.Vno From "
        "(Sale1 S Left Join PayCharge P on P.DocId = S.DocId) "
        "Where IsNull(P.PayType, '') Not In ('PPOS', 'IPOS') "
        "And S.VDate Between ? And ? And S.RestCode = ? "
        "And S.Logsite_Code = ? Order by S.Vno",
        (d1, d2, rest_code, SITE_CODE), cn=cn)
    out: list[dict] = []
    for r in cand:
        docid = r.DocId
        if not str(docid or "").strip():
            continue
        det = db.query(
            "Select Vno, Vdate, NetAmt as BillAmount, DocId From Sale1 "
            "Where DocId = ?", (docid,), cn=cn)
        if len(det) != 1:
            continue   # VB6: If (RecordCount = 1) Then ... End If
        d = det[0]
        amt = d.BillAmount
        pt = db.query(
            "Select Case When IsNull(Sum(AmtCr), 0) = ? Then 'Cash' "
            "Else 'Non-Cash' End As PayType From Paycharge "
            "Where PayType = 'Cash' And DocId = ?",
            (amt, docid), cn=cn)
        out.append({
            "docid": docid,
            "vno": int(d.Vno or 0),
            "vdate": _as_date(d.Vdate),
            "amount": float(amt or 0),
            "paytype": (pt[0].PayType if pt else "Non-Cash"),
        })
    return out


def _cascade_statements(docid: str) -> list[tuple]:
    """VB6 Proc_179_25 (loc_FC7868) ke 8 statements, exact order.

    Har tuple: (label, sql, params).
    """
    return [
        # loc_FC76D8
        ("KOT", "Update Kot Set ContraDocID = 'Deleted' "
                "Where ContraDocID = ?", (docid,)),
        # loc_FC770E
        ("Sale1", "Delete From Sale1 Where DocID = ?", (docid,)),
        # loc_FC7744
        ("Sale2", "Delete From Sale2 Where DocID = ?", (docid,)),
        # loc_FC777A
        ("SunTran", "Delete From SunTran Where DocID = ?", (docid,)),
        # loc_FC77B0
        ("Stock", "Delete From Stock Where DocID = ?", (docid,)),
        # loc_FC77E6
        ("PayCharge", "Delete From Paycharge Where DocID = ?", (docid,)),
        # loc_FC781C
        ("GuestReward", "Delete From GuestReward Where DocID = ?",
         (docid,)),
        # loc_FC7852
        ("AssignDelivery", "Delete From AssignDelivery Where DocID = ?",
         (docid,)),
    ]


def _renumber(base: int, cn) -> tuple[int, int]:
    """VB6 Proc_179_27 (loc_107B368): TempPosDel rows ko compact numbers.

    Per row (Order By OldVno), i = 1..n:
      new_vno  = global_80 + i                                   (loc_107B1F8)
      NewDocId = Left(OldDocId,13) & Space(8-Len(Trim(new_vno)))
                 & Trim(new_vno)                                 (loc_107B2AC)
      Update TempPosDel Set NewDocId=?,NewVno=? Where OldDocId=?
                 And OldVno=?                                    (loc_107B2D7)
    global_84 = global_80 + n; khaali ho to global_84 = global_80
    (loc_107B17A). Space(negative) VB6 error (=rollback) — port bhi
    8 se lamba number raise karke rollback leta hai.

    Returns (moved_count, global_84).
    """
    rows = db.query(
        "Select OldDocId, OldVno from TempPosDel Order By OldVno",
        (), cn=cn)
    if not rows:
        return 0, base
    for i, r in enumerate(rows, start=1):
        new_vno = base + i
        s = str(new_vno).strip()
        if len(s) > 8:
            raise ValueError(
                f"New Vno {new_vno} 8 char me fit nahi hota "
                "(VB6 Space(negative) error -> rollback)")
        new_docid = str(r.OldDocId or "")[:13] + " " * (8 - len(s)) + s
        db.execute(
            "Update TempPosDel Set NewDocId = ?, NewVno = ? "
            "Where OldDocId = ? And OldVno = ?",
            (new_docid, new_vno, r.OldDocId, r.OldVno),
            cn=cn, commit=False)
    return len(rows), base + len(rows)


def _propagate(cn) -> dict[str, int]:
    """VB6 Proc_179_26 (loc_13CA384): naye DocId/Vno sab child tables me.

    TempPosDel Order By OldVno per row, exact order:
      Sale1 / Sale2 / SunTran / Stock / PayCharge (Set DocId,Vno
      Where DocId,Vno) -> GuestReward (Set DocId,BillNo Where DocId,
      BillNo, loc_13CA0E1) -> AssignDelivery (loc_13CA20C) ->
      Kot ContraDocId (loc_13CA33B, sirf DocId, Vno nahi).
    """
    rows = db.query(
        "Select OldDocId, OldVno, NewDocId, NewVno from TempPosDel "
        "Order By OldVno", (), cn=cn)
    counts: dict[str, int] = {}
    for r in rows:
        if r.NewVno is None or not str(r.NewDocId or "").strip():
            continue
        old_id, old_vno = r.OldDocId, r.OldVno
        new_id, new_vno = r.NewDocId, r.NewVno
        pair = (new_id, new_vno, old_id, old_vno)
        stmts = [
            ("Sale1", "Update Sale1 Set DocId = ?, Vno = ? "
                      "Where DocId = ? And Vno = ?", pair),
            ("Sale2", "Update Sale2 Set DocId = ?, Vno = ? "
                      "Where DocId = ? And Vno = ?", pair),
            ("SunTran", "Update SunTran Set DocId = ?, Vno = ? "
                        "Where DocId = ? And Vno = ?", pair),
            ("Stock", "Update Stock Set DocId = ?, Vno = ? "
                      "Where DocId = ? And Vno = ?", pair),
            ("PayCharge", "Update PayCharge Set DocId = ?, Vno = ? "
                          "Where DocId = ? And Vno = ?", pair),
            ("GuestReward", "Update GuestReward Set DocId = ?, BillNo = ? "
                            "Where DocId = ? And BillNo = ?", pair),
            ("AssignDelivery", "Update AssignDelivery Set DocId = ?, Vno = ? "
                               "Where DocId = ? And Vno = ?", pair),
            ("KOT", "Update Kot Set ContraDocId = ? Where ContraDocId = ?",
             (new_id, old_id)),
        ]
        for label, sql, params in stmts:
            n = db.execute(sql, params, cn=cn, commit=False)
            counts[label] = counts.get(label, 0) + max(int(n or 0), 0)
    return counts


def count_pending(docids, date_from, date_to, rest_code: str,
                  cn=None) -> dict[str, int]:
    """Per-table rows jo delete/update hone WALE hain (read-only preview).

    VB6 me yeh nahi hai — confirmation dialog ke liye safety add (sirf
    SELECT COUNT(1); kuch write nahi). Cascade predicates ek jaise
    (DocID/ContraDocID IN), renumber scope wahi Insert range
    (VDate>=From .. VDate<=FYEnd), VOUCHER_PREFIX wahi BETWEEN.
    """
    ids = [str(d) for d in (docids or []) if str(d or "").strip()]
    counts: dict[str, int] = {}
    if ids:
        marks = ",".join("?" * len(ids))
        checks = [
            ("KOT", "SELECT COUNT(1) FROM Kot WHERE ContraDocID IN ("
                    + marks + ")"),
            ("Sale1", "SELECT COUNT(1) FROM Sale1 WHERE DocID IN ("
                      + marks + ")"),
            ("Sale2", "SELECT COUNT(1) FROM Sale2 WHERE DocID IN ("
                      + marks + ")"),
            ("SunTran", "SELECT COUNT(1) FROM SunTran WHERE DocID IN ("
                        + marks + ")"),
            ("Stock", "SELECT COUNT(1) FROM Stock WHERE DocID IN ("
                      + marks + ")"),
            ("PayCharge", "SELECT COUNT(1) FROM PayCharge WHERE DocID IN ("
                          + marks + ")"),
            ("GuestReward", "SELECT COUNT(1) FROM GuestReward "
                            "WHERE DocID IN (" + marks + ")"),
            ("AssignDelivery", "SELECT COUNT(1) FROM AssignDelivery "
                               "WHERE DocID IN (" + marks + ")"),
        ]
        for label, sql in checks:
            rows = db.query(sql, tuple(ids), cn=cn)
            counts[label] = int(rows[0][0] or 0)
    d1, d2 = _as_date(date_from), _as_date(date_to)
    if d1 > d2:
        raise ValueError("FromDate must be less than ToDate")
    _fy_start, fy_end = default_date_range(cn=cn)
    rows = db.query(
        "SELECT COUNT(1) FROM Sale1 WHERE VDate >= ? AND VDate <= ? "
        "AND RestCode = ? AND Logsite_Code = ?",
        (d1, fy_end, rest_code, SITE_CODE), cn=cn)
    counts["Sale1 (renumber scope)"] = int(rows[0][0] or 0)
    short = outlet_shortname(rest_code, cn=cn)
    if short:
        rows = db.query(
            "SELECT COUNT(1) FROM VOUCHER_PREFIX WHERE ? BETWEEN "
            "DATE_FROM AND DATE_TO AND V_TYPE = ? And Logsite_Code = ?",
            (d2, "B" + short, SITE_CODE), cn=cn)
        counts["VOUCHER_PREFIX"] = int(rows[0][0] or 0)
    return counts


def delete_bills(docids, date_from, date_to, rest_code: str,
                 user: str = USER, cn=None) -> dict:
    """DESTRUCTIVE delete + renumber: selected bills hatao, gap close.

    VB6: CmdDelete (loc_1167180) BeginTrans -> "Delete from TempPosDel"
    -> Proc_179_28 cascade -> Insert into TempPosDel -> Proc_179_27
    renumber -> Proc_179_26 propagate -> UPDATE VOUCHER_PREFIX ->
    CommitTrans; koi bhi step fail ho to RollbackTrans (loc_1167164).
    Yahan: ek hi cn + ek hi commit (db.transaction).

    Args: docids = grid col2 (DocId) values; date_from/date_to = filter
    (From/To Date; To Date sirf VOUCHER_PREFIX date predicate me,
    From Date dono base+insert lower bound me); rest_code = outlet
    Depart.Code (VB6 Txt(2).Tag).

    Returns {"bills", "counts": {label: rows}, "total", "renumber":
    {"base", "moved", "last"}, "user"}. VB6 audit columns nahi likhta.
    """
    ids = [str(d) for d in (docids or []) if str(d or "").strip()]
    if not ids:
        raise ValueError("Select Bill No")
    d1, d2 = _as_date(date_from), _as_date(date_to)
    if d1 > d2:
        raise ValueError("FromDate must be less than ToDate")
    _fy_start, fy_end = default_date_range(cn=cn)
    counts: dict[str, int] = {}
    with db.transaction(cn) as cnx:
        short = outlet_shortname(rest_code, cn=cnx)
        if not short:
            raise ValueError(
                f"{rest_code}: Depart.ShortName khali hai — V_TYPE "
                "'B<sn>' nahi ban sakta")
        # global_80 (VB6 Fill par banta; yahan transaction me fresher)
        base = max_vno_before(d1, rest_code, cn=cnx)
        # loc_1166F2F
        db.execute("Delete from TempPosDel", (), cn=cnx, commit=False)
        # Proc_179_28 selection loop (loc_11A81CC) ke docids
        for docid in ids:
            for label, sql, params in _cascade_statements(docid):
                n = db.execute(sql, params, cn=cnx, commit=False)
                counts[label] = counts.get(label, 0) + max(int(n or 0), 0)
        # loc_1166F91..loc_1167026: FromDate .. FY End (MemVar_1F920FC)
        db.execute(
            "Insert into TempPosDel(OldDocId, OldVno) Select DocId, Vno "
            "from Sale1 Where VDate >= ? And VDate <= ? And RestCode = ? "
            "And Logsite_Code = ? Order by Vno, VDate",
            (d1, fy_end, rest_code, SITE_CODE), cn=cnx, commit=False)
        moved, last_vno = _renumber(base, cn=cnx)   # global_84 = last_vno
        counts.update(_propagate(cnx))
        n_vp = db.execute(
            "UPDATE VOUCHER_PREFIX SET START_SRL_NO = ? WHERE ? BETWEEN "
            "DATE_FROM AND DATE_TO AND V_TYPE = ? And Logsite_Code = ?",
            (last_vno, d2, "B" + short, SITE_CODE), cn=cnx, commit=False)
        counts["VOUCHER_PREFIX"] = max(int(n_vp or 0), 0)
    return {"bills": len(ids), "counts": counts,
            "total": sum(counts.values()),
            "renumber": {"base": base, "moved": moved, "last": last_vno},
            "user": user}
