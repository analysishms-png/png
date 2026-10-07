# CSEH Demo — VB6 IDE Setup Steps

Is demo mein 2 nayi files hain jo `Project.vbp` mein add karni hain:

| File | Kya hai |
|---|---|
| `modLog.bas` | Trace/logging module (`EnterMethod`/`ExitMethod`/`LogMsg`/`TraceMethod`) — vb6-trace-pattern skill ka implementation |
| `CsehDemoForm.frm` | Demo form — CSEH `MsgBox` + `ErrRaise` styles ke live examples |

## Steps (VB6 IDE mein)

1. **Backup lo** — `Project.vbp` ki ek copy kahin rakh do (ya poora folder copy kar lo).
2. **Project kholo** — VB6 IDE mein `Project.vbp` open karo.
   - Note: is project ki zyada tar existing files decompiled hain aur IDE mein load nahi hongi — error dialogs aayenge. Har "Remove" / skip ka option choose karte jao. Ye normal hai; decompiled files ke bina bhi project shell khul jayega.
3. **Module add karo** — `Project > Add Module > Existing` → `modLog.bas` select karo.
   - Agar "Add this module to SourceSafe?" pooche to **No**.
4. **Form add karo** — `Project > Add Form > Existing` → `CsehDemoForm.frm` select karo.
   - Agar "Name is already in use" ya duplicate form error aaye: `Project > Components/Remove` se purana conflicting form hata ke dobara try karo.
5. **Startup set karo (temporary)** — `Project > Project Properties > General` → Startup Object: abhi `Sub Main` hai. Demo test karne ke liye `Sub Main` wale module mein (jahan bhi `Main()` hai) ye line add karo:
   ```vb
   CsehDemoForm.Show
   ```
   Test ke baad ye line hata dena.
6. **Run karo (F5)** — IDE mein chalega. `fg_InIDE()` True detect hoga, to logging automatically ON ho jayegi.
7. **Test buttons:**
   - **"Test Divide By Zero"** → `DivideNumbers(100, 0)` → `vbObjectError + 101` raise hoga → error dialog: `Division by zero is not allowed ... in HMS.CsehDemoForm.cmdDivideByZero_Click at line 105`
   - **"Test ErrRaise"** → `DivideNumbers(100, 5)` → success dialog: `100 / 5 = 20`
8. **Log file check karo** — `App.Path\log\app-YYYY-MM-DD.txt` kholo. Isme entries aani chahiye:
   ```
   14:32:01 < Enter: CsehDemoForm::cmdDivideByZero_Click >
   14:32:01 < Enter: CsehDemoForm::DivideNumbers >
   14:32:01 < Exit: CsehDemoForm::DivideNumbers >
   ...
   ```
9. **Production mode simulate karna ho to** — IDE band karke compiled EXE ke folder mein `debug.txt` naam ki empty file bana do; `LogMsg` uski presence se logging ON karta hai. File delete karte ho to logging OFF (zero overhead).

## Compile note

- `modLog.bas` **koi external reference nahi maangta** (no Scripting Runtime, no WMI references) — native VB6 file I/O use hota hai, to project properties mein reference change karne ki zaroorat nahi.
- Files CRLF + Windows-1252 safe hain; `.frx` ko touch nahi kiya gaya (vb6-guidelines rule).
