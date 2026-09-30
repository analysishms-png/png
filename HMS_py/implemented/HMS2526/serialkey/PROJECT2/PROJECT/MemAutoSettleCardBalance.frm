VERSION 5.00
Begin VB.Form MemAutoSettleCardBalance
  Caption = "Auto Settle Card Balance"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  LockControls = -1  'True
  Begin BtnEnh CmdFill
    Left = 6945
    Top = 585
    Width = 1230
    Height = 900
    TabIndex = 15
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 585
    Visible = 0   'False
    TabIndex = 14
  End
  Begin CheckBox Check1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 855
    Top = 1935
    Width = 450
    Height = 225
    Visible = 0   'False
    TabIndex = 13
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
  Begin Frame FrmList
    Left = 11145
    Top = 630
    Width = 1860
    Height = 1815
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 15
      Top = 75
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 12
    End
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2565
    Top = 690
    Width = 1635
    Height = 240
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
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
    BackColor = &HFFFFFF&
    Left = 2565
    Top = 1200
    Width = 1635
    Height = 240
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 15
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 2565
    Top = 945
    Width = 3345
    Height = 240
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 35
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtSearch
    BackColor = &HE0E0E0&
    Left = 9390
    Top = 2250
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin DataGrid DGRestType
    Left = 13140
    Top = 540
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MSFlexGrid FGPoint
    Left = 8595
    Top = 600
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 6
  End
  Begin MSHFlexGrid GridSel
    Left = 720
    Top = 1905
    Width = 15000
    Height = 6000
    TabIndex = 3
  End
  Begin BtnEnh CmdSave
    Left = 5520
    Top = 8250
    Width = 1530
    Height = 570
    TabIndex = 16
  End
  Begin BtnEnh CmdExit
    Left = 7185
    Top = 8250
    Width = 1530
    Height = 570
    TabIndex = 17
  End
  Begin Label LblName
    Caption = "Status"
    Index = 1
    ForeColor = &H0&
    Left = 945
    Top = 1215
    Width = 525
    Height = 225
    Visible = 0   'False
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "For Date"
    Index = 0
    ForeColor = &H0&
    Left = 945
    Top = 690
    Width = 705
    Height = 225
    Visible = 0   'False
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Outlet Name"
    Index = 2
    ForeColor = &H0&
    Left = 945
    Top = 945
    Width = 1035
    Height = 225
    Visible = 0   'False
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Left = 780
    Top = 7920
    Width = 7680
    Height = 270
    TabIndex = 7
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "MemAutoSettleCardBalance"

Private global_52 As Integer

Private Sub GridSel_UnknownEvent_A 'FD9F24
  'Data Table: 467800
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FD9D72: If (KeyCode = &HD) Then
  loc_FD9D83:   Proc_303_0_FBACC8("	")
  loc_FD9D8B: End If
  loc_FD9DAA: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FD9DAD:   Exit Sub
  loc_FD9DAE: End If
  loc_FD9DD8: If ((CLng(KeyCode) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FD9DEB:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FD9E05:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FD9E20:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD9E25:   var_D4 = 0
  loc_FD9E57:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD9E5C:   var_19C = 0
  loc_FD9E97:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FD9E9F:   Set var_1D0 = Me.GridSel
  loc_FD9EA5:   LateIdCallSt
  loc_FD9EDF:   var_86 = CInt((UBound(global_56, 1) + 1))
  loc_FD9EF1:   ReDim Preserve global_56(0 To CLng(var_86))
  loc_FD9F19:   global_56(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FD9F20: End If
  loc_FD9F20: Exit Sub
  loc_FD9F21: CopyBytes 7167
End Sub

Private Sub GridSel_UnknownEvent_E 'E5D558
  'Data Table: 467800
  loc_E5D533: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5D536:   Exit Sub
  loc_E5D537: End If
  loc_E5D54E: global_52 = CInt(CLng(Me.GridSel.Row))
  loc_E5D557: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1026A78
  'Data Table: 467800
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_1026879: If ((CLng(Me.GridSel.Col) <> 0) Or (global_52 = 0)) Then
  loc_102687C:   Exit Sub
  loc_102687D: End If
  loc_10268D9: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_10268DC:   Exit Sub
  loc_10268DD: End If
  loc_102690C: For var_BA = global_52 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_1026925:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1026940:   Me.GridSel.Col = 0
  loc_1026958:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1026972:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_102697E:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1026983:   var_EC = 0
  loc_10269A6:   var_160 = CVar(CLng(var_88)) 'Long
  loc_10269AB:   var_180 = 0
  loc_10269E6:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_10269EE:   Set var_A0 = Me.GridSel
  loc_10269F4:   LateIdCallSt
  loc_1026A26:   var_86 = CInt((UBound(global_56, 1) + 1))
  loc_1026A38:   ReDim Preserve global_56(0 To CLng(var_86))
  loc_1026A60:   global_56(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_1026A6A: Next var_BA 'Integer
  loc_1026A74: global_52 = 0
  loc_1026A77: Exit Sub
End Sub

Private Sub CmdSave_UnknownEvent_9 'EF6F14
  'Data Table: 467800
  Dim var_AC As Variant
  Dim var_86 As Integer
  Dim unk_467810 As Connection15
  loc_EF6E38: On Error Goto loc_EF6EF8
  loc_EF6E44: Set var_AC = Me.CmdSave
  loc_EF6E4A: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_EF6E5F: Me.Label1.Caption = "Saving..."
  loc_EF6E71: Me.Label1.Refresh
  loc_EF6E7B: var_86 = &HFF
  loc_EF6E87: unk_467810.BeginTrans var_B0
  loc_EF6EB5: Call Proc_341_21_1228FB8(global_56, CByte(Me.Check1.Value))
  loc_EF6EC6: unk_467810.CommitTrans
  loc_EF6ECD: var_86 = 0
  loc_EF6EDD: Me.Label1.Caption = "Save Completed."
  loc_EF6EEF: Me.Label1.Refresh
  loc_EF6EF7: Exit Sub
  loc_EF6EF8: ' Referenced from: EF6E38
  loc_EF6EFE: If (var_86 = &HFF) Then
  loc_EF6F07:   unk_467810.RollbackTrans
  loc_EF6F0C: End If
  loc_EF6F0C: Proc_6_60_E63754(var_86, var_C4)
  loc_EF6F11: Exit Sub
  loc_EF6F13: Result CCur(var_86) End Sub 'Currency
End Sub

Private Sub Txt_GotFocus(Index As Integer) '120E3A0
  'Data Table: 467800
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim Me As Variant
  Dim var_88 As DataGrid
  loc_120DEF0: On Error Goto loc_120E35B
  loc_120DEFD: Set var_88 = Me.Txt
  loc_120DF03: Call 0.Method_Txt_GotFocus0 (Index)
  loc_120DF11: Proc_6_74_E23240(var_8C)
  loc_120DF1D: Call Proc_341_22_EB76FC(var_8C)
  loc_120DF25: var_92 = Index
  loc_120DF30: If (var_92 = CInt(0)) Then
  loc_120DF40:   Set var_88 = Me.Txt
  loc_120DF46:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120DF61:   Set var_90 = Me.Txt
  loc_120DF67:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_120DF6F:   var_9C.SelLength = Len(var_8C.Text)
  loc_120DF8F:   Set var_88 = Me.Txt
  loc_120DF95:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120DF9D:   var_98 = var_8C.Text
  loc_120DFAF:   Set var_90 = Me.Txt
  loc_120DFB5:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_120DFBD:   var_9C.Tag = var_98
  loc_120DFD3: Else
  loc_120DFDB:   If (var_92 = CInt(1)) Then
  loc_120DFEC:     Set var_88 = Me.Txt
  loc_120DFF2:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_120E011:     Me.DGRestType.Left = CVar(var_8C.Left)
  loc_120E02D:     Set var_90 = Me.Txt
  loc_120E033:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_9C)
  loc_120E04E:     Set var_88 = Me.Txt
  loc_120E054:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_120E06C:     var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_120E07B:     Me.DGRestType.Top = CVar(var_8C.Left)
  loc_120E09C:     Me.Filter = 0
  loc_120E0AD:     Me.Filter = "RestType<>'Kitchen'"
  loc_120E0C9:     If (Me.RecordCount > 0) Then
  loc_120E0D7:       Set var_8C = Me.FGPoint
  loc_120E0EF:       Proc_6_137_1192FDC(Me.DGRestType, global_64, Index)
  loc_120E0FD:     End If
  loc_120E14B:     Set var_88 = Me.Txt
  loc_120E151:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_120E159:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_120E171:     If (var_8C Or (var_98 = vbNullString)) Then
  loc_120E174:       Exit Sub
  loc_120E175:     End If
  loc_120E182:     Set var_88 = Me.Txt
  loc_120E188:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120E190:     var_98 = var_8C.Text
  loc_120E1A2:     var_B0 = "Name"
  loc_120E1DD:     If CBool(CVar(var_98) <> Me.Fields.Item(var_B0).Value) Then
  loc_120E1E6:       Me.MoveFirst
  loc_120E209:       Set var_88 = Me.Txt
  loc_120E20F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_120E217:       0 = var_8C.Text
  loc_120E230:       Me.Find 1 & var_98 & "'", var_B0, var_92
  loc_120E245:     End If
  loc_120E258:     Me.DGRestType.Tag = CVar(CStr(Index))
  loc_120E266:   Else
  loc_120E26E:     If (var_92 = CInt(2)) Then
  loc_120E27E:       ReDim var_108(0 To 1)
  loc_120E295:       var_108(0) = "Pending"
  loc_120E2A4:       var_108(1) = "All"
  loc_120E2BB:       global_80 = Array(var_108)
  loc_120E2C6:       Set var_9C = Me.ListView
  loc_120E2E1:       Set var_8C = Me.Txt
  loc_120E2FB:       Set global_96 = Proc_6_66_F0048C(var_9C, var_8C, Index)
  loc_120E319:       Set var_88 = Me.Txt
  loc_120E31F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_120E327:       global_80 = var_8C.Text
  loc_120E339:       Set var_90 = Me.Txt
  loc_120E33F:       Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_98)
  loc_120E347:       var_9C.Tag = 2
  loc_120E35A:     End If
  loc_120E35A:   End If
  loc_120E35A: End If
  loc_120E35A: Exit Sub
  loc_120E35B: ' Referenced from: 120DEF0
  loc_120E363: Set var_88 = Err()
  loc_120E369: Call 0.Method_arg_2C (var_98)
  loc_120E38A: MsgBox(CVar(var_98), &H40, "Information", var_FC, var_128)
  loc_120E39D: Exit Sub
  loc_120E39E: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10DD438
  'Data Table: 467800
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_8C As DataGrid
  loc_10DD156: If (CLng(Shift) = &H1B) Then
  loc_10DD159:   Call Proc_341_22_EB76FC()
  loc_10DD15E:   Exit Sub
  loc_10DD15F: End If
  loc_10DD162: var_88 = KeyCode
  loc_10DD16D: If (var_88 = CInt(1)) Then
  loc_10DD17B:   Set var_A8 = Me.Txt
  loc_10DD18D:   Set var_9C = Me.FGPoint
  loc_10DD198:   Set var_98 = Nothing
  loc_10DD1C6:   Proc_6_69_134A630(Me.DGRestType, var_A8, KeyCode, global_64, Shift, 0)
  loc_10DD1E5:   var_B0 = Me.RecordCount
  loc_10DD235:   If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10DD23C:     Set var_98 = Me.DGRestType
  loc_10DD243:     Set var_90 = Me.FGPoint
  loc_10DD25B:     Proc_6_138_106E830(var_98, global_64, KeyCode, var_90, 1)
  loc_10DD269:   End If
  loc_10DD26C: Else
  loc_10DD274:   If (var_88 = CInt(2)) Then
  loc_10DD299:     Set var_8C = Me.Txt
  loc_10DD29F:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, var_98)
  loc_10DD2A7:     var_9C = var_90.Left
  loc_10DD2B9:     Set var_98 = Me.Txt
  loc_10DD2BF:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_B4)
  loc_10DD2C7:     0 = var_9C.Top
  loc_10DD2D9:     Set var_A4 = Me.Txt
  loc_10DD2DF:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_10DD2E7:     var_B8 = var_A8.Height
  loc_10DD2F9:     Set var_AC = Me.Txt
  loc_10DD2FF:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_10DD307:     var_C0 = var_BC.Width
  loc_10DD353:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_10DD377:   End If
  loc_10DD377: End If
  loc_10DD3B0: If ((CBool(Me.DGRestType.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_10DD3D1:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_10DD3DA:     Call Txt_Validate(KeyCode)
  loc_10DD3E5:     If (var_86 = &HFF) Then
  loc_10DD3E8:       Exit Sub
  loc_10DD3E9:     End If
  loc_10DD3EF:     Proc_6_75_E5335C(Shift, arg_14, var_86, CInt(var_B0))
  loc_10DD3F7:   Else
  loc_10DD40C:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10DD415:       Proc_6_75_E5335C(Shift, arg_14, CInt(((var_B4 + var_B8) + CDbl(&H19))))
  loc_10DD41D:     Else
  loc_10DD427:       If (CLng(Shift) = &H26) Then
  loc_10DD430:         Proc_6_76_E533C8(Shift, arg_14, CInt(var_C0))
  loc_10DD435:       End If
  loc_10DD435:     End If
  loc_10DD435:   End If
  loc_10DD435: End If
  loc_10DD435: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE0DE0
  'Data Table: 467800
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EE0D2B: Proc_6_58_E06050(arg_10)
  loc_EE0D36: Proc_6_133_E7FB08(var_94)
  loc_EE0D53: If (KeyAscii = CInt(1)) Then
  loc_EE0D72:   If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EE0D9F:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, CInt(Me.DGRestType.Visible), "Name")
  loc_EE0DD1:     Proc_6_138_106E830(Me.DGRestType, global_64, KeyAscii, Me.FGPoint)
  loc_EE0DDF:   End If
  loc_EE0DDF: End If
  loc_EE0DDF: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E890B4
  'Data Table: 467800
  loc_E89056: If (KeyCode = CInt(2)) Then
  loc_E89074:   If (Me.FrmList.Visible = &HFF) Then
  loc_E890A3:     Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode)
  loc_E890B3:   End If
  loc_E890B3: End If
  loc_E890B3: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4EDFC
  'Data Table: 467800
  loc_E4EDDA: Set var_88 = Me.Txt
  loc_E4EDE0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4EDEE: Proc_6_73_E23294(var_8C)
  loc_E4EDFA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '107EB10
  'Data Table: 467800
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As TextBox
  loc_107E87C: On Error Goto loc_107EACB
  loc_107E882: var_86 = Cancel
  loc_107E88D: If (var_86 = CInt(0)) Then
  loc_107E89A:   Set var_8C = Me.Txt
  loc_107E8A0:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107E8C0:   Set var_98 = Me.Txt
  loc_107E8C6:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_107E8CE:   var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_107E8E4: Else
  loc_107E8EC:   If (var_86 = CInt(1)) Then
  loc_107E8FC:     Set var_8C = Me.Txt
  loc_107E902:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107E921:     If (var_90.Text <> vbNullString) Then
  loc_107E95F:       Set var_94 = Me.Txt
  loc_107E965:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_107E96D:       var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_107E9A0:       var_90 = Me.Fields.Item("Code")
  loc_107E9BE:       Set var_94 = Me.Txt
  loc_107E9C4:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_107E9CC:       var_98.Tag = CStr(var_90.Value)
  loc_107E9E5:     Else
  loc_107E9F2:       Set var_8C = Me.Txt
  loc_107E9F8:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107EA00:       var_90.Text = vbNullString
  loc_107EA19:       Set var_8C = Me.Txt
  loc_107EA1F:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107EA27:       var_90.Tag = vbNullString
  loc_107EA33:     End If
  loc_107EA36:   Else
  loc_107EA3E:     If (var_86 = CInt(2)) Then
  loc_107EA4E:       Set var_8C = Me.Txt
  loc_107EA54:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107EA73:       If (var_90.Text <> vbNullString) Then
  loc_107EA94:         var_A0 = Me.ListView.SelectedItem.Text
  loc_107EAA6:         Set var_94 = Me.Txt
  loc_107EAAC:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_107EAB4:         var_98.Text = var_A0
  loc_107EACA:       End If
  loc_107EACA:     End If
  loc_107EACA:   End If
  loc_107EACA: End If
  loc_107EACA: Exit Sub
  loc_107EACB: ' Referenced from: 107E87C
  loc_107EAD3: Set var_8C = Err()
  loc_107EAD9: Call 0.Method_arg_2C (var_A0)
  loc_107EAFA: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_107EB0D: Exit Sub
  loc_107EB0E: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_9 'F41C14
  'Data Table: 467800
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F41B0B: Me.DGRestType.Visible = False
  loc_F41B2A: If (Me.RecordCount > 0) Then
  loc_F41B69:   Set var_B4 = Me.Txt
  loc_F41B6F:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F41B77:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F41BAA:   var_B0 = Me.Fields.Item("Code")
  loc_F41BC9:   Set var_B4 = Me.Txt
  loc_F41BCF:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F41BD7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F41BED: End If
  loc_F41BF8: Set var_A8 = Me.Txt
  loc_F41BFE: Call 0.Method_DGRestType_UnknownEvent_90 (CInt(1))
  loc_F41C06: var_B0.SetFocus
  loc_F41C12: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_1F 'E75570
  'Data Table: 467800
  loc_E7552E: Proc_6_153_E91D24(Me.DGRestType, arg_14)
  loc_E75545: Set var_8C = Me.FGPoint
  loc_E75561: Proc_6_138_106E830(Me.DGRestType, global_64, CInt(1))
  loc_E7556F: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E17724
  'Data Table: 467800
  loc_E17719: Me.Global.Unload Me
  loc_E17721: Exit Sub
End Sub

Private Sub Form_Load() 'EF5574
  'Data Table: 467800
  Dim var_94 As String
  Dim unk_467810 As Connection15
  loc_EF54B0: On Error Goto loc_EF556C
  loc_EF54DC: var_94 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where Code<>'" & MemVar_1F95078 & "RS' And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_EF54E5: unk_467810.Execute var_94, var_B4, -1
  loc_EF5518: CVarUnk
  loc_EF551D: VerifyVarObj
  loc_EF5523: Set var_B8 = Me.DGRestType
  loc_EF5529: LateIdStAd
  loc_EF5540: Set var_B8 = Me.CmdSave
  loc_EF5546: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_EF554E: Call Proc_341_18_12AE9AC(var_B8, var_B8)
  loc_EF555A: Call 0.Method_arg_7C (CDbl(0))
  loc_EF5566: Call 0.Method_arg_74 (CDbl(0))
  loc_EF556B: Exit Sub
  loc_EF556C: ' Referenced from: EF54B0
  loc_EF556C: Proc_6_60_E63754(var_B8)
  loc_EF5571: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E28030
  'Data Table: 467800
  loc_E28013: Set global_60 = Nothing
  loc_E28025: Set global_64 = Nothing
  loc_E2802C: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E280E8
  'Data Table: 467800
  loc_E280C0: On Error Goto loc_E280DF
  loc_E280D7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E280DF: ' Referenced from: E280C0
  loc_E280DF: Proc_6_60_E63754(Shift)
  loc_E280E4: Exit Sub
End Sub

Private Sub CmdFill_UnknownEvent_9 'EF2A04
  'Data Table: 467800
  Dim var_A8 As Variant
  loc_EF292C: Call Proc_341_22_EB76FC()
  loc_EF293A: Set var_A8 = Me.CmdFill
  loc_EF2940: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_EF2955: Me.Label1.Caption = "Processing..."
  loc_EF2967: Me.Label1.Refresh
  loc_EF296F: Call Proc_341_18_12AE9AC()
  loc_EF2974: Call Proc_341_19_1222AA0()
  loc_EF298C: Me.GridSel.Row = 1
  loc_EF29A7: Me.GridSel.Col = 0
  loc_EF29B3: Set var_A8 = Me.GridSel
  loc_EF29D1: Me.Label1.Caption = vbNullString
  loc_EF29E3: Me.Label1.Refresh
  loc_EF29F3: Set var_A8 = Me.CmdFill
  loc_EF29F9: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(True)
  loc_EF2A01: Exit Sub
  loc_EF2A02: GridSel.DispID_8001() = 
End Sub

Private Sub FGPoint_UnknownEvent_9 'E2D784
  'Data Table: 467800
  loc_E2D778: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_E2D77B:   Call DGRestType_UnknownEvent_9()
  loc_E2D780: End If
  loc_E2D780: Exit Sub
End Sub

Public Sub Proc_341_18_12AE9AC
  'Data Table: 467800
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_12AE386: Me.GridSel.Rows = 1
  loc_12AE39A: Me.GridSel.Cols = &HA
  loc_12AE39F: var_98 = 0
  loc_12AE3AB: var_BC = CVar(CLng(0)) 'Long
  loc_12AE3B0: var_DC = "O"
  loc_12AE3B9: LateIdCallSt
  loc_12AE3C4: var_98 = CVar(CLng(0)) 'Long
  loc_12AE3C9: var_BC = &H258
  loc_12AE3D5: LateIdCallSt
  loc_12AE3DD: var_98 = 0
  loc_12AE3E9: var_BC = CVar(CLng(1)) 'Long
  loc_12AE3EE: var_DC = "RCode"
  loc_12AE3F7: LateIdCallSt
  loc_12AE402: var_98 = CVar(CLng(1)) 'Long
  loc_12AE40D: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE414: LateIdCallSt
  loc_12AE41F: var_98 = CVar(CLng(1)) 'Long
  loc_12AE42A: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE431: LateIdCallSt
  loc_12AE43C: var_98 = CVar(CLng(1)) 'Long
  loc_12AE441: var_BC = 0
  loc_12AE44D: LateIdCallSt
  loc_12AE455: var_98 = 0
  loc_12AE461: var_BC = CVar(CLng(2)) 'Long
  loc_12AE466: var_DC = "SerialNo"
  loc_12AE46F: LateIdCallSt
  loc_12AE47A: var_98 = CVar(CLng(2)) 'Long
  loc_12AE485: var_BC = CVar(CInt(7)) 'Integer
  loc_12AE48C: LateIdCallSt
  loc_12AE497: var_98 = CVar(CLng(2)) 'Long
  loc_12AE4A2: var_BC = CVar(CInt(7)) 'Integer
  loc_12AE4A9: LateIdCallSt
  loc_12AE4B4: var_98 = CVar(CLng(2)) 'Long
  loc_12AE4B9: var_BC = 0
  loc_12AE4C5: LateIdCallSt
  loc_12AE4CD: var_98 = 0
  loc_12AE4D9: var_BC = CVar(CLng(3)) 'Long
  loc_12AE4DE: var_DC = "Category"
  loc_12AE4E7: LateIdCallSt
  loc_12AE4F2: var_98 = CVar(CLng(3)) 'Long
  loc_12AE4FD: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE504: LateIdCallSt
  loc_12AE50F: var_98 = CVar(CLng(3)) 'Long
  loc_12AE51A: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE521: LateIdCallSt
  loc_12AE52C: var_98 = CVar(CLng(3)) 'Long
  loc_12AE531: var_BC = &HBB8
  loc_12AE53D: LateIdCallSt
  loc_12AE545: var_98 = 0
  loc_12AE551: var_BC = CVar(CLng(4)) 'Long
  loc_12AE556: var_DC = "Member"
  loc_12AE55F: LateIdCallSt
  loc_12AE56A: var_98 = CVar(CLng(4)) 'Long
  loc_12AE575: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE57C: LateIdCallSt
  loc_12AE587: var_98 = CVar(CLng(4)) 'Long
  loc_12AE592: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE599: LateIdCallSt
  loc_12AE5A4: var_98 = CVar(CLng(4)) 'Long
  loc_12AE5A9: var_BC = &HDAC
  loc_12AE5B5: LateIdCallSt
  loc_12AE5BD: var_98 = 0
  loc_12AE5C9: var_BC = CVar(CLng(6)) 'Long
  loc_12AE5CE: var_DC = "Name"
  loc_12AE5D7: LateIdCallSt
  loc_12AE5E2: var_98 = CVar(CLng(6)) 'Long
  loc_12AE5ED: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE5F4: LateIdCallSt
  loc_12AE5FF: var_98 = CVar(CLng(6)) 'Long
  loc_12AE60A: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE611: LateIdCallSt
  loc_12AE61C: var_98 = CVar(CLng(6)) 'Long
  loc_12AE621: var_BC = &HDAC
  loc_12AE62D: LateIdCallSt
  loc_12AE635: var_98 = 0
  loc_12AE641: var_BC = CVar(CLng(5)) 'Long
  loc_12AE646: var_DC = "CardNo"
  loc_12AE64F: LateIdCallSt
  loc_12AE65A: var_98 = CVar(CLng(5)) 'Long
  loc_12AE665: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE66C: LateIdCallSt
  loc_12AE677: var_98 = CVar(CLng(5)) 'Long
  loc_12AE682: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE689: LateIdCallSt
  loc_12AE694: var_98 = CVar(CLng(5)) 'Long
  loc_12AE699: var_BC = &H5DC
  loc_12AE6A5: LateIdCallSt
  loc_12AE6AD: var_98 = 0
  loc_12AE6B9: var_BC = CVar(CLng(7)) 'Long
  loc_12AE6BE: var_DC = "Curr Bal"
  loc_12AE6C7: LateIdCallSt
  loc_12AE6D2: var_98 = CVar(CLng(7)) 'Long
  loc_12AE6DD: var_BC = CVar(CInt(7)) 'Integer
  loc_12AE6E4: LateIdCallSt
  loc_12AE6EF: var_98 = CVar(CLng(7)) 'Long
  loc_12AE6FA: var_BC = CVar(CInt(7)) 'Integer
  loc_12AE701: LateIdCallSt
  loc_12AE70C: var_98 = CVar(CLng(7)) 'Long
  loc_12AE711: var_BC = &H4B0
  loc_12AE71D: LateIdCallSt
  loc_12AE725: var_98 = 0
  loc_12AE731: var_BC = CVar(CLng(8)) 'Long
  loc_12AE736: var_DC = "Secur Bal"
  loc_12AE73F: LateIdCallSt
  loc_12AE74A: var_98 = CVar(CLng(8)) 'Long
  loc_12AE755: var_BC = CVar(CInt(7)) 'Integer
  loc_12AE75C: LateIdCallSt
  loc_12AE767: var_98 = CVar(CLng(8)) 'Long
  loc_12AE772: var_BC = CVar(CInt(7)) 'Integer
  loc_12AE779: LateIdCallSt
  loc_12AE784: var_98 = CVar(CLng(8)) 'Long
  loc_12AE789: var_BC = &H4B0
  loc_12AE795: LateIdCallSt
  loc_12AE79D: var_98 = 0
  loc_12AE7A9: var_BC = CVar(CLng(9)) 'Long
  loc_12AE7AE: var_DC = "Delivery Boy"
  loc_12AE7B7: LateIdCallSt
  loc_12AE7C2: var_98 = CVar(CLng(9)) 'Long
  loc_12AE7CD: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE7D4: LateIdCallSt
  loc_12AE7DF: var_98 = CVar(CLng(9)) 'Long
  loc_12AE7EA: var_BC = CVar(CInt(1)) 'Integer
  loc_12AE7F1: LateIdCallSt
  loc_12AE7FC: var_98 = CVar(CLng(9)) 'Long
  loc_12AE801: var_BC = 0
  loc_12AE80D: LateIdCallSt
  loc_12AE815: var_98 = vbNullString
  loc_12AE81F: Set var_AC = Me.GridSel
  loc_12AE843: Me.GridSel.FixedRows = 1
  loc_12AE84D: Set var_88 = Nothing 
  loc_12AE861: ReDim Preserve global_56(0 To 0)
  loc_12AE878: global_56(0) = 0
  loc_12AE88C: Me.GridSel.Height = CVar(CDbl(6000))
  loc_12AE8A7: Me.GridSel.Width = CVar(CDbl(15000))
  loc_12AE8AF: var_98 = 0
  loc_12AE8E0: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H1E))
  loc_12AE8EF: var_98 = 0
  loc_12AE920: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &H1E))
  loc_12AE951: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&HF))
  loc_12AE982: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&HF))
  loc_12AE9A1: Me.Check1.Value = CInt(0)
  loc_12AE9A9: Exit Sub
End Sub

Public Sub Proc_341_19_1222AA0
  'Data Table: 467800
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As String
  Dim unk_467810 As Connection15
  Dim var_90 As Recordset15
  Dim var_F0 As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  loc_12225C5: Set var_B4 = Me.GridSel
  loc_12225CB: var_B4.Row = 1
  loc_12225E7: var_B8 = "Select SC.Code,SC.CardNo,SC.Name,SC.SerialNo,SC.CurrBal,SC.SecurBal,S.Name MemberName,M.Name MemCategory From SmartCardRegistration SC Left Join SubGroup S On SC.MemberCode=S.SubCode Inner Join MemCatMast M On S.CompanyType=M.Code Where (SC.LOGSITE_CODE='" & MemVar_1F95078
  loc_12225F7: unk_467810.Execute var_B8 & "' or SC.LOGSITE_CODE='HO') And S.ActiveYN = 0 And (CurrBal <> 0 Or SecurBal <> 0)", var_CC, -1
  loc_1222602: Set var_90 = var_B4
  loc_1222626: If (var_90.RecordCount > 0) Then
  loc_1222629:   ' Referenced from: 1222A2E
  loc_1222638:   If Not(var_90.EOF) Then
  loc_122263F:     Set var_D8 = Me.GridSel
  loc_1222642:     var_A0 = vbNullString
  loc_122269B:     var_130 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Code")), CVar(CLng(1)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_12226A2:     LateIdCallSt
  loc_1222702:     var_130 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("SerialNo")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_D8)) 'String
  loc_1222709:     LateIdCallSt
  loc_1222769:     var_130 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("MemCategory")), CVar(CLng(3)), CVar(CLng(Me.GridSel.Row)), var_D8, var_130)) 'String
  loc_1222770:     LateIdCallSt
  loc_12227D0:     var_130 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("MemberName")), CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)), var_D8, var_130)) 'String
  loc_12227D7:     LateIdCallSt
  loc_1222837:     var_130 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Name")), CVar(CLng(6)), CVar(CLng(Me.GridSel.Row)), var_D8, var_130)) 'String
  loc_122283E:     LateIdCallSt
  loc_1222860:     var_F0 = Me.GridSel.Row
  loc_122289E:     var_130 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("CardNo")), CVar(CLng(5)), CVar(CLng(var_F0)), var_D8, var_130)) 'String
  loc_12228A5:     LateIdCallSt
  loc_1222903:     Proc_6_47_EF6560(var_F0, CVar(var_90.Fields.Item("CurrBal")), CVar(CLng(7)), CVar(CLng(Me.GridSel.Row)), var_D8)
  loc_1222913:     LateIdCallSt
  loc_1222973:     Proc_6_47_EF6560(var_F0, CVar(var_90.Fields.Item("SecurBal")), CVar(CLng(8)), CVar(CLng(Me.GridSel.Row)), var_D8, CVar(CStr(var_F0)))
  loc_122297C:     var_150 = CVar(CStr(var_F0)) 'String
  loc_1222983:     LateIdCallSt
  loc_122299F:     Set var_D8 = Nothing 
  loc_12229B5:     Me.GridSel.Col = CVar(CLng(0))
  loc_12229CD:     Me.GridSel.CellFontName = "WINGDINGS"
  loc_12229E7:     Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1222A08:     var_A0 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_1222A17:     Me.GridSel.Row = CVar(CDbl(&HE))
  loc_1222A29:     var_90.MoveNext
  loc_1222A2E:     GoTo loc_1222629
  loc_1222A31:   End If
  loc_1222A39:   Set var_B4 = Me.CmdSave
  loc_1222A3F:   Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_1222A4A: Else
  loc_1222A5D:   Me.GridSel.Rows = 2
  loc_1222A6E:   Set var_B4 = Me.CmdSave
  loc_1222A74:   Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_1222A7C: End If
  loc_1222A8F: Me.GridSel.FixedRows = 1
  loc_1222A9C: Set var_90 = Nothing
  loc_1222A9F: Exit Sub
End Sub

Public Sub Proc_341_20_F99ED8(arg_C, arg_10, arg_14, arg_18, arg_1C) 'F99ED8
  'Data Table: 467800
  Dim var_C4 As Variant
  Dim var_F8 As Variant
  Dim unk_467810 As Connection15
  loc_F99DA9: If ((arg_10 <> vbNullString) And (arg_C <> vbNullString)) Then
  loc_F99DC0:   var_C4 = CVar("Agnst. Auto Refund " & arg_C & "/") 'String
  loc_F99E1F:   Proc_275_17_1187538(arg_C, arg_10, "Refund", MemVar_1F950EC, arg_18, arg_1C, CStr(var_C4 & Trim(arg_14)))
  loc_F99E36:   Proc_6_17_EAAE40(var_C4, CVar(Proc_6_14_EF402C(MemVar_1F950C8, CDate(Proc_6_14_EF402C()), "A")), var_90)
  loc_F99E46:   Proc_6_17_EAAE40(var_118, arg_C)
  loc_F99E7A:   var_F8 = CVar("Update SmartCardRegistration Set LastTransAmt=" & CStr(arg_18) & ",LastTransDate=") & var_C4 & ",CurrBal=0,SecurBal=0 Where Code=" 
  loc_F99EAB:   unk_467810.Execute CStr(var_F8 & var_118 & " And LogSite_Code='" & CVar(MemVar_1F95078) & "'"), var_1AC, -1
  loc_F99ED5: End If
  loc_F99ED5: Exit Sub
  loc_F99ED6: var_1B0(arg_18) = arg_1C
End Sub

Public Sub Proc_341_21_1228FB8(arg_C, arg_10) '1228FB8
  'Data Table: 467800
  Dim var_96 As Integer
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_9A As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  Dim var_1F4 As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_248 As Variant
  Dim var_25C As Variant
  Dim var_27C As Variant
  Dim var_2A0 As Variant
  loc_1228ADA: On Error Goto loc_1228FAD
  loc_1228ADF: var_96 = 0
  loc_1228AEB: If (CInt(arg_10) = 1) Then
  loc_1228B13:   For var_B4 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_98 = var_B4 'Integer
  loc_1228B1C:     var_9A = var_98
  loc_1228B23:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_1228B28:     var_E4 = 2
  loc_1228B57:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_1228B5E:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_1228B66:       var_E4 = CVar(CLng(1)) 'Long
  loc_1228B85:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_1228B8D:       var_128 = CVar(CLng(2)) 'Long
  loc_1228BAC:       var_15C = CVar(CLng(var_9A)) 'Long
  loc_1228BB4:       var_17C = CVar(CLng(5)) 'Long
  loc_1228BD3:       var_1B0 = CVar(CLng(var_9A)) 'Long
  loc_1228BDB:       var_1D0 = CVar(CLng(7)) 'Long
  loc_1228C04:       var_204 = CVar(CLng(var_9A)) 'Long
  loc_1228C0C:       var_224 = CVar(CLng(8)) 'Long
  loc_1228C35:       var_25C = CVar(CLng(var_9A)) 'Long
  loc_1228C3D:       var_27C = CVar(CLng(0)) 'Long
  loc_1228C4C:       var_2A0 = Me.GridSel.TextMatrix)
  loc_1228C81:       Call Proc_341_20_F99ED8(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)), Val(CStr(Me.GridSel.TextMatrix))), Val(CStr(Me.GridSel.TextMatrix))))
  loc_1228CB5:       var_96 = &HFF
  loc_1228CB8:     End If
  loc_1228CBB:   Next var_B4 'Integer
  loc_1228CC3: Else
  loc_1228CCB:   CRefVarAry
  loc_1228CD3:   For var_2D4 = 0 To CInt(UBound(arg_C, 1)):   var_98 = var_2D4 'Integer
  loc_1228CF4:     If (arg_C(var_98) = 0) Then
  loc_1228CF7:       GoTo loc_1228EE5
  loc_1228CFA:     End If
  loc_1228D0B:     var_9A = CInt(arg_C(var_98))
  loc_1228D15:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_1228D1A:     var_E4 = 0
  loc_1228D49:     If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_1228D50:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_1228D55:       var_E4 = 2
  loc_1228D84:       If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_1228D8B:         var_C4 = CVar(CLng(var_9A)) 'Long
  loc_1228D93:         var_E4 = CVar(CLng(1)) 'Long
  loc_1228DB2:         var_108 = CVar(CLng(var_9A)) 'Long
  loc_1228DBA:         var_128 = CVar(CLng(2)) 'Long
  loc_1228DD9:         var_15C = CVar(CLng(var_9A)) 'Long
  loc_1228DE1:         var_17C = CVar(CLng(5)) 'Long
  loc_1228DF0:         var_1A0 = Me.GridSel.TextMatrix)
  loc_1228E00:         var_1B0 = CVar(CLng(var_9A)) 'Long
  loc_1228E08:         var_1D0 = CVar(CLng(7)) 'Long
  loc_1228E17:         var_1F4 = Me.GridSel.TextMatrix)
  loc_1228E31:         var_204 = CVar(CLng(var_9A)) 'Long
  loc_1228E39:         var_224 = CVar(CLng(8)) 'Long
  loc_1228E48:         var_248 = Me.GridSel.TextMatrix)
  loc_1228E62:         var_25C = CVar(CLng(var_9A)) 'Long
  loc_1228E6A:         var_27C = CVar(CLng(0)) 'Long
  loc_1228E79:         var_2A0 = Me.GridSel.TextMatrix)
  loc_1228EAE:         Call Proc_341_20_F99ED8(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)), CStr(var_1A0), Val(CStr(var_1F4)), Val(CStr(var_248)))
  loc_1228EE2:         var_96 = &HFF
  loc_1228EE5:         ' Referenced from:   1228CF7
  loc_1228EE5:       End If
  loc_1228EE5:     End If
  loc_1228EE8:   Next var_2D4 'Integer
  loc_1228EED: End If
  loc_1228EFD: If ((var_96 = 0) And (CInt(arg_10) = 0)) Then
  loc_1228F00:   var_C4 = 0
  loc_1228F09:   var_E4 = 1
  loc_1228F1C:   var_B0 = Me.GridSel.TextMatrix)
  loc_1228F44:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_1A0, var_1F4, var_248)
  loc_1228F6F:   Me.GridSel.Row = 1
  loc_1228F77:   var_C4 = 0
  loc_1228F8A:   Me.GridSel.Col = var_C4
  loc_1228F96:   Set var_A0 = Me.GridSel
  loc_1228FA7: End If
  loc_1228FA7: Proc_341_21_1228FB8 = GridSel.DispID_8001
  loc_1228FAD: ' Referenced from: 1228ADA
  loc_1228FAD: Proc_6_60_E63754(var_B0, var_E4)
  loc_1228FB2: Proc_341_21_1228FB8 = var_C4
End Sub

Public Sub Proc_341_22_EB76FC
  'Data Table: 467800
  loc_EB7678: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EB768A:   Me.DGRestType.Visible = False
  loc_EB7692: End If
  loc_EB76AE: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB76C0:   Me.FGPoint.Visible = False
  loc_EB76C8: End If
  loc_EB76E3: If (Me.FrmList.Visible = &HFF) Then
  loc_EB76F2:   Me.FrmList.Visible = False
  loc_EB76FA: End If
  loc_EB76FA: Exit Sub
End Sub
