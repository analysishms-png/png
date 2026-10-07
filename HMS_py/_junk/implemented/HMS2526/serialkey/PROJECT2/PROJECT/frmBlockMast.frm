VERSION 5.00
Begin VB.Form frmBlockMast
  Caption = "Block Master"
  ForeColor = &HFF0000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2880
    Top = 2940
    Width = 1845
    Height = 285
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2880
    Top = 2625
    Width = 585
    Height = 285
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2880
    Top = 2310
    Width = 4215
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 450
    TabIndex = 0
  End
  Begin MSFlexGrid FGPoint
    Left = 12990
    Top = 1095
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 1
  End
  Begin DataGrid DGHelp
    Left = 10995
    Top = 3645
    Width = 4245
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin CommonDialog CDLG
  End
  Begin Label LblHelp
    Caption = "Help"
    ForeColor = &HC0&
    Left = 75
    Top = 6360
    Width = 14190
    Height = 1575
    TabIndex = 14
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
  Begin Label Label1
    Caption = "Color Selection"
    Index = 3
    ForeColor = &HC0&
    Left = 1365
    Top = 3405
    Width = 1470
    Height = 240
    TabIndex = 11
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
    Index = 14
    BackColor = &H8080FF&
    ForeColor = &H0&
    Left = 2895
    Top = 3270
    Width = 4290
    Height = 405
    TabIndex = 10
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
  Begin Shape Shape1
    BorderColor = &HC00000&
    Left = 2880
    Top = 3270
    Width = 4335
    Height = 435
    BorderWidth = 2
  End
  Begin Label LblName
    Caption = "Status"
    Index = 2
    ForeColor = &HFF0000&
    Left = 1605
    Top = 2880
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
  Begin Label LblName
    Caption = "Short Name"
    Index = 1
    ForeColor = &HFF0000&
    Left = 1605
    Top = 2595
    Width = 1125
    Height = 240
    TabIndex = 8
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
  Begin Label LblName
    Caption = "Block Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 1605
    Top = 2310
    Width = 1140
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
    Left = 0
    Top = 435
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 12105
    Top = 7815
    Width = 2880
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 12285
    Top = 8490
    Width = 2790
    Height = 285
    TabIndex = 4
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
End

Attribute VB_Name = "frmBlockMast"


Private Sub DGHelp_UnknownEvent_9 'EE544C
  'Data Table: 454CB8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE53A3: Me.DGHelp.Visible = False
  loc_EE53C2: If (Me.RecordCount > 0) Then
  loc_EE53E2:   var_B0 = Me.Fields.Item("Name")
  loc_EE5401:   Set var_B4 = Me.Txt
  loc_EE5407:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE540F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE5425: End If
  loc_EE5430: Set var_A8 = Me.Txt
  loc_EE5436: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE543E: var_B0.SetFocus
  loc_EE544A: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E76478
  'Data Table: 454CB8
  loc_E76436: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E7644D: Set var_8C = Me.FGPoint
  loc_E76469: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0))
  loc_E76477: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EEB148
  'Data Table: 454CB8
  Dim var_8C As Label
  Dim var_96 As Integer
  Dim Me As Recordset15
  loc_EEB08A: Set var_88 = Me.Txt
  loc_EEB090: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EEB09E: Proc_6_74_E23240(var_8C)
  loc_EEB0AA: Call Proc_255_29_E840F0(var_8C)
  loc_EEB0D0: Me.LblHelp.Caption = Proc_6_154_EE8260(Me)
  loc_EEB0E2: var_96 = Index
  loc_EEB0ED: If (var_96 = CInt(0)) Then
  loc_EEB107:   If (Me.RecordCount > 0) Then
  loc_EEB115:     Set var_8C = Me.FGPoint
  loc_EEB12D:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_EEB13B:   End If
  loc_EEB13E: Else
  loc_EEB144:   If (var_96 = 2) Then
  loc_EEB147:   End If
  loc_EEB147: End If
  loc_EEB147: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FBF128
  'Data Table: 454CB8
  Dim Me As Recordset15
  loc_FBEF8A: If (CLng(Shift) = &H1B) Then
  loc_FBEF8D:   Call Proc_255_29_E840F0()
  loc_FBEF92:   Exit Sub
  loc_FBEF93: End If
  loc_FBEFA1: If (KeyCode = CInt(0)) Then
  loc_FBEFC1:   Set var_9C = Me.FGPoint
  loc_FBEFF3:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_FBF060:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FBF067:     Set var_9C = Me.DGHelp
  loc_FBF086:     Proc_6_138_106E830(var_9C, global_56, KeyCode, Me.FGPoint, 0)
  loc_FBF094:   End If
  loc_FBF094: End If
  loc_FBF0B0: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FBF0D1:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(0))) Then
  loc_FBF0D7:     Call Proc_255_31_E90FB8(KeyCode, 1, var_9C)
  loc_FBF0DF:   Else
  loc_FBF0F4:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FBF0FD:       Proc_6_75_E5335C(Shift, arg_14)
  loc_FBF105:     Else
  loc_FBF118:       If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_FBF121:         Proc_6_76_E533C8(Shift, arg_14)
  loc_FBF126:       End If
  loc_FBF126:     End If
  loc_FBF126:   End If
  loc_FBF126: End If
  loc_FBF126: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EEA918
  'Data Table: 454CB8
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_EEA864: If (KeyAscii = 2) Then
  loc_EEA890:   If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_EEA8A0:     Set var_CC = Me.Txt
  loc_EEA8A6:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EEA8AE:     var_D0.Text = "Active"
  loc_EEA8BD:   Else
  loc_EEA8E6:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_EEA8F6:       Set var_CC = Me.Txt
  loc_EEA8FC:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EEA904:       var_D0.Text = "Non Active"
  loc_EEA910:     End If
  loc_EEA910:   End If
  loc_EEA912:   arg_10 = 0
  loc_EEA915: End If
  loc_EEA915: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC72C0
  'Data Table: 454CB8
  loc_EC7232: If (KeyCode = CInt(0)) Then
  loc_EC7251:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC725E:     var_A4 = "Name"
  loc_EC727D:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_56)
  loc_EC72AF:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC72BD:   End If
  loc_EC72BD: End If
  loc_EC72BD: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4BB9C
  'Data Table: 454CB8
  loc_E4BB7A: Set var_88 = Me.Txt
  loc_E4BB80: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4BB8E: Proc_6_73_E23294(var_8C)
  loc_E4BB9A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F21F14
  'Data Table: 454CB8
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As TextBox
  loc_F21E1B: var_86 = Cancel
  loc_F21E26: If (var_86 = CInt(0)) Then
  loc_F21E2C:   Call Proc_255_32_1160480(var_88)
  loc_F21E37:   If (var_88 = &HFF) Then
  loc_F21E3C:     arg_10 = &HFF
  loc_F21E3F:     Exit Sub
  loc_F21E40:   End If
  loc_F21E43: Else
  loc_F21E4B:   If (var_86 = CInt(1)) Then
  loc_F21E51:     Call Proc_255_32_1160480(var_88, arg_10)
  loc_F21E5C:     If (var_88 = &HFF) Then
  loc_F21E61:       arg_10 = &HFF
  loc_F21E64:       Exit Sub
  loc_F21E65:     End If
  loc_F21E68:   Else
  loc_F21E6E:     If (var_86 = 2) Then
  loc_F21E7B:       Set var_8C = Me.Txt
  loc_F21E81:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F21EBC:       If (Ucase(Left(CVar(var_90), 1)) = "Active") Then
  loc_F21ECC:         Set var_8C = Me.Txt
  loc_F21ED2:         Call 0.Method_Txt_Validate0 (Cancel, var_90, "Active")
  loc_F21EDA:         var_90.Text = arg_10
  loc_F21EE9:       Else
  loc_F21EF6:         Set var_8C = Me.Txt
  loc_F21EFC:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F21F04:         var_90.Text = "Non Active"
  loc_F21F10:       End If
  loc_F21F10:     End If
  loc_F21F10:   End If
  loc_F21F10: End If
  loc_F21F10: Exit Sub
End Sub

Private Sub Form_Load() '107E820
  'Data Table: 454CB8
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_D8 As Variant
  Dim var_C8 As String
  Dim unk_454CC4 As Connection15
  loc_107E590: On Error Goto loc_107E7D9
  loc_107E59A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_107E5AE: Me.LblUser.Left = CDbl(13500)
  loc_107E5C5: Me.LblUser.Top = CDbl(7800)
  loc_107E5DC: Me.LblLDt.Top = CDbl(8160)
  loc_107E5F3: Me.LblLDt.Left = CDbl(13500)
  loc_107E609: Set var_8C = Me.Txt
  loc_107E60F: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107E62E: Me.DGHelp.Left = CVar(var_90.Left)
  loc_107E64A: Set var_B8 = Me.Txt
  loc_107E650: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_107E66B: Set var_8C = Me.Txt
  loc_107E671: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107E689: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_107E698: Me.DGHelp.Top = CVar(var_90.Left)
  loc_107E6B4: Set var_8C = Me.TopCtrl1
  loc_107E6BA: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_107E6C8: Call 0.Method_arg_50 (var_C8)
  loc_107E6D0: var_D8 = CVar(var_C8) 'String
  loc_107E6DE: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D8)
  loc_107E70D: unk_454CC4.Execute "SELECT Code,Name FROM BlockMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107E73C: CVarUnk
  loc_107E741: VerifyVarObj
  loc_107E74D: LateIdStAd
  loc_107E77F: unk_454CC4.Execute "SELECT * FROM BlockMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107E7BA: var_C8 = "INI"
  loc_107E7C8: Call Proc_255_28_E7CEE4(Proc_5_1_100EC1C(var_C8, Me, Me.DGHelp, Me), Me)
  loc_107E7D3: Call Proc_255_30_123B024(Me.TopCtrl1)
  loc_107E7D8: Exit Sub
  loc_107E7D9: ' Referenced from: 107E590
  loc_107E7E1: Set var_8C = Err()
  loc_107E7E7: Call 0.Method_arg_2C (var_C8)
  loc_107E808: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_107E81B: Exit Sub
  loc_107E81C: Exit Sub
End Sub

Private Sub Form_Resize() 'ED5F58
  'Data Table: 454CB8
  Dim var_8C As Label
  loc_ED5EB6: Call 0.Method_arg_50 (var_88)
  loc_ED5EC8: Me.LblFormCaption.Caption = var_88
  loc_ED5EE1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED5EED: Set var_A0 = Me.TopCtrl1
  loc_ED5EF3: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED5F00: Set var_8C = Me.TopCtrl1
  loc_ED5F06: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED5F20: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED5F3B: Call 0.Method_arg_100 (var_B8)
  loc_ED5F4D: Me.LblFormCaption.Width = var_B8
  loc_ED5F55: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E27734
  'Data Table: 454CB8
  loc_E27717: Set global_52 = Nothing
  loc_E27729: Set global_56 = Nothing
  loc_E27730: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E89C18
  'Data Table: 454CB8
  loc_E89BB4: On Error Goto loc_E89BD4
  loc_E89BCB: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E89BD3: Exit Sub
  loc_E89BD4: ' Referenced from: E89BB4
  loc_E89BDC: Set var_88 = Err()
  loc_E89BE2: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E89C03: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E89C16: Exit Sub
  loc_E89C17: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ED6054
  'Data Table: 454CB8
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_ED5FA0: On Error Goto loc_ED604C
  loc_ED5FB0: Me.LblUser.Caption = vbNullString
  loc_ED5FC5: Me.LblLDt.Caption = vbNullString
  loc_ED5FF0: Call Proc_255_28_E7CEE4(Proc_5_1_100EC1C("ADD", Me))
  loc_ED5FFB: Call Proc_255_27_EB07A4(global_52)
  loc_ED600B: Set var_88 = Me.Txt
  loc_ED6011: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ED6019: var_94.SetFocus
  loc_ED6031: Set var_88 = Me.Txt
  loc_ED6037: Call 0.Method_TopCtrl1_UnknownEvent_A0 (2, var_94)
  loc_ED603F: var_94.Text = "Active"
  loc_ED604B: Exit Sub
  loc_ED604C: ' Referenced from: ED5FA0
  loc_ED604C: Proc_6_60_E63754(var_94)
  loc_ED6051: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC747C
  'Data Table: 454CB8
  loc_EC73E4: On Error Goto loc_EC7474
  loc_EC741E: If (MsgBox("Cancel ?", &H33, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC742D:   Set var_10C = Me
  loc_EC7444:   Call Proc_255_28_E7CEE4(Proc_5_1_100EC1C("INI", var_10C))
  loc_EC744F:   Call Proc_255_29_E840F0(global_52)
  loc_EC7454:   Call Proc_255_30_123B024()
  loc_EC745C: Else
  loc_EC7462:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC746A:   Call var_10C.SetFocus
  loc_EC7473: End If
  loc_EC7473: Exit Sub
  loc_EC7474: ' Referenced from: EC73E4
  loc_EC7474: Proc_6_60_E63754()
  loc_EC7479: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10DFC64
  'Data Table: 454CB8
  Dim var_96 As Integer
  Dim unk_454CC4 As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10DF984: On Error Goto loc_10DFC0D
  loc_10DF995: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_10DF998:   Exit Sub
  loc_10DF999: End If
  loc_10DF9D0: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10DF9D5:   var_96 = 0
  loc_10DF9E1:   unk_454CC4.BeginTrans var_11C
  loc_10DF9E8:   var_96 = &HFF
  loc_10DF9FC:   var_94 = Me.Bookmark 'Variant
  loc_10DFA48:   var_F8 = "Delete From BlockMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_10DFA56:   unk_454CC4.Execute CStr(var_F8), var_118, -1
  loc_10DFAA1:   var_164 = 0
  loc_10DFAB4:   var_15C = 0
  loc_10DFABF:   var_158 = 0
  loc_10DFAD2:   var_150 = 0
  loc_10DFADD:   var_14C = 0
  loc_10DFAF0:   var_144 = 0
  loc_10DFB30:   var_128 = "BlockMast"
  loc_10DFB39:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_10DFB67:   unk_454CC4.CommitTrans
  loc_10DFB6E:   var_96 = 0
  loc_10DFB7C:   Me.Requery -1
  loc_10DFB8C:   Me.Requery -1
  loc_10DFBAC:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10DFBB9:     Me.Bookmark = var_94
  loc_10DFBC1:   Else
  loc_10DFBD5:     If (Me.EOF = 0) Then
  loc_10DFBDE:       Me.MoveLast
  loc_10DFBE3:     End If
  loc_10DFBE3:   End If
  loc_10DFBE3:   Call Proc_255_30_123B024(var_96, var_144, 0, var_14C, var_150)
  loc_10DFC04:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_10DFC0C: End If
  loc_10DFC0C: Exit Sub
  loc_10DFC0D: ' Referenced from: 10DF984
  loc_10DFC13: If (var_96 = &HFF) Then
  loc_10DFC1C:   unk_454CC4.RollbackTrans
  loc_10DFC21: End If
  loc_10DFC29: Set var_120 = Err()
  loc_10DFC2F: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10DFC50: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10DFC63: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F14498
  'Data Table: 454CB8
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F143A0: On Error Goto loc_F1448F
  loc_F143B1: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F143B4:   Exit Sub
  loc_F143B5: End If
  loc_F143D8: Call Proc_255_28_E7CEE4(Proc_5_1_100EC1C("EDIT", Me))
  loc_F143F1: Set var_8C = Me.Txt
  loc_F143F7: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F1440A: global_68 = var_94.Text
  loc_F14423: Set var_8C = Me.Txt
  loc_F14429: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F14431: var_94.SetFocus
  loc_F1444A: Set var_8C = Me.Txt
  loc_F14450: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F14458: var_94.Enabled = False
  loc_F14471: Me.LblUser.Caption = vbNullString
  loc_F14486: Me.LblLDt.Caption = vbNullString
  loc_F1448E: Exit Sub
  loc_F1448F: ' Referenced from: F143A0
  loc_F1448F: Proc_6_60_E63754(global_52)
  loc_F14494: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17EDC
  'Data Table: 454CB8
  loc_E17ED1: Me.Global.Unload Me
  loc_E17ED9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F26548
  'Data Table: 454CB8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F26448: On Error Goto loc_F264E0
  loc_F26454: var_88 = Me.RecordCount
  loc_F26462: If (var_88 <= 0) Then
  loc_F2646B:   var_B8 = "Information"
  loc_F26486:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F26496:   Exit Sub
  loc_F26497: End If
  loc_F264A5: MemVar_1F950E4 = "Select BlockMast.Code As SearchCode,BlockMast.Name,ShortName,Status FROM BlockMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by BlockMast.Name"
  loc_F264B2: MemVar_1F95120 = Me
  loc_F264B9: var_10C = "4000,700,1300"
  loc_F264BF: Proc_6_126_F1C850(var_10C)
  loc_F264DA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F264DF: Exit Sub
  loc_F264E0: ' Referenced from: F26448
  loc_F264E8: Set var_110 = Err()
  loc_F264EE: Call 0.Method_arg_1C (var_88)
  loc_F264FF: If (var_88 <> 0) Then
  loc_F2650A:   Set var_110 = Err()
  loc_F26510:   Call 0.Method_arg_2C (var_10C)
  loc_F26531:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F26544: End If
  loc_F26544: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3AD48
  'Data Table: 454CB8
  loc_E3AD38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3AD40: Call Proc_255_30_123B024(global_52)
  loc_E3AD45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E35108
  'Data Table: 454CB8
  loc_E350F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35100: Call Proc_255_30_123B024(global_52)
  loc_E35105: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3B168
  'Data Table: 454CB8
  loc_E3B158: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3B160: Call Proc_255_30_123B024(global_52)
  loc_E3B165: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E355E8
  'Data Table: 454CB8
  loc_E355D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E355E0: Call Proc_255_30_123B024(global_52)
  loc_E355E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1084324
  'Data Table: 454CB8
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_454CC4 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  Dim arg_DFF As Integer
  loc_108408C: On Error Goto loc_10842D8
  loc_10840B3: unk_454CC4.Execute "select * FROM BlockMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_10840BE: Set var_88 = var_C8
  loc_10840D4: var_CC = var_88.RecordCount
  loc_10840E2: If (var_CC = 0) Then
  loc_10840FE:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108410E:   Exit Sub
  loc_108410F: End If
  loc_108411E: var_A4 = MemVar_1F950B4 & "\BlockMast.ttx"
  loc_1084125: Set var_C8 = var_88 
  loc_1084131: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108413B: Set var_88 = var_C8
  loc_1084141: var_B4 = CVar(var_12E) 'Integer
  loc_1084144: var_98 = var_B4 'Variant
  loc_1084160: var_A0 = MemVar_1F950B4 & "\BlockMast.RPT"
  loc_1084169: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1084174: MemVar_1F951E8 = var_C8
  loc_108418F: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1084197: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10841A3: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_10841BC:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10841C4:   Call 0.Method_arg_20 (var_138)
  loc_10841CC:   Call 0.Method_arg_30 (var_A0)
  loc_1084212:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1084228:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1084230:     Call 0.Method_arg_20 (var_138)
  loc_1084238:     Call 0.Method_arg_38 ("'Block Master'")
  loc_1084244:   End If
  loc_1084247: Next var_132 'Integer
  loc_1084265: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_108426D: Call 0.Method_arg_2C (var_DC)
  loc_108427B: Call 0.Method_arg_150 (var_FC)
  loc_1084286: Call 0.Method_arg_50 (var_A0)
  loc_1084290: Set var_138 = Nothing
  loc_10842AA: Set var_C8 = MemVar_1F951E8 
  loc_10842B6: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_10842C1: MemVar_1F951E8 = var_C8
  loc_10842D4: Set var_88 = Nothing
  loc_10842D7: Exit Sub
  loc_10842D8: ' Referenced from: 108408C
  loc_10842E0: Set var_C8 = Err()
  loc_10842E6: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10842F1: Call 0.Method_arg_50 (var_A4)
  loc_108430D: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1084320: Exit Sub
  loc_1084321: arg_DFF = var_138
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A9B0
  'Data Table: 454CB8
  Dim Me As Recordset15
  loc_E0A9A7: Me.Requery -1
  loc_E0A9AC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12ADC44
  'Data Table: 454CB8
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_454CC4 As Connection15
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
  Dim var_130 As String
  Dim var_128 As TextBox
  Dim var_E4 As Variant
  Dim var_164 As Variant
  Dim var_118 As String
  Dim var_12C As String
  Dim var_B0 As Variant
  loc_12AD670: On Error Goto loc_12ADBF1
  loc_12AD677: var_86 = CByte(0) 'Byte
  loc_12AD686: Set var_90 = Me.Txt
  loc_12AD68C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_12AD6B5: If (Proc_6_27_EA61EC(var_94, "Name") = 0) Then
  loc_12AD6BF:   Call Txt_GotFocus(CInt(0))
  loc_12AD6C4:   Exit Sub
  loc_12AD6C5: End If
  loc_12AD6D0: Set var_90 = Me.Txt
  loc_12AD6D6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_12AD6FF: If (Proc_6_27_EA61EC(var_94, "ShortName") = 0) Then
  loc_12AD709:   Call Txt_GotFocus(CInt(0))
  loc_12AD70E:   Exit Sub
  loc_12AD70F: End If
  loc_12AD712: Call Proc_255_32_1160480(var_9E)
  loc_12AD71D: If (var_9E = &HFF) Then
  loc_12AD720:   Exit Sub
  loc_12AD721: End If
  loc_12AD725: Set var_90 = Me.TopCtrl1
  loc_12AD72B: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_12AD744: If (CStr() = "Add") Then
  loc_12AD74D:   var_D4 = 0
  loc_12AD76A:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From BlockMast Where Site_Code='" & MemVar_1F95070
  loc_12AD771:   var_B4 = CStr() & "'"
  loc_12AD77A:   unk_454CC4.Execute var_B4, var_B0, -1
  loc_12AD782:   var_90 = var_90.Fields
  loc_12AD78A:   var_D4 = var_94.Item(var_94)
  loc_12AD792:   var_98 = var_98.Value
  loc_12AD7CB:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_12AD7F1:   var_E4 = Format(CStr(var_E4), "000")
  loc_12AD7F9:   var_108 = (1 + var_E4)
  loc_12AD804:   global_64 = CStr(var_108)
  loc_12AD819: Else
  loc_12AD836:   var_94 = Me.Fields.Item("Code")
  loc_12AD83E:   var_B0 = var_94.Value
  loc_12AD84D:   global_64 = CStr(var_B0)
  loc_12AD85E: End If
  loc_12AD867: unk_454CC4.BeginTrans var_10C
  loc_12AD870: var_86 = CByte(1) 'Byte
  loc_12AD878: Set var_90 = Me.TopCtrl1
  loc_12AD87E: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_12AD897: If (CStr(var_F8) = "Add") Then
  loc_12AD8B1:   var_9C = "Insert Into BlockMast(Code,Name,ShortName,Status,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_64
  loc_12AD8B8:   var_E8 = var_9C & "','"
  loc_12AD8C9:   Set var_90 = Me.Txt
  loc_12AD8CF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_E8)
  loc_12AD8D7:   var_1A8 = var_94.Text
  loc_12AD8E0:   var_110 = -1 & var_B4
  loc_12AD8E7:   var_11C = var_110 & "','"
  loc_12AD8F8:   Set var_98 = Me.Txt
  loc_12AD8FE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_118)
  loc_12AD906:   var_11C = var_114.Text
  loc_12AD916:   var_130 = var_1AC & var_118 & "','"
  loc_12AD925:   Set var_124 = Me.Txt
  loc_12AD92B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_128, var_12C)
  loc_12AD933:   var_130 = var_128.Text
  loc_12AD96D:   Proc_183_7_EB17D4(var_B0, MemVar_1F950EC)
  loc_12AD988:   var_164 = CVar(var_E4 & var_12C & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") & var_B0 & ",'A','" & CVar(MemVar_1F95078) 
  loc_12AD99F:   unk_454CC4.Execute CStr(var_164 & "')"), , 
  loc_12AD9EA: Else
  loc_12ADA08:   Set var_90 = Me.Txt
  loc_12ADA0E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE BlockMast SET Name='")
  loc_12ADA16:   var_1A8 = var_94.Text
  loc_12ADA1F:   var_B4 = -1 & var_9C
  loc_12ADA26:   var_110 = var_B4 & "',ShortName='"
  loc_12ADA37:   Set var_98 = Me.Txt
  loc_12ADA3D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_E8)
  loc_12ADA45:   var_110 = var_114.Text
  loc_12ADA64:   Set var_124 = Me.Txt
  loc_12ADA6A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_128)
  loc_12ADA9E:   var_E4 = CVar(var_1AC & var_E8 & "',Status='" & var_128.Text & "',SITE_CODE='" & MemVar_1F95070 & "',U_name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_12ADAA4:   var_C4 = MemVar_1F950EC
  loc_12ADAAC:   Proc_183_7_EB17D4(var_B0, var_C4)
  loc_12ADAB4:   var_F8 = var_E4 & var_B0 
  loc_12ADABD:   var_108 = var_F8 & " ,U_AE='E' WHERE Code='" 
  loc_12ADAE1:   unk_454CC4.Execute CStr(var_108 & CVar(global_64) & "'"), , 
  loc_12ADB25: End If
  loc_12ADB2B: unk_454CC4.CommitTrans
  loc_12ADB34: var_86 = CByte(0) 'Byte
  loc_12ADB43: Me.Requery -1
  loc_12ADB53: Me.Requery -1
  loc_12ADB80: Me.Find "Code='" & global_64 & "'", 0, 1
  loc_12ADB90: Set var_90 = Me.TopCtrl1
  loc_12ADB96: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_12ADBAF: If (CStr() = "Add") Then
  loc_12ADBB2:   Call TopCtrl1_UnknownEvent_A()
  loc_12ADBB7:   Exit Sub
  loc_12ADBB8: End If
  loc_12ADBCD: var_9C = "INI"
  loc_12ADBDB: Call Proc_255_28_E7CEE4(Proc_5_1_100EC1C(var_9C, Me))
  loc_12ADBE6: Call Proc_255_29_E840F0(global_52)
  loc_12ADBEB: Call Proc_255_30_123B024()
  loc_12ADBF0: Exit Sub
  loc_12ADBF1: ' Referenced from: 12AD670
  loc_12ADBFA: If (CInt(var_86) = 1) Then
  loc_12ADC03:   unk_454CC4.RollbackTrans
  loc_12ADC08: End If
  loc_12ADC10: Set var_90 = Err()
  loc_12ADC16: Call 0.Method_arg_2C (var_9C)
  loc_12ADC2F: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_12ADC42: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3ACE4
  'Data Table: 454CB8
  loc_E3ACD8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3ACDB:   Call DGHelp_UnknownEvent_9()
  loc_E3ACE0: End If
  loc_E3ACE0: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC71D4
  'Data Table: 454CB8
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC714A: On Error Goto loc_EC718F
  loc_EC7153: Me.MoveFirst
  loc_EC716D: var_8C = "code='" & MyValue
  loc_EC717D: Me.Find var_8C & "'", 0, 1
  loc_EC7189: Call Proc_255_30_123B024(var_A0)
  loc_EC718E: Exit Sub
  loc_EC718F: ' Referenced from: EC714A
  loc_EC7197: Set var_A4 = Err()
  loc_EC719D: Call 0.Method_arg_2C (var_8C)
  loc_EC71BE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC71D1: Exit Sub
  loc_EC71D2: Exit Sub
End Sub

Public Sub Proc_255_27_EB07A4
  'Data Table: 454CB8
  Dim var_98 As TextBox
  loc_EB0716: global_68 = vbNullString
  loc_EB0728: Set var_8C = Me.Txt
  loc_EB072E: Call 0.Method_Proc_255_27_EB07A4C (var_8E, var_86)
  loc_EB073E: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB0754:   Set var_8C = Me.Txt
  loc_EB075A:   Call 0.Method_Proc_255_27_EB07A40 (CInt(var_86), var_98)
  loc_EB0762:   var_98.Text = vbNullString
  loc_EB077E:   Set var_8C = Me.Txt
  loc_EB0784:   Call 0.Method_Proc_255_27_EB07A40 (CInt(var_86), var_98)
  loc_EB078C:   var_98.Tag = vbNullString
  loc_EB079B: Next var_92 'Byte
  loc_EB07A1: Exit Sub
End Sub

Public Sub Proc_255_28_E7CEE4(arg_C) 'E7CEE4
  'Data Table: 454CB8
  Dim var_98 As TextBox
  loc_E7CE92: Set var_8C = Me.Txt
  loc_E7CE98: Call 0.Method_Proc_255_28_E7CEE4C (var_8E, var_86)
  loc_E7CEA8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7CEBE:   Set var_8C = Me.Txt
  loc_E7CEC4:   Call 0.Method_Proc_255_28_E7CEE40 (CInt(var_86), var_98)
  loc_E7CECC:   var_98.Enabled = arg_C
  loc_E7CEDB: Next var_92 'Byte
  loc_E7CEE1: Exit Sub
End Sub

Public Sub Proc_255_29_E840F0
  'Data Table: 454CB8
  loc_E8409C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E840AE:   Me.DGHelp.Visible = False
  loc_E840B6: End If
  loc_E840D2: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E840E4:   Me.FGPoint.Visible = False
  loc_E840EC: End If
  loc_E840EC: Exit Sub
End Sub

Public Sub Proc_255_30_123B024
  'Data Table: 454CB8
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_F4 As Variant
  Dim var_F8 As String
  Dim unk_454CC4 As Connection15
  Dim var_88 As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As TextBox
  loc_123AB30: On Error Goto loc_123AFDE
  loc_123AB39: Proc_183_45_E5CCA8(global_52)
  loc_123AB55: If (Me.RecordCount <= 0) Then
  loc_123AB58:   Call Proc_255_27_EB07A4()
  loc_123AB60: Else
  loc_123ABB6:   unk_454CC4.Execute CStr("Select U_Name,U_AE,U_EntDt From BlockMast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1
  loc_123ABC1:   Set var_88 = var_11C
  loc_123AC15:   var_11C = var_88.Fields
  loc_123AC7E:   var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_11C.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_123ACC3:   Me.LblUser.Caption = CStr(var_11C & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_184)))
  loc_123AD3D:   var_120 = var_88.Fields.Item("U_AE")
  loc_123AD56:   var_118 = "entdt :   "
  loc_123AD61:   var_F4 = "Last Update :   "
  loc_123AD9E:   var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_120)) = "E"), var_F4, var_118))
  loc_123ADE3:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_123AE4F:   global_64 = CStr(Me.Fields.Item("Name").Value)
  loc_123AE9A:   Set var_11C = Me.Txt
  loc_123AEA0:   Call 0.Method_Proc_255_30_123B0240 (0, var_120)
  loc_123AEA8:   var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_123AEF8:   Set var_11C = Me.Txt
  loc_123AEFE:   Call 0.Method_Proc_255_30_123B0240 (0, var_120)
  loc_123AF06:   var_120.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_123AF56:   Set var_11C = Me.Txt
  loc_123AF5C:   Call 0.Method_Proc_255_30_123B0240 (1, var_120)
  loc_123AF64:   var_120.Text = CStr(Me.Fields.Item("ShortName").Value)
  loc_123AFA8:   var_F8 = CStr(Me.Fields.Item("Status").Value)
  loc_123AFB4:   Set var_11C = Me.Txt
  loc_123AFBA:   Call 0.Method_Proc_255_30_123B0240 (2, var_120)
  loc_123AFC2:   var_120.Text = var_F8
  loc_123AFD8: End If
  loc_123AFD8: Call Proc_255_29_E840F0()
  loc_123AFDD: Exit Sub
  loc_123AFDE: ' Referenced from: 123AB30
  loc_123AFE6: Set var_90 = Err()
  loc_123AFEC: Call 0.Method_arg_2C (var_F8)
  loc_123B00D: MsgBox(CVar(var_F8), &H40, "Information", var_F4, var_118)
  loc_123B020: Exit Sub
End Sub

Public Sub Proc_255_31_E90FB8(arg_C) 'E90FB8
  'Data Table: 454CB8
  Dim var_10C As TextBox
  loc_E90F4C: Call Proc_255_29_E840F0()
  loc_E90F88: If (MsgBox("Save This Block Master ?", &H24, "Save", var_E4, var_104) = 6) Then
  loc_E90F8B:   Call TopCtrl1_UnknownEvent_16()
  loc_E90F93: Else
  loc_E90F9D:   Set var_108 = Me.Txt
  loc_E90FA3:   Call 0.Method_Proc_255_31_E90FB80 (arg_C)
  loc_E90FAB:   var_10C.SetFocus
  loc_E90FB7: End If
  loc_E90FB7: Exit Sub
End Sub

Public Sub Proc_255_32_1160480
  'Data Table: 454CB8
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_454CC4 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1160103: If (Me.RecordCount = 0) Then
  loc_1160106:   Proc_255_32_1160480 = 
  loc_116010C: End If
  loc_1160110: Set var_90 = Me.TopCtrl1
  loc_1160116: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_116012F: If (CStr() = "Add") Then
  loc_116016D:   Set var_90 = Me.Txt
  loc_1160173:   Call 0.Method_Proc_255_32_11604800 (CInt(0), var_A8, var_AC, "Select Count(*) From BlockMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1160194:   unk_454CC4.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_11601A4:    = var_D0.Item()
  loc_11601AC:    = var_E4.Value
  loc_11601DD:   If (var_A8.Text.Fields > 0) Then
  loc_11601FB:     var_A0 = "Duplicate Name"
  loc_1160201:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_116021C:     Set var_90 = Me.Txt
  loc_1160222:     Call 0.Method_Proc_255_32_11604800 (CInt(0))
  loc_116022A:     var_A8.SetFocus
  loc_116023B:     Proc_255_32_1160480 = &HFF
  loc_1160241:   End If
  loc_116027C:   Set var_90 = Me.Txt
  loc_1160282:   Call 0.Method_Proc_255_32_11604800 (CInt(1), var_A8, var_AC, "Select Count(*) From BlockMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and ShortName='", var_A0, -1)
  loc_11602A3:   unk_454CC4.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_11602B3:    = var_D0.Item(var_A8)
  loc_11602BB:    = var_E4.Value
  loc_11602EC:   If (var_A8.Text.Fields > 0) Then
  loc_116030A:     var_A0 = "Duplicate Short Name"
  loc_1160310:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_116032B:     Set var_90 = Me.Txt
  loc_1160331:     Call 0.Method_Proc_255_32_11604800 (CInt(1))
  loc_1160339:     var_A8.SetFocus
  loc_116034A:     Proc_255_32_1160480 = &HFF
  loc_1160350:   End If
  loc_1160353: Else
  loc_116038E:   Set var_90 = Me.Txt
  loc_1160394:   Call 0.Method_Proc_255_32_11604800 (CInt(0), var_A8, var_AC, "Select Count(*) From BlockMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_11603C6:   unk_454CC4.Execute var_D0 & var_AC & "' And Name<>'" & global_68 & "'", 0, var_E4
  loc_11603D6:    = var_D0.Item(var_A8)
  loc_11603DE:    = var_E4.Value
  loc_1160413:   If (var_A8.Text.Fields > 0) Then
  loc_1160437:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1160452:     Set var_90 = Me.Txt
  loc_1160458:     Call 0.Method_Proc_255_32_11604800 (CInt(0))
  loc_1160460:     var_A8.SetFocus
  loc_1160471:     Proc_255_32_1160480 = &HFF
  loc_1160477:   End If
  loc_1160477: End If
  loc_1160477: Proc_255_32_1160480 = var_A8
End Sub
