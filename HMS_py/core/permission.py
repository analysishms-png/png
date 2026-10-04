"""RBAC opener guard (MS-037): VB6 menuHelp `UPrivilege` + supervisor gate.

Mirrors the two VB6 permission mechanisms that ui/shell.py:1049 `_rbac_guard`
expects (MS-037 register row: "Guards_SA / MENUHELP rights (VB6)"):

1. Per-leaf privilege = MenuHelp.Param_Str, positions 1..4 = A/E/D/P
   - HMS.bas:18788-18789 (also :18810, :18861): before a form opens,
     ``SELECT Param_Str AS UPrivilege, Module_Name FROM menuHelp WHERE
     UserName=? AND CompCode=? AND [Option]=?`` -> global the form reads to
     enable its Add/Edit/Delete/Print buttons.
   - UserPermission.frm:1636 / :2282: ``[ADD]=SubString(Param_Str,1,1)='A'``,
     ``[EDIT]=..2,1..='E'``, ``[DELETE]=..3,1..='D'``, ``[PRINT]=..4,1..='P'``.
   - UserPermission.frm:2353: permission grid checkboxes (Allow/Ins/Edit/Del)
     are derived from the same four Param_Str slots.
   - MDIForm1.frm:7918-7921: SA template init - Flag IN ('E','N') ->
     Param_Str='AEDP', Flag='R' -> '***P'.
   Live schema: MenuHelp.Param_Str nvarchar, per UserName+CompCode rowset
   (loader: core/menu_help.py `_load_user` / `entries` / `full_access`).

2. Supervisor rank = UserMast.LABEL ('1' = Supervisor)
   - UserMast.frm:396 caption "Supervisor"; UserMast.frm:1059-1060
     ``var_1C4 = "1"`` -> ``IIf(Txt = "Yes", var_1C4, "0")`` written to the
     Label column (INSERT at UserMast.frm:1069).
   - HMS.bas:10567 login: ``MemVar_1F810B8 = CInt(UserMast.Label)``; later
     supervisor-only gates read that global (HMS.bas:63264 ``<> 1``,
     HMS.bas:2543 ``>= 1``, HMS.bas:66010 ``<= 0`` deny void-item).

DEVIATION (documented): no `Guards_SA` / `Guard` procedure exists in the VB6
tree - rg over HMS_REVERSE_ENGINEERING/**/*.frm,*.bas matches only the
"Guardian" column of SmartCardRegistration. "Guards_SA" is the Python-side
name for the same deny, so the right letters are a Python construct mapped
onto the two VB6 mechanisms above.

Right letters (ui/shell.py call-sites, grep `_rbac_guard(`):
    'u' -> "User Master"  (ui/shell.py:1639)
    'd' -> "Check Out"/"Check-Out"/"Checkout" (ui/shell.py:1645-1647)
    'a'/'e'/'p' are the remaining Param_Str slots (Add/Edit/Print) so future
    call-sites can request them.

FAIL-OPEN policy (headless/test callers + VB6 menu-filtered forms stay green):
    username None / ""           -> True   (guard passes getattr(w,"user"),
                                            often empty in headless flows)
    username "SA"                -> True   (VB6 SA bypass)
    unknown/multi-char right     -> True   (don't guess)
    user with no own menuHelp rows -> True (full access, menu_help.full_access)
    leaf/matrix absent, DB error -> True   (unreadable data = no evidence)
DENY happens only on positive evidence: the user HAS its own menuHelp matrix
and not one visible row grants the requested Param_Str slot (or, for 'u', the
'User Master' leaf is present in that matrix yet grants neither Add nor Edit).
All SQL is parameterized '?'; rows are read pyodbc attribute-style (r.LABEL).
"""
from __future__ import annotations

from HMS_py.core import db
from HMS_py.core import menu_help

# right letter -> Param_Str position (0-based), evidence UserPermission.frm:1636
_SLOTS: dict[str, int] = {"A": 0, "E": 1, "D": 2, "P": 3}
# 'u' = user-administration right, scoped to the guarded opener's own leaf
_USER_ADMIN_CAPTION = "user master"
_USER_ADMIN_SLOTS: tuple[tuple[int, str], ...] = ((0, "A"), (1, "E"))
KNOWN_RIGHTS: frozenset[str] = frozenset(_SLOTS) | {"U"}

RIGHT_SOURCES: dict[str, str] = {
    "a": "MenuHelp.Param_Str[1]='A' (Add)    - UserPermission.frm:1636",
    "e": "MenuHelp.Param_Str[2]='E' (Edit)   - UserPermission.frm:1636",
    "d": "MenuHelp.Param_Str[3]='D' (Delete) - UserPermission.frm:1636",
    "p": "MenuHelp.Param_Str[4]='P' (Print)  - UserPermission.frm:1636",
    "u": "MenuHelp 'User Master' leaf Param_Str Add/Edit - UserMast admin grant",
}

_ROLE_CACHE: dict[str, str | None] = {}
_MISS = object()


def clear_cache() -> None:
    """role_of ka local cache. (menuHelp cache ka apna alag
    menu_help.clear_cache hota hai - usse yahan nahi chhoo te.)"""
    _ROLE_CACHE.clear()


def _norm_user(username) -> str:
    try:
        return str(username).strip() if username is not None else ""
    except Exception:
        return ""


def _label_role(label) -> str | None:
    """UserMast.LABEL -> role label (UserMast.frm:1059-1060: '1'=Supervisor)."""
    if label is None:
        return None
    s = str(label).strip()
    return "Supervisor" if s == "1" else s


def role_of(username: str | None) -> str | None:
    """Supervisor/role label as stored in UserMast.LABEL.

    "SA" -> "SA"; blank/unknown user -> None; LABEL='1' -> "Supervisor"
    (UserMast.frm:396/:1059-1060, HMS.bas:10567). Baaki values as-stored
    (live DBs me LABEL smallint 0/1, kuch legacy DBs me role-text varchar).
    """
    who = _norm_user(username)
    if not who:
        return None
    if who.upper() == "SA":
        return "SA"
    key = who.upper()
    hit = _ROLE_CACHE.get(key, _MISS)
    if hit is not _MISS:
        return hit
    try:
        rows = db.query(
            "SELECT USER_NAME, LABEL FROM UserMast WHERE RTRIM(USER_NAME) = ?",
            (who,))
    except Exception:
        return None  # unreadable -> unknown, cache nahi
    out: str | None = None
    if rows:
        r = rows[0]
        try:
            label = r.LABEL  # pyodbc Row attribute style
        except AttributeError:
            label = r[1]
        out = _label_role(label)
    _ROLE_CACHE[key] = out
    return out


def _grants(param, slot: int, ch: str) -> bool:
    p = str(param or "").upper()
    return len(p) > slot and p[slot] == ch


def operation(right: str, username: str | None = None) -> bool:
    """True agar current user ke paas single-letter `right` hai (fail-open).

    VB6 HMS.bas:18788 wala UPrivilege check hai, par `_rbac_guard` sirf
    letter deta hai (leaf nahi) - isliye A/E/D/P letters user ke APNE
    menuHelp matrix par scope hote hain, aur 'u' apne hi guarded leaf
    ('User Master') par. Deny sirf tab jab matrix maujood ho aur usme
    requested grant EK BHI row par na ho.
    """
    who = _norm_user(username)
    if not who:
        return True
    try:
        letter = str(right).strip().upper() if right is not None else ""
    except Exception:
        return True
    if len(letter) != 1 or letter not in KNOWN_RIGHTS:
        return True  # unknown right letter - don't guess
    if who.upper() == "SA":
        return True  # VB6 SA bypass
    try:
        if menu_help.full_access(who):
            return True  # apni menuHelp rows nahi = full access
        rows = [r for r in menu_help.entries(who)
                if str(r.get("flag") or "").upper() not in ("V", "D")]
        if not rows:
            return True  # matrix unreadable/empty -> no evidence
        if letter == "U":
            leaf = [r for r in rows if r.get("caption") == _USER_ADMIN_CAPTION]
            if not leaf:
                return True  # leaf hi nahi (menu filtering already hides it)
            return any(_grants(r.get("param"), slot, ch)
                       for r in leaf for slot, ch in _USER_ADMIN_SLOTS)
        slot = _SLOTS[letter]
        return any(_grants(r.get("param"), slot, letter) for r in rows)
    except Exception:
        return True  # DB/menuHelp error -> fail-open (guard ka contract)
