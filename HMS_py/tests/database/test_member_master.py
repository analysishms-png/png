"""Member Master CRUD (VB6 MembershipMast) - live proof, rollback-safe."""
import pytest
from HMS_py.core import db
from HMS_py.core import fa_masters_ops as fmo


def test_member_list_is_scoped_to_members(db_transaction):
    cn = db_transaction
    normal = fmo.member_list(corporate=False, cn=cn)
    corporate = fmo.member_list(corporate=True, cn=cn)
    assert normal and corporate

    cat_codes = {c for c, _ in fmo.member_category_options(cn=cn)}
    assert cat_codes, "MemCatMast me koi category nahi"
    for m in normal:
        assert m["companytype"] in cat_codes, (
            f"{m['code']}: CompanyType={m['companytype']!r} MemCatMast me nahi")
    for m in corporate:
        assert m["companytype"] == "Corporate"

    # dono sets disjoint honi chahiye
    assert not ({m["code"] for m in normal} & {m["code"] for m in corporate})

    # members ke saath non-member SubGroups nahi aane chahiye
    all_sub = {(r[0] or "").strip() for r in db.query(
        "SELECT SubCode FROM SubGroup", cn=cn)}
    assert {m["code"] for m in normal} <= all_sub
    cn.rollback()


def test_member_crud_lifecycle(db_transaction):
    cn = db_transaction
    groups = fmo.member_group_options(cn=cn)
    cats = fmo.member_category_options(cn=cn)
    assert groups and cats
    gcode, _ = groups[0]
    ctype, _ = cats[0]

    before = len(fmo.member_list(corporate=False, cn=cn))
    code = fmo.member_insert(
        {"code": "PYTMMT01", "name": "PYT Test Member",
         "group_code": gcode, "companytype": ctype,
         "mobile": "9999999999", "email": "pyt@example.com", "active": 1},
        corporate=False, cn=cn, commit=False)
    assert code == "PYTMMT01"
    assert len(fmo.member_list(corporate=False, cn=cn)) == before + 1

    rec = fmo.member_get(code, cn=cn)
    assert rec and rec["name"] == "PYT Test Member"
    assert rec["companytype"] == ctype and rec["group_code"] == gcode
    assert fmo.member_exists(code, cn=cn)

    # corporate list me ye member nahi aana chahiye
    assert code not in {m["code"]
                        for m in fmo.member_list(corporate=True, cn=cn)}

    fmo.member_update(code, {"name": "PYT Renamed", "group_code": gcode,
                             "companytype": ctype, "active": 1},
                      corporate=False, cn=cn, commit=False)
    assert fmo.member_get(code, cn=cn)["name"] == "PYT Renamed"

    fmo.member_delete(code, cn=cn, commit=False)
    assert fmo.member_get(code, cn=cn) is None
    cn.rollback()


def test_member_insert_validation(db_transaction):
    cn = db_transaction
    groups = fmo.member_group_options(cn=cn)
    cats = fmo.member_category_options(cn=cn)
    gcode, _ = groups[0]

    with pytest.raises(ValueError):
        fmo.member_insert({"code": "PYTMMT02", "name": "  ",
                           "group_code": gcode, "companytype": cats[0][0]},
                          cn=cn, commit=False)
    with pytest.raises(ValueError):
        fmo.member_insert({"code": "PYTMMT02", "name": "No Category",
                           "group_code": gcode, "companytype": ""},
                          cn=cn, commit=False)
    with pytest.raises(ValueError):
        fmo.member_insert({"code": "PYTMMT02", "name": "No Group",
                           "group_code": "", "companytype": cats[0][0]},
                          cn=cn, commit=False)
    assert fmo.member_get("PYTMMT02", cn=cn) is None
    cn.rollback()


def test_member_update_unknown_member_raises(db_transaction):
    cn = db_transaction
    with pytest.raises(ValueError):
        fmo.member_update("PYT_NO_SUCH", {"name": "X"}, cn=cn, commit=False)
    cn.rollback()


def test_member_delete_blocked_when_ledger_postings(db_transaction):
    """VB6 guard: ledger postings wale member delete nahi ho sakte."""
    cn = db_transaction
    row = db.query(
        "SELECT TOP 1 L.SubCode FROM LEDGER L JOIN SubGroup S "
        "ON RTRIM(S.SubCode) = RTRIM(L.SubCode)", cn=cn)
    assert row, "ledger me koi SubCode nahi"
    sc = (row[0][0] or "").strip()
    with pytest.raises(ValueError) as e:
        fmo.member_delete(sc, cn=cn, commit=False)
    assert "postings" in str(e.value)
    cn.rollback()
