"""DepartPay — per-outlet allowed paycodes (VB6 FrmPayTypeMast /
FdReSettlement add-on, Tier-1 #4).

Live schema (probe 2026-09, 75 rows):
  DepartPay(RestCode, PayCode, Site_Code, U_Name, U_EntDt, U_AE,
  LogSite_Code) — PK implicit (RestCode, PayCode); NOT NULL RestCode,
  PayCode. RestCodes live: BANQ, KKE001, KKFOM, KKG001, KKH003,
  KKL001, KKM001, KKM009, KKRS.

VB6 evidence:
  - FdReSetlement.frm loc_14633E7 (Check Out parent): paycode combo =
    DepartPay JOIN RevMast WHERE DP.LOGSITE_CODE=? AND restcode='<site>Fom'
  - fdPaymentCharge.frm loc_142A18D: same JOIN for charge posting
  - FrmPayTypeMast.frm loc_1214E63: grid = Depart LEFT JOIN DepartPay
    per paycode (Value flag 0/1), save = DELETE + INSERT (loc_105CB06/CC94)
  - FrmPayTypeMast.frm loc_105CC94: BANQ row auto-insert per paycode

Saare SQL param-bound (VB6 ka string-concat nahi).
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()

FOM_RESTCODE_SUFFIX = "Fom"      # VB6: restcode='<site>Fom' (case-insensitive)
BANQ_RESTCODE = "BANQ"           # VB6 loc_105CC94: banquet auto-row


def list_departments(cn=None) -> list[dict]:
    """Depart table (outlets/departments) — VB6 grid left side."""
    rows = db.query(
        "SELECT RTRIM(Code) AS Code, Name FROM Depart ORDER BY Code",
        (), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip()} for r in rows]


def allowed_paycodes(restcode: str, cn=None) -> list[dict]:
    """Outlet ke allowed paycodes (VB6 FdReSetlement/fdPaymentCharge
    JOIN pattern: DP + RevMast, name/paytype/sale-rate ke saath)."""
    restcode = (restcode or "").strip()
    rows = db.query(
        "SELECT DP.PayCode AS Code, RM.Name AS Name, RM.Type AS Flag, "
        "RM.PayType AS Paytype, RM.SaleRate AS SaleRate, RM.Cost AS Cost "
        "FROM DepartPay AS DP LEFT OUTER JOIN RevMast AS RM "
        "ON DP.PayCode = RM.Code "
        "WHERE DP.LogSite_Code = ? AND DP.RestCode = ? ORDER BY RM.Name",
        (SITE_CODE, restcode), cn=cn)
    return [{"paycode": (r.Code or "").strip(),
             "name": (r.Name or "").strip(),
             "flag": (r.Flag or "").strip(),
             "paytype": (r.Paytype or "").strip(),
             "salerate": float(r.SaleRate or 0),
             "cost": float(r.Cost or 0)} for r in rows]


def fom_allowed_paycodes(cn=None) -> list[dict]:
    """Front-office (Check Out / re-settlement) paycode list —
    VB6 FdReSetlement loc_14633E7: restcode='<site>Fom'."""
    return allowed_paycodes(SITE_CODE + FOM_RESTCODE_SUFFIX, cn=cn)


def outlet_grid_for_paycode(paycode: str, cn=None) -> list[dict]:
    """FrmPayTypeMast loc_1214E63 grid: saare departments + Value flag
    (1 = ye paycode us outlet me allowed)."""
    paycode = (paycode or "").strip()
    rows = db.query(
        "SELECT D.Name AS Name, D.Code AS Code, "
        "CASE WHEN ISNULL(DP.PayCode, '') <> '' THEN 1 ELSE 0 END AS Value "
        "FROM Depart AS D LEFT JOIN (SELECT RestCode, PayCode, LogSite_Code "
        "FROM DepartPay WHERE PayCode = ? AND LogSite_Code = ?) AS DP "
        "ON D.Code = DP.RestCode "
        "ORDER BY D.Code",
        (paycode, SITE_CODE), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip(),
             "allowed": int(r.Value or 0)} for r in rows]


def _delete_for_paycode(cn, paycode: str, banq_too: bool = True) -> None:
    """FrmPayTypeMast save ke pehle ka DELETE (loc_105CB06) + BANQ row."""
    db.execute(
        "DELETE FROM DepartPay WHERE PayCode = ? AND LogSite_Code = ?",
        (paycode, SITE_CODE), cn=cn, commit=False)
    if banq_too:
        db.execute("DELETE FROM DepartPay WHERE PayCode = ? AND RestCode = ?",
                   (paycode, BANQ_RESTCODE), cn=cn, commit=False)


def _insert_row(cn, restcode: str, paycode: str, user: str) -> None:
    db.execute(
        "INSERT INTO DepartPay (RestCode, PayCode, Site_Code, U_Name, "
        "U_EntDt, U_AE, LogSite_Code) VALUES (?, ?, ?, ?, getdate(), 'A', ?)",
        (restcode, paycode, SITE_CODE, user, SITE_CODE), cn=cn, commit=False)


def set_for_paycode(paycode: str, restcodes, user: str = USER,
                    cn=None, commit: bool = True) -> int:
    """FrmPayTypeMast save (delete-then-reinsert): paycode ke saare
    DepartPay rows replace karke di gayi outlet-list insert karo.
    BANQ auto-row VB6 loc_105CC94 jaisi (paycode ka BANQ row hamesha)."""
    paycode = (paycode or "").strip()
    if not paycode:
        raise ValueError("PayCode zaroori hai")
    rows = db.query(
        "SELECT COUNT(*) AS N FROM RevMast WHERE Code = ?", (paycode,), cn=cn)
    if not rows or int(rows[0].N or 0) == 0:
        raise ValueError(f"PayCode {paycode} RevMast me nahi mila")
    restcodes = {(r or "").strip().upper() for r in (restcodes or [])
                 if (r or "").strip()}
    own = cn is None
    cn = cn or db.connect()
    try:
        # existing rows padhna zaroori nahi — VB6 bhi full delete+reinsert
        # karta hai; case SQL Server me CI hai.
        _delete_for_paycode(cn, paycode)
        for rc in sorted(restcodes):
            _insert_row(cn, rc, paycode, user)
        # BANQ auto-row (VB6 loc_105CC94) — selected na ho to bhi
        if BANQ_RESTCODE not in restcodes:
            _insert_row(cn, BANQ_RESTCODE, paycode, user)
        if commit:
            cn.commit()
        return len(restcodes) + (0 if BANQ_RESTCODE in restcodes else 1)
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


def set_allowed(restcode: str, paycode: str, allowed: bool,
                user: str = USER, cn=None, commit: bool = True) -> None:
    """Ek (outlet, paycode) pair toggle — upsert/remove single row."""
    restcode = (restcode or "").strip().upper()
    paycode = (paycode or "").strip()
    if not restcode or not paycode:
        raise ValueError("RestCode aur PayCode zaroori hain")
    rows = db.query(
        "SELECT COUNT(*) AS N FROM RevMast WHERE Code = ?", (paycode,), cn=cn)
    if not rows or int(rows[0].N or 0) == 0:
        raise ValueError(f"PayCode {paycode} RevMast me nahi mila")
    own = cn is None
    cn = cn or db.connect()
    try:
        db.execute(
            "DELETE FROM DepartPay WHERE RestCode = ? AND PayCode = ? "
            "AND LogSite_Code = ?",
            (restcode, paycode, SITE_CODE), cn=cn, commit=False)
        if allowed:
            _insert_row(cn, restcode, paycode, user)
        if commit:
            cn.commit()
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


def delete_for_paycode(paycode: str, cn=None, commit: bool = True) -> None:
    """Paycode ke saare DepartPay rows delete (FrmPayTypeMast delete)."""
    paycode = (paycode or "").strip()
    if not paycode:
        raise ValueError("PayCode zaroori hai")
    own = cn is None
    cn = cn or db.connect()
    try:
        _delete_for_paycode(cn, paycode)
        if commit:
            cn.commit()
    finally:
        if own:
            cn.close()
