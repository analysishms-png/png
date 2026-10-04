# 10_Night_Audit — Notes

> **Production-data rule (spec §15)**: Night Audit must NOT be executed on production data.
> If a test run is ever required, ask the user first. Everything below was derived from
> decompiled code + read-only DB inventory.

## Spec-15-coverage ("Night Audit must be documented separately and deeply")

| Spec question | Answer | Evidence |
|---|---|---|
| What happens before audit? | Enviro gate reads `KOTAtNightAudit`/`POSBillAtNightAudit`; pending KOT/POS must be cleared; optional Charges/Account posting first | L480407, `NightAuditoR_Click` L57 `[VERIFIED-VB6]` |
| What validations occur? | Gate flags + helper procs `Proc_96_46_10187AC` / `Proc_96_45_11033E4` return 0 when clear | L480412–480416 `[VERIFIED-VB6]` |
| What tables are **read**? | Enviro, RevMast, ExpSheet, RoomMast, RoomOcc, GuestFolio, GuestProf, SubGroup, RoomCat, GUESTSTAT, Depart, VOUCHER_PREFIX, SplitSale1 | queries.sql `[VERIFIED-VB6]` |
| What tables are **updated**? | Ledger (phase A), RoomMast(roomStat), RoomOcc(Depdate), GuestFolio(nodays/Depdate), Enviro(ncur/ImprestAmount), Depart(token counters), VOUCHER_PREFIX(START_SRL_NO) | same |
| Tables **deleted**? | POS_SBill, SplitSale1, SplitSale2, SplitStock, SplitedSunTran (split staging) | same; all 0 rows live |
| Which procedures execute? | **None DB-side** (3 utility SPs exist, 0 app references). VB6 procs: `Proc_6_140_12D68DC` (ledger), `Proc_6_37_E618F4`, `Proc_96_46/45` (gates) | `[VERIFIED-SQL]+[VERIFIED-VB6]` |
| How does business date change? | `Update enviro set ncur=<next>, ImprestAmount=0 where Logsite_code=…` inside phase D | queries.sql D `[VERIFIED-VB6]` |
| How does room status change? | occupied (`type NOT IN ('C','O')`) + `TYPE='RO'` → `roomStat='D'` | queries.sql B `[VERIFIED-VB6]` |
| How is revenue posted? | room-charge dues + ExpSheet rows → Dr/Cr vouchers via `Proc_6_140_12D68DC`; `RevMast.CASH_AC` resolves cash account | queries.sql A `[VERIFIED-VB6]` |
| Pending transactions handled? | gate blocks audit while KOT/POS pending; due-out folios auto-extended (phase C) | `[VERIFIED-VB6]` |
| How are reports generated? | `rFomRepView` + `GRepFormName`; GST/Tally/analyses all viewer-hosted | reports.md `[VERIFIED-VB6]` |
| How are audit logs created? | `Insert Into NightAuditLog(DateChngFrom,DateChngTo,StartNightAudit,EndNightAudit,Site_Code,U_AE,U_Name,U_EntDt,LogSite_Code)` at L228852; live **134 rows** | `[VERIFIED-VB6]+[VERIFIED-SQL]` |

Spec deliverables satisfied: `NIGHT_AUDIT_FLOW.md` (this folder) ✓ + detailed flowchart
(`flowcharts/workflow.mmd`) ✓.

## QA checklist (READ-ONLY)

- [ ] Strip tab `Night Audit` visible — `B032` context
- [ ] Operation group expands, shows 5 rows incl. Process + Reverse — `C4` (menu only)
- [ ] GST Reports group expands (6 rows) — C2/C3 captures
- [ ] Open a **log viewer** (Night Audit Log) — read-only SELECT over 134 rows (not yet captured)
- [ ] Open **Daily Report** viewer — read-only (not yet captured)
- [ ] Verify `Enviro` gate values exist: `SELECT KOTAtNightAudit,POSBillAtNightAudit FROM Enviro` (read-only)
- [ ] **STOP** — do NOT click: Night Audit Process, Reverse Night Audit, any confirm,
      Save, Delete, Post, Settle, Print, Yes
- [ ] Verify staging tables are empty post-historical-audit: all 5 split tables = 0 rows ✓ (done, read-only)

## Open questions (`[UNKNOWN]` / `[INFERRED]`)

1. **Reverse Night Audit body** — statements not traced. Likely keyed on
   `NightAuditLog.DateChngFrom/DateChngTo`. Needs decompile pass on `frmReNightAudit`.
2. **Gate branch polarity** — exact Yes/No → proceed/exit mapping `[INFERRED]`
   (decompiler loop-back targets unresolved).
3. **Phase A partial commit** — revenue may commit even if B–D later roll back
   `[INFERRED]` from commit placement (`1F6FEAC`).
4. **GSTR/Tally report SQL** — lives inside `.rpt` files, not yet extracted per-report.
5. `Night Audit Report` / `A.M.R.` captions exist in dispatch but not in SA menu —
   superseded rows or other-user menus `[INFERRED]`.

## Capture backlog (safe items)

1. Night Audit Log viewer (proves 134-row read path) — **highest value, safe**
2. Charges Remove Log viewer
3. Daily Report output
4. Control Panel (`FrmControlPanel`) — read-only open
5. Tally POS Report output
6. Upload Process **menu state only** (do not trigger upload)

## Migration pointers

- Port as orchestrator transaction with phase A commit explicit + documented
  (property-test: failure ⇒ `ncur` unchanged).
- Keep `NightAuditLog` as the reverse/recovery index (DateChngFrom/To contract).
- Gate becomes a precondition service with a modern blocking message.
- Reverse NA: spec first (currently under-documented), then port.
- GST/Tally report groups deserve their own Tax module in the modern IA.
- Room-roll dead join on `GUESTSTAT` (0 rows): drop or resurrect the guest-status feature consciously.
