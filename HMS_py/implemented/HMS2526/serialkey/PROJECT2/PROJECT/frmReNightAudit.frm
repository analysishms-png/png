VERSION 5.00
Begin VB.Form frmReNightAudit
  Caption = "Reverse Night Audit"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmReNightAudit.frx":0
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  Begin TextBox Txt
    Index = 1
    Left = 1005
    Top = 8595
    Width = 1425
    Height = 255
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    Left = 3525
    Top = 5520
    Width = 3225
    Height = 255
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    Left = 3525
    Top = 5790
    Width = 3225
    Height = 255
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox txtStatus
    Left = 465
    Top = 4710
    Width = 3480
    Height = 345
    Visible = 0   'False
    TabIndex = 7
    Appearance = 0 'Flat
  End
  Begin TextBox txtHost
    Left = 930
    Top = 2235
    Width = 2040
    Height = 345
    Visible = 0   'False
    TabIndex = 6
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &H8000000E&
    ForeColor = &HC00000&
    Left = 5100
    Top = 1440
    Width = 2325
    Height = 450
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 11
    BeginProperty Font
      Name = "Arial Black"
      Size = 15.75
      Charset = 0
      Weight = 900
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 2850
    Width = 4680
    Height = 240
    Visible = 0   'False
    TabIndex = 0
  End
  Begin BtnEnh CmdExit
    Left = 6315
    Top = 2955
    Width = 2715
    Height = 1020
    TabIndex = 2
  End
  Begin BtnEnh Cmd
    Left = 3285
    Top = 2895
    Width = 2715
    Height = 1020
    TabIndex = 3
  End
  Begin DataGrid DGNewHelp
    Left = 3660
    Top = 7335
    Width = 4230
    Height = 2220
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGOldHelp
    Left = 3360
    Top = 6975
    Width = 4230
    Height = 2220
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin MSFlexGrid FGPoint
    Left = 2115
    Top = 5325
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 13
  End
  Begin Label lblDisplay
    Caption = "."
    ForeColor = &HFF&
    Left = 2430
    Top = 2115
    Width = 6285
    Height = 285
    TabIndex = 5
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 4
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "System"
      Size = 19.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmReNightAudit"

Private global_52 As Integer

Private Sub Cmd_UnknownEvent_9 'F6B078
  'Data Table: 439980
  Dim var_88 As String
  Dim var_8C As String
  Dim var_A0 As Variant
  Dim unk_439993 As Connection15
  loc_F6AF68: var_8C = "This Process is very critical" & vbCrLf & "Make sure that all the billings are stopped and no transactions have been made during Night Audit process."
  loc_F6AF98: If (MsgBox(CVar(var_8C & vbCrLf & "Continue with Night Audit Process ?"), &H14, var_C0, var_E0, var_100) <> 6) Then
  loc_F6AF9B:   Exit Sub
  loc_F6AF9C: End If
  loc_F6AFBA: Me.lblDisplay.Caption = CStr("Reverse Night Audit for Date :" & CDate(MemVar_1F950EC))
  loc_F6AFD2: Me.lblDisplay.Refresh
  loc_F6AFE9: var_A0 = "dd/MMM"
  loc_F6B011: If CBool(Format(MemVar_1F950EC, var_A0) <> "01/Apr") Then
  loc_F6B028:   var_88 = "Update enviro set ncur=dateadd(D,-1,ncur) where Logsite_code='" & MemVar_1F95078
  loc_F6B038:   unk_439993.Execute CStr("Reverse Night Audit for Date :" & CDate(MemVar_1F950EC)) & "'", var_A0, -1
  loc_F6B04A:   End
  loc_F6B04F: Else
  loc_F6B05C:   Me.lblDisplay.Caption = "Reverse Night Audit Not Go Beyond F/A Year.."
  loc_F6B06E:   Me.lblDisplay.Refresh
  loc_F6B076: End If
  loc_F6B076: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'DFE464
  'Data Table: 439980
  loc_DFE460: Exit Sub
End Sub

Private Sub Form_Load() 'E8B1A4
  'Data Table: 439980
  Dim var_8C As TextBox
  loc_E8B13B: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_E8B146: Print Me, "For Date :"
  loc_E8B159: Call 0.Method_arg_6C (RGB(250, 0, 0))
  loc_E8B164: Print Me, "For Date :"
  loc_E8B16A: On Error Goto loc_E8B19D
  loc_E8B180: Set var_88 = Me.Txt
  loc_E8B186: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_E8B18E: var_8C.Text = CStr(MemVar_1F950EC)
  loc_E8B19D: ' Referenced from: E8B16A
  loc_E8B19D: Proc_6_60_E63754()
  loc_E8B1A2: Exit Sub
End Sub

Private Sub Form_Resize() 'E75AA8
  'Data Table: 439980
  loc_E75A52: Call 0.Method_arg_50 (var_88)
  loc_E75A64: Me.LblFormCaption.Caption = var_88
  loc_E75A7D: Me.LblFormCaption.Left = CDbl(0)
  loc_E75A8B: Call 0.Method_arg_100 (var_90)
  loc_E75A9D: Me.LblFormCaption.Width = var_90
  loc_E75AA5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E02D28
  'Data Table: 439980
  loc_E02D21: global_52 = 0
  loc_E02D24: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5B77C
  'Data Table: 439980
  loc_E5B744: Set var_88 = Me.TopCtrl1
  loc_E5B74A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5B76D: If ((CStr() <> "Browse") And (global_52 = 0)) Then
  loc_E5B775:   Call Form_Unload(&HFF)
  loc_E5B77A: End If
  loc_E5B77A: Exit Sub
End Sub

Private Sub Form_Activate() 'DFE498
  'Data Table: 439980
  loc_DFE494: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2515C
  'Data Table: 439980
  loc_E25141: If (global_52 = &HFF) Then
  loc_E25151:   Me.Global.Unload Me
  loc_E25159: End If
  loc_E25159: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'DFE32C
  'Data Table: 439980
  loc_DFE328: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'ECA76C
  'Data Table: 439980
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECA6D2: Set var_88 = Me.Txt
  loc_ECA6D8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_ECA6E6: Proc_6_74_E23240(var_8C)
  loc_ECA701: Set var_88 = Me.Txt
  loc_ECA707: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_ECA70F: var_8C.SelStart = 0
  loc_ECA728: Set var_88 = Me.Txt
  loc_ECA72E: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_ECA749: Set var_90 = Me.Txt
  loc_ECA74F: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_ECA757: var_98.SelLength = Len(var_8C.Text)
  loc_ECA76A: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'DFBFD4
  'Data Table: 439980
  Dim arg_7FFF As Double
  loc_DFBFD0: Exit Sub
  loc_DFBFD1: arg_7FFF = 
End Sub

Private Sub Txt_LostFocus() 'DFDC78
  'Data Table: 439980
  loc_DFDC74: Exit Sub
  loc_DFDC75: Result  End Sub 'Double
End Sub

Private Sub CmdExit_UnknownEvent_9 'E16ED4
  'Data Table: 439980
  loc_E16EC9: Me.Global.Unload Me
  loc_E16ED1: Exit Sub
End Sub

Public Function global_52Get() '43A298
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '43A2A7
  global_52 = Value
End Sub

Public Sub Proc_248_15_E17004
  'Data Table: 439980
  loc_E16FF9: Me.Global.Unload Me
  loc_E17001: Exit Sub
End Sub
