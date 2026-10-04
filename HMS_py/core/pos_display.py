"""POS Display Table board (VB6: RsPOSDisplay / RsTouchDisplayTB).

Ye dono VB6 forms ek hi read-only "display board" hain jo outlet ke tables
ki live status + unsettled bills + pending orders dikhata hai, DispColor
legend ke colours se.

VB6 refs (RsPOSDisplay.frm):
  legend          loc_F50B2E  "Select * from DispColor"  (index > 4)
  tables          "SELECT LTrim(RTrim(RoomMast.Code)) as code, ... RoomMast
                   Left Join Depart D ON RoomMast.RestCode=D.Code Where
                   RoomMast.LOGSITE_CODE='...'"
  occupied        "Select LTrim(RTrim(T.Code)) as Code, T.Name, AA.WAITERNAME,
                   AA.VTime, T.RestCode From RoomMast T LEFT JOIN
                   (SELECT DISTINCT ROOMNO, KOT.DOCID, KOT.VTime, WAITER,
                    WAITER.NAME AS WAITERNAME FROM KOT LEFT JOIN WAITER ON
                    (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='...') AA ..."
  unsettled       RsTouchDisplayTB.frm loc_FFB561:
                   "SELECT Sale1.DocId, MAX(Sale1.VNo) AS [Bill No],
                    MAX(T.Code) AS [Table No], max(Waiter.Name) as Steward,
                    (Sum(SALE1.NetAmt)-Sum(IsNull(PAYCHARGE.AmtCr,0)))
                    As [Balance Amt.] FROM ((Sale1 LEFT JOIN PayCharge ON
                    Sale1.DocId=PayCharge.DocId) LEFT JOIN RoomMast AS T ON
                    (Sale1.RoomType=T.Type) AND (Sale1.RoomNo=T.Code) AND
                    (Sale1.RestCode=T.RestCode)) LEFT JOIN Waiter on
                    Sale1.Waiter=Waiter.Code WHERE PayCharge.DocId Is Null
                    AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') AND
                    Sale1.RoomType='TB' AND SALE1.restcode='...' GROUP BY
                    SALE1.DOCID ..."
  pending order   "SELECT Distinct P.Docid, P.VNo AS [Order No], P.CustName
                   As [Customer Name], P.PhoneNo As [Phone No], P.Addr1+', '+
                   P.Addr2 As Address, convert(varchar(11),P.DDate,103)+' '+
                   P.DTime As [Delivery Date] FROM PackingOrder P INNER JOIN
                   PackingOrderDetail PD ON P.Docid = PD.DocID WHERE
                   P.LogSite_Code='...'"

Live DB evidence (Moondata2627): RoomMast.Type='TB' -> 58 tables,
DispColor me index 5/6/7 = Occupied/Vacant/Billed rows present.
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()

# VB6 DispColor legend sirf index > 4 dikhata hai (Occupied/Vacant/Billed).
LEGEND_MIN_INDEX = 4

_TABLES_SQL = (
    "SELECT LTrim(RTrim(RM.Code)) AS Code, RM.Name, RM.RestCode, "
    "ISNULL(D.ShortName, '') AS RestName, ISNULL(D.KOTYn, 'N') AS KOTYn "
    "FROM RoomMast RM LEFT JOIN Depart D ON RM.RestCode = D.Code "
    "WHERE (RM.LogSite_Code = ? OR RM.LogSite_Code = 'HO') "
    "AND RM.Type = 'TB' ORDER BY LTrim(RTrim(RM.Code))"
)

_OCCUPIED_SQL = (
    "SELECT DISTINCT LTrim(RTrim(K.RoomNo)) AS Code, K.DocId, K.VTime, "
    "ISNULL(W.Name, '') AS WaiterName "
    "FROM KOT K LEFT JOIN Waiter W ON W.Code = K.Waiter "
    "WHERE K.RestCode = ? AND K.Pending = 'Y'"
)

_UNSETTLED_SQL = (
    "SELECT S.DocId, MAX(S.VNo) AS BillNo, MAX(T.Code) AS TableNo, "
    "MAX(W.Name) AS Steward, "
    "SUM(S.NetAmt) - SUM(ISNULL(P.AmtCr, 0)) AS BalanceAmt "
    "FROM ((Sale1 S LEFT JOIN PayCharge P ON S.DocId = P.DocId) "
    "LEFT JOIN RoomMast T ON (S.RoomType = T.Type) AND (S.RoomNo = T.Code) "
    "AND (S.RestCode = T.RestCode)) "
    "LEFT JOIN Waiter W ON S.Waiter = W.Code "
    "WHERE P.DocId IS NULL AND (S.DelFlag = '' OR S.DelFlag = 'N') "
    "AND S.RoomType = 'TB' AND S.RestCode = ? "
    "GROUP BY S.DocId ORDER BY MAX(T.Code)"
)

_PENDING_SQL = (
    "SELECT DISTINCT TOP 200 P.DocId, P.VNo AS OrderNo, P.CustName, P.PhoneNo, "
    "RTrim(ISNULL(P.Addr1, '') + ', ' + ISNULL(P.Addr2, '')) AS Address, "
    "CONVERT(varchar(11), P.DDate, 103) + ' ' + ISNULL(P.DTime, '') "
    "AS DeliveryDate "
    "FROM PackingOrder P INNER JOIN PackingOrderDetail PD "
    "ON P.DocId = PD.DocID "
    "WHERE P.LogSite_Code = ? ORDER BY P.VNo DESC"
)

_OUTLET_SQL = (
    "SELECT Code, Name, ISNULL(ShortName, '') AS ShortName FROM Depart "
    "WHERE LogSite_Code = ? AND (KOTYn = 'Y' OR RestType IN "
    "('Outlet', 'Room Service', 'Production')) ORDER BY Name"
)


def _s(val) -> str:
    return ("" if val is None else str(val)).strip()


def legend(cn=None) -> list[dict]:
    """VB6 loc_F50B2E: Select * from DispColor (index > 4 wale labels)."""
    out = []
    for r in db.query("SELECT [Index], Color, Detail FROM DispColor "
                      "WHERE [Index] > ? ORDER BY [Index]",
                      (LEGEND_MIN_INDEX,), cn=cn):
        try:
            idx, color, detail = int(r[0]), int(r[1]), _s(r[2])
        except (TypeError, ValueError, IndexError):
            idx, color, detail = int(r.Index), int(r.Color), _s(r.Detail)
        out.append({"index": idx, "color": color, "detail": detail})
    return out


def outlets(cn=None) -> list[dict]:
    """Outlet picker (VB6 `global_52` = current RestCode)."""
    out = []
    for r in db.query(_OUTLET_SQL, (SITE_CODE,), cn=cn):
        try:
            out.append({"code": _s(r[0]), "name": _s(r[1]),
                        "shortname": _s(r[2])})
        except IndexError:
            out.append({"code": _s(r.Code), "name": _s(r.Name),
                        "shortname": _s(r.ShortName)})
    return out


def table_status(restcode: str, cn=None) -> list[dict]:
    """RoomMast(Type='TB') + open KOT -> per-table status board.

    status: 'Occupied' (pending KOT) > 'Vacant' (kuch nahi).
    'Billed' (Sale1 hai par PayCharge nahi) unsettled_bills() se aata hai -
    usse merge karke UI final colour lagata hai (VB6 ke 3 labels ke hisaab se).
    """
    occupied = {}
    for r in db.query(_OCCUPIED_SQL, (restcode,), cn=cn):
        try:
            code, docid, vtime, waiter = _s(r[0]), _s(r[1]), _s(r[2]), _s(r[3])
        except IndexError:
            code, docid, vtime, waiter = _s(r.Code), _s(r.DocId), \
                _s(r.VTime), _s(r.WaiterName)
        occupied[code] = {"docid": docid, "vtime": vtime, "waiter": waiter}

    billed = {row["tableno"] for row in unsettled_bills(restcode, cn=cn)}

    out = []
    for r in db.query(_TABLES_SQL, (SITE_CODE,), cn=cn):
        try:
            code, name, rest, short, kotyn = (_s(r[0]), _s(r[1]), _s(r[2]),
                                              _s(r[3]), _s(r[4]))
        except IndexError:
            code, name, rest, short = _s(r.Code), _s(r.Name), _s(r.RestCode), \
                _s(r.RestName)
            kotyn = _s(r.KOTYn)
        if restcode and rest and rest != restcode:
            continue
        occ = occupied.get(code)
        if occ:
            status = "Occupied"
        elif code in billed:
            status = "Billed"
        else:
            status = "Vacant"
        out.append({
            "code": code, "name": name, "restcode": rest,
            "restname": short, "kotyn": kotyn, "status": status,
            "docid": (occ or {}).get("docid", ""),
            "vtime": (occ or {}).get("vtime", ""),
            "waiter": (occ or {}).get("waiter", ""),
        })
    return out


def unsettled_bills(restcode: str, cn=None) -> list[dict]:
    """VB6 loc_FFB561 - jin bills par koi PayCharge hi nahi laga."""
    out = []
    for r in db.query(_UNSETTLED_SQL, (restcode,), cn=cn):
        try:
            out.append({"docid": _s(r[0]), "billno": r[1],
                        "tableno": _s(r[2]), "steward": _s(r[3]),
                        "balance": float(r[4] or 0)})
        except (IndexError, TypeError, ValueError):
            out.append({"docid": _s(r.DocId), "billno": r.BillNo,
                        "tableno": _s(r.TableNo), "steward": _s(r.Steward),
                        "balance": float(r.BalanceAmt or 0)})
    return out


def pending_orders(cn=None, limit: int = 200) -> list[dict]:
    """VB6 PENDING ORDER frame - PackingOrder + PackingOrderDetail."""
    out = []
    for r in db.query(_PENDING_SQL, (SITE_CODE,), cn=cn):
        try:
            out.append({"docid": _s(r[0]), "orderno": r[1],
                        "custname": _s(r[2]), "phoneno": _s(r[3]),
                        "address": _s(r[4]), "delivery": _s(r[5])})
        except (IndexError, TypeError):
            out.append({"docid": _s(r.DocId), "orderno": r.OrderNo,
                        "custname": _s(r.CustName),
                        "phoneno": _s(r.PhoneNo), "address": _s(r.Address),
                        "delivery": _s(r.DeliveryDate)})
        if len(out) >= limit:
            break
    return out
