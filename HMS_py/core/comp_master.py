"""Comp Master (VB6 CompMast.frm) — company detail + complimentary plans.

Detail (MS-001..004 / MS-027): SubGroup ka Company Master view —
VB6 Txt(0..36) ke 43 business+audit columns (VB6 8 columns padhta tha
par save nahi karta tha — ab save hota hain), lookups (DGUnderAc,
DGCity, DgUser, DGAcName), VB6 save-validation messages, F_AO opening
balance display, SubGroup delete guard.

3 plan tables (VB6 save = delete-then-reinsert per company, loc_168F014..):
  - RoomDiscount (Code, RoomCat, Adult, Discount, DiscType) — 1584 rows
  - Comp_PlanDet (CompanyCode, RoomCat, PlanCode, PlanAmt) — 8350 rows
  - Comp_Inclusive (CompanyCode, Inclusive) — 1 row
Company = SubGroup (code); room cats RoomMast se; plans PlanMast se.
VB6 grid me per-(RoomCat, Adult) discount aur per-(RoomCat, PlanCode)
amount save karta hai. Saare SQL param-bound.
"""
from __future__ import annotations

import re

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()

# VB6 Txt_GotFocus list values (CompMast.frm loc: Txt(20)/Txt(19)/Txt(18)/Txt(28))
COMP_TYPES = ("Corporate", "Travel Agency", "Mesh")
DISCOUNT_TYPES = ("Fix Rate", "Discount %")
PREFIXES = ("Mr.", "Mrs.", "Miss", "M/S")

# VB6 control-section MaxLength (Txt(0..36)) — UI enforces these.
LIMITS = {
    "subcode": 8, "name": 75, "conprefix": 4, "conperson": 75,
    "add1": 50, "add2": 50, "add3": 50, "pin": 6, "phone": 20,
    "mobile": 12, "fax": 20, "email": 50, "cstno": 20, "lstno": 20,
    "panno": 20, "remark": 35, "companytype": 50, "reasonblacklist": 35,
    "blacklistedby": 20, "discounttype": 20, "webpassword": 20,
    "mapcode": 20, "gstin": 15, "legalname": 100, "tradename": 100,
}

# Form-key -> SubGroup column (VB6 fill Proc_22_91 / save Proc_22_92 map).
# VB6 in 8 columns ko padhta tha par kabhi save nahi karta (register MS-027);
# Python in 8 ko bhi likhta hai (VB6 ka data-loss gap).
FIELDS = {
    "name": "Name", "groupcode": "GroupCode", "conprefix": "ConPrefix",
    "conperson": "ConPerson", "add1": "Add1", "add2": "Add2", "add3": "Add3",
    "citycode": "CityCode", "pin": "PIN", "phone": "Phone",
    "mobile": "Mobile", "fax": "FAX", "email": "EMail", "cstno": "CSTNo",
    "lstno": "LSTNo", "panno": "PANNo", "remark": "Remark",
    "blacklisted": "BlackListed", "allowcredit": "AllowCredit",
    "companytype": "CompanyType", "creditdays": "CreditDays",
    "interest": "Interest", "creditlimit": "CreditLimit",
    "discount": "Discount", "commission": "Commission",
    "reasonblacklist": "ReasonBlackList", "blacklistedby": "BlackListedBy",
    "discounttype": "DiscountType", "webpassword": "WebPassword",
    "mapcode": "MapCode", "gstin": "GSTIN", "legalname": "LegalName",
    "tradename": "TradeName",
}
YN_FIELDS = ("blacklisted", "allowcredit")      # Yes/No <-> Y/N (VB6 Left(txt,1))
NUM_FIELDS = ("interest", "creditlimit", "discount", "commission")
INT_FIELDS = ("creditdays",)


def name_help(name: str) -> str:
    """VB6 Proc_183_20_FB3974: spaces hatao, sirf A-Za-z0-9, uppercase."""
    return re.sub(r"[^A-Za-z0-9]", "", (name or "")).upper()


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


# ─── Company Master detail (VB6 CompMast Txt(0..36) / MS-001..004,027) ───
def list_companies_full(cn=None) -> list[dict]:
    """VB6 CompMast grid query (CompMast.frm:2901) — browser/search list."""
    rows = db.query(
        "SELECT S.SubCode, S.Name, "
        "CASE ISNULL(S.ActiveYN, 1) WHEN 0 THEN 'No' ELSE 'Yes' END AS Active, "
        "G.GroupName AS UnderGroup, C.CityName, S.Phone, S.EMail, "
        "S.CompanyType "
        "FROM ((SubGroup S "
        "LEFT JOIN AcGroup G ON S.GroupCode = G.GroupCode) "
        "LEFT JOIN City C ON S.CityCode = C.CityCode) "
        "WHERE S.CompanyType IN (?, ?, ?) "
        "AND (S.LogSite_Code = ? OR S.LogSite_Code = 'HO') "
        "ORDER BY S.Name", (*COMP_TYPES, SITE_CODE), cn=cn)
    return [{"subcode": (r.SubCode or "").strip(),
             "name": (r.Name or "").strip(),
             "active": (r.Active or "Yes"),
             "undergroup": (r.UnderGroup or "").strip(),
             "city": (r.CityName or "").strip(),
             "phone": (r.Phone or "").strip(),
             "email": (r.EMail or "").strip(),
             "companytype": (r.CompanyType or "").strip()} for r in rows]


def group_info(groupcode: str, cn=None) -> dict | None:
    """AcGroup lookup (VB6 save builder: GroupNature/Nature derivation)."""
    rows = db.query(
        "SELECT GroupCode, GroupName, GroupNature, Nature, MainGrCode "
        "FROM AcGroup WHERE GroupCode = ?", (groupcode,), cn=cn)
    if not rows:
        return None
    r = rows[0]
    return {"code": (r.GroupCode or "").strip(),
            "name": (r.GroupName or "").strip(),
            "groupnature": (r.GroupNature or "").strip(),
            "nature": (r.Nature or "").strip() or "Other",
            "maingrcode": (r.MainGrCode or "").strip()}


def list_groups(cn=None) -> list[dict]:
    """DGUnderAc lookup: Select GroupCode As Code, GroupName From AcGroup."""
    rows = db.query("SELECT GroupCode, GroupName FROM AcGroup "
                    "ORDER BY GroupCode", (), cn=cn)
    return [{"code": (r.GroupCode or "").strip(),
             "name": (r.GroupName or "").strip()} for r in rows]


def list_cities(cn=None) -> list[dict]:
    """DGCity lookup: Select CityCode As Code, CityName From City."""
    rows = db.query("SELECT CityCode, CityName FROM City "
                    "ORDER BY CityName", (), cn=cn)
    return [{"code": (r.CityCode or "").strip(),
             "name": (r.CityName or "").strip()} for r in rows]


def list_users(cn=None) -> list[dict]:
    """DgUser lookup: Select Code, Name From Employee."""
    rows = db.query("SELECT Code, Name FROM Employee ORDER BY Name", (),
                    cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip()} for r in rows]


def list_acnames(cn=None) -> list[dict]:
    """DGAcName lookup: SubGroup NATURE='Customer' (VB6 Form_Load)."""
    rows = db.query(
        "SELECT SubCode, Name, NameHelp, GroupCode FROM SubGroup "
        "WHERE NATURE = 'Customer' ORDER BY Name", (), cn=cn)
    return [{"code": (r.SubCode or "").strip(),
             "name": (r.Name or "").strip(),
             "namehelp": (r.NameHelp or "").strip(),
             "groupcode": (r.GroupCode or "").strip()} for r in rows]


def get_opening_balance(subcode: str, cn=None) -> dict:
    """VB6 fill: F_AO Dr/Cr sums -> Txt(29) amount + LblOpBalType Dr/Cr."""
    rows = db.query(
        "SELECT ISNULL(SUM(AmtDr), 0) AS Dr, ISNULL(SUM(AmtCr), 0) AS Cr "
        "FROM Ledger WHERE V_Type = 'F_AO' AND SubCode = ?",
        (subcode,), cn=cn)
    dr = float(rows[0].Dr or 0) if rows else 0.0
    cr = float(rows[0].Cr or 0) if rows else 0.0
    typ = "Dr" if dr > cr else ("Cr" if cr > dr else "")
    return {"amount": abs(dr - cr), "type": typ, "dr": dr, "cr": cr}


def get_current_balance(subcode: str, cn=None) -> float:
    """SUBGROUPCURRBAL SUM (VB6 fill: HO = sab, warna site filter)."""
    if SITE_CODE == "HO":
        sql = ("SELECT ISNULL(SUM(Curr_Bal), 0) AS Bal "
               "FROM SUBGROUPCURRBAL WHERE SubCode = ?")
        params = (subcode,)
    else:
        sql = ("SELECT ISNULL(SUM(Curr_Bal), 0) AS Bal "
               "FROM SUBGROUPCURRBAL WHERE SubCode = ? "
               "AND LogSite_Code = ?")
        params = (subcode, SITE_CODE)
    rows = db.query(sql, params, cn=cn)
    return float(rows[0].Bal or 0) if rows else 0.0


def list_opening_lines(subcode: str, cn=None) -> list[dict]:
    """VB6 FGrid rows: F_AO vouchers (S.No/Ref.Date/Narration/Amount/CrDr/VNo)."""
    site_clause = "" if SITE_CODE == "HO" else "AND (L.LogSite_Code = ? OR L.LogSite_Code = 'HO')"
    params: tuple = (subcode,) if SITE_CODE == "HO" else (subcode, SITE_CODE)
    rows = db.query(
        "SELECT L.V_SNo, L.V_Date, L.Narration, L.AmtCr, L.AmtDr, "
        "L.V_No, L.DocId FROM Ledger L "
        "WHERE L.V_Type = 'F_AO' AND L.SubCode = ? " + site_clause +
        " ORDER BY L.V_SNo", params, cn=cn)
    out = []
    for r in rows:
        dr = float(r.AmtDr or 0)
        cr = float(r.AmtCr or 0)
        out.append({"sno": int(r.V_SNo or 0),
                    "date": r.V_Date,
                    "narration": (r.Narration or "").strip(),
                    "amount": abs(dr - cr),
                    "crdr": "Cr" if cr > dr else "Dr",
                    "vno": int(r.V_No or 0),
                    "docid": (r.DocId or "").strip()})
    return out


def audit_info(subcode: str, cn=None) -> dict:
    """VB6 fill labels: Created By / Modified By / User (U_Name/U_AE/U_EntDt)."""
    rows = db.query("SELECT U_Name, U_AE, U_EntDt FROM SubGroup "
                    "WHERE SubCode = ?", (subcode,), cn=cn)
    if not rows:
        return {"label": "", "name": "", "date": ""}
    r = rows[0]
    ae = (r.U_AE or "").strip().upper()
    return {"label": "Created By" if ae == "A" else "Modified By",
            "name": (r.U_Name or "").strip(),
            "date": str(r.U_EntDt or "")[:19]}


def get_company(subcode: str, cn=None) -> dict | None:
    """Ek company ka detail (VB6 fill Proc_22_91, Txt index -> form key)."""
    rows = db.query("SELECT * FROM SubGroup WHERE SubCode = ?",
                    (subcode,), cn=cn)
    if not rows:
        return None
    r = rows[0]

    def _s(col: str) -> str:
        return (getattr(r, col, None) or "").strip() if isinstance(
            getattr(r, col, None), str) else str(getattr(r, col, None) or "")

    rec: dict = {"subcode": _s("SubCode")}
    for key, col in FIELDS.items():
        rec[key] = _s(col)
    # Y/N <-> Yes/No (VB6 Txt(18)/(19): Y -> "Yes")
    for key in YN_FIELDS:
        rec[key] = "Yes" if rec[key].upper().startswith("Y") else (
            "No" if rec[key] else "")
    rec["active"] = "No" if getattr(r, "ActiveYN", 1) == 0 else "Yes"
    for key in NUM_FIELDS:
        try:
            rec[key] = float(rec[key] or 0)
        except ValueError:
            rec[key] = 0.0
    for key in INT_FIELDS:
        try:
            rec[key] = int(float(rec[key] or 0))
        except ValueError:
            rec[key] = 0
    rec["groupname"] = ""
    rec["groupnature"] = ""
    g = group_info(rec["groupcode"], cn=cn)
    if g:
        rec["groupname"] = g["name"]
        rec["groupnature"] = g["groupnature"]
    rec["cityname"] = ""
    if rec["citycode"]:
        crows = db.query("SELECT CityName FROM City WHERE CityCode = ?",
                         (rec["citycode"],), cn=cn)
        if crows:
            rec["cityname"] = (crows[0].CityName or "").strip()
    rec["blacklistedbyname"] = ""
    if rec["blacklistedby"]:
        urows = db.query("SELECT Name FROM Employee WHERE Code = ?",
                         (rec["blacklistedby"],), cn=cn)
        if urows:
            rec["blacklistedbyname"] = (urows[0].Name or "").strip()
    op = get_opening_balance(subcode, cn=cn)
    rec["opening"] = op
    rec["current"] = get_current_balance(subcode, cn=cn)
    rec["current_type"] = ("Cr" if rec["current"] < 0 else
                           ("Dr" if rec["current"] > 0 else ""))
    rec["audit"] = audit_info(subcode, cn=cn)
    rec["orig_name"] = rec["name"]
    return rec


def next_subcode(cn=None) -> str:
    """VB6 Add: Max(SubCode[3:6])+1 + site[:2] prefix (Proc_183_15)."""
    rows = db.query(
        "SELECT ISNULL(MAX(CAST(SUBSTRING(SubCode, 3, 6) AS INT)), 0) + 1 "
        "AS N FROM SubGroup WHERE ISNUMERIC(SUBSTRING(SubCode, 3, 6)) = 1",
        (), cn=cn)
    n = int(rows[0].N or 1) if rows else 1
    return SITE_CODE[:2] + str(n).rjust(6, "0")


def namehelp_taken(name: str, orig_name: str = "", cn=None) -> bool:
    """VB6 save: duplicate NameHelp check (Edit me apna naam chhod ke)."""
    nh = name_help(name)
    if not nh:
        return False
    if orig_name:
        rows = db.query(
            "SELECT COUNT(*) AS N FROM SubGroup WHERE NameHelp = ? "
            "AND Name <> ?", (nh, orig_name), cn=cn)
    else:
        rows = db.query("SELECT COUNT(*) AS N FROM SubGroup "
                        "WHERE NameHelp = ?", (nh,), cn=cn)
    return bool(rows and int(rows[0].N or 0) > 0)


def validate_company(rec: dict) -> dict:
    """VB6 TopCtrl1_UnknownEvent_16 (CompMast.frm:3021) save-validation port.

    required (A/C Name, Under Group, Company Type, Active) -> e-mail format
    + LCase -> GSTIN 15-digit -> numeric coercion. Normalized copy return.
    Raises ValueError with VB6 message text.
    """
    norm = dict(rec)

    def _req(key: str, label: str) -> str:
        val = str(rec.get(key) or "").strip()
        if not val:
            raise ValueError(f"{label} is a required field.")
        return val

    norm["name"] = _req("name", "A/C Name")
    norm["groupcode"] = str(rec.get("groupcode") or "").strip()
    if not norm["groupcode"]:
        # name se resolve karne ki koshish (lookup bhi wahi dikhata hai)
        gtxt = str(rec.get("groupname") or rec.get("group") or "").strip()
        if gtxt:
            for g in list_groups():
                if g["name"].lower() == gtxt.lower():
                    norm["groupcode"] = g["code"]
                    break
        if not norm["groupcode"]:
            raise ValueError("Under Group is a required field.")
    norm["companytype"] = _req("companytype", "Company Type")
    if norm["companytype"] not in COMP_TYPES:
        raise ValueError(
            f"Company Type must be one of: {', '.join(COMP_TYPES)}")
    active = str(rec.get("active") or "").strip()
    if active not in ("Yes", "No"):
        raise ValueError("Active is a required field.")
    norm["active"] = active

    email = str(rec.get("email") or "").strip()
    if email:
        if "@" not in email or "." not in email:
            raise ValueError("Please fill a Valid EMail Id.")
        norm["email"] = email.lower()          # VB6 LCase(txt)
    else:
        norm["email"] = ""
    gstin = str(rec.get("gstin") or "").replace(" ", "").strip()
    if gstin and len(gstin) != 15:
        raise ValueError("Please fill a Valid GSTIN of 15 DIGIT")
    norm["gstin"] = gstin

    for key in NUM_FIELDS:
        try:
            norm[key] = round(float(rec.get(key) or 0), 2)
        except (TypeError, ValueError):
            raise ValueError(f"{key} numeric hona chahiye")
        if norm[key] < 0:
            raise ValueError(f"{key} negative nahi ho sakta")
    for key in INT_FIELDS:
        try:
            norm[key] = int(float(rec.get(key) or 0))
        except (TypeError, ValueError):
            raise ValueError(f"{key} integer hona chahiye")
        if norm[key] < 0:
            raise ValueError(f"{key} negative nahi ho sakta")
    for key in YN_FIELDS:
        val = str(rec.get(key) or "").strip()
        norm[key] = ("Yes" if val.upper().startswith("Y") else
                     ("No" if val.upper().startswith("N") else val))
        if norm[key] not in ("Yes", "No"):
            norm[key] = ""
    for key in FIELDS:
        if key in norm and isinstance(norm[key], str):
            norm[key] = norm[key].strip()
            lim = LIMITS.get(key)
            if lim and len(norm[key]) > lim:
                raise ValueError(
                    f"{key}: max {lim} characters (VB6 MaxLength)")
    norm["namehelp"] = name_help(norm["name"])
    return norm


def save_company(rec: dict, user: str = USER, cn=None,
                 commit: bool = True) -> str:
    """Insert (khali subcode) / update — VB6 Proc_22_92 + Proc_22_93/94 port.

    rec ke FIELDS keys + subcode/active/orig_name. Audit (U_Name/U_EntDt/
    U_AE) VB6 ki tarah. Returns SubCode.
    """
    own = cn is None
    cn = cn or db.connect()
    try:
        subcode = str(rec.get("subcode") or "").strip()
        new = not subcode
        norm = validate_company(rec)
        orig_name = str(rec.get("orig_name") or "").strip()
        if namehelp_taken(norm["name"], orig_name if not new else "",
                          cn=cn):
            raise ValueError("Duplicate A/c Name not Allowed")
        g = group_info(norm["groupcode"], cn=cn)
        if not g:
            raise ValueError("Group Not Defined")

        data: dict = {"Name": norm["name"], "NameHelp": norm["namehelp"],
                      "GroupCode": norm["groupcode"],
                      "GroupNature": g["groupnature"], "Nature": g["nature"]}
        yn_db = {"Yes": "Y", "No": "N", "": ""}
        for key, col in FIELDS.items():
            if key in ("name", "groupcode"):
                continue
            val = norm.get(key, "")
            if key in YN_FIELDS:
                val = yn_db.get(val, val)
            data[col] = val
        data["ActiveYN"] = 1 if norm["active"] == "Yes" else 0

        if new:
            subcode = next_subcode(cn=cn)
            rows = db.query(
                "SELECT COUNT(*) AS N FROM SubGroup WHERE SubCode = ?",
                (subcode,), cn=cn)
            if rows and int(rows[0].N or 0) > 0:
                raise ValueError(f"SubCode {subcode} pehle se maujood hai")
            cols = ["Site_Code", "SubCode", "LogSite_Code", "U_Name",
                    "U_AE"] + list(data) + ["U_EntDt"]
            vals = [SITE_CODE, subcode, SITE_CODE, user, "A"]
            vals += [data[c] for c in data]
            ph = ", ".join(["?"] * len(vals) + ["getdate()"])
            db.execute(
                f"INSERT INTO SubGroup ({', '.join(cols)}) VALUES ({ph})",
                tuple(vals), cn=cn, commit=False)
        else:
            rows = db.query(
                "SELECT COUNT(*) AS N FROM SubGroup WHERE SubCode = ?",
                (subcode,), cn=cn)
            if not rows or int(rows[0].N or 0) == 0:
                raise ValueError(f"Company {subcode} nahi mila")
            sets = [f"{c} = ?" for c in data] + [
                "U_Name = ?", "U_AE = 'E'", "U_EntDt = getdate()"]
            params = [data[c] for c in data] + [user, subcode]
            db.execute(
                f"UPDATE SubGroup SET {', '.join(sets)} WHERE SubCode = ?",
                tuple(params), cn=cn, commit=False)
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


def delete_company(subcode: str, cn=None, commit: bool = True) -> None:
    """VB6 Proc_22_95: Ledger (F_AO chhod ke) guard + 4-table delete."""
    subcode = (subcode or "").strip()
    own = cn is None
    cn = cn or db.connect()
    try:
        rows = db.query("SELECT COUNT(*) AS N FROM SubGroup "
                        "WHERE SubCode = ?", (subcode,), cn=cn)
        if not rows or int(rows[0].N or 0) == 0:
            raise ValueError("There Is No Record To Delete")
        rows = db.query(
            "SELECT COUNT(*) AS N FROM Ledger WHERE SubCode = ? "
            "AND V_Type <> 'F_AO'", (subcode,), cn=cn)
        if rows and int(rows[0].N or 0) > 0:
            raise ValueError("Transactions Exist Can't Delete it")
        db.execute("DELETE FROM Comp_Inclusive WHERE CompanyCode = ?",
                   (subcode,), cn=cn, commit=False)
        db.execute("DELETE FROM Comp_PlanDet WHERE CompanyCode = ?",
                   (subcode,), cn=cn, commit=False)
        db.execute("DELETE FROM RoomDiscount WHERE Code = ?",
                   (subcode,), cn=cn, commit=False)
        db.execute("DELETE FROM SubGroup WHERE SubCode = ?",
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
