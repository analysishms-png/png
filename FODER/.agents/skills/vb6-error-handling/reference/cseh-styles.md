# CSEH Style Catalog

This is a catalog of CSEH (Code Style for Error Handler) variants encountered
in VB6 codebases. New code should default to `ErrRaise`; the others are
documented so you can recognize and preserve them in existing code.

## ErrRaise (recommended default)

**Marker:** `'CSEH: ErrRaise`

**Behavior:** Captures `Err.Number`/`Err.Description` into locals (before any
statement that would reset `Err`), cleans up, then re-raises via `Err.Raise`
preserving the original error number with a qualified source string.
(`vbObjectError + <offset>` is used only when the procedure *originates* an
error itself.)

**Use for:** Utility functions, library routines, data access, any procedure
called by other code.

**Error handler:**

```vb
FunctionName_Err:
    ' Capture Err FIRST — the cleanup and ExitMethod below reset the Err object
    Dim lFunctionName_ErrNum As Long
    Dim sFunctionName_Err    As String
    lFunctionName_ErrNum = Err.Number
    sFunctionName_Err = "Error: " & Err.Number & " - " & Err.Description & " (" & Erl & ")"

    Set objX = Nothing
    ExitMethod "modX", "FunctionName"

    Err.Raise lFunctionName_ErrNum, "SampleApp.modX.FunctionName", sFunctionName_Err
```

---

## MsgBox

**Marker:** `'CSEH: MsgBox`

**Behavior:** Logs the error, displays a critical dialog, returns to caller
without re-raising.

**Use for:** Top-level UI event handlers (`cmdSave_Click`, `mnuFile_Click`),
where the error chain must terminate visibly to the user.

**Error handler:**

```vb
cmdSave_Click_Err:
    Dim scmdSave_Click_Err As String
    scmdSave_Click_Err = Err.Description & vbCrLf & _
                         "in SampleApp.frmCustomer.cmdSave_Click at line " & Erl
    
    MsgBoxCritical scmdSave_Click_Err
    GoTo cmdSave_Click_Exit
```

---

## Silent (rare, audit before reuse)

**Marker:** `'CSEH: Silent`

**Behavior:** Logs the error and swallows it without re-raising or displaying.
Used in best-effort background tasks where failure must not interrupt flow
(e.g., decorative cache refresh, optional telemetry).

**Use sparingly.** Default to `ErrRaise` unless silent failure is an explicit
design choice.

**Error handler:**

```vb
RefreshCache_Err:
    Dim sRefreshCache_Err As String
    sRefreshCache_Err = "Error: " & Err.Number & " - " & Err.Description & " (" & Erl & ")"
    
    LogMsg "Silent failure in RefreshCache: " & sRefreshCache_Err
    ExitMethod "modCache", "RefreshCache"
    Exit Sub
```

---

## Quick reference

| Style       | Re-raises? | Displays UI? | Logs? | Use case               |
| ----------- | ---------- | ------------ | ----- | ---------------------- |
| `ErrRaise`  | Yes        | No           | Yes   | Utility / library code |
| `MsgBox`    | No         | Yes          | Yes   | UI event handlers      |
| `Silent`    | No         | No           | Yes   | Background / optional  |
