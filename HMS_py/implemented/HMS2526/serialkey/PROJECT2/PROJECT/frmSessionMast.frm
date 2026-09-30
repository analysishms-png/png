VERSION 5.00
Begin VB.Form frmSessionMast
  Caption = "Session Master"
  BackColor = &HFFC0C0&
  ForeColor = &H800000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  FillColor = &H800000&
  'Icon = n/a
  LinkTopic = "Form7"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 7650
  ClientHeight = 7710
  Moveable = 0   'False
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 7650
    Height = 450
    TabIndex = 10
  End
  Begin DataGrid DGhelp
    Left = 6855
    Top = 3075
    Width = 4215
    Height = 1965
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin MaskEdBox TxtMask
    Index = 1
    Left = 3585
    Top = 2520
    Width = 675
    Height = 285
    TabIndex = 3
  End
  Begin MaskEdBox TxtMask
    Index = 0
    Left = 3585
    Top = 2205
    Width = 675
    Height = 285
    TabIndex = 2
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3585
    Top = 1890
    Width = 4215
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 30
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5265
    Top = 5355
    Width = 2790
    Height = 285
    TabIndex = 9
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
    Left = 1890
    Top = 5355
    Width = 2880
    Height = 255
    TabIndex = 8
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
    Left = 45
    Top = 375
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
  Begin Label LblName
    Caption = "To Time"
    Index = 2
    ForeColor = &HC00000&
    Left = 2400
    Top = 2535
    Width = 780
    Height = 240
    TabIndex = 5
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
    Caption = "From Time"
    Index = 1
    ForeColor = &HC00000&
    Left = 2400
    Top = 2220
    Width = 1035
    Height = 240
    TabIndex = 4
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
    Caption = "Description"
    Index = 0
    ForeColor = &HC00000&
    Left = 2400
    Top = 1890
    Width = 1065
    Height = 240
    TabIndex = 1
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

Attribute VB_Name = "frmSessionMast"


Private Sub TxtMask_UnknownEvent_0 'E98B24
  'Data Table: 449A70
  loc_E98AB8: On Error Goto loc_E98AE6
  loc_E98AC5: Set var_88 = Me.TxtMask
  loc_E98ACB: Call 0.Method_TxtMask_UnknownEvent_00 (Cancel)
  loc_E98AD9: Proc_6_74_E23240(var_8C)
  loc_E98AE5: Exit Sub
  loc_E98AE6: ' Referenced from: E98AB8
  loc_E98AEE: Set var_88 = Err()
  loc_E98AF4: Call 0.Method_arg_2C (var_94)
  loc_E98B0D: MsgBox(CVar(var_94), &H10, var_C4, var_E4, var_104)
  loc_E98B20: Exit Sub
  loc_E98B21: StAryRecMove
End Sub

Private Sub TxtMask_UnknownEvent_1 'E991C0
  'Data Table: 449A70
  loc_E99154: On Error Goto loc_E99182
  loc_E99161: Set var_88 = Me.TxtMask
  loc_E99167: Call 0.Method_TxtMask_UnknownEvent_10 (Cancel)
  loc_E99175: Proc_6_73_E23294(var_8C)
  loc_E99181: Exit Sub
  loc_E99182: ' Referenced from: E99154
  loc_E9918A: Set var_88 = Err()
  loc_E99190: Call 0.Method_arg_2C (var_94)
  loc_E991A9: MsgBox(CVar(var_94), &H10, var_C4, var_E4, var_104)
  loc_E991BC: Exit Sub
End Sub

Private Sub TxtMask_UnknownEvent_8 'F1A6FC
  'Data Table: 449A70
  Dim var_86 As Integer
  Dim var_90 As MaskEdBox
  Dim var_A4 As String
  Dim arg_10 As Integer
  loc_F1A610: On Error Goto loc_F1A6BE
  loc_F1A616: var_86 = Cancel
  loc_F1A621: If Not (var_86 = CInt(0)) Then
  loc_F1A62C:   If (var_86 = CInt(1)) Then
  loc_F1A62F:   End If
  loc_F1A639:   Set var_8C = Me.TxtMask
  loc_F1A63F:   Call 0.Method_TxtMask_UnknownEvent_80 (Cancel, var_90)
  loc_F1A64F:   var_A4 = CStr(var_90.defaultText)
  loc_F1A664:   If (var_A4 > "24:00") Then
  loc_F1A680:     MsgBox("Invalid Time", 0, var_D4, var_F4, var_114)
  loc_F1A692:     arg_10 = &HFF
  loc_F1A69F:     Set var_8C = Me.TxtMask
  loc_F1A6A5:     Call 0.Method_TxtMask_UnknownEvent_80 (Cancel, var_90)
  loc_F1A6BC:     Exit Sub
  loc_F1A6BD:   End If
  loc_F1A6BD: End If
  loc_F1A6BD: Exit Sub
  loc_F1A6BE: ' Referenced from: F1A610
  loc_F1A6C6: Set var_8C = Err()
  loc_F1A6CC: Call 0.Method_arg_2C (var_A4, TxtMask.DispID_8001)
  loc_F1A6E5: MsgBox(CVar(var_A4), &H10, var_D4, var_F4, var_114)
  loc_F1A6F8: Exit Sub
End Sub

Private Sub TxtMask_UnknownEvent_B 'F33EFC
  'Data Table: 449A70
  Dim var_88 As Integer
  Dim var_8C As DataGrid
  loc_F33DE8: On Error Goto loc_F33EC1
  loc_F33DF5: If (CLng(arg_10) = &H1B) Then
  loc_F33DF8:   Call Proc_80_35_E55C7C()
  loc_F33DFD:   Exit Sub
  loc_F33DFE: End If
  loc_F33E01: var_88 = Cancel
  loc_F33E0C: If Not (var_88 = CInt(0)) Then
  loc_F33E17:   If (var_88 = CInt(1)) Then
  loc_F33E1A:   End If
  loc_F33E1A: End If
  loc_F33E36: If (CBool(Me.DGhelp.Visible) = 0) Then
  loc_F33E4C:   If ((CLng(arg_10) = &H26) And (Cancel <> CInt(0))) Then
  loc_F33E55:     Proc_6_76_E533C8(arg_10, arg_14)
  loc_F33E5A:   End If
  loc_F33E78:   If (((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) And (Cancel = CInt(1))) Then
  loc_F33E81:     Call TxtMask_UnknownEvent_8()
  loc_F33E8C:     If (var_86 = 0) Then
  loc_F33E95:       Call Proc_80_36_E92EA8(Cancel, Cancel)
  loc_F33E9A:     End If
  loc_F33E9D:   Else
  loc_F33EB2:     If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_F33EBB:       Proc_6_75_E5335C(arg_10, arg_14)
  loc_F33EC0:     End If
  loc_F33EC0:   End If
  loc_F33EC0: End If
  loc_F33EC0: Exit Sub
  loc_F33EC1: ' Referenced from: F33DE8
  loc_F33EC9: Set var_8C = Err()
  loc_F33ECF: Call 0.Method_arg_2C (var_A4, var_86)
  loc_F33EE8: MsgBox(CVar(var_A4), &H10, var_C4, var_E4, var_104)
  loc_F33EFB: Exit Sub
End Sub

Private Sub TxtMask_UnknownEvent_C 'E6C594
  'Data Table: 449A70
  loc_E6C54C: On Error Goto loc_E6C558
  loc_E6C552: Proc_6_58_E06050(arg_10)
  loc_E6C557: Exit Sub
  loc_E6C558: ' Referenced from: E6C54C
  loc_E6C560: Set var_88 = Err()
  loc_E6C566: Call 0.Method_arg_2C (var_8C)
  loc_E6C57F: MsgBox(CVar(var_8C), &H10, var_BC, var_DC, var_FC)
  loc_E6C592: Exit Sub
End Sub

Private Sub TxtMask_UnknownEvent_D 'E6C474
  'Data Table: 449A70
  Dim var_86 As Integer
  loc_E6C42C: On Error Goto loc_E6C436
  loc_E6C432: var_86 = Cancel
  loc_E6C435: Exit Sub
  loc_E6C436: ' Referenced from: E6C42C
  loc_E6C43E: Set var_8C = Err()
  loc_E6C444: Call 0.Method_arg_2C (var_90)
  loc_E6C45D: MsgBox(CVar(var_90), &H10, var_C0, var_E0, var_100)
  loc_E6C470: Exit Sub
  loc_E6C471: Get , ,  'get var_86 bytes
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E59A00
  'Data Table: 449A70
  Dim var_92 As Integer
  loc_E599D2: Set var_88 = Me.Txt
  loc_E599D8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E599E6: Proc_6_74_E23240(var_8C)
  loc_E599F2: Call Proc_80_35_E55C7C(var_8C)
  loc_E599FA: var_92 = Index
  loc_E599FD: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F0BE6C
  'Data Table: 449A70
  loc_F0BD92: If (CLng(Shift) = &H1B) Then
  loc_F0BD95:   Call Proc_80_35_E55C7C()
  loc_F0BD9A:   Exit Sub
  loc_F0BD9B: End If
  loc_F0BDA9: If (KeyCode = CInt(0)) Then
  loc_F0BDC4:   Set var_9C = Nothing
  loc_F0BDF6:   Proc_6_79_11AD564(Me.DGhelp, Me.Txt, CInt(0), global_56, Shift)
  loc_F0BE08: End If
  loc_F0BE24: If (CBool(Me.DGhelp.Visible) = 0) Then
  loc_F0BE3A:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_F0BE43:     Proc_6_76_E533C8(Shift, arg_14, 0, 1)
  loc_F0BE48:   End If
  loc_F0BE5D:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F0BE66:     Proc_6_75_E5335C(Shift, arg_14, var_9C)
  loc_F0BE6B:   End If
  loc_F0BE6B: End If
  loc_F0BE6B: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E24C8C
  'Data Table: 449A70
  Dim var_96 As Integer
  loc_E24C6E: Proc_6_133_E7FB08(var_94)
  loc_E24C80: Proc_6_58_E06050(CInt(var_94), CInt(var_94))
  loc_E24C88: var_96 = KeyAscii
  loc_E24C8B: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E8C5C8
  'Data Table: 449A70
  loc_E8C56A: If (KeyCode = CInt(0)) Then
  loc_E8C589:   If (CBool(Me.DGhelp.Visible) = &HFF) Then
  loc_E8C596:     var_A4 = "Name"
  loc_E8C5B5:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_56)
  loc_E8C5C4:   End If
  loc_E8C5C4: End If
  loc_E8C5C4: Exit Sub
  loc_E8C5C5: VCallR4
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4BE0C
  'Data Table: 449A70
  loc_E4BDEA: Set var_88 = Me.Txt
  loc_E4BDF0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4BDFE: Proc_6_73_E23294(var_8C)
  loc_E4BE0A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E2825C
  'Data Table: 449A70
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E28233: var_86 = Cancel
  loc_E2823E: If (var_86 = CInt(0)) Then
  loc_E28244:   Call Proc_80_34_1084604(var_88)
  loc_E2824F:   If (var_88 = &HFF) Then
  loc_E28254:     arg_10 = &HFF
  loc_E28257:     Exit Sub
  loc_E28258:   End If
  loc_E28258: End If
  loc_E28258: Exit Sub
  loc_E28259: Get , , var_86 'get arg_10 bytes
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EA97A4
  'Data Table: 449A70
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EA9718: On Error Goto loc_EA979E
  loc_EA9728: Me.LblUser.Caption = vbNullString
  loc_EA973D: Me.LblLDt.Caption = vbNullString
  loc_EA9768: Call Proc_80_31_E989C4(Proc_5_1_100EC1C("ADD", Me))
  loc_EA9773: Call Proc_80_32_ECE1C0(global_52)
  loc_EA9783: Set var_88 = Me.Txt
  loc_EA9789: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EA9791: var_94.SetFocus
  loc_EA979D: Exit Sub
  loc_EA979E: ' Referenced from: EA9718
  loc_EA979E: Proc_6_60_E63754(var_94)
  loc_EA97A3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC1EBC
  'Data Table: 449A70
  loc_EC1E24: On Error Goto loc_EC1EB4
  loc_EC1E5E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC1E6D:   Set var_110 = Me
  loc_EC1E84:   Call Proc_80_31_E989C4(Proc_5_1_100EC1C("INI", var_110))
  loc_EC1E8F:   Call Proc_80_35_E55C7C(global_52)
  loc_EC1E94:   Call Proc_80_33_1276D98()
  loc_EC1E9C: Else
  loc_EC1EA2:   Call 0.Method_arg_1E8 (var_110)
  loc_EC1EAA:   Call var_110.SetFocus
  loc_EC1EB3: End If
  loc_EC1EB3: Exit Sub
  loc_EC1EB4: ' Referenced from: EC1E24
  loc_EC1EB4: Proc_6_60_E63754()
  loc_EC1EB9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10E031C
  'Data Table: 449A70
  Dim var_96 As Integer
  Dim unk_449A7F As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10E003C: On Error Goto loc_10E02C5
  loc_10E004D: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_10E0050:   Exit Sub
  loc_10E0051: End If
  loc_10E0088: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10E008D:   var_96 = 0
  loc_10E0099:   unk_449A7F.BeginTrans var_11C
  loc_10E00A0:   var_96 = &HFF
  loc_10E00B4:   var_94 = Me.Bookmark 'Variant
  loc_10E0100:   var_F8 = "Delete From SESSIONMAST Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_10E010E:   unk_449A7F.Execute CStr(var_F8), var_118, -1
  loc_10E0159:   var_164 = 0
  loc_10E016C:   var_15C = 0
  loc_10E0177:   var_158 = 0
  loc_10E018A:   var_150 = 0
  loc_10E0195:   var_14C = 0
  loc_10E01A8:   var_144 = 0
  loc_10E01E8:   var_128 = "SessionMast"
  loc_10E01F1:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_10E021F:   unk_449A7F.CommitTrans
  loc_10E0226:   var_96 = 0
  loc_10E0234:   Me.Requery -1
  loc_10E0244:   Me.Requery -1
  loc_10E0264:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10E0271:     Me.Bookmark = var_94
  loc_10E0279:   Else
  loc_10E028D:     If (Me.EOF = 0) Then
  loc_10E0296:       Me.MoveLast
  loc_10E029B:     End If
  loc_10E029B:   End If
  loc_10E029B:   Call Proc_80_33_1276D98(var_96, var_144, 0, var_14C, var_150)
  loc_10E02BC:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_10E02C4: End If
  loc_10E02C4: Exit Sub
  loc_10E02C5: ' Referenced from: 10E003C
  loc_10E02CB: If (var_96 = &HFF) Then
  loc_10E02D4:   unk_449A7F.RollbackTrans
  loc_10E02D9: End If
  loc_10E02E1: Set var_120 = Err()
  loc_10E02E7: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10E0308: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10E031B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EF193C
  'Data Table: 449A70
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EF186C: On Error Goto loc_EF1934
  loc_EF187D: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_EF1880:   Exit Sub
  loc_EF1881: End If
  loc_EF18A4: Call Proc_80_31_E989C4(Proc_5_1_100EC1C("EDIT", Me))
  loc_EF18BD: Set var_8C = Me.Txt
  loc_EF18C3: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF18D6: global_64 = var_94.Text
  loc_EF18EF: Set var_8C = Me.Txt
  loc_EF18F5: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF18FD: var_94.SetFocus
  loc_EF1916: Me.LblUser.Caption = vbNullString
  loc_EF192B: Me.LblLDt.Caption = vbNullString
  loc_EF1933: Exit Sub
  loc_EF1934: ' Referenced from: EF186C
  loc_EF1934: Proc_6_60_E63754(global_52)
  loc_EF1939: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17348
  'Data Table: 449A70
  Dim var_788 As Integer
  loc_E1733D: Me.Global.Unload Me
  loc_E17345: Exit Sub
  loc_E17346: var_788 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F17640
  'Data Table: 449A70
  Dim Me As Recordset15
  loc_F17550: On Error Goto loc_F175DA
  loc_F1755C: var_88 = Me.RecordCount
  loc_F1756A: If (var_88 <= 0) Then
  loc_F1758E:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_F1759E:   Exit Sub
  loc_F1759F: End If
  loc_F175A2: MemVar_1F950E4 = "Select Code As SearchCode,Name,CAST(FROMTIME AS VARCHAR) AS FrTime,CAST(TOTIME AS VARCHAR) AS TTime FROM SESSIONMAST ORDER BY Name"
  loc_F175AC: MemVar_1F95120 = Me
  loc_F175B3: var_10C = "1900,1500,1500"
  loc_F175B9: Proc_6_126_F1C850(var_10C)
  loc_F175D4: Call 0.Method_arg_2B0 (1)
  loc_F175D9: Exit Sub
  loc_F175DA: ' Referenced from: F17550
  loc_F175E2: Set var_110 = Err()
  loc_F175E8: Call 0.Method_arg_1C (var_88)
  loc_F175F9: If (var_88 <> 0) Then
  loc_F17604:   Set var_110 = Err()
  loc_F1760A:   Call 0.Method_arg_2C (var_10C)
  loc_F1762B:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F1763E: End If
  loc_F1763E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E32948
  'Data Table: 449A70
  loc_E32938: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32940: Call Proc_80_33_1276D98(global_52)
  loc_E32945: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E32768
  'Data Table: 449A70
  loc_E32758: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32760: Call Proc_80_33_1276D98(global_52)
  loc_E32765: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E327C8
  'Data Table: 449A70
  loc_E327B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E327C0: Call Proc_80_33_1276D98(global_52)
  loc_E327C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E328E8
  'Data Table: 449A70
  loc_E328D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E328E0: Call Proc_80_33_1276D98(global_52)
  loc_E328E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '107324C
  'Data Table: 449A70
  Dim unk_449A7F As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_1072FCC: On Error Goto loc_1073203
  loc_1072FE5: unk_449A7F.Execute "SELECT * FROM SESSIONMAST ORDER BY Name", var_BC, -1
  loc_1072FF0: Set var_88 = var_C0
  loc_1072FFF: var_C4 = var_88.RecordCount
  loc_107300D: If (var_C4 = 0) Then
  loc_1073029:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_1073039:   Exit Sub
  loc_107303A: End If
  loc_1073049: var_12C = MemVar_1F950B4 & "\SessionMast.ttx"
  loc_1073050: Set var_C0 = var_88 
  loc_107305C: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_1073066: Set var_88 = var_C0
  loc_107306C: var_AC = CVar(var_12E) 'Integer
  loc_107306F: var_98 = var_AC 'Variant
  loc_107308B: var_128 = MemVar_1F950B4 & "\SessionMast.RPT"
  loc_1073094: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_107309F: MemVar_1F951E8 = var_C0
  loc_10730BA: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_10730C2: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10730CE: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_10730E7:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10730EF:   Call 0.Method_arg_20 (var_138)
  loc_10730F7:   Call 0.Method_arg_30 (var_128)
  loc_107313D:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_1073153:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_107315B:     Call 0.Method_arg_20 (var_138)
  loc_1073163:     Call 0.Method_arg_38 ("'Session Master'")
  loc_107316F:   End If
  loc_1073172: Next var_132 'Integer
  loc_1073190: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_1073198: Call 0.Method_arg_2C (var_D4)
  loc_10731A6: Call 0.Method_arg_150 (var_F4)
  loc_10731B1: Call 0.Method_arg_50 (var_128)
  loc_10731BB: Set var_138 = Nothing
  loc_10731D5: Set var_C0 = MemVar_1F951E8 
  loc_10731E1: Proc_6_99_1484404(var_C0, 0, var_128)
  loc_10731EC: MemVar_1F951E8 = var_C0
  loc_10731FF: Set var_88 = Nothing
  loc_1073202: Exit Sub
  loc_1073203: ' Referenced from: 1072FCC
  loc_107320B: Set var_C0 = Err()
  loc_1073211: Call 0.Method_arg_2C (var_128, &HFF)
  loc_107321C: Call 0.Method_arg_50 (var_12C)
  loc_1073238: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_107324B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0BA6C
  'Data Table: 449A70
  Dim Me As Recordset15
  loc_E0BA63: Me.Requery -1
  loc_E0BA68: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12FB02C
  'Data Table: 449A70
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim unk_449A7F As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_114 As MaskEdBox
  Dim var_B0 As Variant
  Dim var_12C As MaskEdBox
  Dim var_E4 As Variant
  Dim var_120 As String
  Dim var_11C As String
  Dim var_154 As Variant
  Dim var_184 As Variant
  Dim var_208 As Variant
  loc_12FA9BC: On Error Goto loc_12FAFDA
  loc_12FA9C3: var_86 = CByte(0) 'Byte
  loc_12FA9D2: Set var_90 = Me.Txt
  loc_12FA9D8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_12FAA01: If (Proc_183_19_E8E68C(var_94, "Description") = 0) Then
  loc_12FAA0B:   Call Txt_GotFocus(CInt(0))
  loc_12FAA10:   Exit Sub
  loc_12FAA11: End If
  loc_12FAA14: Call Proc_80_34_1084604(var_9E)
  loc_12FAA1F: If (var_9E = &HFF) Then
  loc_12FAA22:   Exit Sub
  loc_12FAA23: End If
  loc_12FAA27: Set var_90 = Me.TopCtrl1
  loc_12FAA2D: Call {41A90D1F-A45E-4BCD-AFCE3E7901C4A0B4}.DispID_68030005(var_94)
  loc_12FAA46: If (CStr() = "Add") Then
  loc_12FAA4F:   var_D4 = 0
  loc_12FAA6C:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From SESSIONMAST WHERE SITE_CODE='" & MemVar_1F95070
  loc_12FAA7C:   unk_449A7F.Execute CStr() & "'", var_B0, -1
  loc_12FAA84:   var_90 = var_90.Fields
  loc_12FAA8C:   var_D4 = var_94.Item(var_94)
  loc_12FAA94:   var_98 = var_98.Value
  loc_12FAACD:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_12FAAFB:   var_108 = (1 + Format(CStr(var_E4), "000"))
  loc_12FAB06:   global_60 = CStr(var_108)
  loc_12FAB1B: Else
  loc_12FAB38:   var_94 = Me.Fields.Item("Code")
  loc_12FAB4F:   global_60 = CStr(var_94.Value)
  loc_12FAB60: End If
  loc_12FAB69: unk_449A7F.BeginTrans var_10C
  loc_12FAB72: var_86 = CByte(1) 'Byte
  loc_12FAB7A: Set var_90 = Me.TopCtrl1
  loc_12FAB80: Call {41A90D1F-A45E-4BCD-AFCE3E7901C4A0B4}.DispID_68030005(1)
  loc_12FAB99: If (CStr(var_F8) = "Add") Then
  loc_12FABAA:   Set var_90 = Me.Txt
  loc_12FABB0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94)
  loc_12FABC8:   Set var_98 = Me.TxtMask
  loc_12FABCE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_114)
  loc_12FAC00:   var_210 = Replace(CStr(var_114.defaultText), ":", ".", 1, -1, 0)
  loc_12FAC0E:   Set var_128 = Me.TxtMask
  loc_12FAC14:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_12C)
  loc_12FAC1C:   var_E4 = var_12C.defaultText
  loc_12FAC46:   var_214 = Replace(CStr(var_E4), ":", ".", 1, -1, 0)
  loc_12FAC57:   Proc_6_7_F26918(var_108, Date, var_E4)
  loc_12FAC7A:   var_E8 = "Insert Into SessionMast(Code,Name,FromTime,ToTime,U_Name,U_EntDt,U_AE,SITE_CODE,LOGSITE_CODE) Values ('" & global_60 & "','"
  loc_12FACD1:   var_184 = CVar(var_E8 & var_94.Text & "','" & var_210 & "','" & var_214 & "','" & MemVar_1F950C8 & "',") & var_108 & ",'A','" & CVar(MemVar_1F95070) 
  loc_12FACFB:   unk_449A7F.Execute CStr(var_184 & "','" & CVar(MemVar_1F95078) & "')"), var_208, -1
  loc_12FAD54: Else
  loc_12FAD5F:   Set var_90 = Me.Txt
  loc_12FAD65:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_20C)
  loc_12FAD6D:   var_B0 = CVar(var_94) 'Address
  loc_12FAD74:   var_E4 = Trim(var_B0)
  loc_12FAD84:   Set var_98 = Me.TxtMask
  loc_12FAD8A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_114)
  loc_12FAD92:   var_154 = var_114.defaultText
  loc_12FADBC:   var_11C = Replace(CStr(var_154), ":", ".", 1, -1, 0)
  loc_12FADCA:   Set var_128 = Me.TxtMask
  loc_12FADD0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_12C, var_154)
  loc_12FADD8:   var_184 = var_12C.defaultText
  loc_12FAE02:   var_120 = Replace(CStr(var_184), ":", ".", 1, -1, 0)
  loc_12FAE13:   Proc_6_7_F26918(var_254, Date, var_184)
  loc_12FAE25:   var_C4 = "UPDATE SESSIONMAST SET Name='"
  loc_12FAE2D:   var_F8 = var_C4 & var_E4 
  loc_12FAE36:   var_108 = var_F8 & "',FromTime='" 
  loc_12FAE75:   var_208 = var_108 & CVar(var_210) & "',ToTime='" & CVar(CStr(var_184) & var_94.Text & "','") & "',U_Name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" 
  loc_12FAEBC:   unk_449A7F.Execute CStr(var_208 & var_254 & ",U_AE='E',SITE_CODE='" & CVar(MemVar_1F95070) & "' WHERE Code='" & CVar(global_60) & "'"), var_324, -1
  loc_12FAF0E: End If
  loc_12FAF14: unk_449A7F.CommitTrans
  loc_12FAF1D: var_86 = CByte(0) 'Byte
  loc_12FAF2C: Me.Requery -1
  loc_12FAF3C: Me.Requery -1
  loc_12FAF69: Me.Find "Code='" & global_60 & "'", 0, 1
  loc_12FAF79: Set var_90 = Me.TopCtrl1
  loc_12FAF7F: Call {41A90D1F-A45E-4BCD-AFCE3E7901C4A0B4}.DispID_68030005(var_C4)
  loc_12FAF98: If (CStr(var_20C) = "Add") Then
  loc_12FAF9B:   Call TopCtrl1_UnknownEvent_A()
  loc_12FAFA0:   Exit Sub
  loc_12FAFA1: End If
  loc_12FAFB6: var_9C = "INI"
  loc_12FAFC4: Call Proc_80_31_E989C4(Proc_5_1_100EC1C(var_9C, Me, global_52), var_B0)
  loc_12FAFCF: Call Proc_80_35_E55C7C(var_E4)
  loc_12FAFD4: Call Proc_80_33_1276D98()
  loc_12FAFD9: Exit Sub
  loc_12FAFDA: ' Referenced from: 12FA9BC
  loc_12FAFE3: If (CInt(var_86) = 1) Then
  loc_12FAFEC:   unk_449A7F.RollbackTrans
  loc_12FAFF1: End If
  loc_12FAFF9: Set var_90 = Err()
  loc_12FAFFF: Call 0.Method_arg_2C (var_9C)
  loc_12FB018: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_12FB02B: Exit Sub
End Sub

Private Sub Form_Load() '104D104
  'Data Table: 449A70
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim unk_449A7F As Connection15
  Dim var_DC As Variant
  loc_104CEB4: On Error Goto loc_104D0BE
  loc_104CEC6: Me.LblUser.Left = CDbl(13500)
  loc_104CEDD: Me.LblUser.Top = CDbl(7800)
  loc_104CEF4: Me.LblLDt.Top = CDbl(8160)
  loc_104CF0B: Me.LblLDt.Left = CDbl(13500)
  loc_104CF1A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_104CF2D: Set var_8C = Me.Txt
  loc_104CF33: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_104CF52: Me.DGhelp.Left = CVar(var_90.Left)
  loc_104CF6E: Set var_B8 = Me.Txt
  loc_104CF74: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_104CF95: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_104CFAD: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_104CFBC: Me.DGhelp.Top = CVar(var_90.Left)
  loc_104CFF2: unk_449A7F.Execute "SELECT Code,Name FROM SESSIONMAST WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_104D021: CVarUnk
  loc_104D026: VerifyVarObj
  loc_104D032: LateIdStAd
  loc_104D064: unk_449A7F.Execute "SELECT * FROM SESSIONMAST WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_104D09F: var_C8 = "INI"
  loc_104D0AD: Call Proc_80_31_E989C4(Proc_5_1_100EC1C(var_C8, Me, Me.DGhelp, Me), Me)
  loc_104D0B8: Call Proc_80_33_1276D98(Me.Txt)
  loc_104D0BD: Exit Sub
  loc_104D0BE: ' Referenced from: 104CEB4
  loc_104D0C6: Set var_8C = Err()
  loc_104D0CC: Call 0.Method_arg_2C (var_C8)
  loc_104D0ED: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_104D100: Exit Sub
  loc_104D101: Exit Sub
End Sub

Private Sub Form_Resize() 'ED3BB8
  'Data Table: 449A70
  Dim var_8C As Label
  loc_ED3B16: Call 0.Method_arg_50 (var_88)
  loc_ED3B28: Me.LblFormCaption.Caption = var_88
  loc_ED3B41: Me.LblFormCaption.Left = CDbl(0)
  loc_ED3B4D: Set var_A0 = Me.TopCtrl1
  loc_ED3B53: Call {41A90D1F-A45E-4BCD-AFCE3E7901C4A0B4}.DispID_80010006()
  loc_ED3B60: Set var_8C = Me.TopCtrl1
  loc_ED3B66: Call {41A90D1F-A45E-4BCD-AFCE3E7901C4A0B4}.DispID_80010004()
  loc_ED3B80: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED3B9B: Call 0.Method_arg_100 (var_B8)
  loc_ED3BAD: Me.LblFormCaption.Width = var_B8
  loc_ED3BB5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2808C
  'Data Table: 449A70
  loc_E2806F: Set global_52 = Nothing
  loc_E28081: Set global_56 = Nothing
  loc_E28088: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8CD24
  'Data Table: 449A70
  loc_E8CCC0: On Error Goto loc_E8CCE0
  loc_E8CCD7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8CCDF: Exit Sub
  loc_E8CCE0: ' Referenced from: E8CCC0
  loc_E8CCE8: Set var_88 = Err()
  loc_E8CCEE: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8CD0F: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8CD22: Exit Sub
  loc_E8CD23: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE704C
  'Data Table: 449A70
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE6FA3: Me.DGhelp.Visible = False
  loc_EE6FC2: If (Me.RecordCount > 0) Then
  loc_EE6FE2:   var_B0 = Me.Fields.Item("Name")
  loc_EE7001:   Set var_B4 = Me.Txt
  loc_EE7007:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE700F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE7025: End If
  loc_EE7030: Set var_A8 = Me.Txt
  loc_EE7036: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE703E: var_B0.SetFocus
  loc_EE704A: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC6C94
  'Data Table: 449A70
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC6C0A: On Error Goto loc_EC6C4F
  loc_EC6C13: Me.MoveFirst
  loc_EC6C2D: var_8C = "Code='" & MyValue
  loc_EC6C3D: Me.Find var_8C & "'", 0, 1
  loc_EC6C49: Call Proc_80_33_1276D98(var_A0)
  loc_EC6C4E: Exit Sub
  loc_EC6C4F: ' Referenced from: EC6C0A
  loc_EC6C57: Set var_A4 = Err()
  loc_EC6C5D: Call 0.Method_arg_2C (var_8C)
  loc_EC6C7E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC6C91: Exit Sub
  loc_EC6C92: Exit Sub
End Sub

Public Sub Proc_80_31_E989C4(arg_C) 'E989C4
  'Data Table: 449A70
  Dim var_8C As Variant
  loc_E9894E: Set var_88 = Me.Txt
  loc_E98954: Call 0.Method_Proc_80_31_E989C40 (CInt(0), var_8C)
  loc_E9895C: var_8C.Enabled = arg_C
  loc_E9897A: Set var_88 = Me.TxtMask
  loc_E98980: Call 0.Method_Proc_80_31_E989C40 (CInt(0), var_8C)
  loc_E98988: var_8C.Enabled = arg_C
  loc_E989A6: Set var_88 = Me.TxtMask
  loc_E989AC: Call 0.Method_Proc_80_31_E989C40 (CInt(1), var_8C)
  loc_E989B4: var_8C.Enabled = arg_C
  loc_E989C0: Exit Sub
End Sub

Public Sub Proc_80_32_ECE1C0
  'Data Table: 449A70
  Dim var_8C As Variant
  loc_ECE112: global_64 = vbNullString
  loc_ECE124: Set var_88 = Me.Txt
  loc_ECE12A: Call 0.Method_Proc_80_32_ECE1C00 (CInt(0), var_8C)
  loc_ECE132: var_8C.Text = vbNullString
  loc_ECE14C: Set var_88 = Me.Txt
  loc_ECE152: Call 0.Method_Proc_80_32_ECE1C00 (CInt(0), var_8C)
  loc_ECE15A: var_8C.Tag = vbNullString
  loc_ECE177: Set var_88 = Me.TxtMask
  loc_ECE17D: Call 0.Method_Proc_80_32_ECE1C00 (CInt(0), var_8C)
  loc_ECE185: var_8C.defaultText = "__:__"
  loc_ECE1A2: Set var_88 = Me.TxtMask
  loc_ECE1A8: Call 0.Method_Proc_80_32_ECE1C00 (CInt(1), var_8C)
  loc_ECE1B0: var_8C.defaultText = "__:__"
  loc_ECE1BC: Exit Sub
End Sub

Public Sub Proc_80_33_1276D98
  'Data Table: 449A70
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_449A7F As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_11C As Variant
  Dim var_114 As Variant
  Dim var_71C As Variant
  loc_1276828: On Error Goto loc_1276D53
  loc_1276881: unk_449A7F.Execute CStr("Select U_Name,U_AE,U_EntDt From sessionMast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_127688C: Set var_88 = var_118
  loc_12768E0: var_118 = var_88.Fields
  loc_1276949: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_127698E: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_1276A08: var_11C = var_88.Fields.Item("U_AE")
  loc_1276A69: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_1276AAE: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1276AEC: Proc_183_45_E5CCA8(global_52)
  loc_1276B08: If (Me.RecordCount <= 0) Then
  loc_1276B0B:   Call Proc_80_32_ECE1C0()
  loc_1276B13: Else
  loc_1276B47:   global_60 = CStr(Me.Fields.Item("Code").Value)
  loc_1276B94:   Set var_118 = Me.Txt
  loc_1276B9A:   Call 0.Method_Proc_80_33_1276D980 (CInt(0), var_11C)
  loc_1276BA2:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1276BF4:   Set var_118 = Me.Txt
  loc_1276BFA:   Call 0.Method_Proc_80_33_1276D980 (CInt(0), var_11C)
  loc_1276C02:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1276C7C:   var_114 = CVar(Replace(CStr(Format(CVar(Me.Fields.Item("FromTime")), "00.00")), ".", ":", 1, -1, 0)) 'String
  loc_1276C8B:   Set var_118 = Me.TxtMask
  loc_1276C91:   Call 0.Method_Proc_80_33_1276D980 (CInt(0), var_11C, "entdt : ")
  loc_1276C99:   var_11C.defaultText = 1
  loc_1276CF3:   var_F0 = Format(CVar(Me.Fields.Item("ToTime")), "00.00")
  loc_1276D10:   var_F4 = CStr(var_F0)
  loc_1276D19:   var_114 = CVar(Replace(var_F4, ".", ":", 1, -1, 0)) 'String
  loc_1276D28:   Set var_118 = Me.TxtMask
  loc_1276D2E:   Call 0.Method_Proc_80_33_1276D980 (CInt(1), var_11C, "entdt : ")
  loc_1276D36:   var_11C.defaultText = 1
  loc_1276D52: End If
  loc_1276D52: Exit Sub
  loc_1276D53: ' Referenced from: 1276828
  loc_1276D5B: Set var_8C = Err()
  loc_1276D61: Call 0.Method_arg_2C (var_F4, 1)
  loc_1276D82: MsgBox(CVar(var_F4), &H40, "Information", var_F0, "entdt : ")
  loc_1276D95: Exit Sub
  loc_1276D96: var_71C = CVar(1) 'String
End Sub

Public Sub Proc_80_34_1084604
  'Data Table: 449A70
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_449A7F As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim var_730 As String
  loc_1084397: If (Me.RecordCount = 0) Then
  loc_108439A:   Proc_80_34_1084604 = 
  loc_10843A0: End If
  loc_10843A4: Set var_90 = Me.TopCtrl1
  loc_10843AA: Call {41A90D1F-A45E-4BCD-AFCE3E7901C4A0B4}.DispID_68030005()
  loc_10843C3: If (CStr() = "Add") Then
  loc_1084401:   Set var_90 = Me.Txt
  loc_1084407:   Call 0.Method_Proc_80_34_10846040 (CInt(0), var_A8, var_AC, "Select Count(*) From sessionmast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Name='", var_A0, -1)
  loc_1084428:   unk_449A7F.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1084438:    = var_D0.Item()
  loc_1084440:    = var_E4.Value
  loc_1084471:   If (var_A8.Text.Fields > 0) Then
  loc_108448F:     var_A0 = "Duplicate Name"
  loc_1084495:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_10844B0:     Set var_90 = Me.Txt
  loc_10844B6:     Call 0.Method_Proc_80_34_10846040 (CInt(0))
  loc_10844BE:     var_A8.SetFocus
  loc_10844CF:     Proc_80_34_1084604 = &HFF
  loc_10844D5:   End If
  loc_10844D8: Else
  loc_1084513:   Set var_90 = Me.Txt
  loc_1084519:   Call 0.Method_Proc_80_34_10846040 (CInt(0), var_A8, var_AC, "Select Count(*) From sessionmast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Name='", var_A0, -1)
  loc_108454B:   unk_449A7F.Execute var_D0 & var_AC & "' And Name<>'" & global_64 & "'", 0, var_E4
  loc_108455B:    = var_D0.Item(var_A8)
  loc_1084563:    = var_E4.Value
  loc_1084598:   If (var_A8.Text.Fields > 0) Then
  loc_10845BC:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_10845D7:     Set var_90 = Me.Txt
  loc_10845DD:     Call 0.Method_Proc_80_34_10846040 (CInt(0))
  loc_10845E5:     var_A8.SetFocus
  loc_10845F6:     Proc_80_34_1084604 = &HFF
  loc_10845FC:   End If
  loc_10845FC: End If
  loc_10845FC: Proc_80_34_1084604 = var_A8
  loc_1084602: var_730 = 
End Sub

Public Sub Proc_80_35_E55C7C
  'Data Table: 449A70
  loc_E55C60: If (CBool(Me.DGhelp.Visible) = &HFF) Then
  loc_E55C72:   Me.DGhelp.Visible = False
  loc_E55C7A: End If
  loc_E55C7A: Exit Sub
End Sub

Public Sub Proc_80_36_E92EA8
  'Data Table: 449A70
  Dim var_10C As TextBox
  loc_E92E3C: Call Proc_80_35_E55C7C()
  loc_E92E78: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E92E7B:   Call TopCtrl1_UnknownEvent_16()
  loc_E92E83: Else
  loc_E92E8C:   Set var_108 = Me.Txt
  loc_E92E92:   Call 0.Method_Proc_80_36_E92EA80 (0)
  loc_E92E9A:   var_10C.SetFocus
  loc_E92EA6: End If
  loc_E92EA6: Exit Sub
End Sub
