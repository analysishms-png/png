"""AUDIT-20261005 P2-H — Room Category (RoomCat) full column-set parity.

VB6 FrmRoomCatMast.frm:
  insert loc_175242B : Type,Code,Name,ShortName,RevCode,RetChg,CancelChg,
                       MinAdv,NoRooms,MultPer,InclCount,Site_Code,U_Name,
                       U_EntDt,U_AE,LogSite_Code,MapCode
  update loc_17527E4 : + ActiveYN, MapCode ; WHERE Code AND Type
"""
import os

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

pytestmark = pytest.mark.unit


class FakeDB:
    def __init__(self):
        self.queries = []
        self.executes = []

    def query(self, sql, params=(), cn=None):
        self.queries.append((" ".join(sql.split()), tuple(params)))
        return []

    def execute(self, sql, params=(), cn=None, commit=True):
        self.executes.append((" ".join(sql.split()), tuple(params)))
        return 1


@pytest.fixture
def fake(monkeypatch):
    from HMS_py.core import db as dbmod
    f = FakeDB()
    monkeypatch.setattr(dbmod, "query", f.query)
    monkeypatch.setattr(dbmod, "execute", f.execute)
    return f


def _rec(**kw):
    rec = {"code": "DELX", "name": "Deluxe", "short": "DLX",
           "maxperson": "2", "revcode": "R00001",
           "retchg": "10", "cancelchg": "5", "minadv": "500",
           "norooms": "12", "multper": "3", "inclcount": "Y",
           "mapcode": "DELUXE-MAP"}
    rec.update(kw)
    return rec


def test_insert_writes_all_vb6_columns(fake):
    from HMS_py.core import roomcategory
    roomcategory.insert(_rec())
    sql, params = fake.executes[-1]
    for col in ("Type", "Code", "Name", "ShortName", "RevCode", "RetChg",
                "CancelChg", "MinAdv", "NoRooms", "MultPer", "InclCount",
                "Site_Code", "U_Name", "U_EntDt", "U_AE", "LogSite_Code",
                "MapCode"):
        assert col in sql, col
    assert params[6] == 10.0 and params[7] == 5.0 and params[8] == 500.0
    assert params[9] == 12 and params[10] == 3
    assert params[11] == "Y"                     # InclCount (Left 1)
    assert params[12] == "DELUXE-MAP"            # MapCode


def test_update_writes_all_vb6_columns_and_activeyn(fake):
    from HMS_py.core import roomcategory
    roomcategory.update("DELX", _rec(activeyn="Y"))
    sql, params = fake.executes[-1]
    for col in ("RetChg", "CancelChg", "MinAdv", "NoRooms", "MultPer",
                "InclCount", "MapCode", "ActiveYN", "Site_Code"):
        assert col in sql, col
    assert "WHERE Code = ? AND Type = ?" in sql
    assert params[-2] == "DELX" and params[-1] == "RO"


def test_mapcode_and_inclcount_limits(fake):
    from HMS_py.core import roomcategory
    with pytest.raises(ValueError, match="MapCode max 20 chars"):
        roomcategory.insert(_rec(mapcode="M" * 21))
    with pytest.raises(ValueError, match="InclCount max 1 chars"):
        roomcategory.insert(_rec(inclcount="YY"))
