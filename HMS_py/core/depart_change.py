"""Department / Restaurant change selectors (VB6 FrmChangeDepart + FrmChangeRest).

VB6 ye do chhote dialogs hain jo ek Depart pick karte hain aur OK par
`RestType` + `BackColor` nikaal kar caller ke globals me bhar dete the
(current department / current outlet ka selection).

VB6 refs:
  FrmChangeDepart.frm Form_Load (loc_F2AB4E):
      SELECT CODE, NAME FROM Depart Where OutletYN<>'Y'
        and RestType='House Keeping' ORDER BY NAME
  FrmChangeDepart.frm CmdOK_Click (loc_F60CEE):
      Select RestType,BackColor From Depart Where Code='<BoundText>'
  FrmChangeRest.frm Form_Load (loc_FEFE31 / loc_FEFF0F):
      PSalePoint='PointOfSale' -> LOGSITE_CODE='<site>' AND
        RestType in ('Outlet','Room Service','Production')
      PSalePoint='DirectSale'  -> LOGSITE_CODE='<site>' AND
        RestType in ('Direct Sale')
  FrmChangeRest.frm CmdOK_Click (loc_1055299): wahi RestType/BackColor
      lookup, phir Unload.

NOTE: live DB me RestType ki values {Outlet, Room Service, ...} hain aur
'Direct Sale' koi RestType nahi (verified Moondata2627) - isliye DirectSale
branch yahan khali list de sakta hai. VB6 bhi wahi khali list dikhata.
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()

# VB6 Form_Load combo list -> (code, name)
_HK_SQL = (
    "SELECT Code, Name FROM Depart "
    "WHERE OutletYN <> 'Y' AND RestType = 'House Keeping' ORDER BY Name"
)
_POS_SQL = (
    "SELECT Code, Name FROM Depart "
    "WHERE LogSite_Code = ? AND RestType IN "
    "('Outlet', 'Room Service', 'Production') ORDER BY Name"
)
_DIRECT_SQL = (
    "SELECT Code, Name FROM Depart "
    "WHERE LogSite_Code = ? AND RestType IN ('Direct Sale') ORDER BY Name"
)
# VB6 CmdOK_Click: RestType + BackColor dono isi lookup se aate hain.
_LOOKUP_SQL = "SELECT RestType, BackColor FROM Depart WHERE Code = ?"


def _rows(sql, params=(), cn=None) -> list[dict]:
    out = []
    for r in db.query(sql, params, cn=cn):
        try:
            out.append({"code": (r.Code or "").strip(),
                        "name": (r.Name or "").strip()})
        except AttributeError:
            v = list(r)
            out.append({"code": (v[0] or "").strip(),
                        "name": (v[1] or "").strip()})
    return out


def housekeeping_departments(cn=None) -> list[dict]:
    """VB6 FrmChangeDepart Form_Load - House Keeping outlets (OutletYN<>'Y')."""
    return _rows(_HK_SQL, cn=cn)


def outlet_departments(point_of_sale: bool = True, logsite_code: str = "",
                       cn=None) -> list[dict]:
    """VB6 FrmChangeRest Form_Load - current sale-point ke departments.

    point_of_sale=True  -> 'PointOfSale' branch (Outlet/Room Service/Production)
    point_of_sale=False -> 'DirectSale' branch (RestType='Direct Sale')
    """
    site = logsite_code or SITE_CODE
    return _rows(_POS_SQL if point_of_sale else _DIRECT_SQL, (site,), cn=cn)


def depart_lookups(code: str, cn=None) -> dict:
    """VB6 CmdOK_Click: Select RestType,BackColor From Depart Where Code=...

    Returns {'resttype': str, 'backcolor': int}.  Code na mile to
    {'resttype': '', 'backcolor': 0} (VB6 bhi RecordCount=0 par defaults
    rakhta tha).
    """
    rows = db.query(_LOOKUP_SQL, (str(code or "").strip(),), cn=cn)
    if not rows:
        return {"resttype": "", "backcolor": 0}
    r = rows[0]
    resttype, backcolor = r[0], r[1]  # SELECT RestType, BackColor
    return {"resttype": (resttype or "").strip(),
            "backcolor": int(backcolor or 0)}
