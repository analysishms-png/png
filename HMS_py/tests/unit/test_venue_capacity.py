"""Unit tests: Venue capacity core (mocked-db, no live DB).

Invariants: string capacity key (varchar col), VenueMast guard,
insert-vs-update branch, U_Name absent from SQL (col not in table).
run: python -m pytest tests/unit/test_venue_capacity.py -q"""
from types import SimpleNamespace

import pytest

from HMS_py.core import db, venue


class FakeCn:
    def __init__(self):
        self.committed = False
        self.rolled_back = False
        self.closed = False
        self._rows = []

    def cursor(self):
        cur = SimpleNamespace(
            execute=lambda sql, params=None: None,
            fetchone=lambda: (1,))
        return cur

    def commit(self): self.committed = True
    def rollback(self): self.rolled_back = True
    def close(self): self.closed = True


def _apply(monkeypatch, query=None, venue_exists=True, row_exists=0):
    """query: optional db.query override; venue_exists: VenueMast check;
    row_exists: raw-cursor COUNT result (VenueCapacity key exists)."""
    monkeypatch.setattr(db, "connect", lambda: FakeCn())

    def base_query(sql, params=None, cn=None):
        if "FROM VenueMast" in sql:
            return [SimpleNamespace(C=1)] if venue_exists else []
        return []

    monkeypatch.setattr(db, "query", query or base_query)
    # capacity_upsert ka raw-cursor exists-check (cn.cursor)
    import HMS_py.core.venue as vmod
    orig_connect = vmod.db.connect
    # db.connect patched via db module; cursor fake per-call:
    class _Cn(FakeCn):
        def cursor(self):
            return SimpleNamespace(
                execute=lambda sql, params=None: None,
                fetchone=lambda: (row_exists,))

    monkeypatch.setattr(db, "connect", lambda: _Cn())


def test_upsert_requires_venue_and_capacity(monkeypatch):
    _apply(monkeypatch)
    with pytest.raises(ValueError, match="Venue code zaroori"):
        venue.capacity_upsert("", "50", 10, 5)
    with pytest.raises(ValueError, match="Capacity zaroori"):
        venue.capacity_upsert("UMA", "  ", 10, 5)


def test_upsert_venue_must_exist(monkeypatch):
    _apply(monkeypatch, venue_exists=False)
    with pytest.raises(ValueError, match="VenueMast me nahi"):
        venue.capacity_upsert("ZZZ", "50", 10, 5)


def test_upsert_insert_branch_keeps_string_capacity(monkeypatch):
    execs = []
    _apply(monkeypatch, row_exists=0)
    monkeypatch.setattr(db, "execute",
                        lambda sql, params=None, cn=None, commit=False:
                        execs.append((sql, params)) or 1)
    venue.capacity_upsert("UMA", "Informal", 200.0, 200.0, "pic/x.png",
                          user="T")
    ins = [e for e in execs if e[0].startswith("INSERT INTO VenueCapacity")]
    assert len(ins) == 1
    assert ins[0][1][1] == "Informal"          # capacity string pass-through
    # PicPath live me IMAGE (varbinary) hai — bytes me convert hona chahiye
    assert ins[0][1][4] == b"pic/x.png"
    # U_Name col live table me NAHI hai — invariant
    assert "U_Name" not in ins[0][0]
    assert "U_EntDt" in ins[0][0] and "'A'" in ins[0][0]
    # live-smoke regression: marker-count == param-count
    assert ins[0][0].count("?") == len(ins[0][1])


def test_capacity_list_decodes_image_picpath(monkeypatch):
    """PicPath IMAGE col se read: bytes -> utf-8 path-text."""
    def fake_query(sql, params=None, cn=None):
        if "FROM VenueCapacity" in sql:
            return [SimpleNamespace(VenueCode="UMA", Capacity="Informal",
                                    Seating=200.0, Floating=200.0,
                                    PicPath=b"pics/hall.png",
                                    U_AE="A")]
        return []

    _apply(monkeypatch, query=fake_query)
    rows = venue.capacity_list("UMA")
    assert rows[0]["picpath"] == "pics/hall.png"


def test_upsert_update_branch_scoped_to_key(monkeypatch):
    execs = []
    _apply(monkeypatch, row_exists=1)
    monkeypatch.setattr(db, "execute",
                        lambda sql, params=None, cn=None, commit=False:
                        execs.append((sql, params)) or 1)
    venue.capacity_upsert("UMA", "50", 45.0, 10.0)
    upd = [e for e in execs if e[0].startswith("UPDATE VenueCapacity")]
    assert len(upd) == 1
    assert "U_Name" not in upd[0][0]
    assert "U_AE = 'E'" in upd[0][0]
    assert upd[0][1][-2:] == ("UMA", "50")


def test_delete_uses_string_key(monkeypatch):
    execs = []
    _apply(monkeypatch)
    monkeypatch.setattr(db, "execute",
                        lambda sql, params=None, cn=None, commit=False:
                        execs.append((sql, params)) or 1)
    venue.capacity_delete("UMA", "Informal")
    assert execs[0][0].startswith("DELETE FROM VenueCapacity")
    assert execs[0][1] == ("UMA", "Informal")
