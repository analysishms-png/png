VERSION 5.00
Begin VB.Form FrmMarketSeg
  Caption = "Market Segment Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 10680
  ClientHeight = 8535
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3480
    Top = 2535
    Width = 600
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 3
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10680
    Height = 420
    TabIndex = 8
  End
  Begin MSFlexGrid FGPoint
    Left = 7665
    Top = 1575
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 4
  End
  Begin DataGrid DGHelp
    Left = 7800
    Top = 3300
    Width = 4245
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3480
    Top = 2235
    Width = 4215
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 20
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label LblLedgerAc
    Caption = "Active"
    Index = 6
    ForeColor = &HC00000&
    Left = 2820
    Top = 2535
    Width = 585
    Height = 240
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 1
    ForeColor = &H80&
    Left = 4110
    Top = 2565
    Width = 825
    Height = 225
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4620
    Top = 4980
    Width = 2790
    Height = 285
    TabIndex = 7
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 1230
    Top = 4980
    Width = 2880
    Height = 255
    TabIndex = 6
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 11.25
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
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 5
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
  Begin Label LblName
    Caption = "Market Segment Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1230
    Top = 2235
    Width = 2175
    Height = 240
    TabIndex = 2
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmMarketSeg"


Private Sub DGHelp_UnknownEvent_9 'EE734C
  'Data Table: 453F90
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE72A3: Me.DGHelp.Visible = False
  loc_EE72C2: If (Me.RecordCount > 0) Then
  loc_EE72E2:   var_B0 = Me.Fields.Item("Name")
  loc_EE7301:   Set var_B4 = Me.Txt
  loc_EE7307:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE730F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE7325: End If
  loc_EE7330: Set var_A8 = Me.Txt
  loc_EE7336: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE733E: var_B0.SetFocus
  loc_EE734A: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA8770
  'Data Table: 453F90
  Dim var_A8 As Variant
  loc_EA86F0: Set var_88 = Me.DGHelp
  loc_EA871A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA8722: Set var_BC = Me.DGHelp
  loc_EA875E: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0), Me.FGPoint)
  loc_EA876C: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EAD23C
  'Data Table: 453F90
  Dim Me As Recordset15
  loc_EAD1BA: Set var_88 = Me.Txt
  loc_EAD1C0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EAD1CE: Proc_6_74_E23240(var_8C)
  loc_EAD1DA: Call Proc_14_31_E86F88(var_8C)
  loc_EAD1ED: If (Index = CInt(0)) Then
  loc_EAD207:   If (Me.RecordCount > 0) Then
  loc_EAD215:     Set var_8C = Me.FGPoint
  loc_EAD22D:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_EAD23B:   End If
  loc_EAD23B: End If
  loc_EAD23B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FD3D90
  'Data Table: 453F90
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As TextBox
  loc_FD3BD6: If (CLng(Shift) = &H1B) Then
  loc_FD3BD9:   Call Proc_14_31_E86F88()
  loc_FD3BDE:   Exit Sub
  loc_FD3BDF: End If
  loc_FD3BED: If (KeyCode = CInt(0)) Then
  loc_FD3C0D:   Set var_9C = Me.FGPoint
  loc_FD3C3F:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_FD3CAC:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FD3CB3:     Set var_9C = Me.DGHelp
  loc_FD3CBA:     Set var_90 = Me.FGPoint
  loc_FD3CD2:     Proc_6_138_106E830(var_9C, global_56, KeyCode, var_90, 0)
  loc_FD3CE0:   End If
  loc_FD3CE0: End If
  loc_FD3CFC: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FD3D1D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(1))) Then
  loc_FD3D26:     Call Txt_Validate(KeyCode)
  loc_FD3D31:     If (var_86 = &HFF) Then
  loc_FD3D3F:       Set var_8C = Me.Txt
  loc_FD3D45:       Call 0.Method_Txt_KeyDown0 (CInt(0), var_90, var_86, 1)
  loc_FD3D4D:       var_90.SetFocus
  loc_FD3D59:       Exit Sub
  loc_FD3D5A:     End If
  loc_FD3D61:     Call Proc_14_32_E8F44C(CInt(0), var_9C)
  loc_FD3D66:     Exit Sub
  loc_FD3D6A:   Else
  loc_FD3D7F:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FD3D88:       Proc_6_75_E5335C(Shift, arg_14)
  loc_FD3D8D:     End If
  loc_FD3D8D:   End If
  loc_FD3D8D: End If
  loc_FD3D8D: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F006C4
  'Data Table: 453F90
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_D0 As TextBox
  loc_F005F2: Proc_6_133_E7FB08(var_94)
  loc_F005FB: arg_10 = CInt(var_94)
  loc_F00604: var_96 = KeyAscii
  loc_F0060F: If (var_96 = CInt(1)) Then
  loc_F0063B:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_F0064B:     Set var_CC = Me.Txt
  loc_F00651:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_F00659:     var_D0.Text = var_96
  loc_F00668:   Else
  loc_F00691:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_F006A1:       Set var_CC = Me.Txt
  loc_F006A7:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "No")
  loc_F006AF:       var_D0.Text = arg_10
  loc_F006BB:     End If
  loc_F006BB:   End If
  loc_F006BD:   arg_10 = 0
  loc_F006C0: End If
  loc_F006C0: Exit Sub
  loc_F006C1: arg_10 = arg_10
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC0800
  'Data Table: 453F90
  loc_EC0772: If (KeyCode = CInt(0)) Then
  loc_EC0791:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC079E:     var_A4 = "Name"
  loc_EC07BD:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_56)
  loc_EC07EF:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC07FD:   End If
  loc_EC07FD: End If
  loc_EC07FD: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E514FC
  'Data Table: 453F90
  loc_E514DA: Set var_88 = Me.Txt
  loc_E514E0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E514EE: Proc_6_73_E23294(var_8C)
  loc_E514FA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E29B28
  'Data Table: 453F90
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E29AFF: var_86 = Cancel
  loc_E29B0A: If (var_86 = CInt(0)) Then
  loc_E29B10:   Call Proc_14_30_108A190(var_88)
  loc_E29B1B:   If (var_88 = &HFF) Then
  loc_E29B20:     arg_10 = &HFF
  loc_E29B23:     Exit Sub
  loc_E29B24:   End If
  loc_E29B24: End If
  loc_E29B24: Exit Sub
  loc_E29B25: Get , , var_86 'get arg_10 bytes
End Sub

Private Sub Form_Load() '107EDF8
  'Data Table: 453F90
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_D8 As Variant
  Dim var_C8 As String
  Dim unk_453FA2 As Connection15
  loc_107EB68: On Error Goto loc_107EDB1
  loc_107EB7A: Me.LblUser.Left = CDbl(13500)
  loc_107EB91: Me.LblUser.Top = CDbl(7800)
  loc_107EBA8: Me.LblLDt.Top = CDbl(8160)
  loc_107EBBF: Me.LblLDt.Left = CDbl(13500)
  loc_107EBCE: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_107EBE1: Set var_8C = Me.Txt
  loc_107EBE7: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107EC06: Me.DGHelp.Left = CVar(var_90.Left)
  loc_107EC22: Set var_B8 = Me.Txt
  loc_107EC28: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_107EC43: Set var_8C = Me.Txt
  loc_107EC49: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107EC61: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_107EC70: Me.DGHelp.Top = CVar(var_90.Left)
  loc_107EC8C: Set var_8C = Me.TopCtrl1
  loc_107EC92: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_107ECA0: Call 0.Method_arg_50 (var_C8)
  loc_107ECA8: var_D8 = CVar(var_C8) 'String
  loc_107ECB6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D8)
  loc_107ECE5: unk_453FA2.Execute "SELECT Code,Name FROM MarketSeg WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107ED14: CVarUnk
  loc_107ED19: VerifyVarObj
  loc_107ED25: LateIdStAd
  loc_107ED57: unk_453FA2.Execute "SELECT * FROM MarketSeg WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107ED92: var_C8 = "INI"
  loc_107EDA0: Call Proc_14_27_E7B394(Proc_5_1_100EC1C(var_C8, Me, Me.DGHelp, Me), Me)
  loc_107EDAB: Call Proc_14_29_1210C78(Me.TopCtrl1)
  loc_107EDB0: Exit Sub
  loc_107EDB1: ' Referenced from: 107EB68
  loc_107EDB9: Set var_8C = Err()
  loc_107EDBF: Call 0.Method_arg_2C (var_C8)
  loc_107EDE0: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_107EDF3: Exit Sub
  loc_107EDF4: Exit Sub
End Sub

Private Sub Form_Resize() 'ED6318
  'Data Table: 453F90
  Dim var_8C As Label
  loc_ED6276: Call 0.Method_arg_50 (var_88)
  loc_ED6288: Me.LblFormCaption.Caption = var_88
  loc_ED62A1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED62AD: Set var_A0 = Me.TopCtrl1
  loc_ED62B3: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED62C0: Set var_8C = Me.TopCtrl1
  loc_ED62C6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED62E0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED62FB: Call 0.Method_arg_100 (var_B8)
  loc_ED630D: Me.LblFormCaption.Width = var_B8
  loc_ED6315: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E29C38
  'Data Table: 453F90
  loc_E29C1B: Set global_52 = Nothing
  loc_E29C2D: Set global_56 = Nothing
  loc_E29C34: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E88744
  'Data Table: 453F90
  loc_E886E0: On Error Goto loc_E88700
  loc_E886F7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E886FF: Exit Sub
  loc_E88700: ' Referenced from: E886E0
  loc_E88708: Set var_88 = Err()
  loc_E8870E: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8872F: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E88742: Exit Sub
  loc_E88743: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ED6414
  'Data Table: 453F90
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_ED6360: On Error Goto loc_ED640E
  loc_ED6370: Me.LblUser.Caption = vbNullString
  loc_ED6385: Me.LblLDt.Caption = vbNullString
  loc_ED63B0: Call Proc_14_27_E7B394(Proc_5_1_100EC1C("ADD", Me))
  loc_ED63BB: Call Proc_14_28_EB06D8(global_52)
  loc_ED63CE: Set var_88 = Me.Txt
  loc_ED63D4: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_ED63DC: var_94.Text = "Yes"
  loc_ED63F3: Set var_88 = Me.Txt
  loc_ED63F9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ED6401: var_94.SetFocus
  loc_ED640D: Exit Sub
  loc_ED640E: ' Referenced from: ED6360
  loc_ED640E: Proc_6_60_E63754(var_94)
  loc_ED6413: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC071C
  'Data Table: 453F90
  loc_EC0684: On Error Goto loc_EC0714
  loc_EC06BE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC06CD:   Set var_110 = Me
  loc_EC06E4:   Call Proc_14_27_E7B394(Proc_5_1_100EC1C("INI", var_110))
  loc_EC06EF:   Call Proc_14_31_E86F88(global_52)
  loc_EC06F4:   Call Proc_14_29_1210C78()
  loc_EC06FC: Else
  loc_EC0702:   Call 0.Method_arg_1E8 (var_110)
  loc_EC070A:   Call var_110.SetFocus
  loc_EC0713: End If
  loc_EC0713: Exit Sub
  loc_EC0714: ' Referenced from: EC0684
  loc_EC0714: Proc_6_60_E63754()
  loc_EC0719: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1190510
  'Data Table: 453F90
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim unk_453FA2 As Connection15
  Dim var_114 As Variant
  Dim var_B0 As String
  loc_119014C: On Error Goto loc_11904C2
  loc_119015D: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_1190160:   Exit Sub
  loc_1190161: End If
  loc_1190193: var_D0 = "Guest Folio"
  loc_11901DB: If (Proc_6_108_101061C(MemVar_1F95044, "GuestFolio", "MarketSeg", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_11901DE:   Exit Sub
  loc_11901DF: End If
  loc_1190211: var_D0 = "Booking"
  loc_1190259: If (Proc_6_108_101061C(MemVar_1F95044, "Booking", "MarketSeg", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_119025C:   Exit Sub
  loc_119025D: End If
  loc_1190294: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_11902A0:   unk_453FA2.BeginTrans var_CC
  loc_11902B6:   var_94 = Me.Bookmark 'Variant
  loc_1190302:   var_114 = "Delete From MarketSeg Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_1190310:   unk_453FA2.Execute CStr(var_114), var_134, -1
  loc_119035B:   var_164 = 0
  loc_119036E:   var_15C = 0
  loc_1190379:   var_158 = 0
  loc_119038C:   var_150 = 0
  loc_1190397:   var_14C = 0
  loc_11903AA:   var_144 = 0
  loc_11903EA:   var_B0 = "MarketSeg"
  loc_11903F3:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B0, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1190421:   unk_453FA2.CommitTrans
  loc_1190431:   Me.Requery -1
  loc_1190441:   Me.Requery -1
  loc_1190461:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_119046E:     Me.Bookmark = var_94
  loc_1190476:   Else
  loc_119048A:     If (Me.EOF = 0) Then
  loc_1190493:       Me.MoveLast
  loc_1190498:     End If
  loc_1190498:   End If
  loc_1190498:   Call Proc_14_29_1210C78(var_144, 0, var_14C, var_150)
  loc_11904B9:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_11904C1: End If
  loc_11904C1: Exit Sub
  loc_11904C2: ' Referenced from: 119014C
  loc_11904C8: unk_453FA2.RollbackTrans
  loc_11904D5: Set var_98 = Err()
  loc_11904DB: Call 0.Method_arg_2C (var_B0, 0, var_158)
  loc_11904FC: MsgBox(CVar(var_B0), &H30, " Deletion Error ", var_114, var_134)
  loc_119050F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EF219C
  'Data Table: 453F90
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EF20CC: On Error Goto loc_EF2194
  loc_EF20DC: Me.LblUser.Caption = vbNullString
  loc_EF20F1: Me.LblLDt.Caption = vbNullString
  loc_EF2107: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_EF210A:   Exit Sub
  loc_EF210B: End If
  loc_EF212E: Call Proc_14_27_E7B394(Proc_5_1_100EC1C("EDIT", Me))
  loc_EF2147: Set var_88 = Me.Txt
  loc_EF214D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF2160: global_64 = var_94.Text
  loc_EF2179: Set var_88 = Me.Txt
  loc_EF217F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF2187: var_94.SetFocus
  loc_EF2193: Exit Sub
  loc_EF2194: ' Referenced from: EF20CC
  loc_EF2194: Proc_6_60_E63754(global_52)
  loc_EF2199: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E172FC
  'Data Table: 453F90
  Dim arg_1800 As Integer
  loc_E172F1: Me.Global.Unload Me
  loc_E172F9: Exit Sub
  loc_E172FA: arg_1800 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F242B0
  'Data Table: 453F90
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F241B0: On Error Goto loc_F24248
  loc_F241BC: var_88 = Me.RecordCount
  loc_F241CA: If (var_88 <= 0) Then
  loc_F241D3:   var_B8 = "Information"
  loc_F241EE:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F241FE:   Exit Sub
  loc_F241FF: End If
  loc_F2420D: MemVar_1F950E4 = "Select MarketSeg.Code As SearchCode,MarketSeg.Name,MarketSeg.Active FROM MarketSeg Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by MarketSeg.Name"
  loc_F2421A: MemVar_1F95120 = Me
  loc_F24221: var_10C = "4000,1000"
  loc_F24227: Proc_6_126_F1C850(var_10C)
  loc_F24242: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F24247: Exit Sub
  loc_F24248: ' Referenced from: F241B0
  loc_F24250: Set var_110 = Err()
  loc_F24256: Call 0.Method_arg_1C (var_88)
  loc_F24267: If (var_88 <> 0) Then
  loc_F24272:   Set var_110 = Err()
  loc_F24278:   Call 0.Method_arg_2C (var_10C)
  loc_F24299:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F242AC: End If
  loc_F242AC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E314A8
  'Data Table: 453F90
  loc_E31498: Proc_5_0_1107AD0(&HFF, Me)
  loc_E314A0: Call Proc_14_29_1210C78(global_52)
  loc_E314A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E31328
  'Data Table: 453F90
  loc_E31318: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31320: Call Proc_14_29_1210C78(global_52)
  loc_E31325: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E31388
  'Data Table: 453F90
  loc_E31378: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31380: Call Proc_14_29_1210C78(global_52)
  loc_E31385: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E313E8
  'Data Table: 453F90
  loc_E313D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E313E0: Call Proc_14_29_1210C78(global_52)
  loc_E313E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1088A04
  'Data Table: 453F90
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_453FA2 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_108876C: On Error Goto loc_10889B8
  loc_1088793: unk_453FA2.Execute "select * FROM MarketSeg Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_108879E: Set var_88 = var_C8
  loc_10887B4: var_CC = var_88.RecordCount
  loc_10887C2: If (var_CC = 0) Then
  loc_10887DE:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_10887EE:   Exit Sub
  loc_10887EF: End If
  loc_10887FE: var_A4 = MemVar_1F950B4 & "\MarketSeg.ttx"
  loc_1088805: Set var_C8 = var_88 
  loc_1088811: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108881B: Set var_88 = var_C8
  loc_1088821: var_B4 = CVar(var_12E) 'Integer
  loc_1088824: var_98 = var_B4 'Variant
  loc_1088840: var_A0 = MemVar_1F950B4 & "\MarketSeg.RPT"
  loc_1088849: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1088854: MemVar_1F951E8 = var_C8
  loc_108886F: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1088877: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1088883: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_108889C:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10888A4:   Call 0.Method_arg_20 (var_138)
  loc_10888AC:   Call 0.Method_arg_30 (var_A0)
  loc_10888F2:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1088908:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1088910:     Call 0.Method_arg_20 (var_138)
  loc_1088918:     Call 0.Method_arg_38 ("'Market Segment Master'")
  loc_1088924:   End If
  loc_1088927: Next var_132 'Integer
  loc_1088945: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_108894D: Call 0.Method_arg_2C (var_DC)
  loc_108895B: Call 0.Method_arg_150 (var_FC)
  loc_1088966: Call 0.Method_arg_50 (var_A0)
  loc_1088970: Set var_138 = Nothing
  loc_108898A: Set var_C8 = MemVar_1F951E8 
  loc_1088996: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_10889A1: MemVar_1F951E8 = var_C8
  loc_10889B4: Set var_88 = Nothing
  loc_10889B7: Exit Sub
  loc_10889B8: ' Referenced from: 108876C
  loc_10889C0: Set var_C8 = Err()
  loc_10889C6: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10889D1: Call 0.Method_arg_50 (var_A4)
  loc_10889ED: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1088A00: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A7D4
  'Data Table: 453F90
  Dim Me As Recordset15
  loc_E0A7CB: Me.Requery -1
  loc_E0A7D0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1263468
  'Data Table: 453F90
  Dim var_9C As String
  Dim var_D0 As Variant
  Dim unk_453FA2 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F0 As Variant
  Dim var_C0 As Variant
  Dim var_100 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_B0 As Variant
  Dim var_1E4 As Variant
  Dim var_204 As Variant
  Dim var_108 As String
  loc_1262F34: On Error Goto loc_1263413
  loc_1262F3B: var_86 = CByte(0) 'Byte
  loc_1262F4A: Set var_90 = Me.Txt
  loc_1262F50: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1262F79: If (Proc_6_27_EA61EC(var_94, "Name") = 0) Then
  loc_1262F83:   Call Txt_GotFocus(CInt(0))
  loc_1262F88:   Exit Sub
  loc_1262F89: End If
  loc_1262F8C: Call Proc_14_30_108A190(var_9E)
  loc_1262F97: If (var_9E = &HFF) Then
  loc_1262F9A:   Exit Sub
  loc_1262F9B: End If
  loc_1262F9F: Set var_90 = Me.TopCtrl1
  loc_1262FA5: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_1262FBE: If (CStr() = "Add") Then
  loc_1262FC7:   var_D0 = 0
  loc_1262FE6:   unk_453FA2.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From MarketSeg", var_B0, -1
  loc_1262FEE:   var_90 = var_90.Fields
  loc_1262FF6:   var_D0 = var_94.Item(var_94)
  loc_1262FFE:   var_98 = var_98.Value
  loc_1263031:   var_F0 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1263057:   var_E0 = Format(CStr(var_E0), "000")
  loc_126305F:   var_100 = (1 + var_E0)
  loc_126306A:   global_60 = CStr(var_100)
  loc_126307F: Else
  loc_126309C:   var_94 = Me.Fields.Item("Code")
  loc_12630B3:   global_60 = CStr(var_94.Value)
  loc_12630C4: End If
  loc_12630CD: unk_453FA2.BeginTrans var_104
  loc_12630D6: var_86 = CByte(1) 'Byte
  loc_12630DE: Set var_90 = Me.TopCtrl1
  loc_12630E4: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_12630FD: If (CStr(var_F0) = "Add") Then
  loc_1263117:   var_9C = "Insert Into MarketSeg(Code,Name,Active,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_60
  loc_126312F:   Set var_90 = Me.Txt
  loc_1263135:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_108, var_9C & "','")
  loc_126313D:   var_248 = var_94.Text
  loc_1263146:   var_110 = -1 & var_108
  loc_126315B:   Set var_98 = Me.Txt
  loc_1263161:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, CVar(var_110 & "',"))
  loc_1263170:   Proc_6_17_EAAE40(var_E0, CVar(var_114))
  loc_12631B9:   Proc_6_7_F26918(var_1B4, Date)
  loc_12631D4:   var_204 = var_24C & var_E0 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_1B4 & ",'A','" & CVar(MemVar_1F95078) 
  loc_12631EB:   unk_453FA2.Execute CStr(var_204 & "')"), var_E0, 
  loc_126322E: Else
  loc_126324C:   Set var_90 = Me.Txt
  loc_1263252:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE MarketSeg SET Name='")
  loc_126325A:   var_248 = var_94.Text
  loc_1263263:   var_108 = -1 & var_9C
  loc_126326A:   var_F0 = CVar(var_108 & "',Active=") 'String
  loc_1263278:   Set var_98 = Me.Txt
  loc_126327E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114)
  loc_126328D:   Proc_6_17_EAAE40(var_E0, CVar(var_114))
  loc_1263295:   var_100 = var_F0 & var_E0 
  loc_1263299:   var_C0 = ",SITE_CODE='"
  loc_12632D6:   Proc_6_7_F26918(var_1B4, Date)
  loc_12632E7:   var_1E4 = var_100 & var_C0 & CVar(MemVar_1F95070) & "',U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_1B4 & " ,U_AE='E' WHERE Code='" 
  loc_126330B:   unk_453FA2.Execute CStr(var_1E4 & CVar(global_60) & "'"), var_24C, 
  loc_1263347: End If
  loc_126334D: unk_453FA2.CommitTrans
  loc_1263356: var_86 = CByte(0) 'Byte
  loc_1263365: Me.Requery -1
  loc_1263375: Me.Requery -1
  loc_12633A2: Me.Find "Code='" & global_60 & "'", 0, 1
  loc_12633B2: Set var_90 = Me.TopCtrl1
  loc_12633B8: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_12633D1: If (CStr() = "Add") Then
  loc_12633D4:   Call TopCtrl1_UnknownEvent_A()
  loc_12633D9:   Exit Sub
  loc_12633DA: End If
  loc_12633EF: var_9C = "INI"
  loc_12633FD: Call Proc_14_27_E7B394(Proc_5_1_100EC1C(var_9C, Me))
  loc_1263408: Call Proc_14_31_E86F88(global_52)
  loc_126340D: Call Proc_14_29_1210C78()
  loc_1263412: Exit Sub
  loc_1263413: ' Referenced from: 1262F34
  loc_126341C: If (CInt(var_86) = 1) Then
  loc_1263425:   unk_453FA2.RollbackTrans
  loc_126342A: End If
  loc_1263432: Set var_90 = Err()
  loc_1263438: Call 0.Method_arg_2C (var_9C)
  loc_1263451: MsgBox(CVar(var_9C), &H10, var_E0, var_F0, var_100)
  loc_1263464: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E315C4
  'Data Table: 453F90
  loc_E315B8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E315BB:   Call DGHelp_UnknownEvent_9()
  loc_E315C0: End If
  loc_E315C0: Exit Sub
  loc_E315C2: Result  &  End Sub 'Currency
End Sub

Public Sub SEARCHBACK(MyValue) 'EC0634
  'Data Table: 453F90
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC05AA: On Error Goto loc_EC05EF
  loc_EC05B3: Me.MoveFirst
  loc_EC05CD: var_8C = "code='" & MyValue
  loc_EC05DD: Me.Find var_8C & "'", 0, 1
  loc_EC05E9: Call Proc_14_29_1210C78(var_A0)
  loc_EC05EE: Exit Sub
  loc_EC05EF: ' Referenced from: EC05AA
  loc_EC05F7: Set var_A4 = Err()
  loc_EC05FD: Call 0.Method_arg_2C (var_8C)
  loc_EC061E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC0631: Exit Sub
  loc_EC0632: Exit Sub
End Sub

Public Sub Proc_14_27_E7B394(arg_C) 'E7B394
  'Data Table: 453F90
  Dim var_98 As TextBox
  loc_E7B342: Set var_8C = Me.Txt
  loc_E7B348: Call 0.Method_Proc_14_27_E7B394C (var_8E, var_86)
  loc_E7B358: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7B36E:   Set var_8C = Me.Txt
  loc_E7B374:   Call 0.Method_Proc_14_27_E7B3940 (CInt(var_86), var_98)
  loc_E7B37C:   var_98.Enabled = arg_C
  loc_E7B38B: Next var_92 'Byte
  loc_E7B391: Exit Sub
End Sub

Public Sub Proc_14_28_EB06D8
  'Data Table: 453F90
  Dim var_98 As TextBox
  loc_EB064A: global_64 = vbNullString
  loc_EB065C: Set var_8C = Me.Txt
  loc_EB0662: Call 0.Method_Proc_14_28_EB06D8C (var_8E, var_86)
  loc_EB0672: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB0688:   Set var_8C = Me.Txt
  loc_EB068E:   Call 0.Method_Proc_14_28_EB06D80 (CInt(var_86), var_98)
  loc_EB0696:   var_98.Text = vbNullString
  loc_EB06B2:   Set var_8C = Me.Txt
  loc_EB06B8:   Call 0.Method_Proc_14_28_EB06D80 (CInt(var_86), var_98)
  loc_EB06C0:   var_98.Tag = vbNullString
  loc_EB06CF: Next var_92 'Byte
  loc_EB06D5: Exit Sub
End Sub

Public Sub Proc_14_29_1210C78
  'Data Table: 453F90
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_453FA2 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_11C As TextBox
  loc_12107E4: On Error Goto loc_1210C35
  loc_12107ED: Proc_183_45_E5CCA8(global_52)
  loc_1210848: unk_453FA2.Execute CStr("Select U_Name,U_AE,U_EntDt From MarketSeg where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_1210853: Set var_88 = var_118
  loc_12108A7: var_118 = var_88.Fields
  loc_1210910: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1210955: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_12109CF: var_11C = var_88.Fields.Item("U_AE")
  loc_12109E8: var_114 = "entdt : "
  loc_12109F3: var_F0 = "Last Update : "
  loc_1210A30: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), var_F0, var_114))
  loc_1210A75: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1210AC4: If (Me.RecordCount <= 0) Then
  loc_1210AC7:   Call Proc_14_28_EB06D8()
  loc_1210ACF: Else
  loc_1210B03:   global_60 = CStr(Me.Fields.Item("Name").Value)
  loc_1210B50:   Set var_118 = Me.Txt
  loc_1210B56:   Call 0.Method_Proc_14_29_1210C780 (CInt(0), var_11C)
  loc_1210B5E:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1210BB0:   Set var_118 = Me.Txt
  loc_1210BB6:   Call 0.Method_Proc_14_29_1210C780 (CInt(0), var_11C)
  loc_1210BBE:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1210BFF:   var_F4 = Proc_6_38_E69628(CVar(Me.Fields.Item("Active")))
  loc_1210C0D:   Set var_118 = Me.Txt
  loc_1210C13:   Call 0.Method_Proc_14_29_1210C780 (CInt(1), var_11C)
  loc_1210C1B:   var_11C.Text = var_F4
  loc_1210C2F: End If
  loc_1210C2F: Call Proc_14_31_E86F88()
  loc_1210C34: Exit Sub
  loc_1210C35: ' Referenced from: 12107E4
  loc_1210C3D: Set var_8C = Err()
  loc_1210C43: Call 0.Method_arg_2C (var_F4)
  loc_1210C64: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_1210C77: Exit Sub
End Sub

Public Sub Proc_14_30_108A190
  'Data Table: 453F90
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_453FA2 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1089F23: If (Me.RecordCount = 0) Then
  loc_1089F26:   Proc_14_30_108A190 = 
  loc_1089F2C: End If
  loc_1089F30: Set var_90 = Me.TopCtrl1
  loc_1089F36: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1089F4F: If (CStr() = "Add") Then
  loc_1089F8D:   Set var_90 = Me.Txt
  loc_1089F93:   Call 0.Method_Proc_14_30_108A1900 (CInt(0), var_A8, var_AC, "Select Count(*) From MarketSeg Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1089FB4:   unk_453FA2.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1089FC4:    = var_D0.Item()
  loc_1089FCC:    = var_E4.Value
  loc_1089FFD:   If (var_A8.Text.Fields > 0) Then
  loc_108A01B:     var_A0 = "Duplicate Name"
  loc_108A021:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_108A03C:     Set var_90 = Me.Txt
  loc_108A042:     Call 0.Method_Proc_14_30_108A1900 (CInt(0))
  loc_108A04A:     var_A8.SetFocus
  loc_108A05B:     Proc_14_30_108A190 = &HFF
  loc_108A061:   End If
  loc_108A064: Else
  loc_108A09F:   Set var_90 = Me.Txt
  loc_108A0A5:   Call 0.Method_Proc_14_30_108A1900 (CInt(0), var_A8, var_AC, "Select Count(*) From MarketSeg Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108A0D7:   unk_453FA2.Execute var_D0 & var_AC & "' And Name<>'" & global_64 & "'", 0, var_E4
  loc_108A0E7:    = var_D0.Item(var_A8)
  loc_108A0EF:    = var_E4.Value
  loc_108A124:   If (var_A8.Text.Fields > 0) Then
  loc_108A148:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_108A163:     Set var_90 = Me.Txt
  loc_108A169:     Call 0.Method_Proc_14_30_108A1900 (CInt(0))
  loc_108A171:     var_A8.SetFocus
  loc_108A182:     Proc_14_30_108A190 = &HFF
  loc_108A188:   End If
  loc_108A188: End If
  loc_108A188: Proc_14_30_108A190 = var_A8
End Sub

Public Sub Proc_14_31_E86F88
  'Data Table: 453F90
  Dim arg_2A00 As Double
  loc_E86F34: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E86F46:   Me.DGHelp.Visible = False
  loc_E86F4E: End If
  loc_E86F6A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E86F7C:   Me.FGPoint.Visible = False
  loc_E86F84: End If
  loc_E86F84: Exit Sub
  loc_E86F85: arg_2A00 = 
End Sub

Public Sub Proc_14_32_E8F44C(arg_C) 'E8F44C
  'Data Table: 453F90
  Dim var_10C As TextBox
  loc_E8F3E0: Call Proc_14_31_E86F88()
  loc_E8F41C: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8F41F:   Call TopCtrl1_UnknownEvent_16()
  loc_E8F427: Else
  loc_E8F431:   Set var_108 = Me.Txt
  loc_E8F437:   Call 0.Method_Proc_14_32_E8F44C0 (arg_C)
  loc_E8F43F:   var_10C.SetFocus
  loc_E8F44B: End If
  loc_E8F44B: Exit Sub
End Sub
