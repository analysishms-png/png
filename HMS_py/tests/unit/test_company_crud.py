"""Unit tests for core/company.py CRUD operations."""
from __future__ import annotations

from unittest.mock import patch, MagicMock
import pytest

from HMS_py.core import company


def test_list_companies_mock():
    mock_rows = [("Test Hotel", "TH", "2026-27", "COMP001", "2026-04-01", "2027-03-31")]
    with patch("HMS_py.core.db.query", return_value=mock_rows):
        res = company.list_companies()
        assert len(res) == 1
        assert res[0]["name"] == "Test Hotel"
        assert res[0]["code"] == "COMP001"


def test_get_company_details():
    mock_row = {"Comp_Code": "COMP001", "Comp_Name": "Test Hotel", "GSTIN": "29ABCDE1234F1Z5"}
    with patch("HMS_py.core.db.query", return_value=[mock_row]):
        details = company.get_company_details("COMP001")
        assert details["Comp_Name"] == "Test Hotel"
        assert details["GSTIN"] == "29ABCDE1234F1Z5"


def test_save_company_insert():
    mock_cn = MagicMock()
    with patch("HMS_py.core.db.connect", return_value=mock_cn), \
         patch("HMS_py.core.db.query", return_value=[]), \
         patch("HMS_py.core.db.execute", return_value=1) as mock_exec:
        data = {"Comp_Code": "NEWCOMP", "Comp_Name": "New Company", "SName": "NC"}
        ok = company.save_company(data, user="SA", cn=mock_cn)
        assert ok is True
        assert mock_exec.called
        sql = mock_exec.call_args[0][0]
        assert "INSERT INTO Company" in sql
        assert "U_AE" in sql


def test_delete_company():
    with patch("HMS_py.core.db.execute", return_value=1) as mock_exec:
        ok = company.delete_company("COMP001")
        assert ok is True
        assert "DELETE FROM Company" in mock_exec.call_args[0][0]
