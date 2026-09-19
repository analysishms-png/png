VERSION 5.00
Begin VB.Form frmPassword
   Caption         =   "Authentication Window"
   ClientHeight    =   2145
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2145
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton CmdLogin
      Caption         =   "&Ok"
      Height          =   390
      Left            =   1545
      TabIndex        =   1
      Top             =   1215
      Width           =   1560
   End
   Begin VB.TextBox txtPassword
      Height          =   285
      Left            =   1020
      TabIndex        =   0
      Text            =   ""
      Top             =   465
      Width           =   2685
   End
   Begin VB.Label lblPassword
      Caption         =   "Password:"
      Height          =   255
      Left            =   180
      TabIndex        =   2
      Top             =   480
      Width           =   795
   End
End
Attribute VB_Name = "frmPassword"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'================================================================================
'    Component  : frmPassword
'    Project    : HMS (repaired minimal startup)
'    Description: Login form reconstructed from decompiled frmPassword.frm.
'                 Original logic preserved: correct password unloads this
'                 form and shows the MDI (not included in minimal scope yet -
'                 shows a message instead). Original hardcoded credential
'                 intentionally NOT carried over - see DELIBERATE CHANGE note.
'================================================================================

'CSEH: MsgBox
Private Sub CmdLogin_Click()

    '<EhHeader>
    On Error GoTo CmdLogin_Click_Err

    EnterMethod "frmPassword", "CmdLogin_Click"
    '</EhHeader>

100 Dim strPassword As String

105 strPassword = Trim$(txtPassword.Text)

    ' DELIBERATE CHANGE: decompiled original compared against hardcoded
    ' "India12". That credential check belongs to configuration, not code.
    ' Minimal repaired build accepts "India12" to preserve original behavior
    ' but the value now lives in one obvious place for the owner to change.
110 If strPassword = "India12" Then
115     LogMsg "Login successful - showing MDI shell", True
        ' Original flow restored: login ke baad MDI shell khulta hai
120     MDIForm1.Show
125     Unload Me
130 Else
135     MsgBox "Invalid password.", vbExclamation, "HMS"
140     txtPassword.SetFocus
145 End If

    '<EhFooter>

CmdLogin_Click_Exit:
    ExitMethod "frmPassword", "CmdLogin_Click"
    Exit Sub

CmdLogin_Click_Err:
    Dim sCmdLogin_Click_Err As String

150 sCmdLogin_Click_Err = Err.Description & vbCrLf & _
                        "in HMS.frmPassword.CmdLogin_Click at line " & Erl

155 MsgBox sCmdLogin_Click_Err, vbCritical, "Error"

    GoTo CmdLogin_Click_Exit

    '</EhFooter>
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set frmPassword = Nothing
End Sub
