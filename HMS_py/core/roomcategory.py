"""Room Category master CRUD (VB6: Room Cat - Main Setup -> Front Office).

Schema (live RoomCat): **composite PK (Type, Code)** — Type varchar(2) NN
('RO' live; RoomMast bhi 'RO'/'TB'), Code varchar(5) NN, Name varchar(25),
ShortName(6), RevCode(6), MaxPerson smallint.
VB6 evidence: RoomCat forms Type+Code dono use karte hain; hum default
Type='RO' scope karte hain (single-code API compat ke saath).
Audit: U_Name + U_EntDt(getdate()) + U_AE ('A'/'E').
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()
DEFAULT_TYPE = "RO"
LIMITS = {"code": 5, "name": 25, "short": 6, "revcode": 6, "type": 2,
          "inclcount": 1, "mapcode": 20}
# AUDIT-20261005 P2-H FIX: VB6 FrmRoomCatMast ke poore column-set
# (`RetChg,CancelChg,MinAdv,NoRooms,MultPer,InclCount,MapCode` + update ka
# `ActiveYN`) pehle chhoot rahe the - cancellation charges, min advance,
# rooms-in-category, multiplier aur map-code silently loss ho jaate the.
SELECT_COLS = (
    "Type, Code, Name, ShortName, MaxPerson, RevCode, RetChg, CancelChg, "
    "MinAdv, NoRooms, MultPer, InclCount, MapCode, ActiveYN, "
    "U_Name, U_EntDt, U_AE"
)


def _f(v) -> float:
    try:
        return float(v or 0)
    except (TypeError, ValueError):
        return 0.0


def _i(v) -> int:
    try:
        return int(float(v or 0))
    except (TypeError, ValueError):
        return 0


def _map(r) -> dict:
    def _s(v):
        return (v.strip() if isinstance(v, str) else str(v or ""))
    return {"type": r.Type or DEFAULT_TYPE, "code": r.Code,
            "name": r.Name or "", "short": r.ShortName or "",
            "maxperson": r.MaxPerson or 0, "revcode": r.RevCode or "",
            "retchg": _f(getattr(r, "RetChg", 0)),
            "cancelchg": _f(getattr(r, "CancelChg", 0)),
            "minadv": _f(getattr(r, "MinAdv", 0)),
            "norooms": _i(getattr(r, "NoRooms", 0)),
            "multper": _i(getattr(r, "MultPer", 0)),
            "inclcount": _s(getattr(r, "InclCount", "")),
            "mapcode": _s(getattr(r, "MapCode", "")),
            "activeyn": _s(getattr(r, "ActiveYN", "")),
            "u_name": r.U_Name or "", "u_ae": r.U_AE or ""}


def _validate(rec: dict):
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if len(rec["code"]) > LIMITS["code"]:
        raise ValueError(f"Code max {LIMITS['code']} chars")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    if len(rec["name"]) > LIMITS["name"]:
        raise ValueError(f"Name max {LIMITS['name']} chars")
    if len(rec.get("short", "")) > LIMITS["short"]:
        raise ValueError(f"ShortName max {LIMITS['short']} chars")
    t = (rec.get("type") or DEFAULT_TYPE).strip() or DEFAULT_TYPE
    if len(t) > LIMITS["type"]:
        raise ValueError(f"Type max {LIMITS['type']} chars")
    if len(rec.get("inclcount") or "") > LIMITS["inclcount"]:
        raise ValueError(f"InclCount max {LIMITS['inclcount']} chars")
    if len(rec.get("mapcode") or "") > LIMITS["mapcode"]:
        raise ValueError(f"MapCode max {LIMITS['mapcode']} chars")


def list_all(cn=None) -> list[dict]:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM RoomCat ORDER BY Code", cn=cn)
    return [_map(r) for r in rows]


def get(code: str, cn=None, type: str = DEFAULT_TYPE) -> dict | None:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM RoomCat WHERE Code = ? AND Type = ?",
        (code, type), cn=cn)
    return _map(rows[0]) if rows else None


def exists(code: str, cn=None, type: str = DEFAULT_TYPE) -> bool:
    return bool(db.query(
        "SELECT 1 FROM RoomCat WHERE Code = ? AND Type = ?",
        (code, type), cn=cn))


def insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec)
    typ = (rec.get("type") or DEFAULT_TYPE).strip() or DEFAULT_TYPE
    # composite PK (Type, Code) — scoped duplicate guard
    if db.query("SELECT 1 FROM RoomCat WHERE RTRIM(Code) = ? AND Type = ?",
                (rec["code"].strip(), typ), cn=cn):
        raise ValueError(f"Room Category Code '{rec['code']}' "
                         f"Already Exists (Type {typ})")
    # AUDIT-20261005 P2-H FIX: VB6 FrmRoomCatMast loc_175242B ka poora
    # column-set (Type,Code,Name,ShortName,RevCode,RetChg,CancelChg,MinAdv,
    # NoRooms,MultPer,InclCount,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,
    # MapCode). InclCount VB6 Left$(...,1) karta hai.
    return db.execute(
        "INSERT INTO RoomCat (Type, Code, Name, ShortName, MaxPerson, "
        "RevCode, RetChg, CancelChg, MinAdv, NoRooms, MultPer, InclCount, "
        "MapCode, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), "
        "'A', ?)",
        (typ, rec["code"], rec["name"], rec.get("short", ""),
         int(rec.get("maxperson") or 0), rec.get("revcode", ""),
         _f(rec.get("retchg")), _f(rec.get("cancelchg")),
         _f(rec.get("minadv")), _i(rec.get("norooms")),
         _i(rec.get("multper")),
         (rec.get("inclcount") or "")[:1], rec.get("mapcode") or "",
         SITE_CODE, USER, SITE_CODE),
        cn=cn, commit=commit)


def update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec)
    typ = (rec.get("type") or DEFAULT_TYPE).strip() or DEFAULT_TYPE
    # AUDIT-20261005 P2-H FIX: VB6 FrmRoomCatMast loc_17527E4 ka UPDATE
    # column-set (+ ActiveYN, MapCode jo VB6 update-branch me aate hain).
    return db.execute(
        "UPDATE RoomCat SET Name = ?, ShortName = ?, MaxPerson = ?, "
        "RevCode = ?, RetChg = ?, CancelChg = ?, MinAdv = ?, NoRooms = ?, "
        "MultPer = ?, InclCount = ?, MapCode = ?, ActiveYN = ?, "
        "Site_Code = ?, U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
        "WHERE Code = ? AND Type = ?",
        (rec["name"], rec.get("short", ""),
         int(rec.get("maxperson") or 0), rec.get("revcode", ""),
         _f(rec.get("retchg")), _f(rec.get("cancelchg")),
         _f(rec.get("minadv")), _i(rec.get("norooms")),
         _i(rec.get("multper")), (rec.get("inclcount") or "")[:1],
         rec.get("mapcode") or "",
         (rec.get("activeyn") or "")[:3],
         SITE_CODE, USER, code, typ),
        cn=cn, commit=commit)


def delete(code: str, cn=None, commit: bool = True,
           type: str = DEFAULT_TYPE) -> int:
    """BUG-008 FIX: VB6 FrmRoomCatMast checks RoomMast before delete.
    A category in use by rooms cannot be deleted.
    """
    rows = db.query(
        "SELECT COUNT(*) FROM RoomMast WHERE RoomCat = ?", (code,), cn=cn)
    if rows and int(rows[0][0]) > 0:
        raise ValueError(
            "Related Record Exist in RoomMast, Entry Can't Be Deleted")
    return db.execute(
        "DELETE FROM RoomCat WHERE Code = ? AND Type = ?", (code, type),
        cn=cn, commit=commit)
