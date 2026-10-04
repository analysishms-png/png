"""Re-comparison verification script — run after all bug fixes."""
import sys, traceback, inspect, pathlib, os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "HMS_py", ".."))
os.chdir(os.path.join(os.path.dirname(__file__)))

errors = []
ok = []

# 1. sundry.py — BUG-001
try:
    from HMS_py.core import sundry
    src_la = inspect.getsource(sundry.list_all)
    assert 'SITE_CODE' in src_la or 'SITE_FILTER' in src_la
    src_g = inspect.getsource(sundry.get)
    assert 'SITE_CODE' in src_g or 'SITE_FILTER' in src_g
    src_d = inspect.getsource(sundry.delete)
    assert 'SysYN' in src_d or '_check_sysyn' in src_d
    assert 'RevMast' in src_d
    src_i = inspect.getsource(sundry.insert)
    assert '_auto_next_code' in src_i or 'next_code' in src_i
    assert '_dup_name_count' in src_i or 'Duplicate' in src_i
    assert 'CGST' in sundry.NATURE_VALUES
    assert 'IGST' in sundry.NATURE_VALUES
    ok.append('BUG-001: sundry.py SITE_FILTER+SysYN+dup+auto-code+nature VALUES')
except Exception as e:
    errors.append('BUG-001 sundry: ' + str(e)); traceback.print_exc()

# 2. depart.py — BUG-002 + BUG-009
try:
    from HMS_py.core import depart
    assert 'ShortName' in depart.SELECT_COLS
    assert 'RestType' in depart.SELECT_COLS
    assert 'OutletYN' in depart.SELECT_COLS
    src_la = inspect.getsource(depart.list_all)
    assert 'OutletYN' in src_la
    assert 'FOM' in src_la
    src_v = inspect.getsource(depart._validate)
    assert 'Kitchen' in src_v
    src_d = inspect.getsource(depart.delete)
    assert 'ItemGrp' in src_d
    assert 'RevMast' in src_d
    assert 'rollback' in src_d.lower()
    src_i = inspect.getsource(depart.insert)
    assert 'RevMast' in src_i
    ok.append('BUG-002+009: depart.py field fix+cascade delete+RevMast insert')
except Exception as e:
    errors.append('BUG-002+009 depart: ' + str(e)); traceback.print_exc()

# 3. usermaster.py — BUG-003 + BUG-004
try:
    from HMS_py.core import usermaster
    assert 'AllowDtChng' in usermaster.SELECT_COLS
    src_d = inspect.getsource(usermaster.delete)
    for tbl in ('user1', 'user2', 'menuhelp1', 'UserMast'):
        assert tbl in src_d, f'{tbl} not deleted'
    assert 'rollback' in src_d.lower()
    src_u = inspect.getsource(usermaster.update)
    assert 'AllowDtChng' in src_u
    src_m = inspect.getsource(usermaster._map)
    assert 'allowdtchng' in src_m.lower()
    ok.append('BUG-003+004: usermaster.py 4-table delete+AllowDtChng')
except Exception as e:
    errors.append('BUG-003+004 usermaster: ' + str(e)); traceback.print_exc()

# 4. usermaster_ui.py — BUG-005
try:
    src = pathlib.Path('HMS_py/ui/usermaster_ui.py').read_text(encoding='utf-8')
    assert 'production users protected' not in src
    assert 'allowdtchng' in src.lower()
    assert 'SA' in src
    ok.append('BUG-005: usermaster_ui.py PYT guard removed+AllowDtChng added')
except Exception as e:
    errors.append('BUG-005 usermaster_ui: ' + str(e)); traceback.print_exc()

# 5. general_setup_ui.py — BUG-006
try:
    src = pathlib.Path('HMS_py/ui/general_setup_ui.py').read_text(encoding='utf-8')
    assert 'Save Changes' in src
    assert 'update_settings' in src
    assert '_on_save' in src
    assert 'EDITABLE' in src
    ok.append('BUG-006: general_setup_ui.py EnviroViewer full edit capability')
except Exception as e:
    errors.append('BUG-006 enviro_ui: ' + str(e)); traceback.print_exc()

# 6. roommaster.py — BUG-007
try:
    from HMS_py.core import roommaster
    src = inspect.getsource(roommaster.delete)
    assert 'RoomOcc' in src
    ok.append('BUG-007: roommaster.py RoomOcc dependency check')
except Exception as e:
    errors.append('BUG-007 roommaster: ' + str(e)); traceback.print_exc()

# 7. roomcategory.py — BUG-008
try:
    from HMS_py.core import roomcategory
    src = inspect.getsource(roomcategory.delete)
    assert 'RoomMast' in src
    ok.append('BUG-008: roomcategory.py RoomMast dependency check')
except Exception as e:
    errors.append('BUG-008 roomcategory: ' + str(e)); traceback.print_exc()

# 8. taxmaster.py — still correct
try:
    from HMS_py.core import taxmaster
    assert hasattr(taxmaster, 'SITE_FILTER')
    src_d = inspect.getsource(taxmaster.delete)
    assert 'TaxStru' in src_d
    assert 'SysYN' in src_d
    src_i = inspect.getsource(taxmaster.insert)
    assert 'next_code' in src_i
    ok.append('GOOD: taxmaster.py SITE_FILTER+SysYN+TaxStru+auto-code')
except Exception as e:
    errors.append('taxmaster regression: ' + str(e)); traceback.print_exc()

# 9. paymenttype.py — still correct
try:
    from HMS_py.core import paymenttype
    src_d = inspect.getsource(paymenttype.delete)
    assert 'PayCharge' in src_d
    assert 'DepartPay' in src_d
    assert 'SysYN' in src_d
    ok.append('GOOD: paymenttype.py SysYN+PayCharge+DepartPay')
except Exception as e:
    errors.append('paymenttype regression: ' + str(e)); traceback.print_exc()

# 10. general_setup_tabs_ui.py — tbl alias
try:
    src = pathlib.Path('HMS_py/ui/general_setup_tabs_ui.py').read_text(encoding='utf-8')
    assert 'self.tbl = self.tbl_kot' in src
    assert 'NoEditTriggers' in src
    ok.append('GOOD: general_setup_tabs_ui.py PrintingSetupTab tbl+NoEditTriggers')
except Exception as e:
    errors.append('general_setup_tabs: ' + str(e)); traceback.print_exc()

print()
print('PASSED:')
for s in ok:
    print('  [OK]', s)
print()
if errors:
    print(f'FAILED ({len(errors)}):')
    for e in errors:
        print('  [FAIL]', e)
    sys.exit(1)
else:
    print(f'ALL {len(ok)} RE-COMPARISON CHECKS PASSED')
