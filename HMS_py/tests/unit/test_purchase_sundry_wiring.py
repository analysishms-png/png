"""Purchase Sundry Setting wiring + sundry opener visibility regression.

VB6 evidence
------------
- ``MDIForm1.frm`` menu ``CCenterMas`` Index 6 = "Purchase Sundry Setting",
  and ``CCenterMas_Click(6)`` does ``global_52 = New DepartSundry`` — i.e.
  the leaf opens ``DepartSundry.frm``.
- ``DepartSundry.frm:1810-1825`` 22-col ``INSERT INTO SundryType`` with
  ``V_Type = site + 'PURC'`` (documented in ``core/sundry_type.py``).
- ``FacilitySundry.frm:1677-1678`` same INSERT with ``V_Type='FACL'``.

Bugs these tests lock down
--------------------------
1. ``fdui.open_depart_sundry`` / ``open_facility_sundry`` returned the
   window WITHOUT showing it.  ``ui/shell.py`` menu click does
   ``self.registry[leaf](self)`` and discards the return value, so the
   form was constructed but never appeared on screen.
2. ``"Purchase Sundry Setting"`` sat in the registry's bulk
   ``_coming_soon`` batch even though the VB6 dispatcher proves the
   screen exists and ``DepartSundryWindow`` was already ported.

Offscreen Qt; DB is touched only by read-only lookups the window build
already performs (same as ``tests/test_wave_ui_forms.py``).
"""
import inspect

import pytest

pytestmark = pytest.mark.unit


def _qapp():
    from PyQt6.QtWidgets import QApplication
    return QApplication.instance() or QApplication([])


def test_purchase_sundry_setting_resolves_to_depart_sundry_opener():
    from HMS_py.ui.shell import _form_registry

    res = _form_registry().get("Purchase Sundry Setting")
    assert res, '"Purchase Sundry Setting" registry me nahi hai'
    src = inspect.getsource(res)
    assert "open_depart_sundry" in src, f"unexpected opener: {src.strip()!r}"


def test_fixed_leaves_are_no_longer_coming_soon():
    """Dono leaves ab real opener par jaate hain (coming_soon batch se nahi)."""
    from HMS_py.ui.shell import _form_registry

    reg = _form_registry()
    for leaf in ("Purchase Sundry Setting", "Guest Registration"):
        resolver = reg.get(leaf)
        assert resolver, f"{leaf} registry me missing"
        assert "open_" in inspect.getsource(resolver), (
            f"{leaf} abhi bhi _coming_soon placeholder par hai")


def test_depart_sundry_opener_shows_window(monkeypatch):
    """Return karne ke saath-saath window dikhani zaroori hai (bug #1)."""
    _qapp()
    from HMS_py.ui import fd_forms_ui as m

    shown = []
    monkeypatch.setattr(
        m.DepartSundryWindow, "show", lambda self, *a, **k: shown.append(self))

    w = m.open_depart_sundry()
    try:
        assert w is not None
        assert w.__class__.__name__ == "DepartSundryWindow"
        assert shown == [w], "open_depart_sundry ne window show nahi ki"
    finally:
        w.close()


def test_facility_sundry_opener_shows_window(monkeypatch):
    _qapp()
    from HMS_py.ui import fd_forms_ui as m

    shown = []
    monkeypatch.setattr(
        m.FacilitySundryWindow, "show", lambda self, *a, **k: shown.append(self))

    w = m.open_facility_sundry()
    try:
        assert w is not None
        assert w.__class__.__name__ == "FacilitySundryWindow"
        assert shown == [w], "open_facility_sundry ne window show nahi ki"
    finally:
        w.close()


def test_sundry_openers_still_return_the_window():
    """Shell return value ko discard karta hai, par tests/usability ke liye
    window object wapas milna chahiye."""
    _qapp()
    from HMS_py.ui import fd_forms_ui as m

    for fn, cls_name in ((m.open_depart_sundry, "DepartSundryWindow"),
                         (m.open_facility_sundry, "FacilitySundryWindow")):
        w = fn()
        try:
            assert w.__class__.__name__ == cls_name
            assert w.windowTitle() == "Outlet Bill Sundry Setting"
        finally:
            w.close()
