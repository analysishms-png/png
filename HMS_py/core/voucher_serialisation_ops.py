"""Voucher Serialisation ops (VB6 FrmSerialiseVr.frm port) — saara DB logic.

VB6 source: HMS_REVERSE_ENGINEERING/HMS/FrmSerialiseVr.frm
("Voucher Serialisation", maximized MDI child, menu leaf under
Financial Setup).
Dispatch: ModuleAdd.bas loc_1E44380 —
    If (var_188 = "Voucher Serialisation") Then Set var_90 = New FrmSerialiseVr
Menu row: Proc_165_0_14CCEC0("Voucher Serialisation", &HC, 0,
    "Financial Setup", ...).

Core routine: Proc_211_4_162D2BC (frm:279) — batch re-serialisation of ONE
FA voucher type inside current V_Prefix + Site_Code:
  wipe staging (LedgerMerge / LedgerMMerge) -> reset
  Voucher_Prefix.Start_Srl_No to 0 -> read LedgerM headers (ORDER BY V_Date)
  + Ledger lines (ORDER BY V_Date,DocId,V_No) -> per header: new 21-char
  DocId, sequential V_No from 1, UPDATE Start_Srl_No, staged INSERT into
  LedgerMMerge; per line: staged INSERT into LedgerMerge with V_SNo
  restarting 1 per voucher -> transactional swap (DELETE scope then
  INSERT..SELECT from staging; LedgerM pair first, Ledger pair second).

Tables (live Moondata2627, verified 2026-10-02): Ledger (29 col) ~
LedgerMerge (29 col) and LedgerM (13 col) ~ LedgerMMerge (13 col) have
IDENTICAL column order -> `INSERT ... SELECT *` swap valid; no identity
columns; every NOT NULL column of Ledger/LedgerM is covered by the staged
INSERT lists; SeqNo + TImp_Dt are nullable (staged rows carry NULL — VB6
parity: its INSERT lists also omit them). Also used: Voucher_Prefix
(Start_Srl_No counter), Voucher_Type (Form_Load combo: Category='FA').

All SQL parameterized (`?`); VB6 string-concat SQL (literal builders
Proc_6_17_EAA2B0 / Proc_6_7_F25D88 / Proc_6_39_E7C810) replaced by pyodbc
binding — Python None binds as SQL NULL.

Deliberate deviations vs VB6:
  1. Poora run ek hi db.transaction() me — VB6 staging writes turant commit
     karta tha, sirf swap BeginTrans me tha; single txn = all-or-nothing.
  2. Orphan guard: scope ki jis Ledger line ka LedgerM header nahi, run
     ValueError se refuse (VB6 ka swap wo lines silently DELETE kar deta).
     Live: 0 orphans for all 10 FA types.
  3. Count asserts staged/committed rows vs source reads (swap sanity).
  4. DocId via fa_voucher._make_docid (FaVrEnt.frm:13332 formula). VB6 helper
     Proc_6_86_12EDF28 (MainLib.bas:3570) ke Manual / DIVISION / SP_ORDCOUN
     branches yahan kabhi fire nahi hote — live: koi FA type Manual nahi,
     SerialNo_From_Table sab me empty, har FA type ki ek hi Voucher_Prefix
     row (Prefix='2026', FY window) — default branch hi chalta hai, jo
     lblVNo/Start_Srl_No counter par DocId banata hai (iseequivalent).
"""
from __future__ import annotations

import datetime

from HMS_py.core import db
from HMS_py.core import fa_voucher

# LBLStatus captions (VB6 verbatim)
STATUS_START = "Ledger Serialisation"
STATUS_DONE = "Serialization Completed"

# VB6 Proc_6_27_EA565C (MainLib.bas:415) validation message, verbatim
REQUIRED_FIELD_MSG = "Vr.Type is a required field."


def _g(row: dict, name: str):
    """Case-insensitive column fetch (VB6 Field access case-insensitive
    tha; live schema me 'Pqty'/'emp_code' jaisi case differences safe hain)."""
    if name in row:
        return row[name]
    low = name.lower()
    for k in row:
        if k.lower() == low:
            return row[k]
    raise KeyError(name)


def _query_dicts(sql: str, params=(), cn=None) -> list[dict]:
    """SELECT -> list[dict] (cursor.description keys)."""
    own = cn is None
    cn = cn or db.connect()
    try:
        cur = cn.cursor()
        cur.execute(sql, params)
        cols = [d[0] for d in cur.description]
        return [dict(zip(cols, r)) for r in cur.fetchall()]
    finally:
        if own:
            cn.close()


def _fmt_date(v) -> str:
    """LBLStatus date caption (VB6 CStr(V_DATE) => dd-mm-yyyy locale style)."""
    if isinstance(v, (datetime.datetime, datetime.date)):
        return v.strftime("%d-%m-%Y")
    return str(v)


def list_voucher_types(site: str | None = None) -> list[dict]:
    """Form_Load combo fill — VB6 FrmSerialiseVr.frm:249 (verbatim SQL):

        select V_Type,Description from Voucher_Type
        where Category='FA' And Site_Code='<site>'

    Returns [{'vtype': 'CPV', 'description': 'Cash Payment'}, ...] in
    table order. site default: db.get_site_code() (VB6 MemVar_1F92070).
    """
    site = site or db.get_site_code()
    rows = db.query(
        "select V_Type,Description from Voucher_Type "
        "where Category='FA' And Site_Code=?",
        (site,))
    return [{"vtype": r[0], "description": r[1]} for r in rows]


def list_voucher_prefix(vtype: str, vprefix: str | None = None,
                        site: str | None = None) -> dict | None:
    """Current Voucher_Prefix row (Start_Srl_No display) — read-only.

    VB6 is table me sirf UPDATE karta hai (frm:335 reset + frm:357
    per-serial); koi SELECT nahi tha — ye UI preview ke liye naya read.
    """
    vprefix = vprefix or db.get_vprefix()
    site = site or db.get_site_code()
    rows = _query_dicts(
        "SELECT V_Type, Prefix, Start_Srl_No, Date_From, Date_To, "
        "Site_Code, LogSite_Code FROM Voucher_Prefix "
        "WHERE V_Type = ? AND Prefix = ? AND Site_Code = ?",
        (vtype, vprefix, site))
    return rows[0] if rows else None


def list_serial_records(vtype: str, vprefix: str | None = None,
                        site: str | None = None) -> list[dict]:
    """Read-only grid data: LedgerM headers + per-header Ledger line stats.

    VB6 recordset SQL (frm:340 header, frm:343 detail — verbatim, ? params):

        select * from LedgerM where V_Type=? And V_Prefix=? And Site_Code=?
        order by V_Date
        select docId as searchcode,Ledger.* from Ledger where V_Type=?
        And V_Prefix=? And Site_Code=? Order by V_Date,DocId,V_No

    VB6 detail rs par per-header `Find "SearchCode='<DocId>'"` (frm:374)
    se lines milti thi; yahan same order me lines ko DocId par group kar
    ke header-wise count/totals banaye jaate hain. Returns rows:
    {'sr_no', 'docid', 'v_date', 'narration', 'lines', 'amt_dr', 'amt_cr'}.
    """
    vprefix = vprefix or db.get_vprefix()
    site = site or db.get_site_code()
    headers = _query_dicts(
        "select * from LedgerM where V_Type = ? And V_Prefix = ? "
        "And Site_Code = ? order by V_Date",
        (vtype, vprefix, site))
    lines = _query_dicts(
        "select docId as searchcode,Ledger.* from Ledger where V_Type = ? "
        "And V_Prefix = ? And Site_Code = ? Order by V_Date,DocId,V_No",
        (vtype, vprefix, site))
    by_doc: dict[str, list[dict]] = {}
    for ln in lines:
        by_doc.setdefault(str(_g(ln, "DocId")), []).append(ln)
    out = []
    for h in headers:
        grp = by_doc.get(str(_g(h, "DocId")), [])
        out.append({
            "sr_no": _g(h, "V_No"),
            "docid": _g(h, "DocId"),
            "v_date": _g(h, "V_Date"),
            "narration": _g(h, "Narration") or "",
            "lines": len(grp),
            "amt_dr": round(sum(float(_g(x, "AmtDr") or 0) for x in grp), 2),
            "amt_cr": round(sum(float(_g(x, "AmtCr") or 0) for x in grp), 2),
        })
    return out


def clear_merge_tables(cn=None) -> dict:
    """Staging wipe — VB6 frm:320/:321 (verbatim, parameterless):

        delete from LedgerMerge
        delete from LedgerMMerge

    cn pass karo to transaction ke andar (commit=False); bahar call karne
    par apne aap commit hota hai. Returns rows deleted per table.
    """
    n1 = db.execute("delete from LedgerMerge", (), cn=cn,
                    commit=cn is None)
    n2 = db.execute("delete from LedgerMMerge", (), cn=cn,
                    commit=cn is None)
    return {"LedgerMerge": n1, "LedgerMMerge": n2}


def serialise(vtype: str, vprefix: str | None = None,
              site: str | None = None, status_cb=None) -> dict:
    """VB6 Proc_211_4_162D2BC (FrmSerialiseVr.frm:279) — run serialisation.

    Args:
        vtype: FA V_Type (VB6 TxtVrType.BoundText). Empty -> ValueError
            with REQUIRED_FIELD_MSG (VB6 Proc_6_27_EA565C:415,
            MsgBox "<msg>" &H10 "Validation Error").
        vprefix: default db.get_vprefix() (VB6 MemVar_1F9212C).
        site: default db.get_site_code() (VB6 MemVar_1F92070).
        status_cb: optional fn(str) — LBLStatus.Caption updates
            ("Ledger Serialisation" -> per-header dd-mm-yyyy ->
            "Serialization Completed"); VB6 ye .Refresh karta tha.

    Flow (VB6 frm loc):
        clear_merge_tables + STATUS_START            (:320-:322)
        lblVNo = 1 (UI side mirrors)                 (:327)
        reset Start_Srl_No=0 per distinct v_Prefix   (:328-:338)
        headers = LedgerM SELECT ... ORDER BY V_Date (:340)
        lines   = Ledger SELECT ... ORDER BY V_Date,DocId,V_No (:343)
        if lines: per-header renumber + staged INSERTs (:347-:425),
                  transactional swap                  (:427-:437)
        STATUS_DONE                                  (:440)

    Raises: ValueError (validation / orphan refusal / count mismatch),
    any db error (transaction rolls back — VB6 error path frm:450-460
    RollbackTrans + MsgBox &H40 "Information").

    Returns: {'vtype', 'vprefix', 'site', 'headers', 'lines',
    'start_srl_no', 'status'}.
    """
    vtype = (vtype or "").strip()
    if not vtype:
        raise ValueError(REQUIRED_FIELD_MSG)
    vprefix = (vprefix or "").strip() or db.get_vprefix()
    site = (site or "").strip() or db.get_site_code()

    def _status(msg: str) -> None:
        if status_cb:
            status_cb(msg)

    with db.transaction() as cn:
        clear_merge_tables(cn=cn)
        _status(STATUS_START)

        pref_rows = db.query(
            "Select DISTINCT v_Prefix from LEDGERM WHERE V_Type = ? "
            "And V_Prefix = ? And Site_Code = ?",
            (vtype, vprefix, site), cn=cn)
        for pr in pref_rows:
            db.execute(
                "UPDATE Voucher_Prefix SET Start_Srl_No=0 WHERE "
                "V_Type = ? AND PREFIX = ? And Site_Code = ?",
                (vtype, pr[0], site), cn=cn, commit=False)

        headers = _query_dicts(
            "select * from LedgerM where V_Type = ? And V_Prefix = ? "
            "And Site_Code = ? order by V_Date",
            (vtype, vprefix, site), cn=cn)
        lines = _query_dicts(
            "select docId as searchcode,Ledger.* from Ledger where "
            "V_Type = ? And V_Prefix = ? And Site_Code = ? "
            "Order by V_Date,DocId,V_No",
            (vtype, vprefix, site), cn=cn)

        by_doc: dict[str, list[dict]] = {}
        for ln in lines:
            by_doc.setdefault(str(_g(ln, "DocId")), []).append(ln)
        header_ids = {str(_g(h, "DocId")) for h in headers}
        orphans = [d for d in by_doc if d not in header_ids]
        if orphans:
            raise ValueError(
                f"{len(orphans)} Ledger line group(s) have no LedgerM header "
                f"in scope (e.g. DocId '{orphans[0]}') — serialisation "
                "refused; VB6 swap would delete these lines")

        start_srl = 0
        if lines:
            vno = 1
            for h in headers:
                _status(_fmt_date(_g(h, "V_Date")))
                if site == fa_voucher.SITE_CODE:
                    docid = fa_voucher._make_docid(vtype, vprefix, vno)
                else:
                    docid = ("D" + site + str(vtype).ljust(5) +
                             str(vprefix).ljust(5) + str(vno).rjust(8))
                db.execute(
                    "UPDATE Voucher_Prefix SET Start_Srl_No=? WHERE "
                    "V_Type = ? and Prefix = ? And Site_Code = ?",
                    (vno, vtype, vprefix, site), cn=cn, commit=False)
                db.execute(
                    "INSERT INTO LedgerMMerge (DocId,Site_Code,V_Type,"
                    "v_prefix,V_No,V_Date,Narration,U_Name,U_EntDt,U_AE,"
                    "Trf_Date,LogSite_Code) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)",
                    (docid, _g(h, "Site_Code"), _g(h, "V_Type"), vprefix,
                     vno, _g(h, "V_Date"), _g(h, "Narration"),
                     _g(h, "U_Name"), _g(h, "U_EntDt"), _g(h, "U_AE"),
                     _g(h, "Trf_Date"), _g(h, "LogSite_Code")),
                    cn=cn, commit=False)
                for sno, ln in enumerate(
                        by_doc.get(str(_g(h, "DocId")), []), start=1):
                    db.execute(
                        "INSERT INTO LedgerMerge (V_PREFIX,DocId,V_SNo,"
                        "V_Type,V_No,Site_Code,V_Date,SubCode,AmtDr,AmtCr,"
                        "ContraSub,Chq_No,Chq_Date,Clg_Date,Narration,"
                        "U_Name,U_EntDt,U_AE,SQty,PQty,AgRefNo,VTime,"
                        "Mth_Year,Emp_Code,GroupCode,GroupNature,"
                        "LogSite_Code) VALUES (?" + ",?" * 26 + ")",
                        (vprefix, docid, sno, _g(ln, "V_Type"), vno,
                         _g(ln, "Site_Code"), _g(ln, "V_Date"),
                         _g(ln, "SubCode"), _g(ln, "AmtDr"),
                         _g(ln, "AmtCr"), _g(ln, "ContraSub"),
                         _g(ln, "Chq_No"), _g(ln, "Chq_Date"),
                         _g(ln, "Clg_Date"), _g(ln, "Narration"),
                         _g(ln, "U_Name"), _g(ln, "U_EntDt"),
                         _g(ln, "U_AE"), _g(ln, "SQty"), _g(ln, "PQty"),
                         _g(ln, "AgRefNo"), _g(ln, "VTime"),
                         _g(ln, "Mth_Year"), _g(ln, "Emp_Code"),
                         _g(ln, "GroupCode"), _g(ln, "GroupNature"),
                         _g(ln, "LogSite_Code")),
                        cn=cn, commit=False)
                vno += 1
            start_srl = vno - 1

            staged_h = db.query("SELECT COUNT(*) FROM LedgerMMerge",
                                cn=cn)[0][0]
            staged_l = db.query("SELECT COUNT(*) FROM LedgerMerge",
                                cn=cn)[0][0]
            if staged_h != len(headers) or staged_l != len(lines):
                raise ValueError(
                    f"staging count mismatch: LedgerMMerge {staged_h}/"
                    f"{len(headers)}, LedgerMerge {staged_l}/{len(lines)}")

            db.execute(
                "DELETE FROM LedgerM WHERE V_Type in (?) And V_Prefix = ? "
                "And Site_Code = ?",
                (vtype, vprefix, site), cn=cn, commit=False)
            db.execute(
                "INSERT INTO LedgerM SELECT * FROM LedgerMMerge "
                "WHERE V_Type in (?) And V_Prefix = ? And Site_Code = ?",
                (vtype, vprefix, site), cn=cn, commit=False)
            db.execute(
                "DELETE FROM Ledger WHERE V_Type in (?) And V_Prefix = ? "
                "And Site_Code = ?",
                (vtype, vprefix, site), cn=cn, commit=False)
            db.execute(
                "INSERT INTO Ledger SELECT * FROM LedgerMerge "
                "WHERE V_Type in (?) And V_Prefix = ? And Site_Code = ?",
                (vtype, vprefix, site), cn=cn, commit=False)

            got_h = db.query(
                "SELECT COUNT(*) FROM LedgerM WHERE V_Type = ? AND "
                "v_Prefix = ? AND Site_Code = ?",
                (vtype, vprefix, site), cn=cn)[0][0]
            got_l = db.query(
                "SELECT COUNT(*) FROM Ledger WHERE V_Type = ? AND "
                "v_Prefix = ? AND Site_Code = ?",
                (vtype, vprefix, site), cn=cn)[0][0]
            if got_h != len(headers) or got_l != len(lines):
                raise ValueError(
                    f"post-swap count mismatch: LedgerM {got_h}/"
                    f"{len(headers)}, Ledger {got_l}/{len(lines)}")

        _status(STATUS_DONE)

    return {"vtype": vtype, "vprefix": vprefix, "site": site,
            "headers": len(headers), "lines": len(lines),
            "start_srl_no": start_srl, "status": STATUS_DONE}
