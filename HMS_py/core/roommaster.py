"""Room Master CRUD (VB6: 'Room Master' - Main Setup -> Front Office).

Schema: RoomMast table (live DB).
  Type varchar(2) PK, Code varchar(5) PK, Name varchar(15),
  RoomCat varchar(5), Extension smallint, MultPer smallint,
  RevCode varchar(6), MaidStation varchar(6), InclCount varchar(1),
  ConRoom1-4 varchar(5), RestCode varchar(6), TaxStru varchar(6),
  RoomStat varchar(1), HallRent float, PicPath varchar(250),
  DoorLockID varchar(20),
  Site_Code varchar(2), U_Name varchar(10), U_EntDt datetime,
  U_AE varchar(1), LogSite_Code varchar(2).
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = "KK"
USER = "PYADMIN"
LIMITS = {
    "type": 2, "code": 5, "name": 15, "roomcat": 5,
    "revcode": 6, "maidstation": 6, "restcode": 6, "taxstru": 6,
    "picpath": 250, "doorlockid": 20,
}
SELECT_COLS = (
    "Type, Code, Name, RoomCat, Extension, MultPer, RevCode, "
    "MaidStation, InclCount, ConRoom1, ConRoom2, ConRoom3, ConRoom4, "
    "RestCode, TaxStru, RoomStat, HallRent, PicPath, DoorLockID, "
    "U_Name, U_EntDt, U_AE"
)


def _map(r) -> dict:
    try:
        return {
            "type": r.Type or "", "code": r.Code,
            "name": (r.Name or "").strip(),
            "roomcat": r.RoomCat or "",
            "extension": r.Extension or 0,
            "multper": r.MultPer or 0,
            "revcode": r.RevCode or "",
            "maidstation": r.MaidStation or "",
            "inclcount": r.InclCount or "",
            "conroom1": r.ConRoom1 or "",
            "conroom2": r.ConRoom2 or "",
            "conroom3": r.ConRoom3 or "",
            "conroom4": r.ConRoom4 or "",
            "restcode": r.RestCode or "",
            "taxstru": r.TaxStru or "",
            "roomstat": r.RoomStat or "",
            "hallrent": float(r.HallRent or 0),
            "picpath": r.PicPath or "",
            "doorlockid": r.DoorLockID or "",
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        tp, c, n, rc, ext, mp, rv, ms, ic, cr1, cr2, cr3, cr4,             rst, ts, rs, hr, pp, dl, un, _, uae = r
        return {
            "type": tp or "", "code": c, "name": (n or "").strip(),
            "roomcat": rc or "", "extension": ext or 0,
            "multper": mp or 0, "revcode": rv or "",
            "maidstation": ms or "", "inclcount": ic or "",
            "conroom1": cr1 or "", "conroom2": cr2 or "",
            "conroom3": cr3 or "", "conroom4": cr4 or "",
            "restcode": rst or "", "taxstru": ts or "",
            "roomstat": rs or "", "hallrent": float(hr or 0),
            "picpath": pp or "", "doorlockid": dl or "",
            "u_name": un or "", "u_ae": uae or "",
        }


def _validate(rec: dict):
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if len(rec["code"]) > LIMITS["code"]:
        raise ValueError(f"Code max {LIMITS['code']} chars")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    if len(rec["name"]) > LIMITS["name"]:
        raise ValueError(f"Name max {LIMITS['name']} chars")
    if len(rec.get("type", "")) > LIMITS["type"]:
        raise ValueError(f"Type max {LIMITS['type']} chars")


def list_all(cn=None) -> list[dict]:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM RoomMast ORDER BY Code", cn=cn)
    return [_map(r) for r in rows]


def get(code: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM RoomMast WHERE Code = ?",
        (code,), cn=cn)
    return _map(rows[0]) if rows else None


def exists(code: str, cn=None) -> bool:
    return bool(db.query(
        "SELECT 1 FROM RoomMast WHERE Code = ?", (code,), cn=cn))


def insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec)
    db.require_absent("RoomMast", "Code", rec["code"], "Room Code")
    return db.execute(
        "INSERT INTO RoomMast (Type, Code, Name, RoomCat, Extension, "
        "MultPer, RevCode, MaidStation, InclCount, ConRoom1, ConRoom2, "
        "ConRoom3, ConRoom4, RestCode, TaxStru, RoomStat, HallRent, "
        "PicPath, DoorLockID, Site_Code, U_Name, U_EntDt, U_AE, "
        "LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
        "?, ?, ?, ?, getdate(), 'A', ?)",
        (rec.get("type", ""), rec["code"], rec["name"],
         rec.get("roomcat", ""), int(rec.get("extension") or 0),
         int(rec.get("multper") or 0), rec.get("revcode", ""),
         rec.get("maidstation", ""), rec.get("inclcount", ""),
         rec.get("conroom1", ""), rec.get("conroom2", ""),
         rec.get("conroom3", ""), rec.get("conroom4", ""),
         rec.get("restcode", ""), rec.get("taxstru", ""),
         rec.get("roomstat", ""), float(rec.get("hallrent") or 0),
         rec.get("picpath", ""), rec.get("doorlockid", ""),
         SITE_CODE, USER, SITE_CODE),
        cn=cn, commit=commit)


def update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec)
    return db.execute(
        "UPDATE RoomMast SET Type = ?, Name = ?, RoomCat = ?, "
        "Extension = ?, MultPer = ?, RevCode = ?, MaidStation = ?, "
        "InclCount = ?, ConRoom1 = ?, ConRoom2 = ?, ConRoom3 = ?, "
        "ConRoom4 = ?, RestCode = ?, TaxStru = ?, RoomStat = ?, "
        "HallRent = ?, PicPath = ?, DoorLockID = ?, "
        "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE Code = ?",
        (rec.get("type", ""), rec["name"], rec.get("roomcat", ""),
         int(rec.get("extension") or 0), int(rec.get("multper") or 0),
         rec.get("revcode", ""), rec.get("maidstation", ""),
         rec.get("inclcount", ""), rec.get("conroom1", ""),
         rec.get("conroom2", ""), rec.get("conroom3", ""),
         rec.get("conroom4", ""), rec.get("restcode", ""),
         rec.get("taxstru", ""), rec.get("roomstat", ""),
         float(rec.get("hallrent") or 0), rec.get("picpath", ""),
         rec.get("doorlockid", ""), USER, code),
        cn=cn, commit=commit)


def delete(code: str, cn=None, commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM RoomMast WHERE Code = ?", (code,),
        cn=cn, commit=commit)
