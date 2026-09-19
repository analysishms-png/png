VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.MDIForm MDIForm1
   Caption         =   "HMS - Hotel Management System (repaired shell)"
   ClientHeight    =   9240
   ClientLeft      =   2640
   ClientTop       =   2025
   ClientWidth     =   11715
   LinkTopic       =   "MDIForm1"
   WindowState     =   2
   Begin VB.PictureBox PictShortCuts
      Align           =   3  'Align Left
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Height          =   9240
      Left            =   0
      ScaleHeight     =   9240
      ScaleWidth      =   3170
      TabIndex        =   21
      Top             =   735
      Width           =   3170
      Begin MSComctlLib.TreeView TreeView1
         Height          =   6750
         Left            =   0
         TabIndex        =   22
         Top             =   0
         Width           =   3120
         _ExtentX        =   5503
         _ExtentY        =   11906
      End
      Begin MSComctlLib.ListView ListView1
         Height          =   6420
         Left            =   0
         TabIndex        =   23
         Top             =   0
         Width           =   3120
         _ExtentX        =   5503
         _ExtentY        =   11324
      End
   End
   Begin VB.Menu mnuFile
      Caption         =   "&File"
      Begin VB.Menu mnuFileExit
         Caption         =   "E&xit"
      End
   End
   Begin VB.Menu mnuTools
      Caption         =   "&Tools"
      Begin VB.Menu mnuToolsCsehDemo
         Caption         =   "CSEH Error Handling &Demo"
      End
   End
   Begin VB.Menu mnuHelp
      Caption         =   "&Help"
      Begin VB.Menu mnuHelpAbout
         Caption         =   "&About HMS"
      End
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'================================================================================
'    Component  : MDIForm1
'    Project    : HMS (repaired minimal shell)
'    Description: MDI shell reconstructed from decompiled MDIForm1.frm.
'                 PRESERVED from original (evidence-based):
'                   - Form name MDIForm1, WindowState=2 (maximized)
'                   - PictShortCuts panel (Align Left, black background)
'                   - TreeView1, ListView1 (MSCOMCTL.OCX)
'                   - mnuGrid (MSHFlexGrid, MSHFLXGD.OCX)
'                 EXCLUDED in minimal shell (original had them, OCX unavailable):
'                   - BtnEnh controls (CmdSubMenu, clock labels, Reload,
'                     cmdExit) - third-party button control, needs its own OCX
'                   - Images (DealerLogo, ImgLogo) - lived in .frx binary
'                 ADDED (new, clearly marked): File/Help menus so the shell
'                 is closable from UI.
'================================================================================

'CSEH: MsgBox
Private Sub MDIForm_Load()

    '<EhHeader>
    On Error GoTo MDIForm_Load_Err

    EnterMethod "MDIForm1", "MDIForm_Load"
    '</EhHeader>

100 LogMsg "MDI shell loaded", True

    ' Minimal placeholder data so controls are visibly alive.
    ' Original menu-population logic was lost in decompilation.
105 TreeView1.Nodes.Add , , "ROOT", "HMS Modules (to be restored)"
110 TreeView1.Nodes.Add "ROOT", tvwChild, , "Masters"
115 TreeView1.Nodes.Add "ROOT", tvwChild, , "Transactions"
120 TreeView1.Nodes.Add "ROOT", tvwChild, , "Reports"

    '<EhFooter>

MDIForm_Load_Exit:
    ExitMethod "MDIForm1", "MDIForm_Load"
    Exit Sub

MDIForm_Load_Err:
    Dim sMDIForm_Load_Err As String

125 sMDIForm_Load_Err = Err.Description & vbCrLf & _
                       "in HMS.MDIForm1.MDIForm_Load at line " & Erl

130 MsgBox sMDIForm_Load_Err, vbCritical, "Error"

    GoTo MDIForm_Load_Exit

    '</EhFooter>
End Sub

'CSEH: MsgBox
Private Sub mnuFileExit_Click()

    '<EhHeader>
    On Error GoTo mnuFileExit_Click_Err

    EnterMethod "MDIForm1", "mnuFileExit_Click"
    '</EhHeader>

135 LogMsg "User exit from File menu"

140 Unload MDIForm1

    '<EhFooter>

mnuFileExit_Click_Exit:
    ExitMethod "MDIForm1", "mnuFileExit_Click"
    Exit Sub

mnuFileExit_Click_Err:
    Dim smnuFileExit_Click_Err As String

145 smnuFileExit_Click_Err = Err.Description & vbCrLf & _
                            "in HMS.MDIForm1.mnuFileExit_Click at line " & Erl

150 MsgBox smnuFileExit_Click_Err, vbCritical, "Error"

    GoTo mnuFileExit_Click_Exit

    '</EhFooter>
End Sub

'CSEH: MsgBox
Private Sub mnuToolsCsehDemo_Click()

    '<EhHeader>
    On Error GoTo mnuToolsCsehDemo_Click_Err

    EnterMethod "MDIForm1", "mnuToolsCsehDemo_Click"
    '</EhHeader>

155 CsehDemoForm.Show

    '<EhFooter>

mnuToolsCsehDemo_Click_Exit:
    ExitMethod "MDIForm1", "mnuToolsCsehDemo_Click"
    Exit Sub

mnuToolsCsehDemo_Click_Err:
    Dim smnuToolsCsehDemo_Click_Err As String

160 smnuToolsCsehDemo_Click_Err = Err.Description & vbCrLf & _
                                  "in HMS.MDIForm1.mnuToolsCsehDemo_Click at line " & Erl

165 MsgBox smnuToolsCsehDemo_Click_Err, vbCritical, "Error"

    GoTo mnuToolsCsehDemo_Click_Exit

    '</EhFooter>
End Sub

Private Sub mnuHelpAbout_Click()
    MsgBox "HMS - Hotel Management System" & vbCrLf & _
           "Repaired minimal shell" & vbCrLf & _
           "Original: Analysis Software Services, v2.5.5", _
           vbInformation, "About HMS"
End Sub

Private Sub MDIForm_Unload(Cancel As Integer)
    LogMsg "MDI shell unloading", True
    Set MDIForm1 = Nothing
End Sub
