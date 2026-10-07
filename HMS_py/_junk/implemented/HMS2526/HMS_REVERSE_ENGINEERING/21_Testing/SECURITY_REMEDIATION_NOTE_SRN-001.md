# SECURITY REMEDIATION NOTE — SRN-001

| | |
|---|---|
| **Document ID** | SRN-001 |
| **System** | HMS — Hotel Management System (HMS.exe, VB6) + database MOONData2627 (SQL Server 2008 R2) |
| **Date** | 2026-09-28 |
| **Classification** | INTERNAL — RESTRICTED (owner + IT only) |
| **Status** | DRAFT — awaiting owner decision |
| **Prepared by** | Legacy reverse-engineering analysis |
| **Related records** | BUG-008 (BUG_REGISTER.md), 01_Login_Security/LOGIN_FLOW.md, LIVE_DATABASE_DICTIONARY.md |

---

## 1. Executive Summary

Reverse-engineering of HMS.exe (decompiled trace `EXTRAS.text`) and live schema inspection of
MOONData2627 identified **one intentional vendor backdoor** and **systemic weaknesses in
credential storage/authentication**. The backdoor is a hard-coded password compiled into the
production binary. Passwords are not hashed — they are reversibly obfuscated and compared
case-insensitively. None of these findings have been remediated; the binary and database were
NOT modified during analysis.

Risk rating: **HIGH** for F-1 (backdoor), **HIGH** for F-2 (reversible password storage),
MEDIUM for F-3/F-4. The system is in live production use (last Night Audit 2026-08-03).

---

## 2. Findings

### F-1 — Hard-coded backdoor password "India12" (BUG-008)

**Evidence** [VERIFIED-VB6] — EXTRAS.text line 418127, procedure `CmdLogin_Click`, address EC1B8C
(Banquet availability module `BanqAvailability`):

```vb
Private Sub CmdLogin_Click() 'EC1B8C
  loc_EC1B0E: var_C8 = "India12"
  loc_EC1B1F: If (Ucase(Trim(CVar(Me.txtPassword))) = var_C8) Then
  loc_EC1B3C:   MemVar_1F82C90.MDIRestCode = CVar(MemVar_1F81078 & "BANQ")
  loc_EC1B50:   Me.Global.Unload Me
  loc_EC1B63:   Form.Show ...
```

**Behavior**: typing `India12` (case-insensitive) into this module's password box unloads the
login gate and opens the Banquet availability screen directly — **bypassing userMast
authentication, user rights (user1.PARAM_STR 'AEDP'), and audit attribution** (no U_Name
session is established). Any person with access to the keyboard can invoke it.

**Impact**: authentication bypass; actions taken through this path are not attributable to a
named user; violates audit-trail integrity (U_Name/U_EntDt columns lose meaning for those
operations). Severity **HIGH**.

### F-2 — Reversible password storage, no hashing [VERIFIED-VB6 + VERIFIED-SQL]

**Evidence**:
- Login routine (EXTRAS.text addr 1918120–191815E): `PASSWD` is read from userMast, decrypted
  by `Proc_4_28_EE06F8`, then compared `UCase(input) = UCase(decrypted)` — i.e. the stored value
  is **recoverable plaintext**, not a one-way hash.
- Live schema [VERIFIED-SQL]: `UserMast.PASSWD varchar(50) NULL` — no hash format, no salt
  column, no lockout columns.
- First-run seed (addr 1917F9E): inserts `('SA','\','1')` — a **known constant** obfuscation of
  a blank/weak password on any fresh database.

**Implications**:
1. Anyone with read access to userMast (any SQL login, any backup file, any .mdf copy) can
   recover every user's password.
2. Case-insensitive comparison reduces effective keyspace.
3. Database backups (SIMPLE recovery, C:\Backup per INI key 5) circulate with live credentials.
4. There is no failed-attempt lockout anywhere in the login path.

### F-3 — First-run SA seeding with all rights [VERIFIED-VB6]

If `select COUNT(*) from userMast` = 0, the app auto-creates user **SA** with full 'AEDP'
rights on every module form. If a backup/empty DB is restored anywhere, a known default
super-user reappears. Severity **MEDIUM** (depends on operational exposure).

### F-4 — DB credentials embedded in connection strings [VERIFIED-VB6]

`Provider=SQLNCLI.1;Password=<pwd>;Persist Security Info=True;User ID=<uid>` (EXTRAS.text line
9868). `Persist Security Info=True` keeps the password in the connection object; credentials are
prompted at login and reconstructable from the binary/INI handling. Combined with F-2, a single
DB read compromises both the application data and the SQL accounts. Severity **MEDIUM**.

---

## 3. Risk Assessment

| ID | Threat | Likelihood | Impact | Rating |
|---|---|---|---|---|
| F-1 | Staff/guest-side user enters backdoor at banquet terminal; unattributed access to availability & booking data | Medium (single keystrokes, no tooling) | Auth bypass + audit integrity loss | **HIGH** |
| F-2 | Insider/backup exposure recovers all user passwords; impersonation with valid (attributable!) users | Medium | Full account takeover | **HIGH** |
| F-3 | Restored/blank DB yields known SA super-user | Low-Medium | Full system access | MEDIUM |
| F-4 | Credentials leak via connection strings/backups | Low-Medium | DB-level compromise | MEDIUM |

Context: property LAN is the primary boundary; AnyDesk/remote-access software is installed on
the host (observed during analysis), which raises realistic exposure for F-1/F-2.

---

## 4. Remediation Options

### 4.1 Immediate containment (days, low risk, no binary change)
1. **Disable/remove the vulnerable entry path operationally**: restrict physical/logical access
   to banquet terminals; run banquet operations through the main MDI login only.
2. **Rotate every userMast password** (owner communicates new passwords out-of-band) — recovers
   from any past exposure of the obfuscated values.
3. **Rotate the SQL login(s)** used by HMS; verify which logins exist
   (`sys.server_principals` — read-only check to be run with owner approval).
4. **Restrict DB file/backup access**: C:\Backup and any .mdf/.bak copies → ACL to IT only.
5. **Add DB-level guard (optional, requires owner approval — DDL)**: a logon/DDL trigger is NOT
   possible for app logic, but a scheduled check can detect new 'SA'-type rows:
   `SELECT USER_NAME, LABEL FROM UserMast ORDER BY LABEL DESC` on a weekly diff.

### 4.2 Short-term (weeks, requires source rebuild or vendor patch)
> ⚠ Original VB6 source is NOT available (verified: all .rar archives contain only EXEs).
> Options: (a) vendor escalation for a patched build, (b) binary patch by a specialist
> (owner-approved, signed-off, with backup + rollback), (c) wrap/login proxy:
>
6. **Wrapper gate**: place a thin launcher that authenticates against a modern store
   (e.g. bcrypt-verified) BEFORE HMS.exe starts, and block direct execution of HMS.exe via
   ACL. Backdoor remains in binary but becomes unreachable.
7. **Network containment**: HMS + SQL bound to property LAN only; block workstation ranges
   that don't need banquet modules.

### 4.3 Structural (modernization program — the durable fix)
8. Central authentication service: bcrypt/argon2 hashes, per-user salt, lockout, complexity.
9. Map `user1.PARAM_STR 'AEDP'` to permission claims; deny-by-default.
10. Credentials out of connection strings → secrets vault / integrated security.
11. Preserve U_Name/U_EntDt/U_AE audit semantics — every session must resolve to a named user;
    remove all code paths that can establish a session without one (F-1's real damage).

### 4.4 Explicitly NOT recommended
- Editing HMS.exe bytes in place without owner sign-off and a tested rollback (business
  continuity risk; contract/warranty implications with vendor).
- Deleting the SA row as a "fix" (app re-seeds it on next login against an empty table —
  see F-3 logic; would also break night-audit scheduled jobs that may run under it).

---

## 5. Verification Plan (post-remediation)

| # | Check | Method |
|---|---|---|
| V1 | Backdoor path dead | Attempt 'India12' at banquet login on TEST copy → must fail |
| V2 | No non-attributed sessions | NightAuditLog/PayChargeLog rows always carry U_Name ≠ '' |
| V3 | Passwords unrecoverable | New store: hash extraction attempt returns nothing usable |
| V4 | SA seed neutralized | Fresh restore test → SA creation blocked or flagged |
| V5 | Backups clean | Sampled backup files contain no reversible credentials |

All verification on a TEST database copy first (SHUDHA_TEST / TestDstDB exist on this
instance for staging); production verification read-only.

---

## 6. Decision Requested from Owner

1. Approve immediate containment 4.1 (items 1–4 are operational, no software change).
2. Choose short-term route: vendor patch / specialist binary patch / launcher wrapper (6–7).
3. Schedule structural items into the modernization program (8–11).
4. Confirm whether to record the finding with the vendor (contractual/warranty impact).

---

## 7. Evidence Appendix

| Item | Location |
|---|---|
| Backdoor code | EXTRAS.text line 418127 (`CmdLogin_Click`, addr EC1B8C) |
| Login/decrypt logic | EXTRAS.text addr 1917EC0–19185xx (lines ~10480–10600) |
| First-run seed | EXTRAS.text addr 1917F9E (line ~10495) |
| Connection strings | EXTRAS.text lines 9868–9879 |
| Live schema | 18_Database/columns_dictionary.txt (UserMast row), LIVE_DATABASE_DICTIONARY.md |
| Bug register | 21_Testing/BUG_REGISTER.md (BUG-008, BUG-003/004/009 context) |
