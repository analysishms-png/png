# HMS.BAS — Deep Logic Analysis (Spec §9)

Source: `HMS.bas` (54,005,154 B, **995,855 lines**) — VB Decompiler v10.0.3733 listing
(`Application: …\HMS.exe`, **P-Code**, compiler 9782).
`EXTRAS.text` = same listing minus the 4-line decompiler header (54,005,006 B) — line numbers
in `HMS.bas` are shifted **+4** vs `EXTRAS.text` for early lines only where the header applies;
all references below are **HMS.bas line numbers**.

Evidence: `[VERIFIED-VB6]` unless tagged otherwise.

**Listing statistics**

| Metric | Count |
|---|---|
| Lines | 995,855 |
| `'Object:` sections (forms/modules) | 351 |
| Named `Sub/Function` (real names) | 11,084 |
| Decompiler-named `Proc_*` (5,330 Public + 9,618 Private) | 14,948 |
| Distinct session vars `MemVar_*` | 163 |
| Distinct shared vars `global_*` | 200 |
| `.Execute` call sites | 12,379 |
| `BeginTrans` / `CommitTrans` / `RollbackTrans` | 589 / 591 / 514 |
| `On Error GoTo` / `On Error Resume Next` | 3,929 / 88 |
| `Global` / `Const` declarations | **0 / 0** (P-Code decompiler inlines them) |
| Win32 `Declare Function/Sub` | 0 (late-bound COM only) |

---

## 1. Global variables

The decompiler emits no `Global` statements; shared state appears as `global_<n>` (200 distinct)
plus module-level `MemVar_<addr>` (163). Top shared vars `[VERIFIED-VB6]`:

| Var | Refs | Role |
|---|---|---|
| `global_52` | 4,157 | **shared Crystal report viewer host** (`rFomRepView` instance; 527 `.GRepFormName =` assignments) |
| `global_56` / `global_60` / `global_64` / `global_72` | 1,634 / 1,597 / 1,353 / 1,078 | shared state (colour/style/lookup holders, `[INFERRED]` per usage sites) |
| `global_116`, `global_120` | — | error/context values passed to `Proc_6_59` handler + `Proc_128_*` (e.g. L418153–418173) |

## 2. Constants

No `Const` declarations survive decompilation — literals are inlined: `&H1B` (password shift),
`&H10` (ADO `adXactReadCommitted` isolation), `&HFF` (null flag), `"HO"` (head-office site code),
`"India12"`, `"aaster"`, `"dd/mmm/yyyy"` (date format), `"BANQ"` (MDI rest code suffix).
Full constant table would require P-Code decode → **[UNKNOWN]** at declaration level,
values recovered inline instead.

## 3. Connection strings  (L9870–L9886)

```
Branch A (MemVar_1F810E0 = "Yes"):
  "Provider=SQLNCLI.1;Password=" & MemVar_1F810D4 & ";Persist Security Info=True;
   User ID=" & MemVar_1F810D8 & ";Initial Catalog=" & MemVar_1F81010 &
   ";Data Source=" & MemVar_1F81098
Branch B (else):
  "Provider=MSDataShape;Data Provider=SQLOLEDB.1;Persist Security Info=False;
   User ID=" & … & ";Initial Catalog=" & … & ";pwd=" & MemVar_1F810D4
Sidecar (Access):
  "Provider=MSDataShape;Data Provider=Microsoft.Jet.OLEDB.4.0;…;Data Source=" & MemVar_1F811D4
```

- 39 connection-string sites total (incl. `CentralData_Path` variants L10634–L10698,
  `SaleTransfer.mdb` Jet files L71371/L75590).
- Connection settings: `CommandTimeout = 0` (infinite), `IsolationLevel = &H10`
  (read-committed), `CursorLocation = 3` (adUseClient).
- **Credentials live in session MemVars** (`1F810D4` pwd / `1F810D8` uid / `1F81098` server /
  `1F81010` catalog), defaulting to SQL login **`sa`** when blank (L10981, L10985:
  `MemVar_1F810D8 = "sa"`). No values dumped here (spec §4/§26 — values never printed).

## 4. Database functions

| Proc | Refs | Role | Evidence |
|---|---|---|---|
| `Proc_6_16_EA44E0` | 3,286 | fetch recordset for a SQL string + site (e.g. L2824: `Select * From Enviro WHERE LOGSITE_CODE=…`) | `[VERIFIED-VB6]` |
| `Proc_6_44_EA72C4` | 10,532 | site-scoped SQL value/filter builder (arg1 = `MemVar_1F81078`) | `[VERIFIED-VB6]` |
| `Proc_6_6_F208E4` | 5,388 | WHERE/field-clause builder (`Proc_6_6_F208E4(rs, value, "End_dt>", 0, 1, …)` L10604) | `[VERIFIED-VB6]` |
| `Proc_6_143_1008F3C` | — | **ADD COLUMN DDL** (`… "UserPermission", "CancelReservation", "varchar", 3 …` L264825) | schema self-provisioning |
| `Proc_6_144_E654D4` | — | **CREATE TABLE DDL** (`("UserPermission", 0,0,0,0)` L264823) | |
| `Proc_6_145_113397C` | — | **ADD PRIMARY KEY DDL** (`PK_UserPermission` on CompCode,UserName,LogSite_Code L264838) | |
| `Proc_6_100_DF71C0` | 2 | date-range validator (L10744) | |
| raw `.Execute` | 12,379 | all SQL passes through connection `.Execute` (late-bound `unk_5xxxxx`/`Connection15`) | |

Startup DB load: `select * from usermast order by user_name` (L9885).

## 5. Common / utility functions

| Proc | Refs | Purpose (from call-site shapes) |
|---|---|---|
| `Proc_6_37_E618F4` | **19,613** | universal value normaliser: `CStr/Trim/Null→""` (used inside connection strings, gates, field writes) |
| `Proc_6_44_EA72C4` | 10,532 | site filter builder (§4) |
| `Proc_6_6_F208E4` | 5,388 | clause builder (§4) |
| `Proc_6_16_EA44E0` | 3,286 | recordset fetch (§4) |
| `Proc_6_59_E5CDB4` | 2,105 | **central error handler** (§13) |
| `Proc_156_4_EBFF14` | — | date push (called with business date + system date, L10757) |
| `RstEnviroGet` / `RstEnviroPut` / `RstEnviroSet` | 3 named | Enviro config accessors (L543862–L543870) |
| `ConnectCmd_Click` / `DisconnectCmd_Click` | 4 | manual DB connect/disconnect UI (L369848, L464343) |
| `Proc_96_19_EEE9F4` | 4 | **password decoder** (§10) |

## 6. User / session variables

| MemVar | Refs | Meaning | Set at |
|---|---|---|---|
| `MemVar_1F81078` | 6,966 | **current LogSite_Code** (filters every query) | L10666, L283365 (`TXT_SITE.BoundText`) |
| `MemVar_1F81070` | 3,449 | company / home-office code; default `"HO"` (L9733); `= "HO"` branch in 8+ sites | L9797 |
| `MemVar_1F81044` | 1,815 | session context (user/profile holder, `[INFERRED]`) | — |
| `MemVar_1F810D8` | — | **SQL User ID** (default `sa`) | L9845, L10978–10985 |
| `MemVar_1F810D4` | — | **SQL Password** | L9849, L10960 |
| `MemVar_1F81098` | — | server / data source (truncated at L10962) | L9756 |
| `MemVar_1F81010` | — | initial catalog (database name) | L9791 |
| `MemVar_1F810E0` | — | connection-mode flag (`"Yes"` → SQLNCLI direct) | — |
| `MemVar_1F810C8` | 1,457 | session context `[INFERRED]` | — |
| `MemVar_1F811D4` | — | Jet sidecar path (`SaleTransfer.mdb`) | L9883 |

## 7. Property variables

`global_*` (200 distinct) serve as the app's property/global pool — decompiler-renamed from
P-Code globals. Confirmed roles: `global_52` = report host (§1). Others carry UI state
(colours `global_116/120`, grid/shortcut state) `[INFERRED]` from assignment sites.

## 8. Business date

- Held in **`MemVar_1F810EC As Double`** (declared L3200, L10460; assigned
  `CDate(...)` L10566, `Format(…,"dd/mmm/yyyy")` L10740; compared with system date
  `If (MemVar_1F810FC < MemVar_1F810EC)` L10753 → business date must not be behind system date).
- Persisted in **`Enviro.NCUR`**: read via `Select NCUR from enviro where LogSite_Code='…'`
  (66 sites: L62389, L69632, L89348, L91600, L113571, L113808, L113941, L131795, L149012, L155304…),
  advanced only by Night Audit (module 10).
- Displayed as `"S/w Dt.:" & Ncur` (L7452).
- `Proc_156_4_EBFF14(businessDate, systemDate, …)` (L10757) = date-position reconciliation.

## 9. Financial date

- **Year End** flow: forms `frmYearEnd` (object present) + menu `Year End Updation`
  (dispatch L477223 → `frmYearEnd`; second arm L478170 → `AccountMerg` — duplicate caption
  with different targets `[VERIFIED-VB6]`).
- `FinYear` (8 refs), `YearEnd`/`Year End` (10 refs), `Start_dt`/`End_dt` (17 refs) drive
  period bounds — used by `Proc_6_6_F208E4(rs, value, "End_dt>", …)` clause building (L10604).
- Exact financial-year start (Apr vs Jan): **[UNKNOWN]** — requires `Enviro`/config value read
  on a test DB (config field, not hardcoded).

## 10. Login logic

| Site | Behaviour |
|---|---|
| `frmPassword` object (login password form) | `txtPassword_Validate` L190339 / L367800 |
| **Master-password bypass** L190353 | `If (Trim(txtPassword) = "aaster") Or (Proc_96_19_EEE9F4(storedSundryPwd, Trim(txtPassword)))` → enables `CmdPwd` → **hardcoded literal accepts regardless of stored value** `[VERIFIED-VB6]` — **bug, §26** |
| `Enviro.SundryPassword` | read L190345; written via `Update Enviro set SundryPassword='…'` L190439 |
| **Banquet login hardcode** `CmdLogin_Click` L418131 | `var_C8 = "India12"`; `If UCase(Trim(txtPassword)) = "India12"` → `MDIRestCode = site & "BANQ"`, show form, else unload → **hardcoded second credential** `[VERIFIED-VB6]` — **bug, §26** |
| User list load | `select * from usermast order by user_name` (L9885, 37 `usermast` refs) |
| Default SQL user | `sa` when blank (L10981/10985) |

Password codec `Proc_96_19_EEE9F4` (L231657): seed = `Asc(Left(s,1)) - &H1B`;
each char = `Chr(Asc(c) - &H1B - seed)` → **reversible Caesar-style obfuscation, not encryption**
`[VERIFIED-VB6]`. (Actual DB credentials **not printed** anywhere in this workspace — spec §4.)

## 11. Permission logic

Two layers:

1. **Menu visibility** — `MenuHelp` rows filtered by `UserName`+`CompCode`
   (root query `EXTRAS.text` L8279; 440 rows for SA; per-user diffs:
   `MenuHelp_Deepak_tree.txt`, `Deepak_missing_from_SA.txt`).
2. **Action flags** — table `UserPermission` (PK `CompCode+UserName+LogSite_Code`,
   schema built in-code by `Proc_6_143/144/145` L264823–L264903). Columns discovered
   `[VERIFIED-VB6]`: `EditItemInKOT`, `FreeItemAllow`, `CancelGuestBill`, `ChangeRoomDtl`,
   `DeleteGuestCharges`, `ChangeGuestCharges`, `FOMDiscountAllowUpto`, `POSDiscountAllowUpto`,
   `CancelReservation`, `FacilityBilling`, `CompCode`, `UserName`, `LogSite_Code`.
   Runtime checks: `SELECT DeleteGuestCharges FROM UserPermission WHERE …` (L158198, L160014),
   `ChangeGuestCharges` (L161036), `ChangeRoomDtl` (L149004), `CancelGuestBill` (L133135),
   `EditItemInKOT,FreeItemAllow` (L63271). 60 permission refs total.

## 12. Report logic

- Single shared viewer: **`global_52`** (`rFomRepView`), configured by
  `global_52.GRepFormName = "<rpt>"` — **527 assignments, 232 distinct report names**
  (EpabxCallRep, NightAuditReport, GuestChgJournalLog, GuestLedger, PurchaseReg, PurchaseSumm,
  CashCreditPurch, StockRegStore, StockSummStore, StockINHand, KitchenStkRep, …).
- Module-specific viewers: `rPOSRepView`, `rInventRepView`, `rRepHousePreview`, `rHallRepView`,
  `FaReports`, `FaMagic`, `rRepTelPreview`.
- `.rpt` binaries in `Reports/` (371–524 by count basis); text extracts in `REPORTS_TXT/` (233).

## 13. Night audit functions

| Proc | Line | Role |
|---|---|---|
| `NightAuditLR_Click` | L35 | menu → audit entry |
| `NightAuditoR_Click` | L61 | pre-gate `Select KOTAtNightAudit,POSBillAtNightAudit from Enviro…` (L90), re-audit/preview path |
| `NightAuditRR_Click` | L430 | reverse/related entry |
| `NightAuditGSTR_Click` | L3897 | GST entry from NA strip |
| `NightAuditReport` / `NightAuditReportI` | L673094 / L673251 | report bodies |
| `mdlNightAudit` core | `EXTRAS.text` ~L228700–228950 | phase A–D posting (full SQL: `10_Night_Audit/NIGHT_AUDIT_FLOW.md`) |

## 14. Transaction functions

- `BeginTrans` 589 / `CommitTrans` 591 / `RollbackTrans` 514 sites — e.g.
  `Me.Connection15.BeginTrans var_1B0` (L6245), `unk_5C7920.BeginTrans` (L6453…).
- Commit > Begin (591 > 589) and Rollback 514 → error paths roll back frequently
  (ratio consistent with per-save transaction discipline) `[INFERRED]`.
- Night Audit phases A–D documented in module 10 (intermediate commit after phase A).

## 15. Error handling

- **Central handler `Proc_6_59_E5CDB4`** (def L14533): `Set var_88 = Err()`; if
  `var_8C <> 0` → `Proc_6_151_1070A58(0)` (cleanup/rollback helper) then exit.
  Target of **1,809 `' Referenced from:` error labels** (2,105 refs) — the app-wide
  `On Error GoTo` landing pad `[VERIFIED-VB6]`.
- `On Error GoTo` 3,929 sites; `On Error Resume Next` only 88 (deliberate suppression rare).
- Secondary handler targets: `Proc_6_37_E618F4` (17), `Proc_6_128_12AD85C` (13),
  `Proc_6_51_EA82B4` (4).
- Night Audit failure → MsgBox + rollback, business date preserved (module 10 §5E).

## 16. Utility / misc

- `ChkKeyboard_UnknownEvent_9()` called right after connection open (L9878) — input/locale setup `[INFERRED]`.
- Date format `"dd/mmm/yyyy"` fixed (L10740).
- Head-office mode: `MemVar_1F81070 = "HO"` or `MemVar_1F81078 = "HO"` branches (L10759, L22159, L22764, L40320, L123520…) — cross-site visibility switch.
- Zip/unzip objects `CGZipFiles`/`CGUnzipFiles` (backup/export helpers).
- Socket control `sckControlPanel_*` (L3191–L3256) — control-panel/network channel `[INFERRED]`.

## Cross-refs

- Menu surfaces & dispatch: `MENU_INVENTORY.md`, `MENUHELP_PER_USER_ANALYSIS.md`, per-module `screens/screens.md`.
- SQL statements: per-module `sql/queries.sql`; DB dictionary: `18_Database/`.
- Bugs: hardcoded `"aaster"` (L190353) and `"India12"` (L418134) credentials,
  `sa` default, Caesar password codec → recorded in module Known Issues + `21_Testing/`.
