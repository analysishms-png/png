"""Room Master Alt (roommast1) core module — VB6 roommast1 table access.

VB6 Evidence: HMS.bas, PrSalCreate.frm reference roommast1.
Live DB: 0 rows (empty but schema exists) - alternative room master table.

This module provides read/write access to room master (alt) data.
"""

from __future__ import annotations

from HMS_py.core import db


LIMITS = {"room": 10, "name": 50, "floor": 10, "type": 10}
SELECT_COLS = "RoomNo, RoomName, Floor, RoomType, Status, Rate, MaxPax, BedType, AC, TV, Phone, Fridge, Safe, Wifi, U_Name, U_EntDt, U_AE"


def _map_roommast1(r) -> dict:
    """Map roommast1 row to dict."""
    return {
        "room_no": getattr(r, "RoomNo", getattr(r, "Room_No", "")) or "",
        "room_name": getattr(r, "RoomName", getattr(r, "Room_Name", "")) or "",
        "floor": getattr(r, "Floor", "") or "",
        "room_type": getattr(r, "RoomType", getattr(r, "Room_Type", "")) or "",
        "status": getattr(r, "Status", "A") or "A",  # A=Available, O=Occupied, M=Maintenance, R=Reserved
        "rate": float(getattr(r, "Rate", 0) or 0),
        "max_pax": int(getattr(r, "MaxPax", getattr(r, "Max_Pax", 0)) or 0),
        "bed_type": getattr(r, "BedType", getattr(r, "Bed_Type", "")) or "",
        "ac": bool(getattr(r, "AC", getattr(r, "ACYN", 0)) or 0),
        "tv": bool(getattr(r, "TV", getattr(r, "TVYN", 0)) or 0),
        "phone": bool(getattr(r, "Phone", getattr(r, "PhoneYN", 0)) or 0),
        "fridge": bool(getattr(r, "Fridge", getattr(r, "FridgeYN", 0)) or 0),
        "safe": bool(getattr(r, "Safe", getattr(r, "SafeYN", 0)) or 0),
        "wifi": bool(getattr(r, "Wifi", getattr(r, "WifiYN", 0)) or 0),
        "u_name": getattr(r, "U_Name", "") or "",
        "u_ae": getattr(r, "U_AE", "") or "",
    }


def _validate_roommast1(rec: dict):
    if not rec.get("room_no", "").strip():
        raise ValueError("Room number zaroori hai")
    if len(rec["room_no"]) > LIMITS["room"]:
        raise ValueError(f"Room no max {LIMITS['room']} chars")
    if not rec.get("room_name", "").strip():
        raise ValueError("Room name zaroori hai")
    if len(rec["room_name"]) > LIMITS["name"]:
        raise ValueError(f"Room name max {LIMITS['name']} chars")
    if len(rec.get("floor", "")) > LIMITS["floor"]:
        raise ValueError(f"Floor max {LIMITS['floor']} chars")
    if len(rec.get("room_type", "")) > LIMITS["type"]:
        raise ValueError(f"Room type max {LIMITS['type']} chars")


def roommast1_list(
    status: str = "", floor: str = "", room_type: str = "",
    active_only: bool = True, limit: int = 500, cn=None
) -> list[dict]:
    """List rooms.
    
    Args:
        status: Filter by status (A, O, M, R)
        floor: Filter by floor
        room_type: Filter by room type
        active_only: Only return active rooms
        limit: Maximum rows to return
        cn: Database connection (optional)
    """
    where = []
    params = []
    
    if status:
        where.append("Status = ?")
        params.append(status)
    if floor:
        where.append("Floor = ?")
        params.append(floor)
    if room_type:
        where.append("RoomType = ?")
        params.append(room_type)
    if active_only:
        where.append("Status IN ('A', 'O', 'R')")
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT TOP {limit} {SELECT_COLS} FROM roommast1{where_clause} ORDER BY Floor, RoomNo"
    
    params_tuple = tuple(params) if params else None
    rows = db.query(sql, params_tuple, cn=cn) if params_tuple is not None else db.query(sql, cn=cn)
    return [_map_roommast1(r) for r in rows]


def roommast1_get(room_no: str, cn=None) -> dict | None:
    """Get room by room number."""
    rows = db.query(f"SELECT {SELECT_COLS} FROM roommast1 WHERE RoomNo = ?", (room_no,), cn=cn)
    return _map_roommast1(rows[0]) if rows else None


def roommast1_by_floor(floor: str, cn=None) -> list[dict]:
    """Get all rooms on a floor."""
    return roommast1_list(floor=floor, active_only=False, cn=cn)


def roommast1_by_type(room_type: str, cn=None) -> list[dict]:
    """Get all rooms of a type."""
    return roommast1_list(room_type=room_type, cn=cn)


def roommast1_available(cn=None) -> list[dict]:
    """Get available rooms (status = A)."""
    return roommast1_list(status="A", cn=cn)


def roommast1_occupied(cn=None) -> list[dict]:
    """Get occupied rooms (status = O)."""
    return roommast1_list(status="O", cn=cn)


def roommast1_create(rec: dict, cn=None) -> int:
    """Create new room."""
    _validate_roommast1(rec)
    cols = "RoomNo, RoomName, Floor, RoomType, Status, Rate, MaxPax, BedType, AC, TV, Phone, Fridge, Safe, Wifi, U_Name, U_EntDt, U_AE"
    vals = (rec["room_no"], rec["room_name"], rec.get("floor", ""), rec.get("room_type", ""),
            rec.get("status", "A"), rec.get("rate", 0), rec.get("max_pax", 0), rec.get("bed_type", ""),
            1 if rec.get("ac") else 0, 1 if rec.get("tv") else 0, 1 if rec.get("phone") else 0,
            1 if rec.get("fridge") else 0, 1 if rec.get("safe") else 0, 1 if rec.get("wifi") else 0,
            db.get_user() or "SYSTEM", db.get_server_date(), db.get_server_time())
    db.execute(f"INSERT INTO roommast1 ({cols}) VALUES ({','.join(['?']*17)})", vals, cn=cn, commit=True)
    return 1


def roommast1_update(room_no: str, rec: dict, cn=None) -> int:
    """Update room."""
    _validate_roommast1(rec)
    db.execute(
        "UPDATE roommast1 SET RoomName = ?, Floor = ?, RoomType = ?, Status = ?, Rate = ?, MaxPax = ?, BedType = ?, AC = ?, TV = ?, Phone = ?, Fridge = ?, Safe = ?, Wifi = ?, U_Name = ?, U_AE = ? WHERE RoomNo = ?",
        (rec["room_name"], rec.get("floor", ""), rec.get("room_type", ""), rec.get("status", "A"),
         rec.get("rate", 0), rec.get("max_pax", 0), rec.get("bed_type", ""),
         1 if rec.get("ac") else 0, 1 if rec.get("tv") else 0, 1 if rec.get("phone") else 0,
         1 if rec.get("fridge") else 0, 1 if rec.get("safe") else 0, 1 if rec.get("wifi") else 0,
         db.get_user() or "SYSTEM", db.get_server_time(), room_no),
        cn=cn, commit=True)
    return 1


# Alias for compatibility with VB6 naming
roommast1_list_mst = roommast1_list
roommast1_get_mst = roommast1_get
roommast1_create_mst = roommast1_create
roommast1_update_mst = roommast1_update