# 10_Night_Audit — VB6 Logic Map

All refs: `EXTRAS.text` `[VERIFIED-VB6]`. Night Audit code was **read only, never executed**.

## 1. Core posting routine

`mdlNightAudit` — approx. L228700–L228950, addr `1F5EDF3`–`1F70BE5`.
Structure: `BeginTrans` → phase A (revenue/expense) → `CommitTrans` (loc `1F6FEAC`)
→ phases B/C/D → final `CommitTrans` (loc `1F70A34`) / error → `RollbackTrans`.

| Phase | Location | Action |
|---|---|---|
| A | `Proc_6_140_12D68DC` calls (flag 'A') | Dr/Cr voucher rows for `RoomChrgDueAc`/`CreditAmt`/`AcCode`; expense sheets → `HTEXP`/`HTSAL` |
| B | room-roll SELECT + `Update RoomMAst set roomStat='D'` | occupied → dirty |
| C | folio loop `chkoutdate IS NULL` | `Depdate` extend + `nodays` recount |
| D | `Update enviro set ncur=…, ImprestAmount=0`; `Insert Into NightAuditLog` **L228852**; `Update Depart Set CurTokenNo=0,CurTokenNoKOT=0`; split purge; `VOUCHER_PREFIX` renumber | date roll + cleanup |
| E | `RollbackTrans` + MsgBox | failure path |

## 2. Menu / entry handlers (MDI)

| Handler | Line | Behaviour |
|---|---|---|
| `NightAuditLR_Click` | L31 | menu → audit routine |
| `NightAuditoR_Click` | L57 | **pre-reads** `Select KOTAtNightAudit,POSBillAtNightAudit from Enviro where logsite_code='<site>'`; forces pending KOT/POS processing before audit; opens `frmReNightAudit` when re-audit requested (L112CABB region) |
| `NightAuditRR_Click` | L426 | reverse/related entry |

## 3. Menu dispatch arms (NA captions)

| Caption | Line | Target |
|---|---|---|
| Night Audit Control Panel | 477075 | `New FrmControlPanel` |
| Food Costing Report | 477082 | `rFomRepView` |
| Revenue Analysis | 477090 | `rFomRepView` |
| FOCC Report | 477097 | `rFomRepView` |
| Budget Analysis | 477104 | `rFomRepView` |
| Night Audit Log | 477111 | `rFomRepView` |
| Guest Audit Ledger | 477118 | `rFomRepView` |
| Checkout Analysis | 477125 | `rFomRepView` |
| Charges Remove Log | 477132 | `rFomRepView` |
| Ageing Analysis (Debtors/Creditors) | 477139/477148 | `FaReports` (shared 03_Finance) |
| FB Cost Statement | 477159 | `rFomRepView` |
| Tally POS Report | 477167 | `rFomRepView` |
| GSTR-1 / 2(3) / 2(4A) / 2(4B) / Reconciliation (GSTR-2A) | 477174–477202 | `rFomRepView` |
| Upload Process | 477209 | `FrmUploadProcess` |
| Account Posting | 477244 | `fdNDAcPostChrg` |
| Charges Posting | 480211 | `fdPostChrg` |
| Night Audit Process | 480406–480423 | Enviro gate → helpers → `fdAcPostChrg` (L480420) or `Exit Sub` (L480419) |
| Reverse Night Audit | 480425 | `frmReNightAudit` |

## 4. Gate helpers

Called from the Night Audit Process arm (L480412–480416):

| Proc | Role | Line |
|---|---|---|
| `Proc_6_37_E618F4` | normalise/test Enviro flag = "Yes" | 480412, 480415 |
| `Proc_96_46_10187AC` | KOT pending-work check (returns 0 = clear) | 480413 |
| `Proc_96_45_11033E4` | POS pending-work check | 480416 |
| `Proc_6_140_12D68DC` | ledger posting helper (phase A) | in routine |
| `Proc_96_45_11033E4`/`Proc_96_46…` | shared with POS/Inventory pending checks `[INFERRED]` | — |

Branch polarity (which condition leads to `Exit Sub` vs `fdAcPostChrg`) is
`[INFERRED]` — decompiler `'do at:` loop-back targets not fully resolved.

## 5. Report host wiring

`rFomRepView` instantiated with `GRepFormName = "<rpt>"` (pattern confirmed at L480402
`"SettleRep"`); NA reports follow the same host (viewer logic in `17_Reports`).

## 6. Shared code

- `fdPostChrg`/`fdAcPostChrg`/`fdNDAcPostChrg` — FO forms (05) reused here.
- `FaReports`, `FaMagic` — Finance report hosts reused by Ageing/Budget-adjacent rows.
- `rPOSRepView` — POS viewer used by Tally POS Report family (L477060).
- GST upload `FrmUploadProcess` — also referenced by 03_Finance GST rows.

## 7. Safety annotations

- No NA routine was invoked during analysis.
- Reverse Night Audit (`frmReNightAudit`) body: `[UNKNOWN]` beyond instantiation —
  must be traced before any port or test-DB run.
- Error MsgBox text (phase E) quoted verbatim in `NIGHT_AUDIT_FLOW.md` §E.
