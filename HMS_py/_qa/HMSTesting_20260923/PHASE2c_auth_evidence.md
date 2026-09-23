# PHASE 2c Evidence — Invalid login + lockout (2026-09-23)

## Unit / API layer (`core/auth.check_login`)
PASS — exact sequence (fresh process, SA / wrongpass x5 then correct):

| # | Input | Result |
|---|-------|--------|
| 1 | SA / wrongpass | `(False, 'Invalid Password')` |
| 2 | SA / wrongpass | `(False, 'Invalid Password')` |
| 3 | SA / wrongpass | `(False, 'Invalid Password (2 attempts left)')` |
| 4 | SA / wrongpass | `(False, 'Invalid Password (1 attempts left)')` |
| 5 | SA / wrongpass | `(False, 'Invalid Password (0 attempts left)')` |
| 6 | SA / **KANPUR** (correct, but locked) | `(False, 'Account locked. Try again in 899s')` |
| after `_login_attempts.clear()` | SA / KANPUR | `(True, 'Welcome SA')` |

Notes:
- Lockout = 5 failed attempts / 15 min (in-process dict `_login_attempts`).
- Successful login clears failed attempts.
- Correct password while locked still blocked (by design).
- Restarting app process resets lockout (memory-only) — **BUG-LOCKOUT-NOT-PERSISTENT** (optional hardening: persist to DB/file).

## GUI LoginDialog (PID 27244, hwnd User Information 3278986)
PASS — red inline error under Password (not modal box):

| # | Action | On-screen message |
|---|--------|-------------------|
| 1 | SA / wrongpass → Login | `Invalid Password` |
| 2 | Login again | `Invalid Password` |
| 3–4 | Login again | `Invalid Password (N attempts left)` seen as `(1 attempts left)` |
| 5 | Login again | `Invalid Password (0 attempts left)` |
| 6 | Login again (correct or wrong) | **`Account locked. Try again in 826s`** |

Notes:
- Error is QLabel red text under Password field — user-friendly, PASS.
- Lockout counter is **per-process memory** (`auth._login_attempts`). App restart resets it → **BUG-LOCKOUT-NOT-PERSISTENT**.
- After lockout, restart app → login with correct SA/KANPUR must succeed (**verified**):
  - Killed PID 27244 (locked), relaunched PID 20568
  - User Information hwnd 3740186 → SA/KANPUR → **Company Details** hwnd 7998436
  - Company Login → **MainWindow** `Moon and Mars Resorts { 2026-27 }` hwnd 4002330

## Verdict
- PHASE 2c auth: **PASS** (invalid password + attempts-left + lockout messages all work in unit + GUI).
- PHASE 2 complete overall.
