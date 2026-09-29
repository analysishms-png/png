"""VB6 RsAssignDelivery / menu leaf "Assign Delivery" - live DB proof.

VB6 refs: RsAssignDelivery.frm loc_109E614 (browse), loc_141E214
(unassigned picker), loc_14BB527 (insert), loc_115A697 (delete).
Sab kuch rollback-safe (db_transaction fixture).
"""
from datetime import date

import pytest

from HMS_py.core import db
from HMS_py.core import pos_delivery as pd

D1, D2 = date(2026, 4, 1), date(2026, 4, 30)


def test_depart_vtype_is_b_prefix_and_split_flag(db_transaction):
    cn = db_transaction
    # VB6 loc_109E692: Select 'B'+ShortName From Depart Where Code=...
    assert pd.depart_vtype("KKRS", cn=cn) == "BRS"
    assert pd.depart_vtype("KKM001", cn=cn) == "BMM"
    with pytest.raises(ValueError, match="nahi mila"):
        pd.depart_vtype("NOPE99", cn=cn)

    # Enviro.MultiBillGeneration live me '' hai -> Sale1 path (VB6 loc_141E1E6)
    assert pd.use_split_table("KKRS", cn=cn) is False


def test_unassigned_bills_match_vb6_sql_shape(db_transaction):
    cn = db_transaction
    rows = pd.unassigned_bills(depart_code="KKRS", date_from=D1, date_to=D2,
                               cn=cn)
    assert rows, "KKRS ke unassigned bills hone chahiye"
    assert {r["vtype"] for r in rows} == {"BRS"}, \
        "VB6 VType='B'+ShortName filter kaam karna chahiye"
    docids = [r["docid"] for r in rows]
    assert docids == sorted(docids), "VB6 'Order By S.DOCID'"
    assert all(r["netamt"] is not None for r in rows)

    # Dept nahi diya -> sab dept (VB6 VType filter optional)
    all_rows = pd.unassigned_bills(date_from=D1, date_to=D2, limit=20, cn=cn)
    assert all_rows and {r["vtype"] for r in all_rows} <= {"BMM", "BMTC",
                                                           "BRS", "BES", "BGA"}

    # Date range VB6 me 'between' tha; safe-fix = din-bhar range
    same_day = pd.unassigned_bills(depart_code="KKRS", date_from=D1,
                                   date_to=D1, cn=cn)
    assert all(r["vdate"].date() == D1 for r in same_day)
    with pytest.raises(ValueError, match="pehle nahi"):
        pd.unassigned_bills(date_from=D2, date_to=D1, cn=cn)


def test_assign_bill_insert_then_disappears_from_picker(db_transaction):
    cn = db_transaction
    bills = pd.unassigned_bills(depart_code="KKRS", date_from=D1, date_to=D2,
                                cn=cn)
    bill = bills[0]

    with pytest.raises(ValueError, match="Delivery boy zaroori"):
        pd.assign_bill(bill, "  ", cn=cn, commit=False)

    pd.assign_bill(bill, "PYTBOY", remark="PYT test", cn=cn, commit=False)

    saved = pd.assign_get(bill["docid"], cn=cn)
    assert saved["deliboy"] == "PYTBOY"
    assert saved["remark"] == "PYT test"
    assert saved["vtype"] == bill["vtype"]
    assert float(saved["billamt"]) == float(bill["netamt"])
    assert saved["vprefix"] == bill["vprefix"]
    assert int(saved["vno"]) == int(bill["vno"])

    # VB6 LEFT JOIN + ISNULL(AD.DeliBoy,'')='' -> assigned bill gayab
    again = pd.unassigned_bills(depart_code="KKRS", date_from=D1, date_to=D2,
                                cn=cn)
    assert bill["docid"] not in [r["docid"] for r in again]

    # duplicate guard
    with pytest.raises(ValueError, match="pehle se assign"):
        pd.assign_bill(bill, "PYTBOY", cn=cn, commit=False)

    # browse: LEFT JOIN DeliveryBoy (naam khali kyunki master khali hai)
    br = pd.browse_assignments(date_from=D1, date_to=D2, depart_code="KKRS",
                               cn=cn)
    hit = [r for r in br if r["docid"] == bill["docid"]]
    assert hit, "assigned bill browser me dikhna chahiye"
    assert hit[0]["deliboy"] == "PYTBOY"
    assert hit[0]["deliboy_name"] == ""
    assert hit[0]["vtype"] == "BRS"

    # VB6 loc_115A697 delete
    pd.assign_delete(bill["docid"], cn=cn, commit=False)
    assert pd.assign_get(bill["docid"], cn=cn) is None
    back = pd.unassigned_bills(depart_code="KKRS", date_from=D1, date_to=D2,
                               cn=cn)
    assert bill["docid"] in [r["docid"] for r in back]

    cn.rollback()


def test_delivery_boys_query_is_site_or_ho(db_transaction):
    cn = db_transaction
    boys = pd.delivery_boys(cn=cn)
    assert isinstance(boys, list)
    for b in boys:
        assert set(b) == {"code", "name"}
        assert b["code"]
    cn.rollback()
