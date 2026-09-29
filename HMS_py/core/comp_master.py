"""Comp Master (VB6 CompMast.frm) — company ke complimentary plans.

3 tables (VB6 save = delete-then-reinsert per company, loc_168F014..):
  - RoomDiscount (Code, RoomCat, Adult, Discount, DiscType) — 1584 rows
  - Comp_PlanDet (CompanyCode, RoomCat, PlanCode, PlanAmt) — 8350 rows
  - Comp_Inclusive (CompanyCode, Inclusive) — 1 row
Company = SubGroup (code); room cats RoomMast se; plans PlanMast se.
VB6 grid me per-(RoomCat, Adult) discount aur per-(RoomCat, PlanCode)
amount save karta hai. Saare SQL param-bound.
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()


def list_companies(cn=None) -> list[dict]:
    """Comp-plan wali companies (jinka koi detail row hai)."""
    rows = db.query(
        "SELECT DISTINCT S.SubCode, S.Name FROM SubGroup S "
        "WHERE S.SubCode IN (SELECT CompanyCode FROM Comp_PlanDet "
        "UNION SELECT Code FROM RoomDiscount "
        "UNION SELECT CompanyCode FROM Comp_Inclusive) ORDER BY S.Name",
        (), cn=cn)
    return [{"code": (r.SubCode or "").strip(),
             "name": (r.Name or "").strip()} for r in rows]


def list_roomcats(cn=None) -> list[dict]:
    rows = db.query(
        "SELECT RTRIM(Code) AS Code, Name FROM RoomMast ORDER BY Code",
        (), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip()} for r in rows]


def list_plans(cn=None) -> list[dict]:
    """PlanMast lookup. NOTE: live cols Code/Name hain (PlanCode/PlanName
    nahi — probe 2026-09: 24 cols me Code, Name, Plan_Package, ActiveYN)."""
    rows = db.query(
        "SELECT RTRIM(Code) AS Code, Name FROM PlanMast ORDER BY Code",
        (), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip()} for r in rows]


def get_comp(code: str, cn=None) -> dict:
    """Company ka poora comp-pack (3 sections)."""
    code = (code or "").strip()
    rd = db.query(
        "SELECT RoomCat, Adult, Discount, DiscType FROM RoomDiscount "
        "WHERE Code = ? AND (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "ORDER BY RoomCat, Adult", (code, SITE_CODE), cn=cn)
    cp = db.query(
        "SELECT RoomCat, PlanCode, PlanAmt FROM Comp_PlanDet "
        "WHERE CompanyCode = ? AND (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "ORDER BY RoomCat, PlanCode", (code, SITE_CODE), cn=cn)
    ci = db.query(
        "SELECT Inclusive FROM Comp_Inclusive WHERE CompanyCode = ? "
        "AND (LogSite_Code = ? OR LogSite_Code = 'HO')",
        (code, SITE_CODE), cn=cn)
    return {"code": code,
            "discounts": [{"roomcat": (r.RoomCat or "").strip(),
                           "adult": int(r.Adult or 0),
                           "discount": float(r.Discount or 0),
                           "disctype": (r.DiscType or "").strip()}
                          for r in rd],
            "plans": [{"roomcat": (r.RoomCat or "").strip(),
                       "plancode": (r.PlanCode or "").strip(),
                       "planamt": float(r.PlanAmt or 0)}
                      for r in cp],
            "inclusives": [(r.Inclusive or "").strip() for r in ci]}


def save_comp(code: str, discounts, plans, inclusives,
              user: str = USER, cn=None, commit: bool = True) -> dict:
    """VB6 delete-then-reinsert save (3 sections transaction me)."""
    code = (code or "").strip()
    if not code:
        raise ValueError("Company code zaroori hai")
    rows = db.query("SELECT COUNT(*) AS N FROM SubGroup WHERE SubCode = ?",
                    (code,), cn=cn)
    if not rows or int(rows[0].N or 0) == 0:
        raise ValueError(f"Company {code} SubGroup me nahi mila")
    discounts = [d for d in (discounts or [])
                 if (d.get("roomcat") or "").strip()]
    plans = [p for p in (plans or []) if (p.get("roomcat") or "").strip()]
    for d in discounts:
        if float(d.get("discount") or 0) < 0 or float(d.get("discount") or 0) > 100:
            raise ValueError(
                f"Discount {d['roomcat']}/{d.get('adult')}: 0-100 range")
    own = cn is None
    cn = cn or db.connect()
    try:
        db.execute("DELETE FROM RoomDiscount WHERE Code = ?",
                   (code,), cn=cn, commit=False)
        db.execute("DELETE FROM Comp_PlanDet WHERE CompanyCode = ?",
                   (code,), cn=cn, commit=False)
        db.execute("DELETE FROM Comp_Inclusive WHERE CompanyCode = ?",
                   (code,), cn=cn, commit=False)
        for d in discounts:
            db.execute(
                "INSERT INTO RoomDiscount (Code, RoomCat, Adult, Discount, "
                "DiscType, Site_Code, U_EntDt, U_AE, LogSite_Code) "
                "VALUES (?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
                (code, d["roomcat"].strip(), int(d.get("adult") or 1),
                 float(d.get("discount") or 0),
                 (d.get("disctype") or "").strip(), SITE_CODE, SITE_CODE),
                cn=cn, commit=False)
        for p in plans:
            db.execute(
                "INSERT INTO Comp_PlanDet (CompanyCode, RoomCat, PlanCode, "
                "PlanAmt, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
                "VALUES (?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
                (code, p["roomcat"].strip(), (p.get("plancode") or "").strip(),
                 float(p.get("planamt") or 0), SITE_CODE, user, SITE_CODE),
                cn=cn, commit=False)
        for inc in (inclusives or []):
            inc = (inc or "").strip()
            if not inc:
                continue
            db.execute(
                "INSERT INTO Comp_Inclusive (CompanyCode, Inclusive, "
                "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
                "VALUES (?, ?, ?, ?, getdate(), 'A', ?)",
                (code, inc, SITE_CODE, user, SITE_CODE), cn=cn, commit=False)
        if commit:
            cn.commit()
        return {"discounts": len(discounts), "plans": len(plans),
                "inclusives": len([i for i in (inclusives or []) if i.strip()])}
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


def delete_comp(code: str, cn=None, commit: bool = True) -> None:
    """Company ka poora comp-pack delete (3 tables)."""
    own = cn is None
    cn = cn or db.connect()
    try:
        db.execute("DELETE FROM RoomDiscount WHERE Code = ?",
                   (code,), cn=cn, commit=False)
        db.execute("DELETE FROM Comp_PlanDet WHERE CompanyCode = ?",
                   (code,), cn=cn, commit=False)
        db.execute("DELETE FROM Comp_Inclusive WHERE CompanyCode = ?",
                   (code,), cn=cn, commit=False)
        if commit:
            cn.commit()
    finally:
        if own:
            cn.close()
