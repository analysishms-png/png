"""User Master CRUD (VB6: 'User Master' / Utility -> User Master).

Schema evidence (live): UserMast table.
  USER_NAME varchar(10) PK, PASSWD varchar(50) (encrypted - VB6 auth.py se),
  LABEL varchar(30), ShortName varchar(10), ActiveYN varchar(1),
  AllowDtChng varchar(50), GodCode varchar(50), FloorCode varchar(50),
  BackColor int DEFAULT ((0)).
  (GodCode/FloorCode/AllowDtChng ki length 6/6/1 wali doc purani thi -
   INFORMATION_SCHEMA 2026-10-02: teeno varchar(50).)

WARNING: PASSWD is VB6-encrypted (core/auth.py encrypt/decrypt use karo).
UI mein plaintext lena + encrypt karke store karo.

BUG-003 FIX (2026-10-01):
  VB6 UserMast.frm TopCtrl1_UnknownEvent_C (loc_10D8396):
    BEGIN TRANS
      DELETE FROM user1   WHERE user_name='...'
      DELETE FROM user2   WHERE user_name='...'
      DELETE FROM menuhelp1 WHERE username='...'
      DELETE FROM userMAST  WHERE user_name='...'
    COMMIT TRANS
    RollbackTrans on error.
  Python delete() only deleted UserMast — all 4 tables now deleted
  in one transaction.

BUG-004 FIX (2026-10-01):
  AllowDtChng column added to SELECT_COLS + _map() + update().
  VB6 UserMast TXT(1) field = AllowDtChng (Enabled=False on new user).

MS-017 FIX (2026-10-02):
  _validate ab VB6 UserMast.frm ke per-index rules port karta hai
  (required Short Name, ActiveYN/AllowDtChng Y/N, password max 8).
  _validate(rec, plain_password=None) - password VB6 TXT(2)/(3) MaxLength=8.

MS-016 FIX (2026-10-02):
  GodCode, FloorCode, BackColor ab SELECT_COLS + _map() + insert() +
  update() mein hain (AllowDtChng pehle se tha - preserve).
  VB6 evidence (HMS_REVERSE_ENGINEERING/HMS/UserMast.frm aur uska root
  copy):
    - BackColor ka CONTROL hai: Label1(13) caption "Color Selection",
      Label1(14) swatch (designer default &H8080FF&), Label1_Click ->
      CommonDialog CDLG.ShowColor -> var_A4.BackColor = CLng(CDLG.Color)
      (root frm :909-920). MoveRec: Proc_6_39(Fields.Item("BackColor"))
      -> Label1.BackColor (root frm :1457-1459).
      Save SQL (root frm :822/:857):
        INSERT INTO USERMAST (user_name,PASSWD,Label,shortname,ActiveYN,backcolor)
        UPDATE USERMAST SET user_name=...,PASSWD=...,Label=...,shortname=...,
              BackColor=...,ActiveYN=... where user_name=...
    - GodCode/FloorCode ka VB6 UserMast.frm mein KOI control / SQL /
      lookup grid nahi hai (frm par "god"/"floor" ka ek bhi match nahi;
      DGGod/DGFloor jaisa kuch nahi). Dono live column hamesha
      NULL hain (68/68 rows) - isliye optional plain fields rakhe gaye,
      koi picker nahi (GodownMast table hoti hai par VB6 yahan bind
      nahi karta; FloorCode ke liye koi floor table hai hi nahi).
    - AllowDtChng bhi UserMast.frm save SQL mein nahi aata (VB6:
      `Select isnull(AllowDtChng,'') from UserMast` HMS.bas:10571 sirf
      padhta hai) - par BUG-004/MS-017 se wo Python me mapped hai;
      insert() ab UI ka value persist karta hai (warna Add par chala
      jaata tha). Empty -> "N" (map default ke baraabar).
"""
from __future__ import annotations

from HMS_py.core import db, auth

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
LIMITS = {
    "username": 10, "label": 30, "short": 10,
    # MS-017: VB6 UserMast.frm password boxes MaxLength=8
    # (TXT(2) Password / TXT(3) Confirm / TXT(6) Old Password)
    "password": 8,
    # MS-016: live UserMast columns GodCode/FloorCode varchar(50)
    # (INFORMATION_SCHEMA 2026-10-02). VB6 UserMast.frm mein inka koi
    # control hai hi nahi -> koi VB6 MaxLength evidence nahi; live
    # column size hi limit maani hai.
    "godcode": 50, "floorcode": 50,
}
# BUG-004 FIX: AllowDtChng added
# MS-016 FIX: GodCode, FloorCode, BackColor added (live verified)
SELECT_COLS = ("USER_NAME, LABEL, ShortName, ActiveYN, AllowDtChng, "
               "GodCode, FloorCode, BackColor")


def _map(r) -> dict:
    lbl = r.LABEL
    sn = r.ShortName
    god = r.GodCode
    flr = r.FloorCode
    # BUG-004 FIX: AllowDtChng in map
    try:
        allow_dt = r.AllowDtChng or "N"
    except AttributeError:
        allow_dt = "N"
    return {
        "username": r.USER_NAME or "",
        "label": (lbl.strip() if isinstance(lbl, str) else str(lbl or "")),
        "short": (sn.strip() if isinstance(sn, str) else str(sn or "")),
        "active": r.ActiveYN or "Y",
        "allowdtchng": allow_dt,
        # MS-016: live NULL -> "" (VB6 bhi inhe kabhi bharta hi nahi)
        "godcode": (god.strip() if isinstance(god, str) else str(god or "")),
        "floorcode": (flr.strip() if isinstance(flr, str) else str(flr or "")),
        # BackColor: VB6 CLng(CDLG.Color) int; live NULL/0 -> 0 (DB default)
        "backcolor": int(r.BackColor or 0),
    }


def _validate(rec: dict, plain_password: str | None = None):
    """MS-017: VB6 UserMast.frm per-index validation rules ka port.

    VB6 evidence:
      required  UserMast.frm save (TopCtrl1_UnknownEvent_16):
                  loc_1438724 TXT(0)+Label(0 "User Name")   -> FaLib check
                  loc_14387DE TXT(4)+Label(4 "Short Name")  -> FaLib check
                  loc_1438781 TXT(1)+Label(1 "Supervisor")  -> FaLib check
                FaLib.bas:617-619 (Proc_183_19_E8DAFC):
                  Len(Trim(Text))=0 -> "{caption} is a required field."
                (Supervisor = TXT(1) Yes/No flag; Python me wo
                 AllowDtChng flag hai jiska default "N" hota hai -
                 uske liye empty-check ki zaroorat nahi.)
      max len   UserMast.frm control MaxLength (TXT indices):
                  TXT(0) User Name 10 (:145), TXT(4) Short Name 3 (:74) -
                  schema ShortName varchar(10) hai, live code 10 tak
                  allow karta hai (LIMITS["short"]=10 rakha).
                  TXT(2)/(3)/(6) Password 8 (:110/:97/:33) -> plain_password
      ActiveYN  UserMast.frm:1066/1101 save:
                  IIf(TXT(5).Text="Yes", "Y", "N") -> sirf Y/N store hota hai
                AllowDtChng (TXT(1)) bhi Y/N flag (loc_1438944 "1"/"0").
      dup check Txt_Validate loc_115182F "{user} Already Exist *" -
                wo UI/exists() + PK handle karta hai (_validate DB-free).
    """
    if not rec.get("username", "").strip():
        raise ValueError("USER_NAME zaroori hai")
    if len(rec["username"]) > LIMITS["username"]:
        raise ValueError(f"USER_NAME max {LIMITS['username']} chars")
    if len(rec.get("label", "")) > LIMITS["label"]:
        raise ValueError(f"LABEL max {LIMITS['label']} chars")
    if len(rec.get("short", "")) > LIMITS["short"]:
        raise ValueError(f"ShortName max {LIMITS['short']} chars")
    # VB6 required: "Short Name is a required field." (FaLib.bas:619)
    if not rec.get("short", "").strip():
        raise ValueError("Short Name is a required field.")
    # Y/N flags (VB6 TXT(5) Active / TXT(1) Supervisor - sirf Y/N)
    for key, col in (("active", "ActiveYN"), ("allowdtchng", "AllowDtChng")):
        v = (rec.get(key) or "").strip().upper()
        if v and v not in ("Y", "N"):
            raise ValueError(f"{col} sirf Y/N ho sakta hai")
    # MS-016: GodCode/FloorCode optional hain (VB6 UserMast.frm mein inka
    # koi control/validation nahi; live dono 68/68 rows NULL) - isliye
    # required check nahi, sirf tab length jab value ho.
    if len(rec.get("godcode") or "") > LIMITS["godcode"]:
        raise ValueError(f"GodCode max {LIMITS['godcode']} chars")
    if len(rec.get("floorcode") or "") > LIMITS["floorcode"]:
        raise ValueError(f"FloorCode max {LIMITS['floorcode']} chars")
    # MS-016: BackColor VB6 CLng(CDLG.Color) ka int hota hai; live range
    # 0..16777215 verified (MIN 0 / MAX 16777215, 2026-10-02).
    _check_backcolor(rec.get("backcolor"))
    # VB6 password boxes MaxLength=8
    _check_password(plain_password)


def _check_backcolor(value) -> None:
    """MS-016: BackColor int (VB6 CLng(CDLG.Color), RGB 0..16777215).

    Empty/None chalega (DB default ((0)) lagega); non-int ya range se
    bahar value pe error.
    """
    if value is None or (isinstance(value, str) and not value.strip()):
        return
    try:
        n = int(str(value).strip())
    except (TypeError, ValueError):
        raise ValueError("BackColor int hona chahiye (VB6 CLng color)")
    if not 0 <= n <= 0xFFFFFF:
        raise ValueError("BackColor 0..16777215 (VB6 RGB) beech hona chahiye")


def _backcolor_int(value) -> int:
    """MS-016: BackColor value -> int (empty/None/whitespace -> 0,
    DB default ((0))). _validate ke baad hi call karo (int-ability wahan
    check ho chuki hoti hai)."""
    if value is None:
        return 0
    s = str(value).strip()
    return int(s) if s else 0


def _check_password(plain_password: str | None) -> None:
    """VB6 UserMast.frm password boxes TXT(2)/(3)/(6) MaxLength=8
    (UserMast.frm:110/:97/:33)."""
    if plain_password is not None and len(plain_password) > LIMITS["password"]:
        raise ValueError(f"PASSWORD max {LIMITS['password']} chars")


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


def _label_column_is_int(cn=None) -> bool:
    """Live DB schema check: UserMast.LABEL smallint hai? (schema-drift guard;
    VB6 doc me LABEL varchar(30) tha, kuch live DBs me smallint hai)."""
    try:
        rows = db.query(
            "SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS "
            "WHERE TABLE_NAME = 'UserMast' AND COLUMN_NAME = 'LABEL'", cn=cn)
        return bool(rows) and str(rows[0][0]).lower() in ("smallint", "int")
    except Exception:
        return False


def _label_value(label: str, cn=None):
    """LABEL value column-type ke hisab se: smallint -> 0, varchar -> text."""
    return 0 if _label_column_is_int(cn) else (label or "")


def insert(rec: dict, plain_password: str = "", cn=None,
           commit: bool = True) -> int:
    """Naya user. Password plaintext dena hai - encrypt hokar store hoga.

    PASSWD bind: CAST(? AS varchar(50)) + latin-1 bytes — VB6 encrypt ke
    >127 chars varchar codepage conversion me lossy nahi hote (E2E fix
    2026-09-23; SA ka VB6-era password isi path se byte-exact aata hai).
    """
    _validate(rec, plain_password)
    enc = auth.enc_bytes(plain_password) if plain_password else auth.enc_bytes("")
    # MS-016: GodCode/FloorCode empty -> NULL (VB6 inhe save karta hi nahi
    # tha, live dono column NULL hain); BackColor empty -> 0 (DB default).
    allow_dt = (rec.get("allowdtchng") or "N").strip().upper()
    if allow_dt not in ("Y", "N"):
        allow_dt = "N"
    god = (rec.get("godcode") or "").strip() or None
    flr = (rec.get("floorcode") or "").strip() or None
    return db.execute(
        "INSERT INTO UserMast (USER_NAME, PASSWD, LABEL, ShortName, ActiveYN, "
        "AllowDtChng, GodCode, FloorCode, BackColor) "
        "VALUES (?, CAST(? AS varchar(50)), ?, ?, ?, ?, ?, ?, ?)",
        (rec["username"].upper(), enc,
         _label_value(rec.get("label", ""), cn),
         rec.get("short", ""),
         rec.get("active", "Y"),
         allow_dt, god, flr,
         _backcolor_int(rec.get("backcolor"))),
        cn=cn, commit=commit)


def update(username: str, rec: dict, plain_password: str | None = None,
           cn=None, commit: bool = True) -> int:
    """Existing user update. plain_password=None to password nahi badlega.
    BUG-004 FIX: AllowDtChng column now included in update.
    MS-016 FIX: GodCode, FloorCode, BackColor included (VB6 save SQL
    root frm :857 ke equivalent columns).
    """
    _validate(rec, plain_password)
    lbl = _label_value(rec.get("label", ""), cn)
    allow_dt = (rec.get("allowdtchng") or "N").strip().upper()
    if allow_dt not in ("Y", "N"):
        allow_dt = "N"
    god = (rec.get("godcode") or "").strip() or None
    flr = (rec.get("floorcode") or "").strip() or None
    bc = _backcolor_int(rec.get("backcolor"))
    if plain_password is not None:
        enc = auth.enc_bytes(plain_password)
        return db.execute(
            "UPDATE UserMast SET PASSWD = CAST(? AS varchar(50)), LABEL = ?, "
            "ShortName = ?, ActiveYN = ?, AllowDtChng = ?, GodCode = ?, "
            "FloorCode = ?, BackColor = ? "
            "WHERE USER_NAME = ?",
            (enc, lbl, rec.get("short", ""),
             rec.get("active", "Y"), allow_dt, god, flr, bc,
             username.upper()),
            cn=cn, commit=commit)
    else:
        return db.execute(
            "UPDATE UserMast SET LABEL = ?, ShortName = ?, ActiveYN = ?, "
            "AllowDtChng = ?, GodCode = ?, FloorCode = ?, BackColor = ? "
            "WHERE USER_NAME = ?",
            (lbl, rec.get("short", ""),
             rec.get("active", "Y"), allow_dt, god, flr, bc,
             username.upper()),
            cn=cn, commit=commit)


def set_password(username: str, plain_password: str, cn=None,
                 commit: bool = True) -> int:
    """Sirf password change karo (VB6 password-reset pattern)."""
    _check_password(plain_password)  # VB6 TXT(3) MaxLength=8
    encrypted = auth.enc_bytes(plain_password)
    return db.execute(
        "UPDATE UserMast SET PASSWD = CAST(? AS varchar(50)) WHERE USER_NAME = ?",
        (encrypted, username.upper()), cn=cn, commit=commit)


def delete(username: str, cn=None, commit: bool = True) -> int:
    """BUG-003 FIX: VB6 UserMast.frm TopCtrl1_UnknownEvent_C deletes ALL
    4 user tables in a single transaction (loc_10D8396-10D84F4):
      DELETE FROM user1       WHERE user_name='...'
      DELETE FROM user2       WHERE user_name='...'
      DELETE FROM menuhelp1   WHERE username='...'
      DELETE FROM userMAST    WHERE user_name='...'
    Python previously only deleted UserMast — now all 4 in transaction.
    Tables user1/user2/menuhelp1 may not exist in every DB instance;
    errors on missing tables are silently skipped (VB6 also had
    error-resume-next on cascade tables).
    """
    uname = username.upper()
    own = cn is None
    cn = cn or db.connect()
    try:
        # user1, user2, menuhelp1 may not exist in every HMS instance;
        # use try/except per table to be safe (VB6 behavior: resume on error)
        for table, col in (("user1", "user_name"),
                           ("user2", "user_name"),
                           ("menuhelp1", "username")):
            try:
                db.execute(f"DELETE FROM {table} WHERE {col} = ?",
                           (uname,), cn=cn, commit=False)
            except Exception:
                pass  # table may not exist in all HMS instances
        # Primary table — this MUST succeed
        n = db.execute("DELETE FROM UserMast WHERE USER_NAME = ?",
                       (uname,), cn=cn, commit=False)
        if commit:
            cn.commit()
        return n
    except Exception:
        if own:
            try:
                cn.rollback()
            except Exception:
                pass
        raise
    finally:
        if own:
            cn.close()
