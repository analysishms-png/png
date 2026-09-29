"""VenueMast CRUD (Banquet venues - 2 live rows: UMA, GAURI).
Schema evidence: Code varchar(5) PK, Name varchar(25), ShortName varchar(5),
Capacity varchar(10), Seating float, Floating float, Dimension varchar(20),
Status varchar(10), DepartCode varchar(6).
NOT NULL: Code (+Site_Code). App-level: Code+Name required.
Audit pattern VB6 jaisa: U_Name + U_EntDt(getdate()) + U_AE ('A'/'E').
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()
LIMITS = {"code": 5, "name": 25, "short": 5, "capacity": 10,
          "dimension": 20, "status": 10, "depart": 6}
SELECT_COLS = ("Code, Name, ShortName, Capacity, Seating, Floating, "
               "Dimension, Status, DepartCode, U_Name, U_EntDt, U_AE")


def _map(r) -> dict:
    return {"code": r.Code, "name": r.Name or "", "short": r.ShortName or "",
            "capacity": r.Capacity or "",
            "seating": float(r.Seating or 0),
            "floating": float(r.Floating or 0),
            "dimension": r.Dimension or "", "status": r.Status or "",
            "depart": r.DepartCode or "", "u_name": r.U_Name or "",
            "u_ae": r.U_AE or ""}


def _validate(rec: dict):
    if len(rec.get("code", "")) > LIMITS["code"]:
        raise ValueError(f"Code max {LIMITS['code']} chars")
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if len(rec.get("name", "")) > LIMITS["name"]:
        raise ValueError(f"Name max {LIMITS['name']} chars")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    for k in ("short", "capacity", "dimension", "status", "depart"):
        if len(rec.get(k, "")) > LIMITS[k]:
            raise ValueError(f"{k} max {LIMITS[k]} chars")


def list_all(cn=None) -> list[dict]:
    rows = db.query(f"SELECT {SELECT_COLS} FROM VenueMast ORDER BY Code",
                    cn=cn)
    return [_map(r) for r in rows]


def get(code: str, cn=None) -> dict | None:
    rows = db.query(f"SELECT {SELECT_COLS} FROM VenueMast WHERE Code = ?",
                    (code,), cn=cn)
    return _map(rows[0]) if rows else None


def exists(code: str, cn=None) -> bool:
    return bool(db.query("SELECT 1 FROM VenueMast WHERE Code = ?",
                         (code,), cn=cn))


def insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec)
    db.require_absent("VenueMast", "Code", rec["code"],
              "Venue Code")
    return db.execute(
        "INSERT INTO VenueMast (Code, Name, ShortName, Capacity, Seating, "
        "Floating, Dimension, Status, DepartCode, Site_Code, U_Name, "
        "U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (rec["code"], rec["name"], rec.get("short", ""),
         rec.get("capacity", ""), float(rec.get("seating") or 0),
         float(rec.get("floating") or 0), rec.get("dimension", ""),
         rec.get("status", ""), rec.get("depart", ""),
         SITE_CODE, USER, SITE_CODE), cn=cn, commit=commit)


def update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec)
    return db.execute(
        "UPDATE VenueMast SET Name = ?, ShortName = ?, Capacity = ?, "
        "Seating = ?, Floating = ?, Dimension = ?, Status = ?, "
        "DepartCode = ?, U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
        "WHERE Code = ?",
        (rec["name"], rec.get("short", ""), rec.get("capacity", ""),
         float(rec.get("seating") or 0), float(rec.get("floating") or 0),
         rec.get("dimension", ""), rec.get("status", ""),
         rec.get("depart", ""), USER, code), cn=cn, commit=commit)


def delete(code: str, cn=None, commit: bool = True) -> int:
    return db.execute("DELETE FROM VenueMast WHERE Code = ?", (code,),
                      cn=cn, commit=commit)


# ------------------------------------------------------------
# VenueCapacity (VB6 FrmVenueMast capacity-rows: Seating/Floating/PicPath
# per config; live 32 rows; PK implicit (VenueCode, Capacity-seating row))
# ------------------------------------------------------------
def capacity_list(venue: str = "", cn=None) -> list[dict]:
    """VenueCapacity rows (sab ya per-venue).
    NOTE: Capacity varchar hai live ('Informal' jaise tiers bhi),
    int-cast sirf numerics pe."""
    if venue:
        rows = db.query(
            "SELECT VenueCode, Capacity, Seating, Floating, PicPath, "
            "U_AE FROM VenueCapacity WHERE VenueCode = ? ORDER BY VenueCode, "
            "CASE WHEN ISNUMERIC(Capacity) = 1 THEN CAST(Capacity AS int) "
            "ELSE 999999 END", (venue,), cn=cn)
    else:
        rows = db.query(
            "SELECT VenueCode, Capacity, Seating, Floating, "
            "PicPath, U_AE FROM VenueCapacity", cn=cn)
    out = []
    for r in rows:
        cap = (str(r.Capacity) if not isinstance(r.Capacity, (int, float))
               else str(int(r.Capacity)))
        try:
            cap = str(int(float(cap)))
        except (ValueError, TypeError):
            cap = cap.strip()
        out.append({"venuecode": (r.VenueCode or "").strip(),
                    "capacity": cap,
                    "seating": float(r.Seating or 0),
                    "floating": float(r.Floating or 0),
                    "picpath": (r.PicPath or "").strip(),
                    "u_ae": (r.U_AE or "").strip()})
    return out


def capacity_upsert(venuecode: str, capacity: str, seating: float,
                    floating: float, picpath: str = "",
                    user: str = "HMS_py", cn=None,
                    commit: bool = True) -> str:
    """VenueCapacity row insert/update (key: VenueCode+Capacity).
    Venue VenueMast me hona chahiye.
    NOTE: live table me U_Name column NAHI hai — audit sirf
    U_EntDt/U_AE/LogSite_Code pe. Capacity string hai ('Informal'
    jaise non-numeric tiers allowed)."""
    venuecode = (venuecode or "").strip()
    if not venuecode:
        raise ValueError("Venue code zaroori hai")
    capacity = str(capacity or "").strip()
    if not capacity:
        raise ValueError("Capacity zaroori hai (number ya tier name)")
    if not exists(venuecode, cn=cn):
        raise ValueError(f"Venue {venuecode} VenueMast me nahi hai")
    own = cn is None
    cn = cn or db.connect()
    try:
        cur = cn.cursor()
        cur.execute(
            "SELECT COUNT(*) FROM VenueCapacity WHERE VenueCode = ? "
            "AND Capacity = ?", (venuecode, capacity))
        row_exists = (cur.fetchone()[0] or 0) > 0
        if row_exists:
            db.execute(
                "UPDATE VenueCapacity SET Seating = ?, Floating = ?, "
                "PicPath = ?, U_EntDt = getdate(), U_AE = 'E' "
                "WHERE VenueCode = ? AND Capacity = ?",
                (float(seating), float(floating), picpath,
                 venuecode, capacity), cn=cn, commit=False)
        else:
            db.execute(
                "INSERT INTO VenueCapacity (VenueCode, Capacity, Seating, "
                "Floating, PicPath, Site_Code, U_EntDt, U_AE, "
                "LogSite_Code) VALUES (?, ?, ?, ?, ?, ?, getdate(), "
                "'A', ?)",
                (venuecode, capacity, float(seating),
                 float(floating), picpath, SITE_CODE, SITE_CODE),
                cn=cn, commit=False)
        if commit:
            cn.commit()
        return venuecode
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


def capacity_delete(venuecode: str, capacity: str, cn=None,
                    commit: bool = True) -> int:
    own = cn is None
    cn = cn or db.connect()
    try:
        return db.execute(
            "DELETE FROM VenueCapacity WHERE VenueCode = ? AND Capacity = ?",
            (venuecode, str(capacity).strip()), cn=cn, commit=commit)
    finally:
        if own:
            cn.close()
