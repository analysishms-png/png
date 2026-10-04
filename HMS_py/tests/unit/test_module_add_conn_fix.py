"""BE-001 bugfix guard: module_add delete path must use the in-scope connection.

VB6 ModuleAdd.bas (loc_1EEAD15/loc_1EEAD3D) runs, during module-add flow:

    Delete From MenuHelp Where CompCode=<MemVar_1F92128> And UserName='SA'
    Delete From UserModule

The Python port referenced an undefined name `conn` instead of the function's
`connection` parameter, so NameError was swallowed by `except: pass` and the
DELETEs never ran. This test drives proc_165_1_1ef78bc with a recording
connection and asserts both DELETE statements were actually executed.

run: python -m pytest tests/unit/test_module_add_conn_fix.py -q
"""

from __future__ import annotations

from unittest.mock import MagicMock

import pytest

pytestmark = pytest.mark.unit

from HMS_py.core import module_add as ma  # noqa: E402


def _recording_connection() -> MagicMock:
    """Mock sqlite3.Connection whose .execute() calls are recorded."""
    conn = MagicMock(name="connection")
    conn.execute.return_value.fetchall.return_value = []
    conn.execute.return_value.fetchone.return_value = None
    return conn


class TestModuleAddDeleteWiring:
    """proc_165_1_1ef78bc delete path (loc_1EEACF1 branch)."""

    def test_menuhelp_and_usermodule_deleted_on_matched_char(self):
        # "A!" -> first char maps (A->1), 2nd char "!" is in "XW+GB*Q!JI#L$"
        # so the delete branch is reached.
        conn = _recording_connection()

        result = ma.proc_165_1_1ef78bc("A!", connection=conn)

        assert result == 0, "matched-char path should return success"
        executed = [
            str(call.args[0]) for call in conn.execute.call_args_list if call.args
        ]
        menuhelp_deletes = [
            s for s in executed if s.upper().startswith("DELETE FROM MENUHELP")
        ]
        usermodule_deletes = [
            s for s in executed if s.upper().startswith("DELETE FROM USERMODULE")
        ]
        assert menuhelp_deletes, (
            "DELETE FROM MenuHelp never executed - connection not wired"
        )
        assert usermodule_deletes, (
            "DELETE FROM UserModule never executed - connection not wired"
        )
        # VB6: CompCode=<MemVar_1F92128> And UserName='SA'
        assert "UserName = 'SA'" in menuhelp_deletes[0]

    def test_no_delete_when_no_matched_char(self):
        # "A" alone -> len<=1 early exit; "AZ" -> 'Z' not in match string.
        conn = _recording_connection()

        ma.proc_165_1_1ef78bc("AZ", connection=conn)

        executed = [
            str(call.args[0]).upper()
            for call in conn.execute.call_args_list
            if call.args
        ]
        assert not any(s.startswith("DELETE") for s in executed)
