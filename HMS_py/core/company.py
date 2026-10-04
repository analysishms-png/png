"""Company/property list - frmCompany.frm jaisa dynamic data.

VB6 Company Details grid: Company Name | Short Name | Current Year.
Data sources (evidence):
  - Site table: CompCode, Site_Code, Site_Desc, Short_Name (property rows)
  - Year: Analysis.ini pattern "2026-27" (VB6 me session year tha)
  - Site khaali ho toh INI keys 7 (company code) + 8 (city) se fallback.
"""
from __future__ import annotations

from HMS_py.core import db


def list_companies() -> list[dict]:
    """frmCompany grid ka data."""
    cfg = db.load_config()
    try:
        rows = db.query(
            "SELECT Comp_Name, SName, cyear, Comp_Code, Start_Dt, End_Dt FROM Company "
            "ORDER BY Start_Dt DESC")
    except Exception:
        rows = []
    out = []
    for r in rows or []:
        out.append({
            "code": str(r[3] or ""),
            "site": cfg.get("site", ""),
            "name": r[0] or "",
            "short": r[1] or "",
            "year": r[2] or current_year(),
            "start_dt": str(r[4]) if r[4] else "",
            "end_dt": str(r[5]) if r[5] else "",
        })
    if not out:
        # fallback: INI company (single-property install)
        out = [{"code": "", "site": cfg.get("site", ""),
                "name": "Property (INI)", "short": "",
                "year": current_year(), "start_dt": "", "end_dt": ""}]
    return out


def get_company_details(comp_code: str) -> dict:
    """Fetch full details for a company record."""
    if not comp_code:
        return {}
    rows = db.query("SELECT * FROM Company WHERE Comp_Code = ? OR Comp_Name = ?", (comp_code, comp_code))
    if not rows:
        return {}
    r = rows[0]
    if hasattr(r, "keys"):
        return {k: r[k] for k in r.keys()}
    cols = [c[0] for c in db.query("SELECT name FROM sys.columns WHERE object_id = OBJECT_ID('Company') ORDER BY column_id")]
    return dict(zip(cols, r))


def save_company(data: dict, user: str = "SA", cn=None) -> bool:
    """Insert or Update `Company` table row (VB6 frmCompany.frm parity).

    WRONG-TARGET guard (MS-004): ye `Company` (Comp_Code/Comp_Name/cyear)
    likhta hai — `core.comp_master.save_company` alag cheez hai (SubGroup /
    CompMast, SubCode key, str return). Do NOT mix the two.
    """
    if not data or not data.get("Comp_Name"):
        raise ValueError("Company Name is required")
    own = cn is None
    cn = cn or db.connect()
    try:
        comp_name = data.get("Comp_Name", "").strip()
        comp_code = data.get("Comp_Code", "").strip()
        
        # Check if company exists
        existing = db.query("SELECT Comp_Code FROM Company WHERE Comp_Code = ? OR Comp_Name = ?", (comp_code, comp_name), cn=cn)
        
        data_to_write = dict(data)
        data_to_write["U_Name"] = user
        
        if existing:
            # UPDATE
            data_to_write["U_AE"] = "E"
            sets = ", ".join(f"[{k}] = ?" for k in data_to_write if k not in ("Comp_Code",))
            sets += ", [U_EntDt] = GETDATE()"
            params = tuple(v for k, v in data_to_write.items() if k not in ("Comp_Code",)) + (existing[0][0],)
            db.execute(f"UPDATE Company SET {sets} WHERE Comp_Code = ?", params, cn=cn, commit=True)
        else:
            # INSERT
            data_to_write["U_AE"] = "A"
            cols = list(data_to_write.keys())
            cols_str = ", ".join(f"[{k}]" for k in cols) + ", [U_EntDt]"
            val_placeholders = ", ".join("?" for _ in cols) + ", GETDATE()"
            params = tuple(data_to_write.values())
            db.execute(f"INSERT INTO Company ({cols_str}) VALUES ({val_placeholders})", params, cn=cn, commit=True)
        return True
    finally:
        if own:
            cn.close()


def delete_company(comp_code: str, cn=None) -> bool:
    """Delete `Company` row (VB6 frmCompany.frm parity).

    WRONG-TARGET guard (MS-004): `core.comp_master.delete_company` is a
    different operation (SubGroup + ledger guard + 4-table delete).
    """
    if not comp_code:
        return False
    db.execute("DELETE FROM Company WHERE Comp_Code = ? OR Comp_Name = ?", (comp_code, comp_code), cn=cn, commit=True)
    return True


def current_year() -> str:
    """VB6 jaisa financial year string (Apr-Mar): 2026-27."""
    import datetime
    today = datetime.date.today()
    if today.month >= 4:
        y1 = today.year
    else:
        y1 = today.year - 1
    return f"{y1}-{(y1 + 1) % 100:02d}"
