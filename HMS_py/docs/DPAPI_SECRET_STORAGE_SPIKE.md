# Spike: DPAPI Secret Storage (pywin32) — Findings

**Date:** 2026-09-25 · **Time-box:** 30 min · **Status:** ✅ CONCLUSIVE — DPAPI live

## Questions → Answers

| Sawal | Jawab |
|---|---|
| pywin32 available? | **HAAN — v312 installed** (`win32crypt` import OK) |
| `CryptProtectData` round-trip? | **OK** — blob bytes(268), `CryptUnprotectData` ne exact secret wapas diya, description ("HMSpy-Spike") bhi preserve |
| Blob `VARBINARY(400)` me fit? | **HAAN** — 268 bytes (typical token); 400 cap generous |
| `config.py` integration chalti hai? | **HAAN** — live DB me save→raw-blob-check→get_secret round-trip PASS; DB me `D`-marker + non-plaintext confirmed |
| Existing marker dispatch sahi? | **HAAN** — DPAPI blob `D`-prefix se nahi shuru hota (`\x01\x00\x00\x00\xd0\x8c\x9d\xdf` = DPAPI magic), to `D`/`X` prefix scheme collision-free |

## Implementation Status

`core/channel/config.py` **me pehle se implemented hai** (Phase-1 me hi):
- `_dpapi_available()` — pywin32 probe
- `_protect(plain)` → `b"D" + dpapi_blob` (ya `b"X" + b64(xor)` fallback)
- `_unprotect(blob)` — marker dispatch
- `save()`/`get_secret()` — transparent use

## Verified Evidence (this spike)

1. `python -c "import win32crypt"` → OK, pywin32 312
2. Raw DPAPI round-trip (no DB) → exact match, blob 268 bytes
3. **Live DB end-to-end**: `config.save(auth_code="SECRET-XYZZY-42")` →
   `SUBSTRING(AuthCode,1,1) = 'D'`, `DATALENGTH = 273` (1 marker + 268 + overhead),
   `get_secret()` → exact match → cleanup. Plaintext DB me kabhi nahi gaya.

## Caveats / Notes (production ke liye)

1. **DPAPI = machine+user scoped** — secret sirf usi Windows user + machine
   pe decrypt hoga jo protect karne wala tha. Backup/restore ya user-change
   par blob unreadable → re-enter AuthCode (Config UI me expected flow).
2. **SQL Server side decryption nahi** — humesha Python app hi decrypt
   karega (design yahi hai).
3. `VARBINARY(400)` cap: eZee AuthCode typical <100 chars → blob ~250–350
   bytes; 400 safe. Agar kabhi bada token aaye → DDL alter (Phase-5 me).
4. Fallback `X` (XOR) path sirf non-Windows/pywin32-missing ke liye —
   current deployment Windows-only, to practically DPAPI hi chalega.
5. Service-account note: agar app future me Windows Service ke under chale
   (alag user), to purane blobs usi user ke re-enter karne honge.

## Decision

**DPAPI path FINAL for Phase-2.** Koi code change nahi chahiye —
`config.py` already DPAPI use kar raha hai jab pywin32 available ho.
Spike script artifacts cleaned (test rows deleted).
