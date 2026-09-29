"""PYT-prefixed live write-path smoke (round-6): guest_foreign,
venue capacity, comp_master, depart_pay, plan_definition roundtrips.

Safety: saara test data PYT*-prefixed (ya tracked plan code jo end me
delete hota hai); CFORM counter pre-state restore hota hai; cleanup()
start + finally dono jagah chalta hai (idempotent).

Run: python _qa/smoke_live_writes.py
"""
import os
import sys

_HERE = os.path.dirname(os.path.abspath(__file__))
_ROOT = os.path.dirname(os.path.dirname(_HERE))  # HMS_py/ -> png/ (repo root)
sys.path.insert(0, _ROOT)

from HMS_py.core import db
from HMS_py.core import comp_master, depart_pay, guest_foreign
from HMS_py.core import packagemaster, plan_definition, venue

SITE = db.get_site_code()
GUEST = "PYTSMA01"          # 8-char limit (GuestProf.Code varchar(8))
PLAN_CODE = "PYT99"         # PlanMast.Code varchar(5)
PAYCODE = "PYTCAS"          # test paycode — RevMast.Code varchar(6)!
RESULTS = []


def _ok(name, cond, detail=""):
    RESULTS.append((name, bool(cond), detail))
    print(("PASS" if cond else "FAIL"), name, detail)


def cleanup():
    """Idempotent: saare PYT rows + tracked plan + CFORM pre-state."""
    for sql, params in [
        ("DELETE FROM GuestProfFor WHERE Code = ?", (GUEST,)),
        ("DELETE FROM SubGroup WHERE SubCode = ?", (PLAN_CODE,)),
        ("DELETE FROM GuestProf WHERE Code = ?", (GUEST,)),
        ("DELETE FROM VenueCapacity WHERE VenueCode = ? AND Capacity LIKE 'PYT%'",
         (TEST_VENUE,)),
        ("DELETE FROM RoomDiscount WHERE Code = ?", (PLAN_CODE,)),
        ("DELETE FROM Comp_PlanDet WHERE CompanyCode = ?", (PLAN_CODE,)),
        ("DELETE FROM Comp_Inclusive WHERE CompanyCode = ?", (PLAN_CODE,)),
        ("DELETE FROM Plan1 WHERE Code = ?", (PLAN_CODE,)),
        ("DELETE FROM PlanMast WHERE Code = ?", (PLAN_CODE,)),
        ("DELETE FROM DepartPay WHERE PayCode = ? OR RestCode LIKE 'PYT%'",
         (PAYCODE,)),
        ("DELETE FROM RevMast WHERE Code = ?", (PAYCODE,)),
    ]:
        try:
            db.execute(sql, params)
        except Exception as e:
            print("cleanup note:", e)
    db.execute(
        "UPDATE Voucher_Prefix SET Start_Srl_No = ? WHERE V_Type = 'CFORM' "
        "AND Site_Code = ? AND Date_From = (SELECT MAX(Date_From) FROM "
        "Voucher_Prefix WHERE V_Type = 'CFORM' AND Site_Code = ?)",
        (_CFORM_BEFORE, SITE, SITE))


TEST_VENUE = "KK002"        # live venue (read-only use; rows PYT-tagged)


def _cform_state():
    rows = db.query(
        "SELECT ISNULL(Start_Srl_No, 0) AS N FROM Voucher_Prefix "
        "WHERE V_Type = 'CFORM' AND Site_Code = ? AND Date_From = "
        "(SELECT MAX(Date_From) FROM Voucher_Prefix WHERE V_Type = 'CFORM' "
        "AND Site_Code = ?)", (SITE, SITE))
    return int(rows[0].N or 0) if rows else 0


_CFORM_BEFORE = 0

# ---------------------------------------------------------------- guest
def smoke_guest_foreign():
    db.execute(
        "INSERT INTO GuestProf (Code, Name, Site_Code, U_Name, U_EntDt, "
        "U_AE, LogSite_Code) VALUES (?, 'PYT Smoke Guest', ?, 'smoke', "
        "getdate(), 'A', ?)", (GUEST, SITE, SITE))
    res = guest_foreign.save_stay(GUEST, 0, {
        "name": "PYT Foreigner", "nationality": "US",
        "passno": "PYTP12345", "age": 33,
        "visatype": "Tourist", "visano": "PYTV777"})
    _ok("guest.insert_new_stay", res["sno"] == 1 and res["serialno"] > 0,
        f"sno={res['sno']} serial={res['serialno']}")
    stays = guest_foreign.list_foreign_stays(GUEST)
    _ok("guest.readback", len(stays) == 1 and stays[0]["passno"] == "PYTP12345")
    res2 = guest_foreign.save_stay(GUEST, res["sno"], {
        "name": "PYT Foreigner 2", "serialno": res["serialno"],
        "passno": "PYTP99999"})
    _ok("guest.update_preserves_serial",
        res2["updated"] and res2["serialno"] == res["serialno"],
        f"serial={res2['serialno']}")
    stays = guest_foreign.list_foreign_stays(GUEST)
    _ok("guest.update_readback",
        stays[0]["passno"] == "PYTP99999" and stays[0]["name"] == "PYT Foreigner 2")
    guest_foreign.delete_stay(GUEST, res["sno"])
    _ok("guest.delete", len(guest_foreign.list_foreign_stays(GUEST)) == 0)


# --------------------------------------------------------------- venue
def smoke_venue():
    venue.capacity_upsert(TEST_VENUE, "PYTSMOKE", 111.0, 222.0, "pyt.png")
    rows = [r for r in venue.capacity_list(TEST_VENUE)
            if r["capacity"] == "PYTSMOKE"]
    _ok("venue.upsert_string_capacity", len(rows) == 1 and
        rows[0]["seating"] == 111.0 and rows[0]["picpath"] == "pyt.png")
    venue.capacity_upsert(TEST_VENUE, "PYTSMOKE", 333.0, 444.0)
    rows = [r for r in venue.capacity_list(TEST_VENUE)
            if r["capacity"] == "PYTSMOKE"]
    _ok("venue.update_same_key", len(rows) == 1 and rows[0]["seating"] == 333.0)
    venue.capacity_delete(TEST_VENUE, "PYTSMOKE")
    rows = [r for r in venue.capacity_list(TEST_VENUE)
            if r["capacity"] == "PYTSMOKE"]
    _ok("venue.delete", len(rows) == 0)


# ---------------------------------------------------------------- comp
def smoke_comp():
    # guard VB6 parity hai (company SubGroup me hona chahiye) — PYT seed
    db.execute(
        "INSERT INTO SubGroup (SubCode, Name, Site_Code, U_Name, U_EntDt, "
        "U_AE, LogSite_Code) VALUES (?, 'PYT Smoke Comp Co', ?, 'smoke', "
        "getdate(), 'A', ?)", (PLAN_CODE, SITE, SITE))
    comp_master.save_comp(
        PLAN_CODE,
        discounts=[{"roomcat": "DLX", "adult": 1, "discount": 25.5,
                    "disctype": "P"},
                   {"roomcat": "DLX", "adult": 2, "discount": 40,
                    "disctype": "P"}],
        plans=[{"roomcat": "DLX", "plancode": "KK002", "planamt": 500}],
        inclusives=["Breakfast", "Airport Pickup"], user="smoke")
    pack = comp_master.get_comp(PLAN_CODE)
    # inclusives DB read-order me aate hain (clustered index order —
    # VB6 bhi ORDER BY ke bina hi padhta tha) — set-compare karo
    _ok("comp.save_3_sections",
        len(pack["discounts"]) == 2 and len(pack["plans"]) == 1
        and sorted(pack["inclusives"]) == ["Airport Pickup", "Breakfast"])
    # replace: 1 discount only
    comp_master.save_comp(
        PLAN_CODE,
        discounts=[{"roomcat": "DLX", "adult": 1, "discount": 10,
                    "disctype": "P"}],
        plans=[], inclusives=[], user="smoke")
    pack = comp_master.get_comp(PLAN_CODE)
    _ok("comp.replace_delete_reinsert",
        len(pack["discounts"]) == 1 and pack["discounts"][0]["discount"] == 10.0
        and pack["plans"] == [] and set(pack["inclusives"]) == set())
    comp_master.delete_comp(PLAN_CODE)
    pack = comp_master.get_comp(PLAN_CODE)
    _ok("comp.delete_pack",
        pack["discounts"] == [] and pack["plans"] == []
        and set(pack["inclusives"]) == set())


# ----------------------------------------------------------- depart_pay
def smoke_depart_pay():
    # test paycode RevMast me (guard isi ko mangta hai)
    db.execute(
        "INSERT INTO RevMast (Code, Name, PAYTYPE, Site_Code, U_Name, "
        "U_EntDt, U_AE, LogSite_Code) VALUES (?, 'PYT Pay', 'Cash', "
        "?, 'smoke', getdate(), 'A', ?)", (PAYCODE, SITE, SITE))
    n = depart_pay.set_for_paycode(PAYCODE, ["KKRS", "KKE001"], user="smoke")
    rows = depart_pay.allowed_paycodes("KKRS")
    mine = [r for r in rows if r["paycode"] == PAYCODE]
    _ok("departpay.set_for_paycode", n >= 3 and len(mine) == 1,
        f"n={n}")
    # BANQ auto-row VB6 loc_105CC94
    banq = db.query(
        "SELECT 1 FROM DepartPay WHERE PayCode = ? AND RestCode = 'BANQ'",
        (PAYCODE,))
    _ok("departpay.banq_auto_row", bool(banq))
    depart_pay.set_allowed("KKRS", PAYCODE, False, user="smoke")
    rows = depart_pay.allowed_paycodes("KKRS")
    _ok("departpay.set_allowed_remove",
        not [r for r in rows if r["paycode"] == PAYCODE])
    depart_pay.set_allowed("KKM001", PAYCODE, True, user="smoke")
    rows = depart_pay.allowed_paycodes("KKM001")
    _ok("departpay.set_allowed_add",
        [r for r in rows if r["paycode"] == PAYCODE])
    grid = depart_pay.outlet_grid_for_paycode(PAYCODE)
    _ok("departpay.grid_shape", len(grid) > 0 and
        all(("allowed" in g and "code" in g) for g in grid))


# ----------------------------------------------------- plan_definition
def smoke_plan_definition():
    code = plan_definition.next_plan_code()
    # PYT prefix abhi bhi rakhna hai — code-gen se aaya code tracked list
    # me daal ke end me delete karenge (5-char varchar limit)
    code = PLAN_CODE if len(PLAN_CODE) <= 5 else code
    rec = {"code": code, "name": "PYT Smoke Plan", "total": 1000.0,
           "percent_app": "No", "room_per": 0, "active": "Y"}
    plan_rows = [{"ChrgCode": "KK002", "RevCode": "KK0900", "FlatRate": 250,
                  "Adult": 2, "Child": 1, "NoOfDays": 1, "TaxInc": "Yes",
                  "TaxStru": "", "PrintOption": "", "PostingMethod": "",
                  "ChargeType": "", "ExtraAdult": 0, "ExtraChild": 0,
                  "PlanPer": 0, "PerDayAmount": 0, "NetAmount": 0,
                  "FixRate": ""}]
    packagemaster.save_with_children(rec, plan_rows=plan_rows, token_rows=None,
                                     mode="insert", kind="Plan")
    disp = plan_definition.get_plan_display(code)
    _ok("plan.insert_with_child", len(disp) == 1 and
        disp[0]["chrgcode"] == "KK002" and disp[0]["revname"] != "",
        f"revname={disp[0]['revname'] if disp else '-'}")
    # update: rows replace
    plan_rows[0]["FlatRate"] = 300
    rec["total"] = 1200.0
    packagemaster.save_with_children(rec, plan_rows=plan_rows, token_rows=None,
                                     mode="update", kind="Plan")
    disp = plan_definition.get_plan_display(code)
    hdr = packagemaster.get(code, plan_package="Plan")
    _ok("plan.update_replace", len(disp) == 1 and disp[0]["flatrate"] == 300.0
        and float(hdr["total"]) == 1200.0)
    packagemaster.delete(code)
    _ok("plan.delete", packagemaster.get(code, plan_package="Plan") is None
        and plan_definition.get_plan_display(code) == [])


def main():
    global _CFORM_BEFORE
    _CFORM_BEFORE = _cform_state()
    print(f"site={SITE} CFORM before={_CFORM_BEFORE}")
    cleanup()
    try:
        smoke_guest_foreign()
        smoke_venue()
        smoke_comp()
        smoke_depart_pay()
        smoke_plan_definition()
    finally:
        cleanup()
        after = _cform_state()
        _ok("cform_counter_restored", after == _CFORM_BEFORE,
            f"before={_CFORM_BEFORE} after={after}")
    fails = [r for r in RESULTS if not r[1]]
    print(f"\n=== {len(RESULTS) - len(fails)}/{len(RESULTS)} PASS ===")
    if fails:
        for name, _, detail in fails:
            print("FAILED:", name, detail)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
