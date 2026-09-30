# 02_Main_Setup - VB6 logic

Evidence tags: `[VERIFIED-VB6]` decompiled source, `[VERIFIED-SQL]` database extracts,
`[VERIFIED-CONFIG]`, `[INFERRED]`, `[UNKNOWN]`. Line references are `EXTRAS.text` unless stated.

## 1. Menu construction

### `Proc_165_0_14C1708` (menu build) — `EXTRAS.text` L475664

```
Proc_165_0_14C1708(caption As String, moduleId As Long, menuType As Long,
                    parentGroup As String, icon As String, index, menuName As String, flag)
```

| `menuType` | Meaning | `&HC` count |
|---|---|---|
| `4` | module root | 1 |
| `3` | group header | 10 |
| `0` | screen (normal entry) | 105 |
| `2` | screen-variant / utility action | 8 |
| `1` | report (used by `&HB` Finance, **not** used by `&HC`) | **0** |

`124` calls, `113` leaves → `99` unique leaf captions. `[VERIFIED-VB6]`

### Registration arguments for module `&HC` (Main Setup)

Called only from `Proc_165_1_1EF3904` (L475818-L476998), whose guard is
`If (Len(MemVar_1F81228) = 1) Then Exit Sub`. Module `&HC` occupies L475938-L476204;
one stray call sits in `Proc_4_36_13480F8` at L11677 (`Member Select Category`).
`Proc_4_36_13480F8` (L11625-L11684) also emits strays for other modules
(`Expense Voucher` L11645, `Journal Books Log` L11681 for `&HB`). `[VERIFIED-VB6]`

Sample rows (full table in `screens/screens.md`):

```
475938: Proc_165_0_14C1708("Main Setup",            &HC, 4, vbNullString, vbNullString, 0,    "Mast",     1)
475940: Proc_165_0_14C1708("General Setup",          &HC, 3, vbNullString, vbNullString, &HFF, "GEN",      1)
475942: Proc_165_0_14C1708("Tax Master",             &HC, 0, "General Setup", vbNullString, 0,  "GENMas",   1)
476057: Proc_165_0_14C1708("Members Mgmt Setup",     &HC, 3, "Main Setup", vbNullString,    &HFF,"Mem",      1)
476204: Proc_165_0_14C1708("Unit Master",            &HC, 0, "Utility",    vbNullString,   &H21,"UTL",      1)
```

The 6th argument is a `&HFF`-sentinel for group headers and a 0-based slot index for leaves.
`index` values are **not** contiguous (gaps at Front Office 3/`&H12`/`&H13`/`&H16`, POS 0/1/5,
Members 7's sibling, Financial 6, Utility 2-7/`&H13`/`&H16`/`&H19`/`&H1F`, EPABX 0). `[VERIFIED-VB6]`

`Proc_165_1` has **no textual caller** anywhere in `EXTRAS.text` — the entire static registration
surface may be dead code reached only through an unresolved reference. `[UNKNOWN]`

## 2. Runtime menu assembly (the surface that actually renders)

| Step | Query | Location |
|---|---|---|
| Module tabs | `Select [Option] Name,OPT1 from MenuHelp Where Flag<>'V' And OPT1<>0 And OPT2=0 And OPT3=0 And OPT4=0 And UserName='…'` | `EXTRAS.text` L8279-L8280 |
| Sub-menu rows | `Select [Option] Name,Cast(Code As Varchar) CODE from MenuHelp Where Flag<>'V' … And UserName='…'` | L8392-L8393 |
| Row → control | rows loaded into `CmdSubMenu` with `Code` kept in `Tag` | L8401-L8411 |
| Click | `Select OPT1,OPT2,OPT3,OPT4,FLAG,CODE from MenuHelp Where Code=<n> And UserName='…'` | `CmdSubMenu_UnknownEvent_9` L4635 → L4644/L4647 |
| Hand-off | `Proc_165_2_1E3A588(CLng(Code), global_68)` | L4700 |
| Dispatch key | `Proc_165_3_EEA710(arg_C, var_130)` → `Select [Option] From MenuHelp Where Code=<n> AND UserName=… and compcode=…` | L477039, L480844 |

`menuHelp.OPT1=12` has **92 rows** for user SA: 10 structural + 82 leaves (75 unique). `[VERIFIED-SQL]`

## 3. Dispatcher — `Proc_165_2_1E3A588(arg_C, arg_10)` (L476999-L480833)

Per-click sequence:

| Line | Statement |
|---|---|
| L477022 | `On Error Resume Next` — **every** failure below is swallowed |
| L477023-L477025 | `Select * from Enviro` (single-row global config) into `var_B8` |
| L477031 | `MemVar_1F8120C = Proc_6_37_E618F4(var_B8.Fields("TouchScreen"))` |
| L477034 | `Open "C:\moduleFILE.TXT" For Append As 1 Len = &HFF` — hard-coded audit breadcrumb |
| L477039 | `var_94 = Trim(Proc_165_3_EEA710(arg_C, var_130))` = `MenuHelp.[Option]` |
| L477040-L477045 | breadcrumb `arg_10 = arg_10 & " > " & var_94` |
| L477046-L477047 | `SELECT Param_Str AS UPrivilege, Module_Name, OutletCode FROM menuHelp WHERE UserName=… AND CompCode=… AND Code=<arg_C>` |
| L477050 | `var_A8 = Proc_6_37_E618F4(Module_name, UPrivilege)` |
| L477052 | `var_AC = Proc_6_37_E618F4(OutletCode, …)` |
| L477055 | `var_188 = var_94` — the key every branch tests |

Two branch families, **both** must be captured:

1. `If (var_188 = "…") Then … GoTo loc_1E2A553 … End If` — L477056-L480197 (positive, the norm)
2. `Loop Until (var_188 = "…") 'do at: …` — L480204-L480800 (decompiler rendering of a
   `GoTo`-target block; semantically "key matched → run the statements that follow")

plus three **inverted** forms that behave differently: `If Not (var_188 = …)`, `Loop Until Not (var_188 = …)`
(see `screens/screens.md` §13a).

`553` distinct `var_188` guards exist in the range — the dispatcher serves **every** module, not just
Main Setup. A branch's presence therefore does not imply Main Setup ownership. `[VERIFIED-VB6]`

Selection is first-match-wins: each branch ends with `GoTo loc_1E2A553`, so a duplicate key later in
the routine is unreachable. `[VERIFIED-VB6]`

## 4. Lookup helpers

| Routine | Line | Role |
|---|---|---|
| `Proc_165_3_EEA710` | L480834 | caption lookup; `On Error Resume Next` at L480842; `Select [Option] From MenuHelp Where Code=<n> …` L480844 |
| `Proc_165_4_1028884` | L480853 | `MDIRestCode` provider for hall/banquet forms — called at L477831, L477858, L477864, L477932 with varying arity `[INFERRED]` |
| `Proc_165_5_1042728` | L480880 | `[UNKNOWN]` — no caller resolved |
| `Proc_165_6_1342C90` | L480907 | invoked as the whole body of `Backup Data` (L478204); internals `[UNKNOWN]` |
| `Proc_6_37_E618F4` | — | coerces `Enviro`/`menuHelp` field values; used for `TouchScreen`, `Module_name`, `OutletCode` |

`[VERIFIED-VB6]`

## 5. Main Setup dispatch branches (module `&HC`)

Full caption → dispatch line → form table is in `screens/screens.md` §1-§10. This section records the
**non-trivial** branches.

### 5.1 Outlet-based routing (`var_AC` = `MenuHelp.OutletCode`, set at L477052)

```
477828  Menu Category   If (var_AC = "BANQ") Or (var_AC = "ODC") -> New FrmHallItemCatMast  (MDIRestCode set)
                        Else                                      -> New FrmItemCatMast
477855  Menu Item       If Trim(var_AC) = "BANQ"                  -> New HallMenuItemEntry
                        ElseIf Trim(var_AC) = "ODC"               -> New HallMenuItemEntry
                        Else                                      -> New RsMenuItemEntry
477929  Item Group      If (var_AC = "BANQ") Or (var_AC = "ODC") -> New HallItemGroupMast
                        Else                                      -> New FrmItemGroupMastRaw (RestType="<>'Finish'")
```

POS `Menu Group` (L477840) is the mirror image: always `New FrmItemGroupMast` with `RestType="='Finish'"`.
`[VERIFIED-VB6]`

### 5.2 Module-based routing (`var_A8` = `Module_name`, set at L477050)

```
480499  Facility Master  Loop Until (var_188 = "Facility Master")
480500                   Loop Until (var_A8 = "MemMas")   -> New memFacilityMast
480503                   Loop Until (var_A8 = "MallMgmt") -> New FrmFacilityMast
```

A second `Facility Master` block at L480789 opens `FrmFacilityMast` unconditionally, but is
unreachable (the first match `GoTo`s out). `[VERIFIED-VB6]`

### 5.3 Environment-driven routing

```
477230  Plan Master   Select PlanMastType from Enviro where logsite_code='<site>'
                      If value = "Advanced" -> New FrmPackageMast (MyType="Plan")
                      Else                  -> New FrmPlanPackMast
```

`EXTRAS.text` L477230-L477251. `[VERIFIED-VB6]`

### 5.4 Privilege-gated actions

```
478049  POS Recycle    If (MemVar_1F810B8 = 1) -> New FrmPOSRecycleData
                       Else MsgBox "Only Supervisor is Authorised.", &H10   (L478055)
480429  Data Transfer  Loop Until (var_188 = "Data Transfer")
                       Loop Until (MemVar_1F810B8 >= 1) -> New Transfer     (L480433)
```

`MemVar_1F810B8` comes from the `Enviro` read at L477023-L477025. `[VERIFIED-VB6]`

### 5.5 Indirect (no `New <form>`) branches

| Caption | Line | Body |
|---|---|---|
| Call Type Master | L477998 | `Set var_90 = MemVar_1F8236C` → `CAPTION` → `Show` |
| Extension Master | L478004 | `Set var_90 = MemVar_1F82380` |
| Call Codes Master | L478010 | `Set var_90 = MemVar_1F82394` |
| FA Environment | L478155 | `Call 0.Method_arg_54 (var_94)` · `Call 0.Method_arg_2B0 (var_CC)` · `MemVar_1F81818 = Nothing` |
| Voucher Environment | L478161 | `Call 0.Method_arg_54 (var_94)` · `Call 0.Method_arg_2B0 (var_CC, var_F0)` · `MemVar_1F8182C = Nothing` |
| Backup Data | L478203 | `Proc_165_6_1342C90(var_CC)` only — no form |

`[VERIFIED-VB6]` The `0.Method_arg_*` calls are decompiler artefacts of an unresolved object method;
their target is `[UNKNOWN]`.

### 5.6 Empty / unreachable blocks

| Caption | Line | Body | Reachable? |
|---|---|---|---|
| `Year End Updation` (2nd) | L478170-L478172 | `GoTo loc_1E2A553` only | **no** — L477223 already matched |
| `Account Merging` (2nd) | L478207-L478209 | `GoTo loc_1E2A553` only | **no** — L478173 already matched |
| `Opening Balance Updation` | L478167-L478168 | `GoTo` only | no registration at all |
| `Update Database Nulls` | L478200-L4478201 | `GoTo` only | no registration at all |
| `Happy Hours [ Fee Items ]` | L480752 | `Loop Until Not (...)` with **no body** | **no** (§13a of `screens/screens.md`) |

`[VERIFIED-VB6]`

## 6. Duplicate-name guard

Almost every master runs a `Select Count(*) … Where … and Name=` before insert:

- `FrmBusinessSrc` — `Select Count(*) From BussSource Where (LOGSITE_CODE=… or ='HO') and Name=` (L23699/L23713) → `MsgBox "Duplicate Name"` (L23718)
- `FrmGuestStat` — same pattern on `GuestStat` (L24419/L24433)
- `FrmMarketSeg` — `MarketSeg` (L25170/L25184)
- `FrmTaxMast` — `Duplicate Name` L26469, `Duplicate Short Name` L26483
- `FrmParty` — `Duplicate A/c Name not Allowed` L21570/L21587, `A/c Code Already Exists` L20248
- `FrmTaxStruMast` — `Duplicate Name` (L31-region) `[VERIFIED-VB6]`

Codes are generated with
`Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From <table> WHERE SITE_CODE=…`
(e.g. `BussSource` L23519, `GuestStat` L24031, `MarketSeg` L25003) — a 2-char prefix + 3-digit
sequence scoped to `SITE_CODE`. `[VERIFIED-VB6]`

## 7. Multi-site guard

Reads are scoped `(LOGSITE_CODE='<site>' OR LOGSITE_CODE='HO')` throughout — e.g. `SubGroup` L20421,
`AcGroup` L20428, `City` L20434, `BussSource` L23180, `GuestStat` L23891. Deletes are additionally
scoped `And LogSite_Code='<site>'` (e.g. `DepartPay` L29383). `[VERIFIED-VB6]`

## 8. Referential / delete guards

| Message | Line(s) | Form |
|---|---|---|
| `Transactions Exist Can't Delete it` | L21288, L21298 | `FrmParty` (checks `Ledger` count for `SubCode` and `ContraSub`) |
| `You Can not Delete this A/c` | L22928 | `FrmParty` |
| `SYSTEM ENTRY CAN'T BE DELETED` | L25460, L27832 | `FrmTaxMast`, `FrmPayTypeMast` (`SysYN='Y'`) |
| `This call Type is present in Call Codes Master,you can't Delete it.` | L220157 | EPABX call-type form |
| `Duplicate Call Type` | L221066, L221085 | EPABX call-type form |
| `Duplicate Bar Code` | L613723, L613757 | `FrmItemMast` |
| `Pl. Configur Numbring System` | L22594, L22827 | `FrmParty` (missing `Voucher_Prefix`) |
| `Please fill a Valid EMail Id.` | L20348, L21551 | `FrmParty` |

`[VERIFIED-VB6]`

## 9. Child-row fan-out on save/delete

`FrmParty` (L19849-L22995) and `CompMast` (L36270-L41554) are not single-table masters:

- `FrmParty` inserts `SubGroup` (L22391), then `Ledger` opening rows for voucher type `F_AO`
  (L22652, L22877), bumping `Voucher_Prefix.Start_Srl_No` (L22605, L22835); delete cascades
  `Delete From Ledger Where V_Type='F_AO'` (L22793, L22953) then `Delete From SubGroup` (L22959).
- `CompMast` inserts into `SubGroup`-shaped target (L40646), `RoomDiscount` (L40878, L41286),
  `Comp_PlanDet` (L40899, L41306), `Comp_Inclusive` (L40917, L41323), writes `Ledger` opening rows
  (L41001, L41253) and `UPDATE LEDGER SET LEDGER.GROUPCODE=` (L40773); delete reverses all of them
  (L41122-L41132, L41169, L41395-L41412).

`[VERIFIED-VB6]`

## 10. Config writes

- `frmEnviro` (L139789-L145610) — `Insert Into Enviro(<~70 columns>)` L140624, `Update Enviro Set AdvanceAc=…` L141153, `Update Revmast Set SplitSeqNo=…` L141251, `Delete From RoundOffSetting Where ModuleName=` L141432. `[VERIFIED-VB6]`
- `frmPurEnviro`, `MemberEnviro` — per-module enviro mirrors (`frmPurEnviro` 889475-890269, `MemberEnviro` 852740-853259). `[VERIFIED-VB6]`
- `frmMod_Print` / `frmPrintModule` — `PrinterSetup` table (see `sql/sql_notes.md` §7: the table is **absent** from `columns_dictionary.txt`). `[VERIFIED-SQL]`
- `UserPermission` — `userpermission` 76 rows, PK `(CompCode, UserName, LogSite_Code)`. `[VERIFIED-SQL]`

## 11. Notable code smells carried into the rebuild

1. **Silent failure everywhere.** `On Error Resume Next` at L477022 plus first-match-wins means a
   mistyped `MenuHelp.[Option]` does nothing at all — no form, no message. `[VERIFIED-VB6]`
2. **Hard-coded path** `C:\moduleFILE.TXT` opened for append on **every** menu click (L477034). `[VERIFIED-VB6]`
3. **Inverted guards** for `Item List`, `Item Entry`, `Happy Hours [ Fee Items ]` — see
   `screens/screens.md` §13a. `[INFERRED]`
4. **Duplicate captions resolve to one form.** PayRoll `Category Master` (L476109) shares the key
   with Members `Category Master` (L476059) and therefore opens `MemCatMast`, not an HR category
   screen; the DB row was renamed `Category  Master` (two spaces) to work around it. `[INFERRED]`
5. **Two menu surfaces that disagree** by 3 rows one way and 27 the other. `[VERIFIED-SQL]`
6. **Group tree is broken in the builder**: 4 of 10 group headers have an empty parent, and two
   child group names (`Indoor Catering`, `Members Mgmt`) have no registered group at all. `[VERIFIED-VB6]`
7. **Dispatcher is a single 3,800-line routine** with 553 `var_188` comparisons, no `Select Case`,
   and duplicate keys whose second copy is dead. `[VERIFIED-VB6]`
8. **`Enviro` is read once per click** (`Select * from Enviro`, L477023) even for menus that never
   use it. `[VERIFIED-VB6]`
9. **SQL is assembled by string concatenation** everywhere — no parameterisation, no escaping.
   `[VERIFIED-VB6]`
10. **EPABX forms arrive as module-level variables** (`MemVar_1F8236C`/`1F82380`/`1F82394`) rather
    than `New`, so their lifetime and identity are `[UNKNOWN]`. `[UNKNOWN]`
