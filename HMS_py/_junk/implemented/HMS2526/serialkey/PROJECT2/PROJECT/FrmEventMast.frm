VERSION 5.00
Begin VB.Form FrmEventMast
  Caption = "Event Type"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmEventMast.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2955
    Top = 1890
    Width = 1005
    Height = 285
    Text = "Active"
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2955
    Top = 1575
    Width = 4005
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
  Begin MSFlexGrid FGPoint
    Left = 8055
    Top = 2445
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 3
  End
  Begin DataGrid DGHelp
    Left = 2940
    Top = 2175
    Width = 4170
    Height = 3300
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 450
    TabIndex = 5
  End
  Begin Label LblHelp
    Caption = "Help"
    ForeColor = &HC0&
    Left = 705
    Top = 6225
    Width = 14190
    Height = 1575
    TabIndex = 10
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 405
    Top = 8235
    Width = 2520
    Height = 255
    TabIndex = 9
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 390
    Top = 8565
    Width = 2430
    Height = 285
    TabIndex = 8
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
  Begin Label LbStatus
    Caption = "Status"
    Index = 1
    ForeColor = &HFF0000&
    Left = 1830
    Top = 1890
    Width = 585
    Height = 240
    TabIndex = 7
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
    Left = 15
    Top = 420
    Width = 180
    Height = 540
    TabIndex = 6
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
    Caption = "Event Type"
    Index = 0
    ForeColor = &HFF0000&
    Left = 1830
    Top = 1560
    Width = 1050
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

Attribute VB_Name = "FrmEventMast"


Private Sub DGHelp_UnknownEvent_9 'EE574C
  'Data Table: 457438
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE56A3: Me.DGHelp.Visible = False
  loc_EE56C2: If (Me.RecordCount > 0) Then
  loc_EE56E2:   var_B0 = Me.Fields.Item("Name")
  loc_EE5701:   Set var_B4 = Me.Txt
  loc_EE5707:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE570F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE5725: End If
  loc_EE5730: Set var_A8 = Me.Txt
  loc_EE5736: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE573E: var_B0.SetFocus
  loc_EE574A: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E73D28
  'Data Table: 457438
  loc_E73CE6: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E73CFD: Set var_8C = Me.FGPoint
  loc_E73D19: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0))
  loc_E73D27: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EF0CA8
  'Data Table: 457438
  Dim var_8C As Label
  Dim var_96 As Integer
  Dim Me As Recordset15
  loc_EF0BE6: Set var_88 = Me.Txt
  loc_EF0BEC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EF0BFA: Proc_6_74_E23240(var_8C)
  loc_EF0C06: Call Proc_115_29_E861C0(var_8C)
  loc_EF0C2C: Me.LblHelp.Caption = Proc_6_154_EE8260(Me)
  loc_EF0C3E: var_96 = Index
  loc_EF0C49: If (var_96 = CInt(0)) Then
  loc_EF0C63:   If (Me.RecordCount > 0) Then
  loc_EF0C71:     Set var_8C = Me.FGPoint
  loc_EF0C89:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_EF0C97:   End If
  loc_EF0C9A: Else
  loc_EF0CA2:   If (var_96 = CInt(1)) Then
  loc_EF0CA5:   End If
  loc_EF0CA5: End If
  loc_EF0CA5: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FBF31C
  'Data Table: 457438
  Dim Me As Recordset15
  loc_FBF17E: If (CLng(Shift) = &H1B) Then
  loc_FBF181:   Call Proc_115_29_E861C0()
  loc_FBF186:   Exit Sub
  loc_FBF187: End If
  loc_FBF195: If (KeyCode = CInt(0)) Then
  loc_FBF1B5:   Set var_9C = Me.FGPoint
  loc_FBF1E7:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_FBF254:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FBF25B:     Set var_9C = Me.DGHelp
  loc_FBF27A:     Proc_6_138_106E830(var_9C, global_56, KeyCode, Me.FGPoint, 0)
  loc_FBF288:   End If
  loc_FBF288: End If
  loc_FBF2A4: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FBF2C5:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(0))) Then
  loc_FBF2CB:     Call Proc_115_31_E8FD70(KeyCode, 1, var_9C)
  loc_FBF2D3:   Else
  loc_FBF2E8:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FBF2F1:       Proc_6_75_E5335C(Shift, arg_14)
  loc_FBF2F9:     Else
  loc_FBF30C:       If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_FBF315:         Proc_6_76_E533C8(Shift, arg_14)
  loc_FBF31A:       End If
  loc_FBF31A:     End If
  loc_FBF31A:   End If
  loc_FBF31A: End If
  loc_FBF31A: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EFFA90
  'Data Table: 457438
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_EFF9C6: If (KeyAscii = CInt(1)) Then
  loc_EFF9F2:   If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_EFFA02:     Set var_CC = Me.Txt
  loc_EFFA08:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFFA10:     var_D0.Text = "Active"
  loc_EFFA1F:   Else
  loc_EFFA26:     var_98 = Chr(CLng(arg_10))
  loc_EFFA48:     If (Ucase(var_98) = "N") Then
  loc_EFFA58:       Set var_CC = Me.Txt
  loc_EFFA5E:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFFA66:       var_D0.Text = "Non Active"
  loc_EFFA72:     End If
  loc_EFFA72:   End If
  loc_EFFA74:   arg_10 = 0
  loc_EFFA77: End If
  loc_EFFA7D: Proc_6_133_E7FB08(var_98, arg_10)
  loc_EFFA86: arg_10 = CInt(var_98)
  loc_EFFA8C: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC4FC0
  'Data Table: 457438
  loc_EC4F32: If (KeyCode = CInt(0)) Then
  loc_EC4F51:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC4F5E:     var_A4 = "Name"
  loc_EC4F7D:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_56)
  loc_EC4FAF:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC4FBD:   End If
  loc_EC4FBD: End If
  loc_EC4FBD: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E495D4
  'Data Table: 457438
  loc_E495B2: Set var_88 = Me.Txt
  loc_E495B8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E495C6: Proc_6_73_E23294(var_8C)
  loc_E495D2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F02F38
  'Data Table: 457438
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As TextBox
  loc_F02E63: var_86 = Cancel
  loc_F02E6E: If (var_86 = CInt(0)) Then
  loc_F02E74:   Call Proc_115_32_10892CC(var_88)
  loc_F02E7F:   If (var_88 = &HFF) Then
  loc_F02E84:     arg_10 = &HFF
  loc_F02E87:     Exit Sub
  loc_F02E88:   End If
  loc_F02E8B: Else
  loc_F02E93:   If (var_86 = CInt(1)) Then
  loc_F02EA0:     Set var_8C = Me.Txt
  loc_F02EA6:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F02EE1:     If (Ucase(Left(CVar(var_90), 1)) = "Active") Then
  loc_F02EF1:       Set var_8C = Me.Txt
  loc_F02EF7:       Call 0.Method_Txt_Validate0 (Cancel, var_90, "Active")
  loc_F02EFF:       var_90.Text = arg_10
  loc_F02F0E:     Else
  loc_F02F1B:       Set var_8C = Me.Txt
  loc_F02F21:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F02F29:       var_90.Text = "Non Active"
  loc_F02F35:     End If
  loc_F02F35:   End If
  loc_F02F35: End If
  loc_F02F35: Exit Sub
End Sub

Private Sub Form_Load() '107D984
  'Data Table: 457438
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_D8 As Variant
  Dim var_C8 As String
  Dim unk_457445 As Connection15
  loc_107D6F4: On Error Goto loc_107D93D
  loc_107D6FE: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_107D712: Me.LblUser.Left = CDbl(13500)
  loc_107D729: Me.LblUser.Top = CDbl(7800)
  loc_107D740: Me.LblLDt.Top = CDbl(8160)
  loc_107D757: Me.LblLDt.Left = CDbl(13500)
  loc_107D76D: Set var_8C = Me.Txt
  loc_107D773: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107D792: Me.DGHelp.Left = CVar(var_90.Left)
  loc_107D7AE: Set var_B8 = Me.Txt
  loc_107D7B4: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_107D7CF: Set var_8C = Me.Txt
  loc_107D7D5: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107D7ED: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_107D7FC: Me.DGHelp.Top = CVar(var_90.Left)
  loc_107D818: Set var_8C = Me.TopCtrl1
  loc_107D81E: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_107D82C: Call 0.Method_arg_50 (var_C8)
  loc_107D834: var_D8 = CVar(var_C8) 'String
  loc_107D842: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D8)
  loc_107D871: unk_457445.Execute "SELECT Code,Name FROM FunctionType where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107D8A0: CVarUnk
  loc_107D8A5: VerifyVarObj
  loc_107D8B1: LateIdStAd
  loc_107D8E3: unk_457445.Execute "SELECT * FROM FunctionType WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107D91E: var_C8 = "INI"
  loc_107D92C: Call Proc_115_28_E798DC(Proc_5_1_100EC1C(var_C8, Me, Me.DGHelp, Me), Me)
  loc_107D937: Call Proc_115_30_120BFBC(Me.TopCtrl1)
  loc_107D93C: Exit Sub
  loc_107D93D: ' Referenced from: 107D6F4
  loc_107D94B: Call 0.Method_arg_2C (var_C8)
  loc_107D96C: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_107D97F: Exit Sub
  loc_107D980: Exit Sub
  loc_107D981: Put , ,  'put Err() bytes
End Sub

Private Sub Form_Resize() 'ED37F8
  'Data Table: 457438
  Dim var_8C As Label
  loc_ED3756: Call 0.Method_arg_50 (var_88)
  loc_ED3768: Me.LblFormCaption.Caption = var_88
  loc_ED3781: Me.LblFormCaption.Left = CDbl(0)
  loc_ED378D: Set var_A0 = Me.TopCtrl1
  loc_ED3793: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED37A0: Set var_8C = Me.TopCtrl1
  loc_ED37A6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED37C0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED37DB: Call 0.Method_arg_100 (var_B8)
  loc_ED37ED: Me.LblFormCaption.Width = var_B8
  loc_ED37F5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E28310
  'Data Table: 457438
  loc_E282F3: Set global_52 = Nothing
  loc_E28305: Set global_56 = Nothing
  loc_E2830C: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8A428
  'Data Table: 457438
  loc_E8A3C4: On Error Goto loc_E8A3E4
  loc_E8A3DB: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8A3E3: Exit Sub
  loc_E8A3E4: ' Referenced from: E8A3C4
  loc_E8A3EC: Set var_88 = Err()
  loc_E8A3F2: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8A413: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8A426: Exit Sub
  loc_E8A427: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EABF7C
  'Data Table: 457438
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EABEF0: On Error Goto loc_EABF76
  loc_EABF00: Me.LblUser.Caption = vbNullString
  loc_EABF15: Me.LblLDt.Caption = vbNullString
  loc_EABF40: Call Proc_115_28_E798DC(Proc_5_1_100EC1C("ADD", Me))
  loc_EABF4B: Call Proc_115_27_ED9F30(global_52)
  loc_EABF5B: Set var_88 = Me.Txt
  loc_EABF61: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EABF69: var_94.SetFocus
  loc_EABF75: Exit Sub
  loc_EABF76: ' Referenced from: EABEF0
  loc_EABF76: Proc_6_60_E63754(var_94)
  loc_EABF7B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC6ADC
  'Data Table: 457438
  loc_EC6A44: On Error Goto loc_EC6AD4
  loc_EC6A7E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC6A8D:   Set var_110 = Me
  loc_EC6AA4:   Call Proc_115_28_E798DC(Proc_5_1_100EC1C("INI", var_110))
  loc_EC6AAF:   Call Proc_115_29_E861C0(global_52)
  loc_EC6AB4:   Call Proc_115_30_120BFBC()
  loc_EC6ABC: Else
  loc_EC6AC2:   Call 0.Method_arg_1E8 (var_110)
  loc_EC6ACA:   Call var_110.SetFocus
  loc_EC6AD3: End If
  loc_EC6AD3: Exit Sub
  loc_EC6AD4: ' Referenced from: EC6A44
  loc_EC6AD4: Proc_6_60_E63754()
  loc_EC6AD9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1198E6C
  'Data Table: 457438
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_457445 As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_1198A90: On Error Goto loc_1198E15
  loc_1198AA1: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_1198AA4:   Exit Sub
  loc_1198AA5: End If
  loc_1198AD7: var_D4 = "Booking Inquiry"
  loc_1198B1F: If (Proc_6_108_101061C(MemVar_1F95044, "BookingInquiry", "FuncType", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_1198B22:   Exit Sub
  loc_1198B23: End If
  loc_1198B55: var_D4 = "Banquet Booking"
  loc_1198B9D: If (Proc_6_108_101061C(MemVar_1F95044, "HallBook", "Func_Name", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_1198BA0:   Exit Sub
  loc_1198BA1: End If
  loc_1198BD8: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_1198BDD:   var_96 = 0
  loc_1198BE9:   unk_457445.BeginTrans var_D0
  loc_1198BF0:   var_96 = &HFF
  loc_1198C04:   var_94 = Me.Bookmark 'Variant
  loc_1198C50:   var_118 = "Delete From FunctionType Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_1198C5E:   unk_457445.Execute CStr(var_118), var_138, -1
  loc_1198CA9:   var_168 = 0
  loc_1198CBC:   var_160 = 0
  loc_1198CC7:   var_15C = 0
  loc_1198CDA:   var_154 = 0
  loc_1198CE5:   var_150 = 0
  loc_1198CF8:   var_148 = 0
  loc_1198D38:   var_B4 = "FunctionType"
  loc_1198D41:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B4, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1198D6F:   unk_457445.CommitTrans
  loc_1198D76:   var_96 = 0
  loc_1198D84:   Me.Requery -1
  loc_1198D94:   Me.Requery -1
  loc_1198DB4:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1198DC1:     Me.Bookmark = var_94
  loc_1198DC9:   Else
  loc_1198DDD:     If (Me.EOF = 0) Then
  loc_1198DE6:       Me.MoveLast
  loc_1198DEB:     End If
  loc_1198DEB:   End If
  loc_1198DEB:   Call Proc_115_30_120BFBC(var_96, var_148, 0, var_150, var_154)
  loc_1198E0C:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_1198E14: End If
  loc_1198E14: Exit Sub
  loc_1198E15: ' Referenced from: 1198A90
  loc_1198E1B: If (var_96 = &HFF) Then
  loc_1198E24:   unk_457445.RollbackTrans
  loc_1198E29: End If
  loc_1198E31: Set var_9C = Err()
  loc_1198E37: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_1198E58: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_1198E6B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EF0EC4
  'Data Table: 457438
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EF0DF4: On Error Goto loc_EF0EBC
  loc_EF0E05: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_EF0E08:   Exit Sub
  loc_EF0E09: End If
  loc_EF0E2C: Call Proc_115_28_E798DC(Proc_5_1_100EC1C("EDIT", Me))
  loc_EF0E45: Set var_8C = Me.Txt
  loc_EF0E4B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF0E5E: global_68 = var_94.Text
  loc_EF0E77: Set var_8C = Me.Txt
  loc_EF0E7D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF0E85: var_94.SetFocus
  loc_EF0E9E: Me.LblUser.Caption = vbNullString
  loc_EF0EB3: Me.LblLDt.Caption = vbNullString
  loc_EF0EBB: Exit Sub
  loc_EF0EBC: ' Referenced from: EF0DF4
  loc_EF0EBC: Proc_6_60_E63754(global_52)
  loc_EF0EC1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19274
  'Data Table: 457438
  loc_E19269: Me.Global.Unload Me
  loc_E19271: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F28928
  'Data Table: 457438
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F28828: On Error Goto loc_F288C0
  loc_F28834: var_88 = Me.RecordCount
  loc_F28842: If (var_88 <= 0) Then
  loc_F2884B:   var_B8 = "Information"
  loc_F28866:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F28876:   Exit Sub
  loc_F28877: End If
  loc_F28885: MemVar_1F950E4 = "Select FunctionType.Code As SearchCode,FunctionType.Name,Status FROM FunctionType WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by FunctionType.Name"
  loc_F28892: MemVar_1F95120 = Me
  loc_F28899: var_10C = "4000,1300"
  loc_F2889F: Proc_6_126_F1C850(var_10C)
  loc_F288BA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F288BF: Exit Sub
  loc_F288C0: ' Referenced from: F28828
  loc_F288C8: Set var_110 = Err()
  loc_F288CE: Call 0.Method_arg_1C (var_88)
  loc_F288DF: If (var_88 <> 0) Then
  loc_F288EA:   Set var_110 = Err()
  loc_F288F0:   Call 0.Method_arg_2C (var_10C)
  loc_F28911:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F28924: End If
  loc_F28924: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E377A8
  'Data Table: 457438
  loc_E37798: Proc_5_0_1107AD0(&HFF, Me)
  loc_E377A0: Call Proc_115_30_120BFBC(global_52)
  loc_E377A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E37B68
  'Data Table: 457438
  loc_E37B58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37B60: Call Proc_115_30_120BFBC(global_52)
  loc_E37B65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3C368
  'Data Table: 457438
  loc_E3C358: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C360: Call Proc_115_30_120BFBC(global_52)
  loc_E3C365: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3C3C8
  'Data Table: 457438
  loc_E3C3B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C3C0: Call Proc_115_30_120BFBC(global_52)
  loc_E3C3C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1086C7C
  'Data Table: 457438
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_457445 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_10869E4: On Error Goto loc_1086C30
  loc_1086A0B: unk_457445.Execute "select * FROM FunctionType WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_1086A16: Set var_88 = var_C8
  loc_1086A2C: var_CC = var_88.RecordCount
  loc_1086A3A: If (var_CC = 0) Then
  loc_1086A56:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1086A66:   Exit Sub
  loc_1086A67: End If
  loc_1086A76: var_A4 = MemVar_1F950B4 & "\EventMast.ttx"
  loc_1086A7D: Set var_C8 = var_88 
  loc_1086A89: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1086A93: Set var_88 = var_C8
  loc_1086A99: var_B4 = CVar(var_12E) 'Integer
  loc_1086A9C: var_98 = var_B4 'Variant
  loc_1086AB8: var_A0 = MemVar_1F950B4 & "\EventMast.RPT"
  loc_1086AC1: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1086ACC: MemVar_1F951E8 = var_C8
  loc_1086AE7: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1086AEF: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1086AFB: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1086B14:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1086B1C:   Call 0.Method_arg_20 (var_138)
  loc_1086B24:   Call 0.Method_arg_30 (var_A0)
  loc_1086B6A:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1086B80:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1086B88:     Call 0.Method_arg_20 (var_138)
  loc_1086B90:     Call 0.Method_arg_38 ("'Event Type'")
  loc_1086B9C:   End If
  loc_1086B9F: Next var_132 'Integer
  loc_1086BBD: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1086BC5: Call 0.Method_arg_2C (var_DC)
  loc_1086BD3: Call 0.Method_arg_150 (var_FC)
  loc_1086BDE: Call 0.Method_arg_50 (var_A0)
  loc_1086BE8: Set var_138 = Nothing
  loc_1086C02: Set var_C8 = MemVar_1F951E8 
  loc_1086C0E: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_1086C19: MemVar_1F951E8 = var_C8
  loc_1086C2C: Set var_88 = Nothing
  loc_1086C2F: Exit Sub
  loc_1086C30: ' Referenced from: 10869E4
  loc_1086C38: Set var_C8 = Err()
  loc_1086C3E: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1086C49: Call 0.Method_arg_50 (var_A4)
  loc_1086C65: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1086C78: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A9F4
  'Data Table: 457438
  Dim Me As Recordset15
  loc_E0A9EB: Me.Requery -1
  loc_E0A9F0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1251538
  'Data Table: 457438
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_457445 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_11C As String
  Dim var_114 As TextBox
  Dim var_E4 As Variant
  Dim var_118 As String
  Dim var_B0 As Variant
  loc_125101C: On Error Goto loc_12514E5
  loc_1251023: var_86 = CByte(0) 'Byte
  loc_1251032: Set var_90 = Me.Txt
  loc_1251038: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1251061: If (Proc_6_27_EA61EC(var_94, "Name") = 0) Then
  loc_125106B:   Call Txt_GotFocus(CInt(0))
  loc_1251070:   Exit Sub
  loc_1251071: End If
  loc_1251074: Call Proc_115_32_10892CC(var_9E)
  loc_125107F: If (var_9E = &HFF) Then
  loc_1251082:   Exit Sub
  loc_1251083: End If
  loc_1251087: Set var_90 = Me.TopCtrl1
  loc_125108D: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_12510A6: If (CStr() = "Add") Then
  loc_12510AF:   var_D4 = 0
  loc_12510CC:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From FunctionType Where Site_Code='" & MemVar_1F95070
  loc_12510D3:   var_B4 = CStr() & "'"
  loc_12510DC:   unk_457445.Execute var_B4, var_B0, -1
  loc_12510E4:   var_90 = var_90.Fields
  loc_12510EC:   var_D4 = var_94.Item(var_94)
  loc_12510F4:   var_98 = var_98.Value
  loc_125112D:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_125115B:   var_108 = (1 + Format(CStr(var_E4), "000"))
  loc_1251166:   global_64 = CStr(var_108)
  loc_125117B: Else
  loc_1251198:   var_94 = Me.Fields.Item("Code")
  loc_12511A0:   var_B0 = var_94.Value
  loc_12511AF:   global_64 = CStr(var_B0)
  loc_12511C0: End If
  loc_12511C9: unk_457445.BeginTrans var_10C
  loc_12511D2: var_86 = CByte(1) 'Byte
  loc_12511DA: Set var_90 = Me.TopCtrl1
  loc_12511E0: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_12511F9: If (CStr(var_F8) = "Add") Then
  loc_1251213:   var_9C = "Insert Into FunctionType(Code,Name,Status,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_64
  loc_125121A:   var_E8 = var_9C & "','"
  loc_125122B:   Set var_90 = Me.Txt
  loc_1251231:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_E8)
  loc_1251239:   var_194 = var_94.Text
  loc_1251242:   var_110 = -1 & var_B4
  loc_1251249:   var_11C = var_110 & "','"
  loc_125125A:   Set var_98 = Me.Txt
  loc_1251260:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_118)
  loc_1251268:   var_11C = var_114.Text
  loc_1251294:   var_E4 = CVar(var_198 & var_118 & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") 'String
  loc_12512A2:   Proc_183_7_EB17D4(var_B0, MemVar_1F950EC)
  loc_12512D4:   unk_457445.Execute CStr(var_E4 & var_B0 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_E4, 
  loc_1251315: Else
  loc_1251333:   Set var_90 = Me.Txt
  loc_1251339:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE FunctionType SET Name='")
  loc_1251341:   var_194 = var_94.Text
  loc_125134A:   var_B4 = -1 & var_9C
  loc_1251351:   var_110 = var_B4 & "',Status='"
  loc_1251362:   Set var_98 = Me.Txt
  loc_1251368:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_E8)
  loc_1251370:   var_110 = var_114.Text
  loc_125139C:   var_E4 = CVar(var_198 & var_E8 & "',SITE_CODE='" & MemVar_1F95070 & "',U_name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_12513A2:   var_C4 = MemVar_1F950EC
  loc_12513AA:   Proc_183_7_EB17D4(var_B0, var_C4)
  loc_12513B2:   var_F8 = var_E4 & var_B0 
  loc_12513BB:   var_108 = var_F8 & " ,U_AE='E' WHERE Code='" 
  loc_12513DF:   unk_457445.Execute CStr(var_108 & CVar(global_64) & "'"), , 
  loc_1251419: End If
  loc_125141F: unk_457445.CommitTrans
  loc_1251428: var_86 = CByte(0) 'Byte
  loc_1251437: Me.Requery -1
  loc_1251447: Me.Requery -1
  loc_1251474: Me.Find "Code='" & global_64 & "'", 0, 1
  loc_1251484: Set var_90 = Me.TopCtrl1
  loc_125148A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_12514A3: If (CStr() = "Add") Then
  loc_12514A6:   Call TopCtrl1_UnknownEvent_A()
  loc_12514AB:   Exit Sub
  loc_12514AC: End If
  loc_12514C1: var_9C = "INI"
  loc_12514CF: Call Proc_115_28_E798DC(Proc_5_1_100EC1C(var_9C, Me))
  loc_12514DA: Call Proc_115_29_E861C0(global_52)
  loc_12514DF: Call Proc_115_30_120BFBC()
  loc_12514E4: Exit Sub
  loc_12514E5: ' Referenced from: 125101C
  loc_12514EE: If (CInt(var_86) = 1) Then
  loc_12514F7:   unk_457445.RollbackTrans
  loc_12514FC: End If
  loc_1251504: Set var_90 = Err()
  loc_125150A: Call 0.Method_arg_2C (var_9C)
  loc_1251523: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_1251536: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E37504
  'Data Table: 457438
  loc_E374F8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E374FB:   Call DGHelp_UnknownEvent_9()
  loc_E37500: End If
  loc_E37500: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC54F4
  'Data Table: 457438
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC546A: On Error Goto loc_EC54AF
  loc_EC5473: Me.MoveFirst
  loc_EC548D: var_8C = "code='" & MyValue
  loc_EC549D: Me.Find var_8C & "'", 0, 1
  loc_EC54A9: Call Proc_115_30_120BFBC(var_A0)
  loc_EC54AE: Exit Sub
  loc_EC54AF: ' Referenced from: EC546A
  loc_EC54B7: Set var_A4 = Err()
  loc_EC54BD: Call 0.Method_arg_2C (var_8C)
  loc_EC54DE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC54F1: Exit Sub
  loc_EC54F2: Exit Sub
End Sub

Public Sub Proc_115_27_ED9F30
  'Data Table: 457438
  Dim var_98 As TextBox
  loc_ED9E7A: global_68 = vbNullString
  loc_ED9E8C: Set var_8C = Me.Txt
  loc_ED9E92: Call 0.Method_Proc_115_27_ED9F30C (var_8E, var_86)
  loc_ED9EA2: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_ED9EB8:   Set var_8C = Me.Txt
  loc_ED9EBE:   Call 0.Method_Proc_115_27_ED9F300 (CInt(var_86), var_98)
  loc_ED9EC6:   var_98.Text = vbNullString
  loc_ED9EE2:   Set var_8C = Me.Txt
  loc_ED9EE8:   Call 0.Method_Proc_115_27_ED9F300 (CInt(var_86), var_98)
  loc_ED9EF0:   var_98.Tag = vbNullString
  loc_ED9EFF: Next var_92 'Byte
  loc_ED9F13: Set var_8C = Me.Txt
  loc_ED9F19: Call 0.Method_Proc_115_27_ED9F300 (CInt(1), var_98)
  loc_ED9F21: var_98.Text = "Active"
  loc_ED9F2D: Exit Sub
End Sub

Public Sub Proc_115_28_E798DC(arg_C) 'E798DC
  'Data Table: 457438
  Dim var_98 As TextBox
  loc_E7988A: Set var_8C = Me.Txt
  loc_E79890: Call 0.Method_Proc_115_28_E798DCC (var_8E, var_86)
  loc_E798A0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E798B6:   Set var_8C = Me.Txt
  loc_E798BC:   Call 0.Method_Proc_115_28_E798DC0 (CInt(var_86), var_98)
  loc_E798C4:   var_98.Enabled = arg_C
  loc_E798D3: Next var_92 'Byte
  loc_E798D9: Exit Sub
End Sub

Public Sub Proc_115_29_E861C0
  'Data Table: 457438
  loc_E8616C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E8617E:   Me.DGHelp.Visible = False
  loc_E86186: End If
  loc_E861A2: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E861B4:   Me.FGPoint.Visible = False
  loc_E861BC: End If
  loc_E861BC: Exit Sub
End Sub

Public Sub Proc_115_30_120BFBC
  'Data Table: 457438
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_F4 As Variant
  Dim var_F8 As String
  Dim unk_457445 As Connection15
  Dim var_88 As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As TextBox
  loc_120BB2C: On Error Goto loc_120BF77
  loc_120BB35: Proc_183_45_E5CCA8(global_52)
  loc_120BB51: If (Me.RecordCount <= 0) Then
  loc_120BB54:   Call Proc_115_27_ED9F30()
  loc_120BB5C: Else
  loc_120BBB2:   unk_457445.Execute CStr("Select U_Name,U_AE,U_EntDt From FunctionType where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1
  loc_120BBBD:   Set var_88 = var_11C
  loc_120BC11:   var_11C = var_88.Fields
  loc_120BC7A:   var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_11C.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_120BCBF:   Me.LblUser.Caption = CStr(var_11C & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_184)))
  loc_120BD39:   var_120 = var_88.Fields.Item("U_AE")
  loc_120BD52:   var_118 = "entdt :   "
  loc_120BD5D:   var_F4 = "Last Update :   "
  loc_120BD9A:   var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_120)) = "E"), var_F4, var_118))
  loc_120BDDF:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_120BE4B:   global_64 = CStr(Me.Fields.Item("Name").Value)
  loc_120BE96:   Set var_11C = Me.Txt
  loc_120BE9C:   Call 0.Method_Proc_115_30_120BFBC0 (0, var_120)
  loc_120BEA4:   var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_120BEF4:   Set var_11C = Me.Txt
  loc_120BEFA:   Call 0.Method_Proc_115_30_120BFBC0 (0, var_120)
  loc_120BF02:   var_120.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_120BF43:   var_F8 = Proc_6_38_E69628(CVar(Me.Fields.Item("Status")))
  loc_120BF4F:   Set var_11C = Me.Txt
  loc_120BF55:   Call 0.Method_Proc_115_30_120BFBC0 (1, var_120)
  loc_120BF5D:   var_120.Text = var_F8
  loc_120BF71: End If
  loc_120BF71: Call Proc_115_29_E861C0()
  loc_120BF76: Exit Sub
  loc_120BF77: ' Referenced from: 120BB2C
  loc_120BF7F: Set var_90 = Err()
  loc_120BF85: Call 0.Method_arg_2C (var_F8)
  loc_120BFA6: MsgBox(CVar(var_F8), &H40, "Information", var_F4, var_118)
  loc_120BFB9: Exit Sub
End Sub

Public Sub Proc_115_31_E8FD70(arg_C) 'E8FD70
  'Data Table: 457438
  Dim var_10C As TextBox
  loc_E8FD04: Call Proc_115_29_E861C0()
  loc_E8FD40: If (MsgBox("Save This Event ?", 4, "Save Event", var_E4, var_104) = 6) Then
  loc_E8FD43:   Call TopCtrl1_UnknownEvent_16()
  loc_E8FD4B: Else
  loc_E8FD55:   Set var_108 = Me.Txt
  loc_E8FD5B:   Call 0.Method_Proc_115_31_E8FD700 (arg_C)
  loc_E8FD63:   var_10C.SetFocus
  loc_E8FD6F: End If
  loc_E8FD6F: Exit Sub
End Sub

Public Sub Proc_115_32_10892CC
  'Data Table: 457438
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_457445 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108905F: If (Me.RecordCount = 0) Then
  loc_1089062:   Proc_115_32_10892CC = 
  loc_1089068: End If
  loc_108906C: Set var_90 = Me.TopCtrl1
  loc_1089072: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_108908B: If (CStr() = "Add") Then
  loc_10890C9:   Set var_90 = Me.Txt
  loc_10890CF:   Call 0.Method_Proc_115_32_10892CC0 (CInt(0), var_A8, var_AC, "Select Count(*) From FunctionType Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_10890F0:   unk_457445.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1089100:    = var_D0.Item()
  loc_1089108:    = var_E4.Value
  loc_1089139:   If (var_A8.Text.Fields > 0) Then
  loc_1089157:     var_A0 = "Duplicate Name"
  loc_108915D:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1089178:     Set var_90 = Me.Txt
  loc_108917E:     Call 0.Method_Proc_115_32_10892CC0 (CInt(0))
  loc_1089186:     var_A8.SetFocus
  loc_1089197:     Proc_115_32_10892CC = &HFF
  loc_108919D:   End If
  loc_10891A0: Else
  loc_10891DB:   Set var_90 = Me.Txt
  loc_10891E1:   Call 0.Method_Proc_115_32_10892CC0 (CInt(0), var_A8, var_AC, "Select Count(*) From FunctionType Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1089213:   unk_457445.Execute var_D0 & var_AC & "' And Name<>'" & global_68 & "'", 0, var_E4
  loc_1089223:    = var_D0.Item(var_A8)
  loc_108922B:    = var_E4.Value
  loc_1089260:   If (var_A8.Text.Fields > 0) Then
  loc_1089284:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_108929F:     Set var_90 = Me.Txt
  loc_10892A5:     Call 0.Method_Proc_115_32_10892CC0 (CInt(0))
  loc_10892AD:     var_A8.SetFocus
  loc_10892BE:     Proc_115_32_10892CC = &HFF
  loc_10892C4:   End If
  loc_10892C4: End If
  loc_10892C4: Proc_115_32_10892CC = var_A8
End Sub
