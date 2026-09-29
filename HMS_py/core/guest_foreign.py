"""Guest Foreigner details (VB6 GuestProfile.frm Foreigner tab) —
GuestProfFor table ka port (Form-C compliance data).

VB6 evidence (GuestProfile.frm):
  - Load (loc_171A3B1): GuestProf GF LEFT JOIN GuestProfFor GPF ON
    GF.Code=GPF.Code (per-guest multi-stay rows, Sno-ordered).
  - Save (loc_1C38424): 36-col INSERT — Code,Sno,SerialNo,Nationality,
    Name,Add1,Add2,Occu,ArrFrom,Dest,PurVisit,ModeTravel,DateArr,
    ArrPlace,AddIndia,PassNo,IssDate,IssPlace,Age,PropStay,
    ModeTravelUsed,VisaType,VisaNo,VisaIssDate,VisaIssPlace,ExpDate,
    WorkPermit,PassExpDate,VisaIssAuth,Extension,VisaDuration + audit.
    SerialNo = Form-C serial (Voucher_Prefix V_Type='CFORM' se
    Start_Srl_No, loc_1C38859; update bhi VB6 karta hai).
  - Delete+resave (loc_1331D0F): Code ke saare rows delete phir insert.

Live DB: GuestProfFor 30 rows, PK (Code, Sno); Country lookup table live.
Saare SQL param-bound.
"""
from __future__ import annotations

import datetime

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()

FOR_COLS = (
    "Code", "Sno", "SerialNo", "Nationality", "Name", "Add1", "Add2",
    "Occu", "ArrFrom", "Dest", "PurVisit", "ModeTravel", "DateArr",
    "ArrPlace", "AddIndia", "PassNo", "IssDate", "IssPlace", "Age",
    "PropStay", "ModeTravelUsed", "VisaType", "VisaNo", "VisaIssDate",
    "VisaIssPlace", "ExpDate", "WorkPermit", "PassExpDate",
    "VisaIssAuth", "Extension", "VisaDuration",
)


def list_countries(cn=None) -> list[dict]:
    rows = db.query(
        "SELECT RTRIM(Code) AS Code, Name FROM Country ORDER BY Name",
        (), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip()} for r in rows]


def list_foreign_stays(code: str, cn=None) -> list[dict]:
    """Ek guest profile ki saari foreign-stay rows (Sno-ordered)."""
    rows = db.query(
        "SELECT Sno, SerialNo, Nationality, Name, Add1, Add2, Occu, "
        "ArrFrom, Dest, PurVisit, ModeTravel, DateArr, ArrPlace, "
        "AddIndia, PassNo, IssDate, IssPlace, Age, PropStay, "
        "ModeTravelUsed, VisaType, VisaNo, VisaIssDate, VisaIssPlace, "
        "ExpDate, WorkPermit, PassExpDate, VisaIssAuth, Extension, "
        "VisaDuration, U_Name, U_AE, U_EntDt "
        "FROM GuestProfFor WHERE Code = ? ORDER BY Sno", (code,), cn=cn)
    return [{"sno": int(r.Sno or 0),
             "serialno": int(r.SerialNo or 0),
             "nationality": (r.Nationality or "").strip(),
             "name": (r.Name or "").strip(),
             "add1": (r.Add1 or "").strip(),
             "add2": (r.Add2 or "").strip(),
             "occu": (r.Occu or "").strip(),
             "arrfrom": (r.ArrFrom or "").strip(),
             "dest": (r.Dest or "").strip(),
             "purvisit": (r.PurVisit or "").strip(),
             "modetravel": (r.ModeTravel or "").strip(),
             "datearr": str(r.DateArr)[:10] if r.DateArr else "",
             "arrplace": (r.ArrPlace or "").strip(),
             "addindia": (r.AddIndia or "").strip(),
             "passno": (r.PassNo or "").strip(),
             "issdate": str(r.IssDate)[:10] if r.IssDate else "",
             "issplace": (r.IssPlace or "").strip(),
             "age": int(r.Age or 0),
             "propstay": (r.PropStay or "").strip(),
             "modetravelused": (r.ModeTravelUsed or "").strip(),
             "visatype": (r.VisaType or "").strip(),
             "visano": (r.VisaNo or "").strip(),
             "visaisdate": str(r.VisaIssDate)[:10] if r.VisaIssDate else "",
             "visaisplace": (r.VisaIssPlace or "").strip(),
             "expdate": str(r.ExpDate)[:10] if r.ExpDate else "",
             "workpermit": (r.WorkPermit or "").strip(),
             "passexpdate": str(r.PassExpDate)[:10] if r.PassExpDate else "",
             "visaisauth": (r.VisaIssAuth or "").strip(),
             "extension": (r.Extension or "").strip(),
             "visaduration": (r.VisaDuration or "").strip(),
             "u_name": (r.U_Name or "").strip(),
             "u_ae": (r.U_AE or "").strip()} for r in rows]


def next_serial(cn=None) -> int:
    """Form-C serial (VB6 loc_1C38859: Voucher_Prefix V_Type='CFORM'
    Start_Srl_No, latest Date_From window)."""
    rows = db.query(
        "SELECT TOP 1 ISNULL(Start_Srl_No, 0) AS N FROM Voucher_Prefix "
        "WHERE V_Type = 'CFORM' AND Site_Code = ? "
        "ORDER BY Date_From DESC", (SITE_CODE,), cn=cn)
    if rows and rows[0].N:
        return int(rows[0].N) + 1
    rows = db.query("SELECT ISNULL(MAX(SerialNo), 0) + 1 AS N "
                    "FROM GuestProfFor", (), cn=cn)
    return int(rows[0].N or 1) if rows else 1


def save_stay(code: str, sno: int, rec: dict, user: str = USER,
              cn=None, commit: bool = True) -> dict:
    """Ek foreign-stay row insert/update (VB6 36-col pattern).

    rec me FOR_COLS ke fields (sno/serialno ke alawa). sno None/0 ho
    to MAX(Sno)+1. serialno na do to existing preserve (update) ya
    CFORM se next (insert). Return: dict(sno, serialno)."""
    code = (code or "").strip()
    if not code:
        raise ValueError("Guest profile Code zaroori hai")
    rows = db.query(
        "SELECT COUNT(*) AS N FROM GuestProf WHERE Code = ?", (code,), cn=cn)
    if not rows or int(rows[0].N or 0) == 0:
        raise ValueError(f"Guest profile {code} nahi mila")
    own = cn is None
    cn = cn or db.connect()
    try:
        if not sno or int(sno) <= 0:
            mx = db.query(
                "SELECT ISNULL(MAX(Sno), 0) AS N FROM GuestProfFor "
                "WHERE Code = ?", (code,), cn=cn)
            sno = int(mx[0].N or 0) + 1
        sno = int(sno)
        existing = db.query(
            "SELECT COUNT(*) AS N FROM GuestProfFor WHERE Code = ? "
            "AND Sno = ?", (code, sno), cn=cn)
        exists = bool(existing and int(existing[0].N or 0) > 0)
        serialno = int(rec.get("serialno") or 0)
        if not serialno and exists:
            cur = db.query(
                "SELECT ISNULL(SerialNo, 0) AS S FROM GuestProfFor "
                "WHERE Code = ? AND Sno = ?", (code, sno), cn=cn)
            serialno = int(cur[0].S or 0) if cur else 0
        if not exists and not serialno:
            serialno = next_serial(cn=cn)
        params = [
            code, sno, serialno,
            (rec.get("nationality") or "").strip(),
            (rec.get("name") or "").strip(),
            (rec.get("add1") or "").strip(),
            (rec.get("add2") or "").strip(),
            (rec.get("occu") or "").strip(),
            (rec.get("arrfrom") or "").strip(),
            (rec.get("dest") or "").strip(),
            (rec.get("purvisit") or "").strip(),
            (rec.get("modetravel") or "").strip(),
            rec.get("datearr") or None,
            (rec.get("arrplace") or "").strip(),
            (rec.get("addindia") or "").strip(),
            (rec.get("passno") or "").strip(),
            rec.get("issdate") or None,
            (rec.get("issplace") or "").strip(),
            int(rec.get("age") or 0),
            (rec.get("propstay") or "").strip(),
            (rec.get("modetravelused") or "").strip(),
            (rec.get("visatype") or "").strip(),
            (rec.get("visano") or "").strip(),
            rec.get("visaisdate") or None,
            (rec.get("visaisplace") or "").strip(),
            rec.get("expdate") or None,
            (rec.get("workpermit") or "").strip(),
            rec.get("passexpdate") or None,
            (rec.get("visaisauth") or "").strip(),
            (rec.get("extension") or "").strip(),
            (rec.get("visaduration") or "").strip(),
            SITE_CODE, user, SITE_CODE,
        ]
        if exists:
            db.execute(
                "UPDATE GuestProfFor SET SerialNo = ?, Nationality = ?, "
                "Name = ?, Add1 = ?, Add2 = ?, Occu = ?, ArrFrom = ?, "
                "Dest = ?, PurVisit = ?, ModeTravel = ?, DateArr = ?, "
                "ArrPlace = ?, AddIndia = ?, PassNo = ?, IssDate = ?, "
                "IssPlace = ?, Age = ?, PropStay = ?, ModeTravelUsed = ?, "
                "VisaType = ?, VisaNo = ?, VisaIssDate = ?, VisaIssPlace = ?, "
                "ExpDate = ?, WorkPermit = ?, PassExpDate = ?, "
                "VisaIssAuth = ?, Extension = ?, VisaDuration = ?, "
                "Site_Code = ?, U_Name = ?, U_EntDt = getdate(), "
                "U_AE = 'E', LogSite_Code = ? WHERE Code = ? AND Sno = ?",
                (*params[2:], SITE_CODE, user, SITE_CODE, code, sno),
                cn=cn, commit=False)
        else:
            db.execute(
                "INSERT INTO GuestProfFor (Code, Sno, SerialNo, Nationality, "
                "Name, Add1, Add2, Occu, ArrFrom, Dest, PurVisit, "
                "ModeTravel, DateArr, ArrPlace, AddIndia, PassNo, IssDate, "
                "IssPlace, Age, PropStay, ModeTravelUsed, VisaType, VisaNo, "
                "VisaIssDate, VisaIssPlace, ExpDate, WorkPermit, "
                "PassExpDate, VisaIssAuth, Extension, VisaDuration, "
                "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
                "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
                "getdate(), 'A', ?)",
                (*params, SITE_CODE), cn=cn, commit=False)
        # VB6 loc_1C38965: CFORM Start_Srl_No consume/update
        if serialno and not exists:
            db.execute(
                "UPDATE Voucher_Prefix SET Start_Srl_No = ? "
                "WHERE V_Type = 'CFORM' AND Site_Code = ? AND Date_From = "
                "(SELECT MAX(Date_From) FROM Voucher_Prefix "
                "WHERE V_Type = 'CFORM' AND Site_Code = ?)",
                (serialno, SITE_CODE, SITE_CODE), cn=cn, commit=False)
        if commit:
            cn.commit()
        return {"sno": sno, "serialno": serialno, "updated": exists}
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


def delete_stay(code: str, sno: int, cn=None, commit: bool = True) -> None:
    own = cn is None
    cn = cn or db.connect()
    try:
        db.execute(
            "DELETE FROM GuestProfFor WHERE Code = ? AND Sno = ?",
            (code, sno), cn=cn, commit=False)
        if commit:
            cn.commit()
    finally:
        if own:
            cn.close()
