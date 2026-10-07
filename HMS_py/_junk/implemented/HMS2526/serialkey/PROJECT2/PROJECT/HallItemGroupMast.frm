VERSION 5.00
Begin VB.Form HallItemGroupMast
  Caption = "Item Group Entry"
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
  ClientWidth = 8880
  ClientHeight = 4410
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4065
    Top = 2025
    Width = 1515
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 10
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
    Width = 8880
    Height = 450
    TabIndex = 8
  End
  Begin DataGrid DGHelp
    Left = 4425
    Top = 4455
    Width = 6645
    Height = 2280
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4065
    Top = 1710
    Width = 3690
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin MSFlexGrid FGPoint
    Left = -135
    Top = 3960
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 4
  End
  Begin Label LblName
    Caption = "Status"
    Index = 7
    ForeColor = &HFF0000&
    Left = 2955
    Top = 2055
    Width = 585
    Height = 240
    TabIndex = 9
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 510
    Width = 180
    Height = 540
    TabIndex = 7
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 135
    Top = 8895
    Width = 2430
    Height = 285
    TabIndex = 6
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
    Left = 150
    Top = 8565
    Width = 2520
    Height = 255
    TabIndex = 5
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
  Begin Label LblName
    Caption = "Item Group"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2955
    Top = 1710
    Width = 1065
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

Attribute VB_Name = "HallItemGroupMast"

Private global_88 As Integer

Private Sub Txt_GotFocus(Index As Integer) '1009EAC
  'Data Table: 44A6C8
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_1009CBA: Set var_88 = Me.Txt
  loc_1009CC0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1009CCE: Proc_6_74_E23240(var_8C)
  loc_1009CDA: Call Proc_117_33_E84048(var_8C)
  loc_1009CE2: var_92 = Index
  loc_1009CED: If (var_92 = CInt(0)) Then
  loc_1009D07:   If (Me.RecordCount > 0) Then
  loc_1009D15:     Set var_8C = Me.FGPoint
  loc_1009D2D:     Proc_6_137_1192FDC(Me.DGHelp, global_60, Index)
  loc_1009D3B:   End If
  loc_1009D89:   Set var_88 = Me.Txt
  loc_1009D8F:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1009D97:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1009DAF:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1009DBF:     Set var_88 = Me.Txt
  loc_1009DC5:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1009DCD:     var_8C.Tag = vbNullString
  loc_1009DD9:     Exit Sub
  loc_1009DDA:   End If
  loc_1009DE7:   Set var_88 = Me.Txt
  loc_1009DED:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1009DF5:   var_A0 = var_8C.Text
  loc_1009E07:   var_B0 = "Name"
  loc_1009E42:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1009E4B:     Me.MoveFirst
  loc_1009E6E:     Set var_88 = Me.Txt
  loc_1009E74:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_1009E7C:     0 = var_8C.Text
  loc_1009E95:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_1009EAA:   End If
  loc_1009EAA: End If
  loc_1009EAA: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FC8FD4
  'Data Table: 44A6C8
  Dim Me As Recordset15
  loc_FC8E2E: If (CLng(Shift) = &H1B) Then
  loc_FC8E31:   Call Proc_117_33_E84048()
  loc_FC8E36:   Exit Sub
  loc_FC8E37: End If
  loc_FC8E45: If (KeyCode = CInt(0)) Then
  loc_FC8E65:   Set var_9C = Me.FGPoint
  loc_FC8E97:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(0), global_60, Shift)
  loc_FC8F04:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FC8F0B:     Set var_9C = Me.DGHelp
  loc_FC8F2A:     Proc_6_138_106E830(var_9C, global_60, KeyCode, Me.FGPoint, 0)
  loc_FC8F38:   End If
  loc_FC8F38: End If
  loc_FC8F54: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FC8F75:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(0))) Then
  loc_FC8F7B:     Call Proc_117_34_E905E0(KeyCode, 1, var_9C)
  loc_FC8F83:   Else
  loc_FC8FA1:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_FC8FAA:       Proc_6_75_E5335C(Shift, arg_14)
  loc_FC8FB2:     Else
  loc_FC8FC5:       If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_FC8FCE:         Proc_6_76_E533C8(Shift, arg_14)
  loc_FC8FD3:       End If
  loc_FC8FD3:     End If
  loc_FC8FD3:   End If
  loc_FC8FD3: End If
  loc_FC8FD3: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EFFF00
  'Data Table: 44A6C8
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_EFFE36: If (KeyAscii = CInt(1)) Then
  loc_EFFE62:   If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_EFFE72:     Set var_CC = Me.Txt
  loc_EFFE78:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFFE80:     var_D0.Text = "Active"
  loc_EFFE8F:   Else
  loc_EFFE96:     var_98 = Chr(CLng(arg_10))
  loc_EFFEB8:     If (Ucase(var_98) = "N") Then
  loc_EFFEC8:       Set var_CC = Me.Txt
  loc_EFFECE:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFFED6:       var_D0.Text = "Non Active"
  loc_EFFEE2:     End If
  loc_EFFEE2:   End If
  loc_EFFEE4:   arg_10 = 0
  loc_EFFEE7: End If
  loc_EFFEED: Proc_6_133_E7FB08(var_98, arg_10)
  loc_EFFEF6: arg_10 = CInt(var_98)
  loc_EFFEFC: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC2320
  'Data Table: 44A6C8
  loc_EC2292: If (KeyCode = CInt(0)) Then
  loc_EC22B1:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC22BE:     var_A4 = "Name"
  loc_EC22DD:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_60)
  loc_EC230F:     Proc_6_138_106E830(Me.DGHelp, global_60, KeyCode, Me.FGPoint)
  loc_EC231D:   End If
  loc_EC231D: End If
  loc_EC231D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4741C
  'Data Table: 44A6C8
  loc_E473FA: Set var_88 = Me.Txt
  loc_E47400: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4740E: Proc_6_73_E23294(var_8C)
  loc_E4741A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F09FFC
  'Data Table: 44A6C8
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As TextBox
  loc_F09F1F: var_86 = Cancel
  loc_F09F2A: If (var_86 = CInt(0)) Then
  loc_F09F30:   Call Proc_117_32_10B3F10(var_88)
  loc_F09F3B:   If (var_88 = &HFF) Then
  loc_F09F40:     arg_10 = &HFF
  loc_F09F43:     Exit Sub
  loc_F09F44:   End If
  loc_F09F49:   global_88 = &HFF
  loc_F09F4F: Else
  loc_F09F57:   If (var_86 = CInt(1)) Then
  loc_F09F64:     Set var_8C = Me.Txt
  loc_F09F6A:     Call 0.Method_Txt_Validate0 (Cancel, var_90, global_88)
  loc_F09FA5:     If (Ucase(Left(CVar(var_90), 1)) = "Active") Then
  loc_F09FB5:       Set var_8C = Me.Txt
  loc_F09FBB:       Call 0.Method_Txt_Validate0 (Cancel, var_90, "Active")
  loc_F09FC3:       var_90.Text = arg_10
  loc_F09FD2:     Else
  loc_F09FDF:       Set var_8C = Me.Txt
  loc_F09FE5:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F09FED:       var_90.Text = "Non Active"
  loc_F09FF9:     End If
  loc_F09FF9:   End If
  loc_F09FF9: End If
  loc_F09FF9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EABACC
  'Data Table: 44A6C8
  Dim var_8C As Label
  Dim var_94 As TextBox
  loc_EABA40: On Error Goto loc_EABAC6
  loc_EABA66: Call Proc_117_29_E7A97C(Proc_5_1_100EC1C("ADD", Me))
  loc_EABA71: Call Proc_117_30_EDB428(global_56)
  loc_EABA83: Me.LblUser.Caption = vbNullString
  loc_EABA98: Me.LblLDt.Caption = vbNullString
  loc_EABAAB: Set var_8C = Me.Txt
  loc_EABAB1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EABAB9: var_94.SetFocus
  loc_EABAC5: Exit Sub
  loc_EABAC6: ' Referenced from: EABA40
  loc_EABAC6: Proc_6_60_E63754(var_94)
  loc_EABACB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC595C
  'Data Table: 44A6C8
  loc_EC58C4: On Error Goto loc_EC5954
  loc_EC58FE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC590D:   Set var_10C = Me
  loc_EC5924:   Call Proc_117_29_E7A97C(Proc_5_1_100EC1C("INI", var_10C))
  loc_EC592F:   Call Proc_117_33_E84048(global_56)
  loc_EC5934:   Call Proc_117_31_11E6268()
  loc_EC593C: Else
  loc_EC5942:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC594A:   Call var_10C.SetFocus
  loc_EC5953: End If
  loc_EC5953: Exit Sub
  loc_EC5954: ' Referenced from: EC58C4
  loc_EC5954: Proc_6_60_E63754()
  loc_EC5959: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '112EEC0
  'Data Table: 44A6C8
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim unk_44A6DC As Connection15
  Dim var_114 As Variant
  Dim var_B0 As String
  loc_112EB78: On Error Goto loc_112EE70
  loc_112EB89: If (Proc_183_56_FE8B08(global_56) = &HFF) Then
  loc_112EB8C:   Exit Sub
  loc_112EB8D: End If
  loc_112EBBF: var_D0 = "Item Master"
  loc_112EC07: If (Proc_6_108_101061C(MemVar_1F95044, "ItemMast", "ItemGroup", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_112EC0A:   Exit Sub
  loc_112EC0B: End If
  loc_112EC42: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_112EC4E:   unk_44A6DC.BeginTrans var_CC
  loc_112EC64:   var_94 = Me.Bookmark 'Variant
  loc_112ECB0:   var_114 = "Delete From ItemGrp Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_112ECBE:   unk_44A6DC.Execute CStr(var_114), var_134, -1
  loc_112ED09:   var_164 = 0
  loc_112ED1C:   var_15C = 0
  loc_112ED27:   var_158 = 0
  loc_112ED3A:   var_150 = 0
  loc_112ED45:   var_14C = 0
  loc_112ED58:   var_144 = 0
  loc_112ED98:   var_B0 = "ItemGrp"
  loc_112EDA1:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B0, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_112EDCF:   unk_44A6DC.CommitTrans
  loc_112EDDF:   Me.Requery -1
  loc_112EDEF:   Me.Requery -1
  loc_112EE0F:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_112EE1C:     Me.Bookmark = var_94
  loc_112EE24:   Else
  loc_112EE38:     If (Me.EOF = 0) Then
  loc_112EE41:       Me.MoveLast
  loc_112EE46:     End If
  loc_112EE46:   End If
  loc_112EE46:   Call Proc_117_31_11E6268(var_144, 0, var_14C, var_150)
  loc_112EE67:   Proc_5_0_1107AD0(&HFF, Me, global_56, 0)
  loc_112EE6F: End If
  loc_112EE6F: Exit Sub
  loc_112EE70: ' Referenced from: 112EB78
  loc_112EE76: unk_44A6DC.RollbackTrans
  loc_112EE83: Set var_98 = Err()
  loc_112EE89: Call 0.Method_arg_2C (var_B0, 0, var_158)
  loc_112EEAA: MsgBox(CVar(var_B0), &H30, " Deletion Error ", var_114, var_134)
  loc_112EEBD: Exit Sub
  loc_112EEBE: DOC
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EEF7BC
  'Data Table: 44A6C8
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EEF6EC: On Error Goto loc_EEF7B4
  loc_EEF6FD: If (Proc_183_55_FE8490(global_56) = &HFF) Then
  loc_EEF700:   Exit Sub
  loc_EEF701: End If
  loc_EEF724: Call Proc_117_29_E7A97C(Proc_5_1_100EC1C("EDIT", Me))
  loc_EEF73D: Set var_8C = Me.Txt
  loc_EEF743: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EEF756: global_64 = var_94.Text
  loc_EEF76F: Set var_8C = Me.Txt
  loc_EEF775: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EEF77D: var_94.SetFocus
  loc_EEF796: Me.LblUser.Caption = vbNullString
  loc_EEF7AB: Me.LblLDt.Caption = vbNullString
  loc_EEF7B3: Exit Sub
  loc_EEF7B4: ' Referenced from: EEF6EC
  loc_EEF7B4: Proc_6_60_E63754(global_56)
  loc_EEF7B9: Exit Sub
  loc_EEF7BA: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1C2D8
  'Data Table: 44A6C8
  loc_E1C2CD: Me.Global.Unload Me
  loc_E1C2D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F522DC
  'Data Table: 44A6C8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_110 As String
  Dim MemVar_1F950E4 As String
  loc_F521C8: On Error Goto loc_F52277
  loc_F521D4: var_88 = Me.RecordCount
  loc_F521E2: If (var_88 <= 0) Then
  loc_F521EB:   var_B8 = "Information"
  loc_F52206:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F52216:   Exit Sub
  loc_F52217: End If
  loc_F52225: var_110 = "SELECT Code,Name As ItemGroup,Status As Status FROM ItemGrp WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND RestCode='"
  loc_F52236: MemVar_1F950E4 = var_110 & global_52 & "' ORDER BY Name"
  loc_F52249: MemVar_1F95120 = Me
  loc_F52250: var_10C = "3500,1500"
  loc_F52256: Proc_6_126_F1C850(var_10C)
  loc_F52271: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F52276: Exit Sub
  loc_F52277: ' Referenced from: F521C8
  loc_F5227F: Set var_118 = Err()
  loc_F52285: Call 0.Method_arg_1C (var_88)
  loc_F52296: If (var_88 <> 0) Then
  loc_F522A1:   Set var_118 = Err()
  loc_F522A7:   Call 0.Method_arg_2C (var_10C)
  loc_F522C8:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F522DB: End If
  loc_F522DB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3E2E8
  'Data Table: 44A6C8
  loc_E3E2D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3E2E0: Call Proc_117_31_11E6268(global_56)
  loc_E3E2E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3D028
  'Data Table: 44A6C8
  loc_E3D018: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D020: Call Proc_117_31_11E6268(global_56)
  loc_E3D025: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3CD28
  'Data Table: 44A6C8
  loc_E3CD18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3CD20: Call Proc_117_31_11E6268(global_56)
  loc_E3CD25: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3E348
  'Data Table: 44A6C8
  loc_E3E338: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3E340: Call Proc_117_31_11E6268(global_56)
  loc_E3E345: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10A217C
  'Data Table: 44A6C8
  Dim var_A0 As String
  Dim var_A4 As String
  Dim var_AC As String
  Dim unk_44A6DC As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Variant
  Dim var_136 As Integer
  Dim var_CC As Variant
  Dim var_F4 As Variant
  loc_10A1ED0: On Error Goto loc_10A2131
  loc_10A1EFF: var_AC = "SELECT * FROM ItemGrp WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and RestCode='" & global_52 & "' ORDER BY Name"
  loc_10A1F08: unk_44A6DC.Execute var_AC, var_CC, -1
  loc_10A1F13: Set var_88 = var_D0
  loc_10A1F2D: var_D4 = var_88.RecordCount
  loc_10A1F3B: If (var_D4 = 0) Then
  loc_10A1F57:   MsgBox("No Record Present For Printing", 0, var_F4, var_114, var_134)
  loc_10A1F67:   Exit Sub
  loc_10A1F68: End If
  loc_10A1F77: var_A4 = MemVar_1F950B4 & "\HallItemGrp.ttx"
  loc_10A1F7E: Set var_D0 = var_88 
  loc_10A1F8A: var_136 = CreateFieldDefFile(var_D0, var_A4)
  loc_10A1F94: Set var_88 = var_D0
  loc_10A1F9A: var_BC = CVar(var_136) 'Integer
  loc_10A1F9D: var_98 = var_BC 'Variant
  loc_10A1FB9: var_A0 = MemVar_1F950B4 & "\HallItemGrp.RPT"
  loc_10A1FC2: Call 0.Method_arg_1C (var_A0, var_BC, var_D0)
  loc_10A1FCD: MemVar_1F951E8 = var_D0
  loc_10A1FE8: Call 0.Method_arg_90 (var_D0, var_D4, var_9A, 1)
  loc_10A1FF0: Call 0.Method_arg_24 (var_136, &HFF)
  loc_10A1FFC: For var_13A =  To CInt(var_D4): var_D0 = var_13A 'Integer
  loc_10A2015:   Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_10A201D:   Call 0.Method_arg_20 (var_140)
  loc_10A2025:   Call 0.Method_arg_30 (var_A0)
  loc_10A206B:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10A2081:     Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_10A2089:     Call 0.Method_arg_20 (var_140)
  loc_10A2091:     Call 0.Method_arg_38 ("'Item Group Master'")
  loc_10A209D:   End If
  loc_10A20A0: Next var_13A 'Integer
  loc_10A20BE: Call 0.Method_arg_64 (var_D0, CVar(var_88))
  loc_10A20C6: Call 0.Method_arg_2C (var_E4)
  loc_10A20D4: Call 0.Method_arg_150 (var_104)
  loc_10A20DF: Call 0.Method_arg_50 (var_A0)
  loc_10A20E9: Set var_140 = Nothing
  loc_10A2103: Set var_D0 = MemVar_1F951E8 
  loc_10A210F: Proc_6_99_1484404(var_D0, 0, var_A0)
  loc_10A211A: MemVar_1F951E8 = var_D0
  loc_10A212D: Set var_88 = Nothing
  loc_10A2130: Exit Sub
  loc_10A2131: ' Referenced from: 10A1ED0
  loc_10A2139: Set var_D0 = Err()
  loc_10A213F: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10A214A: Call 0.Method_arg_50 (var_A4)
  loc_10A2166: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_114, var_134)
  loc_10A2179: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0AAC0
  'Data Table: 44A6C8
  Dim Me As Recordset15
  loc_E0AAB7: Me.Requery -1
  loc_E0AABC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1277378
  'Data Table: 44A6C8
  Dim var_C0 As Variant
  Dim var_AC As String
  Dim var_E4 As Variant
  Dim var_D4 As String
  Dim unk_44A6DC As Connection15
  Dim var_A0 As Variant
  Dim var_A4 As Variant
  Dim var_A8 As Field20
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim Me As Recordset15
  Dim var_11C As String
  Dim var_120 As String
  Dim var_12C As String
  Dim var_124 As TextBox
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_1B0 As Variant
  Dim var_240 As Variant
  Dim var_128 As String
  Dim var_1F0 As Variant
  loc_1276E24: On Error Goto loc_1277323
  loc_1276E2B: var_8A = CByte(0) 'Byte
  loc_1276E3A: Set var_A0 = Me.Txt
  loc_1276E40: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1276E69: If (Proc_6_27_EA61EC(var_A4, "Item Group") = 0) Then
  loc_1276E73:   Call Txt_GotFocus(CInt(0))
  loc_1276E78:   Exit Sub
  loc_1276E79: End If
  loc_1276E7E: var_9C = "Finish" 'Variant
  loc_1276E85: Call Proc_117_32_10B3F10(var_AE)
  loc_1276E90: If (var_AE = &HFF) Then
  loc_1276E93:   Exit Sub
  loc_1276E94: End If
  loc_1276E98: Set var_A0 = Me.TopCtrl1
  loc_1276E9E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A4)
  loc_1276EB7: If (CStr() = "Add") Then
  loc_1276EC0:   var_E4 = 0
  loc_1276EDD:   var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemGrp WHERE ISNUMERIC(SUBSTRING(Code,3,4))=1 AND SITE_CODE='" & MemVar_1F95070
  loc_1276EE4:   var_D4 = CStr() & "'"
  loc_1276EED:   unk_44A6DC.Execute var_D4, var_D0, -1
  loc_1276EF5:   var_A0 = var_A0.Fields
  loc_1276EFD:   var_E4 = var_A4.Item(var_A4)
  loc_1276F05:   var_A8 = var_A8.Value
  loc_1276F35:   var_104 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1276F60:   var_114 = (1 + Format(CStr(var_F4), "0000"))
  loc_1276F65:   var_88 = CStr(var_114)
  loc_1276F76: Else
  loc_1276F93:   var_A4 = Me.Fields.Item("Code")
  loc_1276FA4:   var_88 = CStr(var_A4.Value)
  loc_1276FB1: End If
  loc_1276FBA: unk_44A6DC.BeginTrans var_118
  loc_1276FC3: var_8A = CByte(1) 'Byte
  loc_1276FCB: Set var_A0 = Me.TopCtrl1
  loc_1276FD1: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_1276FEA: If (CStr(var_104) = "Add") Then
  loc_1277001:   var_AC = "Insert Into ItemGrp(Code,Name,Status,Type,RestCode,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & var_88
  loc_1277008:   var_11C = var_AC & "','"
  loc_1277019:   Set var_A0 = Me.Txt
  loc_127701F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_D4, var_11C)
  loc_1277027:   var_284 = var_A4.Text
  loc_1277030:   var_120 = -1 & var_D4
  loc_1277037:   var_12C = var_120 & "','"
  loc_1277048:   Set var_A8 = Me.Txt
  loc_127704E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_124, var_128)
  loc_1277056:   var_12C = var_124.Text
  loc_127706C:   var_F4 = CVar(var_288 & var_128 & "','") & var_9C 
  loc_12770A8:   var_1B0 = var_F4 & "','" & CVar(global_52) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) 
  loc_12770C0:   Proc_183_7_EB17D4(var_1F0, MemVar_1F950EC)
  loc_12770F2:   unk_44A6DC.Execute CStr(var_1B0 & "'," & var_1F0 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_F4, 
  loc_127713B: Else
  loc_1277159:   Set var_A0 = Me.Txt
  loc_127715F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, "UPDATE ItemGrp SET Name='")
  loc_1277167:   var_240 = var_A4.Text
  loc_1277170:   var_D4 = -1 & var_AC
  loc_1277177:   var_120 = var_D4 & "',Status='"
  loc_1277188:   Set var_A8 = Me.Txt
  loc_127718E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_124, var_11C)
  loc_1277196:   var_120 = var_124.Text
  loc_12771AC:   var_F4 = CVar(var_288 & var_11C & "',Type='") & var_9C 
  loc_12771B0:   var_C0 = "',SITE_CODE='"
  loc_12771B5:   var_104 = var_F4 & var_C0 
  loc_12771BF:   var_114 = var_104 & CVar(MemVar_1F95070) 
  loc_12771EA:   Proc_183_7_EB17D4(var_1B0, MemVar_1F950EC)
  loc_1277212:   var_12C = CStr(var_114 & "',U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_1B0 & " ,U_AE='E' WHERE Code='" & CVar(var_88) & "'")
  loc_127721C:   unk_44A6DC.Execute var_12C, , 
  loc_127725A: End If
  loc_1277260: unk_44A6DC.CommitTrans
  loc_1277269: var_8A = CByte(0) 'Byte
  loc_1277278: Me.Requery -1
  loc_1277288: Me.Requery -1
  loc_12772B2: Me.Find "Code='" & var_88 & "'", 0, 1
  loc_12772C2: Set var_A0 = Me.TopCtrl1
  loc_12772C8: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_12772E1: If (CStr() = "Add") Then
  loc_12772E4:   Call TopCtrl1_UnknownEvent_A()
  loc_12772E9:   Exit Sub
  loc_12772EA: End If
  loc_12772FF: var_AC = "INI"
  loc_127730D: Call Proc_117_29_E7A97C(Proc_5_1_100EC1C(var_AC, Me))
  loc_1277318: Call Proc_117_33_E84048(global_56)
  loc_127731D: Call Proc_117_31_11E6268()
  loc_1277322: Exit Sub
  loc_1277323: ' Referenced from: 1276E24
  loc_127732C: If (CInt(var_8A) = 1) Then
  loc_1277335:   unk_44A6DC.RollbackTrans
  loc_127733A: End If
  loc_1277342: Set var_A0 = Err()
  loc_1277348: Call 0.Method_arg_2C (var_AC)
  loc_1277361: MsgBox(CVar(var_AC), &H10, var_F4, var_104, var_114)
  loc_1277374: Exit Sub
End Sub

Private Sub Form_Load() '10C8A1C
  'Data Table: 44A6C8
  Dim var_88 As Label
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim var_D8 As String
  Dim unk_44A6DC As Connection15
  loc_10C8744: On Error Goto loc_10C89D6
  loc_10C874E: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10C8762: Me.LblUser.Left = CDbl(13500)
  loc_10C8779: Me.LblUser.Top = CDbl(7800)
  loc_10C8790: Me.LblLDt.Top = CDbl(8160)
  loc_10C87A7: Me.LblLDt.Left = CDbl(13500)
  loc_10C87BD: Set var_88 = Me.Txt
  loc_10C87C3: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_10C87E2: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_10C87FE: Set var_B4 = Me.Txt
  loc_10C8804: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_10C881F: Set var_88 = Me.Txt
  loc_10C8825: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_10C883D: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_10C884C: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_10C8868: Set var_88 = Me.TopCtrl1
  loc_10C886E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_10C887C: Call 0.Method_arg_50 (var_C4)
  loc_10C8884: var_D4 = CVar(var_C4) 'String
  loc_10C8892: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D4)
  loc_10C88B8: var_D8 = "SELECT Code,Name,'Banquet' as BanquetName FROM ItemGrp WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and RestCode='"
  loc_10C88D2: unk_44A6DC.Execute var_D8 & global_52 & "'  ORDER BY Name", var_D4, -1
  loc_10C8905: CVarUnk
  loc_10C890A: VerifyVarObj
  loc_10C8916: LateIdStAd
  loc_10C893F: var_D8 = "SELECT Code,Name As ItemGroup,Status,SITE_CODE,LOGSITE_CODE FROM ItemGrp WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and RestCode='"
  loc_10C8959: unk_44A6DC.Execute var_D8 & global_52 & "' ORDER BY Name", var_D4, -1
  loc_10C898F: Set var_88 = Me
  loc_10C8998: var_C4 = "INI"
  loc_10C89A6: Call Proc_117_29_E7A97C(Proc_5_1_100EC1C(var_C4, var_88, Me.DGHelp, var_88), var_88)
  loc_10C89BA: Call 0.Method_arg_160 (var_88, Me.TopCtrl1)
  loc_10C89C8: Call 0.Method_arg_164 (var_88)
  loc_10C89D0: Call Proc_117_31_11E6268(var_88)
  loc_10C89D5: Exit Sub
  loc_10C89D6: ' Referenced from: 10C8744
  loc_10C89DE: Set var_88 = Err()
  loc_10C89E4: Call 0.Method_arg_2C (var_C4)
  loc_10C8A05: MsgBox(CVar(var_C4), &H40, "Information", var_104, var_124)
  loc_10C8A18: Exit Sub
  loc_10C8A19: Exit Sub
  loc_10C8A1A: ThisVCallAd
End Sub

Private Sub Form_Resize() 'ED9018
  'Data Table: 44A6C8
  Dim var_8C As Label
  loc_ED8F76: Call 0.Method_arg_50 (var_88)
  loc_ED8F88: Me.LblFormCaption.Caption = var_88
  loc_ED8FA1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED8FAD: Set var_A0 = Me.TopCtrl1
  loc_ED8FB3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED8FC0: Set var_8C = Me.TopCtrl1
  loc_ED8FC6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED8FE0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED8FFB: Call 0.Method_arg_100 (var_B8)
  loc_ED900D: Me.LblFormCaption.Width = var_B8
  loc_ED9015: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E28D20
  'Data Table: 44A6C8
  loc_E28D03: Set global_56 = Nothing
  loc_E28D15: Set global_60 = Nothing
  loc_E28D1C: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8CA74
  'Data Table: 44A6C8
  loc_E8CA10: On Error Goto loc_E8CA30
  loc_E8CA27: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8CA2F: Exit Sub
  loc_E8CA30: ' Referenced from: E8CA10
  loc_E8CA38: Set var_88 = Err()
  loc_E8CA3E: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8CA5F: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8CA72: Exit Sub
  loc_E8CA73: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F38794
  'Data Table: 44A6C8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3868B: Me.DGHelp.Visible = False
  loc_F386AA: If (Me.RecordCount > 0) Then
  loc_F386E9:   Set var_B4 = Me.Txt
  loc_F386EF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F386F7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3872A:   var_B0 = Me.Fields.Item("Code")
  loc_F38749:   Set var_B4 = Me.Txt
  loc_F3874F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F38757:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3876D: End If
  loc_F38778: Set var_A8 = Me.Txt
  loc_F3877E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F38786: var_B0.SetFocus
  loc_F38792: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E736CC
  'Data Table: 44A6C8
  loc_E7368A: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E736A1: Set var_8C = Me.FGPoint
  loc_E736BD: Proc_6_138_106E830(Me.DGHelp, global_60, CInt(0))
  loc_E736CB: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3C964
  'Data Table: 44A6C8
  loc_E3C958: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3C95B:   Call DGHelp_UnknownEvent_9()
  loc_E3C960: End If
  loc_E3C960: Exit Sub
End Sub

Public Function global_52Get() '44B008
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '44B017
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC5A34
  'Data Table: 44A6C8
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC59AA: On Error Goto loc_EC59EF
  loc_EC59B3: Me.MoveFirst
  loc_EC59CD: var_8C = "code='" & MyValue
  loc_EC59DD: Me.Find var_8C & "'", 0, 1
  loc_EC59E9: Call Proc_117_31_11E6268(var_A0)
  loc_EC59EE: Exit Sub
  loc_EC59EF: ' Referenced from: EC59AA
  loc_EC59F7: Set var_A4 = Err()
  loc_EC59FD: Call 0.Method_arg_2C (var_8C)
  loc_EC5A1E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC5A31: Exit Sub
  loc_EC5A32: Exit Sub
End Sub

Public Sub Proc_117_29_E7A97C(arg_C) 'E7A97C
  'Data Table: 44A6C8
  Dim var_98 As TextBox
  loc_E7A92A: Set var_8C = Me.Txt
  loc_E7A930: Call 0.Method_Proc_117_29_E7A97CC (var_8E, var_86)
  loc_E7A940: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A956:   Set var_8C = Me.Txt
  loc_E7A95C:   Call 0.Method_Proc_117_29_E7A97C0 (CInt(var_86), var_98)
  loc_E7A964:   var_98.Enabled = arg_C
  loc_E7A973: Next var_92 'Byte
  loc_E7A979: Exit Sub
End Sub

Public Sub Proc_117_30_EDB428
  'Data Table: 44A6C8
  Dim var_98 As TextBox
  loc_EDB372: global_64 = vbNullString
  loc_EDB384: Set var_8C = Me.Txt
  loc_EDB38A: Call 0.Method_Proc_117_30_EDB428C (var_8E, var_86)
  loc_EDB39A: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EDB3B0:   Set var_8C = Me.Txt
  loc_EDB3B6:   Call 0.Method_Proc_117_30_EDB4280 (CInt(var_86), var_98)
  loc_EDB3BE:   var_98.Text = vbNullString
  loc_EDB3DA:   Set var_8C = Me.Txt
  loc_EDB3E0:   Call 0.Method_Proc_117_30_EDB4280 (CInt(var_86), var_98)
  loc_EDB3E8:   var_98.Tag = vbNullString
  loc_EDB402:   Set var_8C = Me.Txt
  loc_EDB408:   Call 0.Method_Proc_117_30_EDB4280 (CInt(1), var_98)
  loc_EDB410:   var_98.Text = "Active"
  loc_EDB41F: Next var_92 'Byte
  loc_EDB425: Exit Sub
  loc_EDB426: Set arg_5000 = 
End Sub

Public Sub Proc_117_31_11E6268
  'Data Table: 44A6C8
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_C0 As String
  Dim var_AC As TextBox
  Dim var_100 As Variant
  Dim unk_44A6DC As Connection15
  Dim var_88 As Recordset15
  Dim var_A8 As Fields15
  Dim var_1CC As Variant
  loc_11E5E1C: On Error Goto loc_11E6223
  loc_11E5E25: Proc_183_45_E5CCA8(global_56)
  loc_11E5E41: If (Me.RecordCount <= 0) Then
  loc_11E5E44:   Call Proc_117_30_EDB428()
  loc_11E5E4C: Else
  loc_11E5E88:   Set var_A8 = Me.Txt
  loc_11E5E8E:   Call 0.Method_Proc_117_31_11E62680 (CInt(0), var_AC)
  loc_11E5E96:   var_AC.Text = CStr(Me.Fields.Item("ItemGroup").Value)
  loc_11E5EE8:   Set var_A8 = Me.Txt
  loc_11E5EEE:   Call 0.Method_Proc_117_31_11E62680 (CInt(0), var_AC)
  loc_11E5EF6:   var_AC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_11E5F4B:   Call 0.Method_Proc_117_31_11E62680 (CInt(1), var_AC)
  loc_11E5F53:   var_AC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Status")))
  loc_11E5FBD:   unk_44A6DC.Execute CStr("Select U_Name,U_AE,U_EntDt From ItemGrp where Code='" & Me.Fields.Item("Code").Value & "'  "), var_120, -1
  loc_11E5FC8:   Set var_88 = Me.Txt
  loc_11E601C:   var_A8 = var_88.Fields
  loc_11E6085:   var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_A8.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_11E60CA:   Me.LblUser.Caption = CStr(var_A8 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_184)))
  loc_11E615D:   var_120 = "entdt :   "
  loc_11E6168:   var_100 = "Last Update :   "
  loc_11E6196:   var_C0 = Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")))
  loc_11E61D8:   var_1CC = IIf((var_C0 = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), var_100, var_120)) & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))) 
  loc_11E61EA:   Me.LblLDt.Caption = CStr(var_1CC)
  loc_11E6222: End If
  loc_11E6222: Exit Sub
  loc_11E6223: ' Referenced from: 11E5E1C
  loc_11E622B: Set var_90 = Err()
  loc_11E6231: Call 0.Method_arg_2C (var_C0)
  loc_11E6252: MsgBox(CVar(var_C0), &H40, "Information", var_100, var_120)
  loc_11E6265: Exit Sub
End Sub

Public Sub Proc_117_32_10B3F10
  'Data Table: 44A6C8
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_44A6DC As Connection15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  loc_10B3C7B: If (Me.RecordCount = 0) Then
  loc_10B3C7E:   Proc_117_32_10B3F10 = 
  loc_10B3C84: End If
  loc_10B3C88: Set var_90 = Me.TopCtrl1
  loc_10B3C8E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10B3CA7: If (CStr() = "Add") Then
  loc_10B3CE5:   Set var_90 = Me.Txt
  loc_10B3CEB:   Call 0.Method_Proc_117_32_10B3F100 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemGrp Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_10B3D1D:   unk_44A6DC.Execute var_D8 & var_AC & "' And RestCode='" & global_52 & "'", 0, var_EC
  loc_10B3D2D:    = var_D8.Item()
  loc_10B3D35:    = var_EC.Value
  loc_10B3D6A:   If (var_A8.Text.Fields > 0) Then
  loc_10B3D88:     var_A0 = "Duplicate Name"
  loc_10B3D8E:     MsgBox(var_A0, &H40, "Information", var_11C, var_13C)
  loc_10B3DA9:     Set var_90 = Me.Txt
  loc_10B3DAF:     Call 0.Method_Proc_117_32_10B3F100 (CInt(0))
  loc_10B3DB7:     var_A8.SetFocus
  loc_10B3DC8:     Proc_117_32_10B3F10 = &HFF
  loc_10B3DCE:   End If
  loc_10B3DD1: Else
  loc_10B3E0C:   Set var_90 = Me.Txt
  loc_10B3E12:   Call 0.Method_Proc_117_32_10B3F100 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemGrp Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (Name='", var_A0, -1)
  loc_10B3E55:   unk_44A6DC.Execute var_D8 & var_AC & "' And Name<>'" & global_64 & "') And RestCode='" & global_52 & "'", 0, var_EC
  loc_10B3E65:    = var_D8.Item(var_A8)
  loc_10B3E6D:    = var_EC.Value
  loc_10B3EA6:   If (var_A8.Text.Fields > 0) Then
  loc_10B3ECA:     MsgBox("Duplicate Name", &H40, "Information", var_11C, var_13C)
  loc_10B3EE5:     Set var_90 = Me.Txt
  loc_10B3EEB:     Call 0.Method_Proc_117_32_10B3F100 (CInt(0))
  loc_10B3EF3:     var_A8.SetFocus
  loc_10B3F04:     Proc_117_32_10B3F10 = &HFF
  loc_10B3F0A:   End If
  loc_10B3F0A: End If
  loc_10B3F0A: Proc_117_32_10B3F10 = var_A8
End Sub

Public Sub Proc_117_33_E84048
  'Data Table: 44A6C8
  Dim .global_10752 As Currency
  loc_E83FF4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E84006:   Me.DGHelp.Visible = False
  loc_E8400E: End If
  loc_E8402A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E8403C:   Me.FGPoint.Visible = False
  loc_E84044: End If
  loc_E84044: Exit Sub
  loc_E84045: .global_10752 = 
End Sub

Public Sub Proc_117_34_E905E0(arg_C) 'E905E0
  'Data Table: 44A6C8
  Dim var_10C As TextBox
  loc_E90574: Call Proc_117_33_E84048()
  loc_E905B0: If (MsgBox("Save Item Group ?", 4, "Save", var_E4, var_104) = 6) Then
  loc_E905B3:   Call TopCtrl1_UnknownEvent_16()
  loc_E905BB: Else
  loc_E905C5:   Set var_108 = Me.Txt
  loc_E905CB:   Call 0.Method_Proc_117_34_E905E00 (arg_C)
  loc_E905D3:   var_10C.SetFocus
  loc_E905DF: End If
  loc_E905DF: Exit Sub
End Sub
