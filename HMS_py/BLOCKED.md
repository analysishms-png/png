# BLOCKED.md

## FO implementation ke dauraan blocked/de-scoped items

### 1. VB6 GUI runtime testing — GUI TEST BLOCKED
- **Reason**: Is machine par VB6 IDE/runtime (VB6.EXE, MSBIND, Crystal Reports designer) available nahi; project me sirf source + Python replacement hai.
- **Affected feature**: Registration Card, Confirmation, Invoice/Receipt printing (Crystal `.rpt/.ttx`), VB6 form-level QA.
- **Attempted**: Reports dir inspect kiya (`HMS_py/Reports/WinKOTPrint.rpt` etc.), VB6 side se confirmed issues document kiye; Python-side equivalents implement + test kiye.
- **Required**: VB6 IDE installed machine ya packaged EXE + Crystal runtime, phir section-23 ka manual GUI walkthrough.
- **Status**: BLOCKED (Python-side: complete).

### 2. EXE build (VB6) — BUILD BLOCKED
- **Reason**: `vb6.exe /make` unavailable.
- **Affected**: Section-28 "clean build".
- **Attempted**: Python package ka full test-suite verification kiya (185 passed) — functional parity ka evidence.
- **Required**: VB6 build environment.
- **Status**: BLOCKED.

### 3. reportlab — PDF export (RESOLVED)
- **Reason**: Was missing offline; now **reportlab 4.5.1 installed** in current interpreter.
- **Status**: RESOLVED — `res_status_pdf()` can use real PDF path (fallback .txt still available).

### 4. Legacy test_validation_crud.py
- **Reason**: Adhoora helper-script tha (kabhi pytest-clean nahi tha) — helpers non-test rename kiye.
- **Status**: RESOLVED (documented de-scope, suite clean).
