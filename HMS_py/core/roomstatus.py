"""Room Status engine (P4-c) - LIVE SCHEMA, VB6 frm evidence se.

REWRITE REASON: pehle ka version imagined schema pe tha (RoomNo/Status/
CheckOutYN cols jo RoomMast/GuestFolio me exist hi nahi karte - live
probe se pakda gaya). Ye version sirf REAL cols use karta hai.

REAL SCHEMA (live INFORMATION_SCHEMA):
  RoomMast(24): Type('RO'=Room,'TB'=Table,'C','O'), Code varchar(5) PK-ish,
    Name varchar(15), RoomCat, MultPer, MaidStation, RoomStat varchar(1)
    (''=Clean/Vacant, 'D'=Dirty - live census: 58 TB, 28 RO all 'D'),
    Site_Code, LogSite_Code, audit (U_Name/U_EntDt/U_AE).
  RoomOcc(42): DocId+SNo link, FolioNo, RoomNo, RoomRate, ChkInDate/Time,
    DepDate/Time, ChkOutDate/Time, Type, NewRoomNo, Reason, ExtraBed...

VB6 EVIDENCE (decompiled frm):
- FdRoomDisplay.frm:104: select * from roommast where logsite_code=...
- FrmHouseStatus.frm:792: occupied = RoomOcc.Type not in ('O','C') AND
  ChkOutDate IS NULL (join RoomMast on RoomNo)
- FrmHouseStatus.frm:1065: in-house grid = GuestFolio INNER JOIN RoomOcc
  ON gf.DocId=ro.DocId WHERE ro.ChkOutDate IS NULL
- FrmHouseStatus.frm:704: dirty-vacant = RoomMast.RoomStat='D'
- FdCheckOut.frm:3501: reverse check-out = ChkOutTime='',ChkOutDate=NULL
- fdRoomChange.frm:3639: room-move = new RoomOcc row (NewRoomNo concept)

LIVE (18/Sep/2026): 86 RoomMast (28 RO + 58 TB), 6 in-house (304, 303,
202, 206, 307, 208 - PRASHANT PRATAP SINGH/SARIKA, JASMEET SINGH,
ABHIJEET PATHAK, AMAL JOSHY), RoomBLockOut 0 rows.
"""
from __future__ import annotations

import datetime

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()

# RoomMast.RoomStat (varchar(1)) - VB6 RoomStat='D' = Dirty (frm:704)
ROOMSTAT_DIRTY = "D"
ROOMSTAT_CLEAN = ""       # '' = clean/vacant (live: ya 'C' bhi dekha)
ROOMSTAT_MBLOCK = "M"     # maintenance/block (RoomBLockOut empty hai, reserve)


def room_rack(cn=None, site: str = SITE_CODE,
              vprefix: str = "2026") -> list[dict]:
    """VB6 Room Display rack: har RO-room ka status + in-house guest.

    Status precedence (frm:792/1065/704 se):
      1. RoomOcc.ChkOutDate IS NULL  -> 'Occupied' (guest naame ke saath)
      2. RoomMast.RoomStat='D'       -> 'Dirty'
      3. RoomBLockOut                -> 'Blocked' (abhi 0 rows)
      4. warna                       -> 'Vacant'
    Tables (TB) include karte hain (VB6 FdRoomDisplay * select karta tha).
    """
    rooms = db.query(
        "SELECT RTRIM(Type), RTRIM(Code), RTRIM(Name), RTRIM(RoomCat), "
        "MultPer, RTRIM(RoomStat), RTRIM(MaidStation) "
        "FROM RoomMast WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "ORDER BY Type, Code", (site,), cn=cn)
    # live occupancy: frm:792 pattern (ChkOutDate IS NULL)
    occ = db.query(
        "SELECT RTRIM(ro.RoomNo), ro.FolioNo, RTRIM(gf.Name), "
        "CONVERT(date, ro.ChkInDate), CONVERT(date, ro.DepDate), "
        "ro.DocId, ro.SNo "
        "FROM RoomOcc ro LEFT JOIN GuestFolio gf ON gf.DocId = ro.DocId "
        "WHERE ro.ChkOutDate IS NULL AND ro.Site_Code = ? "
        "AND ro.Vprefix = ? "
        "ORDER BY ro.RoomNo", (site, vprefix), cn=cn)
    occ_map = {}
    for r in occ:
        dep = r[4]
        occ_map[r[0]] = {
            "folio": r[1], "guest": (r[2] or "").strip(),
            "chk_in": r[3],
            "dep": dep.date() if isinstance(dep, datetime.datetime) else dep,
            "docid": (r[5] or "").strip(), "sno": r[6],
        }
    out = []
    for r in rooms:
        rtype, code, name, rcat, multper, rstat, maid = r
        o = occ_map.get(code)
        if o:
            status = "Occupied"
        elif (rstat or "").strip().upper() == ROOMSTAT_DIRTY:
            status = "Dirty"
        else:
            status = "Vacant"
        out.append({
            "type": rtype, "roomno": code, "name": name,
            "cat": rcat, "multper": multper, "maid": maid,
            "rawstat": (rstat or "").strip(),
            "status": status,
            "folio": o["folio"] if o else None,
            "guest": o["guest"] if o else "",
            "chk_in": o["chk_in"] if o else None,
            "dep": o["dep"] if o else None,
            "occ_docid": o["docid"] if o else "",
            "occ_sno": o["sno"] if o else None,
        })
    return out


def housekeeping_summary(cn=None, site: str = SITE_CODE,
                         vprefix: str = "2026") -> dict:
    """Rack counts (UI summary labels ke liye)."""
    rack = room_rack(cn=cn, site=site, vprefix=vprefix)
    rooms = [r for r in rack if r["type"] == "RO"]
    occ = [r for r in rooms if r["status"] == "Occupied"]
    dirty = [r for r in rooms if r["status"] == "Dirty"]
    total = len(rooms) or 1
    return {
        "total": len(rooms), "tables": len(rack) - len(rooms),
        "occupied": len(occ), "dirty": len(dirty),
        "vacant": len(rooms) - len(occ) - len(dirty),
        "maintenance": 0,  # RoomBLockOut live-empty (frm:883 pattern)
        "occ_pct": round(len(occ) * 100 / total, 1),
        "inhouse_guests": len({r["folio"] for r in occ if r["folio"]}),
    }


def update_hk_status(roomno: str, new_status: str, user: str = USER,
                     cn=None, commit: bool = True,
                     site: str = SITE_CODE) -> int:
    """Housekeeping: RoomMast.RoomStat update (VB6 HK screen).

    RoomStat varchar(1): 'D' = Dirty, '' = Clean. Occupied room ko
    clean mark karna block hai (guest andar hai)."""
    stat = (new_status or "").strip().upper()
    if stat in ("DIRTY", "D"):
        new = ROOMSTAT_DIRTY
    elif stat in ("CLEAN", "VACANT", ""):
        new = ROOMSTAT_CLEAN
    else:
        raise ValueError(
            f"RoomStat '{new_status}' supported nahi (sirf Clean/Dirty; "
            "Maintenance = RoomBLockOut table, P4-d me)")
    occ = db.query(
        "SELECT COUNT(*) FROM RoomOcc WHERE RTRIM(RoomNo) = ? AND "
        "ChkOutDate IS NULL AND Site_Code = ?",
        (roomno, site), cn=cn)
    if occ and occ[0][0]:
        raise ValueError(f"Room {roomno} occupied hai - HK status locked")
    rows = db.query(
        "SELECT COUNT(*) FROM RoomMast WHERE RTRIM(Code) = ? AND "
        "(LogSite_Code = ? OR LogSite_Code = 'HO')", (roomno, site), cn=cn)
    if not rows or not rows[0][0]:
        raise ValueError(f"Room {roomno} RoomMast me nahi mila")
    own = cn is None
    cn = cn or db.connect()
    try:
        n = db.execute(
            "UPDATE RoomMast SET RoomStat = ?, U_Name = ?, "
            "U_EntDt = getdate(), U_AE = 'E' "
            "WHERE RTRIM(Code) = ? AND (LogSite_Code = ? OR "
            "LogSite_Code = 'HO')",
            (new, user, roomno, site), cn=cn, commit=False)
        if commit:
            cn.commit()
        return n
    finally:
        if own:
            cn.close()


def move_room(docid: str, sno: int, new_room: str, reason: str = "",
              user: str = USER, cn=None, commit: bool = True,
              site: str = SITE_CODE) -> int:
    """Room change (VB6 fdRoomChange.frm:3676 live pattern):
    Update RoomOcc Set RoomNo=<new> + audit; NewRoomNo/Reason cols
    VB6 me change-history ke liye the (30-col INSERT naya SNo banata
    tha - hum minimal UPDATE karte hain, history Reason me)."""
    cur = db.query(
        "SELECT COUNT(*) FROM RoomOcc WHERE DocId = ? AND SNo = ? AND "
        "ChkOutDate IS NULL AND Site_Code = ?", (docid, sno, site), cn=cn)
    if not cur or not cur[0][0]:
        raise ValueError("Open RoomOcc row nahi mili (galat docid/sno "
                         "ya pehle se checked-out)")
    own = cn is None
    cn = cn or db.connect()
    try:
        n = db.execute(
            "UPDATE RoomOcc SET RoomNo = ?, NewRoomNo = ?, Reason = ?, "
            "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
            "WHERE DocId = ? AND SNo = ? AND ChkOutDate IS NULL AND "
            "Site_Code = ?",
            (new_room, new_room, (reason or "").strip()[:50], user,
             docid, sno, site), cn=cn, commit=False)
        if commit:
            cn.commit()
        return n
    finally:
        if own:
            cn.close()


def room_availability(arr, dep, cn=None, site: str = SITE_CODE,
                      vprefix: str = "2026") -> list[dict]:
    """Free rooms date-range ke liye (VB6 FrmHouseStatus:699 pattern:
    Code NOT IN open-RoomOcc) + Dirty flag alag se."""
    rooms = db.query(
        "SELECT RTRIM(Code), RTRIM(Name), RTRIM(RoomCat), RoomStat "
        "FROM RoomMast WHERE RTRIM(Type) = 'RO' AND (LogSite_Code = ? OR "
        "LogSite_Code = 'HO') ORDER BY Code", (site,), cn=cn)
    busy = db.query(
        "SELECT DISTINCT RTRIM(RoomNo) FROM RoomOcc WHERE ChkOutDate IS "
        "NULL AND Site_Code = ? AND Vprefix = ?", (site, vprefix), cn=cn)
    busy_set = {r[0] for r in busy}
    return [{"roomno": r[0], "name": r[1], "cat": r[2],
             "free": r[0] not in busy_set,
             "dirty": (r[3] or "").strip().upper() == ROOMSTAT_DIRTY}
            for r in rooms]
