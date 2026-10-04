# 02_Main_Setup — Notes, gaps, bugs

## A. Undocumented / not found

1. **No report rows at all.** Hex `C` has 0 rows of type 1 in `menu_tree_raw.txt`
   (type census: 105×0, 8×2, 10×3, 1×4) `[VERIFIED-SQL]`. So section "Reports" of this
   module's manual is necessarily a cross-reference, not an inventory.
2. **Type `2` legend** (Revenue Wise Budget Entry, Data Transfer, POS Bill Deletion,
   PLU File, POS Recycle, Consumption Master, Member Bill Sundry Setting,
   Data Transfer (POS)): `[UNKNOWN] — no legend in PROMT.txt, Analysis.ini, or source;
   capture tool treats 0 and 2 both as screens (hms_capture.py only_type == "screens")`.
3. **Backup Data (L151) SQL**: `[UNKNOWN] — no BACKUP DATABASE literal found in EXTRAS.text`. `[VERIFIED-VB6]` search negative.
4. **Inconsistency Check (L153) routine**: `[UNKNOWN] — handler not located in the
   dispatch tail L480384-L480810` (that tail covers other Utility items: `frmUnitMast`
   L480470, `FrmJobScheduler` L480475, `frmMenuItemCopy` L480465).
5. **Year End Updation (L140 + L154)** — two menu rows, one caption, different groups.
   Which form each opens: `[UNKNOWN] — neither appears as a `New ...` in the dispatch tail`.
6. **`Revenue Wise Budget Entry` (L55)** screen class: `[UNKNOWN]`.

## B. Behaviour worth flagging (candidate bugs / quirks)

1. **Duplicate captions resolve to three different groups.** `Country Master` occurs at
   L57 (Front Office Setup), L142 (Financial Setup) and L159 (Utility); `State Master`
   L58/L143/L160; `City Master` L59/L144/L161; `Company Master` L71/L162;
   `Department` L115/L163; `Ledger Accounts` L135/L164. Since dispatch is caption/code
   driven (`Proc_165_3(Code)` L477039), a **code collision would open the wrong master**.
   `[INFERRED]` — actual codes come from `menuHelp`, which is per-user; SA sees 440 items
   (`19_VB6_Logic/MENUHELP_PER_USER_ANALYSIS.md`).
   → Migration must key on `menuHelp.Code`, never on caption.
2. **`Item List` vs `Item  List`** (L76 Point of Sale Setup, L122 Material Mgmt Setup —
   two spaces in the second). Any caption-equality check (as used by
   `hms_capture.py` `src_caps` matching) will treat them as different keys.
   `[VERIFIED-VB6]`
3. **Zero FKs across the whole database** (`18_Database/foreign_keys.txt` = 0 bytes,
   `[VERIFIED-SQL]`). Every "master → transaction" reference here is enforced only by
   application code; a wrong dropdown value inserts orphans silently.
   Same finding in 07_Inventory (IN-11) and 09_Banquet (F-BANQ-07).
4. **`HO` site rows.** Lookup SQL uses `LOGSITE_CODE='.. or LOGSITE_CODE='HO'`
   (pattern seen at `EXTRAS.text` L837828 for `MembershipRevMast`) — head-office rows are
   merged into every site's master list. `[VERIFIED-VB6]`
5. **Utility group mixes read and destructive operations** — `POS Bill Deletion` (L157),
   `POS Recycle` (L167) and `Data Transfer` (L155/L165) sit beside `User Master`.
   Permission granularity: `[UNKNOWN] — UserPermission columns exist (e.g.
   `FacilityBilling varchar(4)`, L264826) but the full column set per Utility item was
   not mapped` (see module_manual.md §8).

## C. Screenshot coverage

14 PNGs in `screenshots/02_Main_Setup/`: Tax Master, Tax Structure, Payment Type,
Parameter, Printing Parameters (+ 5 duplicate-prefix C3_0x variants), Menu Item Copy,
Guest Lookup, B032_Menu. Screens **without** captures: 105 type-0 rows minus the ~10
covered → roughly **95 setup screens have no screenshot** (Phase 4 candidate list).
`[VERIFIED-UI]`

## D. Open questions for Phase 4 (GUI pass)

1. Open `Revenue Wise Budget Entry` and `Data Transfer` to settle the type-2 legend.
2. Confirm which of the duplicate `Country Master` rows opens which form.
3. Capture a run of the 9 `Financial Setup` masters (L134–L147) — currently 0 captures.
