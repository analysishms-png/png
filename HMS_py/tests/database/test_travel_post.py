"""VB6 TravelAgencyPost / menu leaf "Travel Agency Posting" - live DB proof.

VB6 refs: TravelAgencyPost.frm
  loc_11340D4  VType 'PRAP'
  loc_1134036  agency list SQL
  loc_1441116  fill SQL
  loc_10A3E39  validation messages
  loc_15CB4B4  Enviro.CommissionAc
  loc_15CB59F  INSERT Travel1
  loc_15CBAE4  INSERT Travel2
  loc_15CBE34  LEDGER V_SNo=1 (agency Cr)
  loc_15CC0AA  LEDGER V_SNo=2 (CommissionAc Dr)
  loc_EC7992  search SQL
Sab kuch rollback-safe (db_transaction fixture).
"""
import datetime

import pytest

from HMS_py.core import db
from HMS_py.core import travel_post as tp

# GO IBIBO: 129 folios with TravelAgent, CompanyType='Travel Agency'
AGENCY = "KK000346"
D1 = datetime.date(2021, 4, 1)
D2 = datetime.date(2026, 8, 3)


def _rows_for_save(rows, per=5.0):
    out = []
    for r in rows[:3]:
        r = dict(r)
        r["commper"] = per
        r["post"] = "Y"
        out.append(tp.recompute(r))
    return out


def test_vtype_and_grid_shape_match_vb6():
    # loc_11340D4: global_60 = "PRAP"
    assert tp.VTYPE == "PRAP"
    assert tp.GRID_COLS[0] == "Sr.No"
    assert tp.GRID_COLS[3] == "No.Days"
    assert tp.GRID_COLS[5] == "Total"
    assert tp.GRID_COLS[6] == "Comm.%"
    assert tp.GRID_COLS[7] == "Commission"
    assert tp.GRID_COLS[8] == "Post"
    assert len(tp.GRID_COLS) == 9  # loc_1167E9B: FGrid.Cols = 9
    assert len(tp.make_docid("2026", 1)) == 21  # 21-char DocId convention


def test_agency_list_uses_subgroup_travel_agency(db_transaction):
    cn = db_transaction
    agencies = tp.agency_list(cn=cn)
    assert agencies, "live me Travel Agency subgroups hone chahiye"
    codes = {a["code"] for a in agencies}
    assert AGENCY in codes
    # VB6 SQL: 'Select SubCode As Code,Name From Subgroup where ActiveYN=1
    #  and (LOGSITE_CODE=.. or =''HO'') and CompanyType like ''Travel Agency'''
    live = db.query(
        "SELECT COUNT(*) FROM Subgroup WHERE ActiveYN=1 AND "
        "(LOGSITE_CODE=? OR LOGSITE_CODE='HO') AND "
        "CompanyType LIKE 'Travel Agency'", (tp.SITE_CODE,), cn=cn)
    assert len(agencies) == int(live[0][0])


def test_commission_ac_from_enviro(db_transaction):
    # loc_15CB4B4: Enviro.CommissionAc must be set, else save aborts
    ac = tp.commission_ac(cn=db_transaction)
    assert ac, "Enviro.CommissionAc set nahi hai"
    row = db.query("SELECT CommissionAc FROM Enviro WHERE LogSite_Code = ?",
                   (tp.SITE_CODE,), cn=db_transaction)
    assert ac == str(row[0][0])


def test_fill_guests_matches_vb6_sql_and_computations(db_transaction):
    cn = db_transaction
    rows = tp.fill_guests(AGENCY, D1, D2, cn=cn)
    assert rows, "GO IBIBO ke folios hone chahiye"
    for r in rows:
        assert r["post"] == "", "VB6 fill Post='' deta hai (user 'Y' type kare)"
        assert r["total"] == round(r["nodays"] * r["roomrate"], 2)
        assert r["commamt"] == round(r["total"] * r["commper"] / 100.0, 2)
        assert r["guest"], "GuestProf code missing"
    assert [r["sno"] for r in rows] == list(range(1, len(rows) + 1))

    # date-range guard (VB6 fill From/To dono maangta hai)
    with pytest.raises(ValueError, match="pehle nahi"):
        tp.fill_guests(AGENCY, D2, D1, cn=cn)
    with pytest.raises(ValueError, match="Travel Agency"):
        tp.fill_guests("  ", D1, D2, cn=cn)


def test_fill_nights_helper_matches_vb6_type_branches():
    # Type='O' -> DATEDIFF(day, ChkIn, ChkOut); 'C' -> -1; else DepDate
    assert tp._nights("2026-04-01", "2026-04-03", "O", "2026-04-10") == 2
    assert tp._nights("2026-04-01", "2026-04-03", "C", "2026-04-10") == 1
    assert tp._nights("2026-04-01", "2026-04-10", "", "2026-04-04") == 3
    assert tp._nights("2026-04-01", "2026-04-01", "C", None) == 0


def test_validation_messages_match_vb6():
    with pytest.raises(ValueError, match="No Posting to Save."):
        tp.validate_rows([])
    with pytest.raises(ValueError, match="No Posting to Save."):
        tp.validate_rows([{"post": "", "commper": 5}])
    with pytest.raises(ValueError, match="Commission% is Zero"):
        tp.validate_rows([{"post": "Y", "commper": 0}])
    rows = [{"post": "Y", "commper": 4}, {"post": "", "commper": 9}]
    assert tp.validate_rows(rows) == rows[:1], "sirf Post='Y' rows save hote hain"


def test_next_number_uses_voucher_prefix_start_srl(db_transaction):
    cn = db_transaction
    num = tp.next_number(datetime.date(2026, 4, 1), cn=cn)
    assert num["prefix"] == "2026"
    assert num["vno"] == 1, "live PRAP Start_Srl_No=0 hoga to +1"
    assert num["docid"] == tp.make_docid("2026", 1)
    with pytest.raises(ValueError, match="nahi mila"):
        tp.next_number(datetime.date(2019, 1, 1), cn=cn)


def test_save_post_writes_travel1_travel2_and_balanced_ledger(db_transaction):
    cn = db_transaction
    assert not tp.search_list(cn=cn), "live me Travel1 khali hona chahiye"
    rows = _rows_for_save(tp.fill_guests(AGENCY, D1, D2, cn=cn))
    res = tp.save_post(AGENCY, datetime.date(2026, 4, 1), D1, D2, rows,
                       cn=cn, commit=False, user="PYTEST")

    assert res["lines"] == 3
    assert tp.doc_exists(res["docid"], cn=cn)
    t1 = db.query("SELECT VType, VNo, TravelAgency, VDate FROM Travel1 "
                  "WHERE DocID = ?", (res["docid"],), cn=cn)
    assert t1[0][0] == "PRAP" and t1[0][1] == res["vno"]
    assert t1[0][2] == AGENCY
    t2 = db.query("SELECT SNo, Guest, Total, Commission, CommPer FROM Travel2 "
                  "WHERE DocId = ? ORDER BY SNo", (res["docid"],), cn=cn)
    assert [int(r[0]) for r in t2] == [1, 2, 3], "grid Sr.No = 1..n"
    for r, src in zip(t2, rows):
        assert r[1] == src["guest"]
        assert float(r[2]) == float(src["total"])
        assert float(r[3]) == float(src["commamt"])
        assert float(r[4]) == 5.0

    # LEDGER: row1 agency Cr, row2 CommissionAc Dr, balanced
    led = db.query("SELECT V_SNo, SubCode, AmtCr, AmtDr, ContraSub, V_Type "
                   "FROM Ledger WHERE DocID = ? ORDER BY V_SNo",
                   (res["docid"],), cn=cn)
    assert len(led) == 2
    assert led[0][0] == 1 and led[0][1] == AGENCY
    assert float(led[0][2]) == pytest.approx(res["commission"])
    assert float(led[0][3]) == 0 and led[0][4] == res["commission_ac"]
    assert led[1][0] == 2 and led[1][1] == res["commission_ac"]
    assert float(led[1][2]) == 0
    assert float(led[1][3]) == pytest.approx(res["commission"])
    assert all(r[5] == "PRAP" for r in led)
    assert float(led[0][2]) == float(led[1][3]), "Dr == Cr"

    # Voucher_Prefix Start_Srl_No consumed
    srl = db.query("SELECT Start_Srl_No FROM Voucher_Prefix WHERE V_Type = ?",
                   ("PRAP",), cn=cn)
    assert int(srl[0][0]) == res["vno"]

    # search + load + delete
    found = tp.search_list(cn=cn)
    assert [f["docid"] for f in found] == [res["docid"]]
    assert found[0]["agency"] == "GO IBIBO"
    rec = tp.load_post(res["docid"], cn=cn)
    assert rec["header"]["agency"] == AGENCY
    assert len(rec["lines"]) == 3
    assert all(l["post"] == "Y" for l in rec["lines"]), \
        "VB6 load saved rows ko Post='Y' dikhata hai"
    assert rec["lines"][0]["guest_name"], "GuestProf name join chahiye"

    assert tp.delete_post(res["docid"], cn=cn, commit=False) == 6
    assert not tp.doc_exists(res["docid"], cn=cn)
    assert db.query("SELECT COUNT(*) FROM Ledger WHERE DocID = ?",
                    (res["docid"],), cn=cn)[0][0] == 0


def test_save_post_rejects_duplicate_serial(db_transaction):
    cn = db_transaction
    rows = _rows_for_save(tp.fill_guests(AGENCY, D1, D2, cn=cn))
    res = tp.save_post(AGENCY, datetime.date(2026, 4, 1), D1, D2,
                       rows[:1], cn=cn, commit=False)
    # VB6 loc_10A3E8A: same DocId dobara aaye to "Duplicate Serial No."
    db.execute("UPDATE Voucher_Prefix SET Start_Srl_No = 0 WHERE V_Type = ?",
               ("PRAP",), cn=cn, commit=False)
    with pytest.raises(ValueError, match="Duplicate Serial No."):
        tp.save_post(AGENCY, datetime.date(2026, 4, 1), D1, D2, rows[:1],
                     cn=cn, commit=False)
