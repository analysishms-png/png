"""BUG-008 regression: VB6 backdoor password "India12" production login
path me kabhi accept nahi hona chahiye (TC-010).

VB6 binary me hardcoded backdoor tha: "India12" kisi bhi username ke saath
login de deta tha (HMS.bas, BUG-008/SRN-001). Python port (`core/auth.py`)
me ye string sirf self-test block (__main__) me hai - check_login me koi
special-case nahi. Ye tests us invariant ko pin karte hain:

  1. Source-scan: "India12" literal check_login ke function source me nahi.
  2. Mocked credentials: jab stored password kuch aur ho, "India12" hamesha
     reject ho - jabki sahi password accept ho (proof ke liye function
     credential-driven hai, universal fast-path nahi).
  3. Unknown user + "India12" -> reject.
  4. Live DB sweep (skipif DB offline): koi bhi UserMast user "India12"
     se login na ho paye - EXCEPT wo (impossible) case jisme uska actual
     stored password hi India12 ho (wo genuine credential match hota,
     backdoor nahi).

SA ka real password KANPUR hai (verified earlier) - ye file usko use nahi
karti; regression sirf negative path pin karta hai.
"""
from __future__ import annotations

import inspect
import uuid

import pytest

from HMS_py.core import auth


def _uniq(prefix: str) -> str:
    """Unique username per test: _login_attempts disk pe persist hota hai,
    fixed naam pichhli runs ke lockout se false-negative de sakte hain."""
    return f"{prefix}-{uuid.uuid4().hex[:8]}"


@pytest.fixture(autouse=True)
def _clear_login_attempts():
    """In-process lockout state test ke baad clean karo (global dict)."""
    yield
    try:
        auth._login_attempts.clear()
    except Exception:
        pass


def _enc(plain: str) -> str:
    """auth._stored_passwd-compatible raw string (decrypt roundtrip isi
    convention pe hai - test_core_validation.py ka sa_raw pattern)."""
    return auth.encrypt(plain, seed=33)


class TestBackdoorSourceScan:
    """Static invariant: backdoor string login path me na ho."""

    def test_india12_not_in_check_login_source(self):
        src = inspect.getsource(auth.check_login)
        assert "India12" not in src, \
            "BUG-008 regression: check_login me backdoor string aa gayi!"

    def test_india12_not_in_record_attempt_source(self):
        for fn_name in ("_record_attempt", "_is_locked_out"):
            fn = getattr(auth, fn_name, None)
            if fn is None:
                continue
            assert "India12" not in inspect.getsource(fn), \
                f"BUG-008 regression: {fn_name} me backdoor string hai!"


class TestBackdoorNotSpecialCased:
    """check_login credential-driven hai - universal password fast-path nahi."""

    def _mock_user(self, monkeypatch, stored_plain: str):
        from HMS_py.core import db as dbmod

        def fake_query(sql, params=None, cn=None):
            # check_login positional access: row[0]=ActiveYN, row[1]=LABEL,
            # row[2]=ShortName
            return [("Y", "", "T")]

        monkeypatch.setattr(dbmod, "query", fake_query)
        monkeypatch.setattr(auth, "_stored_passwd",
                            lambda username, cn=None: _enc(stored_plain))

    def test_india12_rejected_when_stored_password_differs(self, monkeypatch):
        self._mock_user(monkeypatch, stored_plain="REALPASS")
        ok, _msg = auth.check_login(_uniq("BKD"), "India12")
        assert ok is False, \
            "BUG-008 regression: 'India12' universal password ki tarah chala!"

    def test_correct_stored_password_still_accepted(self, monkeypatch):
        """Positive control: mock path kaam karta hai - sirf India12 nahi."""
        self._mock_user(monkeypatch, stored_plain="REALPASS")
        ok, msg = auth.check_login(_uniq("BKD"), "REALPASS")
        assert ok is True and msg.startswith("Welcome")

    def test_india12_rejected_for_unknown_user(self, monkeypatch):
        from HMS_py.core import db as dbmod
        monkeypatch.setattr(dbmod, "query", lambda sql, params=None, cn=None: [])
        ok, _msg = auth.check_login(_uniq("NOUSER"), "India12")
        assert ok is False

    def test_india12_case_variants_rejected(self, monkeypatch):
        self._mock_user(monkeypatch, stored_plain="REALPASS")
        for variant in ("india12", "INDIA12", " India12 ", "India 12"):
            ok, _msg = auth.check_login(_uniq("BKDV"), variant)
            assert ok is False, f"variant {variant!r} accept ho gaya!"


def _db_available() -> bool:
    try:
        from HMS_py.core import db
        db.query("SELECT 1")
        return True
    except Exception:
        return False


_requires_db = pytest.mark.skipif(not _db_available(),
                                  reason="live DB not reachable")


class TestBackdoorLiveSweep:
    """Live UserMast: koi bhi user India12 se login na ho paye."""

    @_requires_db
    def test_no_user_accepts_india12(self):
        from HMS_py.core import db
        users = db.query("SELECT USER_NAME FROM UserMast")
        assert users, "UserMast khali hai - sweep bekaar"
        checked = 0
        for row in users:
            username = (row[0] or "").strip()
            if not username:
                continue
            # Genuine-credential guard: agar kisi ka ACTUAL stored password
            # hi India12 hai to wo backdoor nahi, apna password hai - skip.
            try:
                stored = auth._stored_passwd(username)
                real = auth.decrypt(stored) if stored else ""
            except Exception:
                real = None
            if real and real.upper() == "INDIA12":
                continue
            ok, _msg = auth.check_login(username, "India12")
            assert ok is False, (
                f"BUG-008 regression: user {username!r} ne 'India12' "
                "accept kar liya!")
            checked += 1
        assert checked > 0, "koi user check hua hi nahi"
