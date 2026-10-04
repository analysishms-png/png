# ROLE PROFILE: Deepak  [VERIFIED-SQL]

User: Deepak | Status: ACTIVE (runs Night Audit — NightAuditLog me U_Name='Deepak', last 2026-08-03)
Menu items: 157 (SA: 440) | CompCode '2' | Data: Deepak_profile.txt, Deepak_missing_from_SA.txt (213 rows)

## Module-wise access (screens E / reports R / groups N)

| Module | Screens | Reports | Groups | Notes |
|---|---|---|---|---|
| Front Office | 10 | 30 | 4 | **Primary role — FO operations + full FO reporting** |
| POS | 18 | 12 | 4 | POS operations + reporting |
| Banquet | 10 | 14 | 5 | Banquet billing + reports |
| Night Audit | 14 | 1 | 3 | **Audit-run access (14 E-items) + GST reports** |
| Reservation | 13 | 5 | 5 | Reservations + reports |
| Finance | — | — | — | **NO direct Finance items** (indirect via NA posting) |
| Inventory | — | — | — | blocked |
| Main Setup | 1 | 0 | 2 | sirf 1 screen (likely password/enviro view) |
| House Keeping | 3 | 0 | 3 | limited |
| HR | — | — | — | blocked |

## SA se diff: 213 items missing
| Module | Missing items |
|---|---|
| Main Setup | 80 (poora setup/control panel hidden) |
| Inventory | 31 |
| Finance | 30 (vouchers/TDS/ledger) |
| POS | 21 (setup/config side) |
| Front Office | 17 (masters/setup side) |
| HR | 14 |
| Night Audit | 11 (config/utility side) |
| House Keeping | 5 |

## Role interpretation
Deepak = **Duty Manager / FO-in-charge**: din-bharka operations (FO+POS+Banquet+Res+HK)
+ **Night Audit authority** (14 NA screens incl. run access — live NightAuditLog usi ka hai),
par masters/setup/finance-vouchers/inventory/HR locked. Classic hotel duty-manager RBAC.

## Verification (optional, pass-7)
Deepak credentials se login → left-strip modules compare (Inventory/Finance/HR buttons
disabled ya hidden hone chahiye) → MenuHelp claims live-verify.

## Files
- Deepak_profile.txt — 157 rows (Option, OPT1..4, Flag, login-status)
- Deepak_missing_from_SA.txt — 213 hidden items (module-wise)
- MenuHelp_Deepak_tree.txt — raw tree
