"""POS Delivery module - AssignDelivery/DeliveryBoy/GuestReward CRUD.

Tables verified in DB KailashData2526:
  AssignDelivery - delivery tracking (DocId, DeliBoy, BillAmt)
  DeliveryBoy    - delivery boy master (already in pos_masters.py, ref provided)
  GuestReward    - reward points (DocId, CustCode, RewardPoint, RedemPoint)
"""
from __future__ import annotations

import datetime

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()


# ============================================================
# AssignDelivery - Delivery Tracking
# ============================================================
_ASSIGNDEL_COLS = (
    "DocId, Vtype, VNo, Vprefix, Vdate, Ddate, RestCode, DeliBoy, "
    "BillAmt, Remark, Site_Code, U_Name, U_AE, U_EntDt, LogSite_Code"
)


def _map_assign(r) -> dict:
    try:
        return {
            "docid": r.DocId or "", "vtype": r.Vtype or "",
            "vno": int(r.VNo or 0), "vprefix": r.Vprefix or "",
            "vdate": r.Vdate, "ddate": r.Ddate,
            "restcode": r.RestCode or "", "deliboy": r.DeliBoy or "",
            "billamt": float(r.BillAmt or 0), "remark": r.Remark or "",
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        vals = list(r)
        return {
            "docid": vals[0] or "", "vtype": vals[1] or "",
            "vno": int(vals[2] or 0), "vprefix": vals[3] or "",
            "vdate": vals[4], "ddate": vals[5],
            "restcode": vals[6] or "", "deliboy": vals[7] or "",
            "billamt": float(vals[8] or 0), "remark": vals[9] or "",
            "u_name": vals[11] or "", "u_ae": vals[12] or "",
        }


def _validate_assign(rec: dict):
    if not rec.get("docid", "").strip():
        raise ValueError("DocId zaroori hai")


def assign_list(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {int(limit)} {_ASSIGNDEL_COLS} FROM AssignDelivery ORDER BY U_EntDt DESC",
        cn=cn)
    return [_map_assign(r) for r in rows]


def assign_get(docid: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {_ASSIGNDEL_COLS} FROM AssignDelivery WHERE DocId = ?",
        (docid,), cn=cn)
    return _map_assign(rows[0]) if rows else None


def assign_search(deliboy: str, cn=None, limit: int = 100) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {int(limit)} {_ASSIGNDEL_COLS} FROM AssignDelivery "
        "WHERE DeliBoy LIKE ? ORDER BY U_EntDt DESC",
        (f"%{deliboy}%",), cn=cn)
    return [_map_assign(r) for r in rows]


def assign_insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate_assign(rec)
    return db.execute(
        "INSERT INTO AssignDelivery (DocId, Vtype, VNo, Vprefix, Vdate, "
        "Ddate, RestCode, DeliBoy, BillAmt, Remark, Site_Code, "
        "U_Name, U_AE, U_EntDt, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), ?)",
        (rec["docid"], rec.get("vtype", ""), int(rec.get("vno") or 0),
         rec.get("vprefix", ""), rec.get("vdate"), rec.get("ddate"),
         rec.get("restcode", ""), rec.get("deliboy", ""),
         float(rec.get("billamt") or 0), rec.get("remark", ""),
         SITE_CODE, USER, "A", SITE_CODE),
        cn=cn, commit=commit)


def assign_update(docid: str, rec: dict, cn=None, commit: bool = True) -> int:
    return db.execute(
        "UPDATE AssignDelivery SET DeliBoy = ?, BillAmt = ?, Remark = ?, "
        "Ddate = ?, U_Name = ?, U_AE = 'E', U_EntDt = getdate() "
        "WHERE DocId = ?",
        (rec.get("deliboy", ""), float(rec.get("billamt") or 0),
         rec.get("remark", ""), rec.get("ddate"), USER, docid),
        cn=cn, commit=commit)


def assign_delete(docid: str, cn=None, commit: bool = True) -> int:
    return db.execute("DELETE FROM AssignDelivery WHERE DocId = ?", (docid,),
                      cn=cn, commit=commit)


class _AssignDelAPI:
    LIMITS = {"docid": 30, "vtype": 5, "deliboy": 10, "remark": 50}
    @staticmethod
    def list_all(cn=None, limit=500): return assign_list(cn, limit)
    @staticmethod
    def get(docid, cn=None): return assign_get(docid, cn)
    @staticmethod
    def search(deliboy, cn=None, limit=100): return assign_search(deliboy, cn, limit)
    @staticmethod
    def insert(rec, cn=None, commit=True): return assign_insert(rec, cn, commit)
    @staticmethod
    def update(docid, rec, cn=None, commit=True): return assign_update(docid, rec, cn, commit)
    @staticmethod
    def delete(docid, cn=None, commit=True): return assign_delete(docid, cn, commit)

AssignDelAPI = _AssignDelAPI()


# ============================================================
# VB6 RsAssignDelivery - menu leaf "Assign Delivery"
# (form caption "Member Category Wise Revenue" = stale; asli kaam:
#  AssignDelivery browser + baki hue bill pe delivery-boy assign)
# VB6 refs: RsAssignDelivery.frm loc_109E614 (browse), loc_141E214
# (unassigned picker), loc_14BB527 (insert), loc_115A697 (delete),
# loc_13749A5 (detail)  |  ModuleAdd.bas:3854 (dispatcher)
# ============================================================
DEPART_VTYPE_SQL = "SELECT 'B'+ShortName FROM Depart WHERE Code = ?"


def _truthy(val) -> bool:
    return str(val or "").strip().lower() in ("y", "yes", "1", "true")


def depart_vtype(depart_code: str, cn=None) -> str:
    """VB6 loc_109E692: Select 'B'+ShortName From Depart Where Code=..."""
    rows = db.query(DEPART_VTYPE_SQL, (depart_code,), cn=cn)
    if not rows or not rows[0][0]:
        raise ValueError(f"Department nahi mila: {depart_code}")
    return rows[0][0]


def use_split_table(depart_code: str, cn=None) -> bool:
    """VB6 loc_141E1E6: MultiBillGeneration='Yes' AND dept AutoSplit
    -> SplitSale1, warna Sale1. Live Enviro.MultiBillGeneration='' hai
    (verified) -> hamesha Sale1."""
    env = db.query("SELECT TOP 1 MultiBillGeneration FROM Enviro", cn=cn)
    if not env or not _truthy(env[0][0]):
        return False
    ap = db.query("SELECT AutoSplit FROM Depart WHERE Code = ?",
                  (depart_code,), cn=cn)
    return bool(ap and _truthy(ap[0][0]))


def _map_bill(r) -> dict:
    try:
        return {
            "docid": r.DocId or "", "vtype": r.VType or "",
            "vno": int(r.VNo or 0), "vprefix": r.VPrefix or "",
            "vdate": r.VDate, "vtime": r.VTime,
            "restcode": r.RestCode or "", "netamt": float(r.NetAmt or 0),
        }
    except AttributeError:
        v = list(r)
        return {
            "docid": v[0] or "", "vtype": v[1] or "",
            "vno": int(v[2] or 0), "vprefix": v[3] or "",
            "vdate": v[4], "vtime": v[5],
            "restcode": v[6] or "", "netamt": float(v[7] or 0),
        }


def unassigned_bills(depart_code: str | None = None,
                     date_from: "datetime.date | None" = None,
                     date_to: "datetime.date | None" = None,
                     cn=None, limit: int = 500) -> list[dict]:
    """VB6 loc_141E214/141E423 - abhi tak bina DeliBoy wale bills.

    Base (VB6 asli SQL):
      Select Cast(S.VNo As Varchar) Code, Cast(S.VNo As Varchar) Name,
             S.DocID,S.Vtype,S.Vprefix,S.Vdate,S.Vtime,S.RestCode,S.NetAmt
      From <Sale1|SplitSale1> S
      LEFT JOIN AssignDelivery AD ON S.DocId=AD.DocId
      INNER JOIN Voucher_Type V ON (S.VType=V.V_Type AND S.Site_Code=V.Site_Code)
      WHERE ISNULL(AD.DeliBoy,'')='' And S.LOGSITE_CODE='<site>'
        [And S.VDate between .. And .. | And S.VDate=<din>]
        And (S.DELFLAG='N' Or S.DELFLAG='') And S.VTYPE='B'+ShortName
      Order By S.DOCID

    Safe-fix (BUG-002 jaisa): VB6 date-literal equality `VDate='dd/mm/yyyy'`
    `getdate()` ke time-part se kabhi match nahi karti -> is port me din-bhar
    ka range (`>= din And < din+1`) use hota hai.
    """
    today = datetime.date.today()
    d1 = date_from or today
    d2 = (date_to or d1)
    if d2 < d1:
        raise ValueError("To date From date se pehle nahi ho sakta")
    table = "SplitSale1" if (depart_code and use_split_table(depart_code, cn)) \
        else "Sale1"
    sql = (
        f"SELECT TOP {int(limit)} S.DocId, S.VType, S.VNo, S.VPrefix, "
        "S.VDate, S.VTime, S.RestCode, S.NetAmt "
        f"FROM {table} S "
        "LEFT JOIN AssignDelivery AD ON S.DocId = AD.DocId "
        "INNER JOIN Voucher_Type V ON (S.VType = V.V_Type "
        "AND S.Site_Code = V.Site_Code) "
        "WHERE ISNULL(AD.DeliBoy,'') = '' AND S.LogSite_Code = ? "
        "AND (S.DelFlag = 'N' OR S.DelFlag = '') "
        "AND S.VDate >= ? AND S.VDate < DATEADD(day, 1, ?)")
    params: list = [SITE_CODE, d1, d2]
    if depart_code:
        # VB6: And S.VTYPE='B'+ShortName (RestCode filter VB6 me nahi)
        sql += " AND S.VType = ?"
        params.append(depart_vtype(depart_code, cn))
    sql += " ORDER BY S.DocId"
    return [_map_bill(r) for r in db.query(sql, tuple(params), cn=cn)]


def browse_assignments(date_from: "datetime.date | None" = None,
                       date_to: "datetime.date | None" = None,
                       depart_code: str | None = None,
                       cn=None, limit: int = 500) -> list[dict]:
    """VB6 loc_109E614 - AssignDelivery search/browse grid.

    VB6: Select S.Docid as SearchCode, S.VNo as [Bill_No],
         Convert(VARCHAR(17),S.VDate,103) as [Bill_Date],
         Convert(VARCHAR(17),S.DDate,103) as [Deli_Date],
         DB.Name As Delivery_Boy, S.BillAmt, S.Remark
    From (AssignDelivery S INNER Join Voucher_Type V On
         (S.VType=V.V_Type AND S.SITE_CODE=V.SITE_CODE))
    INNER Join DeliveryBoy DB On S.DeliBoy=DB.Code
    Where S.LOGSITE_CODE='<site>' And S.VDate between .. And ..
      And V_Type='B'+ShortName  Order By S.docid

    NOTE: VB6 do alag queries use karta hai - loc_109E614 me
    `INNER Join DeliveryBoy DB On S.DeliBoy=DB.Code` (jiske wajah se bina
    DeliBoy wale rows gayab) aur loc_13749A5 me `Left Join DeliveryBoy DB`.
    Is port me filters loc_109E614 ke hain, par DeliveryBoy **LEFT** join
    hai (warna aajki empty DeliveryBoy master ki wajah se browser hamesha
    khaali dikhega).
    """
    today = datetime.date.today()
    d1 = date_from or today
    d2 = date_to or d1
    if d2 < d1:
        raise ValueError("To date From date se pehle nahi ho sakta")
    sql = (
        f"SELECT TOP {int(limit)} S.DocId, S.VNo, "
        "CONVERT(varchar(11), S.VDate, 103) AS VDate, "
        "CONVERT(varchar(11), S.DDate, 103) AS DDate, "
        "DB.Name AS DeliveryBoy, S.BillAmt, S.Remark, S.VType, S.DeliBoy "
        "FROM (AssignDelivery S INNER JOIN Voucher_Type V ON "
        "(S.VType = V.V_Type AND S.Site_Code = V.Site_Code)) "
        "LEFT JOIN DeliveryBoy DB ON S.DeliBoy = DB.Code "
        "WHERE S.LogSite_Code = ? AND S.VDate >= ? "
        "AND S.VDate < DATEADD(day, 1, ?)")
    params: list = [SITE_CODE, d1, d2]
    if depart_code:
        sql += " AND S.VType = ?"
        params.append(depart_vtype(depart_code, cn))
    sql += " ORDER BY S.DocId"
    out = []
    for r in db.query(sql, tuple(params), cn=cn):
        try:
            out.append({"docid": r.DocId or "", "vno": int(r.VNo or 0),
                        "vdate": r.VDate, "ddate": r.DDate,
                        "deliboy_name": r.DeliveryBoy or "",
                        "billamt": float(r.BillAmt or 0),
                        "remark": r.Remark or "", "vtype": r.VType or "",
                        "deliboy": r.DeliBoy or ""})
        except AttributeError:
            v = list(r)
            out.append({"docid": v[0] or "", "vno": int(v[1] or 0),
                        "vdate": v[2], "ddate": v[3],
                        "deliboy_name": v[4] or "",
                        "billamt": float(v[5] or 0), "remark": v[6] or "",
                        "vtype": v[7] or "", "deliboy": v[8] or ""})
    return out


def delivery_boys(cn=None) -> list[dict]:
    """VB6 loc_141E86D: Select Code, Name From DeliveryBoy Where
    (LOGSITE_CODE='<site>' Or LOGSITE_CODE='HO') Order By Name"""
    rows = db.query(
        "SELECT Code, Name FROM DeliveryBoy "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Name",
        (SITE_CODE,), cn=cn)
    out = []
    for r in rows:
        try:
            out.append({"code": r.Code or "", "name": r.Name or ""})
        except AttributeError:
            v = list(r)
            out.append({"code": v[0] or "", "name": v[1] or ""})
    return out


def assign_bill(bill: dict, deliboy: str, remark: str = "",
                ddate=None, cn=None, commit: bool = True) -> int:
    """VB6 loc_14BB527: Insert Into AssignDelivery (DocId,Vtype,VNo,Vprefix,
    Vdate,Ddate,RestCode,DeliBoy,BillAmt,Remark,U_Name,U_EntDt,U_AE,
    Site_Code,LogSite_Code) Values (...).  Har selected grid-row ke liye ek."""
    if not str(bill.get("docid", "")).strip():
        raise ValueError("Bill DocId zaroori hai")
    if not str(deliboy or "").strip():
        raise ValueError("Delivery boy zaroori hai")
    if assign_get(bill["docid"], cn=cn):
        raise ValueError("Ye bill pehle se assign ho chuka hai")
    rec = {
        "docid": bill["docid"], "vtype": bill.get("vtype", ""),
        "vno": bill.get("vno"), "vprefix": bill.get("vprefix", ""),
        "vdate": bill.get("vdate"),
        "ddate": ddate or bill.get("vdate"),
        "restcode": bill.get("restcode", ""), "deliboy": deliboy,
        "billamt": bill.get("netamt", bill.get("billamt", 0)),
        "remark": remark,
    }
    return assign_insert(rec, cn=cn, commit=commit)


# ============================================================
# GuestReward - Reward Points
# ============================================================
_GUESTREWARD_COLS = (
    "DocId, CustCode, Vdate, DepartName, BillNo, BillAmt, RewardPoint, "
    "RedemPoint, MobileNo, Site_code, LogSite_Code, U_Name, U_AE, "
    "U_EntDt, Total, DiscAmt, RestCode, SchemeCode, SaleUpTo, "
    "RPointOnAmt, RewardValue, RedeemValue, RegId, DiscPer"
)


def _map_reward(r) -> dict:
    try:
        return {
            "docid": r.DocId or "", "custcode": r.CustCode or "",
            "vdate": r.Vdate, "departname": r.DepartName or "",
            "billno": r.BillNo or "", "billamt": float(r.BillAmt or 0),
            "rewardpoint": float(r.RewardPoint or 0),
            "redeempoint": float(r.RedemPoint or 0),
            "mobileno": r.MobileNo or "",
            "total": float(r.Total or 0),
            "discamt": float(r.DiscAmt or 0),
            "restcode": r.RestCode or "", "schemecode": r.SchemeCode or "",
            "saleupto": float(r.SaleUpTo or 0),
            "rpointonamt": float(r.RPointOnAmt or 0),
            "rewardvalue": float(r.RewardValue or 0),
            "redeemvalue": float(r.RedeemValue or 0),
            "regid": r.RegId or "",
            "discper": float(r.DiscPer or 0),
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        vals = list(r)
        return {
            "docid": vals[0] or "", "custcode": vals[1] or "",
            "vdate": vals[2], "departname": vals[3] or "",
            "billno": vals[4] or "", "billamt": float(vals[5] or 0),
            "rewardpoint": float(vals[6] or 0),
            "redeempoint": float(vals[7] or 0),
            "mobileno": vals[8] or "",
            "total": float(vals[13] if len(vals) > 13 else 0),
            "discamt": float(vals[14] if len(vals) > 14 else 0),
            "restcode": vals[15] if len(vals) > 15 else "",
            "schemecode": vals[16] if len(vals) > 16 else "",
            "saleupto": float(vals[18] if len(vals) > 18 else 0),
            "rpointonamt": float(vals[19] if len(vals) > 19 else 0),
            "rewardvalue": float(vals[20] if len(vals) > 20 else 0),
            "redeemvalue": float(vals[21] if len(vals) > 21 else 0),
            "regid": vals[22] if len(vals) > 22 else "",
            "discper": float(vals[23] if len(vals) > 23 else 0),
            "u_name": vals[11] or "", "u_ae": vals[12] or "",
        }


def _validate_reward(rec: dict):
    if not rec.get("docid", "").strip():
        raise ValueError("DocId zaroori hai")


def reward_list(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {int(limit)} {_GUESTREWARD_COLS} FROM GuestReward ORDER BY U_EntDt DESC",
        cn=cn)
    return [_map_reward(r) for r in rows]


def reward_get(docid: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {_GUESTREWARD_COLS} FROM GuestReward WHERE DocId = ?",
        (docid,), cn=cn)
    return _map_reward(rows[0]) if rows else None


def reward_search(custcode: str, cn=None, limit: int = 100) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {int(limit)} {_GUESTREWARD_COLS} FROM GuestReward "
        "WHERE CustCode LIKE ? ORDER BY U_EntDt DESC",
        (f"%{custcode}%",), cn=cn)
    return [_map_reward(r) for r in rows]


def reward_insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate_reward(rec)
    return db.execute(
        "INSERT INTO GuestReward (DocId, CustCode, Vdate, DepartName, "
        "BillNo, BillAmt, RewardPoint, RedemPoint, MobileNo, Site_code, "
        "LogSite_Code, U_Name, U_AE, U_EntDt, Total, DiscAmt, RestCode, "
        "SchemeCode, SaleUpTo, RPointOnAmt, RewardValue, RedeemValue, "
        "RegId, DiscPer) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), ?, ?, "
        "?, ?, ?, ?, ?, ?, ?, ?)",
        (rec["docid"], rec.get("custcode", ""), rec.get("vdate"),
         rec.get("departname", ""), rec.get("billno", ""),
         float(rec.get("billamt") or 0), float(rec.get("rewardpoint") or 0),
         float(rec.get("redeempoint") or 0), rec.get("mobileno", ""),
         SITE_CODE, SITE_CODE, USER, "A",
         float(rec.get("total") or 0), float(rec.get("discamt") or 0),
         rec.get("restcode", ""), rec.get("schemecode", ""),
         float(rec.get("saleupto") or 0), float(rec.get("rpointonamt") or 0),
         float(rec.get("rewardvalue") or 0), float(rec.get("redeemvalue") or 0),
         rec.get("regid", ""), float(rec.get("discper") or 0)),
        cn=cn, commit=commit)


def reward_update(docid: str, rec: dict, cn=None, commit: bool = True) -> int:
    return db.execute(
        "UPDATE GuestReward SET RewardPoint = ?, RedemPoint = ?, "
        "BillAmt = ?, Total = ?, DiscAmt = ?, "
        "U_Name = ?, U_AE = 'E', U_EntDt = getdate() WHERE DocId = ?",
        (float(rec.get("rewardpoint") or 0), float(rec.get("redeempoint") or 0),
         float(rec.get("billamt") or 0), float(rec.get("total") or 0),
         float(rec.get("discamt") or 0), USER, docid),
        cn=cn, commit=commit)


def reward_delete(docid: str, cn=None, commit: bool = True) -> int:
    return db.execute("DELETE FROM GuestReward WHERE DocId = ?", (docid,),
                      cn=cn, commit=commit)


class _GuestRewardAPI:
    LIMITS = {"docid": 30, "custcode": 10, "billno": 15, "mobileno": 15}
    @staticmethod
    def list_all(cn=None, limit=500): return reward_list(cn, limit)
    @staticmethod
    def get(docid, cn=None): return reward_get(docid, cn)
    @staticmethod
    def search(custcode, cn=None, limit=100): return reward_search(custcode, cn, limit)
    @staticmethod
    def insert(rec, cn=None, commit=True): return reward_insert(rec, cn, commit)
    @staticmethod
    def update(docid, rec, cn=None, commit=True): return reward_update(docid, rec, cn, commit)
    @staticmethod
    def delete(docid, cn=None, commit=True): return reward_delete(docid, cn, commit)

GuestRewardAPI = _GuestRewardAPI()
