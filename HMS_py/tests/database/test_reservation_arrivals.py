"""Phase 11 loop — fdCheckIn iterations DB-state parity evidence.

W1: booking.insert -> har booking par NoofRooms GrpBookingDetails rows
    (VB6 live evidence: 19/19 bookings, count == NoofRooms, singles
    included) — fdCheckIn arrivals anti-join is table par depend karta hai.
W2: insert_group_booking schema-faithful columns (BookingDocid — DOCID
    nahi; Adults/Childs — ADULT/CHILD nahi; ArrDate/ArrTime/NoDays copy).
W3: create_checkin BookingSno (VB6 live: booking-driven folios ka sno
    bhara hota hai 1,2,3...) + default sno=1.
W4: booking.list_arrivals = VB6 fdCheckIn.frm Form_Load anti-join
    semantics — same-day arrival visible, per-SNO check-in ke baad exit,
    overdue superset (documented), cancel='N' filter, name_like filter.

Sab kuch rollback-safe (db_transaction fixture) — production data intact.
Spec: implemented/HMS_REVERSE_ENGINEERING/HMS/fdCheckIn.frm:234-236
"""
import datetime

import pytest

from HMS_py.core import booking, checkin, db, guestprof


@pytest.fixture
def arrivals_guest():
    code = guestprof.next_code()
    guestprof.insert({"code": code, "name": "PYT ARRIVALS PARITY",
                      "add1": "TEST", "type": "India"})
    yield code
    try:
        guestprof.delete(code)
    except Exception:
        pass


def _mk_booking(cn, guest_code, arr, dep, rooms=2, **kw):
    rec = {"guestname": "PYT ARRIVALS PARITY", "arrdate": arr,
           "depdate": dep, "nodays": max((dep - arr).days, 1),
           "adult": 2, "child": 1, "noofrooms": rooms,
           "roomrate": 3000.0, "guestprof": guest_code,
           "check_conflict": False}
    rec.update(kw)
    return booking.insert(rec, cn=cn, commit=False, user="PYADMIN")


def test_booking_insert_writes_per_room_group_details(db_transaction,
                                                      arrivals_guest):
    cn = db_transaction
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    b = _mk_booking(cn, arrivals_guest, today, dep, rooms=2)
    docid = b["DocId"]

    g = db.query(
        "SELECT Sno, BookingDocid, ArrDate, ArrTime, Cancel, Adults, "
        "Childs, Tarrif, NoDays, DepDate FROM GrpBookingDetails "
        "WHERE BookingDocid = ? ORDER BY Sno", (docid,), cn=cn)
    assert len(g) == 2, (f"W1: NoofRooms=2 par GrpBookingDetails rows "
                         f"{len(g)} (VB6 live: count == NoofRooms)")
    s1, bdoc, garr, garrtime, gcancel, adult, child, tarrif, ndays, gdep = \
        g[0]
    assert int(s1) == 1 and int(g[1][0]) == 2, "Sno 1..N nahi"
    assert str(bdoc).strip() == docid, \
        f"W2: BookingDocid column me docid nahi ({bdoc!r})"
    assert garr.date() == today, "G.ArrDate Booking.ArrDate se copy nahi"
    assert gdep.date() == dep, "G.DepDate copy nahi"
    assert str(gcancel).strip() == "N"
    assert int(adult) == 2 and int(child) == 1
    assert float(tarrif) == 3000.0
    assert int(ndays) == 2
    # G.ArrTime default '10:00' (VB6 live 2026 booking pattern)
    assert str(garrtime).strip() == "10:00"


def test_list_arrivals_lifecycle_per_sno_exit(db_transaction,
                                              arrivals_guest):
    cn = db_transaction
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    b = _mk_booking(cn, arrivals_guest, today, dep, rooms=2)
    docid = b["DocId"]

    # W4: same-day booking arrivals me (VB6 Form_Load intent)
    rows = booking.list_arrivals(name_like="PYT ARRIVALS", cn=cn)
    hit = [r for r in rows if r["docid"] == docid]
    assert hit, "same-day booking arrivals list me nahi"
    assert int(hit[0]["noofrooms"]) == 2
    assert str(hit[0]["name"]).strip() == "PYT ARRIVALS PARITY"
    assert int(hit[0]["nodays"]) == 2

    # name_like filter: doosra naam match nahi hona chahiye
    rows2 = booking.list_arrivals(name_like="NO SUCH GUEST ZZZ", cn=cn)
    assert not [r for r in rows2 if r["docid"] == docid]

    # W3 + per-SNO: sno1 check-in -> booking abhi listed (sno2 pending)
    folio1 = checkin.create_checkin(
        arrivals_guest, "PYT ARRIVALS PARITY", today,
        today + datetime.timedelta(days=1),
        bookingdocid=docid, bookingsno=1, cn=cn, commit=False)
    rows = booking.list_arrivals(name_like="PYT ARRIVALS", cn=cn)
    assert [r for r in rows if r["docid"] == docid], \
        "sno2 pending -> booking listed rehni chahiye (per-SNO)"

    # sno2 check-in (default bookingsno path bhi cover) -> booking exits
    folio2 = checkin.create_checkin(
        arrivals_guest, "PYT ARRIVALS PARITY", today,
        today + datetime.timedelta(days=1),
        bookingdocid=docid, cn=cn, commit=False)
    rows = booking.list_arrivals(name_like="PYT ARRIVALS", cn=cn)
    assert not [r for r in rows if r["docid"] == docid], \
        "dono sno check-in ke baad bhi booking listed hai"

    # W3 evidence: GuestFolio.BookingSno bhara hua (VB6 live pattern)
    snos = db.query(
        "SELECT BookingSno FROM GuestFolio WHERE BookingDocId = ? "
        "ORDER BY BookingSno", (docid,), cn=cn)
    assert [int(s[0]) for s in snos] == [1, 2], \
        f"BookingSno store nahi hua: {[s[0] for s in snos]!r}"


def test_list_arrivals_overdue_and_cancel_filter(db_transaction,
                                                 arrivals_guest):
    cn = db_transaction
    today = datetime.date.today()
    yesterday = today - datetime.timedelta(days=1)

    # overdue (ArrDate < aaj) -> documented superset me visible
    b_over = _mk_booking(cn, arrivals_guest, yesterday,
                         today + datetime.timedelta(days=1), rooms=1)
    rows = booking.list_arrivals(name_like="PYT ARRIVALS", cn=cn)
    assert [r for r in rows if r["docid"] == b_over["DocId"]], \
        "overdue un-checked-in booking list me nahi (VB6 exact-eq gap)"

    # cancel='N' filter (VB6 B.CANCEL = 'N')
    b_cancel = _mk_booking(cn, arrivals_guest, today,
                           dep=today + datetime.timedelta(days=1),
                           rooms=1, guestname="PYT ARRIVALS PARITY")
    db.execute("UPDATE Booking SET Cancel = 'Y' WHERE DocId = ?",
               (b_cancel["DocId"],), cn=cn, commit=False)
    rows = booking.list_arrivals(name_like="PYT ARRIVALS", cn=cn)
    assert not [r for r in rows if r["docid"] == b_cancel["DocId"]], \
        "cancelled booking arrivals list me aa rahi hai"
