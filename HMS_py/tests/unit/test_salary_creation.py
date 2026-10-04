"""Unit tests: VB6 prSalCreate port -> hr_payroll.create_salary_from_attendance.

No live DB — sab db.query / db.execute / db.connect mocked hain. Fake
executor INSERT/UPDATE params ko ek in-memory Salary row me likhta hai, isliye
round-trip (computed values -> DB) dono verify hote hain.

VB6 prSalCreate.frm evidence (Moondata2627 live):
  * Mth_Year format = 'APR2026' (MON + YYYY)
  * Salary.Basic = Employee.Basic * Work_Day / days_in_month
    live row: Emp.Basic 10500, Work_Day 14/30 -> 4900.0

run: python -m pytest tests/unit/test_salary_creation.py -q
"""
from datetime import date, datetime
from types import SimpleNamespace

import pytest

from HMS_py.core import db, hr_payroll


# insert_salary INSERT ke params order (U_EntDt/U_AE literals hain, isliye
# param list me nahi aate).
_INSERT_COLS = [
    "Mth_Year", "Emp_Code", "Work_Day", "CL", "Leave", "Sunday", "Holiday",
    "Absent", "Basic", "DA", "HRA", "Income_Tax", "Other_Allow",
    "Other_Deduc", "Conveyance", "Medical", "LTA", "PF", "EPF", "ESI",
    "Loan", "Advance", "Net_Salary", "Loan_Bal", "OverTime", "OverTimeAmt",
    "Site_Code", "U_Name", "LogSite_Code",
]


_EXISTING_ROW = {
    "Mth_Year": "APR2026", "Emp_Code": "KK000272", "Work_Day": 14.0,
    "CL": 0.0, "Leave": 0.0, "Sunday": 0.0, "Holiday": 0.0,
    "Absent": 16.0, "Basic": 4900.0, "DA": 0.0, "HRA": 0.0,
    "Net_Salary": 4900.0, "Site_Code": "KK", "U_Name": "SA",
    "U_AE": "A",
}


class FakeCn:
    def __init__(self):
        self.committed = False
        self.closed = False

    def commit(self):
        self.committed = True

    def close(self):
        self.closed = True


def _emp_row(basic=10500.0, **over):
    row = SimpleNamespace(
        Code="KK000272", Basic=basic, DA=0.0, HRA=0.0, Income_Tax=0.0,
        Other_Allow=0.0, Other_Deduc=0.0, Conveyance=0.0, Medical=0.0,
        LTA=0.0, PF=0.0, ESI=0.0, OTRate=0.0)
    for k, v in over.items():
        setattr(row, k, v)
    return row


def _attend_rows(present_days=14, year=2026, mon=4):
    """Month ki pehli `present_days` tarikhein P/P; baaki din ka row hi nahi
    (VB6 Attend grid me absent din ka record nahi banta)."""
    return [SimpleNamespace(D=datetime(year, mon, d), F="P", S="P")
            for d in range(1, present_days + 1)]


class Harness:
    """db.query / db.execute / db.connect ko in-memory fake se replace karta."""

    def __init__(self, emp=None, attend=None, existing=False):
        self.emp = emp if emp is not None else _emp_row()
        self.attend = attend if attend is not None else _attend_rows()
        self.row = dict(_EXISTING_ROW) if existing else None
        self.queries = []
        self.executes = []
        self.cn = FakeCn()

    # --- db shims -----------------------------------------------------
    def query(self, sql, params=(), cn=None):
        s = " ".join(sql.split())
        self.queries.append((s, tuple(params)))
        if "FROM Employee" in s:
            return [self.emp] if self.emp and params[0] == self.emp.Code else []
        if "FROM Attend" in s:
            return self.attend
        if s == "SELECT * FROM Salary WHERE Mth_Year = ? AND Emp_Code = ?":
            if self.row and self.row.get("Mth_Year") == params[0] \
                    and self.row.get("Emp_Code") == params[1]:
                return [SimpleNamespace(**self.row)]
            return []
        raise AssertionError(f"unexpected query: {s}")

    def execute(self, sql, params=(), cn=None, commit=True):
        s = " ".join(sql.split())
        self.executes.append({"sql": s, "params": tuple(params),
                              "commit": commit})
        if s.startswith("INSERT INTO Salary"):
            self.row = dict(zip(_INSERT_COLS, params))
            self.row.setdefault("U_AE", "A")
        elif s.startswith("UPDATE Salary SET"):
            sets = s[len("UPDATE Salary SET"):].split(" WHERE ")[0]
            i = 0
            for token in [t.strip() for t in sets.split(",")]:
                if token.endswith("= ?"):
                    self.row[token.split("=")[0].strip()] = params[i]
                    i += 1
            # params[i:] = (Mth_Year, Emp_Code)
        return 1

    def connect(self, *a, **k):
        return self.cn

    def install(self, monkeypatch):
        monkeypatch.setattr(db, "query", self.query)
        monkeypatch.setattr(db, "execute", self.execute)
        monkeypatch.setattr(db, "connect", self.connect)
        return self


# ---------------------------------------------------------------------------
# month parsing
# ---------------------------------------------------------------------------
@pytest.mark.parametrize("raw,expected", [
    ("APR2026", ("APR2026", date(2026, 4, 1), date(2026, 4, 30))),
    ("apr2026", ("APR2026", date(2026, 4, 1), date(2026, 4, 30))),
    ("2026-04", ("APR2026", date(2026, 4, 1), date(2026, 4, 30))),
    ("4-2026", ("APR2026", date(2026, 4, 1), date(2026, 4, 30))),
    ("DEC2025", ("DEC2025", date(2025, 12, 1), date(2025, 12, 31))),
    ("2026-02", ("FEB2026", date(2026, 2, 1), date(2026, 2, 28))),
])
def test_parse_mth_year_formats(raw, expected):
    assert hr_payroll._parse_mth_year(raw) == expected


@pytest.mark.parametrize("bad", ["", "  ", "XYZ2026", "2026-13", "hello",
                                 "2026", "APR26"])
def test_parse_mth_year_rejects_garbage(bad):
    with pytest.raises(ValueError):
        hr_payroll._parse_mth_year(bad)


# ---------------------------------------------------------------------------
# insert path (VB6 pro-rata parity)
# ---------------------------------------------------------------------------
def test_salary_created_from_attendance_pro_rata(monkeypatch):
    """Emp.Basic 10500, Work_Day 14/30 -> Salary.Basic 4900.0 (live row
    evidence) — prSalCreate ka core formula."""
    h = Harness().install(monkeypatch)

    out = hr_payroll.create_salary_from_attendance(
        "2026-04", "KK000272", user="SA", site="KK")

    assert out["mth_year"] == "APR2026"
    assert out["emp_code"] == "KK000272"
    assert out["work_day"] == 14
    assert out["absent"] == 16
    assert out["days_in_month"] == 30
    assert out["basic_earned"] == 4900.0
    assert out["net_salary"] == 4900.0

    assert len(h.executes) == 1, "sirf ek write jaana chahiye"
    assert h.executes[0]["sql"].startswith("INSERT INTO Salary")
    p = h.executes[0]["params"]
    assert p[0] == "APR2026"          # Mth_Year
    assert p[1] == "KK000272"         # Emp_Code
    assert p[2] == 14                 # Work_Day
    assert p[7] == 16                 # Absent
    assert p[8] == 4900.0             # Basic (pro-rata)
    assert p[22] == 4900.0            # Net_Salary
    # transaction andar hi rakhi jaati hai, commit function khud karti hai
    assert h.executes[0]["commit"] is False
    assert h.cn.committed is True


def test_salary_da_hra_percentages(monkeypatch):
    h = Harness().install(monkeypatch)

    out = hr_payroll.create_salary_from_attendance(
        "APR2026", "KK000272", da_per=10.0, hra_per=5.0)

    # 10500 * 10% = 1050 -> *14/30 = 490.0 ; 10500 * 5% = 525 -> 245.0
    assert out["da"] == 490.0
    assert out["hra"] == 245.0
    assert out["net_salary"] == pytest.approx(4900.0 + 490.0 + 245.0)

    p = h.executes[0]["params"]
    assert p[9] == 490.0              # DA
    assert p[10] == 245.0             # HRA


def test_overtime_amount(monkeypatch):
    h = Harness().install(monkeypatch)

    out = hr_payroll.create_salary_from_attendance(
        "APR2026", "KK000272", ot_days=5.0, ot_rate=200.0)

    p = h.executes[0]["params"]
    assert p[24] == 5.0               # OverTime (days)
    assert p[25] == 1000.0            # OverTimeAmt
    assert out["net_salary"] == 4900.0 + 1000.0


def test_full_month_attendance_pays_full_basic(monkeypatch):
    h = Harness(attend=_attend_rows(present_days=30)).install(monkeypatch)

    out = hr_payroll.create_salary_from_attendance("APR2026", "KK000272")

    assert out["work_day"] == 30
    assert out["absent"] == 0
    assert out["basic_earned"] == 10500.0
    assert out["net_salary"] == 10500.0


def test_leave_and_holiday_codes_are_classified(monkeypatch):
    """Attend codes: C -> CL, L -> Leave, H -> Holiday, S -> Sunday,
    A -> Absent (VB6 prAttend grid)."""
    rows = ([SimpleNamespace(D=datetime(2026, 4, d), F="P", S="P")
             for d in range(1, 21)]
            + [SimpleNamespace(D=datetime(2026, 4, 21), F="C", S="C"),
               SimpleNamespace(D=datetime(2026, 4, 22), F="L", S="L"),
               SimpleNamespace(D=datetime(2026, 4, 23), F="H", S="H"),
               SimpleNamespace(D=datetime(2026, 4, 24), F="S", S="S"),
               SimpleNamespace(D=datetime(2026, 4, 25), F="A", S="A")])
    h = Harness(attend=rows).install(monkeypatch)

    out = hr_payroll.create_salary_from_attendance("APR2026", "KK000272")

    assert out["work_day"] == 20
    assert out["cl"] == 1
    assert out["leave"] == 1
    assert out["holiday"] == 1
    assert out["sunday"] == 1
    assert out["absent"] == 30 - 20 - 1 - 1 - 1 - 1


# ---------------------------------------------------------------------------
# update path + errors
# ---------------------------------------------------------------------------
def test_existing_salary_row_is_updated_not_duplicated(monkeypatch):
    h = Harness(existing=True).install(monkeypatch)

    out = hr_payroll.create_salary_from_attendance("APR2026", "KK000272")

    kinds = [c["sql"].split()[0] for c in h.executes]
    assert kinds == ["UPDATE"], f"existing row pe sirf UPDATE: {kinds}"
    assert out["basic_earned"] == 4900.0


def test_unknown_employee_raises_value_error(monkeypatch):
    h = Harness(emp=None).install(monkeypatch)

    with pytest.raises(ValueError):
        hr_payroll.create_salary_from_attendance("APR2026", "NOSUCH")

    assert h.executes == [], "galat employee pe koi write nahi"


def test_bad_month_raises_before_any_write(monkeypatch):
    h = Harness().install(monkeypatch)

    with pytest.raises(ValueError):
        hr_payroll.create_salary_from_attendance("bogus", "KK000272")

    assert h.executes == []


def test_blank_employee_code_rejected(monkeypatch):
    h = Harness().install(monkeypatch)

    with pytest.raises(ValueError):
        hr_payroll.create_salary_from_attendance("APR2026", "   ")

    assert h.executes == []


# ---------------------------------------------------------------------------
# insert_salary return-value bug (MAX(Emp_Code) + 1 -> str+int TypeError)
# ---------------------------------------------------------------------------
def test_insert_salary_returns_row_for_given_pk(monkeypatch):
    """Pehle: MAX(Emp_Code)+1 (varchar) TypeError deta tha aur return value
    galat PK se fetch hoti thi. Ab insert ke baad sahi (Mth_Year, Emp_Code)
    se row wapas aati hai."""
    h = Harness().install(monkeypatch)

    out = hr_payroll.insert_salary({"mth_year": "APR2026",
                                    "emp_code": "KK000272",
                                    "basic": 4900.0, "net_salary": 4900.0})

    assert out["mth_year"] == "APR2026"
    assert out["emp_code"] == "KK000272"
    assert out["basic"] == 4900.0
    assert len(h.executes) == 1
    assert h.executes[0]["sql"].startswith("INSERT INTO Salary")
