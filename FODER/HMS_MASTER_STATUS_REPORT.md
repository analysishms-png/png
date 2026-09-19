# HMS VB6 Project — Master Status Report (Phase 1-14)

Date: 15/Sep/2026 · Evidence-based · Originals untouched · Working copy: `repaired/`

---

## A. PROJECT STATUS

| Capability | Status | Classification | Detail |
|---|---|---|---|
| Openable in VB6 IDE | ✅ YES (repaired project) | **CONFIRMED** | `repaired/Project_repaired.vbp` — real members, form startup |
| Original Project.vbp openable | ❌ NO | **CONFIRMED** | 0 member lines, `[VB Decompiler]` section, SourceSafe remnants |
| Compileable (minimal repaired project) | ✅ EXPECTED | **LIKELY** | Sirf native + 2 registered OCX; F5 pe test karna baaki hai |
| Runnable (minimal flow) | ✅ EXPECTED | **LIKELY** | Login → MDI shell chain working code hai |
| Full 494-file project compile | ❌ NOT YET | **CONFIRMED** | 194 `Result`-keyword blockers + more; see RESULT_BLOCKERS_REPORT.md |
| EXE buildable | ⏳ After compile | — | Level-8 milestone |
| Database connectable | ❌ BLOCKED | **CONFIRMED** | `HMS.mdb` missing from project folder (see D7) |

## B. FILES

- **Forms:** 321 `.frm` (320 decompiled bodies; 136 `.frx` binaries; ~184 forms frx ke bina)
- **Modules:** 31 `.bas` (27 decompiled, 4 clean hand-written + 1 new modLog)
- **Classes:** 4 `.cls` (decompiled: CGZipFiles, CGUnzipFiles, cJSONScript, cStringBuilder)
- **Resources:** 0 `.res`; **Database:** 0 `.mdb` in folder
- **Master reference:** `HMS.bas` (53 MB full-EXE listing, original proc names preserved — 14,540 Sub / 408 Function)
- Project tree full detail: pehle audit report mein (file-type counts + purpose per module group: Banq/Code/FaLib/FaVoucher = accounts; POS/SaleBill/KOT = restaurant; TelCall/Epabx = telephony; ModuleSmartCard/DoorLock = room locks; SMSModule/MobWebAPI = messaging)

## C. DEPENDENCIES (verified on THIS machine)

| Dependency | Type | Used in | Status on this PC |
|---|---|---|---|
| MSCOMCTL.OCX (TreeView/ListView) | OCX 32-bit | MDIForm1 + ~200 forms | ✅ SysWOW64, 9-Dec-2015 build |
| MSHFLXGD.OCX (MSHFlexGrid) | OCX 32-bit | MDIForm1 + grids | ✅ SysWOW64, 9-Mar-2004 build |
| msjet40.dll + msjetoledb40.dll (Jet 4.0) | DB provider 32-bit | DB access (FaLib.bas:550) | ✅ SysWOW64 |
| stdole2.tlb | TLB | all | ✅ |
| btlock57L.DLL | 32-bit vendor DLL | Module1.bas (11 declares), door-lock | ❌ MISSING — hotel lock vendor se milegi |
| zip32.dll / unzip32.dll | 32-bit DLL | Module1.bas | ❌ Missing, Info-ZIP official se |
| Crystal Reports (CRViewer + CrystalRuntime.Application) | COM/ActiveX | FaRepView.frm + 1 CreateObject | ❌ Likely NOT installed — Crystal Reports designer/runtime chahiye (vendor license) |
| Excel.Application (late-bound) | COM | 4 uses | Excel installed ho to chalega |
| WinHttp.WinHttpRequest.5.1, MSXML2.ServerXMLHTTP, Scripting.FileSystemObject, InternetExplorer.Application | COM (Windows built-in) | HTTP/SMS/XML/file | ✅ Windows 11 built-in |
| ADODB (MDAC/Windows DAC) | COM | ADO everywhere | ✅ Windows built-in |

**Registration commands (sirf zaroorat pade to):**
```
C:\Windows\SysWOW64\regsvr32.exe C:\Windows\SysWOW64\MSCOMCTL.OCX
C:\Windows\SysWOW64\regsvr32.exe C:\Windows\SysWOW64\MSHFLXGD.OCX
```
32-bit OCX = hamesha SysWOW64 wala 32-bit regsvr32 (System32 wala 64-bit regsvr32 32-bit OCX register NAHI kar sakta). Aapke PC pe dono already registered hain (VB6 installed hai), to abhi command ki zaroorat nahi.

**Official sources (web research):**
1. VB6 on Windows support policy: https://learn.microsoft.com/en-us/previous-versions/visualstudio/visual-basic-6/visual-basic-6-support-policy — VB6 runtime Windows 11 pe supported (32-bit only)
2. MSCOMCTL security update: https://www.microsoft.com/en-us/download/details.aspx?id=10019
3. VB6 SP6 runtime extended files cumulative update: https://support.microsoft.com (KB290887f)
4. VB6 IDE install on Win11: legacy VS6 installer + SP6 (Reddit/MS Q&A community-confirmed; IDE ke liye licensed VS6 media chahiye — aapke paas IDE already installed hai)

## D. FIXES MADE (repaired/ folder — originals untouched)

| FILE | CHANGE | REASON |
|---|---|---|
| Project_repaired.vbp | NEW: members (3 forms + 1 module), Startup=frmPassword, decompiler/SourceSafe sections removed, stdole2 path fixed, 2 Object= OCX lines | Original VBP had 0 members — project khali dikhta tha |
| frmPassword.frm | Repaired: `VB.` control prefixes, valid VB6 code, CSEH + logging; logic preserved (password check → MDIForm1.Show) | Decompiled body invalid tha (`Me.Global.Unload`, `Form.Show var_C8, var_EC`) |
| MDIForm1.frm | Minimal shell: PictShortCuts/TreeView1/ListView1/mnuGrid preserved; BtnEnh + images excluded; File/Tools/Help menus added; CSEH code | Original 11,618-line decompiled file load nahi ho sakti |
| CsehDemoForm.frm | Added as test form + Tools menu se launch | CSEH patterns live test |
| modLog.bas | NEW: trace/logging module (EnterMethod/ExitMethod/LogMsg/TraceMethod) | CSEH pattern ka dependency; no external refs |
| RESULT_BLOCKERS_REPORT.md | NEW: 194 Result-keyword blockers ki per-file breakdown | Next repair phase ka roadmap |

## E. REMAINING ERRORS (blockers to full build)

1. **194 `Result ... End Sub`** — 155 var-return + 132 const-return Functions reconstruct hongi (HMS.bas listing se original signatures)
2. **`Dim Me As` / `Proc_xxx` names / `loc_` labels** — har decompiled file mein, compile pe error denge
3. **Sub→Function conversions ke baad caller updates** — har converted proc ke call sites
4. **4 .cls files** — Property Get bodies `End Sub` wali; repair ya known-original se replace (CGZip classes publicly available hain)
5. **Database:** `HMS.mdb` project folder mein NAHI hai — original hotel/server se lena hoga (password-protected hai, Jet OLEDB:Database Password= syntax evidence hai). **Ye information source files se confirm nahi ho rahi** ki DB kahan hai
6. **btlock57L.DLL** — hotel door-lock vendor
7. **Crystal Reports runtime** — reports ke liye chahiye
8. **BtnEnh / MainCtrl / DG-grids OCX** — exact identities IDE load pe reveal hongi

## F. EXACT INSTALLATION COMMANDS

Abhi kuch install/register karne ki zaroorat NAHI (sab installed). Fresh machine pe:
```
1. VB6 IDE + SP6 (licensed Microsoft media)
2. https://www.microsoft.com/en-us/download/details.aspx?id=10019  (Common Controls)
3. C:\Windows\SysWOW64\regsvr32.exe C:\Windows\SysWOW64\MSCOMCTL.OCX
4. C:\Windows\SysWOW64\regsvr32.exe C:\Windows\SysWOW64\MSHFLXGD.OCX
5. zip32/unzip32: info-zip.org se
6. btlock57L.DLL + Crystal Reports: vendor/hotel se
```

## G. EXACT VB6 SETTINGS

- `Project > Properties > General > Startup Object:` **frmPassword** (already set in VBP)
- `CompatibleMode="0"` (original setting preserved)
- Error trapping: Tools > Options > General > **Break on Unhandled Errors** (default)

## H. EXACT BUILD STEPS

```
STEP 1  Backup: poore folder ki copy banao
STEP 2  VB6 IDE kholo (already installed)
STEP 3  (skip - OCX registered)
STEP 4  File > Open Project > repaired/Project_repaired.vbp
STEP 5  Project > References: agar "MISSING:" dikhe to us entry ka checkbox uncheck karo, OK, project save karo, mujhe batao
STEP 6  Debug > Compile (ya Ctrl+F5) — minimal project clean compile hona chahiye
STEP 7  Agar error aaye: exact message mujhe bhejo
STEP 8  F5 — login (India12) → MDI shell
STEP 9  Test: Tools > CSEH Demo (dono buttons), File > Exit
STEP 10 File > Make HMS_repaired.exe...
STEP 11 Clean machine pe EXE test (VB6 runtime + 2 OCX registered hone chahiye)
```

## I. FINAL TEST CHECKLIST

- [ ] Project opens with 4 members visible, no SourceSafe popup
- [ ] Ctrl+F5 compile clean
- [ ] F5: login form appears, India12 works, wrong password rejected
- [ ] MDI shell: black panel + TreeView 4 nodes + grid visible
- [ ] Tools > CSEH Demo: both buttons produce expected dialogs
- [ ] log/app-YYYY-MM-DD.txt has Enter/Exit entries
- [ ] Make EXE succeeds
- [ ] EXE runs standalone (clean test)

## J. WEB RESEARCH SOURCES

1. Microsoft — VB6 support statement on Windows (runtime supported on Win11, 32-bit): learn.microsoft.com/previous-versions/visualstudio/visual-basic-6/visual-basic-6-support-policy
2. Microsoft Download — VB6 Common Controls (mscomctl.ocx update): microsoft.com/en-us/download/details.aspx?id=10019
3. Microsoft Support — VB6 SP6 Runtime Extended Files cumulative rollup: support.microsoft.com (KB290887f family)
4. Microsoft Download — VB6 SP6 Security update: microsoft.com/en-us/download/details.aspx?id=29326

---

## NEXT ACTIONS (priority order)

1. **F5 test the repaired project** (STEP 4-9 upar) — result mujhe batao
2. **HMS.mdb dhundo** (original hotel/backup/server se) — DB ke bina app data ke saath nahi chalega
3. **15 .frm Result-blockers repair** (quick wins — RESULT_BLOCKERS_REPORT.md section 5)
4. **MainLib/TopBarLib/ModuleAdd repair** via HMS.bas listing signatures
5. **ModuleSmartCard.bas (107)** — pilot 10-20, phir bulk
6. **BtnEnh OCX identify** — IDE missing-control errors se exact GUID/ProgID milenge, phir hotel/vendor se OCX mangwana
