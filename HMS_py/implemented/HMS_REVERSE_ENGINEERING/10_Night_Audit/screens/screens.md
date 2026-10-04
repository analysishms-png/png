# 10_Night_Audit — Screens Inventory

Evidence: runtime `MenuHelp` user=SA, `OPT1=19` (32 rows, `19_VB6_Logic/MenuHelp_SA_tree.txt`
L302–L323 + L427–L437) `[VERIFIED-SQL]`; builder `menu_tree_raw.txt` hex `13` (34 rows,
L1–13 strays + L428–453) `[VERIFIED-VB6]`; dispatch L477056–477244 + L480210–L480425
`[VERIFIED-VB6]`; captures `screenshots/10_Night_Audit/` (7) `[VERIFIED-UI]`.

Flag: `N`=node, `E`=executable, `R`=report.

## Runtime tree (OPT1=19, user SA)

### Night Audit (root, L302, N)
#### Operation (o2=11, L303, N)
| o3 | Flag | Caption | Form / target | PNG |
|---|---|---|---|---|
| 11 | E | Guest Audit Ledger | `rFomRepView` (L477118) | — |
| 12 | E | Charges Posting | `fdPostChrg` (L480211) | — |
| 13 | E | **Night Audit Process** | Enviro gate → `fdAcPostChrg` (L480406–480423) | — |
| 14 | E | Account Posting | `fdNDAcPostChrg` (L477244) | — |
| 16 | E | Reverse Night Audit | `frmReNightAudit` (L480425) | `C4_L1+sub_…Reverse…` |

(o3=15 missing = deleted row.)

#### Reports (o2=12, L309, N) — 12 leaves
| o3 | Flag | Caption | Target |
|---|---|---|---|
| 11 | E | Daily Report | `rFomRepView` (L477270/477271; *Daily Report-II* L477067 → `rFomRepView`) |
| 14 | E | Guest Trail | `rFomRepView` (L477221) |
| 15 | E | Checkout Analysis | `rFomRepView` (L477125) |
| 16 | R | Occupancy Analysis | `rFomRepView` (L477227) |
| 17 | E | Market Segment Analysis | `rFomRepView` (L477233) |
| 18 | E | Business Source Analysis | `rFomRepView` (L477239) |
| 19 | E | Company Analysis | `rFomRepView` (L477245) |
| 21 | E | FOCC Report | `rFomRepView` (L477097) |
| 22 | E | Food Costing Report | `rFomRepView` (L477082) |
| 23 | E | FB Cost Statement | `rFomRepView` (L477159, caption `FB Cost Statement`; builder `F&&B Cost Statement`) |
| 24 | R | Credit Report | `rFomRepView` (runtime-only, L427) |
| 25 | R | EInvoice Report | `rFomRepView` (runtime-only, L428) |

#### Log (o2=13, L320, N) — 2 leaves
| 11 | E | Night Audit Log | `rFomRepView` (L477111) → `NightAuditLog` |
| 12 | E | Charges Remove Log | `rFomRepView` (L477132) → `PayChargeLog` |

#### GST Reports (o2=14, L429, N) — 6 leaves
| 11 | R | GSTR-1 | `rFomRepView` (L477174) | `C3_S1_…GSTR-1.png` |
| 12 | R | GSTR-2(3) | `rFomRepView` (L477181) | `C2_…GSTR-23.png` |
| 13 | R | GSTR-2(4A) | `rFomRepView` (L477188) | `C2_…GSTR-24A.png` |
| 14 | R | GSTR-2(4B) | `rFomRepView` (L477195) | `C2_…GSTR-24B.png` |
| 15 | R | Reconciliation (GSTR-2A) | `rFomRepView` (L477202) | `C2_…Reconcilia.png` |
| 16 | E | Upload Process | `FrmUploadProcess` (L477209) | — |

#### Tally Reports (o2=15, L436, N) — 1 leaf
| 11 | R | Tally POS Report | `rFomRepView` (L477167) | — |

## Additional op entry (not a menu row)

`Night Audit Control Panel` → `FrmControlPanel` (L477075) — reachable from the strip tab /
MDI handler, **not present in MenuHelp OPT1=19** `[VERIFIED-VB6]`.

## Builder-only rows (hex 13, absent from SA runtime)

`Travel Agent Analysis` (L441), `Revenue Analysis` (L448), `Budget Analysis` (L450),
`Ageing Analysis (Debtors)` (L452), `Ageing Analysis (Creditors)` (L453) → `FaReports` for
ageing (L477139/477148), `Room Inventory` (L434), `Charge Payment Detail` (L435),
duplicate `Daily Report` (L431+432).

## Builder stray rows (file top, hex 13) — ordering artifact

L1–L4 `GST Reports` group declared 4×, L2–L5 GST leaves, L9 `Credit Report`,
L12 `Payment Receive Entry (POS)` (dispatches to POS form `RsPaymentReceice` L479433 —
belongs to 08_POS), L13 `Upload Process` (type=0). Runtime places these correctly under
OPT1=19 GST group `[VERIFIED-SQL]`.

## Dispatch chain B rows relevant to NA (`Loop Until`, L480210+)

`Charges Posting` → `fdPostChrg` (L480211) · `Charge Payment Detail` (L480215) ·
`Guest Trail` (L480221) · `Occupancy Analysis` (L480227) · `Market Segment Analysis` (L480233) ·
`Business Source Analysis` (L480239) · `Company Analysis` (L480245) · `Travel Agent Analysis`
(L480251) · `Night Audit Report` (L480257) · `A/C Posting` → `fdAcPostChrg`? (L480259) ·
`Automated Morning Report (A.M.R.)` (L480264) · `Daily Report` ×2 (L480270/480271) ·
`Night Audit Process` gate (L480406) · `Reverse Night Audit` → `frmReNightAudit` (L480424).

`Night Audit Report` and `A.M.R.` are **caption-only entries in chain B** — they are not
MenuHelp rows for SA (possibly other-user menus or superseded) `[INFERRED]`.

## Screenshot coverage (7 PNGs)

Covered: menu state, GSTR-1, GSTR-2(3)/(4A)/(4B), GSTR-2A reconciliation, Reverse NA menu row.
**Not captured**: Night Audit Process (intentionally — blocklist), Control Panel, Daily Report
output, Log views, Upload Process, Tally report.
