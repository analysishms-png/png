"""Phase 11 loop — fdWalkInEntry parity evidence (CHECKIN_FIELD_MAP.md).

CHECKIN_FIELD_MAP.md [VERIFIED-UI + VERIFIED-VB6] ke field-map ke against
create_checkin ke full-column write ko live DB rows par assert karta hai:
- GuestFolio left-zone: Add1/Add2/Nationality/ArrFrom/Destination/
  TravelMode/Company/TravelAgent/Remark/RODisc
- RoomOcc right-zone: RoomCat (RoomMast se derive) + RoomRate + DepTime
- FolioLog 'A' audit, GuestFolioProfDetail link, staging cleanup
- occupancy guard (dusra check-in same room pe reject) + validation guards

Sab kuch rollback-safe (db_transaction fixture) — production data intact.
Spec: implemented/HMS2526/HMS_REVERSE_ENGINEERING/05_Front_Office/
      CHECKIN_FIELD_MAP.md + FRONT_OFFICE_LIFECYCLE.md §2
"""
import datetime

import pytest

from HMS_py.core import checkin, db, guestprof


@pytest.fixture
def walkin_guest():
    code = guestprof.next_code()
    guestprof.insert({"code": code, "name": "PYT WALKIN PARITY",
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
    return checkin.create_checkin(
        guest_code, name, arr, dep, cn=cn, commit=False, **kw)


def test_walkin_full_column_write_matches_field_map(db_transaction,
                                                    walkin_guest):
    cn = db_transaction
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    folio = _create(
        cn, walkin_guest, "PYT WALKIN PARITY", today, dep,
        city="PYTCT", adult=2, children=1, ratecode="P",
        plancode="PLN", planamt=1500.0, incinrate="Y",
        roomtarrif=1600.0, rackrate=2000.0,
        add1="H-1 Test Nagar", add2="Sector 42", nationality="Indian",
        arrfrom="Delhi", destination="Goa", travelmode="Air",
        company="PYTCO", travelagent="PYTTA", remarks="parity run",
        rodisc=10.0, roomrate=1750.0, deptime="12:30")
    rec = checkin.get(folio, cn=cn)
    assert rec, "checkin.get rec nahi mila"
    docid = rec["docid"]

    # ---- GuestFolio left-zone (CHECKIN_FIELD_MAP §4) ----
    gf = _q(cn,
            "SELECT Add1, Add2, Nationality, ArrFrom, Destination, "
            "TravelMode, Company, TravelAgent, Remark, RODisc, City, "
            "NoDays, DepDate FROM GuestFolio WHERE DocId = ?", (docid,))
    assert gf, "GuestFolio row nahi mili"
    (add1, add2, nat, arrfrom, dest, tmode, comp, ta, remark, rodisc,
     city, nodays, gf_dep) = gf[0]
    assert str(add1).strip() == "H-1 Test Nagar"
    assert str(add2).strip() == "Sector 42"
    assert str(nat).strip() == "Indian"
    assert str(arrfrom).strip() == "Delhi"
    assert str(dest).strip() == "Goa"
    assert str(tmode).strip() == "Air"
    assert str(comp).strip() == "PYTCO"
    assert str(ta).strip() == "PYTTA"
    assert str(remark).strip() == "parity run"
    assert float(rodisc) == 10.0
    assert str(city).strip() == "PYTCT"
    assert int(nodays) == 2

    # ---- RoomOcc right-zone ----
    ro = _q(cn,
            "SELECT RoomNo, RoomCat, RoomRate, DepTime, RateCode, "
            "PlanCode, PlanAmt, Adult, Children, Type, ChkInDate "
            "FROM RoomOcc WHERE DocId = ?", (docid,))
    assert ro and len(ro) == 1, "RoomOcc row nahi"
    (roomno, roomcat, roomrate, deptime, ratecode, plancode, planamt,
     adult, children, ro_type, chkindate) = ro[0]
    assert str(roomno).strip(), "room assign nahi hua"
    rm = _q(cn, "SELECT RTRIM(RoomCat) FROM RoomMast "
                "WHERE RTRIM(Code) = ?", (str(roomno).strip(),))
    assert rm, "assigned room RoomMast me nahi"
    assert str(roomcat or "").strip() == str(rm[0][0] or "").strip(), \
        f"RoomCat derive mismatch: {roomcat!r} vs {rm[0][0]!r}"
    assert float(roomrate) == 1750.0
    assert str(deptime).strip() == "12:30"
    assert str(ratecode).strip() == "P"
    assert str(plancode).strip() == "PLN"
    assert float(planamt) == 1500.0
    assert int(adult) == 2 and int(children) == 1
    assert str(ro_type).strip() == "I"

    # ---- audit + profile link + staging cleanup ----
    log = _q(cn, "SELECT Flag, U_Name FROM FolioLog "
                 "WHERE FolionoDocid = ?", (docid,))
    assert log and str(log[0][0]).strip() == "A", "FolioLog 'A' nahi"
    link = _q(cn, "SELECT COUNT(*) FROM GuestFolioProfDetail "
                  "WHERE DocId = ? AND GuestProf = ?",
              (docid, walkin_guest))
    assert link and int(link[0][0]) >= 1, "GuestFolioProfDetail link nahi"
    staging = _q(cn, "SELECT COUNT(*) FROM GuestFolioProfDetail "
                     "WHERE Docid = ''")
    assert staging and int(staging[0][0]) == 0, "staging cleanup fail"

    # ---- occupancy guard: same room pe doosra check-in reject ----
    with pytest.raises(ValueError, match="occupied"):
        _create(cn, walkin_guest, "PYT WALKIN DUP ROOM", today, dep,
                roomno=str(roomno).strip())

    # ---- assigned room ab free-list me nahi ----
    busy = _q(cn, "SELECT COUNT(*) FROM RoomOcc "
                  "WHERE RTRIM(RoomNo) = ? AND ChkOutDate IS NULL "
                  "AND Site_Code = 'KK'",
              (str(roomno).strip(),))
    assert busy and int(busy[0][0]) == 1, "room busy nahi dikh raha"


def test_walkin_auto_pick_default_deptime_and_validations(db_transaction,
                                                          walkin_guest):
    cn = db_transaction
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=1)

    # validation guards (VB6 CHECKIN_FIELD_MAP §5 behavior)
    with pytest.raises(ValueError, match="Guest Name"):
        _create(cn, walkin_guest, "   ", today, dep)
    with pytest.raises(ValueError, match="Arrival"):
        _create(cn, walkin_guest, "PYT ARR>DEP", dep, today)

    # auto-pick + DepTime default '10:00' (live RoomOcc default)
    folio = _create(cn, walkin_guest, "PYT AUTO PICK", today, dep)
    rec = checkin.get(folio, cn=cn)
    ro = _q(cn, "SELECT RoomNo, DepTime, RoomCat FROM RoomOcc "
                "WHERE DocId = ?", (rec["docid"],))
    assert ro, "auto-pick RoomOcc row nahi"
    roomno, deptime, roomcat = ro[0]
    assert str(roomno).strip(), "auto room pick fail"
    assert str(deptime).strip() == "10:00"
    assert str(roomcat or "").strip(), "RoomCat derive khali"
    busy = _q(cn, "SELECT COUNT(*) FROM RoomOcc "
                  "WHERE RTRIM(RoomNo) = ? AND ChkOutDate IS NULL "
                  "AND Site_Code = 'KK'",
              (str(roomno).strip(),))
    assert busy and int(busy[0][0]) == 1, "auto-pick room busy nahi"
