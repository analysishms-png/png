"""Comprehensive verification test for all Main Setup modules."""
import sys
sys.path.insert(0, '..')

from HMS_py.core import (
    taxmaster, taxstru, paymenttype, enviro, printmast, printersetup,
    printformats, country, state, city, marketsegment, businesssource,
    gueststatus, fixcharge, roomcategory, roommaster, companymaster,
    forexmaster, pos_masters, pos_table, members_masters, banquet_masters,
    hr_masters, epabx_masters
)

results = []

def test(name, fn):
    try:
        result = fn()
        results.append((name, "PASS", result))
        print(f"  PASS: {name} -> {result}")
    except Exception as e:
        results.append((name, "FAIL", str(e)))
        print(f"  FAIL: {name} -> {e}")

print("=" * 60)
print("MAIN SETUP VERIFICATION TEST")
print("=" * 60)

print("\n--- General Setup ---")
test("TaxMaster.list_all", lambda: len(taxmaster.list_all()))
test("TaxStru.list_all", lambda: len(taxstru.list_all()))
test("TaxStru.get_structures_summary", lambda: len(taxstru.get_structures_summary()))
test("PaymentType.list_all", lambda: len(paymenttype.list_all()))
test("Enviro.get", lambda: "OK" if enviro.get() else "EMPTY")
test("PrintMast.list_all", lambda: len(printmast.list_all()))
test("PrinterSetup.list_all", lambda: len(printersetup.list_all()))
test("PrintFormats.list_all", lambda: len(printformats.list_all()))

print("\n--- Front Office Setup ---")
test("Country.list_all", lambda: len(country.list_all()))
test("State.list_all", lambda: len(state.list_all()))
test("City.list_all", lambda: len(city.list_all()))
test("MarketSegment.list_all", lambda: len(marketsegment.list_all()))
test("BusinessSource.list_all", lambda: len(businesssource.list_all()))
test("GuestStatus.list_all", lambda: len(gueststatus.list_all()))
test("FixCharge.list_all", lambda: len(fixcharge.list_all()))
test("RoomCategory.list_all", lambda: len(roomcategory.list_all()))
test("RoomMaster.list_all", lambda: len(roommaster.list_all()))
test("CompanyMaster.list_all", lambda: len(companymaster.list_all()))
test("ForexMaster.list_all", lambda: len(forexmaster.list_all()))

print("\n--- Point of Sale Setup ---")
test("Waiter.list_all", lambda: len(pos_masters.waiter_list()))
test("Table.list_all", lambda: len(pos_table.list_all()))
test("Session.list_all", lambda: len(pos_masters.session_list()))
test("Scheme.list_all", lambda: len(pos_masters.scheme_list()))
test("NCType.list_all", lambda: len(pos_masters.nctype_list()))
test("DelBoy.list_all", lambda: len(pos_masters.delboy_list()))

print("\n--- Members Mgmt ---")
test("MemCat.list_all", lambda: len(members_masters.memcat_list()))
test("MemRev.list_all", lambda: len(members_masters.memrev_list()))
test("Facility.list_all", lambda: len(members_masters.facility_list()))

print("\n--- Banquet ---")
test("VenFeature.list_all", lambda: len(banquet_masters.venfeature_list()))
test("GroupProf.list_all", lambda: len(banquet_masters.groupprof_list()))
test("FuncType.list_all", lambda: len(banquet_masters.functype_list()))
test("Catalog.list_all", lambda: len(banquet_masters.catalog_list()))

print("\n--- HR/Payroll ---")
test("Desig.list_all", lambda: len(hr_masters.desig_list()))
test("EmpCat.list_all", lambda: len(hr_masters.empcat_list()))
test("Holiday.list_all", lambda: len(hr_masters.holiday_list()))
test("Employee.list_all", lambda: len(hr_masters.emp_list()))

print("\n--- EPABX ---")
test("CallType.list_all", lambda: len(epabx_masters.calltype_list()))
test("TelExt.list_all", lambda: len(epabx_masters.telext_list()))
test("CallCode.list_all", lambda: len(epabx_masters.callcode_list()))

print("\n" + "=" * 60)
passed = sum(1 for _, s, _ in results if s == "PASS")
failed = sum(1 for _, s, _ in results if s == "FAIL")
print(f"RESULTS: {passed} passed, {failed} failed, {len(results)} total")
if failed:
    print("\nFailed tests:")
    for name, status, msg in results:
        if status == "FAIL":
            print(f"  - {name}: {msg}")
print("=" * 60)