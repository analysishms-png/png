"""fdRoomChange DB-state parity evidence (specs/003-fdroomchange-ui).

Live DB par: check-in (rollback-safe) → fo_ops.room_change → VB6 write-set
assert karta hai (spec §5 test plan #2):
- nayi RoomOcc row: SNo = MAX+1, RoomNo = new, Type='I' (G1 decision,
  research D1), ChngDate set
- old row: Type='C' + NewRoomNo + Reason + ChkOutDate set
- RoomMast old room RoomStat='D'
- GuestMessage / Booking.OccRoom / PlanDetails re-point (jab pre-data ho)
- G1 reader-visibility: dashboard.py:168 style `Type='I'` count nayi row
  dhundhta hai
- negatives: same-room / occupied / RoomMast-missing → ValueError with zero
  partial rows

Sab kuch per-test transaction rollback-safe — production data intact.
Live DB na ho to skip (research D6).
run: python -m pytest tests/database/test_room_change_parity.py -q
"""
import datetime

import pytest

from HMS_py.core import checkin, db, fo_ops, guestprof


@pytest.fixture
def live_env():
    """Rollback-safe connection; live DB unavailable → skip (research D6)."""
    try:
        cn = db.connect(db.load_config())
        db.query("SELECT COUNT(*) FROM RoomMast", cn=cn)
    except Exception as e:
        pytest.skip(f"live DB unavailable: {e}")
    cur = cn.cursor()
    cur.execute("BEGIN TRANSACTION")
    yield cn
    try:
        cur.execute("ROLLBACK")
        cur.close()
    finally:
        cn.close()


@pytest.fixture
def rmchg_guest():
    code = guestprof.next_code()
    guestprof.insert({"code": code, "name": "PYT RMCHG PARITY",
                      "add1": "TEST", "type": "India"})
    yield code
    try:
        guestprof.delete(code)
    except Exception:
        pass


def _q(cn, sql, params=()):
    return db.query(sql, params, cn=cn)


def _create(cn, guest_code, name, arr, dep, **kw):
    kw.setdefault("user", "PYADMIN")
    return checkin.create_checkin(guest_code, name, arr, dep,
                                  cn=cn, commit=False, **kw)


def test_room_change_db_state_parity(live_env, rmchg_guest):
    cn = live_env
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)

    # --- 3 free 'RO' rooms chahiye (A, B-occupied-target, C-happy-path) ---
    free = fo_ops.free_rooms(cn=cn)
    if len(free) < 3:
        pytest.skip(f"3 free rooms chahiye, mile {len(free)}")
    room_a, room_b, room_c = free[0], free[1], free[2]

    # --- in-house setup: A in room_a, B in room_b ---
    folio_a = _create(cn, rmchg_guest, "PYT RMCHG A", today, dep,
                      roomno=room_a)
    rec_a = checkin.get(folio_a, cn=cn)
    assert rec_a, "checkin A ka folio nahi mila"
    docid = rec_a["docid"]
    _create(cn, rmchg_guest, "PYT RMCHG B", today, dep, roomno=room_b)

    def _rows_for_doc():
        return int(_q(cn, "SELECT COUNT(*) FROM RoomOcc WHERE DocId = ?",
                      (docid,))[0][0])

    pre_count = _rows_for_doc()

    # --- negatives FIRST (guest still in room_a), zero partial rows ---
    with pytest.raises(ValueError, match="same"):
        fo_ops.room_change(docid, room_a, "same room attempt",
                           user="PYADMIN", cn=cn, commit=False)
    assert _rows_for_doc() == pre_count, "same-room ne partial rows chhode"

    with pytest.raises(ValueError, match="occupied"):
        fo_ops.room_change(docid, room_b, "occupied target",
                           user="PYADMIN", cn=cn, commit=False)
    assert _rows_for_doc() == pre_count, "occupied ne partial rows chhode"

    with pytest.raises(ValueError, match="RoomMast"):
        fo_ops.room_change(docid, "99999", "no such room",
                           user="PYADMIN", cn=cn, commit=False)
    assert _rows_for_doc() == pre_count, "RoomMast-miss ne partial rows chhode"

    # --- conditional pre-state (GuestMessage / Booking / PlanDetails) ---
    gm_old_pre = int(_q(
        cn, "SELECT COUNT(*) FROM GuestMessage WHERE FolioNo = ? AND "
            "RTRIM(RoomNo) = ?", (folio_a, room_a))[0][0])
    booking_docid = (rec_a.get("bookingdocid") or "").strip() \
        if isinstance(rec_a, dict) else ""
    if not booking_docid:
        gf = _q(cn, "SELECT RTRIM(ISNULL(BookingDocId, '')) FROM GuestFolio "
                    "WHERE DocId = ?", (docid,))
        booking_docid = (gf[0][0] or "").strip() if gf else ""
    pd_pre = int(_q(cn, "SELECT COUNT(*) FROM PlanDetails WHERE DocId = ?",
                    (docid,))[0][0])

    # --- happy path (commit=False, fixture rollback karega) ---
    res = fo_ops.room_change(docid, room_c, "RMCHG parity reason",
                             change_date=today,
                             change_time=datetime.datetime.now().strftime(
                                 "%H:%M"),
                             user="PYADMIN", cn=cn, commit=False)
    assert res["old_room"] == room_a and res["new_room"] == room_c
    assert res["folio"] == int(folio_a)

    # --- new RoomOcc row: SNo=MAX+1, RoomNo=new, Type='I' (G1), ChngDate ---
    new_sno = int(res["new_sno"])
    nr = _q(cn, "SELECT RTRIM(RoomNo), RTRIM(Type), ChngDate FROM RoomOcc "
                "WHERE DocId = ? AND SNo = ?", (docid, new_sno))
    assert nr, f"nayi RoomOcc row (SNo={new_sno}) nahi mili"
    assert nr[0][0] == room_c, f"nayi row RoomNo {nr[0][0]!r} != {room_c!r}"
    assert (nr[0][1] or "").strip() == "I", \
        f"G1: nayi row Type {(nr[0][1] or '')!r} != 'I'"
    assert nr[0][2] is not None, "ChngDate set nahi hua"

    # --- old row closed: Type='C' + NewRoomNo + Reason + ChkOutDate ---
    old = _q(cn, "SELECT RTRIM(Type), RTRIM(ISNULL(NewRoomNo, '')), "
                 "RTRIM(ISNULL(Reason, '')), ChkOutDate FROM RoomOcc "
                 "WHERE DocId = ? AND RTRIM(RoomNo) = ?",
             (docid, room_a))
    assert len(old) == 1, "old row ki jagah " + str(len(old)) + " rows"
    assert (old[0][0] or "").strip() == "C", "old row Type='C' nahi"
    assert old[0][1] == room_c, f"NewRoomNo {old[0][1]!r} != {room_c!r}"
    assert old[0][2] == "RMCHG parity reason", f"Reason {old[0][2]!r}"
    assert old[0][3] is not None, "ChkOutDate set nahi hua"

    # --- exactly one row added ---
    assert _rows_for_doc() == pre_count + 1, "row count old+1 nahi"

    # --- RoomMast old room dirty ---
    rm = _q(cn, "SELECT RTRIM(RoomStat) FROM RoomMast WHERE RTRIM(Code) = ?",
            (room_a,))
    assert rm and (rm[0][0] or "").strip() == "D", \
        f"RoomStat {rm[0][0] if rm else None!r} != 'D'"

    # --- G1 reader-visibility (dashboard.py:168 style) ---
    vis = _q(cn, "SELECT COUNT(*) FROM RoomOcc WHERE DocId = ? AND "
                 "Type = 'I' AND ChkOutDate IS NULL", (docid,))
    assert vis and int(vis[0][0]) >= 1, "Type='I' reader count ne row nahi dhaundi"

    # --- GuestMessage re-point (conditional: pre-data tha toh sab move hue) ---
    if gm_old_pre:
        gm_old = int(_q(cn, "SELECT COUNT(*) FROM GuestMessage WHERE "
                            "FolioNo = ? AND RTRIM(RoomNo) = ?",
                        (folio_a, room_a))[0][0])
        gm_new = int(_q(cn, "SELECT COUNT(*) FROM GuestMessage WHERE "
                            "FolioNo = ? AND RTRIM(RoomNo) = ?",
                        (folio_a, room_c))[0][0])
        assert gm_old == 0, "GuestMessage purane room par bache"
        assert gm_new >= gm_old_pre, "GuestMessage new room par nahi aaye"

    # --- Booking.OccRoom (conditional: link hai toh update hona chahiye) ---
    if booking_docid:
        bk = _q(cn, "SELECT RTRIM(ISNULL(OccRoom, '')) FROM Booking "
                    "WHERE DocId = ?", (booking_docid,))
        assert bk and bk[0][0] == room_c, \
            f"Booking.OccRoom {bk[0][0] if bk else None!r} != {room_c!r}"

    # --- PlanDetails re-point (conditional: pre rows the toh sab naye par) ---
    pd_rows = _q(cn, "SELECT RTRIM(ISNULL(RoomNo, '')) FROM PlanDetails "
                     "WHERE DocId = ?", (docid,))
    if pd_pre:
        assert len(pd_rows) == pd_pre, "PlanDetails row count badal gaya"
        assert all(r[0] == room_c for r in pd_rows), \
            "PlanDetails me purana RoomNo bache"
    else:
        assert len(pd_rows) == 0, "PlanDetails me anjaan rows aa gayeen"
