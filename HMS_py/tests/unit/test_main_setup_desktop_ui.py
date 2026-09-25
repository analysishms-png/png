import os
import sys

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from PyQt6.QtWidgets import QApplication, QLabel, QPushButton


_app = QApplication.instance() or QApplication(sys.argv)
pytestmark = pytest.mark.unit


def test_desktop_style_targets_marked_widget_surfaces():
    from HMS_py.ui.desktop_style import desktop_qss

    assert 'QWidget[desktopSurface="true"]' in desktop_qss()


def test_main_setup_workbench_has_classic_desktop_shell():
    from HMS_py.ui.shell import MainSetupWorkbench

    workbench = MainSetupWorkbench(user="SA")
    try:
        assert workbench.objectName() == "mainSetupWorkbench"
        assert workbench.findChild(QLabel, "mainSetupUserLabel") is not None
        assert workbench.findChild(QLabel, "mainSetupUserLabel").text() == "User: SA"
        buttons = workbench.findChildren(QPushButton)
        assert buttons
        assert all(button.property("desktopAction") is True for button in buttons[:-1])
    finally:
        workbench.close()


def test_base_master_form_exposes_compact_desktop_toolbar():
    from HMS_py.ui.base_master import BaseMasterForm, Field, MasterConfig

    class Api:
        @staticmethod
        def list_all():
            return []

    config = MasterConfig(
        title="Desktop Test",
        columns=[("Code", "code")],
        fields=[Field("code", "Code", required=True)],
        api=Api,
    )
    form = BaseMasterForm(config)
    try:
        assert form.objectName() == "desktopMasterForm"
        assert form.property("desktopSurface") is True
        for button in (form.btnNew, form.btnEdit, form.btnDelete,
                       form.btnSave, form.btnCancel, form.btnExit):
            assert button.property("desktopAction") is True
        assert form.lblState.objectName() == "desktopStateLabel"
    finally:
        form.close()


def test_read_only_main_setup_viewers_use_desktop_surface(monkeypatch):
    from HMS_py.core import general_setup, revenue_budget, seasonmaster
    from HMS_py.ui import revenue_budget_ui, seasonmaster_ui, voucher_environment_ui

    monkeypatch.setattr(seasonmaster, "list_years", lambda: [])
    monkeypatch.setattr(seasonmaster, "list_rows", lambda year: [])
    monkeypatch.setattr(seasonmaster, "get_weekend", lambda: None)
    monkeypatch.setattr(general_setup, "voucher_type_list", lambda: [])
    monkeypatch.setattr(general_setup, "vouchcat_list", lambda: [])
    monkeypatch.setattr(general_setup, "voucher_prefix_list", lambda vtype: [])
    monkeypatch.setattr(general_setup, "voucher_include_list", lambda vtype: [])
    monkeypatch.setattr(general_setup, "voucher_exclude_list", lambda vtype: [])
    monkeypatch.setattr(revenue_budget, "revenue_group_list", lambda: [])
    monkeypatch.setattr(revenue_budget, "budget_months", lambda: [])
    monkeypatch.setattr(revenue_budget, "budget_list", lambda month: [])
    monkeypatch.setattr(revenue_budget, "budget_revenue_options", lambda: [])

    viewers = [
        seasonmaster_ui.SeasonMasterDialog(),
        voucher_environment_ui.VoucherEnvironmentDialog(),
        revenue_budget_ui.RevenueGroupWindow(),
        revenue_budget_ui.RevenueWiseBudgetWindow(),
    ]
    try:
        for viewer in viewers:
            assert viewer.property("desktopSurface") is True
            assert viewer.objectName().startswith("desktop")
            assert all(
                button.property("desktopAction") is True
                for button in viewer.findChildren(QPushButton)
            )
    finally:
        for viewer in viewers:
            viewer.close()


def test_main_setup_launchers_use_desktop_surface():
    from HMS_py.ui.epabx_ui import EPABXLauncher
    from HMS_py.ui.general_setup_ui import GeneralSetupLauncher
    from HMS_py.ui.hr_members_ui import HRMembersLauncher
    from HMS_py.ui.p2_masters import P2Launcher

    launchers = [
        GeneralSetupLauncher(),
        HRMembersLauncher(),
        EPABXLauncher(),
        P2Launcher(),
    ]
    try:
        for launcher in launchers:
            assert launcher.property("desktopSurface") is True
            assert launcher.objectName().startswith("desktop")
            assert all(
                button.property("desktopAction") is True
                for button in launcher.findChildren(QPushButton)
            )
    finally:
        for launcher in launchers:
            launcher.close()


def test_dedicated_main_setup_aliases_are_wired(monkeypatch):
    from HMS_py.ui import banquet_masters_ui, fd_forms_ui, p2_masters
    from HMS_py.ui import shell

    calls = []
    monkeypatch.setattr(
        banquet_masters_ui, "open_func_type",
        lambda parent=None: calls.append(("events", parent)) or "events")
    monkeypatch.setattr(
        p2_masters, "open_depart",
        lambda parent=None: calls.append(("outlet", parent)) or "outlet")
    monkeypatch.setattr(
        fd_forms_ui, "open_depart_sundry",
        lambda parent=None: calls.append(("sundry", parent)) or "sundry")

    registry = shell._form_registry()
    assert registry["Events"]("p") == "events"
    assert registry["Setup Outlet"]("p") == "outlet"
    assert registry["Outlet Bill Sundry Setting"]("p") == "sundry"
    assert calls == [("events", "p"), ("outlet", "p"), ("sundry", "p")]
