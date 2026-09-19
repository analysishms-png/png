"""Authentication - ORIGINAL VB6 HMS logic ka exact port.

EVIDENCE (decompiled UserMast.frm):
1. Encrypt (Proc_153_30_EEFAD0):
     seed = Int(Rnd * 99) + 1                ' 1..99
     stored = Chr(seed + 27)                 ' pehla char seed carrier
     for each ch: stored &= Chr(Asc(ch) + 27 + seed)
2. Decrypt (Proc_153_31_EFEE54):
     seed = Asc(first_char) - 27
     for ch in rest: plain &= Chr(Asc(ch) - 27 - seed)
3. Login comparison: UCase(Trim(typed)) = UCase(Trim(stored_decrypted))
   (frmPassword.frm: Ucase(Trim(...)) pattern)
4. User table: UserMast (USER_NAME, PASSWD encrypted, LABEL, ShortName,
   ActiveYN 'Y'/'N'). SA default password '\' (frmCompany.frm line 2415).
"""
from __future__ import annotations

import random

SHIFT = 0x1B   # 27 - VB6 &H1B


def encrypt(plain: str, seed: int | None = None) -> str:
    """VB6 Proc_153_30_EEFAD0 ka port."""
    if seed is None:
        seed = random.randint(1, 99)
    out = chr(seed + SHIFT)
    for ch in plain:
        out += chr(ord(ch) + SHIFT + seed)
    return out


def decrypt(stored: str) -> str:
    """VB6 Proc_153_31_EFEE54 ka port."""
    if not stored:
        return ""
    seed = ord(stored[0]) - SHIFT
    out = ""
    for i in range(1, len(stored)):
        out += chr(ord(stored[i]) - SHIFT - seed)
    return out


def _stored_passwd(username: str, cn=None) -> str | None:
    """PASSWD raw bytes (latin-1) - driver-agnostic.

    BUGFIX (P0): pichhla SELECT list-driver pe PASSWD ko unicode-expand
    kar deta tha (Native Client 10: varchar 'A' -> 'A\x00'). CAST se
    raw bytes milte hain (VB6 ke jo ansi bytes hain wahi).
    Evidence: SA raw=3c877d8a8c918e -> decrypt 'KANPUR' (seed=33).
    """
    from HMS_py.core import db
    rows = db.query(
        "SELECT CAST(PASSWD AS varbinary(max)) FROM UserMast "
        "WHERE USER_NAME = ?", (username,), cn=cn)
    if not rows or rows[0][0] is None:
        return None
    b = rows[0][0]
    return b.decode("latin-1") if isinstance(b, (bytes, bytearray)) else str(b)


def check_login(username: str, password: str, cn=None) -> tuple[bool, str]:
    """frmPassword/frmCompany ka login pattern:
    UCase(Trim(typed)) vs decrypted stored (bhi UCase/Trim).
    Returns (ok, message)."""
    from HMS_py.core import db
    username = (username or "").strip()
    rows = db.query(
        "SELECT ActiveYN, LABEL, ShortName FROM UserMast "
        "WHERE USER_NAME = ?", (username,), cn=cn)
    if not rows:
        return False, "Invalid User Name"
    row = rows[0]
    # SELECT order: ActiveYN, LABEL, ShortName
    active, label, short = row[0], row[1], row[2]
    if (active or "Y").upper() != "Y":
        return False, "User is INACTIVE - admin se contact karein"
    stored = _stored_passwd(username, cn=cn)
    real = decrypt(stored) if stored else ""
    typed = (password or "").strip()
    if typed.upper() == real.upper():
        return True, f"Welcome {short or username}"
    return False, "Invalid Password"


if __name__ == "__main__":
    # self-test: encrypt->decrypt roundtrip + SA check
    for pwd in ("India12", "SApass1", "x"):
        e = encrypt(pwd, seed=42)
        d = decrypt(e)
        assert d == pwd, f"roundtrip fail {pwd!r} -> {d!r}"
    print("roundtrip OK: encrypt/decrypt VB6-compatible")
    ok, msg = check_login("SA", "")
    print(f"SA login (empty pass - DB me stored '.' = ''): {ok} - {msg}")
    ok2, msg2 = check_login("SA", "wrongpass")
    print(f"SA wrong pass: {ok2} - {msg2}")
    ok3, msg3 = check_login("PANKAJ", "1234")
    print(f"PANKAJ/1234 (decoded from DB): {ok3} - {msg3}")
    ok4, msg4 = check_login("PANKAJ", "9999")
    print(f"PANKAJ wrong: {ok4} - {msg4}")
    ok5, msg5 = check_login("AKHILESH", "x")
    print(f"AKHILESH (inactive): {ok5} - {msg5}")
