"""Unit tests: VB6 .bas modules ka Python port (D4 list - ab poora khaali).

VB6_VS_PYTHON_FILE_BY_FILE.txt SECTION B/D4 ke reported-MISSING/SPARSE/
NO_SQL modules ab Python me ported hain - ye tests unka VB6-parity guard
hain:

  1. core/database_security_module.py  <- DatabaseSecurityModule.bas
                                          (14 named procs, clean VB6)
  2. core/common_dialog.py             <- CommonDialog.bas (2 obfuscated
                                          procs, comdlg32 GetOpenFileName)
  3. core/top_bar_lib.py               <- TopBarLib.bas (3 procs - TopCtrl
                                          navigation/button state)
  4. core/picture.py                   <- Picture.bas (6 procs - AppendChunk
                                          image roundtrip + temp file)
  5. core/native_decls.py              <- Module1.bas (86 Private Declare,
                                          0 procs -> declaration catalog)
  6. core/error_handling.py (modLog)   <- modLog.bas (12 named procs -
                                          vb6-trace-pattern stack logging)
  7. core/data_transfer.py             <- mdlDataTransfer.bas (9 obfuscated
                                          procs - TransIn/TransDel audit)

DB-touch wale paths (execute_*/save_*/load_*/transfer_*) monkeypatch se
mock hote hain; koi test live DB ko nahi chhuta.  VB6 constants/flag
values exact rakhe hain taaki flag-parity guard rahe.

run: python -m pytest tests/unit/test_bas_module_ports.py -q
"""
from __future__ import annotations

import os

import pytest

pytestmark = pytest.mark.unit

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from HMS_py.core import common_dialog as cd          # noqa: E402
from HMS_py.core import database_security_module as dsm  # noqa: E402
from HMS_py.core import data_transfer as dtr          # noqa: E402
from HMS_py.core import error_handling as eh          # noqa: E402
from HMS_py.core import native_decls as nd           # noqa: E402
from HMS_py.core import picture as pic               # noqa: E402
from HMS_py.core import top_bar_lib as tbl           # noqa: E402


# ==================================================================== dsm
class TestDatabaseSecurityModule:
    """DatabaseSecurityModule.bas -> core/database_security_module.py."""

    # ---------------------------------------------------------- builders
    def test_create_secure_insert_exact_vb6_string(self):
        sql = dsm.create_secure_insert("PYTSecurityProbe",
                                       ["Code", "Name"],
                                       ["PYTSEC", "Security Test"])
        assert sql == ("INSERT INTO [PYTSecurityProbe] ([Code], [Name]) "
                       "VALUES (@param0, @param1)")

    def test_create_secure_update_exact_vb6_string(self):
        sql = dsm.create_secure_update("Enviro", ["LogSite_Name"],
                                       ["PYT"], "LogSite_Code = 'KK'")
        assert sql == ("UPDATE [Enviro] SET [LogSite_Name] = @param0 "
                       "WHERE LogSite_Code = 'KK'")

    def test_create_secure_update_without_where(self):
        sql = dsm.create_secure_update("Enviro", ["A", "B"], [1, 2])
        assert sql == "UPDATE [Enviro] SET [A] = @param0, [B] = @param1"
        assert "WHERE" not in sql

    def test_create_secure_select_empty_fields_is_star(self):
        # VB6 `Optional fields` khali -> UBound < 0 branch -> "*"
        assert dsm.create_secure_select("Enviro", None) == \
            "SELECT * FROM [Enviro]"

    def test_create_secure_select_where_and_order(self):
        sql = dsm.create_secure_select("Enviro", ["LogSite_Code"],
                                       "LogSite_Code = 'KK'",
                                       "LogSite_Code")
        assert sql == ("SELECT [LogSite_Code] FROM [Enviro] "
                       "WHERE LogSite_Code = 'KK' "
                       "ORDER BY LogSite_Code")

    def test_builders_reject_empty_table_and_count_mismatch(self):
        assert dsm.create_secure_insert("", ["A"], [1]) == ""
        assert dsm.create_secure_insert("T", ["A", "B"], [1]) == ""
        assert dsm.create_secure_insert("T", [], []) == ""
        assert dsm.create_secure_update("T", ["A"], [1, 2]) == ""
        assert dsm.create_secure_select("", ["A"]) == ""

    def test_bracket_strips_closing_bracket_injection(self):
        # _bracket: `]` hatao taaki identifier break na ho
        assert dsm.create_secure_select("Ev]iro", ["A"]) == \
            "SELECT [A] FROM [Eviro]"

    # -------------------------------------------------------- validate_sql
    def test_validate_sql_practical_blocks_injection_markers(self):
        bad = "SELECT * FROM Enviro WHERE X = 'a'; DROP TABLE Enviro; --"
        assert dsm.validate_sql(bad) is False
        assert dsm.validate_sql("UPDATE T SET A = 1 -- comment") is False
        assert dsm.validate_sql("SELECT 1 /* x */") is False
        assert dsm.validate_sql("SELECT 1 OR 1=1") is False
        assert dsm.validate_sql("SELECT 1 AND 1=1") is False
        assert dsm.validate_sql(None) is False

    def test_validate_sql_practical_allows_plain_parameterized_sql(self):
        # practical mode = default: apna literal SQL safe rehna chahiye
        assert dsm.validate_sql(
            "SELECT [A] FROM [Enviro] WHERE [B] = ?") is True
        assert dsm.validate_sql(
            "INSERT INTO [T] ([A]) VALUES (@param0)") is True

    def test_validate_sql_strict_matches_vb6_self_reject_defect(self):
        # VB6 SQL_INJECTION_PATTERNS me SELECT/INSERT/UPDATE khud hain ->
        # VB6 ka apna CreateSecureSelect output bhi strict me fail hota tha
        # (module docstring "KNOWN VB6 DEFECT").  Yahan wahi exact parity.
        select = dsm.create_secure_select("Enviro", ["A"])
        assert dsm.validate_sql(select, strict=True) is False
        assert dsm.validate_sql(select, strict=False) is True
        # VB6 pattern list ka token-wise split preserve hai
        assert ";DROP" in dsm.VB6_PATTERN_LIST
        assert "SELECT" in dsm.VB6_PATTERN_LIST
        assert dsm.validate_sql("DELETE FROM T", strict=True) is False

    def test_validate_sql_practical_still_catches_dml_after_semicolon(self):
        for marker in (";DROP", ";DELETE", ";UPDATE", ";INSERT", ";EXEC",
                       ";ALTER", ";CREATE", ";TRUNCATE"):
            assert dsm.validate_sql(f"SELECT 1{marker} T") is False

    # ------------------------------------------------------- sanitize_input
    def test_sanitize_input_escape_and_strip(self):
        # VB6 SanitizeInput: ' -> '' (escape, quote rehta hai!), phir
        # ; / -- / /* */ hatao.  Lone quote nahi bachna chahiye.
        san = dsm.sanitize_input("test'; DROP TABLE Patients; --")
        assert ";" not in san
        assert "--" not in san
        assert "'" not in san.replace("''", "")   # sab escaped hain
        assert san.startswith("test''")

    def test_sanitize_input_printable_ascii_only(self):
        # VB6: `If char >= " " And char <= "~"` -> 0x20..0x7E filter
        assert dsm.sanitize_input("a\x07b\x00c") == "abc"
        assert dsm.sanitize_input("tab\there") == "tabhere"
        assert dsm.sanitize_input(None) == ""

    def test_sanitize_input_preserves_normal_text(self):
        assert dsm.sanitize_input("Guest Name 123") == "Guest Name 123"

    # ---------------------------------------------------------- executors
    def test_execute_non_query_false_on_blocked_sql_without_db(self,
                                                               monkeypatch):
        def _boom(*_a, **_k):     # db ko chhuna hi nahi chahiye
            raise AssertionError("blocked SQL ne db.execute call kiya")
        monkeypatch.setattr(dsm.db, "execute", _boom)
        assert dsm.execute_non_query(
            "SELECT 1; DROP TABLE Enviro; --") is False

    def test_execute_non_query_true_only_when_rows_affected(self, monkeypatch):
        calls = []

        def _exec(sql, params=(), cn=None, commit=True):
            calls.append((sql, params))
            return _exec.n
        _exec.n = 3
        monkeypatch.setattr(dsm.db, "execute", _exec)
        assert dsm.execute_non_query(
            "UPDATE [Enviro] SET [A] = ?", (1,)) is True
        _exec.n = 0                     # recordsAffected = 0 -> VB6 False
        assert dsm.execute_non_query(
            "UPDATE [Enviro] SET [A] = ?", (1,)) is False
        assert len(calls) == 2

    def test_execute_non_query_false_on_db_error(self, monkeypatch):
        monkeypatch.setattr(dsm.db, "execute",
                            lambda *a, **k: (_ for _ in ()).throw(
                                RuntimeError("boom")))
        assert dsm.execute_non_query("UPDATE [Enviro] SET [A] = ?") is False

    def test_execute_secure_query_blocked_returns_empty(self, monkeypatch):
        def _boom(*_a, **_k):
            raise AssertionError("blocked SQL ne db.query call kiya")
        monkeypatch.setattr(dsm.db, "query", _boom)
        assert dsm.execute_secure_query(
            "SELECT * FROM Enviro; DROP TABLE Enviro; --") == []

    def test_execute_secure_query_strict_mode_blocks_select(self, monkeypatch):
        monkeypatch.setattr(dsm.db, "query",
                            lambda *a, **k: (_ for _ in ()).throw(
                                AssertionError("strict block nahi hua")))
        # VB6 self-reject parity: strict me saara SELECT block
        assert dsm.execute_secure_query(
            "SELECT * FROM Enviro", strict=True) == []

    def test_execute_secure_query_returns_rows(self, monkeypatch):
        seen = {}

        def _q(sql, params=(), cn=None):
            seen["sql"], seen["params"] = sql, params
            return [("KK",)]
        monkeypatch.setattr(dsm.db, "query", _q)
        rows = dsm.execute_secure_query("SELECT [A] FROM [Enviro] WHERE [B]=?",
                                        ("x",))
        assert rows == [("KK",)]
        assert seen["params"] == ("x",)

    # ------------------------------------------------------- connection mgmt
    def test_connection_lazy_open_and_close(self, monkeypatch):
        class _Cn:
            closed = False

            def close(self):
                self.closed = True
        cn = _Cn()
        monkeypatch.setattr(dsm.db, "connect", lambda *a, **k: cn)
        dsm.close_database_connection()          # pehle se None ho
        assert dsm.get_database_connection() is cn
        assert dsm.get_database_connection() is cn   # cached (1 hi connect)
        dsm.close_database_connection()
        assert dsm._conn is None
        assert cn.closed is True

    def test_initialize_database_false_on_connect_error(self, monkeypatch):
        def _boom(*_a, **k):
            raise RuntimeError("no db")
        monkeypatch.setattr(dsm.db, "connect", _boom)
        dsm.close_database_connection()
        assert dsm.initialize_database() is False
        assert dsm._conn is None

    # ------------------------------------------------------ test/integrity
    def test_test_database_security_all_four_pass(self, monkeypatch):
        monkeypatch.setattr(dsm.db, "query", lambda *a, **k: [(1,)])
        monkeypatch.setattr(dsm.db, "execute", lambda *a, **k: 1)
        res = dsm.test_database_security()
        assert res == {"safe_select": True, "injection_blocked": True,
                       "parameterized_insert": True, "sanitize_ok": True}

    def test_check_database_integrity_default_tables(self, monkeypatch):
        # default = HMS critical tables (VB6 list medical template tha)
        assert dsm.DEFAULT_CRITICAL_TABLES == ("Enviro", "Depart",
                                               "RoomMast", "ItemMast")
        assert set(dsm.VB6_SAMPLE_TABLES) == {"Patients", "Appointments",
                                              "Billing", "Inventory"}
        seen = []

        def _q(sql, params=(), cn=None):
            seen.append(sql)
            return [(5,)]
        monkeypatch.setattr(dsm.db, "query", _q)
        assert dsm.check_database_integrity() is True
        assert len(seen) == len(dsm.DEFAULT_CRITICAL_TABLES)
        assert "FROM [Enviro]" in seen[0]

    def test_check_database_integrity_fails_on_missing_table(self,
                                                              monkeypatch):
        def _q(sql, params=(), cn=None):
            return [] if "Ghost" in sql else [(1,)]
        monkeypatch.setattr(dsm.db, "query", _q)
        assert dsm.check_database_integrity(("Enviro", "Ghost")) is False

    def test_vb6_constants_and_severity_preserved(self):
        assert dsm.CONNECTION_TIMEOUT == 30
        assert dsm.COMMAND_TIMEOUT == 60
        assert (dsm.SEV_INFO, dsm.SEV_LOW, dsm.SEV_HIGH,
                dsm.SEV_CRITICAL) == (1, 2, 30, 40)

    def test_backup_database_no_path_and_no_backup_tool(self, monkeypatch):
        # db_backup fail + fallback path khali -> False (VB6 bhi fail karta)
        def _boom(*_a, **_k):
            raise RuntimeError("no backup")
        monkeypatch.setattr(dsm.db, "load_config", lambda *a, **k: {})
        import HMS_py.core.db_backup as _bk
        monkeypatch.setattr(_bk, "backup_database", _boom)
        assert dsm.backup_database("") is False


# ==================================================================== cd
class TestCommonDialog:
    """CommonDialog.bas -> core/common_dialog.py (flag/struct parity)."""

    def test_vb6_flag_and_buffer_constants_exact(self):
        # VB6 loc_FF62F4 / loc_FF633A byte-poke values + Space(&H104) buf
        assert cd.VB6_MAX_PATH == 0x104 == 260
        assert cd.VB6_MAX_TITLE == 0x105 == 261
        assert cd.OPEN_FLAGS_VB6 == 0x201004
        assert cd.SAVE_FLAGS_VB6 == 0x200807
        assert (cd.MODE_OPEN, cd.MODE_SAVE) == (0, 1)

    def test_build_filter_vb6_pipe_to_qt(self):
        # VB6: Replace(filter, "|", Chr(0)) & Chr(0) -> Qt ";;" format
        assert cd.build_filter("All Files|*.*") == "All Files (*.*)"
        assert cd.build_filter("Text Files|*.txt|All Files|*.*") == \
            "Text Files (*.txt);;All Files (*.*)"

    def test_build_filter_empty_and_odd_parts_fall_back(self):
        assert cd.build_filter("") == "All Files (*.*)"
        assert cd.build_filter("OnlyLabel") == "All Files (*.*)"
        assert cd.build_filter(None) == "All Files (*.*)"

    def test_split_selection_none_and_empty(self):
        assert cd.split_selection(None) is None
        assert cd.split_selection("") is None
        assert cd.split_selection("\x00\x00") is None

    def test_split_selection_single_nul_terminated(self):
        # VB6 Proc_349_0: Left$(buf, InStr(1, buf, Chr$(0)) - 1)
        assert cd.split_selection("C:\\hms\\a.txt\x00") == "C:\\hms\\a.txt"
        # bina NUL wala raw buffer bhi waisa hi rehta hai
        assert cd.split_selection("C:\\hms\\a.txt") == "C:\\hms\\a.txt"

    def test_split_selection_multi_select_dir_plus_files(self):
        # Win32 OFN_ALLOWMULTISELECT format: dir NUL file1 NUL file2
        buf = "C:\\hms\x00a.txt\x00b.txt\x00"
        assert cd.split_selection(buf) == ["C:\\hms\\a.txt",
                                           "C:\\hms\\b.txt"]

    def test_truncate_path_single_string_variant(self):
        assert cd.truncate_path("C:\\x\\y.txt\x00") == "C:\\x\\y.txt"
        assert cd.truncate_path(None) == ""
        assert cd.truncate_path("C:\\d\x00f.txt\x00") == "C:\\d\\f.txt"

    def test_get_open_and_save_default_titles_and_filter(self):
        # _pick Qt dialog khulta hai (interactive) - yahan sirf signature
        # contract check: functions callable hain aur default filter constant
        assert cd.DEFAULT_FILTER == "All Files|*.*"
        assert callable(cd.get_open_file_name)
        assert callable(cd.get_save_file_name)


# ===================================================================== tbl
class TestTopBarLib:
    """TopBarLib.bas -> core/top_bar_lib.py (TopCtrl state machine)."""

    # ---------------------------------------------------------- navigation
    def test_navigate_actions_clamp(self):
        assert tbl.navigate(tbl.NAV_FIRST, 5, 100) == 1
        assert tbl.navigate(tbl.NAV_LAST, 5, 100) == 100
        assert tbl.navigate(tbl.NAV_PREV, 1, 100) == 1      # at-start clamp
        assert tbl.navigate(tbl.NAV_NEXT, 100, 100) == 100  # at-end clamp
        assert tbl.navigate(tbl.NAV_PREV, 5, 100) == 4
        assert tbl.navigate(tbl.NAV_NEXT, 5, 100) == 6

    def test_navigate_empty_recordset_returns_zero(self):
        # VB6: RecordCount <= 0 -> Move* kuch nahi karta
        for action in (1, 2, 3, 4):
            assert tbl.navigate(action, 0, 0) == 0
            assert tbl.navigate(action, 5, -1) == 0

    def test_navigate_unknown_action_returns_clamped_position(self):
        assert tbl.navigate(99, 5, 10) == 5
        assert tbl.navigate(99, 99, 10) == 10

    # --------------------------------------------------------- position text
    def test_position_text(self):
        # VB6 loc_11063F1 / loc_110642B
        assert tbl.position_text(5, 100) == "5/100"
        assert tbl.position_text(0, 100) == "0/100"
        assert tbl.position_text(0, 0) == "0/0"
        assert tbl.position_text(-3, 10) == "0/10"

    # ------------------------------------------------------------- buttons
    def test_navigation_buttons_boundaries(self):
        assert tbl.navigation_buttons(1, 10) == {
            "tFirst": False, "tPrev": False,
            "tNext": True, "tLast": True}
        assert tbl.navigation_buttons(10, 10) == {
            "tFirst": True, "tPrev": True,
            "tNext": False, "tLast": False}
        assert tbl.navigation_buttons(5, 10) == {
            "tFirst": True, "tPrev": True,
            "tNext": True, "tLast": True}
        # empty recordset -> saare False (loc_110622F)
        assert tbl.navigation_buttons(0, 0) == {
            "tFirst": False, "tPrev": False,
            "tNext": False, "tLast": False}

    def test_apply_buttons_browse_respects_tag(self):
        # Tag "AEDP" -> A/E/D/P enable (loc_100C997-100CA7C)
        st = tbl.apply_buttons(True, "AEDP")
        assert st["tAdd"] and st["tEdit"] and st["tDel"] and st["tPrn"]
        assert st["tFind"] is True
        assert st["tSave"] is False and st["tCancel"] is False
        # partial tag: sirf wohi letter wale enable
        st = tbl.apply_buttons(True, "A")
        assert st["tAdd"] is True
        assert st["tEdit"] is False and st["tDel"] is False
        assert st["tPrn"] is False

    def test_apply_buttons_edit_mode(self):
        st = tbl.apply_buttons(False, "AEDP")
        assert not any(st[b] for b in ("tAdd", "tEdit", "tDel", "tPrn"))
        assert st["tFind"] is False
        assert st["tSave"] is True and st["tCancel"] is True

    def test_toolbar_state_all_disabled_when_empty_or_not_enabled(self):
        st = tbl.toolbar_state(0, 0)
        assert all(v is False for k, v in st.items()
                   if k != "top_text1")
        assert st["top_text1"] == "0/0"
        st = tbl.toolbar_state(5, 10, enabled=False)
        assert all(v is False for k, v in st.items()
                   if k != "top_text1")

    def test_toolbar_state_populated_when_records_exist(self):
        st = tbl.toolbar_state(5, 10)
        assert st["top_text1"] == "5/10"
        assert st["tFind"] and st["tDel"] and st["tEdit"] and st["tPrn"]
        assert st["tSave"] is False and st["tCancel"] is False

    # --------------------------------------------------------------- modes
    def test_set_mode_labels_and_browse_flag(self):
        # loc_100C997 / 100C9E4 / 100CA7C
        assert tbl.set_mode("ADD")["label"] == "Add"
        assert tbl.set_mode("ADD")["browse"] is False
        assert tbl.set_mode("EDIT")["label"] == "Edit"
        assert tbl.set_mode("EDIT")["browse"] is False
        assert tbl.set_mode("INI")["label"] == "Browse"
        assert tbl.set_mode("INI")["browse"] is True
        # case-insensitive + space trim
        assert tbl.set_mode(" add ")["label"] == "Add"

    def test_set_mode_unknown_uses_vb6_error_fallback(self):
        # VB6 On Error -> TopCtrl.Tag = "AEDP" (loc_100CB44)
        st = tbl.set_mode("BOGUS")
        assert st["label"] == ""
        assert st["browse"] is True
        assert st["tag"] == tbl.DEFAULT_TAG == "AEDP"
        assert st["buttons"]["tAdd"] is True

    def test_update_combines_nav_mode_and_text(self):
        st = tbl.update(5, 10, mode="INI")
        assert st["position"] == 5
        assert st["count"] == 10
        assert st["top_text1"] == "5/10"
        assert st["label"] == "Browse"
        assert st["buttons"]["tAdd"] is True
        # edit mode me CRUD disable + save/cancel enable
        st = tbl.update(5, 10, mode="EDIT")
        assert st["label"] == "Edit"
        assert st["buttons"]["tAdd"] is False
        assert st["buttons"]["tSave"] is True

    def test_update_empty_recordset_position_zero(self):
        st = tbl.update(3, 0, mode="INI")
        assert st["position"] == 0
        assert st["count"] == 0
        assert st["top_text1"] == "0/0"


# ===================================================================== pic
class TestPicture:
    """Picture.bas -> core/picture.py (AppendChunk image roundtrip)."""

    def test_vb6_temp_file_name_and_constants(self):
        # loc_F96B68 fixed temp naam + Win32 layered constants
        assert pic.VB6_TEMP_IMAGE_NAME == "0X2341KLZX.jpg"
        assert pic.VB6_TEMP_FALLBACK_DIR == "C:\\"
        assert pic.WS_EX_LAYERED == 0x80000
        assert pic.GWL_EXSTYLE == -20
        assert pic.LWA_ALPHA == 0x00000002

    def test_get_temp_path_and_temp_image_path(self):
        p = pic.get_temp_path()
        assert p                      # khali nahi
        assert pic.temp_image_path().endswith(pic.VB6_TEMP_IMAGE_NAME)
        assert pic.temp_image_path("x.jpg").endswith("x.jpg")

    def test_image_to_bytes_variants(self, tmp_path):
        assert pic.image_to_bytes(None) == b""
        assert pic.image_to_bytes(b"abc") == b"abc"
        assert pic.image_to_bytes(bytearray(b"abc")) == b"abc"
        assert pic.image_to_bytes(memoryview(b"abc")) == b"abc"
        f = tmp_path / "img.bin"
        f.write_bytes(b"\x89PNG-data")
        assert pic.image_to_bytes(str(f)) == b"\x89PNG-data"
        with open(f, "rb") as fh:
            assert pic.image_to_bytes(fh) == b"\x89PNG-data"
        with pytest.raises(TypeError):
            pic.image_to_bytes(12345)

    def test_save_picture_to_file_roundtrip(self, tmp_path):
        target = str(tmp_path / "out.bin")
        got = pic.save_picture_to_file(b"xyz", target)
        assert got == target
        with open(target, "rb") as fh:
            assert fh.read() == b"xyz"
        # VB6 temp path = temp dir + VB6 fixed naam
        got2 = pic.save_picture_to_file(b"q", pic.temp_image_path())
        try:
            assert got2 == pic.temp_image_path()
            with open(got2, "rb") as fh:
                assert fh.read() == b"q"
        finally:
            os.remove(got2)

    def test_save_image_to_record_sql_and_params(self, monkeypatch):
        seen = {}
        monkeypatch.setattr(pic.db, "execute",
                            lambda sql, params=(), cn=None, commit=True:
                            seen.update(sql=sql, params=params) or 1)
        n = pic.save_image_to_record("ProfileImages", "GuestCode", "PYTG1",
                                     "GuestImage", b"\xff\xd8jpg",
                                     commit=False)
        assert n == 1
        assert seen["sql"] == ("UPDATE [ProfileImages] "
                               "SET [GuestImage] = ? "
                               "WHERE [GuestCode] = ?")
        assert seen["params"] == (b"\xff\xd8jpg", "PYTG1")

    def test_save_image_to_record_guards(self, monkeypatch):
        def _boom(*_a, **_k):
            raise AssertionError("guard ke baad db.execute call hua")
        monkeypatch.setattr(pic.db, "execute", _boom)
        with pytest.raises(ValueError):
            pic.save_image_to_record("", "K", "V", "Col", b"x")
        with pytest.raises(ValueError):
            pic.save_image_to_record("T", "K", "V", "", b"x")
        with pytest.raises(ValueError):
            pic.save_image_to_record("T", "", "V", "Col", b"x")
        with pytest.raises(ValueError):
            pic.save_image_to_record("T", "K", "V", "Col", b"")  # khali data

    def test_load_image_from_record_bytes_and_null(self, monkeypatch):
        seen = {}

        def _q(sql, params=(), cn=None):
            seen["sql"], seen["params"] = sql, params
            return [(b"\x89PNG",)]
        monkeypatch.setattr(pic.db, "query", _q)
        assert pic.load_image_from_record("VenueCapacity", "Code", "V1",
                                          "PicPath") == b"\x89PNG"
        assert seen["sql"] == ("SELECT [PicPath] FROM [VenueCapacity] "
                               "WHERE [Code] = ?")
        assert seen["params"] == ("V1",)

        # no rows / NULL -> b"" (VB6 GetChunk fail branch)
        monkeypatch.setattr(pic.db, "query", lambda *a, **k: [])
        assert pic.load_image_from_record("T", "K", "x", "C") == b""
        monkeypatch.setattr(pic.db, "query", lambda *a, **k: [(None,)])
        assert pic.load_image_from_record("T", "K", "x", "C") == b""

    def test_load_image_from_record_str_value_encodes(self, monkeypatch):
        # kuch ODBC drivers str return karte hain -> latin-1 me bytes
        monkeypatch.setattr(pic.db, "query", lambda *a, **k: [("AB",)])
        assert pic.load_image_from_record("T", "K", "x", "C") == b"AB"

    def test_load_image_from_record_guards(self, monkeypatch):
        def _boom(*_a, **_k):
            raise AssertionError("guard ke baad db.query call hua")
        monkeypatch.setattr(pic.db, "query", _boom)
        with pytest.raises(ValueError):
            pic.load_image_from_record("", "K", "V", "Col")
        with pytest.raises(ValueError):
            pic.load_image_from_record("T", "K", "V", "")

    def test_load_pixmap_empty_data_is_none(self):
        # khali data -> None (Qt import tak nahi jaata)
        assert pic.load_pixmap(b"") is None

    def test_set_window_opacity_clamps_and_reports(self):
        class _W:
            opacity = None

            def setWindowOpacity(self, a):
                self.opacity = a
        w = _W()
        assert pic.set_window_opacity(w, 0.5) is True
        assert w.opacity == 0.5
        pic.set_window_opacity(w, 5.0)        # clamp to 1.0
        assert w.opacity == 1.0
        pic.set_window_opacity(w, -1)         # clamp to 0.0
        assert w.opacity == 0.0

        class _Broken:
            def setWindowOpacity(self, _a):
                raise RuntimeError("no widget")
        assert pic.set_window_opacity(_Broken(), 0.5) is False

    def test_is_layered_capable_is_bool_and_true_on_windows(self):
        assert isinstance(pic.is_layered_capable(), bool)
        if os.name == "nt":
            assert pic.is_layered_capable() is True


# ===================================================================== nd
class TestNativeDecls:
    """Module1.bas (86 Private Declare) -> core/native_decls.py catalog."""

    def test_declare_count_matches_vb6_grep(self):
        assert nd.VB6_DECLARE_COUNT == 86
        assert len(nd.DECLARATIONS) == 86
        # VB6 me 1 duplicate declare (InternetGetConnectedState do baar)
        syms = [s for s, _d, _k in nd.DECLARATIONS]
        assert len(set(syms)) == 85

    def test_declaration_shape_and_sample_entries(self):
        for sym, dll, kind in nd.DECLARATIONS:
            assert sym and dll
            assert kind in ("Function", "Sub")
        # comdlg32 GetOpenFileName -> common_dialog port se map hota hai
        assert ("GetOpenFileName", "comdlg32.dll",
                "Function") in nd.DECLARATIONS
        assert ("GetTempPath", "kernel32", "Function") in nd.DECLARATIONS

    def test_by_dll_groups_all_symbols(self):
        groups = nd.by_dll()
        total = sum(len(v) for v in groups.values())
        assert total == 86
        assert "GetOpenFileName" in groups["comdlg32.dll"]
        assert all(k == k.lower() for k in groups)   # keys normalized

    def test_status_classes(self):
        assert nd.status("GetOpenFileName") == "portable"
        assert nd.status("SerialNo_FromNow") == "hw-blocked"
        assert nd.status("Read_Guest_Card") == "hw-blocked"
        assert nd.status("ZpArchive") == "vendor-dll"
        assert nd.status("CreateFieldDefFile") == "vendor-dll"
        assert nd.status("NoSuchSymbol") == "unknown"

    def test_blocked_symbols_are_all_btlock_hw(self):
        blocked = nd.blocked_symbols()
        assert len(blocked) == 10
        assert set(blocked) == {s for s, d, _k in nd.DECLARATIONS
                                if d == "btlock57L.DLL"}
        assert "Read_Guest_Card" in blocked

    def test_dll_class_sets(self):
        assert nd.hardware_dlls() == frozenset({"btlock57L.DLL"})
        assert nd.vendor_dlls() == frozenset({"zip32.dll", "unzip32.dll",
                                              "p2smon.dll"})

    def test_equivalent_lookup(self):
        assert nd.equivalent("Sleep") == "time.sleep"
        assert nd.equivalent("GetTempPath").startswith("tempfile")
        assert nd.equivalent("NoSuchSymbol") is None
        # har equivalent key asli declaration symbol hona chahiye
        syms = {s for s, _d, _k in nd.DECLARATIONS}
        assert set(nd.PYTHON_EQUIVALENTS) <= syms

    def test_coverage_partition_is_consistent(self):
        cov = nd.coverage()
        assert cov == {"total": 86, "portable": 69, "vendor": 7,
                       "hw_blocked": 10, "with_equivalent": 64}
        assert (cov["portable"] + cov["vendor"] + cov["hw_blocked"]
                == cov["total"])
        assert cov["with_equivalent"] <= cov["portable"] + cov["vendor"]


# =========================================================== modLog (eh)
class TestModLogTrace:
    """modLog.bas (12 named procs) -> core/error_handling.py trace sect.

    VB6: HMS_REVERSE_ENGINEERING/HMS/modLog.bas (vb6-trace-pattern).
    """

    # VB6 ke 12 named procs - parity ke liye exact naam chahiye
    VB6_PROCS = ("RegisterLog", "fg_InIDE", "SetTrue", "LogMsg",
                 "WriteLogLine", "BuildLogFilePath", "CleanupOldLogs",
                 "EnterMethod", "ExitMethod", "TraceMethod",
                 "EnsureStackInitialized", "SerializeParam")

    @pytest.fixture(autouse=True)
    def _reset_state(self):
        """module-level stack/flag state ko har test se pehle reset."""
        eh.gbln_register_log = False
        eh._methods = []
        eh.depth = 0
        eh._initialized = False
        eh._cleanup_checked = False
        yield
        eh.gbln_register_log = False
        eh._methods = []
        eh.depth = 0
        eh._initialized = False
        eh._cleanup_checked = False

    def test_all_vb6_named_procs_exist(self):
        # parity tool ka exact def-match: norm(name) = [^a-z0-9] hatado
        # + lowercase; module-level def naam ka norm same hona chahiye
        import re as _re

        def _norm(s: str) -> str:
            return _re.sub(r"[^a-z0-9]", "", (s or "").lower())
        have = {_norm(d) for d in dir(eh)
                if not d.startswith("__") and callable(getattr(eh, d, None))}
        for proc in self.VB6_PROCS:
            assert _norm(proc) in have, proc
        assert callable(eh.register_log) and callable(eh.log_msg)

    def test_vb6_config_consts(self):
        assert eh.DEF_LOG_DAYS == 30
        assert eh.LOG_DIR_NAME == "log"
        assert eh.LOG_FILE_PREFIX == "app-"
        assert eh.DEBUG_FLAG_FILE == "debug.txt"
        assert eh.MAX_STACK_DEPTH == 64

    # -------------------------------------------------------- activation
    def test_register_log_default_inactive_without_ide_or_flag(self,
                                                               monkeypatch):
        monkeypatch.setattr(eh, "fg_in_ide", lambda: False)
        assert eh.register_log() is False
        assert eh.gbln_register_log is False

    def test_register_log_activate_via_ide_and_sticky(self, monkeypatch):
        monkeypatch.setattr(eh, "fg_in_ide", lambda: True)
        assert eh.register_log() is True
        assert eh.gbln_register_log is True
        # sticky: agla call bina IDE ke bhi True rehta hai
        monkeypatch.setattr(eh, "fg_in_ide", lambda: False)
        assert eh.register_log() is True

    def test_register_log_activate_via_debug_flag_file(self, monkeypatch,
                                                       tmp_path):
        # VB6 signal 2: App.Path\debug.txt (sysadmin switch)
        monkeypatch.setattr(eh, "fg_in_ide", lambda: False)
        monkeypatch.setattr(eh, "_app_path", lambda: str(tmp_path))
        assert eh.register_log() is False
        (tmp_path / eh.DEBUG_FLAG_FILE).write_text("1")
        assert eh.register_log() is True
        assert eh.gbln_register_log is True

    def test_fg_in_ide_and_set_true(self, monkeypatch):
        # default: koi debugger nahi -> False (VB6 compiled EXE jaisa)
        assert eh.fg_in_ide() is False
        monkeypatch.setattr(eh.sys, "gettrace", lambda: lambda: None)
        assert eh.fg_in_ide() is True
        # set_true: VB6 ByRef hook - list me True likh deta hai
        ref = [False]
        assert eh.set_true(ref) is True
        assert ref[0] is True

    # -------------------------------------------------------------- log
    def test_log_msg_inactive_writes_nothing(self, monkeypatch):
        monkeypatch.setattr(eh, "fg_in_ide", lambda: False)
        cap = []
        monkeypatch.setattr(eh, "write_log_line", cap.append)
        eh.log_msg("hello")
        assert cap == []

    def test_log_msg_force_bypasses_activation(self, monkeypatch):
        # VB6: blnForce=True activation flag bypass karta hai
        monkeypatch.setattr(eh, "fg_in_ide", lambda: False)
        cap = []
        monkeypatch.setattr(eh, "write_log_line", cap.append)
        eh.log_msg("critical event", bln_force=True)
        assert len(cap) == 1
        # format: HH:MM:SS < msg >   (VB6 Format$(Now,"hh:nn:ss"))
        import re as _re
        assert _re.match(r"^\d{2}:\d{2}:\d{2} < critical event >$",
                         cap[0])

    def test_log_msg_active_writes_and_cleans_once(self, monkeypatch):
        monkeypatch.setattr(eh, "fg_in_ide", lambda: True)
        cap = []
        monkeypatch.setattr(eh, "write_log_line", cap.append)
        cleaned = []
        monkeypatch.setattr(eh, "cleanup_old_logs",
                            lambda: cleaned.append(1) or 0)
        eh.log_msg("one")
        eh.log_msg("two")
        assert len(cap) == 2
        # VB6: Static blnChecked - sirf pehle LogMsg par cleanup
        assert cleaned == [1]
        assert eh._cleanup_checked is True

    def test_build_log_file_path(self, monkeypatch, tmp_path):
        monkeypatch.setattr(eh, "_app_path", lambda: str(tmp_path))
        p = eh.build_log_file_path()
        import datetime as _dt
        today = _dt.date.today().strftime("%Y-%m-%d")
        assert p == str(tmp_path / "log" / f"app-{today}.txt")
        assert (tmp_path / "log").is_dir()      # VB6 MkDir branch

    def test_write_log_line_appends(self, monkeypatch, tmp_path):
        monkeypatch.setattr(eh, "_app_path", lambda: str(tmp_path))
        eh.write_log_line("line one")
        eh.write_log_line("line two")
        import datetime as _dt
        today = _dt.date.today().strftime("%Y-%m-%d")
        content = (tmp_path / "log" / f"app-{today}.txt").read_text(
            encoding="utf-8")
        assert content == "line one\nline two\n"

    def test_cleanup_old_logs_removes_only_expired(self, monkeypatch,
                                                   tmp_path):
        monkeypatch.setattr(eh, "_app_path", lambda: str(tmp_path))
        log_dir = tmp_path / "log"
        log_dir.mkdir()
        import datetime as _dt
        old = _dt.date.today() - _dt.timedelta(days=eh.DEF_LOG_DAYS + 5)
        old_name = eh.LOG_FILE_PREFIX + old.strftime("%Y-%m-%d") + ".txt"
        (log_dir / old_name).write_text("old")
        new_name = eh.LOG_FILE_PREFIX + \
            _dt.date.today().strftime("%Y-%m-%d") + ".txt"
        (log_dir / new_name).write_text("new")
        (log_dir / (eh.LOG_FILE_PREFIX + "not-a-date.txt")).write_text("x")
        deleted = eh.cleanup_old_logs()
        assert deleted == 1
        assert not (log_dir / old_name).exists()
        assert (log_dir / new_name).exists()     # retention window andar
        assert (log_dir / (eh.LOG_FILE_PREFIX + "not-a-date.txt")).exists()

    # ------------------------------------------------------------- stack
    def test_enter_method_pushes_frame(self):
        eh.enter_method("modLog", "Demo")
        assert eh.depth == 1
        assert eh._methods[0] == "modLog::Demo"
        # logging off -> koi log write nahi

    def test_enter_method_depth_capped_at_max(self):
        for i in range(eh.MAX_STACK_DEPTH + 6):
            eh.enter_method("M", f"P{i}")
        # VB6: If mlngMethodDepth < MAX_STACK_DEPTH - bahar push nahi
        assert eh.depth == eh.MAX_STACK_DEPTH

    def test_enter_method_logs_when_active(self, monkeypatch):
        monkeypatch.setattr(eh, "fg_in_ide", lambda: True)
        monkeypatch.setattr(eh, "cleanup_old_logs", lambda: 0)
        cap = []
        monkeypatch.setattr(eh, "write_log_line", cap.append)
        eh.enter_method("Mod", "Proc", 42, "x")
        assert len(cap) == 1
        assert "Enter: Mod::Proc( 42, x )" in cap[0]

    def test_exit_method_specific_match_and_mismatch(self, monkeypatch):
        cap = []
        monkeypatch.setattr(eh, "write_log_line", cap.append)
        monkeypatch.setattr(eh, "cleanup_old_logs", lambda: 0)
        monkeypatch.setattr(eh, "gbln_register_log", True)
        eh.enter_method("Mod", "A")
        eh.enter_method("Mod", "B")
        # mismatch: top=Mod::B par hum A pop maang rahe -> flag + pop anyway
        eh.exit_method("Mod", "A")
        assert eh.depth == 1
        assert "mismatch" in cap[-1] and "top=Mod::B" in cap[-1]
        # ab top Mod::A hai -> exact match pop
        eh.exit_method("Mod", "A")
        assert eh.depth == 0
        assert cap[-1].endswith("Exit: Mod::A >")

    def test_exit_method_bulk_pops_module_frames(self):
        # VB6 bulk form: sirf TOP frames pop hote hain jab tak top
        # frame ka module match kare (InStr(...)=1 loop)
        eh.enter_method("Other", "C")      # niche rahega
        eh.enter_method("Mod", "A")
        eh.enter_method("Mod", "B")        # top par Mod
        assert eh.depth == 3
        eh.exit_method("Mod")              # bulk: Mod::B, Mod::A pop
        assert eh.depth == 1
        assert eh._methods[0] == "Other::C"
        # top hi doosre module ka hai -> kuch nahi pop hota
        eh.enter_method("Mod2", "X")
        eh.exit_method("Mod")
        assert eh.depth == 2
        # uninitialized par kuch nahi hota (VB6 Exit Sub)
        eh._initialized = False
        eh.exit_method("Mod2", "X")
        assert eh.depth == 2

    def test_trace_method_format(self):
        # uninitialized -> "" (VB6 default String)
        assert eh.trace_method() == ""
        eh.ensure_stack_initialized()
        assert eh.trace_method() == "(trace stack empty)"
        eh.enter_method("Mod", "A")
        eh.enter_method("Mod", "B")
        # top frame par sabse zyada dots, CRLF endings (VB6 vbCrLf)
        out = eh.trace_method()
        assert out == ". Mod::B\r\n mod::A\r\n".replace("mod::", "Mod::")

    def test_serialize_param_vb6_cases(self):
        assert eh.serialize_param(None) == "<Null>"
        assert eh.serialize_param(42) == "42"
        assert eh.serialize_param(3.5) == "3.5"
        assert eh.serialize_param("ab") == "ab"
        assert eh.serialize_param(True) == "True"    # VB6 CStr(True)
        assert eh.serialize_param(False) == "False"
        assert eh.serialize_param([1, 2]) == "Array(2 items)"
        assert eh.serialize_param((1, 2, 3)) == "Array(3 items)"
        assert eh.serialize_param({"a": 1}) == "Object:dict"
        assert eh.serialize_param(object()).startswith("Object:")
        # str() fail ho to <unserializable> (VB6 error branch) - int
        # subclass jiska __str__ raise kare, CStr-fail ka Python analog
        class _BadInt(int):
            def __str__(self):
                raise RuntimeError("nope")
        assert eh.serialize_param(_BadInt(5)) == "<unserializable>"


# ====================================================== data_transfer (dtr)
class TestDataTransfer:
    """mdlDataTransfer.bas -> core/data_transfer.py (TransIn/TransDel)."""

    # ------------------------------------------------- literal builders
    def test_where_fragment_by_field_type(self):
        # VB6 loc_F52301-F523D2
        assert dtr.where_fragment("Number", "Amt", "5") == "[Amt]=5"
        assert dtr.where_fragment("Date/Time", "D", "2026-01-01") == \
            "[D]=#2026-01-01#"
        assert dtr.where_fragment("Text", "Name", "x") == "[Name]='x'"
        assert dtr.where_fragment("Memo", "M", "y") == "[M]='y'"
        assert dtr.where_fragment("Yes/No", "Flag", 1) == "[Flag]=1"
        assert dtr.where_fragment("Currency", "Cr", 10) == "[Cr]=10"
        # unknown type -> "" (VB6 var_88 Empty)
        assert dtr.where_fragment("Bogus", "A", 1) == ""
        # bracket-injection guard (] hatao - dsm._bracket jaisa)
        assert dtr.where_fragment("Text", "Na]me", "x") == "[Name]='x'"

    def test_sql_literal_by_field_type(self):
        assert dtr.sql_literal("Text", "x") == "'x'"
        assert dtr.sql_literal("Memo", "x") == "'x'"
        assert dtr.sql_literal("Number", 5) == "5"
        assert dtr.sql_literal("Yes/No", 1) == "1"
        assert dtr.sql_literal("Currency", 2.5) == "2.5"
        assert dtr.sql_literal("Date/Time", "2026-01-01") == \
            "'2026-01-01'"
        assert dtr.sql_literal("Bogus", 1) == ""

    def test_sql_literal_date_objects(self):
        import datetime as _dt
        assert dtr.sql_literal("Date/Time",
                               _dt.date(2026, 1, 2)) == "'2026-01-02'"
        assert dtr.sql_literal("Date/Time", _dt.datetime(2026, 1, 2,
                                                          3, 4, 5)) == \
            "'2026-01-02 03:04:05'"

    def test_null_to_string(self):
        assert dtr.null_to_string(None) == ""
        assert dtr.null_to_string(5) == "5"
        assert dtr.null_to_string("x") == "x"

    def test_typed_value_type_codes(self):
        # loc_F329ED: 0 -> NULL
        assert dtr.typed_value(0, "v") == "NULL"
        # loc_F3293A: numeric codes raw
        for code in (2, 3, 4, 5, 6, 17):
            assert dtr.typed_value(code, "5") == "5"
        # date codes (Proc_6_7_F25D88)
        assert dtr.typed_value(7, "2026-01-01") == "'2026-01-01'"
        assert dtr.typed_value(0x87, "2026-01-01") == "'2026-01-01'"
        # default/text branch (loc_F329D1): quoted
        assert dtr.typed_value(0xC8, "abc") == "'abc'"
        assert dtr.typed_value(0xCA, "abc") == "'abc'"
        assert dtr.typed_value("junk", "v") == "'v'"

    # ----------------------------------------------------------- dispatch
    def test_transfer_execute_modes_and_skip(self, monkeypatch):
        seen = []
        monkeypatch.setattr(dtr.db, "execute",
                            lambda sql, params=(), cn=None, commit=True:
                            seen.append(sql) or 1)
        # mode 0 -> INSERT, mode 2 -> DELETE
        assert dtr.transfer_execute("RoomMast", " WHERE A=1", 0) == \
            "RoomMast"
        assert dtr.transfer_execute("RoomMast", " WHERE A=1", 2) == \
            "RoomMast"
        # mode 1 -> VB6 khali branch (koi SQL nahi)
        dtr.transfer_execute("RoomMast", " WHERE A=1", 1)
        # skip-list -> VB6 loc_FDA9D0: no-op
        assert dtr.transfer_execute("AcGroup", " WHERE 1=1", 0) == \
            "AcGroup"
        assert dtr.transfer_execute("epabx_data", "", 2) == "epabx_data"
        assert seen == ["INSERT INTO RoomMast WHERE A=1",
                        "DELETE FROM RoomMast WHERE A=1"]

    def test_transfer_skip_list_matches_vb6(self):
        assert dtr.TRANSFER_SKIP_TABLES == frozenset(
            {"acgroup", "epabx_data", "ledgerref", "marketseg"})

    # ------------------------------------------------------ log_table_change
    def test_log_table_change_skips_when_transin_missing(self, monkeypatch):
        def _boom(*a, **k):
            raise AssertionError("guard ke baad insert hua")
        monkeypatch.setattr(dtr.db, "query", lambda *a, **k: [])
        monkeypatch.setattr(dtr.db, "execute", _boom)
        assert dtr.log_table_change("GhostTable", user="PYT") == 0

    def test_log_table_change_inserts_19_col_row(self, monkeypatch):
        seen = {}
        monkeypatch.setattr(
            dtr.db, "query",
            lambda sql, params=(), cn=None: [("RoomMast",)])

        def _exec(sql, params=(), cn=None, commit=True):
            seen.update(sql=sql, params=params)
            return 1
        monkeypatch.setattr(dtr.db, "execute", _exec)
        import datetime as _dt
        dt = _dt.datetime(2026, 1, 2, 3, 4, 5)
        n = dtr.log_table_change(
            "RoomMast", user="PYTU", ent_dt=dt, ae="A",
            pks=[("Code", 20, "101"), ("Site_Code", 20, "KK")])
        assert n == 1
        cols = [c.strip().strip("[]") for c in
                seen["sql"].split("(", 1)[1].split(")", 1)[0].split(",")]
        # 19-col VB6 layout (loc_10E320A)
        assert cols == list(dtr._TRANSDEL_COLUMNS)
        assert seen["sql"].count("?") == 19
        p = seen["params"]
        assert p[0] == "RoomMast"
        # 2 diye + 3 padding = 5 PK slots (VB6 hamesha 5)
        assert p[1:4] == ("Code", 20, "101")
        assert p[4:7] == ("Site_Code", 20, "KK")
        assert p[7:10] == ("", None, None)
        assert p[13:16] == ("", None, None)
        assert p[16:] == ("PYTU", dt, "A")

    # ----------------------------------------------------- log_ledger_changes
    def test_log_ledger_changes_queries_and_inserts(self, monkeypatch):
        execs = []
        monkeypatch.setattr(
            dtr.db, "query",
            lambda sql, params=(), cn=None: [("DOC1", 1), ("DOC2", 2)])

        def _exec(sql, params=(), cn=None, commit=True):
            execs.append((sql, params, commit))
            return 1
        monkeypatch.setattr(dtr.db, "execute", _exec)

        class _Cn:
            def __init__(self):
                self.committed = 0

            def commit(self):
                self.committed += 1
        cn = _Cn()
        n = dtr.log_ledger_changes("RQI", "PYTSUB", user="PYTU", cn=cn)
        assert n == 2
        assert all("FROM [Ledger]" in e[0] or "INSERT" in e[0]
                   for e in execs)
        # query params scoped by V_Type + SubCode (VB6 loc_FAFC13)
        sel = [e for e in execs if e[0].startswith("SELECT")]
        # (query mocked, sirf INSERT execs yahan aate hain)
        assert len([e for e in execs if "TransDel" in e[0]]) == 2
        # PK mapping: PK1=DocID, PK2=V_SNo (VB6 row identity)
        ins = [e for e in execs if "TransDel" in e[0]][0]
        assert ins[1][0] == "Ledger"
        assert ins[1][1] == "DocID"
        assert ins[1][4] == "V_SNo"
        assert ins[1][7] == "PYTU"
        assert ins[1][9] == "A"
        # cn diya -> per-row commit=False, bahar ek commit
        assert sel == []
        assert cn.committed == 1

    def test_log_ledger_changes_none_when_no_rows(self, monkeypatch):
        monkeypatch.setattr(dtr.db, "query", lambda *a, **k: [])
        monkeypatch.setattr(dtr.db, "execute",
                            lambda *a, **k: (_ for _ in ()).throw(
                                AssertionError("rows 0, insert nahi")))
        assert dtr.log_ledger_changes("RQI", "X") == 0

    def test_log_ledger_changes_cn_none_uses_transaction(self,
                                                         monkeypatch):
        from contextlib import contextmanager
        execs = []
        monkeypatch.setattr(dtr.db, "query",
                            lambda *a, **k: [("DOC1", 1)])
        monkeypatch.setattr(
            dtr.db, "execute",
            lambda sql, params=(), cn=None, commit=True:
            execs.append((cn, commit)) or 1)

        class _Cn:
            committed = False

            def commit(self):
                self.committed = True
        holder = {}

        @contextmanager
        def _txn(cn=None):
            c = _Cn()
            holder["cn"] = c
            yield c
            c.committed = True
        monkeypatch.setattr(dtr.db, "transaction", _txn)
        n = dtr.log_ledger_changes("RQI", "X")
        assert n == 1
        # rollback-pattern guard: andar sabi INSERT commit=False + own cn
        assert execs == [(holder["cn"], False)]
        assert holder["cn"].committed is True

    # ------------------------------------------------------------ DDL path
    def test_table_exists_probe_is_parameterized(self, monkeypatch):
        seen = {}

        def _q(sql, params=(), cn=None):
            seen.update(sql=sql, params=params)
            return [(1,)] if params == ("TransIn",) else []
        monkeypatch.setattr(dtr.db, "query", _q)
        assert dtr._table_exists("TransIn") is True
        assert dtr._table_exists("Ghost") is False
        assert "INFORMATION_SCHEMA.TABLES" in seen["sql"]

    def test_create_audit_triggers_guarded_when_table_absent(self,
                                                             monkeypatch):
        monkeypatch.setattr(dtr.db, "query", lambda *a, **k: [])
        monkeypatch.setattr(dtr.db, "execute",
                            lambda *a, **k: (_ for _ in ()).throw(
                                AssertionError("absent table par DDL chala")))
        res = dtr.create_audit_triggers()
        assert res["created"] == 0
        assert "absent" in res["reason"]

    def test_create_audit_triggers_builds_three_per_table(self,
                                                          monkeypatch):
        # _table_exists -> found; config rows -> 1 table x 3 aud
        monkeypatch.setattr(
            dtr.db, "query",
            lambda sql, params=(), cn=None:
            [(1,)] if "INFORMATION_SCHEMA" in sql else
            [("RoomMast", "Code", "UniqueKey", "SiteCode",
              "LogSiteCode")])
        ddls = []

        class _Cn:
            def __init__(self):
                self.committed = 0

            def commit(self):
                self.committed += 1
        cn = _Cn()
        monkeypatch.setattr(
            dtr.db, "execute",
            lambda sql, params=(), cn=None, commit=True:
            ddls.append((sql, commit)) or 1)
        res = dtr.create_audit_triggers(cn=cn, commit=True)
        assert res == {"created": 3}
        assert [d[0].split(" TRIGGER ")[1].split(" ")[0]
                for d in ddls] == ["Tr_RoomMast_A", "Tr_RoomMast_E",
                                   "Tr_RoomMast_D"]
        assert all(d[1] is False for d in ddls)   # loop commit=False
        assert cn.committed == 1                   # bahar ek commit
        # har DDL me EXEC Create_LogTableRecords (VB6 loc_13DDF24)
        assert all("EXEC Create_LogTableRecords 'RoomMast'" in d[0]
                   for d in ddls)

    def test_trigger_ddl_event_mapping(self):
        a = dtr._trigger_ddl("T", "C", "U", "S", "L", "A")
        e = dtr._trigger_ddl("T", "C", "U", "S", "L", "E")
        d = dtr._trigger_ddl("T", "C", "U", "S", "L", "D")
        assert "FOR Insert AS" in a and "FROM Inserted" in a
        assert "FOR Update AS" in e and "FROM Inserted" in e
        assert "FOR Delete AS" in d and "FROM Deleted" in d
        assert "AED='A'" in a and "AED='E'" in e and "AED='D'" in d
        assert "Tr_T_A" in a and "Tr_T_D" in d
        for ddl in (a, e, d):
            assert "Log_TableRecords" in ddl
            assert "Deallocate" in ddl.replace("DEALLOCATE", "Deallocate") \
                or "DEALLOCATE" in ddl

    def test_ensure_logtable_proc_guarded_when_table_absent(self,
                                                            monkeypatch):
        monkeypatch.setattr(dtr.db, "query", lambda *a, **k: [])
        monkeypatch.setattr(dtr.db, "execute",
                            lambda *a, **k: (_ for _ in ()).throw(
                                AssertionError("absent table par DDL chala")))
        assert dtr.ensure_logtable_proc() is False

    def test_ensure_logtable_proc_drop_and_create(self, monkeypatch):
        monkeypatch.setattr(
            dtr.db, "query",
            lambda sql, params=(), cn=None:
            [(1,)] if "INFORMATION_SCHEMA" in sql else [])
        execs = []

        class _Cn:
            def __init__(self):
                self.committed = 0

            def commit(self):
                self.committed += 1
        cn = _Cn()
        monkeypatch.setattr(dtr.db, "execute",
                            lambda sql, params=(), cn=None, commit=True:
                            execs.append((sql, commit)) or 1)
        assert dtr.ensure_logtable_proc(cn=cn) is True
        assert len(execs) == 2
        assert "Drop Procedure Create_LogTableRecords" in execs[0][0]
        assert execs[1][0].startswith(
            "CREATE PROCEDURE dbo.Create_LogTableRecords")
        assert cn.committed == 1
