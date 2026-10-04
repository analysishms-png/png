"""Unit tests for FA Environment (core/fa_enviro.py) parity and audit logging."""
from __future__ import annotations

import pytest
from unittest.mock import patch, MagicMock

from HMS_py.core import fa_enviro


def test_fa_enviro_get_success():
    mock_row = {
        "Age1": 30, "Age2": 60, "Age3": 90, "Age4": 120, "Age5": 150, "Age6": 180,
        "Amt1": 1000.0, "Amt2": 2000.0, "Amt3": 3000.0, "Amt4": 4000.0, "Amt5": 5000.0, "Amt6": 6000.0,
        "TagadaHeader1": "Notice Header 1", "TagadaHeader2": "", "TagadaHeader3": "", "TagadaHeader4": "", "TagadaHeader5": "",
        "TagadaFooter1": "Footer 1", "TagadaFooter2": "", "TagadaFooter3fa": "", "TagadaFooter4": "", "TagadaFooter5": "",
        "CreditLimit": 50000.0, "DebitLimit": 0.0, "NegativeCashBalance": "N", "ShowGroup": "Y", "DonotShowGroup": "N",
        "ShowCurrentBalance": "Y", "VerticleBalanceSheet": "N", "ShowQty": "Y", "ShowCityName": "Y",
        "LedDivCode": "", "LedSiteCode": "", "LedPrefix": "", "daterfill": "", "titlerfill": "", "pagenofill": "",
        "RunPIF": "", "FilterAC": "", "AddressHelp": "", "DateLock": "", "CashBookBalance": "", "MonthTotal": "",
        "OnLineAdjustment": "", "linefiller": "", "OpStockQTY": 100.0, "OpStockValue": 5000.0, "ClStockQTY": 120.0,
        "ClStockValue": 6000.0, "CashBookPage": "", "CityNameDisp": "Y", "ToBy": "ToBy", "RepToBy": "", "PreBal": "Y", "PDCDt": "",
        "Site_Code": "KK", "LogSite_Code": "KK", "TagadaFooter3": ""
    }
    with patch("HMS_py.core.db.query", return_value=[mock_row]):
        val = fa_enviro.get(site_code="KK")
        assert val["Age1"] == 30
        assert val["CreditLimit"] == 50000.0
        assert val["TagadaHeader1"] == "Notice Header 1"


def test_fa_enviro_update_settings_matches_vb6_no_audit():
    """MS-006 (re-opened 2026-10-02): VB6 FaEnvron Cmd_Click UPDATE sets
    ONLY business cols + SITE_CODE/LOGSITE_CODE WHERE (FaEnvron.frm
    loc_160F419-160F6C1); live MOONData2627 FAEnviro has NO U_Name/U_AE/
    U_EntDt columns — audit injection would break every save."""
    mock_cn = MagicMock()
    with patch("HMS_py.core.db.connect", return_value=mock_cn), \
         patch("HMS_py.core.db.execute", return_value=1) as mock_exec:
        changes = {"CreditLimit": 75000.0, "TagadaHeader1": "Updated Header"}
        n = fa_enviro.update_settings(changes, user="TEST_USER", cn=mock_cn, site_code="KK")
        assert n == 1

        assert mock_exec.called
        sql_arg = mock_exec.call_args[0][0]
        params_arg = mock_exec.call_args[0][1]

        # business columns present
        assert "[CreditLimit] = ?" in sql_arg
        assert "[TagadaHeader1] = ?" in sql_arg
        # VB6 parity: NO audit columns (table doesn't have them)
        assert "U_Name" not in sql_arg
        assert "U_AE" not in sql_arg
        assert "U_EntDt" not in sql_arg
        # params = change values + site only (no user/'E' audit params)
        assert 75000.0 in params_arg
        assert "Updated Header" in params_arg
        assert "TEST_USER" not in params_arg
