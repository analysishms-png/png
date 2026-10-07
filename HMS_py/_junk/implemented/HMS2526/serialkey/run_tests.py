#!/usr/bin/env python3
"""
Comprehensive Test Suite - SerialKey Engine
Tests: encrypt/decrypt, checksum, key gen, validation, file I/O, VB6 compat
"""
import sys, os, datetime, tempfile, glob
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from serialkey_cli import HMSLib, SerialKeyManager, YEAR_PREFIXES

tests_passed = 0
tests_failed = 0
errors = []

def test(name, condition, detail=''):
    global tests_passed, tests_failed
    if condition:
        tests_passed += 1
        print('  PASS: ' + name)
    else:
        tests_failed += 1
        msg = '  FAIL: ' + name
        if detail:
            msg += ' - ' + detail
        print(msg)
        errors.append(name + ': ' + detail)

print('=' * 65)
print('  COMPREHENSIVE TEST SUITE - SerialKey Engine')
print('=' * 65)
print()

# GROUP 1: Core Algorithm Tests
print('  [GROUP 1] Core Algorithms')
print('  ' + '-' * 55)

test('1.1 encrypt/decrypt round-trip (simple)',
     HMSLib.decrypt(HMSLib.encrypt('Hello')) == 'Hello')

test('1.2 encrypt/decrypt round-trip (complex)',
     HMSLib.decrypt(HMSLib.encrypt('HMS Hotel#kanpur#1234')) == 'HMS Hotel#kanpur#1234')

test('1.3 encrypt/decrypt round-trip (specials)',
     HMSLib.decrypt(HMSLib.encrypt('KALAWATI GREENS#Akbarpur#1648')) == 'KALAWATI GREENS#Akbarpur#1648')

test('1.4 decrypt empty string', HMSLib.decrypt('') == '')
test('1.5 encrypt empty string', HMSLib.encrypt('') == '')

e1 = HMSLib.encrypt('Test', 'A')
e2 = HMSLib.encrypt('Test', 'A')
test('1.6 deterministic encryption with same shift', e1 == e2)

e3 = HMSLib.encrypt('Test', 'A')
e4 = HMSLib.encrypt('Test', 'B')
test('1.7 different shift = different output', e3 != e4)

d1 = HMSLib.decrypt('A' + HMSLib.encrypt('Hello', 'A')[1:])
test('1.8 shift char extraction correct', d1 == 'Hello')

# xnull function
test('1.9 xnull None returns empty', HMSLib.xnull(None) == '')
test('1.10 xnull string returns trimmed', HMSLib.xnull('  hi  ') == 'hi')
test('1.11 xnull number returns string', HMSLib.xnull(123) == '123')

print()

# GROUP 2: Checksum Tests
print('  [GROUP 2] Checksum Calculation')
print('  ' + '-' * 55)

# Verified against actual VB6 decrypted keys
test('2.1 HMS Hotel checksum = 9123',
     HMSLib.checksum('HMS Hotel Pvt Ltd#kanpur#1234') == '9123')

test('2.2 Hotel Kailas checksum = 8790',
     HMSLib.checksum('Hotel Kailas#Kanpur#1526') == '8790')

test('2.3 KALAWATI checksum = 9455',
     HMSLib.checksum('KALAWATI GREENS#Akbarpur#1648') == '9455')

test('2.4 Janta Dhaba checksum = 9412',
     HMSLib.checksum('Janta Chauhan Dhaba#Kanpur#1374') == '9412')

test('2.5 New Janta Dhaba checksum = 10078',
     HMSLib.checksum('New Janta Chauhan Dhaba#Kanpur#1374') == '10078')

test('2.6 empty string checksum = 0', HMSLib.checksum('') == '0')

test('2.7 same input = same checksum',
     HMSLib.checksum('Test#City#9999') == HMSLib.checksum('Test#City#9999'))

chk_a = HMSLib.checksum('Company A#City1#111')
chk_b = HMSLib.checksum('Company B#City2#222')
test('2.8 different companies = different checksums', chk_a != chk_b)

test('2.9 checksum max 10 chars',
     len(HMSLib.checksum('X#' * 20 + 'Y')) <= 10)

# Case sensitivity
test('2.10 checksum is case-insensitive (uppercase)',
     HMSLib.checksum('test#city#9999') == HMSLib.checksum('TEST#CITY#9999'))

print()

# GROUP 3: Key Generation
print('  [GROUP 3] Serial Key Generation')
print('  ' + '-' * 55)

enc, raw, combined = SerialKeyManager.generate_key('Test Co', 'City', '9999', 'Pinaca')
test('3.1 key prefix correct', raw.startswith('Pinaca'), 'got ' + raw[:10])

decrypted = HMSLib.decrypt(enc)
test('3.2 decrypted key matches raw key', decrypted == raw)

test('3.3 combined string correct', combined == 'Test Co#City#9999')
test('3.4 encrypted key not empty', len(enc) > 0)
test('3.5 raw key length = 16', len(raw) == 16, 'got ' + str(len(raw)))

for prefix in YEAR_PREFIXES:
    e, r, _ = SerialKeyManager.generate_key('Test Co', 'City', '9999', prefix)
    test('3.6 prefix=' + prefix + ' ok', r.startswith(prefix))

test('3.7 default prefix is Pinaca',
     SerialKeyManager.generate_key('T', 'C', '0')[1].startswith('Pinaca'))

print()

# GROUP 4: Key Validation
print('  [GROUP 4] Key Validation')
print('  ' + '-' * 55)

enc, raw, combined = SerialKeyManager.generate_key('Test Co', 'City', '9999', 'Pinaca')

test('4.1 valid key accepted',
     SerialKeyManager.validate_key(enc, combined)[0])

test('4.2 wrong company rejected',
     not SerialKeyManager.validate_key(enc, 'Wrong#City#0000')[0])

test('4.3 wrong city rejected',
     not SerialKeyManager.validate_key(enc, 'Test Co#Wrong#9999')[0])

test('4.4 wrong code rejected',
     not SerialKeyManager.validate_key(enc, 'Test Co#City#0000')[0])

test('4.5 empty key rejected',
     not SerialKeyManager.validate_key('', combined)[0])

test('4.6 garbage key rejected',
     not SerialKeyManager.validate_key('abc123', combined)[0])

test('4.7 too short key rejected',
     not SerialKeyManager.validate_key('AB', combined)[0])

enc_hud, _, _ = SerialKeyManager.generate_key('Test Co', 'City', '9999', 'Hudhud')
valid, msg, _ = SerialKeyManager.validate_key(enc_hud, 'Test Co#City#9999')
test('4.8 expired Hudhud detected', not valid and 'EXPIRED' in msg, msg[:40])

enc_pir, _, _ = SerialKeyManager.generate_key('Test Co', 'City', '9999', 'Pirecy')
valid, msg, _ = SerialKeyManager.validate_key(enc_pir, 'Test Co#City#9999')
test('4.9 Pirecy (2026) valid', valid, msg[:40])

enc_mal, _, _ = SerialKeyManager.generate_key('Test Co', 'City', '9999', 'Malmal')
test('4.10 Malmal (2033) valid',
     SerialKeyManager.validate_key(enc_mal, 'Test Co#City#9999')[0])

# Unknown prefix
enc_bad, _, _ = SerialKeyManager.generate_key('Test Co', 'City', '9999', 'XXXXX')
valid, msg, _ = SerialKeyManager.validate_key(enc_bad, 'Test Co#City#9999')
test('4.11 unknown prefix rejected', not valid and 'Unknown' in msg, msg[:40])

# Validation returns details dict
valid, msg, details = SerialKeyManager.validate_key(enc, combined)
test('4.12 validation returns prefix', 'prefix' in details)
test('4.13 validation returns license_date', 'license_date' in details)
test('4.14 validation returns days_left', 'days_left' in details)

print()

# GROUP 5: File I/O
print('  [GROUP 5] File I/O')
print('  ' + '-' * 55)

tmpdir = tempfile.mkdtemp()
test_file = os.path.join(tmpdir, 'test_key.Txt')

enc, _, _ = SerialKeyManager.generate_key('File Test', 'Temp', '0000', 'Pinaca')
result = SerialKeyManager.write_key_to_file(test_file, enc)
test('5.1 write key to file', result and os.path.exists(test_file))

read_back = SerialKeyManager.read_key_from_file(test_file)
test('5.2 read key matches written', read_back == enc)

valid, msg, _ = SerialKeyManager.validate_key(read_back, 'File Test#Temp#0000')
test('5.3 validate written key', valid, msg[:40])

file_size = os.path.getsize(test_file)
test('5.4 file size correct', file_size == 19, 'got ' + str(file_size) + ' bytes')

test('5.5 non-existent file = None',
     SerialKeyManager.read_key_from_file('nonexistent.Txt') is None)

with open(test_file, 'rb') as f:
    raw_bytes = f.read()
test('5.6 binary ends with CRLF', raw_bytes.endswith(b'\r\n'), str(raw_bytes[-4:]))

# Write empty key
SerialKeyManager.write_key_to_file(test_file, '')
test('5.7 write empty key still creates file', os.path.exists(test_file))

os.remove(test_file)
os.rmdir(tmpdir)

# Test CompInfoManager
from serialkey_cli import CompInfoManager
combined_str = 'Test Company#TestCity#9999'
filename = CompInfoManager.get_compinfo_filename(combined_str)
test('5.8 CompInfo filename correct',
     filename == 'CompInfo_Test Company#TestCity#9999.Txt')

# Test HMSKeyManager
from serialkey_cli import HMSKeyManager
filename2 = HMSKeyManager.get_key_filename(combined_str)
test('5.9 HMSKey filename correct',
     filename2 == 'HMSKey_Test Company#TestCity#9999.Txt')

print()

# GROUP 6: VB6 Compatibility
print('  [GROUP 6] VB6 Compatibility (Actual VB6 files)')
print('  ' + '-' * 55)

parent = os.path.join(os.getcwd(), '..')
vb6_files = [
    ('HMSKey_HMS Hotel Pvt Ltd#kanpur#1234.Txt', 'HMS Hotel Pvt Ltd#kanpur#1234'),
    ('HMSKey_Hotel Kailas#Kanpur#1526.Txt', 'Hotel Kailas#Kanpur#1526'),
    ('HMSKey_Janta Chauhan Dhaba#Kanpur#1374.Txt', 'Janta Chauhan Dhaba#Kanpur#1374'),
    ('HMSKey_1115325791.Txt', '1115325791'),
    ('test_key.Txt', 'test_key'),
]

vb6_valid = 0
vb6_total = 0
for fname, info in vb6_files:
    fpath = os.path.join(parent, fname)
    if not os.path.exists(fpath):
        print('  SKIP: ' + fname + ' (not found)')
        continue
    vb6_total += 1
    with open(fpath, 'rb') as f:
        raw = f.read().strip()
    vb6_enc = raw.decode('latin-1')
    vb6_dec = HMSLib.decrypt(vb6_enc)
    valid, _, _ = SerialKeyManager.validate_key(vb6_enc, info)
    if valid:
        vb6_valid += 1
    test('6.' + str(vb6_total) + ' VB6 file decrypts: ' + fname[:25],
         vb6_dec is not None and len(vb6_dec) >= 6,
         'decrypted=' + repr(vb6_dec))

print('  VB6 files: ' + str(vb6_total) + ' processed, ' + str(vb6_valid) + ' valid')
print()

# GROUP 8: Site Code Validation
print('  [GROUP 8] Site Code Validation')
print('  ' + '-' * 55)

from serialkey_cli import LicenseValidator

# Test 8.1: Same site codes match
test('8.1 same site codes match',
     LicenseValidator.validate_site_code('HO', 'HO')[0])

# Test 8.2: HO wildcard always passes
test('8.2 HO wildcard (company)',
     LicenseValidator.validate_site_code('HO', 'SITE1')[0])

test('8.3 HO wildcard (user)',
     LicenseValidator.validate_site_code('SITE1', 'HO')[0])

# Test 8.4: Matching non-HO codes
test('8.4 matching site codes',
     LicenseValidator.validate_site_code('KNP', 'KNP')[0])

# Test 8.5: Mismatched non-HO codes
test('8.5 mismatched site codes rejected',
     not LicenseValidator.validate_site_code('SITE1', 'SITE2')[0])

# Test 8.6: Empty codes skip validation
test('8.6 empty company code skips',
     LicenseValidator.validate_site_code('', 'SITE1')[0])

test('8.7 empty user code skips',
     LicenseValidator.validate_site_code('SITE1', '')[0])

# Test 8.8: None codes skip
test('8.8 None codes skip',
     LicenseValidator.validate_site_code(None, None)[0])

# Test 8.9: Case insensitive
test('8.9 case insensitive',
     LicenseValidator.validate_site_code('knp', 'KNP')[0])

# Test 8.10: Error message contains 'Mismatched'
test('8.10 mismatch message has Mismatched',
     'Mismatched' in LicenseValidator.validate_site_code('AAA', 'BBB')[1])

# Test 8.11: Site code in validate_from_files passes through
enc, _, _ = SerialKeyManager.generate_key('Site Test', 'City', '9999', 'Pinaca')
tmpdir = tempfile.mkdtemp()
test_file = os.path.join(tmpdir, 'HMSKey_Site Test#City#9999.Txt')
SerialKeyManager.write_key_to_file(test_file, enc)

# Temporarily copy to base_path for validation
original_test_file = os.path.join(os.getcwd(), 'HMSKey_Site Test#City#9999.Txt')
import shutil
shutil.copy2(test_file, original_test_file)

test('8.11 with HO wildcard in validate_from_files',
     LicenseValidator.validate_from_files(
         os.getcwd(), 'Site Test', 'City', '9999',
         company_site_code='HO', log_site_code='KNP'
     )[0])

test('8.12 mismatch rejected in validate_from_files',
     not LicenseValidator.validate_from_files(
         os.getcwd(), 'Site Test', 'City', '9999',
         company_site_code='KNP', log_site_code='LKO'
     )[0])

# Clean up
os.remove(original_test_file)
os.remove(test_file)
os.rmdir(tmpdir)

print()

all_companies = [
    ('HMS Hotel Pvt Ltd', 'kanpur', '1234'),
    ('Hotel Kailas', 'Kanpur', '1526'),
    ('KALAWATI GREENS', 'Akbarpur', '1648'),
    ('Janta Chauhan Dhaba', 'Kanpur', '1374'),
    ('New Janta Chauhan Dhaba', 'Kanpur', '1374'),
]

generated = 0
validated = 0
total_expired = 0
for comp, city, code in all_companies:
    combined = comp + '#' + city + '#' + code
    for prefix in YEAR_PREFIXES:
        generated += 1
        e, r, _ = SerialKeyManager.generate_key(comp, city, code, prefix)
        v, m, _ = SerialKeyManager.validate_key(e, combined)
        if v:
            validated += 1
        else:
            total_expired += 1

test('7.1 all 45 keys generated', generated == 45, 'got ' + str(generated))
test('7.2 40 valid (all except Hudhud)', validated == 40, 'got ' + str(validated))
test('7.3 5 expired (Hudhud)', total_expired == 5, 'got ' + str(total_expired))

# Verify each company has unique checksum per company
checksums = set()
for comp, city, code in all_companies:
    combined = comp + '#' + city + '#' + code
    chk = HMSLib.checksum(combined)
    checksums.add(chk)
test('7.4 each company has unique checksum', len(checksums) == 5, str(checksums))

# Verify New Janta and Janta (same code) have different checksums (different names)
chk1 = HMSLib.checksum('Janta Chauhan Dhaba#Kanpur#1374')
chk2 = HMSLib.checksum('New Janta Chauhan Dhaba#Kanpur#1374')
test('7.5 same code diff names = diff checksum', chk1 != chk2, chk1 + ' vs ' + chk2)

print()

# SUMMARY
print('=' * 65)
print('  TEST SUMMARY')
print('=' * 65)
total = tests_passed + tests_failed
print('  Total tests: ' + str(total))
print('  Passed:      ' + str(tests_passed))
print('  Failed:      ' + str(tests_failed))
print('  Success rate: ' + str(round(tests_passed/total*100, 1)) + '%')
print()

if tests_failed == 0:
    print('  ' + '*' * 55)
    print('  *  ALL TESTS PASSED! System is fully functional.  *')
    print('  ' + '*' * 55)
else:
    print('  FAILURES:')
    for e in errors:
        print('    - ' + e)

print()
print('=' * 65)
