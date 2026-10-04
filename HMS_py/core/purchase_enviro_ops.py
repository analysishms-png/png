"""Purchase / Inventory environment settings core (VB6 frmPurEnviro port).

Form: frmPurEnviro.frm — Caption "Purchase Parameter", MDI child, menu leaf
"Enviro Inventry" (group Material Mgmt/Inventory).

EVIDENCE (decompiled frmPurEnviro.frm + HMS_REVERSE_ENGINEERING extracts):
- Dispatch: ModuleAdd.bas loc_1E43AE6
  `If (var_188 = "Enviro Inventry") Then Set var_90 = New frmPurEnviro ...
   Show` (also HMS.bas loc_1E32FFB / MDIForm1.frm loc_11F056E).
  _dispatch_map.json: "Enviro Inventry" -> ["frmPurEnviro"].
- Form_Load (loc_10097E0, SQL verbatim in 02_Main_Setup/sql/queries.sql):
  * loc_10010CD  Select SubCode as Code,Name From SubGroup WHERE ActiveYN=1
                 and (LOGSITE_CODE='<site>' or LOGSITE_CODE='HO') Order by Name
                 -> Cash Purchase A/c help grid (global_68)
  * loc_1001159  Select Code,Name From Godownmast Where (LOGSITE_CODE='<site>'
                 or LOGSITE_CODE='HO') Order by Name -> godown help (global_56)
                 (Purchase Godown Txt(2), Banquet Kitchen Txt(13),
                  Stock Receive for Godown Txt(11))
  * loc_10011F2  Select * From Enviro WHERE (LOGSITE_CODE='<site>')
                 -> current row (settings source)
  * loc_1001246  Select Code,Name From RevMast Where FieldType='T' and
                 (LOGSITE_CODE='<site>' or LOGSITE_CODE='HO') Order by Name
                 -> Purchase Tax (VAT) help (global_60)
- Load current row -> boxes (Proc_294_19_150ACE4): code cols Txt.Tag me Code
  rakhte hain, box me master Name; reverse lookups:
  * loc_1509ED4  Select Name From SubGroup Where SubCode='<code>'
  * loc_150A0C5 / loc_150A2B6  Select Name From Godownmast Where Code='<code>'
  * loc_150A4A1  Select MAx(Name) As Name From RevMast Where FieldType='T'
                 and Code='<code>'
  * Blank defaults (IIf ... vbNullString): AcFieldAlterable="No",
    KitchenStockReport="Standard", RateEditableInPO="Yes",
    RateEditableInStockIssue="Yes", ItemRateInMRBasedOn="Purchase Rate",
    ItemRateInPurchaseBillBasedOn="Purchase Rate",
    BarCodeFeatureInPurchase="No", AutoFillItemInKitchenClosingYN="No",
    ShowAllAcInPurcahseCategoryYN="No".
- Save (CmdSave_Click loc_1250190): BeginTrans -> ONE statement
  `Update Enviro Set CashPurchAc='..',PurchaseGodown='..',
   BanquetKitchen='..',AcFieldAlterable='..',RateEditableInPO='..',
   RateEditableInStockIssue='..',BarCodeFeatureInPurchase='..',
   AutoFillItemInKitchenClosingYN='..',ShowAllAcInPurcahseCategoryYN='..',
   PurchaseTaxVAT='..',KitchenStockReport=..,ItemRateInMRBasedOn=..,
   ItemRateInPurchaseBillBasedOn=..,StockRecGodown=..
   WHERE SITECODE='<MemVar_1F92078>'` -> CommitTrans; On Error ->
  RollbackTrans -> generic Proc_6_60 handler (koi dedicated MsgBox nahi).
- Txt box MaxLength (VB6): 75/35/35/15/15/15/15/35/10/25/25/35/15/3.

Tables (LIVE verified 2026-10-02): Enviro (1 row), Godownmast (64 rows),
RevMast (FieldType='T' -> 9 rows), SubGroup (ActiveYN=1).

OVERLAP with existing HMS_py Enviro editors (search `rg -n "Enviro" ui core`):
- ui/enviro_ui.py + core/enviro.py ('Parameter' leaf): generic Enviro grid.
  Its EDITABLE white-list already carries KitchenStockReport,
  ItemRateInMRBasedOn, ItemRateInPurchaseBillBasedOn, PurchaseTaxVAT,
  RateEditableInPO, RateEditableInStockIssue, BarCodeFeatureInPurchase ->
  wo raw-text editor hai; ye module VB6-faithful widget+default+lookup wala
  dedicated purchase screen hai (same single Enviro row).
- core/enviro.py READ_ONLY me CashPurchAc hai (GL-integrity decision) —
  frmPurEnviro Vahi form hai jo VB6 me CashPurchAc edit karta hai, isliye
  is module me wo editable hai (authority: VB6 frmPurEnviro).
- core/general_setup.ENVIRO_EDITABLE_FIELDS overlap: BanquetKitchen,
  PurchaseGodown, StockRecGodown, AcFieldAlterable,
  AutoFillItemInKitchenClosingYN, RateEditableInPO/InStockIssue,
  BarCodeFeatureInPurchase, PurchaseTaxVAT (enviro_update single-field API).
- ui/fa_enviro_ui.py (FAEnviro table) aur ui/voucher_environment_ui.py
  (Voucher_Type/VoucherCat) alag tables hain — koi functional overlap nahi.
- ui/shell.py registry: "Enviro Inventry" abhi _coming_soon list me hai
  (shell.py:1621) aur "Purchase Parameter" -> envui.open_enviro
  (shell.py:1704). Shell wiring task ke restrictions se EDIT NAHI ki gayi —
  open_purchase_enviro() ready hai future wiring ke liye.

DEVIATIONS (documented):
- VB6 `WHERE SITECODE='<site>'` -> repo convention
  `WHERE LogSite_Code = ? OR LogSite_Code = 'HO'` (live Enviro me 1 hi row
  hai; core/enviro.py bhi yahi pattern use karta hai).
- Enviro me audit cols nahi hain (core/enviro.py note) -> koi U_Name write
  nahi; save sirf 14 setting cols.
- Hidden VB6 controls (Req. Company Wise Txt(86), Exp && Mfd. Date In M.R.
  Txt(89), Excise Invoice Tax Stru Txt(90)) CmdSave SQL me NAHI hain ->
  is port me bhi nahi.
- StockRecGodown: VB6 ka decompiled load (Proc_294_19) Txt(11) populate
  nahi karta par CmdSave usse likhta hai — port me load bhi kiya gaya
  (godown lookup) taaki blank overwrite na ho.
- Save-time validation VB6 se strict hai (Yes/No me junk -> VB6 chup-chaap
  "No" karta tha; yahan ValueError). Lookup codes ki existence check bhi
  added (VB6 sirf Name blank dikha deta tha).
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()   # BUG-014: Analysis.ini-driven
USER = db.get_user()

# VB6 Txt() index -> Enviro column (frmPurEnviro control array + CmdSave chain).
# kind: code = master lookup (VB6 me Txt.Tag = Code, box = Name),
#       yn   = Yes/No flag, list = fixed VB6 ListView choices.
FIELD_SPECS: tuple[dict, ...] = (
    {"col": "CashPurchAc", "label": "Cash Purchase A/c", "kind": "code",
     "lookup": "subgroup", "maxlen": 75, "txt": 1, "default": ""},
    {"col": "PurchaseGodown", "label": "Purchase Godown", "kind": "code",
     "lookup": "godown", "maxlen": 35, "txt": 2, "default": ""},
    {"col": "BanquetKitchen", "label": "Banquet Kitchen", "kind": "code",
     "lookup": "godown", "maxlen": 35, "txt": 13, "default": ""},
    {"col": "AcFieldAlterable", "label": "Modify Account Field", "kind": "yn",
     "maxlen": 15, "txt": 3, "default": "No"},
    {"col": "RateEditableInPO", "label": "Rate Editable In P.O.", "kind": "yn",
     "maxlen": 15, "txt": 4, "default": "Yes"},
    {"col": "RateEditableInStockIssue", "label": "Rate Editable In Issue",
     "kind": "yn", "maxlen": 15, "txt": 5, "default": "Yes"},
    {"col": "BarCodeFeatureInPurchase", "label": "Bar Code Feature",
     "kind": "yn", "maxlen": 15, "txt": 6, "default": "No"},
    {"col": "PurchaseTaxVAT", "label": "Purchase Tax (VAT)", "kind": "code",
     "lookup": "tax", "maxlen": 35, "txt": 7, "default": ""},
    {"col": "KitchenStockReport", "label": "Kitchen Stock Report",
     "kind": "list", "choices": ("Advanced", "Standard"),
     "maxlen": 10, "txt": 8, "default": "Standard"},
    {"col": "ItemRateInMRBasedOn", "label": "Item Rate In M.R. Based on",
     "kind": "list",
     "choices": ("Purchase Rate", "Last Purchase Rate",
                 "Party Wise Last Pur Rate"),
     "maxlen": 25, "txt": 9, "default": "Purchase Rate"},
    {"col": "ItemRateInPurchaseBillBasedOn",
     "label": "Item Rate In P.Bill Based on", "kind": "list",
     "choices": ("Purchase Rate", "Last Purchase Rate",
                 "Party Wise Last Pur Rate"),
     "maxlen": 25, "txt": 10, "default": "Purchase Rate"},
    {"col": "StockRecGodown", "label": "Stock Receive for Godown",
     "kind": "code", "lookup": "godown", "maxlen": 35, "txt": 11,
     "default": ""},
    {"col": "AutoFillItemInKitchenClosingYN",
     "label": "Auto Fill Item (Kitchen Closing)", "kind": "yn",
     "maxlen": 15, "txt": 12, "default": "No"},
    {"col": "ShowAllAcInPurcahseCategoryYN", "label": "Show All A/c In Category",
     "kind": "yn", "maxlen": 3, "txt": 14, "default": "No"},
)

COLS: tuple[str, ...] = tuple(s["col"] for s in FIELD_SPECS)
SPEC_BY_COL: dict[str, dict] = {s["col"]: s for s in FIELD_SPECS}

YN_DEFAULTS = {s["col"]: s["default"] for s in FIELD_SPECS if s["kind"] == "yn"}


def load_settings(cn=None) -> dict:
    """Enviro row ke 14 purchase cols (VB6 loc_10011F2 `Select * From Enviro`).

    yn/list cols blank par VB6 ke display-defaults (Proc_294_19 IIf) lagake
    return karta hai; code cols waise ke waise (blank = cleared)."""
    sel = ", ".join(f"[{c}]" for c in COLS)
    rows = db.query(
        f"SELECT {sel} FROM Enviro WHERE LogSite_Code = ? "
        "OR LogSite_Code = 'HO'", (SITE_CODE,), cn=cn)
    if not rows:
        raise ValueError("Enviro row hi nahi mila (settings table khali)")
    row = rows[0]
    out: dict[str, str] = {}
    for i, spec in enumerate(FIELD_SPECS):
        raw = row[i]
        val = "" if raw is None else str(raw).strip()
        if not val and spec["kind"] in ("yn", "list"):
            val = spec["default"]      # VB6 IIf(blank, default, Trim(..))
        out[spec["col"]] = val
    return out


# ── Form_Load help queries (VB6 SQL verbatim, `?`-parameterized) ──────────

def subgroup_list(cn=None) -> list[dict]:
    """Cash Purchase A/c help (loc_10010CD)."""
    rows = db.query(
        "Select SubCode as Code,Name From SubGroup WHERE ActiveYN=1 and "
        "(LOGSITE_CODE=? or LOGSITE_CODE='HO') Order by Name",
        (SITE_CODE,), cn=cn)
    return [{"code": (r[0] or "").strip(), "name": (r[1] or "").strip()}
            for r in rows]


def godown_list(cn=None) -> list[dict]:
    """Godown help (loc_1001159) — Purchase Godown / Banquet Kitchen /
    Stock Receive for Godown teeno isi ko use karte hain."""
    rows = db.query(
        "Select Code,Name From Godownmast Where "
        "(LOGSITE_CODE=? or LOGSITE_CODE='HO') Order by Name",
        (SITE_CODE,), cn=cn)
    return [{"code": (r[0] or "").strip(), "name": (r[1] or "").strip()}
            for r in rows]


def tax_list(cn=None) -> list[dict]:
    """Purchase Tax (VAT) help (loc_1001246) — RevMast FieldType='T'."""
    rows = db.query(
        "Select Code,Name From RevMast Where  FieldType='T' and "
        "(LOGSITE_CODE=? or LOGSITE_CODE='HO') Order by Name",
        (SITE_CODE,), cn=cn)
    return [{"code": (r[0] or "").strip(), "name": (r[1] or "").strip()}
            for r in rows]


# ── Reverse name lookups (VB6 Proc_294_19: Code -> box me Name) ───────────

def subgroup_name(code: str, cn=None) -> str:
    """loc_1509ED4: Select Name From SubGroup Where SubCode='<code>'."""
    rows = db.query("Select Name From SubGroup Where SubCode = ?",
                    (code,), cn=cn)
    return (rows[0][0] or "").strip() if rows else ""


def godown_name(code: str, cn=None) -> str:
    """loc_150A0C5/150A2B6: Select Name From Godownmast Where Code='<code>'."""
    rows = db.query("Select Name From Godownmast Where Code = ?",
                    (code,), cn=cn)
    return (rows[0][0] or "").strip() if rows else ""


def tax_name(code: str, cn=None) -> str:
    """loc_150A4A1: Select MAx(Name) As Name From RevMast Where
    FieldType='T' and Code='<code>'."""
    rows = db.query(
        "Select MAx(Name) As Name From RevMast Where FieldType='T' and Code = ?",
        (code,), cn=cn)
    return (rows[0][0] or "").strip() if rows else ""


def resolve_name(col: str, code: str, cn=None) -> str:
    """Code col ka master Name (UI display ke liye)."""
    spec = SPEC_BY_COL.get(col)
    if spec is None or spec["kind"] != "code" or not (code or "").strip():
        return ""
    code = code.strip()
    if spec["lookup"] == "subgroup":
        return subgroup_name(code, cn=cn)
    if spec["lookup"] == "tax":
        return tax_name(code, cn=cn)
    return godown_name(code, cn=cn)


# ── Validation (VB6 Txt_Validate / MaxLength + added existence guards) ────

def _as_text(value) -> str:
    return str(value if value is not None else "").strip()


def _validate_yn(col: str, value, default: str) -> str:
    """VB6 Txt_Validate: Left(1)='Y' -> 'Yes', else 'No'.

    Port stricter hai: sirf Y/N/Yes/No/1/0/True/False accept, warna
    ValueError (VB6 junk ko chup-chaap 'No' bana deta tha)."""
    s = _as_text(value)
    if not s:
        return default
    low = s.lower()
    if low in ("y", "yes", "1", "true"):
        return "Yes"
    if low in ("n", "no", "0", "false"):
        return "No"
    raise ValueError(f"{col}: 'Yes'/'No' hi chahiye (milaa '{s}')")


def _validate_list(spec: dict, value) -> str:
    s = _as_text(value)
    if not s:
        return spec["default"]
    for choice in spec["choices"]:
        if s.lower() == choice.lower():
            return choice
    raise ValueError(
        f"{spec['col']}: '{s}' valid nahi (options: "
        + ", ".join(spec["choices"]) + ")")


def _validate_code(spec: dict, value, cn=None) -> str:
    s = _as_text(value)
    if not s:
        return ""
    if len(s) > spec["maxlen"]:
        raise ValueError(
            f"{spec['col']}: {spec['maxlen']} char max (VB6 MaxLength)")
    if spec["lookup"] == "subgroup":
        rows = db.query("Select 1 From SubGroup Where SubCode = ?",
                        (s,), cn=cn)
        if not rows:
            raise ValueError(f"{spec['label']}: A/c code '{s}' SubGroup me "
                             "nahi mila")
    elif spec["lookup"] == "tax":
        rows = db.query(
            "Select 1 From RevMast Where FieldType='T' and Code = ?",
            (s,), cn=cn)
        if not rows:
            raise ValueError(f"{spec['label']}: tax code '{s}' RevMast "
                             "(FieldType='T') me nahi mila")
    else:
        rows = db.query("Select 1 From Godownmast Where Code = ?",
                        (s,), cn=cn)
        if not rows:
            raise ValueError(f"{spec['label']}: godown code '{s}' Godownmast "
                             "me nahi mila")
    return s


def validate(values: dict, cn=None) -> dict:
    """Pure validation/normalization (DB write nahi). Return normalized dict."""
    unknown = set(values) - set(COLS)
    if unknown:
        raise ValueError("Unknown field(s): " + ", ".join(sorted(unknown)))
    out: dict[str, str] = {}
    for spec in FIELD_SPECS:
        col = spec["col"]
        raw = values.get(col, "")
        if spec["kind"] == "yn":
            out[col] = _validate_yn(col, raw, spec["default"])
        elif spec["kind"] == "list":
            out[col] = _validate_list(spec, raw)
        else:
            if len(_as_text(raw)) > spec["maxlen"]:
                raise ValueError(
                    f"{col}: {spec['maxlen']} char max (VB6 MaxLength)")
            out[col] = _validate_code(spec, raw, cn=cn)
    return out


def save_settings(values: dict, user: str = USER, cn=None,
                  commit: bool = True) -> int:
    """VB6 CmdSave_Click (loc_1250190) ka parameterized port.

    Ek hi UPDATE (14 cols, hamesha sab — VB6 bhi poori chain likhta hai);
    BeginTrans/CommitTrans -> db.transaction jaisa commit/rollback handling.
    Returns affected rows (0/1)."""
    normalized = validate(values, cn=cn)
    sets = ", ".join(f"[{c}] = ?" for c in COLS)
    params = tuple(normalized[c] for c in COLS)
    own = cn is None
    cn = cn or db.connect()
    try:
        n = db.execute(
            f"UPDATE Enviro SET {sets} WHERE LogSite_Code = ? "
            "OR LogSite_Code = 'HO'",
            params + (SITE_CODE,), cn=cn, commit=False)
        if not n:
            raise ValueError("Enviro row nahi mili — 0 rows update hue")
        if commit:
            cn.commit()
        print(f"[purchase_enviro] {user} updated: "
              + ", ".join(f"{c}={normalized[c]!r}" for c in COLS))
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


class _PurchaseEnviroAPI:
    """Namespace parity (GodownAPI/VouchCatAPI jaisa style)."""
    FIELDS = FIELD_SPECS

    @staticmethod
    def load(cn=None): return load_settings(cn=cn)

    @staticmethod
    def save(values, user=USER, cn=None, commit=True):
        return save_settings(values, user=user, cn=cn, commit=commit)


PurchaseEnviroAPI = _PurchaseEnviroAPI()
