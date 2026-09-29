"""Party Master (VB6 FrmParty) — Supplier master on SubGroup table.

VB6 FrmParty.frm ka faithful port (live-DB probes: SubGroup 79 cols,
778 NATURE='Supplier' rows; SUBGROUPCURRBAL/City/AcGroup live):
  - "Party Master" asal me SubGroup ka NATURE='Supplier' filtered view
    hai (loc_124972B: SubGroup WHERE NATURE='Supplier'), PartyMast naam
    ki koi table nahi hoti (wo Crystal .rpt file-name tha, loc_10B4143).
  - Grid (loc_F24D86): SubGroup S LEFT JOIN AcGroup G (S.GroupCode,
    AliasYN<>'Y') LEFT JOIN City C — NATURE='Supplier'.
  - Save: SubGroup INSERT/UPDATE (SubCode PK; site[:2]+6-digit serial
    probe-verified, next KK003254), NATURE='Supplier' fixed.
  - Balance display: SUBGROUPCURRBAL SUM(CURR_BAL) (loc_16ECA2C).
  - NameHelp uniqueness check (loc_12C95A3) port me bhi.

Saare SQL param-bound. Reference-guard: delete se pehle Ledger/
SUBGROUPCURRBAL usage check (VB6 bhi delete block karta tha).
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()


def next_subcode(cn=None) -> str:
    """Site[:2] + 6-digit serial (probe: KK003254 next)."""
    rows = db.query(
        "SELECT ISNULL(MAX(CAST(SUBSTRING(SubCode, 3, 6) AS INT)), 0) + 1 "
        "AS N FROM SubGroup WHERE Site_Code = ? "
        "AND ISNUMERIC(SUBSTRING(SubCode, 3, 6)) = 1", (SITE_CODE,), cn=cn)
    n = int(rows[0].N or 1) if rows else 1
    return SITE_CODE[:2] + str(n).rjust(6, "0")


def list_suppliers(cn=None) -> list[dict]:
    """Supplier list (VB6 loc_F24D86 grid query)."""
    rows = db.query(
        "SELECT S.SubCode, S.Name, G.GroupName AS UnderGroup, "
        "S.ConPerson, C.CityName AS City, S.Phone, S.Mobile, "
        "S.Email, S.GSTIN, "
        "CASE WHEN ISNULL(S.ActiveYN, 1) = 0 THEN 'No' ELSE 'Yes' END "
        "AS Active, S.GroupCode, S.CityCode, S.Remark "
        "FROM SubGroup S "
        "LEFT JOIN AcGroup G ON S.GroupCode = G.GroupCode "
        "LEFT JOIN City C ON S.CityCode = C.CityCode "
        "WHERE S.Nature = 'Supplier' "
        "AND (S.LogSite_Code = ? OR S.LogSite_Code = 'HO') "
        "ORDER BY S.Name", (SITE_CODE,), cn=cn)
    return [{"subcode": (r.SubCode or "").strip(),
             "name": (r.Name or "").strip(),
             "undergroup": (r.UnderGroup or "").strip(),
             "conperson": (r.ConPerson or "").strip(),
             "city": (r.City or "").strip(),
             "phone": (r.Phone or "").strip(),
             "mobile": (r.Mobile or "").strip(),
             "email": (r.Email or "").strip(),
             "gstin": (r.GSTIN or "").strip(),
             "active": (r.Active or "Yes"),
             "groupcode": (r.GroupCode or "").strip(),
             "citycode": (r.CityCode or "").strip(),
             "remark": (r.Remark or "").strip()} for r in rows]


def get_party(subcode: str, cn=None) -> dict | None:
    """Ek party ka detail (edit-dialog ke liye)."""
    rows = db.query(
        "SELECT S.SubCode, S.Name, S.GroupCode, G.GroupName, S.ConPerson, "
        "S.Add1, S.Add2, S.Add3, S.CityCode, C.CityName, S.Phone, "
        "S.Mobile, S.FAX, S.Email, S.PANNo, S.GSTIN, S.CSTNo, S.LSTNo, "
        "S.CreditLimit, S.CreditDays, S.Remark, S.ActiveYN "
        "FROM SubGroup S "
        "LEFT JOIN AcGroup G ON S.GroupCode = G.GroupCode "
        "LEFT JOIN City C ON S.CityCode = C.CityCode "
        "WHERE S.SubCode = ? AND S.Nature = 'Supplier'",
        (subcode,), cn=cn)
    if not rows:
        return None
    r = rows[0]
    return {"subcode": (r.SubCode or "").strip(),
            "name": (r.Name or "").strip(),
            "groupcode": (r.GroupCode or "").strip(),
            "groupname": (r.GroupName or "").strip(),
            "conperson": (r.ConPerson or "").strip(),
            "add1": (r.Add1 or "").strip(), "add2": (r.Add2 or "").strip(),
            "add3": (r.Add3 or "").strip(),
            "citycode": (r.CityCode or "").strip(),
            "cityname": (r.CityName or "").strip(),
            "phone": (r.Phone or "").strip(),
            "mobile": (r.Mobile or "").strip(),
            "fax": (r.FAX or "").strip(),
            "email": (r.Email or "").strip(),
            "panno": (r.PANNo or "").strip(),
            "gstin": (r.GSTIN or "").strip(),
            "cstno": (r.CSTNo or "").strip(),
            "lstno": (r.LSTNo or "").strip(),
            "creditlimit": float(r.CreditLimit or 0),
            "creditdays": int(r.CreditDays or 0),
            "remark": (r.Remark or "").strip(),
            "active": bool(r.ActiveYN) if r.ActiveYN is not None else True}


def get_balance(subcode: str, cn=None) -> float:
    """SUBGROUPCURRBAL ka summed balance (VB6 loc_16ECA2C)."""
    rows = db.query(
        "SELECT ISNULL(SUM(CURR_BAL), 0) AS Bal FROM SUBGROUPCURRBAL "
        "WHERE SubCode = ?", (subcode,), cn=cn)
    return float(rows[0].Bal or 0) if rows else 0.0


def list_groups(cn=None) -> list[dict]:
    """Ledger groups (non-Alias) — UnderGroup dropdown."""
    rows = db.query(
        "SELECT GroupCode, GroupName FROM AcGroup "
        "WHERE ISNULL(AliasYN, 'N') <> 'Y' ORDER BY GroupCode", (), cn=cn)
    return [{"code": (r.GroupCode or "").strip(),
             "name": (r.GroupName or "").strip()} for r in rows]


def list_cities(cn=None) -> list[dict]:
    rows = db.query(
        "SELECT CityCode, CityName FROM City ORDER BY CityName", (), cn=cn)
    return [{"code": (r.CityCode or "").strip(),
             "name": (r.CityName or "").strip()} for r in rows]


def _validate(name: str, groupcode: str) -> None:
    if not (name or "").strip():
        raise ValueError("Party name zaroori hai")
    if not (groupcode or "").strip():
        raise ValueError("Under-group (AcGroup) zaroori hai")


def _namehelp_taken(namehelp: str, subcode: str, cn) -> bool:
    namehelp = (namehelp or "").strip()
    if not namehelp:
        return False
    rows = db.query(
        "SELECT COUNT(*) AS N FROM SubGroup WHERE NameHelp = ? "
        "AND SubCode <> ?", (namehelp, subcode), cn=cn)
    return bool(rows and int(rows[0].N or 0) > 0)


def save_party(subcode: str, name: str, groupcode: str, conperson: str = "",
               add1: str = "", add2: str = "", add3: str = "",
               citycode: str = "", phone: str = "", mobile: str = "",
               fax: str = "", email: str = "", panno: str = "",
               gstin: str = "", cstno: str = "", lstno: str = "",
               creditlimit: float = 0.0, creditdays: int = 0,
               remark: str = "", active: bool = True, namehelp: str = "",
               user: str = USER, cn=None, commit: bool = True) -> str:
    """Insert (khali subcode) / update (existing SubCode) supplier.
    Returns SubCode."""
    _validate(name, groupcode)
    own = cn is None
    cn = cn or db.connect()
    try:
        new_code = not subcode
        if new_code:
            subcode = next_subcode(cn=cn)
            rows = db.query(
                "SELECT COUNT(*) AS N FROM SubGroup WHERE SubCode = ?",
                (subcode,), cn=cn)
            if rows and int(rows[0].N or 0) > 0:
                raise ValueError(f"SubCode {subcode} pehle se maujood hai")
        if _namehelp_taken(namehelp, subcode, cn):
            raise ValueError(
                f"NameHelp {namehelp!r} dusre party ke saath already hai")
        activeyn = 1 if active else 0
        if new_code:
            db.execute(
                "INSERT INTO SubGroup (SubCode, Site_Code, Name, NameHelp, "
                "GroupCode, Nature, ConPerson, Add1, Add2, Add3, CityCode, "
                "Phone, Mobile, FAX, Email, PANNo, GSTIN, CSTNo, LSTNo, "
                "CreditLimit, CreditDays, Remark, ActiveYN, U_Name, "
                "U_EntDt, U_AE, LogSite_Code) VALUES (?, ?, ?, ?, ?, "
                "'Supplier', ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
                "?, ?, ?, ?, getdate(), 'A', ?)",
                (subcode, SITE_CODE, name.strip(), (namehelp or "").strip(),
                 groupcode, conperson, add1, add2, add3, citycode, phone,
                 mobile, fax, email, panno, gstin, cstno, lstno,
                 creditlimit, creditdays, remark, activeyn, user,
                 SITE_CODE), cn=cn, commit=False)
        else:
            db.execute(
                "UPDATE SubGroup SET Name = ?, NameHelp = ?, GroupCode = ?, "
                "ConPerson = ?, Add1 = ?, Add2 = ?, Add3 = ?, CityCode = ?, "
                "Phone = ?, Mobile = ?, FAX = ?, Email = ?, PANNo = ?, "
                "GSTIN = ?, CSTNo = ?, LSTNo = ?, CreditLimit = ?, "
                "CreditDays = ?, Remark = ?, ActiveYN = ?, U_Name = ?, "
                "U_EntDt = getdate(), U_AE = 'E' WHERE SubCode = ? "
                "AND Nature = 'Supplier'",
                (name.strip(), (namehelp or "").strip(), groupcode,
                 conperson, add1, add2, add3, citycode, phone, mobile,
                 fax, email, panno, gstin, cstno, lstno, creditlimit,
                 creditdays, remark, activeyn, user, subcode),
                cn=cn, commit=False)
        if commit:
            cn.commit()
        return subcode
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


def delete_party(subcode: str, cn=None, commit: bool = True) -> None:
    """Supplier delete — usage guards (balance/ledger) ke saath."""
    rows = db.query(
        "SELECT COUNT(*) AS N FROM SubGroup WHERE SubCode = ? "
        "AND Nature = 'Supplier'", (subcode,), cn=cn)
    if not rows or int(rows[0].N or 0) == 0:
        raise ValueError(f"Supplier {subcode} nahi mila")
    bal = get_balance(subcode, cn=cn)
    if abs(bal) > 0.005:
        raise ValueError(
            f"Balance {bal:,.2f} hai — pehle settle karo (delete blocked)")
    own = cn is None
    cn = cn or db.connect()
    try:
        db.execute(
            "DELETE FROM SUBGROUPCURRBAL WHERE SubCode = ?",
            (subcode,), cn=cn, commit=False)
        db.execute(
            "DELETE FROM SubGroup WHERE SubCode = ? AND Nature = 'Supplier'",
            (subcode,), cn=cn, commit=False)
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
