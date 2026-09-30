VERSION 5.00
Begin VB.Form FrmBusinessSrc
  Caption = "Business Source Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 8175
  ClientHeight = 5595
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3660
    Top = 2625
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
    Width = 8175
    Height = 450
    TabIndex = 8
  End
  Begin MSFlexGrid FGPoint
    Left = 7710
    Top = 1440
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 3
  End
  Begin DataGrid DGHelp
    Left = 7650
    Top = 3150
    Width = 4245
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3660
    Top = 2325
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 1
    ForeColor = &H80&
    Left = 4305
    Top = 2655
    Width = 825
    Height = 225
    TabIndex = 10
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
  Begin Label LblLedgerAc
    Caption = "Active"
    Index = 6
    ForeColor = &HC00000&
    Left = 3000
    Top = 2625
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4890
    Top = 4635
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
    Left = 1500
    Top = 4650
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
    Top = 345
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
    Caption = "Business Source Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1410
    Top = 2325
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

Attribute VB_Name = "FrmBusinessSrc"


Private Sub DGHelp_UnknownEvent_9 'EE714C
  'Data Table: 45670C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE70A3: Me.DGHelp.Visible = False
  loc_EE70C2: If (Me.RecordCount > 0) Then
  loc_EE70E2:   var_B0 = Me.Fields.Item("Name")
  loc_EE7101:   Set var_B4 = Me.Txt
  loc_EE7107:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE710F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE7125: End If
  loc_EE7130: Set var_A8 = Me.Txt
  loc_EE7136: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE713E: var_B0.SetFocus
  loc_EE714A: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E73760
  'Data Table: 45670C
  loc_E7371E: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E73735: Set var_8C = Me.FGPoint
  loc_E73751: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0))
  loc_E7375F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EA9EAC
  'Data Table: 45670C
  Dim Me As Recordset15
  loc_EA9E2A: Set var_88 = Me.Txt
  loc_EA9E30: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EA9E3E: Proc_6_74_E23240(var_8C)
  loc_EA9E4A: Call Proc_12_31_E87768(var_8C)
  loc_EA9E5D: If (Index = CInt(0)) Then
  loc_EA9E77:   If (Me.RecordCount > 0) Then
  loc_EA9E85:     Set var_8C = Me.FGPoint
  loc_EA9E9D:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_EA9EAB:   End If
  loc_EA9EAB: End If
  loc_EA9EAB: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FD5C80
  'Data Table: 45670C
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As TextBox
  Dim var_6B01 As Integer
  loc_FD5AC6: If (CLng(Shift) = &H1B) Then
  loc_FD5AC9:   Call Proc_12_31_E87768()
  loc_FD5ACE:   Exit Sub
  loc_FD5ACF: End If
  loc_FD5ADD: If (KeyCode = CInt(0)) Then
  loc_FD5AFD:   Set var_9C = Me.FGPoint
  loc_FD5B2F:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_FD5B9C:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FD5BA3:     Set var_9C = Me.DGHelp
  loc_FD5BAA:     Set var_90 = Me.FGPoint
  loc_FD5BC2:     Proc_6_138_106E830(var_9C, global_56, KeyCode, var_90, 0)
  loc_FD5BD0:   End If
  loc_FD5BD0: End If
  loc_FD5BEC: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FD5C0D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(1))) Then
  loc_FD5C16:     Call Txt_Validate(KeyCode)
  loc_FD5C21:     If (var_86 = &HFF) Then
  loc_FD5C2F:       Set var_8C = Me.Txt
  loc_FD5C35:       Call 0.Method_Txt_KeyDown0 (CInt(0), var_90, var_86, 1)
  loc_FD5C3D:       var_90.SetFocus
  loc_FD5C49:       Exit Sub
  loc_FD5C4A:     End If
  loc_FD5C51:     Call Proc_12_32_E91AF8(CInt(0), var_9C)
  loc_FD5C56:     Exit Sub
  loc_FD5C5A:   Else
  loc_FD5C6F:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FD5C78:       Proc_6_75_E5335C(Shift, arg_14)
  loc_FD5C7D:     End If
  loc_FD5C7D:   End If
  loc_FD5C7D: End If
  loc_FD5C7D: Exit Sub
  loc_FD5C7E: var_6B01 = 0
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F00138
  'Data Table: 45670C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_D0 As TextBox
  loc_F00066: Proc_6_133_E7FB08(var_94)
  loc_F0006F: arg_10 = CInt(var_94)
  loc_F00078: var_96 = KeyAscii
  loc_F00083: If (var_96 = CInt(1)) Then
  loc_F000AF:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_F000BF:     Set var_CC = Me.Txt
  loc_F000C5:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_F000CD:     var_D0.Text = var_96
  loc_F000DC:   Else
  loc_F00105:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_F00115:       Set var_CC = Me.Txt
  loc_F0011B:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "No")
  loc_F00123:       var_D0.Text = arg_10
  loc_F0012F:     End If
  loc_F0012F:   End If
  loc_F00131:   arg_10 = 0
  loc_F00134: End If
  loc_F00134: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC0B80
  'Data Table: 45670C
  loc_EC0AF2: If (KeyCode = CInt(0)) Then
  loc_EC0B11:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC0B1E:     var_A4 = "Name"
  loc_EC0B3D:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_56)
  loc_EC0B6F:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC0B7D:   End If
  loc_EC0B7D: End If
  loc_EC0B7D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D124
  'Data Table: 45670C
  loc_E4D102: Set var_88 = Me.Txt
  loc_E4D108: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D116: Proc_6_73_E23294(var_8C)
  loc_E4D122: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E29A70
  'Data Table: 45670C
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E29A47: var_86 = Cancel
  loc_E29A52: If (var_86 = CInt(0)) Then
  loc_E29A58:   Call Proc_12_30_108A778(var_88)
  loc_E29A63:   If (var_88 = &HFF) Then
  loc_E29A68:     arg_10 = &HFF
  loc_E29A6B:     Exit Sub
  loc_E29A6C:   End If
  loc_E29A6C: End If
  loc_E29A6C: Exit Sub
  loc_E29A6D: Get , , var_86 'get arg_10 bytes
End Sub

Private Sub Form_Load() '107FC94
  'Data Table: 45670C
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_D8 As Variant
  Dim var_C8 As String
  Dim unk_45671F As Connection15
  loc_107FA04: On Error Goto loc_107FC4D
  loc_107FA16: Me.LblUser.Left = CDbl(13500)
  loc_107FA2D: Me.LblUser.Top = CDbl(7800)
  loc_107FA44: Me.LblLDt.Top = CDbl(8160)
  loc_107FA5B: Me.LblLDt.Left = CDbl(13500)
  loc_107FA6A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_107FA7D: Set var_8C = Me.Txt
  loc_107FA83: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107FAA2: Me.DGHelp.Left = CVar(var_90.Left)
  loc_107FABE: Set var_B8 = Me.Txt
  loc_107FAC4: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_107FADF: Set var_8C = Me.Txt
  loc_107FAE5: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107FAFD: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_107FB0C: Me.DGHelp.Top = CVar(var_90.Left)
  loc_107FB28: Set var_8C = Me.TopCtrl1
  loc_107FB2E: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_107FB3C: Call 0.Method_arg_50 (var_C8)
  loc_107FB44: var_D8 = CVar(var_C8) 'String
  loc_107FB52: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D8)
  loc_107FB81: unk_45671F.Execute "SELECT Code,Name FROM BussSource WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107FBB0: CVarUnk
  loc_107FBB5: VerifyVarObj
  loc_107FBC1: LateIdStAd
  loc_107FBF3: unk_45671F.Execute "SELECT * FROM BussSource WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107FC2E: var_C8 = "INI"
  loc_107FC3C: Call Proc_12_27_E7B134(Proc_5_1_100EC1C(var_C8, Me, Me.DGHelp, Me), Me)
  loc_107FC47: Call Proc_12_29_1210758(Me.TopCtrl1)
  loc_107FC4C: Exit Sub
  loc_107FC4D: ' Referenced from: 107FA04
  loc_107FC55: Set var_8C = Err()
  loc_107FC5B: Call 0.Method_arg_2C (var_C8)
  loc_107FC7C: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_107FC8F: Exit Sub
  loc_107FC90: Exit Sub
  loc_107FC91: var_8C = 
  loc_107FC92: CExtInstUnk
End Sub

Private Sub Form_Resize() 'ED67C8
  'Data Table: 45670C
  Dim var_8C As Label
  loc_ED6726: Call 0.Method_arg_50 (var_88)
  loc_ED6738: Me.LblFormCaption.Caption = var_88
  loc_ED6751: Me.LblFormCaption.Left = CDbl(0)
  loc_ED675D: Set var_A0 = Me.TopCtrl1
  loc_ED6763: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED6770: Set var_8C = Me.TopCtrl1
  loc_ED6776: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED6790: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED67AB: Call 0.Method_arg_100 (var_B8)
  loc_ED67BD: Me.LblFormCaption.Width = var_B8
  loc_ED67C5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E29AC8
  'Data Table: 45670C
  loc_E29AAB: Set global_52 = Nothing
  loc_E29ABD: Set global_56 = Nothing
  loc_E29AC4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E89D70
  'Data Table: 45670C
  loc_E89D0C: On Error Goto loc_E89D2C
  loc_E89D23: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E89D2B: Exit Sub
  loc_E89D2C: ' Referenced from: E89D0C
  loc_E89D34: Set var_88 = Err()
  loc_E89D3A: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E89D5B: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E89D6E: Exit Sub
  loc_E89D6F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ED69B4
  'Data Table: 45670C
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_ED6900: On Error Goto loc_ED69AE
  loc_ED6910: Me.LblUser.Caption = vbNullString
  loc_ED6925: Me.LblLDt.Caption = vbNullString
  loc_ED6950: Call Proc_12_27_E7B134(Proc_5_1_100EC1C("ADD", Me))
  loc_ED695B: Call Proc_12_28_EAFC7C(global_52)
  loc_ED696E: Set var_88 = Me.Txt
  loc_ED6974: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_ED697C: var_94.Text = "Yes"
  loc_ED6993: Set var_88 = Me.Txt
  loc_ED6999: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ED69A1: var_94.SetFocus
  loc_ED69AD: Exit Sub
  loc_ED69AE: ' Referenced from: ED6900
  loc_ED69AE: Proc_6_60_E63754(var_94)
  loc_ED69B3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC0A9C
  'Data Table: 45670C
  loc_EC0A04: On Error Goto loc_EC0A94
  loc_EC0A3E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC0A4D:   Set var_110 = Me
  loc_EC0A64:   Call Proc_12_27_E7B134(Proc_5_1_100EC1C("INI", var_110))
  loc_EC0A6F:   Call Proc_12_31_E87768(global_52)
  loc_EC0A74:   Call Proc_12_29_1210758()
  loc_EC0A7C: Else
  loc_EC0A82:   Call 0.Method_arg_1E8 (var_110)
  loc_EC0A8A:   Call var_110.SetFocus
  loc_EC0A93: End If
  loc_EC0A93: Exit Sub
  loc_EC0A94: ' Referenced from: EC0A04
  loc_EC0A94: Proc_6_60_E63754()
  loc_EC0A99: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '119A87C
  'Data Table: 45670C
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_45671F As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_119A4A0: On Error Goto loc_119A825
  loc_119A4B1: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_119A4B4:   Exit Sub
  loc_119A4B5: End If
  loc_119A4E7: var_D4 = "Guest Folio"
  loc_119A52F: If (Proc_6_108_101061C(MemVar_1F95044, "GuestFolio", "BussSource", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_119A532:   Exit Sub
  loc_119A533: End If
  loc_119A565: var_D4 = "Booking"
  loc_119A5AD: If (Proc_6_108_101061C(MemVar_1F95044, "Booking", "BussSource", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_119A5B0:   Exit Sub
  loc_119A5B1: End If
  loc_119A5E8: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_119A5ED:   var_96 = 0
  loc_119A5F9:   unk_45671F.BeginTrans var_D0
  loc_119A600:   var_96 = &HFF
  loc_119A614:   var_94 = Me.Bookmark 'Variant
  loc_119A660:   var_118 = "Delete From BussSource Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_119A66E:   unk_45671F.Execute CStr(var_118), var_138, -1
  loc_119A6B9:   var_168 = 0
  loc_119A6CC:   var_160 = 0
  loc_119A6D7:   var_15C = 0
  loc_119A6EA:   var_154 = 0
  loc_119A6F5:   var_150 = 0
  loc_119A708:   var_148 = 0
  loc_119A748:   var_B4 = "BussSource"
  loc_119A751:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B4, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_119A77F:   unk_45671F.CommitTrans
  loc_119A786:   var_96 = 0
  loc_119A794:   Me.Requery -1
  loc_119A7A4:   Me.Requery -1
  loc_119A7C4:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_119A7D1:     Me.Bookmark = var_94
  loc_119A7D9:   Else
  loc_119A7ED:     If (Me.EOF = 0) Then
  loc_119A7F6:       Me.MoveLast
  loc_119A7FB:     End If
  loc_119A7FB:   End If
  loc_119A7FB:   Call Proc_12_29_1210758(var_96, var_148, 0, var_150, var_154)
  loc_119A81C:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_119A824: End If
  loc_119A824: Exit Sub
  loc_119A825: ' Referenced from: 119A4A0
  loc_119A82B: If (var_96 = &HFF) Then
  loc_119A834:   unk_45671F.RollbackTrans
  loc_119A839: End If
  loc_119A841: Set var_9C = Err()
  loc_119A847: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_119A868: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_119A87B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EF0664
  'Data Table: 45670C
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EF0594: On Error Goto loc_EF065C
  loc_EF05A4: Me.LblUser.Caption = vbNullString
  loc_EF05B9: Me.LblLDt.Caption = vbNullString
  loc_EF05CF: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_EF05D2:   Exit Sub
  loc_EF05D3: End If
  loc_EF05F6: Call Proc_12_27_E7B134(Proc_5_1_100EC1C("EDIT", Me))
  loc_EF060F: Set var_88 = Me.Txt
  loc_EF0615: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF0628: global_64 = var_94.Text
  loc_EF0641: Set var_88 = Me.Txt
  loc_EF0647: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF064F: var_94.SetFocus
  loc_EF065B: Exit Sub
  loc_EF065C: ' Referenced from: EF0594
  loc_EF065C: Proc_6_60_E63754(global_52)
  loc_EF0661: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17264
  'Data Table: 45670C
  Dim var_6C00 As Integer
  loc_E17259: Me.Global.Unload Me
  loc_E17261: Exit Sub
  loc_E17262: var_6C00 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F23B00
  'Data Table: 45670C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F23A00: On Error Goto loc_F23A98
  loc_F23A0C: var_88 = Me.RecordCount
  loc_F23A1A: If (var_88 <= 0) Then
  loc_F23A23:   var_B8 = "Information"
  loc_F23A3E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F23A4E:   Exit Sub
  loc_F23A4F: End If
  loc_F23A56: var_10C = "Select BussSource.Code As SearchCode,BussSource.Name,BussSource.Active FROM BussSource where (LOGSITE_CODE='" & MemVar_1F95078
  loc_F23A5D: MemVar_1F950E4 = var_10C & "' or LOGSITE_CODE='HO') Order by BussSource.Name"
  loc_F23A6A: MemVar_1F95120 = Me
  loc_F23A71: var_10C = "4000,1000"
  loc_F23A77: Proc_6_126_F1C850(var_10C)
  loc_F23A92: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F23A97: Exit Sub
  loc_F23A98: ' Referenced from: F23A00
  loc_F23AA0: Set var_110 = Err()
  loc_F23AA6: Call 0.Method_arg_1C (var_88)
  loc_F23AB7: If (var_88 <> 0) Then
  loc_F23AC2:   Set var_110 = Err()
  loc_F23AC8:   Call 0.Method_arg_2C (var_10C)
  loc_F23AE9:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F23AFC: End If
  loc_F23AFC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E310E8
  'Data Table: 45670C
  loc_E310D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E310E0: Call Proc_12_29_1210758(global_52)
  loc_E310E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E30FC8
  'Data Table: 45670C
  loc_E30FB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E30FC0: Call Proc_12_29_1210758(global_52)
  loc_E30FC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E31028
  'Data Table: 45670C
  loc_E31018: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31020: Call Proc_12_29_1210758(global_52)
  loc_E31025: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E31088
  'Data Table: 45670C
  loc_E31078: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31080: Call Proc_12_29_1210758(global_52)
  loc_E31085: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1084030
  'Data Table: 45670C
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_45671F As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1083D98: On Error Goto loc_1083FE4
  loc_1083DBF: unk_45671F.Execute "select * FROM BussSource where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_1083DCA: Set var_88 = var_C8
  loc_1083DE0: var_CC = var_88.RecordCount
  loc_1083DEE: If (var_CC = 0) Then
  loc_1083E0A:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1083E1A:   Exit Sub
  loc_1083E1B: End If
  loc_1083E2A: var_A4 = MemVar_1F950B4 & "\BussSource.ttx"
  loc_1083E31: Set var_C8 = var_88 
  loc_1083E3D: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1083E47: Set var_88 = var_C8
  loc_1083E4D: var_B4 = CVar(var_12E) 'Integer
  loc_1083E50: var_98 = var_B4 'Variant
  loc_1083E6C: var_A0 = MemVar_1F950B4 & "\BussSource.RPT"
  loc_1083E75: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1083E80: MemVar_1F951E8 = var_C8
  loc_1083E9B: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1083EA3: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1083EAF: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1083EC8:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1083ED0:   Call 0.Method_arg_20 (var_138)
  loc_1083ED8:   Call 0.Method_arg_30 (var_A0)
  loc_1083F1E:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1083F34:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1083F3C:     Call 0.Method_arg_20 (var_138)
  loc_1083F44:     Call 0.Method_arg_38 ("'Business Source Master'")
  loc_1083F50:   End If
  loc_1083F53: Next var_132 'Integer
  loc_1083F71: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1083F79: Call 0.Method_arg_2C (var_DC)
  loc_1083F87: Call 0.Method_arg_150 (var_FC)
  loc_1083F92: Call 0.Method_arg_50 (var_A0)
  loc_1083F9C: Set var_138 = Nothing
  loc_1083FB6: Set var_C8 = MemVar_1F951E8 
  loc_1083FC2: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_1083FCD: MemVar_1F951E8 = var_C8
  loc_1083FE0: Set var_88 = Nothing
  loc_1083FE3: Exit Sub
  loc_1083FE4: ' Referenced from: 1083D98
  loc_1083FEC: Set var_C8 = Err()
  loc_1083FF2: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1083FFD: Call 0.Method_arg_50 (var_A4)
  loc_1084019: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108402C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A63C
  'Data Table: 45670C
  Dim Me As Recordset15
  loc_E0A633: Me.Requery -1
  loc_E0A638: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '126AF3C
  'Data Table: 45670C
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_45671F As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_B0 As Variant
  Dim var_1E4 As Variant
  Dim var_204 As Variant
  loc_126A9F4: On Error Goto loc_126AEE7
  loc_126A9FB: var_86 = CByte(0) 'Byte
  loc_126AA0A: Set var_90 = Me.Txt
  loc_126AA10: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_126AA39: If (Proc_6_27_EA61EC(var_94, "Name") = 0) Then
  loc_126AA43:   Call Txt_GotFocus(CInt(0))
  loc_126AA48:   Exit Sub
  loc_126AA49: End If
  loc_126AA4C: Call Proc_12_30_108A778(var_9E)
  loc_126AA57: If (var_9E = &HFF) Then
  loc_126AA5A:   Exit Sub
  loc_126AA5B: End If
  loc_126AA5F: Set var_90 = Me.TopCtrl1
  loc_126AA65: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_126AA7E: If (CStr() = "Add") Then
  loc_126AA87:   var_D4 = 0
  loc_126AAA4:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From BussSource WHERE SITE_CODE='" & MemVar_1F95070
  loc_126AAAB:   var_B4 = CStr() & "'"
  loc_126AAB4:   unk_45671F.Execute var_B4, var_B0, -1
  loc_126AABC:   var_90 = var_90.Fields
  loc_126AAC4:   var_D4 = var_94.Item(var_94)
  loc_126AACC:   var_98 = var_98.Value
  loc_126AB05:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_126AB2B:   var_E4 = Format(CStr(var_E4), "000")
  loc_126AB33:   var_108 = (1 + var_E4)
  loc_126AB3E:   global_60 = CStr(var_108)
  loc_126AB53: Else
  loc_126AB70:   var_94 = Me.Fields.Item("Code")
  loc_126AB87:   global_60 = CStr(var_94.Value)
  loc_126AB98: End If
  loc_126ABA1: unk_45671F.BeginTrans var_10C
  loc_126ABAA: var_86 = CByte(1) 'Byte
  loc_126ABB2: Set var_90 = Me.TopCtrl1
  loc_126ABB8: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_126ABD1: If (CStr(var_F8) = "Add") Then
  loc_126ABEB:   var_9C = "Insert Into BussSource(Code,Name,Active,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_60
  loc_126AC03:   Set var_90 = Me.Txt
  loc_126AC09:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_9C & "','")
  loc_126AC11:   var_248 = var_94.Text
  loc_126AC1A:   var_110 = -1 & var_B4
  loc_126AC2F:   Set var_98 = Me.Txt
  loc_126AC35:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, CVar(var_110 & "',"))
  loc_126AC44:   Proc_6_17_EAAE40(var_E4, CVar(var_114))
  loc_126AC8D:   Proc_6_7_F26918(var_1B4, Date)
  loc_126ACA8:   var_204 = var_24C & var_E4 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_1B4 & ",'A','" & CVar(MemVar_1F95078) 
  loc_126ACBF:   unk_45671F.Execute CStr(var_204 & "')"), var_E4, 
  loc_126AD02: Else
  loc_126AD20:   Set var_90 = Me.Txt
  loc_126AD26:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE BussSource SET Name='")
  loc_126AD2E:   var_248 = var_94.Text
  loc_126AD37:   var_B4 = -1 & var_9C
  loc_126AD3E:   var_F8 = CVar(var_B4 & "',Active=") 'String
  loc_126AD4C:   Set var_98 = Me.Txt
  loc_126AD52:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114)
  loc_126AD61:   Proc_6_17_EAAE40(var_E4, CVar(var_114))
  loc_126AD69:   var_108 = var_F8 & var_E4 
  loc_126AD6D:   var_C4 = ",SITE_CODE='"
  loc_126ADAA:   Proc_6_7_F26918(var_1B4, Date)
  loc_126ADBB:   var_1E4 = var_108 & var_C4 & CVar(MemVar_1F95070) & "',U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_1B4 & " ,U_AE='E' WHERE Code='" 
  loc_126ADDF:   unk_45671F.Execute CStr(var_1E4 & CVar(global_60) & "'"), var_24C, 
  loc_126AE1B: End If
  loc_126AE21: unk_45671F.CommitTrans
  loc_126AE2A: var_86 = CByte(0) 'Byte
  loc_126AE39: Me.Requery -1
  loc_126AE49: Me.Requery -1
  loc_126AE76: Me.Find "Code='" & global_60 & "'", 0, 1
  loc_126AE86: Set var_90 = Me.TopCtrl1
  loc_126AE8C: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_126AEA5: If (CStr() = "Add") Then
  loc_126AEA8:   Call TopCtrl1_UnknownEvent_A()
  loc_126AEAD:   Exit Sub
  loc_126AEAE: End If
  loc_126AEC3: var_9C = "INI"
  loc_126AED1: Call Proc_12_27_E7B134(Proc_5_1_100EC1C(var_9C, Me))
  loc_126AEDC: Call Proc_12_31_E87768(global_52)
  loc_126AEE1: Call Proc_12_29_1210758()
  loc_126AEE6: Exit Sub
  loc_126AEE7: ' Referenced from: 126A9F4
  loc_126AEF0: If (CInt(var_86) = 1) Then
  loc_126AEF9:   unk_45671F.RollbackTrans
  loc_126AEFE: End If
  loc_126AF06: Set var_90 = Err()
  loc_126AF0C: Call 0.Method_arg_2C (var_9C)
  loc_126AF25: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_126AF38: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E311A4
  'Data Table: 45670C
  loc_E31198: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3119B:   Call DGHelp_UnknownEvent_9()
  loc_E311A0: End If
  loc_E311A0: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC09B4
  'Data Table: 45670C
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC092A: On Error Goto loc_EC096F
  loc_EC0933: Me.MoveFirst
  loc_EC094D: var_8C = "code='" & MyValue
  loc_EC095D: Me.Find var_8C & "'", 0, 1
  loc_EC0969: Call Proc_12_29_1210758(var_A0)
  loc_EC096E: Exit Sub
  loc_EC096F: ' Referenced from: EC092A
  loc_EC0977: Set var_A4 = Err()
  loc_EC097D: Call 0.Method_arg_2C (var_8C)
  loc_EC099E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC09B1: Exit Sub
  loc_EC09B2: Exit Sub
End Sub

Public Sub Proc_12_27_E7B134(arg_C) 'E7B134
  'Data Table: 45670C
  Dim var_98 As TextBox
  loc_E7B0E2: Set var_8C = Me.Txt
  loc_E7B0E8: Call 0.Method_Proc_12_27_E7B134C (var_8E, var_86)
  loc_E7B0F8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7B10E:   Set var_8C = Me.Txt
  loc_E7B114:   Call 0.Method_Proc_12_27_E7B1340 (CInt(var_86), var_98)
  loc_E7B11C:   var_98.Enabled = arg_C
  loc_E7B12B: Next var_92 'Byte
  loc_E7B131: Exit Sub
End Sub

Public Sub Proc_12_28_EAFC7C
  'Data Table: 45670C
  Dim var_98 As TextBox
  loc_EAFBEE: global_64 = vbNullString
  loc_EAFC00: Set var_8C = Me.Txt
  loc_EAFC06: Call 0.Method_Proc_12_28_EAFC7CC (var_8E, var_86)
  loc_EAFC16: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EAFC2C:   Set var_8C = Me.Txt
  loc_EAFC32:   Call 0.Method_Proc_12_28_EAFC7C0 (CInt(var_86), var_98)
  loc_EAFC3A:   var_98.Text = vbNullString
  loc_EAFC56:   Set var_8C = Me.Txt
  loc_EAFC5C:   Call 0.Method_Proc_12_28_EAFC7C0 (CInt(var_86), var_98)
  loc_EAFC64:   var_98.Tag = vbNullString
  loc_EAFC73: Next var_92 'Byte
  loc_EAFC79: Exit Sub
End Sub

Public Sub Proc_12_29_1210758
  'Data Table: 45670C
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_45671F As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_11C As TextBox
  loc_12102C4: On Error Goto loc_1210715
  loc_12102CD: Proc_183_45_E5CCA8(global_52)
  loc_1210328: unk_45671F.Execute CStr("Select U_Name,U_AE,U_EntDt From BussSource where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_1210333: Set var_88 = var_118
  loc_1210387: var_118 = var_88.Fields
  loc_12103F0: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1210435: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_12104AF: var_11C = var_88.Fields.Item("U_AE")
  loc_12104C8: var_114 = "entdt : "
  loc_12104D3: var_F0 = "Last Update : "
  loc_1210510: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), var_F0, var_114))
  loc_1210555: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_12105A4: If (Me.RecordCount <= 0) Then
  loc_12105A7:   Call Proc_12_28_EAFC7C()
  loc_12105AF: Else
  loc_12105E3:   global_60 = CStr(Me.Fields.Item("Name").Value)
  loc_1210630:   Set var_118 = Me.Txt
  loc_1210636:   Call 0.Method_Proc_12_29_12107580 (CInt(0), var_11C)
  loc_121063E:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1210690:   Set var_118 = Me.Txt
  loc_1210696:   Call 0.Method_Proc_12_29_12107580 (CInt(0), var_11C)
  loc_121069E:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_12106DF:   var_F4 = Proc_6_38_E69628(CVar(Me.Fields.Item("Active")))
  loc_12106ED:   Set var_118 = Me.Txt
  loc_12106F3:   Call 0.Method_Proc_12_29_12107580 (CInt(1), var_11C)
  loc_12106FB:   var_11C.Text = var_F4
  loc_121070F: End If
  loc_121070F: Call Proc_12_31_E87768()
  loc_1210714: Exit Sub
  loc_1210715: ' Referenced from: 12102C4
  loc_121071D: Set var_8C = Err()
  loc_1210723: Call 0.Method_arg_2C (var_F4)
  loc_1210744: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_1210757: Exit Sub
End Sub

Public Sub Proc_12_30_108A778
  'Data Table: 45670C
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_45671F As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108A50B: If (Me.RecordCount = 0) Then
  loc_108A50E:   Proc_12_30_108A778 = 
  loc_108A514: End If
  loc_108A518: Set var_90 = Me.TopCtrl1
  loc_108A51E: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_108A537: If (CStr() = "Add") Then
  loc_108A575:   Set var_90 = Me.Txt
  loc_108A57B:   Call 0.Method_Proc_12_30_108A7780 (CInt(0), var_A8, var_AC, "Select Count(*) From BussSource Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108A59C:   unk_45671F.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_108A5AC:    = var_D0.Item()
  loc_108A5B4:    = var_E4.Value
  loc_108A5E5:   If (var_A8.Text.Fields > 0) Then
  loc_108A603:     var_A0 = "Duplicate Name"
  loc_108A609:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_108A624:     Set var_90 = Me.Txt
  loc_108A62A:     Call 0.Method_Proc_12_30_108A7780 (CInt(0))
  loc_108A632:     var_A8.SetFocus
  loc_108A643:     Proc_12_30_108A778 = &HFF
  loc_108A649:   End If
  loc_108A64C: Else
  loc_108A687:   Set var_90 = Me.Txt
  loc_108A68D:   Call 0.Method_Proc_12_30_108A7780 (CInt(0), var_A8, var_AC, "Select Count(*) From BussSource Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108A6BF:   unk_45671F.Execute var_D0 & var_AC & "' And Name<>'" & global_64 & "'", 0, var_E4
  loc_108A6CF:    = var_D0.Item(var_A8)
  loc_108A6D7:    = var_E4.Value
  loc_108A70C:   If (var_A8.Text.Fields > 0) Then
  loc_108A730:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_108A74B:     Set var_90 = Me.Txt
  loc_108A751:     Call 0.Method_Proc_12_30_108A7780 (CInt(0))
  loc_108A759:     var_A8.SetFocus
  loc_108A76A:     Proc_12_30_108A778 = &HFF
  loc_108A770:   End If
  loc_108A770: End If
  loc_108A770: Proc_12_30_108A778 = var_A8
End Sub

Public Sub Proc_12_31_E87768
  'Data Table: 45670C
  loc_E87714: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E87726:   Me.DGHelp.Visible = False
  loc_E8772E: End If
  loc_E8774A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E8775C:   Me.FGPoint.Visible = False
  loc_E87764: End If
  loc_E87764: Exit Sub
End Sub

Public Sub Proc_12_32_E91AF8(arg_C) 'E91AF8
  'Data Table: 45670C
  Dim var_10C As TextBox
  loc_E91A8C: Call Proc_12_31_E87768()
  loc_E91AC8: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E91ACB:   Call TopCtrl1_UnknownEvent_16()
  loc_E91AD3: Else
  loc_E91ADD:   Set var_108 = Me.Txt
  loc_E91AE3:   Call 0.Method_Proc_12_32_E91AF80 (arg_C)
  loc_E91AEB:   var_10C.SetFocus
  loc_E91AF7: End If
  loc_E91AF7: Exit Sub
End Sub
