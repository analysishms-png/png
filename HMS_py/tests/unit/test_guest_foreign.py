"""Unit tests: Guest Foreign core (mocked-db, no live DB).

Invariants: serial-preserve on update, CFORM serial consume on insert,
sno auto-gen, audit stamps.
run: python -m pytest tests/unit/test_guest_foreign.py -q"""
from types import SimpleNamespace

import pytest

from HMS_py.core import db, guest_foreign


class FakeCn:
    def __init__(self):
        self.committed = False
        self.rolled_back = False
        self.closed = False

    def commit(self): self.committed = True
    def rollback(self): self.rolled_back = True
    def close(self): self.closed = True


def _fake_query(guest_count=1, exists_count=0, serial=77, cform=17):
    def fake_query(sql, params=None, cn=None):
        if "COUNT(*) AS N FROM GuestProf WHERE Code" in sql:
            return [SimpleNamespace(N=guest_count)]
        if "MAX(Sno)" in sql:
            return [SimpleNamespace(N=4)]
        if "COUNT(*) AS N FROM GuestProfFor" in sql:
            return [SimpleNamespace(N=exists_count)]
        if "ISNULL(SerialNo" in sql:
            return [SimpleNamespace(S=serial)]
        if "Voucher_Prefix" in sql and "Start_Srl_No" in sql:
            return [SimpleNamespace(N=cform)]
        if "MAX(SerialNo)" in sql:
            return [SimpleNamespace(N=42)]   # query khud MAX+1 karta hai
        return []
    return fake_query


def _apply(monkeypatch, fake_query):
    monkeypatch.setattr(db, "connect", lambda: FakeCn())
    monkeypatch.setattr(db, "query", fake_query)


def test_save_requires_code_and_existing_guest(monkeypatch):
    _apply(monkeypatch, _fake_query())
    with pytest.raises(ValueError, match="Code zaroori"):
        guest_foreign.save_stay("", 1, {})
    _apply(monkeypatch, _fake_query(guest_count=0))
    with pytest.raises(ValueError, match="nahi mila"):
        guest_foreign.save_stay("KKX", 1, {})


def test_insert_new_stay_consumes_cform_serial(monkeypatch):
    execs = []
    _apply(monkeypatch, _fake_query(exists_count=0, cform=17))
    monkeypatch.setattr(db, "execute",
                        lambda sql, params=None, cn=None, commit=False:
                        execs.append((sql, params)) or 1)
    res = guest_foreign.save_stay("KK003139", 0, {"name": "X"})
    # sno = MAX(Sno) 4 + 1; serial = CFORM 17 + 1 (VB6 loc_1C38859)
    assert res == {"sno": 5, "serialno": 18, "updated": False}
    ins = [e for e in execs if e[0].startswith("INSERT INTO GuestProfFor")]
    assert len(ins) == 1
    assert "U_AE" in ins[0][0] and "'A'" in ins[0][0]
    vp = [e for e in execs if "UPDATE Voucher_Prefix" in e[0]]
    assert len(vp) == 1
    assert vp[0][1][0] == 18
    assert "V_Type = 'CFORM'" in vp[0][0]


def test_update_preserves_serial_and_stamps_edit(monkeypatch):
    execs = []
    _apply(monkeypatch, _fake_query(exists_count=1, serial=77))
    monkeypatch.setattr(db, "execute",
                        lambda sql, params=None, cn=None, commit=False:
                        execs.append((sql, params)) or 1)
    res = guest_foreign.save_stay("KK003139", 2, {"name": "Y"})
    assert res == {"sno": 2, "serialno": 77, "updated": True}
    upd = [e for e in execs if e[0].startswith("UPDATE GuestProfFor")]
    assert len(upd) == 1
    assert "U_AE = 'E'" in upd[0][0]
    # koi Voucher_Prefix consume nahi hona chahiye update pe
    assert not [e for e in execs if "UPDATE Voucher_Prefix" in e[0]]


def test_delete_stay_scoped(monkeypatch):
    execs = []
    _apply(monkeypatch, _fake_query())
    monkeypatch.setattr(db, "execute",
                        lambda sql, params=None, cn=None, commit=False:
                        execs.append((sql, params)) or 1)
    guest_foreign.delete_stay("KK003139", 3)
    assert execs[0][0].startswith("DELETE FROM GuestProfFor")
    assert execs[0][1] == ("KK003139", 3)


def test_next_serial_falls_back_to_max(monkeypatch):
    _apply(monkeypatch, _fake_query(cform=0))
    assert guest_foreign.next_serial() == 42
