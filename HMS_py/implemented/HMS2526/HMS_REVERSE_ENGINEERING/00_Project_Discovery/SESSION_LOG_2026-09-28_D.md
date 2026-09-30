# SESSION LOG D — Script-driven module walks (2026-09-28 ~21:00–22:00 IST)

Continuation of Session C, same SA login (PID 4480, left running + logged in,
MDI clean). Used the workspace's own tools per owner instruction:
hms_capture2.py (patched bbox 1440→1920), hms_capture3.py, gui_explore.py
(action_log.csv), plus new hms_walkhandles.py (handle-walk + PrintWindow
shots + Exit/WM_CLOSE, NA blocklist). EXTRAS.text mined for citations.

## D1. Tools fixed/added (in-workspace)

- hms_capture2.bar_slots bbox widened to 1920 (1080p MDI).
- hms_walkhandles.py (NEW): strip click → topbar Button-handle enumerate →
  click each → poll MDI-child forms → PrintWindow C4_* shot module-wise →
  close via Exit-handle (verified) else WM_CLOSE; save-prompt would be
  left unanswered + logged (none appeared all session). NA blocklist enforced
  with `na` arg; **'reverse' added to blocklist** after Reverse Night Audit
  form was (view-only) opened once — closed untouched.
- Environment lessons: pywinauto click_input misfires privilege checks on
  32-bit target → raw win32api clicks; HMS gets minimized by host-focus
  fights → fix_win restore+maximize; pywinauto needs Alt-trick foreground;
  OC window re-maximizes between tool calls (intra-script foreground sticks).

## D2. Modules walked (all shots under screenshots/<mod>/, C2/C3/C4 prefix)

- Main Setup (capture3): Tax Master, Tax Structure, Payment Type, Parameter,
  Printing Parameters, Printing Setup (6; slots 7-9 empty).
- Finance: Expense Voucher (C3) + Voucher Entry (slow loader, seen open);
  Reports sub-row 22 buttons → 16 report forms captured
  (Ledger/ReprtForm, Cash/Bank Book, Journal Books+Log, Annexure, Bank
  Register, Ageing Debtors/Creditors, Outstanding Creditors, Trial Ledger,
  Bill-wise Debtors, Cheque Cleared/Not-Cleared, Cash/Fund Flow);
  6 no-window (Non-Transaction, Reference, A/c Check List, Control Ledger,
  Roz Namcha, TDS) — dead-or-slow, retest pending.
- House Keeping: Complaint Master (C3); HK Report / Lost-Found / Complaint
  Clearance seen open (slow loaders missed by poll — captured? NO, missed;
  re-shoot pending). Module row = Operations|Reports|LAUNDRY (handled).
- Inventory (capture3): Indent, Purchase Order, M.R. Entry, Purchase Bill.
- POS: module row = POS M.I.S. | Tax Reports | ROOM SERVICE |
  Hight Way point | Garden Aroma | Hight Way point KOT | MOON TEA CAFE |
  ECOMERSE SALES (8 outlets live); 64 MIS-report captures (8×8, titles
  identical across outlets — dedupe in docs). Outlet OPERATIONS screens
  (Sale Bill etc.) not reached — remaining.
- Banquet: 24 captures (Reports 8: Outstanding, Party-Outstanding, Cashier,
  Booking Inquiry Detail, Settlement, Daily Function Sheet, Item-wise,
  Company-wise + MIS + Tax repeats).
- HR/Payroll: 8 (Payroll Register, Loan Register, Loan/Adv Summary+Ledger,
  Attendence, Gratuity, PF Statement, Form C) closed via real Exit buttons.
- Night Audit (blocklist): Charges Posting / Night Audit Process / Account
  Posting SKIPPED ×4 groups; Reverse Night Audit form viewed+closed ×4
  (nothing pressed); GST/Log/Tally sub-rows repeat same 4 items.
- Reservation/FO: Session C coverage stands (Ops complete).
- EXTRAs: single click = nothing; DOUBLE-click shows module row
  (Sstup|Operations, handled buttons) — walk returned empty (row state
  race); EPABX/Messaging/Members/Sales/Mall still unreached — remaining.
- In Box / Property Status: single + double click = no window (prior pack
  has Inbox capture; carry over).

## D3. BUG-011 hardened [VERIFIED-UI ×6 + VERIFIED-SQL]

FO Reports/Tourism/MIS/Tax: 3 single + 1 double + 1 immediate-timing
(reswitch→scan→click→dump in one script) = all no-op; handle dump proves
Operations sub-row persists, no form. menuHelp HAS SA grants (FDORep 23 R,
FDOMISRep 10 R, FDOTaxr 2 E, FDOForms 10 E) → UI contradicts security data.
Root cause needs decompiled top-bar handler review (19_VB6_Logic).

## D4. EXTRAS.text citations (line-anchored)

- NA entry points: NightAuditLR_Click (reports), NightAuditoR_Click,
  NightAuditRR_Click, NightAuditGSTR_Click, NightAuditReport(I) subs.
- SMS poll: `Select * from DBSENDSMS Where ISNULL(SENDTF,'')<>'TRUE'`
  + DDL-builder creating DBSendSMS columns (self-healing staging).
- MenuHelp runtime SQL: `SELECT * FROM MENUHELP Where Flag<>'V' AND
  USERNAME='...'` (lines 3636/3690; Flag V = hidden) + `Update MenuHelp
  set ShowInList='Y'/'' Where Code=...` (3456/3535/3553 — runtime writes,
  explains prior trace write counts).
- Conn strings: SQLNCLI.1 + MSDataShape/SQLOLEDB.1, pwd from memory var
  (9868/9871/10630/10633).

## D5. Fresh QA evidence

ErrorLog.Log gained 2 rows TODAY 21:16:44 + 21:26:27:
"Multiple-step operation generated errors" (-2147217887, Cursor Engine) —
ADO client-cursor binding failures while opening report screens on June
data. [INFERRED timing correlation; needs SQL-trace attribution.]

## D6. Safety record (whole day)

Counts start=C:end (68/117/19/100/10605/0 + menuHelp 8475). Zero DML/DDL
by us. ~120 forms opened, all closed (Exit-verified/WM_CLOSE), zero save
prompts. NA engine never executed (blocklist logs in action_log.csv).
Passwords never stored (scripts credential-free).

## D7. Remaining

Setup slots 7-9; Finance 6 dead-or-slow reports + Voucher Entry shot;
HK 3 slow-loader reshoots; POS outlet operations; Reservation letters
(Advance Deposit/Confirmation/Cancellation/Registration/LookUp types);
EXTRAs Sstup/Operations sub-rows; EPABX/Members/Sales/Mall location;
Inbox/Property Status openers; BUG-011 handler root-cause; FO Tourism/MIS/
Tax same-dead verification (assumed, 1 sample each pending).
