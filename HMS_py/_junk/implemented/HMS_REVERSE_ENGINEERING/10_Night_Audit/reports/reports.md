# 10_Night_Audit — Reports

Evidence: runtime `MenuHelp` OPT1=19 report leaves `[VERIFIED-SQL]`;
builder hex `13` `[VERIFIED-VB6]`; dispatch L477056–L477244 `[VERIFIED-VB6]`;
captures `screenshots/10_Night_Audit/` (5 report PNGs) `[VERIFIED-UI]`.

## Viewer pattern

Reports open `rFomRepView` (Crystal host) with `GRepFormName = "<rpt base>"` — same host
as FO/POS families. `Ageing Analysis` rows use `FaReports` (Finance host). GST `Upload
Process` opens `FrmUploadProcess` (not a report — upload utility).

## Runtime leaves (21 report rows)

### Reports group (o2=12) — 12
| Caption | Dispatch line | PNG |
|---|---|---|
| Daily Report | 477270/477271 (+`Daily Report-II` 477067) | — |
| Guest Trail | 477221 | — |
| Checkout Analysis | 477125 | — |
| Occupancy Analysis | 477227 | — |
| Market Segment Analysis | 477233 | — |
| Business Source Analysis | 477239 | — |
| Company Analysis | 477245 | — |
| FOCC Report | 477097 | — |
| Food Costing Report | 477082 | — |
| FB Cost Statement | 477159 | — |
| Credit Report | (runtime-only row L427) | — |
| EInvoice Report | (runtime-only row L428) | — |

### Log group (o2=13) — 2
Night Audit Log (477111) → `NightAuditLog` table · Charges Remove Log (477132) → `PayChargeLog`.

### GST Reports group (o2=14) — 5 report + 1 utility
| Caption | Line | PNG |
|---|---|---|
| GSTR-1 | 477174 | `C3_S1_Night_Audit__GST_Reports__GSTR-1.png` |
| GSTR-2(3) | 477181 | `C2_Night_Audit__GST_Reports__GSTR-23.png` |
| GSTR-2(4A) | 477188 | `C2_…GSTR-24A.png` |
| GSTR-2(4B) | 477195 | `C2_…GSTR-24B.png` |
| Reconciliation (GSTR-2A) | 477202 | `C2_…Reconcilia.png` |
| Upload Process (`FrmUploadProcess`) | 477209 | — |

### Tally Reports group (o2=15) — 1
Tally POS Report → `rFomRepView` (477167).

## Builder-only report rows (not in SA runtime)

| Caption | Builder line | Dispatch |
|---|---|---|
| Travel Agent Analysis | L441 | `rFomRepView` (480251) |
| Revenue Analysis | L448 | `rFomRepView` (477090) |
| Budget Analysis | L450 | `rFomRepView` (477104) |
| Ageing Analysis (Debtors) | L452 | `FaReports` (477139) |
| Ageing Analysis (Creditors) | L453 | `FaReports` (477148) |
| Room Inventory | L434 | `rFomRepView` (480204) |
| Charge Payment Detail | L435 | `rFomRepView` (480215) |
| Daily Report (duplicate row) | L431+L432 | same caption twice |

Caption-only chain-B entries with **no MenuHelp row for SA**: `Night Audit Report` (480257),
`Automated Morning Report (A.M.R.)` (480264), `A/C Posting` (480259) — possibly other-user
menu items or superseded rows `[INFERRED]`.

## `.rpt` assets

NA/tax reports live in `Reports/` (371–524 files by count basis) with text extracts in
`REPORTS_TXT/` (233). Full mapping: `17_Reports/REPORTS_DEEP_CATALOG.md`.

## Coverage

Captured report outputs: **5** (GSTR family). Missing: Daily Report, analyses (7),
Log views, FOCC/Food Costing/FB Cost, Credit/EInvoice, Tally — see `screenshots/README.md`.
