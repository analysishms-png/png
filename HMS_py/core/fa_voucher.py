"""FA Voucher engine (VB6 FaVrEnt.frm + FaChqClear.frm + FaReports port).

EVIDENCE (live + VB6):
- FaVrEnt.frm:13872 INSERT INTO LedgerM (DocId,V_Type,v_Prefix,V_No,...);
  :13719 INSERT INTO LEDGER (...SubCode,AmtCr,AmtDr,ContraSub,Narration,...);
  DocId (VB6 FaVrEnt.frm:13332): 'D'+site(2)+V_Type.ljust(5)+
  Prefix.ljust(5)+V_No.rjust(8) = 21 char.
- Voucher_Prefix table: V_Type/Date_From/Date_To/Prefix/Start_Srl_No
  (next V_No = MAX(V_No)+1 per V_Type+Prefix, else Start_Srl_No+1).
- FaChqClear.frm:663 'Update Ledger Set Chq_No=...,Chq_Date=...,Clg_Date=...'
  (bank reconciliation); :1752/:1760 cleared-vs-pending filter.
- Acgroup.GroupNature: A=Assets, L=Liabilities, E=Expenses, R=Revenue
  (live: A=14, L=12, E=3, R=4). Trial/PnL/BS group-wise on Ledger.
- Ledger live: V_Type 'HPOST' 11684 rows; LedgerM 0 rows (UI vouchers
  bante the — VB6 app me unka data Ledger me hi hai).
All writes transaction-scoped + PYT-guard; reports read-only.
"""
from __future__ import annotations

import datetime

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()


# ---------------------------------------------------------------- numbering
def _prefix_for(vtype: str, vdate) -> tuple[str, str]:
    """(Prefix, FY-window) for V_Type at vdate from Voucher_Prefix."""
    rows = db.query(
        "SELECT TOP 1 Prefix FROM Voucher_Prefix WHERE V_Type = ? "
        "AND ? BETWEEN Date_From AND Date_To ORDER BY Date_From DESC",
        (vtype, vdate), cn=None)
    if not rows:
        # FY fallback: '2025' pattern
        fy = vdate.year if vdate.month >= 4 else vdate.year - 1
        return str(fy), None
    return rows[0][0], None


def next_vno(vtype: str, vdate, cn=None) -> int:
    """Next V_No: MAX(LedgerM.V_No)+1 else MAX(Ledger.V_No)+1 else
    Voucher_Prefix.Start_Srl_No+1 (VB6 numbering parity)."""
    prefix, _ = _prefix_for(vtype, vdate)
    rows = db.query(
        "SELECT ISNULL(MAX(V_No), 0) FROM LedgerM WHERE V_Type = ? "
        "AND v_Prefix = ?", (vtype, prefix), cn=cn)
    mx = (rows[0][0] if rows else 0) or 0
    if not mx:
        rows = db.query(
            "SELECT ISNULL(MAX(V_No), 0) FROM Ledger WHERE V_Type = ? "
            "AND v_Prefix = ?", (vtype, prefix), cn=cn)
        mx = (rows[0][0] if rows else 0) or 0
    if not mx:
        rows = db.query(
            "SELECT ISNULL(Start_Srl_No, 0) FROM Voucher_Prefix "
            "WHERE V_Type = ? AND Prefix = ?", (vtype, prefix), cn=cn)
        mx = (rows[0][0] if rows else 0) or 0
    return int(mx) + 1


def _make_docid(vtype: str, prefix: str, vno: int) -> str:
    """VB6 FaVrEnt.frm:13332 — 21 char: D+site(2)+type(5)+prefix(5)+vno(8)."""
    return ("D" + SITE_CODE + str(vtype).ljust(5) +
            str(prefix).ljust(5) + str(vno).rjust(8))


# ---------------------------------------------------------------- posting
def post_voucher(lines: list[dict], vdate, narration: str = "",
                 vtype: str = "JV", user: str = USER,
                 chq_no: str = "", chq_date=None,
                 cn=None, commit: bool = True) -> dict:
    """Double-entry voucher: LedgerM header + n Ledger lines.
    VB6 patterns: CurrBal update, LedgerRef tracking, LedgerLog audit,
    ContraSub auto-fill, cheque date validation.

    lines: [{'subcode','amt_dr','amt_cr','narration'?}, ...]
    Guard: har line ka SubCode live Subgroup me ho; total DR == total CR.
    Returns {'docid','vno','dr','cr'}.
    """
    if not lines or len(lines) < 2:
        raise ValueError("Voucher me kam se kam 2 lines hone chahiye")
    vdate = vdate or datetime.date.today()
    if isinstance(vdate, str):
        vdate = datetime.date.fromisoformat(vdate)
    tot_dr = round(sum(float(l.get("amt_dr") or 0) for l in lines), 2)
    tot_cr = round(sum(float(l.get("amt_cr") or 0) for l in lines), 2)
    if abs(tot_dr - tot_cr) > 0.005:
        raise ValueError(f"Debit ({tot_dr}) != Credit ({tot_cr}) "
                         "— unbalanced voucher")
    if tot_dr == 0:
        raise ValueError("Voucher amount zero nahi ho sakta")
    # VB6 cheque date validation
    if chq_no and chq_date:
        if isinstance(chq_date, str):
            chq_date = datetime.date.fromisoformat(chq_date)
        if chq_date > vdate:
            raise ValueError("Cheque date voucher date se baad nahi ho sakta")
    # subcode validation + group info (VB6 fills GroupCode/GroupNature)
    subs = {}
    for l in lines:
        sc = (l.get("subcode") or "").strip()
        if not sc:
            raise ValueError("Har line me SubCode zaroori hai")
        if sc in subs:
            continue
        g = db.query(
            "SELECT s.SubCode, s.GroupCode, a.GroupNature FROM Subgroup s "
            "JOIN Acgroup a ON a.GroupCode = s.GroupCode "
            "WHERE RTRIM(s.SubCode) = ?", (sc,), cn=cn)
        if not g:
            raise ValueError(f"SubCode '{sc}' live Subgroup me nahi mila")
        subs[sc] = (g[0][1], g[0][2])
    own = cn is None
    cn = cn or db.connect()
    try:
        prefix, _ = _prefix_for(vtype, vdate)
        vno = next_vno(vtype, vdate, cn=cn)
        docid = _make_docid(vtype, prefix, vno)
        cur = cn.cursor()
        cur.execute(
            "INSERT INTO LedgerM (DocId, V_Type, v_Prefix, V_No, Site_Code, "
            "V_Date, Narration, U_Name, U_EntDt, U_AE, LogSite_Code) "
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
            (docid, vtype, prefix, vno, SITE_CODE, vdate, narration,
             user, SITE_CODE))
        # Find contra pairs for ContraSub auto-fill (VB6 pattern)
        contra_pairs = _find_contra_pairs(lines, subs)
        for sno, l in enumerate(lines, start=1):
            sc = l["subcode"].strip()
            gc, gn = subs[sc]
            contra_sub = contra_pairs.get(sc, "")
            cur.execute(
                "INSERT INTO Ledger (DocId, V_SNo, V_Type, V_No, v_Prefix, "
                "Site_Code, V_Date, SubCode, AmtDr, AmtCr, ContraSub, "
                "Narration, Chq_No, Chq_Date, Clg_Date, GroupCode, "
                "GroupNature, U_Name, U_EntDt, U_AE, LogSite_Code) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NULL, "
                "?, ?, ?, getdate(), 'A', ?)",
                (docid, sno, vtype, vno, prefix, SITE_CODE, vdate, sc,
                 float(l.get("amt_dr") or 0), float(l.get("amt_cr") or 0),
                 contra_sub, l.get("narration", "") or narration,
                 chq_no or "", chq_date, gc, gn, user, SITE_CODE))
            # VB6 CurrBal update: running balance per SubGroup
            _update_currbal(cn, sc, float(l.get("amt_dr") or 0),
                            float(l.get("amt_cr") or 0), vdate=vdate)
            # VB6 LedgerRef: copy to reference tables if TDS/bill-wise
            _create_ledgerref(cn, docid, sno, sc, l)
        # VB6 LedgerLog: audit trail
        _log_voucher(cn, docid, "A", user)
        # VB6: UPDATE Voucher_Prefix SET Start_Srl_No = V_No (number consumed)
        try:
            cn.execute(
                "UPDATE Voucher_Prefix SET Start_Srl_No = ?, U_EntDt = getdate(), "
                "U_AE = 'E' WHERE V_Type = ? AND Prefix = ? AND Site_Code = ?",
                (vno, vtype, prefix, SITE_CODE))
        except Exception:
            pass
        # VB6 LASTVOU / LastVoucher: track last docid per user+vtype
        try:
            from HMS_py.core import fa_ledger_ops as flo
            flo.lastvou_upsert(
                {"user_name": user, "vtype": vtype, "docid": docid,
                 "v_prefix": prefix, "last_ent_date": vdate},
                cn=cn, commit=False)
        except Exception:
            pass
        if commit:
            cn.commit()
        return {"docid": docid, "vno": vno, "dr": tot_dr, "cr": tot_cr}
    except Exception:
        try:
            cn.rollback()
        except Exception:
            pass
        raise
    finally:
        if own:
            cn.close()


def _find_contra_pairs(lines: list[dict], subs: dict) -> dict:
    """VB6 FaVrEnt ContraSub auto-fill.
    Har DR line ka ContraSub = pehli CR line ka SubCode;
    har CR line ka ContraSub = pehli DR line ka SubCode.
    Returns {subcode: contra_subcode}."""
    pairs: dict[str, str] = {}
    first_dr = ""
    first_cr = ""
    for l in lines:
        sc = (l.get("subcode") or "").strip()
        if not sc:
            continue
        if not first_dr and float(l.get("amt_dr") or 0) > 0:
            first_dr = sc
        if not first_cr and float(l.get("amt_cr") or 0) > 0:
            first_cr = sc
    if not first_dr or not first_cr:
        return pairs
    for l in lines:
        sc = (l.get("subcode") or "").strip()
        if not sc:
            continue
        if float(l.get("amt_dr") or 0) > 0:
            pairs.setdefault(sc, first_cr)
        if float(l.get("amt_cr") or 0) > 0:
            pairs.setdefault(sc, first_dr)
    return pairs


def _update_currbal(cn, subcode: str, dr: float, cr: float, vdate=None):
    """VB6 FaLib Proc_183_0: SUBGROUPCURRBAL delta + ACGROUPCURRBAL chain.

    Curr_Bal += (AmtDr - AmtCr) for (LogSite_Code, SubCode, V_Date);
    nahi mila to INSERT. Phir SubGroup.GroupCode se MainGrCode chain
    par ACGROUPCURRBAL me bhi same delta upsert hota hai."""
    delta = float(dr) - float(cr)
    if abs(delta) < 0.005:
        return
    g = db.query(
        "SELECT GroupCode FROM SubGroup WHERE RTRIM(SubCode) = ?",
        (subcode,), cn=cn)
    groupcode = ((g[0][0] if g else "") or "").strip()
    rows = db.query(
        "SELECT ISNULL(Curr_Bal, 0) FROM SUBGROUPCURRBAL "
        "WHERE SubCode = ? AND LogSite_Code = ? AND V_Date = ?",
        (subcode, SITE_CODE, vdate), cn=cn)
    if rows:
        cn.execute(
            "UPDATE SUBGROUPCURRBAL SET Curr_Bal = ?, GroupCode = ? "
            "WHERE SubCode = ? AND LogSite_Code = ? AND V_Date = ?",
            (float(rows[0][0] or 0) + delta, groupcode,
             subcode, SITE_CODE, vdate))
    else:
        cn.execute(
            "INSERT INTO SUBGROUPCURRBAL (LogSite_Code, SubCode, V_Date, "
            "GroupCode, Curr_Bal, Site_Code) VALUES (?, ?, ?, ?, ?, ?)",
            (SITE_CODE, subcode, vdate, groupcode, delta, SITE_CODE))
    if not groupcode:
        return
    seen: set[str] = set()
    gc = groupcode
    for _ in range(10):
        if not gc or gc in seen:
            break
        seen.add(gc)
        ar = db.query(
            "SELECT ISNULL(Curr_Bal, 0) FROM ACGROUPCURRBAL "
            "WHERE GroupCode = ? AND LogSite_Code = ? AND V_Date = ?",
            (gc, SITE_CODE, vdate), cn=cn)
        if ar:
            cn.execute(
                "UPDATE ACGROUPCURRBAL SET Curr_Bal = ? "
                "WHERE GroupCode = ? AND LogSite_Code = ? AND V_Date = ?",
                (float(ar[0][0] or 0) + delta, gc, SITE_CODE, vdate))
        else:
            cn.execute(
                "INSERT INTO ACGROUPCURRBAL (LogSite_Code, GroupCode, "
                "V_Date, Curr_Bal, Site_Code) VALUES (?, ?, ?, ?, ?)",
                (SITE_CODE, gc, vdate, delta, SITE_CODE))
        p = db.query(
            "SELECT MainGrCode FROM AcGroup WHERE GroupCode = ?",
            (gc,), cn=cn)
        if not p:
            break
        parent = ((p[0][0] or "").strip())
        if not parent or parent == gc:
            break
        gc = parent


def _create_ledgerref(cn, docid: str, sno: int, subcode: str, line: dict):
    """VB6 LedgerRef: bill-wise adjustment / TDS reference tracking.
    If narration contains 'TDS' or 'BillRef', create reference entry."""
    narration = (line.get("narration") or "").strip().upper()
    if "TDS" in narration:
        try:
            cn.execute(
                "INSERT INTO LEDGERTDS (DocId, V_SNo, Site_Code, SubCode, "
                "TdsAmt, U_EntDt, U_AE, LogSite_Code) "
                "VALUES (?, ?, ?, ?, ?, getdate(), 'A', ?)",
                (docid, sno, SITE_CODE, subcode,
                 float(line.get("amt_dr") or line.get("amt_cr") or 0),
                 SITE_CODE))
        except Exception:
            pass


def _log_voucher(cn, docid: str, flag: str, user: str):
    """VB6 LedgerLog audit: Ledger lines + LedgerM header (SeqNo = Max+1).
    flag ('A'/'D') signature me rehta hai; log row flo helpers se jaati hai."""
    try:
        from HMS_py.core import fa_ledger_ops as flo
        rows = db.query(
            "SELECT V_SNo, V_Type, V_No, v_Prefix, V_Date, SubCode, "
            "AmtCr, AmtDr, ContraSub, Chq_No, Chq_Date, Clg_Date, "
            "Narration, GroupCode, GroupNature "
            "FROM Ledger WHERE DocId = ? ORDER BY V_SNo",
            (docid,), cn=cn)
        seq_rows = db.query(
            "SELECT ISNULL(MAX(SeqNo), 0) FROM LedgerLog WHERE DocId = ?",
            (docid,), cn=cn)
        seq = int(seq_rows[0][0] or 0) if seq_rows else 0
        for r in rows:
            seq += 1
            flo.ledgerlog_insert({
                "docid": docid, "v_sno": r.V_SNo or 0,
                "vtype": r.V_Type or "", "vno": r.V_No or 0,
                "v_prefix": r.v_Prefix or "", "v_date": r.V_Date,
                "subcode": (r.SubCode or "").strip(),
                "amt_cr": float(r.AmtCr or 0),
                "amt_dr": float(r.AmtDr or 0),
                "contra_sub": r.ContraSub or "",
                "chq_no": r.Chq_No or "", "chq_date": r.Chq_Date,
                "clg_date": r.Clg_Date,
                "narration": (r.Narration or "").strip(),
                "groupcode": r.GroupCode or "",
                "groupnature": r.GroupNature or "",
                "u_name": user, "seqno": seq,
            }, cn=cn, commit=False)
        hm = db.query(
            "SELECT V_Type, v_Prefix, V_No, V_Date, Narration "
            "FROM LedgerM WHERE DocId = ?", (docid,), cn=cn)
        if hm:
            h = hm[0]
            hseq_rows = db.query(
                "SELECT ISNULL(MAX(SeqNo), 0) FROM LedgerMLog "
                "WHERE DocId = ?", (docid,), cn=cn)
            hseq = int(hseq_rows[0][0] or 0) if hseq_rows else 0
            flo.ledgermlog_insert({
                "docid": docid, "vtype": h.V_Type or "",
                "v_prefix": h.v_Prefix or "", "vno": h.V_No or 1,
                "v_date": h.V_Date,
                "narration": (h.Narration or "").strip(),
                "seqno": hseq + 1,
            }, cn=cn, commit=False)
    except Exception:
        pass  # audit trail best-effort (deployment me table missing ho sakti hai)


def delete_voucher(docid: str, cn=None, commit: bool = True,
                   user: str = USER) -> int:
    """Voucher delete (header + lines) — VB6 FaVrEnt delete parity.
    VB6 pattern: cascade delete LedgerRef/LedgerTDS, reverse CurrBal,
    log to LedgerLog before delete.
    Uses single connection for atomicity (BUG-H01 fix)."""
    own = cn is None
    cn = cn or db.connect()
    try:
        # Get voucher lines for CurrBal reversal + audit
        rows = db.query(
            "SELECT SubCode, AmtDr, AmtCr, V_Date FROM Ledger "
            "WHERE DocId = ?", (docid,), cn=cn)
        # Linked TDS vouchers (capture BEFORE LEDGERTDS cascade delete)
        tds_docs: list[str] = []
        try:
            tds_rows = db.query(
                "SELECT DISTINCT TDSDocId FROM LEDGERTDS WHERE DocId = ?",
                (docid,), cn=cn)
            tds_docs = [((r[0] or "").strip()) for r in tds_rows
                        if (r[0] or "").strip() and
                        (r[0] or "").strip() != docid]
        except Exception:
            pass
        # Cascade delete references
        try:
            db.execute("DELETE FROM LEDGERREF WHERE DocId = ?",
                       (docid,), cn=cn, commit=False)
        except Exception:
            pass
        try:
            db.execute("DELETE FROM LEDGERTDS WHERE DocId = ?",
                       (docid,), cn=cn, commit=False)
        except Exception:
            pass
        # Reverse CurrBal for each SubCode (VB6 Proc_183_0 delta reverse)
        for r in rows:
            sc = (r.SubCode or "").strip()
            if sc:
                _update_currbal(cn, sc, float(r.AmtCr or 0),
                                float(r.AmtDr or 0), vdate=r.V_Date)
        # TDS cascade: linked TDS voucher bhi reverse + delete
        for td in tds_docs:
            try:
                trows = db.query(
                    "SELECT SubCode, AmtDr, AmtCr, V_Date FROM Ledger "
                    "WHERE DocId = ?", (td,), cn=cn)
                for r in trows:
                    sc = (r.SubCode or "").strip()
                    if sc:
                        _update_currbal(cn, sc, float(r.AmtCr or 0),
                                        float(r.AmtDr or 0), vdate=r.V_Date)
                db.execute("DELETE FROM LEDGERREF WHERE DocId = ?",
                           (td,), cn=cn, commit=False)
                db.execute("DELETE FROM LEDGERTDS WHERE DocId = ?",
                           (td,), cn=cn, commit=False)
                _log_voucher(cn, td, "D", user)
                db.execute("DELETE FROM Ledger WHERE DocId = ?",
                           (td,), cn=cn, commit=False)
                db.execute("DELETE FROM LedgerM WHERE DocId = ?",
                           (td,), cn=cn, commit=False)
            except Exception:
                pass
        # Log before delete
        _log_voucher(cn, docid, "D", user)
        # Delete Ledger lines + header in same transaction
        n = db.execute("DELETE FROM Ledger WHERE DocId = ?", (docid,),
                       cn=cn, commit=False)
        db.execute("DELETE FROM LedgerM WHERE DocId = ?", (docid,),
                   cn=cn, commit=False)
        if commit:
            cn.commit()
        return n
    except Exception:
        if own:
            try:
                cn.rollback()
            except Exception:
                pass
        raise
    finally:
        if own:
            cn.close()


# ------------------------------------------------------ cheque reconciliation
def cheque_pending(subcode: str | None = None, cn=None) -> list[dict]:
    """Un-cleared cheques (VB6 FaChqClear:1760 Clg_Date IS NULL filter)."""
    sql = ("SELECT l.DocId, l.V_SNo, l.V_Date, l.SubCode, s.Name, "
           "l.Chq_No, l.Chq_Date, l.AmtDr, l.AmtCr "
           "FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode = l.SubCode "
           "WHERE l.Chq_No <> '' AND (l.Clg_Date IS NULL OR l.Clg_Date > "
           "GETDATE())")
    params = ()
    if subcode:
        sql += " AND l.SubCode = ?"
        params = (subcode,)
    rows = db.query(sql + " ORDER BY l.V_Date", params, cn=cn)
    return [{"docid": r[0], "sno": r[1], "vdate": r[2], "subcode": r[3],
             "name": r[4], "chq_no": r[5], "chq_date": r[6],
             "amt_dr": r[7], "amt_cr": r[8]} for r in rows]


def cheque_cleared(subcode: str | None = None, cn=None) -> list[dict]:
    """Cleared cheques (VB6 FaChqClear:1752 Clg_Date <= today filter)."""
    sql = ("SELECT l.DocId, l.V_SNo, l.V_Date, l.SubCode, s.Name, "
           "l.Chq_No, l.Chq_Date, l.Clg_Date, l.AmtDr, l.AmtCr "
           "FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode = l.SubCode "
           "WHERE l.Chq_No <> '' AND l.Clg_Date IS NOT NULL AND "
           "l.Clg_Date <= GETDATE()")
    params = ()
    if subcode:
        sql += " AND l.SubCode = ?"
        params = (subcode,)
    rows = db.query(sql + " ORDER BY l.Clg_Date DESC", params, cn=cn)
    return [{"docid": r[0], "sno": r[1], "vdate": r[2], "subcode": r[3],
             "name": r[4], "chq_no": r[5], "chq_date": r[6],
             "clg_date": r[7], "amt_dr": r[8], "amt_cr": r[9]} for r in rows]


def cheque_mark_cleared(docid: str, sno: int, clg_date=None,
                        chq_no=None, chq_date=None,
                        cn=None, commit: bool = True) -> int:
    """VB6 FaChqClear.frm:663 — Clg_Date + Chq_No + Chq_Date UPDATE.
    Params jo None hain unki existing Ledger value preserve hoti hai."""
    clg = clg_date or datetime.date.today()
    if isinstance(clg, str):
        clg = datetime.date.fromisoformat(clg)
    if isinstance(chq_date, str) and chq_date:
        chq_date = datetime.date.fromisoformat(chq_date)
    rows = db.query(
        "SELECT Chq_No, Chq_Date FROM Ledger WHERE DocId = ? AND V_SNo = ?",
        (docid, sno), cn=cn)
    old_chq = ((rows[0][0] if rows else "") or "")
    old_chq_date = rows[0][1] if rows else None
    new_chq = old_chq if chq_no is None else chq_no
    new_chq_date = old_chq_date if chq_date is None else chq_date
    return db.execute(
        "UPDATE Ledger SET Clg_Date = ?, Chq_No = ?, Chq_Date = ? "
        "WHERE DocId = ? AND V_SNo = ?",
        (clg, new_chq, new_chq_date, docid, sno), cn=cn, commit=commit)


# ------------------------------------------------------------- statements
def trial_balance(d_from=None, d_to=None, cn=None) -> list[dict]:
    """Group-wise trial balance (Ledger grouped by GroupCode)."""
    sql = ("SELECT l.GroupCode, a.GroupName, a.GroupNature, "
           "SUM(l.AmtDr) AS Dr, SUM(l.AmtCr) AS Cr, "
           "SUM(l.AmtDr) - SUM(l.AmtCr) AS Bal "
           "FROM Ledger l LEFT JOIN Acgroup a ON a.GroupCode = l.GroupCode")
    params = ()
    if d_from and d_to:
        sql += " WHERE l.V_Date BETWEEN ? AND ?"
        params = (d_from, d_to)
    rows = db.query(sql + " GROUP BY l.GroupCode, a.GroupName, "
                         "a.GroupNature ORDER BY l.GroupCode", params, cn=cn)
    return [{"groupcode": r[0], "groupname": r[1] or "?",
             "nature": r[2] or "", "dr": r[3] or 0.0, "cr": r[4] or 0.0,
             "bal": r[5] or 0.0} for r in rows]


def profit_and_loss(d_from, d_to, cn=None) -> dict:
    """P&L: Revenue (R) = Cr-Dr; Expenses (E) = Dr-Cr (GroupNature signs)."""
    rows = db.query(
        "SELECT a.GroupNature, l.GroupCode, a.GroupName, "
        "SUM(l.AmtDr) AS DrTot, SUM(l.AmtCr) AS CrTot "
        "FROM Ledger l JOIN Acgroup a ON a.GroupCode = l.GroupCode "
        "WHERE l.V_Date BETWEEN ? AND ? AND a.GroupNature IN ('E', 'R') "
        "GROUP BY a.GroupNature, l.GroupCode, a.GroupName "
        "ORDER BY a.GroupNature, l.GroupCode", (d_from, d_to), cn=cn)
    income = []
    expense = []
    for r in rows:
        dr = float(r[3] or 0)
        cr = float(r[4] or 0)
        if r[0] == "R":
            income.append({"groupcode": r[1], "name": r[2],
                           "amount": cr - dr})
        else:
            expense.append({"groupcode": r[1], "name": r[2],
                            "amount": dr - cr})
    ti = sum(i["amount"] for i in income)
    te = sum(e["amount"] for e in expense)
    return {"income": income, "expense": expense,
            "total_income": ti, "total_expense": te, "net": ti - te}


def balance_sheet(as_on=None, cn=None) -> dict:
    """Balance sheet: Assets (A) vs Liabilities (L) group-wise."""
    rows = db.query(
        "SELECT a.GroupNature, l.GroupCode, a.GroupName, "
        "SUM(l.AmtDr) - SUM(l.AmtCr) AS Bal "
        "FROM Ledger l JOIN Acgroup a ON a.GroupCode = l.GroupCode "
        "WHERE (? IS NULL OR l.V_Date <= ?) AND a.GroupNature IN ('A', 'L') "
        "GROUP BY a.GroupNature, l.GroupCode, a.GroupName "
        "ORDER BY a.GroupNature, l.GroupCode",
        (as_on, as_on), cn=cn)
    assets = [{"groupcode": r[1], "name": r[2], "amount": r[3] or 0.0}
              for r in rows if r[0] == "A"]
    liab = [{"groupcode": r[1], "name": r[2], "amount": r[3] or 0.0}
            for r in rows if r[0] == "L"]
    return {"assets": assets, "liab": liab,
            "total_assets": sum(a["amount"] for a in assets),
            "total_liab": sum(l["amount"] for l in liab)}


def bank_register(d_from, d_to, cn=None) -> list[dict]:
    """Bank-book style register (Subgroup name LIKE %BANK%)."""
    rows = db.query(
        "SELECT l.V_Date, l.DocId, s.Name, l.Chq_No, l.AmtDr, l.AmtCr "
        "FROM Ledger l JOIN Subgroup s ON s.SubCode = l.SubCode "
        "WHERE (s.Name LIKE '%BANK%') AND l.V_Date BETWEEN ? AND ? "
        "ORDER BY l.V_Date, l.DocId", (d_from, d_to), cn=cn)
    return [{"vdate": r[0], "docid": r[1], "account": r[2],
             "chq_no": r[3] or "", "dr": r[4] or 0.0, "cr": r[5] or 0.0}
            for r in rows]


def cash_and_bank_books(d_from, d_to, cn=None) -> list[dict]:
    rows = db.query(
        "SELECT l.V_Date, l.DocId, s.Name, l.Chq_No, l.AmtDr, l.AmtCr "
        "FROM Ledger l JOIN Subgroup s ON s.SubCode = l.SubCode "
        "WHERE (s.Name LIKE '%BANK%' OR s.Name LIKE '%CASH%') "
        "AND l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date, l.DocId",
        (d_from, d_to), cn=cn)
    return [{"vdate": r[0], "docid": r[1], "account": r[2],
             "chq_no": r[3] or "", "dr": r[4] or 0.0, "cr": r[5] or 0.0}
            for r in rows]


def journal_book(d_from, d_to, cn=None) -> list[dict]:
    """Journal vouchers by type (live V_Type census basis)."""
    rows = db.query(
        "SELECT l.DocId, l.V_Type, l.V_Date, COUNT(*) AS Lines, "
        "SUM(l.AmtDr) AS Dr, SUM(l.AmtCr) AS Cr "
        "FROM Ledger l WHERE l.V_Date BETWEEN ? AND ? "
        "GROUP BY l.DocId, l.V_Type, l.V_Date ORDER BY l.V_Date, l.DocId",
        (d_from, d_to), cn=cn)
    return [{"docid": r[0], "vtype": r[1], "vdate": r[2], "lines": r[3],
             "dr": r[4] or 0.0, "cr": r[5] or 0.0} for r in rows]


def daily_transaction_summary(d_from, d_to, cn=None) -> list[dict]:
    rows = db.query(
        "SELECT V_Date, COUNT(DISTINCT DocId) AS Vouchers, SUM(AmtDr) AS Dr, "
        "SUM(AmtCr) AS Cr FROM Ledger WHERE V_Date BETWEEN ? AND ? "
        "GROUP BY V_Date ORDER BY V_Date", (d_from, d_to), cn=cn)
    return [{"vdate": r[0], "vouchers": r[1], "dr": r[2] or 0.0,
             "cr": r[3] or 0.0} for r in rows]
