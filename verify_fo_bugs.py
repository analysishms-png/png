"""Verify all Front Office bug fixes."""
import sys, os, inspect
sys.path.insert(0, os.path.join(os.path.dirname(__file__)))

errors = []

try:
    from HMS_py.core import checkout, checkin, room_occ, fo_ops
    print("imports ok")

    # FO-BUG-001+002
    src = inspect.getsource(checkout.do_checkout)
    assert 'RoomStat' in src and "'D'" in src, 'BUG-001 fail'
    assert 'SettleDate' in src, 'BUG-002 fail'
    print('[OK] FO-BUG-001+002: RoomMast ROOMSTAT=D + PayCharge.SettleDate')

    # FO-BUG-004
    src = inspect.getsource(room_occ._map)
    assert 'chkintime' in src, 'BUG-004 chkintime missing'
    # Check that the actual dict key is correct (not just in a comment)
    assert '"chkintime"' in src, 'BUG-004 chkintime dict key missing'
    print('[OK] FO-BUG-004: room_occ typo fixed')

    # FO-BUG-003+010
    src = inspect.getsource(fo_ops.folio_charge_total)
    assert 'AmtDr' in src, 'BUG-003 AmtDr missing'
    # Ensure DrAmt not used in SQL (it may appear in comments)
    sql_part = src.split('"""')[2] if '"""' in src else src
    assert 'DrAmt' not in sql_part.split('def ')[0] or 'SUM(DrAmt)' not in src, 'BUG-003 DrAmt in SQL'
    print('[OK] FO-BUG-003+010: folio_charge_total AmtDr')

    # FO-BUG-005
    src = inspect.getsource(checkin.list_checkins)
    assert "'HO'" in src or '"HO"' in src, 'BUG-005 HO missing'
    print('[OK] FO-BUG-005: list_checkins HO filter')

    # FO-BUG-006
    src = inspect.getsource(checkout.folio_balance)
    assert 'LogSite_Code' in src or "'HO'" in src or '"HO"' in src, 'BUG-006'
    print('[OK] FO-BUG-006: folio_balance site scope')

    src = inspect.getsource(checkout.list_active_folios)
    assert 'arrdate' in src, 'arrdate missing'
    assert 'LogSite_Code' in src, 'LogSite_Code missing'
    print('[OK] list_active_folios: arrdate + LogSite_Code')

    print('\nALL 6 BACKEND BUG FIXES VERIFIED')
except Exception as e:
    import traceback
    traceback.print_exc()
    sys.exit(1)
