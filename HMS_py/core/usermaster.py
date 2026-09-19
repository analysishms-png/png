"""User Master CRUD (VB6: 'User Master' / Utility -> User Master).

Schema evidence (live): UserMast table.
  USER_NAME varchar(10) PK, PASSWD varchar(50) (encrypted - VB6 auth.py se),
  LABEL varchar(30), ShortName varchar(10), ActiveYN varchar(1),
  GodCode varchar(6), FloorCode varchar(6), AllowDtChng varchar(1),
  BackColor int.

WARNING: PASSWD is VB6-encrypted (core/auth.py encrypt/decrypt use karo).
UI mein plaintext lena + encrypt karke store karo.
"""
from __future__ import annotations

from HMS_py.core import db, auth

SITE_CODE = "KK"
LIMITS = {
    "username": 10, "label": 30, "short": 10,
}
SELECT_COLS = "USER_NAME, LABEL, ShortName, ActiveYN"


def _map(r) -> dict:
    lbl = r.LABEL
    sn = r.ShortName
    return {
        "username": r.USER_NAME or "",
        "label": (lbl.strip() if isinstance(lbl, str) else str(lbl or "")),
        "short": (sn.strip() if isinstance(sn, str) else str(sn or "")),
        "active": r.ActiveYN or "Y",
    }


def _validate(rec: dict):
    if not rec.get("username", "").strip():
        raise ValueError("USER_NAME zaroori hai")
    if len(rec["username"]) > LIMITS["username"]:
        raise ValueError(f"USER_NAME max {LIMITS['username']} chars")
    if len(rec.get("label", "")) > LIMITS["label"]:
        raise ValueError(f"LABEL max {LIMITS['label']} chars")
    if len(rec.get("short", "")) > LIMITS["short"]:
        raise ValueError(f"ShortName max {LIMITS['short']} chars")


def list_all(cn=None) -> list[dict]:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM UserMast ORDER BY USER_NAME", cn=cn)
    return [_map(r) for r in rows]


def get(username: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM UserMast WHERE USER_NAME = ?",
        (username,), cn=cn)
    return _map(rows[0]) if rows else None


def exists(username: str, cn=None) -> bool:
    return bool(db.query(
        "SELECT 1 FROM UserMast WHERE USER_NAME = ?", (username,), cn=cn))


def insert(rec: dict, plain_password: str = "", cn=None,
           commit: bool = True) -> int:
    """Naya user. Password plaintext dena hai - encrypt hokar store hoga."""
    _validate(rec)
    encrypted = auth.encrypt(plain_password) if plain_password else auth.encrypt("")
    return db.execute(
        "INSERT INTO UserMast (USER_NAME, PASSWD, LABEL, ShortName, ActiveYN) "
        "VALUES (?, ?, ?, ?, ?)",
        (rec["username"].upper(), encrypted,
         rec.get("label", ""), rec.get("short", ""),
         rec.get("active", "Y")),
        cn=cn, commit=commit)


def update(username: str, rec: dict, plain_password: str | None = None,
           cn=None, commit: bool = True) -> int:
    """Existing user update. plain_password=None to password nahi badlega."""
    _validate(rec)
    if plain_password is not None:
        encrypted = auth.encrypt(plain_password)
        return db.execute(
            "UPDATE UserMast SET PASSWD = ?, LABEL = ?, ShortName = ?, "
            "ActiveYN = ? WHERE USER_NAME = ?",
            (encrypted, rec.get("label", ""), rec.get("short", ""),
             rec.get("active", "Y"), username.upper()),
            cn=cn, commit=commit)
    else:
        return db.execute(
            "UPDATE UserMast SET LABEL = ?, ShortName = ?, ActiveYN = ? "
            "WHERE USER_NAME = ?",
            (rec.get("label", ""), rec.get("short", ""),
             rec.get("active", "Y"), username.upper()),
            cn=cn, commit=commit)


def set_password(username: str, plain_password: str, cn=None,
                 commit: bool = True) -> int:
    """Sirf password change karo (VB6 password-reset pattern)."""
    encrypted = auth.encrypt(plain_password)
    return db.execute(
        "UPDATE UserMast SET PASSWD = ? WHERE USER_NAME = ?",
        (encrypted, username.upper()), cn=cn, commit=commit)


def delete(username: str, cn=None, commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM UserMast WHERE USER_NAME = ?",
        (username.upper(),), cn=cn, commit=commit)
