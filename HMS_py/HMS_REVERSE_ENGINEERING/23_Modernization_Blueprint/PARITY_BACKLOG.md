# PARITY BACKLOG — Prioritized Shortlist (2026-09-29, round-4)

Source: `VB6_VS_PYTHON_FILE_BY_FILE.txt` (regenerated cd8f976) +
runtime registry ground-truth + live-DB probes.
Analysis scripts: `_qa/vb6_only_next_candidates.py`, registry sweep.

## Ground-truth snapshot

- Forms: PY_FILE 55 | REGISTRY 160 | **COMING_SOON 35 (static-scan) →
  runtime sirf ~13 stub** (baaki REAL ho chuke: Display Rack, Check Out
  Clearance, KOT Transfer, Token Entry, Salary Creation, Table Change,
  Multiple SMS Type, + round-3 ke 6 naye)
- missing_biz_fns 431 / missing_evt 619: static estimates — zyadatar
  mapped-ya-covered (registry-wired forms ke andar); actionable subset
  hi niche shortlist me hai.

## TIER 1 — Port next (real masters/details, live data, owner form clear)

| # | Form (VB6) | Table(s) | Live rows | Kyun |
|---|-----------|----------|-----------|------|
| 1 | **Guest Profile — Foreigner tab** (GuestProfile.frm) | `guestproffor` | 30 | Form-C compliance data (passport/visa 20+ cols live). GuestProfile REAL hai — tab add karna hai, naya form nahi. |
| 2 | **Venue Master — capacity tab** (FrmVenueMast.frm) | `venuecapacity` | 32 | Venue Master REAL hai (banq_ui); capacity rows ka CRUD missing. |
| 3 | **Comp Master** (CompMast.frm) | `comp_plandet` 8350 + `roomdiscount` 1584 + `comp_inclusive` | ~10k | Complimentary plans ka poora system — data heavy, VB6 CompMast evidence strong. Naya master. |
| 4 | **Settlement outlet-paycodes** (FdReSettlement add-on) | `departpay` | 75 | Chhota: re-settlement me outlet-allowed-paycodes filter. ReSettlement REAL — enhancement. |

## TIER 2 — Portable, par low-value/low-data (jab Tier 1 done)

- `expsheet` (4 rows) — Expense sheet header; expense_ui REAL hai, sheet
  header add karna enhancement hai.
- `einvoicebill1/2` (540+211) — E-invoice staging; einvoice_ui already
  hai, staging-table CRUD integration ka decision chahiye.
- `memaddrwa` (31) — Member WA address; member_billing me tab ban sakta.
- `Open Item Consumption Master` (FrmConsumMast9999) — gravy/comp ke
  baad BOM sibling; table-live check pehle karna.

## TIER 3 — NOT portable as-is (logs/replicas/helpers — document-only)

`sale2log`, `suntranlog`, `stocklog` (audit logs — ports me DELETE+INSERT
chains already source se recreate karte hain), `mcurstk`/`rawconsumption`
(NA rollups — nightaudit me compute hota), `usermodule/usermodule1`
(menu tree state — python menu system alag), `lastvou` (fa_voucher ka
in-memory tracker already), `user2` (UserMast mirror).

## COMING_SOON (runtime STUB) — blocked status with reason

| Caption | Blocker | Unblock route |
|---------|---------|---------------|
| Forex Receive Entry | ForexRecv/ForexReceipt tables absent | DB-side table creation (owner decision) |
| Sale Bill Entry / Settlement Entry | Sale table absent; SplitSale flow partial | Schema owner decision |
| Excise Invoice Cum Gate Pass | RsKitchenMaterial + trantaxdetail empty flow | Needs VB6 deep-dive + DB decision |
| Finish Material Receive Entry | RsStoreRecEntry; Store flow user2/mcurstk dependency | After Comp Master |
| Voucher Wise Sundry Entry / Voucher Sundry Setting | SundryTypeFix dispatch chain (register note dekho) | VB6 me bhi inactive |
| Task Scheduler / POS Recycle / Recycle Outlet Data | JobSchedule/Recycle tables + service infra | Infra decision |
| Display Table | RsPOSDisplay/RsTouchScreenTB — touch UI | Low priority (POS touch) |
| Travel Agency Posting | Travel1/Travel2 (0 rows live) | Data aane pe |
| Order Booking Advance | POSAdvanceDepDialog — order_booking module partial | After Tier-1 |
| Godrej Locks / Godrej Lock Settings | Hardware (door-lock) integration | Hardware decision |
| Item Issued On Cleaning | Cleaning stock issue — Stock flow variant | After Comp Master |
| Changes Department | department change for outlets — minor FO helper | Small task |
| Plan Defination Master | PlanPackMast — plan package definition | Medium task, Plan Master REAL hai |

## Forms D1 (MISSING, n=3)

- `DMTree.frm` — menu-tree designer (python menu system replaces)
- `FrmDataRecieving.frm` / data transfer pair — infra decision (STUB
  with documented reason already)
- `PrAttend1.frm` (Attendence print) — hr_payroll reports me covered
  (attend/salary tables PY me already use ho rahe — grep-verified)

## Recommended execution order (next sessions)

1. **GuestProfile Foreigner tab** (Tier1 #1) — smallest, compliance value
2. **Venue capacity CRUD** (Tier1 #2) — venue master me tab
3. **Comp Master** (Tier1 #3) — sabse bada, 3 tables, full form port
4. **departpay enhancement** (Tier1 #4) — re-settlement filter
5. Plan Defination Master / Changes Department — chhote tasks
