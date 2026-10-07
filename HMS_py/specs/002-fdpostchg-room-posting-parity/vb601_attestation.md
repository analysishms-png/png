# VB6-001 Attestation — fdPostChrg Room Posting Parity

Task: VB-001 | Date: 2026-10-04 | Scope: independent re-derivation of attestation items 1–6 for `.claude/plan/fdpostchg-room-posting-parity.md`

Authoritative sources:
- `PROJECT_REPAIR - Copy\Hotlib.bas` — 2,527,284 B, 42,736 lines, SHA256 prefix 478DB186CB
- `PROJECT_REPAIR - Copy\fdPostChrg.frm` — 28,340 B, 727 lines, SHA 63DCCDE890… (root "logic-only" build)
- `HMS_py\FODER\fdPostChrg.frm` — 36,143 B, 725 lines, SHA FD7013831C… (task-designated source)
- `HMS2526\serialkey\PROJECT2\PROJECT\fdPostChrg.frm` — 36,205 B, 727 lines, SHA 609C2EA68C…

## Item 1 — fdPostChg existence search: PASS
- `glob **/fdPostChg*` → 0 files. Case-insensitive PowerShell `-Filter "fdPostChg*"` over the entire `PROJECT_REPAIR - Copy` tree → only hit is `HMS_py\.claude\plan\fdpostchg-room-posting-parity.md`.
- No fdPostChg.frm/.frx/.bas/.cls exists anywhere in the tree. The form is fdPostChrg.frm (trailing g). In-tree: 6 .frm copies (3 hash variants) + 6 .frx copies (all 1,090 B, SHA prefix 147E0ABB95).

## Item 2 — baseline normalization of the 3 fdPostChrg.frm variants: CORRECTED (plan §0.2 wording)
Method: strip VB comments, collapse `loc_`/`unk_`/`var_`/`MemVar_`/`Proc_` address-suffixed identifiers, token diff.
- FODER ↔ HMS2526: ratio 0.9727, 10 non-equal blocks — 3 loc_ label-address renames; FODER's `Cmd_UnknownEvent_9(Index As Integer)` (507) vs `Private Sub Cmd_UnknownEvent_9 'EB2264` (605) in the other builds; label loc_E64CBC→loc_E6584C; `MasterFormExit = arg_3AFF` placement. Semantically equivalent.
- root ↔ HMS2526: ratio 0.8751, 75 non-equal blocks — root is a PARTIAL logic-only extraction: the Enviro query (fdPostChrg 236) exists only as a commented-out line in root (live in FODER/HMS2526); root omits the `Call 0.Method_TopCtrl1_UnknownEvent_160` ADO-execute wrappers and several string-assembly statements.
- FODER uses a different decompile build throughout (Proc_96_4_1C1BDCC / MemVar_1F92xxxx family vs root/HMS2526's Proc_96_4_1C1E774 / MemVar_1F95xxxx family).
- SQL text is byte-identical across all three copies at identical line numbers: eligibility SELECT anchors 242/270/293/326/354 (plus 418/425 mFolioNoDocid variants).
- Plan §0.2 "diffs are decompiler label prefixes and SQL whitespace only" is WRONG: FODER differs in symbol-suffix families; root omits whole statement groups. Semantic equivalence holds; the SQL anchors are identical.
- Plan §13 copy-count "FD7013831C ×5, 609C2EA68C ×2, 63DCCDE890 ×1 (8 copies)" not reproduced: in-tree count is 6 .frm (FD7013831C ×3, 609C2EA68C ×2, 63DCCDE890 ×1).

## Item 3 — DocId build (Hotlib.bas 528–538): CORRECTED
Decompiler-degraded. Recoverable:
- 528 `var_D4 = "RC"`; 530 `var_13C = Space(5 - Len(var_D4))`; 532 `var_1B8 = Space(5 - Len(var_D0))`; 535 `var_208 = Space(8 - Len(CStr(CLng(var_140.Fields))))`
- var_D0 = Voucher_Prefix.Prefix (VP/VT lookup ~218–229, 505–516); var_140.Fields = Start_Srl_No (V_NO).
- 531/536/537 garbled (CVar/Fields-object misuse, stray quote, opaque Proc_6_45_EADFB8 at 531) — concatenation order unrecoverable.
- NO "D" literal exists in the build → Python `_make_rc_docid`'s `"D"` prefix can neither be confirmed nor denied from source. Plan's "(site + RC + prefix + vno)" is interpretation, not verified fact. QA-001 runtime trace remains the decider (plan §12.1 item 2 stays OPEN).

## Item 4 — PostNilLT source: PASS (Open Question §12.2 #3 RESOLVED)
- Read sites (both inside Proc_96_4_1C1E774): Hotlib.bas 473–490 (per tax row, after Proc_96_5_1367A44@459) and 745–758 (base row). Identical pattern: `DR ≠ 0` → `Update "DR", 0`; else if `Me.Recordset15.Fields.Item("PostNilLT").Value = "Yes"` → `Update`; else `CancelUpdate` (row dropped).
- PostNilLT is an ENVIRO TABLE COLUMN: `18_Database\columns_dictionary.txt:1032` → `Enviro|70|PostNilLT|varchar|3|1|0|('')`; DDL default `DF_Enviro_PostNilLT_1__72` (VijayData2627.sql). Not GetINI, not RoomCat, not ROOMOCC.
- Source recordset: fdPostChrg.frm:236 `Select * from Enviro where LogSite_Code='<LogSite>'` (same recordset that supplies RoomChrgPostingType at 238–241). The decompiler collapses all form recordsets to the symbolic name `Me.Recordset15`; field names disambiguate the underlying recordsets (eligibility / Enviro / TaxStru-condition).
- Additional gate found: fdPostChrg.frm:238–241 — `RoomChrgPostingType = "While Printing Bill"` → `Exit Sub` (room charges post at bill-printing, not check-out, when so configured). Plan does not mention this gate.
- The PostNilLT gate applies to BOTH the base room-charge row and each computed tax row (two identical sites).
- Python already models it: `core/enviro.py:90` `"PostNilLT": "yn3"`.

## Item 5 — tax dispatch Proc_96_5_1367A44 (Hotlib.bas 837–910): CORRECTED
- Nature ∈ {`On Base Amt` (841), `On Running Total` (864), **`On Prev. Tax Amt` (884)**, else default (904)} — plan §2.2.7 missed the third value.
- CondApp: `Rack Rate` (842) → Proc_96_6_13400A0 3-arg (845); `Room Tariff` (847) → 5-arg (849); `Declared Tariff` (851) → `IIf(RackRate >= RoomTarrif, RackRate, RoomTarrif)` (plan correct) → 4-arg (857); else default (859) → 5-arg.
- Proc_96_6_13400A0 (911–973): reads CompOperator (919), Limit (921…), Limit1 (953), Rate (922…) from the TaxStru condition recordset; dispatches on CompOperator (`<=`, `<`, `=`, `>`, `>=`, `Between`) testing the gate amount against Limit(/Limit1); on match `DR = Format(Amount × Rate / 100, "0.00")` (924/930/936/942/948/955); then TaxCondAmt = tested amount (963), BillAmount = Amount (964), TaxPer = Rate (965–966). (Signature at 911 shows only arg_C declared; arg_14/arg_18 are Dim'd — decompiler demoted extra params to locals.)

## Item 6 — eligibility anchors: CORRECTED
- SELECT anchors plan foderFD.txt 242/270/293/326/354 == FODER\fdPostChrg.frm 242/270/293/326/354 — VERIFIED byte-identical in all three copies.
- Duplicate-exclusion predicate `ROOMOCC.DOCID NOT IN (SELECT DISTINCT FOLIONODOCID FROM PAYCHARGE WHERE VTYPE='RC' AND VDATE=` occurs at exactly 4 sites — **245, 318, 344, 373** — in EVERY copy (identical line numbers). Plan's 5-site list including 261 is WRONG: line 261 is the mFolioNoDocid Paycharge sub-query (`FolionoDocid=… OR FolioNODocid=…`), a different predicate.
- Same 4 sites in the full decompiled HMS.bas at 157468/157541/157567/157596.

## Anchor verification (plan §2.2 claims)
- Hotlib.bas:114 `Public Sub Proc_96_4_1C1E774(arg_C, arg_10) '1C1E774` ✓
- Hotlib.bas:837 `Public Sub Proc_96_5_1367A44(arg_C, arg_10) '1367A44` ✓
- Hotlib.bas:911 `Public Sub Proc_96_6_13400A0(arg_C) '13400A0` ✓
- Hotlib.bas:9042 `Public Sub Proc_96_23_1C36494(arg_C, arg_10, arg_14, arg_18, arg_1C) '1C36494` ✓
- Hotlib.bas:9752 `Public Sub Proc_96_24_174D24C(arg_C, arg_10, arg_14, arg_18) '174D24C` ✓
- Hotlib.bas:786 PayCharge INSERT column list — VERIFIED exactly: `DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,CompCode,Comments,PayCode,BillAmount,AmtCr,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,RelatedFolioNo,RelatedFolioNoDocId,FolioNo,U_Name,U_EntDt,U_AE,TaxCondAmt,OnAmt,TaxPer,RestCode,MarkEntry,FolioNoDocid,LogSite_Code,PlanCode` ✓
- Hotlib.bas:803–816 Voucher_Prefix bump (re-select VP ordered `Date_From DESC`, read Start_Srl_No, `Update Voucher_Prefix Set Start_Srl_No=…`, CommitTrans@817) ✓
- Hotlib.bas:517–527 date guard (< today → Vtime="23:59"; = today → Vtime=Time; else MsgBox "Check Your SystemDate" + Exit Sub) ✓
- fdPostChrg.frm:236/238–241 Enviro query + RoomChrgPostingType gate ✓

## Old anchor → new anchor mapping
| Plan anchor | Verified location | Status |
|---|---|---|
| foderFD.txt 242/270/293/326/354 (SELECT anchors) | FODER\fdPostChrg.frm 242/270/293/326/354 (all copies) | VERIFIED |
| predicate sites 245/261/318/344/373 | 245/318/344/373 only (261 = mFolioNoDocid sub-query) | CORRECTED |
| Hotlib 114 / 528–538 / 745–758 / 837–910 / 9042 / 9752 | same lines, all verified | VERIFIED (528–538 degraded) |
| PostNilLT "read from where?" (§12.2 #3) | Enviro column; fdPostChrg 236; Hotlib 481–485, 752–755 | RESOLVED |
| Nature ∈ {On Base Amt, On Running Total} | + `On Prev. Tax Amt` @884 | CORRECTED |
| 8 fdPostChrg copies (§13) | 6 in-tree .frm (3 hash variants) | CORRECTED |

## Plan sections to amend
1. §0.2 — replace "decompiler label prefixes and SQL whitespace only" with: FODER = different decompile build (alternate symbol suffixes); root = partial logic-only extraction (Enviro query commented out, ADO-execute scaffolding omitted); SQL text byte-identical at anchors.
2. §2.1 (line 41) — predicate sites: 245, 318, 344, 373 (4 sites); remove 261.
3. §2.1 (line 45) — DocId: decompiler-degraded; only "RC" + pads (5/5/8) + prefix + vno recoverable; no "D" literal; QA-001 decider.
4. §2.2.3 / line 56 — PostNilLT = Enviro column (varchar(3), default ''), loaded fdPostChrg:236, read Hotlib 481–485 + 752–755; gate applies to base row AND each tax row; add RoomChrgPostingType="While Printing Bill" early-exit gate (fdPostChrg 238–241).
5. §2.2.7 (line 57) — add `On Prev. Tax Amt` to Nature set.
6. §12.1 #2 stays OPEN (QA-001); §12.2 #3 CLOSED (Enviro).
7. §13 — prior "PASSED" attestation superseded by this CORRECTED gate; copy-count claim corrected.

GATE: CORRECTED
