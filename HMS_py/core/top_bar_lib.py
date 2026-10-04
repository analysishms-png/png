"""TopBarLib (VB6: TopBarLib.bas) port - TopCtrl navigation/button state.

VB6 source: HMS_REVERSE_ENGINEERING/HMS/TopBarLib.bas (168 lines,
3 obfuscated procs).  Ye module har VB6 master form ke upar wale
`TopCtrl1` toolbar ko state deta hai: recordset navigation
(MoveFirst/Previous/Next/Last) + kaunse buttons enabled hain +
TopText1 me "5/100" position.

VB6 -> Python mapping (loc refs):
  Proc_5_0_110649C   navigation + enable state
      action 1 -> MoveFirst   (loc_1106189)
      action 2 -> MovePrevious(loc_11061B1)
      action 3 -> MoveNext    (loc_11061D9)
      action 4 -> MoveLast    (loc_1106201)
      `RecordCount <= 0` ya Not arg_C -> saare buttons False
      (loc_110622F-11062C5: tFirst/tPrev/tNext/tLast/tFind/tDel/tEdit/tPrn)
      warna at-start -> tFirst=tPrev=False (loc_11062E8),
                        at-end -> tNext=tLast=False (loc_1106324)
      TopText1 = "pos/count" warna "0/count" (loc_11063F1 / loc_110642B)
  Proc_5_1_100CB50   mode -> TopText2 label
      "ADD"  -> TopText2="Add",    browse=False (loc_100C997)
      "EDIT" -> TopText2="Edit",   browse=False (loc_100C9E4)
      "INI"  -> TopText2="Browse", browse=True  (loc_100CA7C)
      error path: TopCtrl.Tag default "AEDP" (loc_100CB44)
  Proc_5_2_1067474   button enable per Tag "AEDP"
      browse=True  -> tAdd/tEdit/tDel/tPrn = letter in Tag, warna False;
                      tFind=True,  tSave=False, tCancel=False
      browse=False -> tAdd/tEdit/tDel/tPrn=False;
                      tFind=False, tSave=True,  tCancel=True

NOTE: `ui/base_master.py` ka TopCtrl state-machine (Idle/Add/Edit) isi
logic ka UI-level port hai.  Ye module uska **pure, testable core** hai
- koi bhi naya/legacy screen isse direct state le sakti hai.

Run: python -m pytest tests/unit/test_bas_module_ports.py -q
"""
from __future__ import annotations

# VB6 action argument of Proc_5_0_110649C
NAV_FIRST = 1
NAV_PREV = 2
NAV_NEXT = 3
NAV_LAST = 4

# VB6 TopCtrl.Tag default (loc_100CB44)
DEFAULT_TAG = "AEDP"

# jo buttons VB6 toolbar par hain
ALL_BUTTONS = ("tAdd", "tEdit", "tDel", "tPrn", "tFind", "tSave",
               "tCancel", "tFirst", "tPrev", "tNext", "tLast")

# VB6 TopText2 labels
MODE_LABELS = {"ADD": "Add", "EDIT": "Edit", "INI": "Browse"}


def navigate(action: int, position: int, count: int) -> int:
    """VB6 Proc_5_0 ka move-branch -> 1-based position (clamped).

    count<=0 -> 0 (VB6 khali recordset par Move* kuch nahi karta).
    """
    if count <= 0:
        return 0
    pos = int(position or 0)
    if pos < 1:
        pos = 1
    if pos > count:
        pos = count
    if action == NAV_FIRST:
        return 1
    if action == NAV_PREV:
        return max(1, pos - 1)
    if action == NAV_NEXT:
        return min(count, pos + 1)
    if action == NAV_LAST:
        return count
    return pos


def position_text(position: int, count: int) -> str:
    """VB6 `TopCtrl1.TopText1 = AbsolutePosition & "/" & RecordCount`
    (loc_11063F1), khali par `"0/" & RecordCount` (loc_110642B)."""
    total = max(0, int(count or 0))
    pos = int(position or 0)
    if pos > 0:
        return f"{pos}/{total}"
    return f"0/{total}"


def navigation_buttons(position: int, count: int) -> dict:
    """VB6 loc_11062E8 / loc_1106324 - first/prev/next/last enable."""
    total = int(count or 0)
    pos = int(position or 0)
    if total <= 0:
        return {"tFirst": False, "tPrev": False,
                "tNext": False, "tLast": False}
    at_start = pos <= 1
    at_end = pos >= total
    return {"tFirst": not at_start, "tPrev": not at_start,
            "tNext": not at_end, "tLast": not at_end}


def apply_buttons(browse: bool, tag: str = DEFAULT_TAG) -> dict:
    """VB6 Proc_5_2_1067474 - Tag "AEDP" ke hisaab se button enable.

    browse=True (INI/Browse mode):
        A/E/D/P wale buttons enable, baaki disable;
        tFind=True, tSave=False, tCancel=False
    browse=False (Add/Edit mode):
        sab CRUD buttons disable; tFind=False, tSave=True, tCancel=True
    """
    tag = str(tag or DEFAULT_TAG)
    if browse:
        out = {"tAdd": "A" in tag, "tEdit": "E" in tag,
               "tDel": "D" in tag, "tPrn": "P" in tag,
               "tFind": True, "tSave": False, "tCancel": False}
    else:
        out = {"tAdd": False, "tEdit": False, "tDel": False,
               "tPrn": False, "tFind": False, "tSave": True,
               "tCancel": True}
    return out


def toolbar_state(position: int, count: int, enabled: bool = True,
                  tag: str = DEFAULT_TAG) -> dict:
    """VB6 Proc_5_0 poora -> ek dict (buttons + TopText1).

    `RecordCount <= 0` ya Not enabled -> saare buttons False
    (loc_110621F-11062C5).
    """
    buttons = {b: False for b in ALL_BUTTONS}
    total = int(count or 0)
    if total > 0 and enabled:
        pos = max(1, min(int(position or 1), total))
        buttons.update(navigation_buttons(pos, total))
        buttons.update({"tFind": True, "tDel": True, "tEdit": True,
                        "tPrn": True, "tSave": False, "tCancel": False})
    buttons["top_text1"] = position_text(position if total > 0 else 0,
                                         total)
    return buttons


def set_mode(mode: str, tag: str = DEFAULT_TAG) -> dict:
    """VB6 Proc_5_1_100CB50 -> {'mode','label','browse','buttons'}.

    Unknown mode par VB6 On Error branch chalta hai jiska fallback
    `TopCtrl.Tag = "AEDP"` hai (loc_100CB44) - yahan wahi hoga.
    """
    key = str(mode or "").strip().upper()
    if key not in MODE_LABELS:
        # VB6 loc_100CADC error path -> Tag default, koi label change nahi
        return {"mode": key, "label": "", "browse": True,
                "tag": DEFAULT_TAG,
                "buttons": apply_buttons(True, DEFAULT_TAG)}
    browse = (key == "INI")
    return {"mode": key, "label": MODE_LABELS[key], "browse": browse,
            "tag": str(tag or DEFAULT_TAG),
            "buttons": apply_buttons(browse, str(tag or DEFAULT_TAG))}


def update(position: int, count: int, mode: str = "INI",
           tag: str = DEFAULT_TAG, enabled: bool = True) -> dict:
    """Poora TopCtrl state ek call me (UI isse directly consume kar sakti
    hai): navigation + mode buttons + TopText1/TopText2."""
    st = toolbar_state(position, count, enabled=enabled, tag=tag)
    st.update(set_mode(mode, tag))
    st["position"] = navigate(NAV_FIRST, position, count) if count <= 0 \
        else max(1, min(int(position or 1), int(count)))
    st["count"] = max(0, int(count or 0))
    return st
