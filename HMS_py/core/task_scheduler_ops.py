"""Task Scheduler CRUD — VB6 FrmJobScheduler.frm (JobSchedule table).

VB6 evidence
------------
Form     : HMS_REVERSE_ENGINEERING/HMS/FrmJobScheduler.frm — caption
           "Task Scheduler" (Utility group leaf, BorderStyle=1 Fixed Single).
Dispatch : ModuleAdd.bas loc_1E4A177
           `Loop Until (var_188 = "Task Scheduler")
            ... Set var_90 = New FrmJobScheduler ... Show`
Table    : JobSchedule — 27 cols, LIVE-verified
           (Schedule_Id varchar(11) .. LogSite_Code varchar(2); 1 row
           'KK000000001' / 'NIGHT AUDIT').

Key VB6 SQL (verbatim, decompiled):
  list   : Form_Load loc_1019ED2 / eFind loc_EEFB6D
           "SELECT Schedule_Id Code,ScheduleName Name FROM JobSchedule
            WHERE (LOGSITE_CODE='<site>' OR LOGSITE_CODE='HO')
            ORDER BY ScheduleName"
  read   : MoveRec (Proc_320_39_14320F8) loc_14316B1
           "Select Schedule_Id,ScheduleName,ScheduleType,ScheduleEnabled,
            ScheduleStartDate,ScheduleEndDate,OneTimeOccur,FreqOccurs,
            FreqRecurs,FreqWeekdays,FreqMonth,FreqMonthDay,
            FreqMonthDayOfEveryMonth,FreqMonthThe,FreqMonthTheDay,
            FreqMonthTheDayOfEveryMonth,DFreq,DFreqOccursOnce,
            DFreqOccursEvery,DFreqOccursType,DFreqOccursStartTime,
            DFreqOccursEndTime,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code
            From JobSchedule Where Schedule_Id='<code>'"
  new id : eSave (TopCtrl1_UnknownEvent_16) loc_15867F8
           "Select IsNull(Max(CAST(SUBSTRING(Schedule_Id,3,9) AS INT)),0)+1
            AS MyCode From JobSchedule WHERE SITE_CODE='<site>'"
           + loc_158687F Format(n, "000000000") + 2-char site prefix
           (Proc_183_15_EAC900(site, 2))  =>  'KK' + 9 digits
           (live confirmed: KK000000001).
  dup    : ValidateName (Proc_320_40_108E2E8) loc_108E0CE
           "Select Count(*) From JobSchedule Where ScheduleName='...'"
           (edit branch loc_108E206: "... And ScheduleName<>'<old>'")
           count>0 -> MsgBox "Duplicate Name" (vbInformation,
           title "Information", loc_108E158).
  insert : eSave loc_1586C78..loc_1586E51 — 27-col INSERT, U_AE='A'
           (loc_1586E3A), BeginTrans/CommitTrans loc_1586935/158753B.
  update : eSave loc_158725A..loc_158742D — UPDATE ... SET ...,
           U_AE='E', WHERE Schedule_Id='<global_60>'.
  delete : eDel (TopCtrl1_UnknownEvent_C) loc_104FA11
           "Delete From JobSchedule Where Schedule_Id='<code>'"
           inside BeginTrans/CommitTrans (loc_104F9A2/104FA43); guard
           loc_104F956 -> FaLib Proc_183_53_FE2130(loc_FE20AC): child rows
           in JobScheduledDetail -> MsgBox "Related Record Exist in Message
           Schedule, Entry Can't Be Deleted" (title "Validation Check").
  site   : eEdit guard (Proc_183_55_FE7900) -> "Record is Created at Other
           Site, Can't Edit it" (vbCritical &H10).

Field -> column map (control -> column, MoveRec loc_143178A..14320B0):
  Txt(0)                -> ScheduleName        CMBSchduleType  -> ScheduleType
  ChkEnabled            -> ScheduleEnabled(bit) DTPSchStartDate -> ScheduleStartDate
  OptSchEndDate(0/1)+DTPSchEndDate -> ScheduleEndDate
                        ("No End Date" stores DTPSchEndDate.MaxDate
                         = 9999-12-31, loc_1586A1B)
  DTPOTMDate+DTPOTMTime -> OneTimeOccur (date+time, loc_1586A5A)
  CMBOccurType          -> FreqOccurs  TxtNumUpDown1(0) -> FreqRecurs
  ChkWeekDay(1..7 Sun..Sat) -> FreqWeekdays (bitmask, global_68)
  OptMonthlyFreq(0 Day/1 The) -> FreqMonth (Day=0, The=1)
  TxtNumUpDown1(1)      -> FreqMonthDay          TxtNumUpDown1(2) -> FreqMonthDayOfEveryMonth
  CMBMonthlyThe         -> FreqMonthThe          CMBMonthlyTheDay -> FreqMonthTheDay
  TxtNumUpDown1(3)      -> FreqMonthTheDayOfEveryMonth
  OptDailyFreq(0 Once/1 Every) -> DFreq (Once=0, Every=1)
  DTPDFOccurOnce        -> DFreqOccursOnce       TxtNumUpDown1(4) -> DFreqOccursEvery
  CMBDFOccurUnit        -> DFreqOccursType       DTPDFStartTime   -> DFreqOccursStartTime
  DTPDFEndTime          -> DFreqOccursEndTime
  Site/Logsite/MemVars  -> Site_Code / LogSite_Code / U_Name / U_EntDt

Deviations:
  * Saara data `?`-parameterized (VB6 '&' string-concat SQL ki jagah) —
    repo rule (core/db.py).
  * ID reservation UPDLOCK/HOLDLOCK (db.next_serial BUG-015 pattern);
    VB6 plain Max+1 tha (race do users ko same id de sakta tha).
  * Edit dup-check Schedule_Id se exclude karta hai (VB6 old-name
    global_64 se) — functionally same outcome.
  * FreqWeekdays sirf FreqOccurs='Weekly' par checkbox-bitmask se banta hai
    (VB6 global_68 ka computation decompile me nahi mila; live Daily row me
    FreqWeekdays=0 — us behaviour ko reproduce kiya). Bit order Sunday=1 ..
    Saturday=64 (ChkWeekDay Index 1..7, 2^(i-1)).
  * Koi schema change nahi — saare 27 columns live-verified.
"""
from __future__ import annotations

import datetime

from HMS_py.core import db

SITE = db.get_site_code()          # VB6 MemVar_1F92070 (Site_Code / id prefix)
USER_DEFAULT = db.get_user()       # VB6 MemVar_1F920C8 (U_Name)

# DTPSchEndDate.MaxDate sentinel — "No End Date" radio stores this
# (VB6 loc_1586A1B; live row ScheduleEndDate = 9999-12-31).
NO_END_DATE = datetime.datetime(9999, 12, 31)

# VB6 insert column list, exact order (loc_1586C78..1586C86)
INSERT_COLS = (
    "Schedule_Id", "ScheduleName", "ScheduleType", "ScheduleEnabled",
    "ScheduleStartDate", "ScheduleEndDate", "OneTimeOccur", "FreqOccurs",
    "FreqRecurs", "FreqWeekdays", "FreqMonth", "FreqMonthDay",
    "FreqMonthDayOfEveryMonth", "FreqMonthThe", "FreqMonthTheDay",
    "FreqMonthTheDayOfEveryMonth", "DFreq", "DFreqOccursOnce",
    "DFreqOccursEvery", "DFreqOccursType", "DFreqOccursStartTime",
    "DFreqOccursEndTime", "Site_Code", "U_Name", "U_EntDt", "U_AE",
    "LogSite_Code",
)

# VB6 MoveRec SELECT list (loc_14316B1..14316BF)
_SELECT_COLS = ", ".join(INSERT_COLS)


def _date_dt(v) -> datetime.datetime:
    """date/str -> datetime midnight (SQL Server datetime param)."""
    if isinstance(v, datetime.datetime):
        return v
    if isinstance(v, datetime.date):
        return datetime.datetime(v.year, v.month, v.day)
    if isinstance(v, str) and v:
        s = v.replace("T", " ")[:19]
        for fmt in ("%Y-%m-%d %H:%M:%S", "%Y-%m-%d", "%d/%m/%Y", "%d-%b-%Y"):
            try:
                return datetime.datetime.strptime(s, fmt)
            except ValueError:
                continue
        raise ValueError(f"Invalid date: {v!r}")
    return datetime.datetime.now().replace(hour=0, minute=0, second=0,
                                            microsecond=0)


def _time_dt(v, default: tuple = (0, 0, 0)) -> datetime.datetime:
    """time-only value -> VB6 time-serial base 1899-12-30 (live row evidence:
    DFreqOccursOnce/Start=1899-12-30 00:00:00, End=1899-12-30 23:59:59)."""
    base = datetime.date(1899, 12, 30)
    if isinstance(v, datetime.datetime):
        return datetime.datetime(base.year, base.month, base.day,
                                 v.hour, v.minute, v.second)
    if isinstance(v, datetime.time):
        return datetime.datetime(base.year, base.month, base.day,
                                 v.hour, v.minute, v.second)
    if v is None:
        return datetime.datetime(base.year, base.month, base.day, *default)
    if isinstance(v, str) and v:
        s = v.strip()
        for fmt in ("%H:%M:%S", "%H:%M"):
            try:
                t = datetime.datetime.strptime(s, fmt).time()
                return datetime.datetime(base.year, base.month, base.day,
                                         t.hour, t.minute, t.second)
            except ValueError:
                continue
    return _date_dt(v)


def _row_to_rec(r) -> dict:
    return {
        "schedule_id": (r.Schedule_Id or "").strip(),
        "name": (r.ScheduleName or "").strip(),
        "schedule_type": (r.ScheduleType or "").strip(),
        "enabled": bool(r.ScheduleEnabled),
        "start_date": r.ScheduleStartDate,
        "end_date": r.ScheduleEndDate,
        "one_time": r.OneTimeOccur,
        "freq_occurs": (r.FreqOccurs or "").strip(),
        "freq_recurs": int(r.FreqRecurs or 0),
        "freq_weekdays": int(r.FreqWeekdays or 0),
        "freq_month": int(r.FreqMonth or 0),
        "freq_month_day": int(r.FreqMonthDay or 0),
        "freq_month_day_of_every_month": int(r.FreqMonthDayOfEveryMonth or 0),
        "freq_month_the": (r.FreqMonthThe or "").strip(),
        "freq_month_the_day": (r.FreqMonthTheDay or "").strip(),
        "freq_month_the_day_of_every_month":
            int(r.FreqMonthTheDayOfEveryMonth or 0),
        "dfreq": int(r.DFreq or 0),
        "dfreq_occurs_once": r.DFreqOccursOnce,
        "dfreq_occurs_every": int(r.DFreqOccursEvery or 0),
        "dfreq_occurs_type": (r.DFreqOccursType or "").strip(),
        "dfreq_start_time": r.DFreqOccursStartTime,
        "dfreq_end_time": r.DFreqOccursEndTime,
        "site_code": (r.Site_Code or "").strip(),
        "u_name": (r.U_Name or "").strip(),
        "u_ent_dt": r.U_EntDt,
        "u_ae": (r.U_AE or "").strip(),
        "logsite_code": (r.LogSite_Code or "").strip(),
    }


def list_schedules(cn=None) -> list[dict]:
    """Form_Load/eFind list (VB6 loc_1019ED2 / loc_EEFB6D, verbatim SQL,
    LOGSITE filter parameterized): [{code, name}] ORDER BY ScheduleName."""
    rows = db.query(
        "SELECT Schedule_Id Code, ScheduleName Name FROM JobSchedule "
        "WHERE (LOGSITE_CODE = ? OR LOGSITE_CODE = 'HO') "
        "ORDER BY ScheduleName", (SITE,), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip()} for r in rows]


def get_schedule(schedule_id: str, cn=None) -> dict | None:
    """MoveRec read (VB6 Proc_320_39_14320F8 loc_14316B1, 27-col SELECT
    From JobSchedule Where Schedule_Id='<code>'). None if not found."""
    rows = db.query(
        f"SELECT {_SELECT_COLS} FROM JobSchedule WHERE Schedule_Id = ?",
        (schedule_id,), cn=cn)
    return _row_to_rec(rows[0]) if rows else None


def next_schedule_id(cn=None) -> str:
    """New Schedule_Id (VB6 eSave loc_15867F8 + loc_158687F).

    'Select IsNull(Max(CAST(SUBSTRING(Schedule_Id,3,9) AS INT)),0)+1 AS
     MyCode From JobSchedule WHERE SITE_CODE=<site>'  ->  Format(n,
    "000000000") prefixed by 2-char site (Proc_183_15_EAC900(site,2)).
    Live: 'KK000000001'. UPDLOCK/HOLDLOCK = BUG-015 race guard (deviation
    from plain VB6 Max+1); caller ka cn transaction me hona chahiye."""
    rows = db.query(
        "SELECT ISNULL(MAX(CAST(SUBSTRING(Schedule_Id, 3, 9) AS INT)), 0) "
        "+ 1 AS MyCode FROM JobSchedule WITH (UPDLOCK, HOLDLOCK) "
        "WHERE SITE_CODE = ?", (SITE,), cn=cn)
    n = int(rows[0].MyCode) if rows else 1
    return f"{SITE[:2]}{n:09d}"


def _assert_unique_name(name: str, exclude_id: str | None = None,
                        cn=None) -> None:
    """ValidateName (VB6 Proc_320_40_108E2E8): Add me
    'Select Count(*) From JobSchedule Where ScheduleName=?', Edit me + exclude
    (VB6: And ScheduleName<>'<global_64>'; yahan Schedule_Id se — same
    outcome). count>0 -> VB6 MsgBox 'Duplicate Name' => ValueError."""
    if exclude_id:
        rows = db.query(
            "SELECT 1 FROM JobSchedule WHERE ScheduleName = ? "
            "AND Schedule_Id <> ?", (name, exclude_id), cn=cn)
    else:
        rows = db.query(
            "SELECT 1 FROM JobSchedule WHERE ScheduleName = ?",
            (name,), cn=cn)
    if rows:
        raise ValueError("Duplicate Name")


def assert_editable(schedule_id: str, cn=None) -> None:
    """eEdit site guard (VB6 Proc_183_55_FE7900): Site_Code='HO' aur current
    site HO nahi -> block; ya (Site_Code<>site AND LogSite_Code<>site) ->
    block. MsgBox text VB6 ka hi: 'Record is Created at Other Site, Can't
    Edit it'."""
    rec = get_schedule(schedule_id, cn=cn)
    if rec is None:
        raise ValueError("Record Not Present")
    site, logs = rec["site_code"], rec["logsite_code"]
    if (site == "HO" and SITE != "HO") or (site != SITE and logs != SITE):
        raise ValueError("Record is Created at Other Site, Can't Edit it")


def _params(rec: dict, schedule_id: str | None, user: str) -> tuple:
    """Tuple aligned 1:1 with INSERT_COLS (index == INSERT_COLS.index).
    U_EntDt/U_AE SQL literals hain isliye tuple me nahi hain — INSERT me
    inki position getdate()/'A'|'E' hai, SET me getdate()/'E'."""
    name = str(rec.get("name") or "").strip()
    if not name:
        # VB6 FaLib Proc_183_19_E8DAFC: "<field> is a required field."
        raise ValueError("Name is a required field.")
    start = _date_dt(rec.get("start_date"))
    end = rec.get("end_date")
    end = NO_END_DATE if end is None else _date_dt(end)
    return (
        str(schedule_id or "").strip(),   # Schedule_Id (positional index 0)
        name,
        str(rec.get("schedule_type") or "").strip(),
        1 if rec.get("enabled") else 0,
        start,
        end,
        _date_dt(rec.get("one_time")),
        str(rec.get("freq_occurs") or "").strip(),
        int(rec.get("freq_recurs") or 1),
        int(rec.get("freq_weekdays") or 0),
        int(rec.get("freq_month") or 0),
        int(rec.get("freq_month_day") or 1),
        int(rec.get("freq_month_day_of_every_month") or 1),
        str(rec.get("freq_month_the") or "").strip(),
        str(rec.get("freq_month_the_day") or "").strip(),
        int(rec.get("freq_month_the_day_of_every_month") or 1),
        int(rec.get("dfreq") or 0),
        _time_dt(rec.get("dfreq_occurs_once")),
        int(rec.get("dfreq_occurs_every") or 1),
        str(rec.get("dfreq_occurs_type") or "").strip(),
        _time_dt(rec.get("dfreq_start_time")),
        _time_dt(rec.get("dfreq_end_time"), (23, 59, 59)),
        SITE,                       # Site_Code    (MemVar_1F92070)
        user,                       # U_Name      (MemVar_1F920C8)
        # U_EntDt = getdate() (SQL me literal), U_AE literal 'A'/'E'
        SITE,                       # LogSite_Code (MemVar_1F92078) — last
    )


def _col_map(params: tuple) -> dict:
    """params[0..23] align with INSERT_COLS[0..23]; params[24] = LogSite_Code
    (INSERT_COLS[26] — U_EntDt/U_AE SQL literals hain isliye gap hai)."""
    m = dict(zip(INSERT_COLS[:24], params[:24]))
    m["LogSite_Code"] = params[24]
    return m


def create_schedule(rec: dict, user: str | None = None, cn=None,
                    commit: bool = True) -> str:
    """eSave Add branch (VB6 loc_1586C78 INSERT, U_AE='A').

    Guards: Name Required (VB6 loc_158678D), Duplicate Name
    (Proc_320_40_108E2E8). Schedule_Id = next_schedule_id() isi transaction
    me reserve hota hai (UPDLOCK). Returns naya Schedule_Id."""
    user = user or USER_DEFAULT
    if not str(rec.get("name") or "").strip():
        raise ValueError("Name is a required field.")
    _assert_unique_name(str(rec.get("name") or "").strip(), cn=cn)
    own = cn is None
    cn = cn or db.connect()
    try:
        schedule_id = next_schedule_id(cn=cn)
        params = _params(rec, schedule_id, user)
        # 24 '?' (Schedule_Id..U_Name) + getdate() + 'A' + 1 '?' (LogSite)
        placeholders = ", ".join(["?"] * 24) + ", getdate(), 'A', ?"
        db.execute(
            "INSERT INTO JobSchedule ("
            + ", ".join(INSERT_COLS) + ") VALUES (" + placeholders + ")",
            params[:24] + (params[24],),
            cn=cn, commit=False)
        if commit:
            cn.commit()
        return schedule_id
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


def update_schedule(rec: dict, user: str | None = None, cn=None,
                    commit: bool = True) -> str:
    """eSave Edit branch (VB6 loc_158725A UPDATE, U_AE='E',
    WHERE Schedule_Id='<global_60>'). Schedule_Id column SET nahi hota.
    Site guard (Proc_183_55_FE7900) + Duplicate Name check apply."""
    user = user or USER_DEFAULT
    schedule_id = str(rec.get("schedule_id") or "").strip()
    if not schedule_id:
        raise ValueError("Record Not Present")
    if not str(rec.get("name") or "").strip():
        raise ValueError("Name is a required field.")
    assert_editable(schedule_id, cn=cn)
    _assert_unique_name(str(rec.get("name") or "").strip(),
                        exclude_id=schedule_id, cn=cn)
    params = _params(rec, schedule_id, user)
    # SET order = VB6 SET list (loc_158725A): all value cols except
    # Schedule_Id/U_EntDt/U_AE; U_EntDt=getdate(), U_AE='E' at their
    # original positions (after U_Name, before LogSite_Code).
    set_cols = [c for c in INSERT_COLS
                if c not in ("Schedule_Id", "U_EntDt", "U_AE")]
    vmap = _col_map(params)
    ordered = [vmap[c] for c in set_cols[:23]]
    tail = [vmap[c] for c in set_cols[23:]]
    n = db.execute(
        "UPDATE JobSchedule SET " + ", ".join(
            f"{c} = ?" for c in set_cols[:23])
        + ", U_EntDt = getdate(), U_AE = 'E', "
        + ", ".join(f"{c} = ?" for c in set_cols[23:])
        + " WHERE Schedule_Id = ?",
        tuple(ordered) + tuple(tail) + (schedule_id,), cn=cn, commit=commit)
    if not n:
        raise ValueError("Record Not Present")
    return schedule_id


def assert_deletable(schedule_id: str, cn=None) -> None:
    """VB6 eDel guards, confirm se PEHLE (loc_104F8DD/104F956):
    1) FaLib Proc_183_56_FE8818 — other-site record ->
       'Record is Created at Other Site, Can't Delete it' (&H10).
    2) FaLib Proc_183_53_FE2130(child JobScheduledDetail) ->
       'Related Record Exist in Message Schedule, Entry Can't Be Deleted'
       (&H40, title 'Validation Check').
    Raise ho to UI VB6 MsgBox dikhakar confirm nahi karega."""
    rec = get_schedule(schedule_id, cn=cn)
    if rec is None:
        raise ValueError("Record Not Present")
    site, logs = rec["site_code"], rec["logsite_code"]
    if (site == "HO" and SITE != "HO") or (site != SITE and logs != SITE):
        raise ValueError("Record is Created at Other Site, Can't Delete it")
    rows = db.query(
        "SELECT COUNT(Schedule_Id) Cnt FROM JobScheduledDetail "
        "WHERE Schedule_Id = ?", (schedule_id,), cn=cn)
    if rows and int(rows[0].Cnt or 0) > 0:
        raise ValueError(
            "Related Record Exist in Message Schedule, "
            "Entry Can't Be Deleted")


def delete_schedule(schedule_id: str, cn=None, commit: bool = True) -> int:
    """eDel (VB6 TopCtrl1_UnknownEvent_C): pehle assert_deletable() ke
    dono guard, warna
    'Delete From JobSchedule Where Schedule_Id=?' (loc_104FA11).
    Confirm 'Delete Record ?' UI karta hai (loc_104F991) — uske baad yeh
    function call hota hai (guards dobara chalte hain, idempotent)."""
    assert_deletable(schedule_id, cn=cn)
    n = db.execute("DELETE FROM JobSchedule WHERE Schedule_Id = ?",
                   (schedule_id,), cn=cn, commit=commit)
    return n
