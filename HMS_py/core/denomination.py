"""Denomination register core ops (VB6 FrmDenomination).

VB6 form: HMS_REVERSE_ENGINEERING/HMS/FrmDenomination.frm (caption
"Denomination Detail", MDIForm1 NightAuditoR/Dispatch New FrmDenomination,
ModuleAdd.bas loc_1E47899, MDIForm1 loc_142D152).

Flow:
  Form_Load (loc_F99AE5 / loc_F31FD3):
    grid fill "SELECT Distinct Sno As SearchCode, Sno As SerialNo,
    U_Name As UserName, CAST(Vdate AS VARCHAR(11)) as [Date]
    FROM DenominationDetail Where IsNull(DelFlag,'')<>'Y'
    And LogSite_Code=..."
  New: loc_1604607 next Sno = IsNull(Max(Sno),0)+1; rows from
    SELECT * FROM DenominationFormat ORDER BY Sno -> per-row
    "Insert into DenominationDetail(SNo,SNo1,Vdate,Name,...)"
    (loc_1604607/loc_1604A28/loc_1605018); old rows "Delete From
    DenominationDetail WHERE Sno=" (loc_1604C3C).
  Delete: confirm -> "Update DenominationDetail Set Delflag='Y',Reason=?"
    (loc_10758C5) or hard delete (loc_1604C3C).

Tables: DenominationDetail (live, 0 rows, 18 cols),
DenominationFormat (live, 0 rows, template rows).

Rules: parameterized SQL; one transaction for multi-statement writes;
no fabricated columns (DenominationFormat probe se verified).
"""
from __future__ import annotations

import datetime

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()


def list_registers(site: str = SITE_CODE, user: str = "", cn=None):
    """Grouped register list (VB6 Form_Load grid)."""
    sql = (
        "SELECT DISTINCT Sno AS Sno, U_Name AS UName, "
        "CAST(Vdate AS VARCHAR(11)) AS VDate "
        "FROM DenominationDetail WHERE ISNULL(DelFlag,'') <> 'Y' "
        "AND LTRIM(RTRIM(Site_Code)) = ? "
    )
    params = [site]
    if user:
        sql += "AND U_Name = ? "
        params.append(user)
    sql += "ORDER BY Sno DESC"
    return db.query(sql, params, cn=cn)


def get_register_rows(sno, cn=None):
    """Register detail rows (VB6 loc_107DFE8 SELECT * Where Sno=)."""
    return db.query(
        "SELECT Sno, Sno1, Vdate, Name, DenominationType, DenominationValue, "
        "DenominationUnit, DenominationTotal, Relation, Type, U_Name, U_AE, "
        "U_EntDt, Site_Code, LogSite_Code, DelFlag, Reason, Remark "
        "FROM DenominationDetail WHERE Sno = ? AND ISNULL(DelFlag,'') <> 'Y' "
        "ORDER BY Sno1", (sno,), cn=cn)


def list_format(cn=None):
    """DenominationFormat template rows (VB6 Form_Load:
    SELECT * From DenominationFormat Order By Sno)."""
    return db.query(
        "SELECT Sno, DenominationType, DenominationValue, DenominationUnit, "
        "DenominationTotal, Relation, Type, U_Name, U_EntDt, Site_Code, "
        "LogSite_Code FROM DenominationFormat ORDER BY Sno", cn=cn)


def next_sno(cn=None):
    """VB6 loc_1604607: IsNull(Max(Sno),0)+1 (per site)."""
    rows = db.query(
        "SELECT ISNULL(MAX(Sno),0)+1 FROM DenominationDetail WHERE Site_Code = ?",
        (SITE_CODE,), cn=cn)
    return int(rows[0][0]) if rows else 1


def save_register(sno, vdate, name, rows, user: str = USER, cn=None):
    """Replace a register's detail rows (VB6 loc_1604C3C delete +
    loc_1604A28 insert). rows: list of dicts with the DenominationFormat
    column set. Returns row count written."""
    now = datetime.datetime.now()
    def _do(c):
        db.execute("DELETE FROM DenominationDetail WHERE Sno = ? AND Site_Code = ?",
                   (sno, SITE_CODE), cn=c, commit=False)
        n = 0
        for r in rows:
            db.execute(
                "INSERT INTO DenominationDetail(Sno,Sno1,Vdate,Name,"
                "DenominationType,DenominationValue,DenominationUnit,"
                "DenominationTotal,Relation,Type,U_Name,U_EntDt,U_AE,"
                "Site_Code,LogSite_Code) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
                (sno, r.get("Sno1", sno), vdate, name,
                 r.get("DenominationType", ""), r.get("DenominationValue", ""),
                 r.get("DenominationUnit", ""), r.get("DenominationTotal", ""),
                 r.get("Relation", ""), r.get("Type", ""), user, now, "E",
                 SITE_CODE, db.get_site_code()),
                cn=c, commit=False)
            n += 1
        return n
    if cn is not None:
        return _do(cn)
    with db.transaction() as t:
        return _do(t)


def delete_register(sno, reason: str = "", user: str = USER, cn=None):
    """VB6 loc_10758C5: soft delete Delflag='Y',Reason=?."""
    return db.execute(
        "UPDATE DenominationDetail SET DelFlag='Y', Reason=? WHERE Sno = ? "
        "AND Site_Code = ?", (reason, sno, SITE_CODE), cn=cn, commit=True)


def delete_register_hard(sno, cn=None):
    """VB6 loc_1604C3C hard delete path."""
    return db.execute(
        "DELETE FROM DenominationDetail WHERE Sno = ? AND Site_Code = ?",
        (sno, SITE_CODE), cn=cn, commit=True)
