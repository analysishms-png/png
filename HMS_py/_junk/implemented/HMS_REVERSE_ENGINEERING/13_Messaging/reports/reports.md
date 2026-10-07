# 13_Messaging — Reports

## 1. Menu report rows

**None.** `menu_tree_raw.txt` hex `16` has exactly 3 rows (L472 header, L473 `InBox`,
L474 `OutBox`), all `type=4`/`type=0` — no `type=1` report rows. `[VERIFIED-VB6]`

## 2. On-disk Crystal reports

Scanned `HMS2526\Reports\` (371 `.rpt`) and `REPORTS_TXT/` (233 catalog extracts) for
Messaging/SMS/Message names: **0 files matched.** `[VERIFIED-UI]`

## 3. So what does the module produce for a user?

| Output | Exists? | Evidence |
|---|---|---|
| Crystal report | **No** | `[VERIFIED-UI]` no matching `.rpt` |
| Printable list from Inbox/Outbox | `[UNKNOWN]` — a grid `Print` button would be form-level, not menu-level | `[INFERRED]` |
| SMS delivery log | data only (`DBSendSMS`, 18810 rows), no report wrapper found | `[VERIFIED-SQL]` |

## 4. Cross-module report that touches messaging data

`GuestMessage` content surfaces in **Front Office** guest enquiry grids
(`EXTRAS.text` L87877 builds `GM.DocID / GM.VNo / GM.RoomNo / GF.Name / GF.Company /
GM.Caller` into a `Select … ` bound to a grid). That is a screen, not a Crystal report.
`[VERIFIED-VB6]`

## 5. Verdict

Messaging is the only functional module with **zero reports** (EPABX has 1, Mall has 1).
Any expectation of an "SMS delivery report" from the menu is unfounded — `[INFERRED]`
delivery history is only inspectable by querying `DBSendSMS` directly.

## 6. Gap

- `[INFERRED]` A report over `DBSendSMS` (sent vs pending, day-wise) would be the obvious
  missing deliverable; none exists in VB6.
- `[UNKNOWN]` Whether `EmailSMSForward` was ever surfaced anywhere.
