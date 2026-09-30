#!/usr/bin/env python3
"""
=======================================================================
HMS SERIAL KEY SYSTEM - COMPLETE REVERSE ENGINEERING ANALYSIS
=======================================================================

SOURCE FILES ANALYSED:
  - SerialKey.frm     (VB6 decompiled, primary key logic)
  - frmCompany.frm    (VB6 decompiled, license validation UI)
  - MainLib.bas       (VB6 decompiled, shared utility functions)
  - HMSKey_*.Txt      (actual VB6-generated encrypted key files)
  - Analysis.ini      (configuration file)

=======================================================================
SECTION 1: VARIABLE MAPPING (VB6 -> Python)
=======================================================================

  VB6 Variable / Function          Python Name           Notes
  ──────────────────────────────────────────────────────────────────
  &H1B  (27 decimal)               SERIALKEY_SHIFT       Core shift constant
  Randomize(10) + Rnd(10)          random.randint(1,94)  Random seed generator
  CInt(10) in CODIFY               shift                 Random shift value 1-94
  var_3C in CODIFY                 shift_char            Header byte = chr(shift+27)
  TEXT in CODIFY                   text                  Plaintext input
  var_28 in CODIFY                 result                Accumulator string
  arg_C in Proc_0_7_405720         text                  Encrypted input
  var_24 in Proc_0_7_405720        result                Decrypted output
  MemVar_1F95194 (SerialKeyNo)     encrypted_key         DB column: encrypted key
  MemVar_1F950EC (current date)    current_date          Today's date for expiry
  MemVar_1F95130 (Comp_Name)       company_name          Company name from DB
  MemVar_1F95184 (City field)      city                  City field from DB
  MemVar_1F9503C (SName/SiteCode)  site_code             Short name / site code
  Proc_6_38_E69628                 xnull()               Null-safe IIf(IsNull,…)
  Proc_6_101_DFF8DC                validate_serial()     Core serial validator
  Proc_4_28_EE7B5C                 decrypt()             Decrypt (same as Proc_0_7)
  CODIFY()                         encrypt()             Encrypt
  XNull()                          xnull()               Null trimmer
  global_004049B4 ("#")            "#"                   Delimiter for parsing
  var_1C in CmdUpdate              combined              "CompName#City#Code"
  var_18 in CmdCompInfo            combined              "CompName#City#Code"

=======================================================================
SECTION 2: ALGORITHM ANALYSIS (Step-by-Step)
=======================================================================

─── 2A. ENCRYPTION: CODIFY (SerialKey.frm @ loc_405480) ─────────────

  VB6 pseudocode (cleaned from decompiled):

    Public Function CODIFY(TEXT) As String
      Randomize(10)                        ' Seed RNG with 10
      Dim rnd_val As Single = Rnd(10)      ' Get a single 0..1 float
      Dim shift As Integer = CInt(rnd_val * 94) + 1   ' scale to 1..94
      ' NOTE: VB6 decompile shows "CInt(10) + &H1B" where CInt(10)
      '       represents the post-Rnd integer value. The actual shift
      '       used = shift (1-94), shift_char = Chr(shift + 27)

      Dim header As String = Chr(shift + &H1B)  ' single header byte

      Dim result As String = ""
      Dim i As Integer
      For i = 1 To Len(TEXT)
          Dim c As String = Mid(TEXT, i, 1)
          result = result & Chr(Asc(c) + &H1B + shift)
      Next i

      CODIFY = header & result
    End Function

  KEY FORMULA (Encryption):
    header_byte = chr(shift + 27)
    encrypted[i] = chr(ord(plain[i]) + 27 + shift)   for each char
    output = header_byte + encrypted_chars

─── 2B. DECRYPTION: Proc_0_7_405720 / Proc_4_28_EE7B5C ─────────────
     (SerialKey.frm @ loc_405720)

  VB6 pseudocode:

    Public Sub Proc_0_7_405720(arg_C As String, ByRef result As String)
      Dim shift As Integer = Asc(Left(arg_C, 1)) - &H1B
      ' First byte is the header: chr(shift+27), so shift = header - 27

      Dim i As Integer
      For i = 2 To Len(arg_C)             ' skip header byte
          Dim c As String = Mid(arg_C, i, 1)
          result = result & Chr(Asc(c) - &H1B - shift)
      Next i
    End Sub

  KEY FORMULA (Decryption):
    shift = ord(cipher[0]) - 27
    plain[i] = chr(ord(cipher[i+1]) - 27 - shift)    for each char

─── 2C. CHECKSUM: Proc_6_101_DFF8DC / inline in btnapplyNew ─────────
     (frmCompany.frm @ loc_DFF8DC, derived from VB6 call chain)

  VB6 pseudocode (reconstructed from call site + verified test vectors):

    Public Function Checksum(text As String) As String
      text = UCase(Trim(text))
      Dim val As Long = Asc(Mid(text, 1, 1)) * 10     ' first char * 10
      Do While (val * 10) < 9999                       ' scale up
          val = val * 10
      Loop
      Dim total As Long = val
      Dim i As Integer
      For i = 1 To Len(text)
          total = total + Asc(Mid(text, i, 1))         ' sum all ASCII
      Next i
      Checksum = CStr(total)
    End Function

  KEY FORMULA (Checksum):
    val = ord(text[0].upper()) * 10
    while (val * 10) < 9999: val *= 10
    checksum = str(val + sum(ord(c) for c in text.upper()))

  VERIFIED TEST VECTORS (actual VB6 files confirmed):
    "HMS Hotel Pvt Ltd#kanpur#1234"         → 9123   ✓
    "Hotel Kailas#Kanpur#1526"              → 8790   ✓
    "KALAWATI GREENS#Akbarpur#1648"         → 9455   ✓
    "Janta Chauhan Dhaba#Kanpur#1374"       → 9412   ✓
    "New Janta Chauhan Dhaba#Kanpur#1374"   → 10078  ✓

─── 2D. SERIAL KEY FORMAT ────────────────────────────────────────────

  raw_key    = [6-char year prefix] + [10-char zero-padded checksum]
             = e.g. "Malmal" + "      9123" = "Malmal      9123"
  serial_key = CODIFY(raw_key)           (16 bytes encrypted)

  Year Prefixes (confirmed from VB6-generated files):
    Hudhud → license valid from 2025-01-15
    Pirecy → license valid from 2026-01-15
    Pinaca → license valid from 2027-01-15
    Platoo → license valid from 2028-01-15
    Zombia → license valid from 2029-01-15
    Albert → license valid from 2030-01-15
    Ostric → license valid from 2031-01-15
    Legran → license valid from 2032-01-15
    Malmal → license valid from 2033-01-15

  Expiry: license_date + 365 + 45 grace days

─── 2E. SITE CODE VALIDATION (frmCompany.frm @ loc_194AE40) ─────────

  VB6:
    If (MemVar_1F95070 <> MemVar_1F95078) And
       Not((MemVar_1F95070 = "HO") Or (MemVar_1F95078 = "HO")) Then
        MsgBox "SiteCode Mismatched."
        End
    End If

  Rule: If NEITHER code is "HO", they must match exactly.
        "HO" is a wildcard (Head Office = any site).

─── 2F. LICENSE EXPIRY VALIDATION (frmCompany.frm @ loc_194B44A) ────

  VB6 (reads CardExpDate from MemEnviro table):
    If IsNull(CardExpDate) → "New User, Create License" → End
    If Len(Comp_Id) < 4   → "Incomplete License" → End
    If CardExpDate - today <= 30 → warning message
    If CardExpDate < Ncur (current date) → "License Expired" → End

─── 2G. FILE OPERATIONS ──────────────────────────────────────────────

  CompInfo file:
    filename = "CompInfo_" & CompName & "#" & City & "#" & Code & ".Txt"
    content  = CompName & "#" & City & "#" & Code
    (Write as ANSI/latin-1 with CRLF)

  HMSKey file:
    filename = "HMSKey_" & CompName & "#" & City & "#" & Code & ".Txt"
    content  = CODIFY(YearPrefix & PaddedChecksum)
    (Write as ANSI/latin-1 with CRLF)

  sysdm.ocx (DB credentials):
    Line 1 = CODIFY(db_username)
    Line 2 = CODIFY(db_password)
    Decrypt with Proc_4_28_EE7B5C (same algorithm)

=======================================================================
SECTION 3: MATHEMATICAL FORMULA SUMMARY
=======================================================================

  Let:
    S  = SERIALKEY_SHIFT = 27 = 0x1B
    r  = random integer in [1, 94]
    H  = chr(r + S)             ← header byte
    P  = plaintext string
    C  = ciphertext string

  ENCRYPT:
    C = H + join(chr(ord(P[i]) + S + r) for i in range(len(P)))

  DECRYPT:
    r  = ord(C[0]) - S
    P  = join(chr(ord(C[i]) - S - r) for i in range(1, len(C)))

  CHECKSUM (input text T, uppercase):
    v  = ord(T[0]) * 10
    while (v * 10) < 9999: v *= 10
    chk = str(v + sum(ord(c) for c in T))

  SERIAL KEY (raw):
    raw = prefix(6 chars) + checksum.rjust(10)[:10]
    key = ENCRYPT(raw)

  VALIDATE:
    raw      = DECRYPT(key)
    prefix   = raw[:6]
    chk_key  = raw[6:].strip()
    chk_comp = CHECKSUM(CompName + "#" + City + "#" + Code)
    valid    = (chk_key == chk_comp) AND prefix_known(prefix) AND not_expired(prefix)

=======================================================================
SECTION 4: COMPLETE PYTHON IMPLEMENTATION
=======================================================================
"""

import os
import random
import datetime
import glob

# ───────────────────────────────────────────────────────────────────────
# CONSTANTS
# ───────────────────────────────────────────────────────────────────────
SERIALKEY_SHIFT = 0x1B  # 27 decimal — the universal shift constant in VB6

# Year prefixes → license start date (from actual VB6-generated files)
YEAR_PREFIXES = {
    "Hudhud": datetime.date(2025, 1, 15),
    "Pirecy": datetime.date(2026, 1, 15),
    "Pinaca": datetime.date(2027, 1, 15),
    "Platoo": datetime.date(2028, 1, 15),
    "Zombia": datetime.date(2029, 1, 15),
    "Albert": datetime.date(2030, 1, 15),
    "Ostric": datetime.date(2031, 1, 15),
    "Legran": datetime.date(2032, 1, 15),
    "Malmal": datetime.date(2033, 1, 15),
}

GRACE_DAYS = 365 + 45   # VB6: 1 year + 45-day grace (CardExpDate logic)


# ───────────────────────────────────────────────────────────────────────
# CORE ALGORITHM 1: encrypt()
# Mirrors VB6: CODIFY() in SerialKey.frm @ loc_405480
# ───────────────────────────────────────────────────────────────────────
def encrypt(text, shift_char=None):
    """
    VB6 CODIFY() — encrypts plaintext with a random shift byte.

    VB6 original logic:
        Randomize(10)
        Dim shift = CInt(Rnd(10))          ' VB6 Rnd() → 0..1 float
        shift = shift + &H1B               ' shift now = 27..~120
        Dim header = Chr(shift + &H1B)     ' actually Chr(rand+27+27)

        For i = 1 To Len(TEXT)
            Chr(Asc(Mid(TEXT,i,1)) + &H1B + CInt(10))  ← CInt(10)=rand val
        Next

    The decompile is confusing but the net formula is:
        header = chr(shift + 27)          where shift = random 1..94
        enc[i] = chr(ord(plain[i]) + 27 + shift)

    Args:
        text:       Plaintext string to encrypt.
        shift_char: Optional fixed shift char (for deterministic tests).
                    If None, a random shift is chosen (like VB6 Rnd()).

    Returns:
        Encrypted string (header + encoded chars), latin-1 safe.
    """
    if not text:
        return ""
    if shift_char is None:
        shift = random.randint(1, 94)           # VB6: Rnd(10) → scaled to 1-94
        shift_char = chr(shift + SERIALKEY_SHIFT)
    else:
        shift_char = shift_char[0]              # ensure single char

    shift = ord(shift_char) - SERIALKEY_SHIFT  # recover shift value

    # Header byte + each char shifted by (27 + shift)
    encoded = "".join(chr(ord(c) + SERIALKEY_SHIFT + shift) for c in text)
    return shift_char + encoded


# ───────────────────────────────────────────────────────────────────────
# CORE ALGORITHM 2: decrypt()
# Mirrors VB6: Proc_0_7_405720 / Proc_4_28_EE7B5C in SerialKey.frm
# ───────────────────────────────────────────────────────────────────────
def decrypt(text):
    """
    VB6 Proc_0_7_405720 / Proc_4_28_EE7B5C — decrypts an encrypted string.

    VB6 original logic:
        shift = Asc(Left(arg_C, 1)) - &H1B   ' header byte minus 27
        For i = 2 To Len(arg_C)
            result += Chr(Asc(Mid(arg_C,i,1)) - &H1B - shift)
        Next

    Args:
        text: Encrypted string (first byte is header).

    Returns:
        Decrypted plaintext string.
    """
    if not text:
        return ""
    try:
        shift = ord(text[0]) - SERIALKEY_SHIFT      # VB6: Asc(Left(…,1)) - 27
        return "".join(
            chr(ord(c) - SERIALKEY_SHIFT - shift)   # VB6: Chr(Asc(c) - 27 - shift)
            for c in text[1:]                        # VB6: i = 2 To Len(…)
        )
    except Exception:
        return ""


# ───────────────────────────────────────────────────────────────────────
# CORE ALGORITHM 3: checksum()
# Mirrors VB6: Proc_6_101_DFF8DC (inline validation in frmCompany.frm)
# ───────────────────────────────────────────────────────────────────────
def checksum(text):
    """
    VB6 checksum algorithm — produces the numeric fingerprint of a company.

    VB6 original logic (reconstructed from call chain + verified vectors):
        text = UCase(Trim(text))
        val = Asc(Mid(text, 1, 1)) * 10     ' First char ASCII * 10
        Do While (val * 10) < 9999:
            val = val * 10                   ' Scale up until >= 1000
        Loop
        total = val
        For i = 1 To Len(text):
            total = total + Asc(Mid(text, i, 1))
        total = CStr(total)

    Input is always: CompanyName + "#" + City + "#" + CompanyCode
    e.g. "HMS Hotel Pvt Ltd#kanpur#1234"  →  "9123"

    Args:
        text: The combined company identifier string.

    Returns:
        Checksum as a string (e.g. "9123").
    """
    if not text:
        return "0"
    text = text.strip().upper()             # VB6: UCase(Trim(text))
    val = ord(text[0]) * 10                 # VB6: Asc(Mid(text,1,1)) * 10
    while (val * 10) < 9999:               # VB6: Do While (val*10)<9999
        val *= 10                           # VB6: val = val * 10
    total = val + sum(ord(c) for c in text) # VB6: total + Asc each char
    return str(total)                       # VB6: CStr(total)


# ───────────────────────────────────────────────────────────────────────
# UTILITY: xnull()
# Mirrors VB6: XNull() in SerialKey.frm @ loc_4093D0
#              and Proc_6_38_E69628 (null-safe field concatenation)
# ───────────────────────────────────────────────────────────────────────
def xnull(value):
    """
    VB6: Public Function XNull(temp)
           XNull = Trim(IIf(IsNull(temp), "", temp))
         End Function

    Returns empty string for None/Null, else trimmed string value.
    """
    if value is None:
        return ""
    return str(value).strip()


# ───────────────────────────────────────────────────────────────────────
# SERIAL KEY GENERATION
# Mirrors VB6: CmdUpdate_Click in SerialKey.frm @ loc_4062C0
# ───────────────────────────────────────────────────────────────────────
def generate_serial(company_name, city, code, prefix="Pinaca"):
    """
    Generate an encrypted serial key for a company.

    VB6 CmdUpdate_Click logic:
        combined = CompName + "#" + City + "#" + Code
        chk      = Checksum(combined)           ' Proc_6_101_DFF8DC
        raw      = prefix + PadLeft(chk, 10)
        serial   = CODIFY(raw)                  ' encrypt
        ' Write to HMSKey_{combined}.Txt
        ' Also: UPDATE Company SET SerialKeyNo = serial

    Key format (16 chars raw):
        [6-char prefix][10-char right-justified checksum]
        e.g. raw = "Pinaca      9412"
             enc = CODIFY("Pinaca      9412")

    Args:
        company_name: Company name (e.g. "HMS Hotel Pvt Ltd")
        city:         City name (e.g. "kanpur")
        code:         Company code (e.g. "1234")
        prefix:       Year prefix (default "Pinaca" = 2027)

    Returns:
        (encrypted_key, raw_key, combined_id)
    """
    # Validate prefix
    prefix_title = prefix.strip()[:6].title()
    matched = next((k for k in YEAR_PREFIXES if k.lower() == prefix_title.lower()), None)
    if matched is None:
        raise ValueError(
            f"Unknown prefix '{prefix}'. "
            f"Valid: {', '.join(YEAR_PREFIXES.keys())}"
        )
    prefix = matched  # use exact-case version

    # Build combined identifier (VB6: var_1C = field1 + "#" + field2 + "#" + field3)
    combined = f"{company_name}#{city}#{code}"

    # Compute checksum (VB6: Proc_6_101_DFF8DC)
    chk = checksum(combined)

    # Pad checksum to 10 chars right-justified (VB6: rjust in 10-char field)
    chk_padded = chk.rjust(10)

    # Build raw 16-char key
    raw_key = f"{prefix}{chk_padded}"  # exactly 16 chars: 6 + 10

    # Encrypt (VB6: CODIFY)
    encrypted = encrypt(raw_key)

    return encrypted, raw_key, combined


# ───────────────────────────────────────────────────────────────────────
# SERIAL KEY VALIDATION
# Mirrors VB6: btnapplyNew_UnknownEvent_9 in frmCompany.frm
#              specifically loc_194ACFB: Proc_6_101_DFF8DC check
# ───────────────────────────────────────────────────────────────────────
def validate_serial(encrypted_key, company_name, city, code):
    """
    Validate a serial key against company information.

    VB6 btnapplyNew_UnknownEvent_9 logic (condensed):
        MemVar_1F95194 = ISNULL(SerialKeyNo, "")   ' from DB
        result = Proc_6_101_DFF8DC(currentDate, MemVar_1F95194)
        If result = &HFF Then End   ' &HFF = valid, 0 = fail

    Full validation chain:
        1. Decrypt SerialKeyNo  (Proc_4_28_EE7B5C)
        2. Extract 6-char prefix  →  year/license tier
        3. Extract checksum portion (chars 7-16)
        4. Recompute checksum from CompName#City#Code
        5. Compare checksums
        6. Verify prefix in known list
        7. Check expiry: today > license_date + 365 + 45 days?
        8. Also check: CardExpDate from MemEnviro (DB only)
        9. Check Comp_Id length >= 4
       10. Check SiteCode match (unless either is "HO")

    Args:
        encrypted_key: The encrypted key string (from DB or file).
        company_name:  Company name.
        city:          City.
        code:          Company code.

    Returns:
        (is_valid, message, details_dict)
    """
    combined = f"{company_name}#{city}#{code}"

    # ── Step 1: Decrypt ──────────────────────────────────────────────
    try:
        raw = decrypt(encrypted_key)
    except Exception as e:
        return False, f"Decryption failed: {e}", {}

    if not raw or len(raw) < 6:
        return False, "Key too short after decryption (< 6 chars)", {"raw": raw}

    # ── Step 2: Extract prefix and checksum ──────────────────────────
    prefix = raw[:6]                  # VB6: first 6 chars = year prefix
    key_chk = raw[6:].strip()         # VB6: remaining chars = checksum

    # ── Step 3: Recompute expected checksum ──────────────────────────
    expected_chk = checksum(combined)

    # ── Step 4: Compare checksums ────────────────────────────────────
    if key_chk != expected_chk:
        return False, (
            f"Checksum mismatch: key has '{key_chk}', "
            f"computed '{expected_chk}' for '{combined}'"
        ), {
            "prefix": prefix,
            "key_chk": key_chk,
            "expected_chk": expected_chk,
            "combined": combined,
        }

    # ── Step 5: Validate year prefix ─────────────────────────────────
    matched_prefix = next(
        (k for k in YEAR_PREFIXES if k.lower() == prefix.lower()), None
    )
    if matched_prefix is None:
        return False, (
            f"Unknown year prefix '{prefix}'. "
            f"Known: {', '.join(YEAR_PREFIXES.keys())}"
        ), {"prefix": prefix, "key_chk": key_chk, "expected_chk": expected_chk}

    # ── Step 6: Check expiry ─────────────────────────────────────────
    # VB6: CardExpDate check from MemEnviro table.
    # Python equivalent: license_date + 365 + 45 grace days.
    license_date = YEAR_PREFIXES[matched_prefix]
    grace_date = license_date + datetime.timedelta(days=GRACE_DAYS)
    today = datetime.date.today()

    if today > grace_date:
        return False, (
            f"License EXPIRED. Prefix '{matched_prefix}' "
            f"(issued {license_date}, expired {grace_date})"
        ), {
            "prefix": matched_prefix,
            "license_date": str(license_date),
            "grace_date": str(grace_date),
            "expired": True,
            "key_chk": key_chk,
            "expected_chk": expected_chk,
        }

    # ── Step 7: Expiry warning (VB6: if days <= 30, show warning) ────
    days_left = (grace_date - today).days
    if today > license_date:
        expiry_msg = f"In grace period ({days_left} days left)"
    else:
        expiry_msg = f"Valid until {license_date} (+{GRACE_DAYS-365}d grace)"

    return True, f"VALID. Prefix={matched_prefix}. {expiry_msg}", {
        "prefix": matched_prefix,
        "license_date": str(license_date),
        "grace_date": str(grace_date),
        "days_left": days_left,
        "key_chk": key_chk,
        "expected_chk": expected_chk,
        "combined": combined,
        "raw_decrypted": raw,
    }


# ───────────────────────────────────────────────────────────────────────
# SITE CODE VALIDATION
# Mirrors VB6: frmCompany.frm @ loc_194AE40
# ───────────────────────────────────────────────────────────────────────
def validate_site_code(company_site_code, login_site_code):
    """
    VB6 original:
        If (MemVar_1F95070 <> MemVar_1F95078)
          And Not((MemVar_1F95070 = "HO") Or (MemVar_1F95078 = "HO")) Then
            MsgBox "SiteCode Mismatched."
            End
        End If

    Rule: "HO" is a wildcard. If either side is "HO", always passes.
          Otherwise, both codes must match exactly.

    Args:
        company_site_code: Site code from company record (MemVar_1F95070).
        login_site_code:   Site code from login environment (MemVar_1F95078).

    Returns:
        (is_valid, message)
    """
    sc1 = str(company_site_code or "").strip().upper()
    sc2 = str(login_site_code or "").strip().upper()

    if not sc1 or not sc2:
        return True, "Site code check skipped (empty value)"

    if sc1 == "HO" or sc2 == "HO":
        return True, f"Site code valid (HO wildcard: company='{sc1}', login='{sc2}')"

    if sc1 == sc2:
        return True, f"Site code match: '{sc1}'"

    return False, f"SiteCode Mismatched: company='{sc1}', login='{sc2}'"


# ───────────────────────────────────────────────────────────────────────
# FILE I/O: Write / Read HMSKey files
# Mirrors VB6: CmdUpdate_Click in SerialKey.frm @ loc_4062C0
# ───────────────────────────────────────────────────────────────────────
def write_hmskey_file(base_path, company_name, city, code, encrypted_key):
    """
    Write encrypted serial key to HMSKey_{combined}.Txt

    VB6:
        Open path & "\\HMSKey_" & combined & ".Txt" For Output As #1
        Print #1, encrypted_key
        Close #1

    Uses binary write + latin-1 to exactly match VB6 ANSI Print behaviour.
    VB6 Print #1 appends CRLF; we replicate that with b"\\r\\n".
    """
    combined = f"{company_name}#{city}#{code}"
    fname = f"HMSKey_{combined}.Txt"
    fpath = os.path.join(base_path, fname)
    with open(fpath, "wb") as f:
        f.write(encrypted_key.encode("latin-1") + b"\r\n")
    return fpath


def read_hmskey_file(base_path, company_name, city, code):
    """
    Read encrypted serial key from HMSKey_{combined}.Txt

    VB6:
        OpenTextFile(path, 1, , 0)   ' ForReading
        ReadAll → returns the content

    Uses latin-1 to decode — CRITICAL: not utf-8 or cp1252.
    latin-1 maps bytes 0-255 directly to Unicode U+0000-U+00FF,
    preserving every byte value exactly. cp1252 remaps 0x80-0x9F
    which would corrupt decryption.
    """
    combined = f"{company_name}#{city}#{code}"
    fname = f"HMSKey_{combined}.Txt"
    fpath = os.path.join(base_path, fname)
    try:
        with open(fpath, "rb") as f:
            raw = f.read().strip()
        return raw.decode("latin-1") if raw else None
    except FileNotFoundError:
        return None


def write_compinfo_file(base_path, company_name, city, code):
    """
    Write CompInfo_{combined}.Txt

    VB6 CmdCompInfo_Click:
        combined = field1 + "#" + field2 + "#" + field3
        Open path & "\\CompInfo_" & combined & ".Txt" For Output As #1
        Print #1, combined
        Close #1
    """
    combined = f"{company_name}#{city}#{code}"
    fname = f"CompInfo_{combined}.Txt"
    fpath = os.path.join(base_path, fname)
    with open(fpath, "wb") as f:
        f.write(combined.encode("utf-8") + b"\r\n")
    return fpath


def read_hmskey_any(fpath):
    """Read encrypted key from any HMSKey file given its full path."""
    try:
        with open(fpath, "rb") as f:
            raw = f.read().strip()
        return raw.decode("latin-1") if raw else None
    except FileNotFoundError:
        return None


# ───────────────────────────────────────────────────────────────────────
# PASSWORD HANDLING
# Mirrors VB6: sysdm.ocx reading in frmCompany.frm @ loc_1488C3B
# ───────────────────────────────────────────────────────────────────────
def encrypt_password(plaintext_password):
    """
    Encrypt a DB password for storage in sysdm.ocx.

    VB6: Line 1 = CODIFY(username), Line 2 = CODIFY(password)
    Default VB6 SA user: username='SA', password='\\' (backslash)
    """
    return encrypt(plaintext_password)


def decrypt_password(encrypted_password):
    """
    Decrypt a DB password read from sysdm.ocx.

    VB6: Call Proc_4_28_EE7B5C(MemVar_1F950D8, var_11C)
         MemVar_1F950D8 = var_11C   ' ← var_11C = decrypted result
    """
    return decrypt(encrypted_password)


def write_sysdm(base_path, username, password):
    """
    Write sysdm.ocx with encrypted DB credentials.

    VB6 reads:
        LineInput 1, MemVar_1F950D8   ' username (encrypted)
        LineInput 1, MemVar_1F950D4   ' password (encrypted)
    """
    fpath = os.path.join(base_path, "sysdm.ocx")
    enc_user = encrypt(username)
    enc_pass = encrypt(password)
    with open(fpath, "wb") as f:
        f.write(enc_user.encode("latin-1") + b"\r\n")
        f.write(enc_pass.encode("latin-1") + b"\r\n")
    return fpath


def read_sysdm(base_path):
    """
    Read and decrypt sysdm.ocx credentials.
    Returns (username, password) as plaintext strings.
    """
    fpath = os.path.join(base_path, "sysdm.ocx")
    try:
        with open(fpath, "rb") as f:
            lines = f.read().decode("latin-1").replace("\r\n", "\n").split("\n")
        username = decrypt(lines[0].strip()) if len(lines) > 0 else ""
        password = decrypt(lines[1].strip()) if len(lines) > 1 else ""
        return username, password
    except FileNotFoundError:
        return "", ""


# ───────────────────────────────────────────────────────────────────────
# DEMONSTRATION & SELF-TEST
# Runs against all actual VB6-generated HMSKey_*.Txt files found in
# the same directory as this script, and against the known test vectors.
# ───────────────────────────────────────────────────────────────────────
def _run_tests():
    here = os.path.dirname(os.path.abspath(__file__))
    parent = os.path.join(here, "..")

    print("=" * 65)
    print("  HMS SERIAL KEY — ALGORITHM VERIFICATION")
    print("=" * 65)

    # ── Test 1: Encrypt / Decrypt round-trip ─────────────────────────
    print("\n[1] Encrypt / Decrypt Round-Trip")
    tests = [
        "Hello World",
        "HMS Hotel Pvt Ltd#kanpur#1234",
        "Pinaca      9412",
        "A",
        "\\",   # VB6 default SA password
        "sa",
    ]
    for t in tests:
        enc = encrypt(t)
        dec = decrypt(enc)
        ok  = "✓" if dec == t else "✗"
        print(f"  {ok}  '{t[:30]}'")

    # ── Test 2: Checksum verification ────────────────────────────────
    print("\n[2] Checksum Verification (VB6-confirmed vectors)")
    vectors = [
        ("HMS Hotel Pvt Ltd",       "kanpur",   "1234", "9123"),
        ("Hotel Kailas",            "Kanpur",   "1526", "8790"),
        ("KALAWATI GREENS",         "Akbarpur", "1648", "9455"),
        ("Janta Chauhan Dhaba",     "Kanpur",   "1374", "9412"),
        ("New Janta Chauhan Dhaba", "Kanpur",   "1374", "10078"),
    ]
    all_ok = True
    for comp, city, code, expected in vectors:
        combined = f"{comp}#{city}#{code}"
        got = checksum(combined)
        ok  = "✓" if got == expected else "✗"
        if got != expected:
            all_ok = False
        print(f"  {ok}  {combined[:40]:<42} → {got:>6}  (expected {expected})")
    print(f"  {'ALL MATCH' if all_ok else 'SOME FAILED'}")

    # ── Test 3: Decrypt actual VB6-generated HMSKey files ────────────
    print("\n[3] Decrypt VB6-Generated HMSKey Files")
    vb6_files = sorted(
        glob.glob(os.path.join(parent, "HMSKey_*.Txt")) +
        glob.glob(os.path.join(here, "HMSKey_*.Txt"))
    )
    vb6_files = sorted(set(f for f in vb6_files if os.path.exists(f)))

    for fpath in vb6_files:
        fname = os.path.basename(fpath)
        try:
            with open(fpath, "rb") as f:
                raw = f.read().strip()
            enc = raw.decode("latin-1")
            dec = decrypt(enc)
            prefix = dec[:6] if dec else "?"
            chk    = dec[6:].strip() if len(dec) > 6 else ""

            # Extract company info from filename if available
            info = fname.replace("HMSKey_", "").replace(".Txt", "")
            if "#" in info:
                parts = info.split("#")
                valid, msg, _ = validate_serial(enc, parts[0], parts[1], parts[2])
                status = "VALID" if valid else ("EXPIRED" if "EXPIRED" in msg else "INVALID")
            else:
                known = any(k.lower() == prefix.lower() for k in YEAR_PREFIXES)
                status = "KNOWN PREFIX" if known else "UNKNOWN PREFIX"

            print(f"  [{status:14s}]  {fname}")
            print(f"              prefix={prefix!r}  chk={chk!r}")
        except Exception as e:
            print(f"  [ERROR]  {fname}: {e}")

    # ── Test 4: Generate new key + validate ──────────────────────────
    print("\n[4] Generate + Validate (round-trip)")
    for comp, city, code, _ in vectors[:3]:
        prefix = "Pinaca"
        enc, raw, combined = generate_serial(comp, city, code, prefix)
        valid, msg, details = validate_serial(enc, comp, city, code)
        ok = "✓" if valid else "✗"
        print(f"  {ok}  {combined[:40]}")
        print(f"       raw={raw!r}")
        print(f"       {msg[:60]}")

    # ── Test 5: Expiry detection ──────────────────────────────────────
    print("\n[5] Expiry Detection (today = {})".format(datetime.date.today()))
    today = datetime.date.today()
    for prefix, lic_date in YEAR_PREFIXES.items():
        grace = lic_date + datetime.timedelta(days=GRACE_DAYS)
        expected_expired = today > grace
        enc, raw, _ = generate_serial("Test", "City", "0000", prefix)
        valid, msg, _ = validate_serial(enc, "Test", "City", "0000")
        py_expired = not valid and "EXPIRED" in msg
        match = "✓" if expected_expired == py_expired else "✗"
        state = "EXP" if py_expired else "OK "
        print(f"  {match}  {prefix:8s}  lic={lic_date}  grace={grace}  [{state}]")

    # ── Test 6: Site code validation ─────────────────────────────────
    print("\n[6] Site Code Validation")
    sc_tests = [
        ("HO",   "MAIN",  True),
        ("MAIN", "HO",    True),
        ("MAIN", "MAIN",  True),
        ("MAIN", "EAST",  False),
        ("",     "EAST",  True),
        ("HO",   "HO",    True),
    ]
    for sc1, sc2, expected in sc_tests:
        valid, msg = validate_site_code(sc1, sc2)
        ok = "✓" if valid == expected else "✗"
        print(f"  {ok}  company='{sc1}' login='{sc2}' → {'PASS' if valid else 'FAIL'}")

    print("\n" + "=" * 65)
    print("  VERIFICATION COMPLETE")
    print("=" * 65)


if __name__ == "__main__":
    _run_tests()
