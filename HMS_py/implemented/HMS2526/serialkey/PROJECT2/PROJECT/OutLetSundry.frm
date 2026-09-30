VERSION 5.00
Begin VB.Form OutLetSundry
  Caption = "Outlet Bill Sundry Setting"
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
  ClientWidth = 11625
  ClientHeight = 7155
  LockControls = -1  'True
  Begin CommandButton CmdCopy
    Caption = "&Copy"
    BackColor = &HFF8080&
    Left = 11760
    Top = 6015
    Width = 780
    Height = 330
    TabIndex = 24
    TabStop = 0   'False
    BeginProperty Font
      Name = "Monotype Corsiva"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton CmdPaste
    Caption = "&Paste"
    BackColor = &HFF8080&
    Left = 12645
    Top = 6015
    Width = 780
    Height = 330
    TabIndex = 23
    TabStop = 0   'False
    BeginProperty Font
      Name = "Monotype Corsiva"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11625
    Height = 420
    TabIndex = 20
  End
  Begin Frame FrPwd
    Caption = "New Password"
    Left = 6150
    Top = 5955
    Width = 2475
    Height = 1230
    Visible = 0   'False
    TabIndex = 17
    BeginProperty Font
      Name = "Monotype Corsiva"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox Txt
      Index = 2
      Left = 150
      Top = 300
      Width = 1245
      Height = 285
      TabIndex = 13
      PasswordChar = "*"
    End
    Begin CommandButton CmdCancel
      Caption = "Cancel"
      BackColor = &HFF8080&
      Left = 1455
      Top = 690
      Width = 780
      Height = 330
      Visible = 0   'False
      TabIndex = 15
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton CmdChange
      Caption = "Change"
      BackColor = &HFF8080&
      Left = 1455
      Top = 270
      Width = 780
      Height = 330
      Visible = 0   'False
      TabIndex = 14
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
  End
  Begin TextBox txtPassword
    Left = 3990
    Top = 7155
    Width = 1365
    Height = 285
    TabIndex = 9
    PasswordChar = "#"
  End
  Begin Frame Frame1
    Left = 13770
    Top = 2250
    Width = 555
    Height = 2040
    Visible = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    Begin CommandButton CmdUp
      Caption = "á"
      BackColor = &H8000000E&
      Left = 90
      Top = 270
      Width = 390
      Height = 630
      TabIndex = 18
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton CmdDown
      Caption = "â"
      BackColor = &H8000000E&
      Left = 83
      Top = 1125
      Width = 390
      Height = 630
      TabIndex = 16
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
  End
  Begin DataGrid DGSundry
    Left = 10215
    Top = 7365
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin DataGrid DGRevenue
    Left = 10215
    Top = 7095
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGVType
    Left = 10215
    Top = 6840
    Width = 5520
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 1125
    Width = 1170
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Tahoma"
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
    Left = 2490
    Top = 855
    Width = 705
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &HFF0000&
    Left = 1245
    Top = 2730
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
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
  Begin MSHFlexGrid FGrid
    Left = 105
    Top = 1455
    Width = 13300
    Height = 4450
    TabIndex = 3
  End
  Begin CommandButton CmdPwd
    Caption = "Change Password"
    BackColor = &HFF8080&
    Left = 3825
    Top = 6780
    Width = 1695
    Height = 330
    TabIndex = 11
    BeginProperty Font
      Name = "Monotype Corsiva"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 585
    Top = 6315
    Width = 2880
    Height = 255
    TabIndex = 22
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
    Left = 3255
    Top = 6285
    Width = 2790
    Height = 285
    TabIndex = 21
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
  Begin Label LblName
    Caption = "Password"
    Index = 2
    ForeColor = &HFF0000&
    Left = 2940
    Top = 7170
    Width = 945
    Height = 240
    TabIndex = 19
    AutoSize = -1  'True
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
  Begin Label LblDepart
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 4065
    Top = 690
    Width = 9255
    Height = 510
    TabIndex = 10
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 20.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Applicable From"
    Index = 1
    ForeColor = &HFF0000&
    Left = 900
    Top = 1125
    Width = 1365
    Height = 225
    TabIndex = 7
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
  Begin Label LblName
    Caption = "Bill/Voucher Type"
    Index = 0
    ForeColor = &HFF0000&
    Left = 900
    Top = 855
    Width = 1470
    Height = 225
    TabIndex = 4
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
End

Attribute VB_Name = "OutLetSundry"

Private global_74 As Integer

Private Sub CmdUp_Click() '10F466C
  'Data Table: 4F6110
  Dim var_DC As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  loc_10F43DF: If (CLng(Me.FGrid.Row) = (CLng(Me.FGrid.Rows) - 1)) Then
  loc_10F43E2:   Exit Sub
  loc_10F43E3: End If
  loc_10F4402: If (CLng(Me.FGrid.Row) = 0) Then
  loc_10F4405:   Exit Sub
  loc_10F4406: End If
  loc_10F4425: If (CLng(Me.FGrid.Row) = 1) Then
  loc_10F4428:   Exit Sub
  loc_10F4429: End If
  loc_10F4448: If (CLng(Me.FGrid.Row) = 2) Then
  loc_10F444B:   Exit Sub
  loc_10F444C: End If
  loc_10F4460: var_86 = CInt(CLng(Me.FGrid.Row))
  loc_10F448E: For var_F0 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_F0 'Integer
  loc_10F4498:   var_100 = CVar(CLng(var_86)) 'Long
  loc_10F44A1:   var_120 = CVar(CLng(var_C2)) 'Long
  loc_10F44C5:   var_A0(CLng(var_C2)) = CStr(Me.FGrid.TextMatrix))
  loc_10F44D2: Next var_F0 'Integer
  loc_10F44FC: For var_138 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_138 'Integer
  loc_10F4515:   var_15C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F451E:   var_17C = CVar(CLng(var_C2)) 'Long
  loc_10F453C:   var_100 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_10F4545:   var_120 = CVar(CLng(var_C2)) 'Long
  loc_10F455F:   var_19C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_10F4567:   Set var_1B0 = Me.FGrid
  loc_10F456D:   LateIdCallSt
  loc_10F458E: Next var_138 'Integer
  loc_10F45B8: For var_1B4 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_1B4 'Integer
  loc_10F45D7:   var_100 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_10F45E0:   var_120 = CVar(CLng(var_C2)) 'Long
  loc_10F45F5:   Set var_DC = Me.FGrid
  loc_10F45FB:   LateIdCallSt
  loc_10F4610: Next var_1B4 'Integer
  loc_10F461C: var_100 = CVar(CLng((var_86 - 1))) 'Long
  loc_10F462B: Me.FGrid.Row = var_100
  loc_10F4655: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_10F4664: Call Proc_109_59_E80790()
  loc_10F4669: Exit Sub
  loc_10F466A: CopyBytes -26624
End Sub

Private Sub CmdDown_Click() '10968B0
  'Data Table: 4F6110
  Dim var_C0 As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  loc_109664F: If (CLng(Me.FGrid.Row) = 1) Then
  loc_1096652:   Exit Sub
  loc_1096653: End If
  loc_109668E: If (CLng(Me.FGrid.Row) = (CLng(Me.FGrid.Rows) - 2)) Then
  loc_1096691:   Exit Sub
  loc_1096692: End If
  loc_10966A6: var_86 = CInt(CLng(Me.FGrid.Row))
  loc_10966D4: For var_D4 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_D4 'Integer
  loc_10966DE:   var_E4 = CVar(CLng(var_86)) 'Long
  loc_10966E7:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_109670B:   var_A0(CLng(var_A6)) = CStr(Me.FGrid.TextMatrix))
  loc_1096718: Next var_D4 'Integer
  loc_1096742: For var_11C = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_11C 'Integer
  loc_109675B:   var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1096764:   var_160 = CVar(CLng(var_A6)) 'Long
  loc_1096782:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_109678B:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_10967A5:   var_180 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_10967AD:   Set var_194 = Me.FGrid
  loc_10967B3:   LateIdCallSt
  loc_10967D4: Next var_11C 'Integer
  loc_10967FE: For var_198 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_198 'Integer
  loc_109681D:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_1096826:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_109683B:   Set var_C0 = Me.FGrid
  loc_1096841:   LateIdCallSt
  loc_1096856: Next var_198 'Integer
  loc_1096862: var_E4 = CVar(CLng((var_86 + 1))) 'Long
  loc_1096871: Me.FGrid.Row = var_E4
  loc_109689B: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_10968AA: Call Proc_109_59_E80790()
  loc_10968AF: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_9 '1052F38
  'Data Table: 4F6110
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E8 As Variant
  Dim var_B4 As Variant
  Dim var_118 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As String
  loc_1052CDF: Me.DGRevenue.Visible = False
  loc_1052D13: If ((Me.RecordCount > 0) And (Me.EOF = 0)) Then
  loc_1052D29:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1052D31:   var_E8 = CVar(CLng(&HF)) 'Long
  loc_1052D64:   var_118 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1052D6C:   Set var_12C = Me.FGrid
  loc_1052D72:   LateIdCallSt
  loc_1052DA1:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1052DA9:   var_E8 = CVar(CLng(&HD)) 'Long
  loc_1052DDC:   var_118 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1052DE4:   Set var_12C = Me.FGrid
  loc_1052DEA:   LateIdCallSt
  loc_1052E45:   If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_1052E5B:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1052E63:     var_D8 = CVar(CLng(&HB)) 'Long
  loc_1052E68:     var_F8 = "+"
  loc_1052E72:     Set var_B4 = Me.FGrid
  loc_1052E78:     LateIdCallSt
  loc_1052E8D:   Else
  loc_1052ECC:     If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_1052EE2:       var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1052EEA:       var_D8 = CVar(CLng(&HB)) 'Long
  loc_1052EEF:       var_F8 = "-"
  loc_1052EF9:       Set var_B4 = Me.FGrid
  loc_1052EFF:       LateIdCallSt
  loc_1052F11:     End If
  loc_1052F11:   End If
  loc_1052F11: End If
  loc_1052F1A: Set var_A8 = Me.TxtGrid
  loc_1052F20: Call 0.Method_DGRevenue_UnknownEvent_90 (0, var_B4, var_B4, var_F8, var_D8, var_94, var_B4)
  loc_1052F28: var_B4.SetFocus
  loc_1052F34: Exit Sub
  loc_1052F35: StUdtVar
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E52A78
  'Data Table: 4F6110
  loc_E52A52: Set var_88 = Me.Txt
  loc_E52A58: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E52A66: Proc_6_74_E23240(var_8C)
  loc_E52A72: Call Proc_109_67_EBC124(var_8C)
  loc_E52A77: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F70890
  'Data Table: 4F6110
  Dim var_98 As DataGrid
  loc_F7076E: If (CLng(Shift) = &H1B) Then
  loc_F70771:   Call Proc_109_67_EBC124()
  loc_F70776:   Exit Sub
  loc_F70777: End If
  loc_F70785: If (KeyCode = CInt(0)) Then
  loc_F707A0:   Set var_9C = Nothing
  loc_F707AB:   Set var_98 = Nothing
  loc_F707D9:   Proc_6_69_134A630(Me.DGVType, Me.Txt, KeyCode, global_80, Shift, 0)
  loc_F707ED: End If
  loc_F7081E: Set var_98 = Me.DGRevenue
  loc_F70843: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGSundry.Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_F7085B:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F70864:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_F70869:   End If
  loc_F7087E:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F70887:     Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_F7088C:   End If
  loc_F7088C: End If
  loc_F7088C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E09050
  'Data Table: 4F6110
  Dim var_86 As Integer
  loc_E09043: Proc_6_58_E06050(arg_10)
  loc_E0904B: var_86 = KeyAscii
  loc_E0904E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA5358
  'Data Table: 4F6110
  loc_EA52EA: If (KeyCode = CInt(0)) Then
  loc_EA5309:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EA531D:     var_A4 = "Name"
  loc_EA5341:     Proc_6_68_12A2818(Me.DGVType, Me.Txt, KeyCode, global_80)
  loc_EA5354:   End If
  loc_EA5354: End If
  loc_EA5354: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4EC5C
  'Data Table: 4F6110
  loc_E4EC3A: Set var_88 = Me.Txt
  loc_E4EC40: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4EC4E: Proc_6_73_E23294(var_8C)
  loc_E4EC5A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '124EDB0
  'Data Table: 4F6110
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_E4 As TextBox
  Dim var_E8 As String
  Dim var_F4 As String
  Dim var_114 As Variant
  Dim var_94 As Label
  Dim var_128 As TextBox
  loc_124E877: var_86 = Cancel
  loc_124E882: If (var_86 = CInt(0)) Then
  loc_124E890:   Set var_8C = Me.Txt
  loc_124E896:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_124E89E:   var_98 = "Voucher Type"
  loc_124E8BF:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_124E8CD:     Set var_8C = Me.Txt
  loc_124E8D3:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_124E8DB:     var_90.SetFocus
  loc_124E8E9:     arg_10 = &HFF
  loc_124E8EC:     Exit Sub
  loc_124E8ED:   End If
  loc_124E93B:   Set var_8C = Me.Txt
  loc_124E941:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_124E949:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_124E961:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_124E971:     Set var_8C = Me.Txt
  loc_124E977:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_124E97F:     var_90.Text = vbNullString
  loc_124E998:     Set var_8C = Me.Txt
  loc_124E99E:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_124E9A6:     var_90.Tag = vbNullString
  loc_124E9BF:     Me.LblDepart.Caption = vbNullString
  loc_124E9CA:   Else
  loc_124EA09:     If (Me.Fields.Item("RestType").Value = "Banquet") Then
  loc_124EA47:       Set var_94 = Me.Txt
  loc_124EA4D:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_124EA55:       var_E4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_124EAA6:       Set var_94 = Me.Txt
  loc_124EAAC:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_124EAB4:       var_E4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_124EACD:     Else
  loc_124EB08:       Set var_94 = Me.Txt
  loc_124EB0E:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_124EB16:       var_E4.Text = CStr(Me.Fields.Item("V_Type").Value)
  loc_124EB67:       Set var_94 = Me.Txt
  loc_124EB6D:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_124EB75:       var_E4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_124EB8B:     End If
  loc_124EBA7:     Me.Recordset15.CursorLocation = 3
  loc_124EBFB:     var_E8 = " SELECT DISTINCT RM.Code as Code,RM.Name as NAme,RM.Type FROM RevMast AS RM WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and RM.FieldType='T'"
  loc_124EC10:     var_F4 = var_E8 & " Union " & " Select Distinct RM.Code as Code,RM.Name as NAme,RM.Type From RevMast RM Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_124EC26:     var_114 = CVar(var_F4 & "' or LOGSITE_CODE='HO') and FlagAmr<>'Header' and RM.DeskCode='") & Me.Fields.Item("Dcode").Value & "' Order By Name" 
  loc_124EC31:     Me.Open var_114, CVar(MemVar_1F95044), 3
  loc_124EC5E:     CVarUnk
  loc_124EC63:     VerifyVarObj
  loc_124EC69:     Set var_8C = Me.DGRevenue
  loc_124EC6F:     LateIdStAd
  loc_124EC8F:     var_8C = Me.Fields
  loc_124EC97:     var_90 = var_8C.Item("Name")
  loc_124ECB5:     Me.LblDepart.Caption = Proc_6_38_E69628(CVar(var_90), var_8C, New)
  loc_124ECC7:     Call Proc_109_69_12D3620(1, -1)
  loc_124ECCC:   End If
  loc_124ECCF: Else
  loc_124ECD7:   If (var_86 = CInt(1)) Then
  loc_124ECE5:     Set var_8C = Me.Txt
  loc_124ECEB:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_124ED14:     If (Proc_6_27_EA61EC(var_90, "App. Date") = 0) Then
  loc_124ED22:       Set var_8C = Me.Txt
  loc_124ED28:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_124ED30:       var_90.SetFocus
  loc_124ED3E:       arg_10 = &HFF
  loc_124ED41:       Exit Sub
  loc_124ED42:     End If
  loc_124ED4C:     Set var_8C = Me.Txt
  loc_124ED52:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_124ED72:     Set var_E4 = Me.Txt
  loc_124ED78:     Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_124ED80:     var_128.Text = Proc_6_33_15125B8(var_90, arg_10)
  loc_124EDA5:     Me.FGrid.Col = CVar(CLng(1))
  loc_124EDAD:   End If
  loc_124EDAD: End If
  loc_124EDAD: Exit Sub
End Sub

Private Sub DGSundry_UnknownEvent_9 '1076B8C
  'Data Table: 4F6110
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_128 As TextBox
  loc_107690B: Me.DGSundry.Visible = False
  loc_107692A: If (Me.RecordCount > 0) Then
  loc_1076940:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1076948:   var_E4 = CVar(CLng(2)) 'Long
  loc_107697B:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1076983:   Set var_128 = Me.FGrid
  loc_1076989:   LateIdCallSt
  loc_10769FB:   Set var_128 = Me.FGrid
  loc_1076A01:   LateIdCallSt
  loc_1076A57:   Set var_B4 = Me.TxtGrid
  loc_1076A5D:   Call 0.Method_DGSundry_UnknownEvent_90 (0, var_128, CStr(Me.Fields.Item("Name").Value), var_128, CVar(CStr(Me.Fields.Item("Name").Value)), CVar(CLng(3)))
  loc_1076A65:   var_128.Text = CVar(CLng(Me.FGrid.Row))
  loc_1076AC6:   var_114 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_128)) 'String
  loc_1076ACE:   Set var_128 = Me.FGrid
  loc_1076AD4:   LateIdCallSt
  loc_1076B01:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1076B09:   var_E4 = CVar(CLng(&HE)) 'Long
  loc_1076B2B:   var_B0 = Me.Fields.Item("SysYN")
  loc_1076B3C:   var_114 = CVar(CStr(var_B0.Value)) 'String
  loc_1076B44:   Set var_128 = Me.FGrid
  loc_1076B4A:   LateIdCallSt
  loc_1076B66: End If
  loc_1076B6F: Set var_A8 = Me.TxtGrid
  loc_1076B75: Call 0.Method_DGSundry_UnknownEvent_90 (0, var_B0, var_128, var_114, var_E4, var_A4)
  loc_1076B7D: var_B0.SetFocus
  loc_1076B89: Exit Sub
End Sub

Private Sub CmdPaste_Click() 'E4FF74
  'Data Table: 4F6110
  loc_E4FF4C: Set var_88 = Me.TopCtrl1
  loc_E4FF52: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4FF6B: If (CStr() = "Add") Then
  loc_E4FF6E:   Call Proc_109_71_1384748()
  loc_E4FF73: End If
  loc_E4FF73: Exit Sub
End Sub

Private Sub cmdCopy_Click() 'F6AED0
  'Data Table: 4F6110
  Dim unk_4F6127 As Connection15
  Dim var_C8 As Variant
  Dim var_F8 As String
  Dim var_108 As Variant
  Dim var_10C As TextBox
  loc_F6ADE6: unk_4F6127.Execute "Delete From SundryType Where V_Type='XXX'", var_A4, -1
  loc_F6AE0E: Proc_6_7_F26918(var_A4, MemVar_1F950F4, "INSERT INTO SundryType SELECT 'XXX' AS V_Type, SundryCode, SNo, ", var_1BC)
  loc_F6AE16: var_C8 = -1 & var_A4 
  loc_F6AE23: var_F8 = "AutoManual, U_Name, GETDATE() AS U_EntDt, U_AE, SiteCode, PostYN, LogSite_Code FROM SundryType AS SundryType_1 WHERE V_Type = "
  loc_F6AE28: var_108 = var_C8 & " AS Appdate, DispName, CalcFormula, PerOrAmt, RoundOff, SValue, Limit, RevCode, Nature, CalcSign, SysYN, Grp," & var_F8 
  loc_F6AE40: Call 0.Method_cmdCopy_Click0 (CInt(0), var_10C, var_110)
  loc_F6AE48: var_108 = var_10C.Tag
  loc_F6AE56: Proc_6_17_EAAE40(var_130, CVar(var_110))
  loc_F6AE76: Set var_164 = Me.Txt
  loc_F6AE7C: Call 0.Method_cmdCopy_Click0 (CInt(1), var_168)
  loc_F6AE8B: Proc_6_7_F26918(var_188, CVar(var_168))
  loc_F6AEA1: unk_4F6127.Execute CStr(var_1C0 & var_130 & " AND AppDate = " & var_188), Me.Txt, 
  loc_F6AECF: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11E40C4
  'Data Table: 4F6110
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_11E3C4C: Call Proc_109_67_EBC124()
  loc_11E3C64: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11E3C7F: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E3C88: Set var_BC = Me.FGrid
  loc_11E3CBE: Set var_104 = Me.TxtGrid
  loc_11E3CC4: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_11E3CCC: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_11E3CFD: var_110 = CLng(Me.FGrid.Col)
  loc_11E3D0D: If (var_110 = CLng(3)) Then
  loc_11E3D1F:   Set var_A8 = Me.TxtGrid
  loc_11E3D25:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E3D2D:   var_BC.MaxLength = var_110
  loc_11E3D7A:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E3D7D:     Exit Sub
  loc_11E3D7E:   End If
  loc_11E3D91:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E3D99:   var_DC = CVar(CLng(3)) 'Long
  loc_11E3DCC:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E3DD5:     Me.MoveFirst
  loc_11E3DED:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E3DF5:     var_DC = CVar(CLng(2)) 'Long
  loc_11E3DFE:     Set var_BC = Me.FGrid
  loc_11E3E15:     Proc_6_17_EAAE40(var_128, CVar(CStr(var_BC.TextMatrix))), var_DC, var_94)
  loc_11E3E3E:     Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E3E6E:     If (Me.EOF = &HFF) Then
  loc_11E3E77:       Me.MoveFirst
  loc_11E3E7C:     End If
  loc_11E3E7C:   End If
  loc_11E3E7F: Else
  loc_11E3E86:   If Not (var_110 = CLng(7)) Then
  loc_11E3E90:     If (var_110 = CLng(9)) Then
  loc_11E3E93:     End If
  loc_11E3EA2:     Set var_A8 = Me.TxtGrid
  loc_11E3EA8:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB, var_158)
  loc_11E3EB0:     var_BC.MaxLength = var_DC
  loc_11E3EC5:     If (global_74 = 0) Then
  loc_11E3ED0:       var_10C = "{Home}+{End}"
  loc_11E3ED6:       Proc_303_0_FBACC8(CStr("Code=" & var_128), 0)
  loc_11E3EDE:     End If
  loc_11E3EE1:   Else
  loc_11E3EE8:     If (var_110 = CLng(4)) Then
  loc_11E3EFA:       Set var_A8 = Me.TxtGrid
  loc_11E3F00:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E3F08:       var_BC.MaxLength = var_94
  loc_11E3F17:     Else
  loc_11E3F1E:       If (var_110 = CLng(5)) Then
  loc_11E3F30:         Set var_A8 = Me.TxtGrid
  loc_11E3F36:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E3F3E:         var_BC.MaxLength = &H32
  loc_11E3F4D:       Else
  loc_11E3F54:         If (var_110 = CLng(&HD)) Then
  loc_11E3F66:           Set var_A8 = Me.TxtGrid
  loc_11E3F6C:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E3F74:           var_BC.MaxLength = &H32
  loc_11E3FC1:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E3FC4:             Exit Sub
  loc_11E3FC5:           End If
  loc_11E3FD8:           var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E3FE0:           var_DC = CVar(CLng(&HD)) 'Long
  loc_11E4013:           If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E401C:             Me.MoveFirst
  loc_11E405C:             Proc_6_17_EAAE40(var_128, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)))
  loc_11E4085:             Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E40B5:             If (Me.EOF = &HFF) Then
  loc_11E40BE:               Me.MoveFirst
  loc_11E40C3:             End If
  loc_11E40C3:           End If
  loc_11E40C3:         End If
  loc_11E40C3:       End If
  loc_11E40C3:     End If
  loc_11E40C3:   End If
  loc_11E40C3: End If
  loc_11E40C3: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13BC43C
  'Data Table: 4F6110
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C8 As Variant
  Dim var_94 As DataGrid
  loc_13BBACC: On Error Goto loc_13BC436
  loc_13BBAD9: If (CLng(Shift) = &H1B) Then
  loc_13BBAE9:   Set var_88 = Me.TxtGrid
  loc_13BBAEF:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13BBB09:   Set var_94 = Me.TxtGrid
  loc_13BBB0F:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_13BBB17:   var_98.Text = var_8C.Tag
  loc_13BBB33:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13BBB38:   Call Proc_109_67_EBC124(arg_14)
  loc_13BBB41:   Set var_88 = Me.FGrid
  loc_13BBB5E:   Set var_88 = Me.TxtGrid
  loc_13BBB64:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13BBB6C:   var_8C.Visible = False
  loc_13BBB78:   Exit Sub
  loc_13BBB79: End If
  loc_13BBB8C: var_AC = CLng(Me.FGrid.Col)
  loc_13BBB9C: If (var_AC = CLng(1)) Then
  loc_13BBBA9:   If (CLng(Shift) = &HD) Then
  loc_13BBBB2:     Call Proc_109_63_152AEB4(KeyCode, var_AE)
  loc_13BBBBD:     If (var_AE = &HFF) Then
  loc_13BBBCB:       Set var_98 = Me.TxtGrid
  loc_13BBBF4:       Set var_8C = var_98
  loc_13BBC03:       Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_74, &HF)
  loc_13BBC13:     End If
  loc_13BBC13:   End If
  loc_13BBC16: Else
  loc_13BBC1D:   If (var_AC = CLng(3)) Then
  loc_13BBC2C:     Set var_88 = Me.TxtGrid
  loc_13BBC32:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0)
  loc_13BBC3A:     3 = var_8C.Left
  loc_13BBC51:     Me.DGSundry.Left = CVar(var_B8)
  loc_13BBC6B:     Set var_94 = Me.TxtGrid
  loc_13BBC71:     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13BBC79:     0 = var_98.Height
  loc_13BBC8A:     Set var_88 = Me.TxtGrid
  loc_13BBC90:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13BBC98:     var_AC = var_8C.Top
  loc_13BBCA4:     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13BBCB3:     Me.DGSundry.Top = CVar(var_B8)
  loc_13BBCDD:     Set var_98 = Nothing
  loc_13BBD16:     Proc_6_69_134A630(Me.DGSundry, Me.TxtGrid, KeyCode, global_84, Shift, &HFF)
  loc_13BBD34:     If (CLng(Shift) = &HD) Then
  loc_13BBD3D:       Call Proc_109_63_152AEB4(KeyCode, var_AE, 1, Nothing)
  loc_13BBD48:       If (var_AE = &HFF) Then
  loc_13BBD8E:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF)
  loc_13BBD9E:       End If
  loc_13BBD9E:     End If
  loc_13BBDA1:   Else
  loc_13BBDA8:     If (var_AC = CLng(4)) Then
  loc_13BBDEB:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BBDF4:         Call Proc_109_63_152AEB4(KeyCode, var_AE, 0, 4)
  loc_13BBDFF:         If (var_AE = &HFF) Then
  loc_13BBE45:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BBE55:         End If
  loc_13BBE55:       End If
  loc_13BBE58:     Else
  loc_13BBE5F:       If (var_AC = CLng(5)) Then
  loc_13BBEA2:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BBEAB:           Call Proc_109_63_152AEB4(KeyCode, var_AE, 5, 0)
  loc_13BBEB6:           If (var_AE = &HFF) Then
  loc_13BBEFC:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BBF0C:           End If
  loc_13BBF0C:         End If
  loc_13BBF0F:       Else
  loc_13BBF16:         If (var_AC = CLng(6)) Then
  loc_13BBF59:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BBF62:             Call Proc_109_63_152AEB4(KeyCode, var_AE, 6, 0)
  loc_13BBF6D:             If (var_AE = &HFF) Then
  loc_13BBFB3:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BBFC3:             End If
  loc_13BBFC3:           End If
  loc_13BBFC6:         Else
  loc_13BBFCD:           If (var_AC = CLng(7)) Then
  loc_13BC010:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BC019:               Call Proc_109_63_152AEB4(KeyCode, var_AE, 7, 0)
  loc_13BC024:               If (var_AE = &HFF) Then
  loc_13BC06A:                 Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BC07A:               End If
  loc_13BC07A:             End If
  loc_13BC07D:           Else
  loc_13BC084:             If Not (var_AC = CLng(8)) Then
  loc_13BC08E:               If (var_AC = CLng(&H10)) Then
  loc_13BC091:               End If
  loc_13BC0D1:               If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BC0DA:                 Call Proc_109_63_152AEB4(KeyCode, var_AE, &HC, 0)
  loc_13BC0E5:                 If (var_AE = &HFF) Then
  loc_13BC12B:                   Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BC13B:                 End If
  loc_13BC13B:               End If
  loc_13BC13E:             Else
  loc_13BC145:               If (var_AC = CLng(9)) Then
  loc_13BC188:                 If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BC191:                   Call Proc_109_63_152AEB4(KeyCode, var_AE, 9, 0)
  loc_13BC19C:                   If (var_AE = &HFF) Then
  loc_13BC1E2:                     Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BC1F2:                   End If
  loc_13BC1F2:                 End If
  loc_13BC1F5:               Else
  loc_13BC1FC:                 If (var_AC = CLng(&HC)) Then
  loc_13BC23F:                   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BC248:                     Call Proc_109_63_152AEB4(KeyCode, var_AE, &HC, 0)
  loc_13BC253:                     If (var_AE = &HFF) Then
  loc_13BC261:                       Set var_98 = Me.TxtGrid
  loc_13BC28A:                       Set var_8C = var_98
  loc_13BC299:                       Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_74, &HF, 0)
  loc_13BC2A9:                     End If
  loc_13BC2A9:                   End If
  loc_13BC2AC:                 Else
  loc_13BC2B3:                   If (var_AC = CLng(&HD)) Then
  loc_13BC2C2:                     Set var_88 = Me.TxtGrid
  loc_13BC2C8:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0, 0)
  loc_13BC2D0:                     0 = var_8C.Left
  loc_13BC2E7:                     Me.DGRevenue.Left = CVar(var_B8)
  loc_13BC301:                     Set var_94 = Me.TxtGrid
  loc_13BC307:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13BC30F:                     var_98 = var_98.Height
  loc_13BC320:                     Set var_88 = Me.TxtGrid
  loc_13BC326:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13BC32E:                     0 = var_8C.Top
  loc_13BC33A:                     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13BC349:                     Me.DGRevenue.Top = CVar(var_B8)
  loc_13BC373:                     Set var_98 = Nothing
  loc_13BC3AC:                     Proc_6_69_134A630(Me.DGRevenue, Me.TxtGrid, KeyCode, global_88, Shift, &HFF)
  loc_13BC3CA:                     If (CLng(Shift) = &HD) Then
  loc_13BC3D3:                       Call Proc_109_63_152AEB4(KeyCode, var_AE, 1, Nothing)
  loc_13BC3DE:                       If (var_AE = &HFF) Then
  loc_13BC426:                         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF)
  loc_13BC436:                       End If
  loc_13BC436:                     End If
  loc_13BC436:                   End If
  loc_13BC436:                 End If
  loc_13BC436:               End If
  loc_13BC436:             End If
  loc_13BC436:           End If
  loc_13BC436:         End If
  loc_13BC436:       End If
  loc_13BC436:       ' Referenced from: 13BBACC
  loc_13BC436:     End If
  loc_13BC436:   End If
  loc_13BC436: End If
  loc_13BC436: Proc_6_60_E63754(CByte(1), 0, 0)
  loc_13BC43B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '11A9228
  'Data Table: 4F6110
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_B4 As Integer
  Dim arg_10 As Integer
  Dim var_AC As TextBox
  loc_11A8DFF: Proc_6_58_E06050(arg_10)
  loc_11A8E10: If (KeyAscii = 0) Then
  loc_11A8E26:   var_A0 = CLng(Me.FGrid.Col)
  loc_11A8E36:   If (var_A0 = CLng(3)) Then
  loc_11A8E55:     If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_11A8E5C:       Set var_AC = Me.TxtGrid
  loc_11A8E67:       var_A4 = "Name"
  loc_11A8E82:       Proc_6_89_1470B00(var_AC, KeyAscii, global_84, arg_10)
  loc_11A8E91:     End If
  loc_11A8E94:   Else
  loc_11A8E9B:     If (var_A0 = CLng(9)) Then
  loc_11A8EA8:       Set var_8C = Me.TxtGrid
  loc_11A8EAE:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_11A8EC9:       Proc_6_42_129B55C(var_AC, arg_10, 8, 3)
  loc_11A8ED8:     Else
  loc_11A8EDF:       If (var_A0 = CLng(7)) Then
  loc_11A8EEC:         Set var_8C = Me.TxtGrid
  loc_11A8EF2:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_11A8F0D:         Proc_6_42_129B55C(var_AC, arg_10, 8)
  loc_11A8F1C:       Else
  loc_11A8F23:         If (var_A0 = CLng(5)) Then
  loc_11A8F29:           var_B4 = arg_10
  loc_11A8F35:           If Not (&H39 > var_B4 > &H31) Then
  loc_11A8F3E:             If Not (var_B4 = &H2B) Then
  loc_11A8F47:               If Not (var_B4 = &H2D) Then
  loc_11A8F50:                 If Not (var_B4 = 8) Then
  loc_11A8F59:                   If (var_B4 = &H30) Then
  loc_11A8F5C:                   End If
  loc_11A8F5C:                 End If
  loc_11A8F5C:               End If
  loc_11A8F5C:             End If
  loc_11A8F5F:           Else
  loc_11A8F61:             arg_10 = 0
  loc_11A8F64:           End If
  loc_11A8F67:         Else
  loc_11A8F6E:           If (var_A0 = CLng(6)) Then
  loc_11A8F7E:             If ((arg_10 = &H50) Or (arg_10 = &H70)) Then
  loc_11A8F8E:               Set var_8C = Me.TxtGrid
  loc_11A8F94:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Per", arg_10)
  loc_11A8F9C:               var_AC.Text = var_B4
  loc_11A8FAA:               arg_10 = 0
  loc_11A8FB0:             Else
  loc_11A8FBD:               If ((arg_10 = &H41) Or (arg_10 = &H5A)) Then
  loc_11A8FCD:                 Set var_8C = Me.TxtGrid
  loc_11A8FD3:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Amt", arg_10)
  loc_11A8FDB:                 var_AC.Text = 3
  loc_11A8FE9:                 arg_10 = 0
  loc_11A8FEF:               Else
  loc_11A8FFC:                 Set var_8C = Me.TxtGrid
  loc_11A9002:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_11A900A:                 var_AC.Text = arg_10
  loc_11A9018:                 arg_10 = 0
  loc_11A901B:               End If
  loc_11A901B:             End If
  loc_11A901E:           Else
  loc_11A9025:             If Not (var_A0 = CLng(8)) Then
  loc_11A902F:               If (var_A0 = CLng(&HC)) Then
  loc_11A9032:               End If
  loc_11A903F:               If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_11A904F:                 Set var_8C = Me.TxtGrid
  loc_11A9055:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "No")
  loc_11A905D:                 var_AC.Text = arg_10
  loc_11A906B:                 arg_10 = 0
  loc_11A9071:               Else
  loc_11A907E:                 If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_11A908E:                   Set var_8C = Me.TxtGrid
  loc_11A9094:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Yes")
  loc_11A909C:                   var_AC.Text = arg_10
  loc_11A90AA:                   arg_10 = 0
  loc_11A90B0:                 Else
  loc_11A90BD:                   Set var_8C = Me.TxtGrid
  loc_11A90C3:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_11A90CB:                   var_AC.Text = arg_10
  loc_11A90D9:                   arg_10 = 0
  loc_11A90DC:                 End If
  loc_11A90DC:               End If
  loc_11A90DF:             Else
  loc_11A90E6:               If (var_A0 = CLng(&H10)) Then
  loc_11A9112:                 If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_11A9122:                   Set var_8C = Me.TxtGrid
  loc_11A9128:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Auto")
  loc_11A9130:                   var_AC.Text = arg_10
  loc_11A913F:                 Else
  loc_11A9168:                   If (Ucase(Chr(CLng(arg_10))) = "M") Then
  loc_11A9178:                     Set var_8C = Me.TxtGrid
  loc_11A917E:                     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Manual")
  loc_11A9186:                     var_AC.Text = var_A0
  loc_11A9195:                   Else
  loc_11A91A2:                     Set var_8C = Me.TxtGrid
  loc_11A91A8:                     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC)
  loc_11A91B0:                     var_AC.Text = vbNullString
  loc_11A91BC:                   End If
  loc_11A91BC:                 End If
  loc_11A91BE:                 arg_10 = 0
  loc_11A91C4:               Else
  loc_11A91CB:                 If (var_A0 = CLng(&HD)) Then
  loc_11A91EA:                   If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_11A91FC:                     var_A4 = "Name"
  loc_11A9217:                     Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_88, arg_10)
  loc_11A9226:                   End If
  loc_11A9226:                 End If
  loc_11A9226:               End If
  loc_11A9226:             End If
  loc_11A9226:           End If
  loc_11A9226:         End If
  loc_11A9226:       End If
  loc_11A9226:     End If
  loc_11A9226:   End If
  loc_11A9226: End If
  loc_11A9226: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'FB9998
  'Data Table: 4F6110
  Dim var_9C As Long
  Dim var_AA As Integer
  Dim Shift As Integer
  loc_FB97E8: On Error Goto loc_FB9991
  loc_FB97FE: var_9C = CLng(Me.FGrid.Col)
  loc_FB980E: If (var_9C = CLng(3)) Then
  loc_FB9834:   If ((Shift <> &HD) And (CBool(Me.DGSundry.Visible) = 0)) Then
  loc_FB9842:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FB9856:     var_A4 = "Name"
  loc_FB9871:     Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_84, Shift)
  loc_FB9880:   End If
  loc_FB9883: Else
  loc_FB988A:   If Not (var_9C = CLng(6)) Then
  loc_FB9894:     If Not (var_9C = CLng(8)) Then
  loc_FB989E:       If Not (var_9C = CLng(&HC)) Then
  loc_FB98A8:         If Not (var_9C = CLng(5)) Then
  loc_FB98B2:           If (var_9C = CLng(&H10)) Then
  loc_FB98B5:           End If
  loc_FB98B5:         End If
  loc_FB98B5:       End If
  loc_FB98B5:     End If
  loc_FB98BB:     If (Shift <> &HD) Then
  loc_FB98C4:       Call TxtGrid_KeyPress(KeyCode)
  loc_FB98C9:     End If
  loc_FB98CC:   Else
  loc_FB98D3:     If (var_9C = CLng(&HD)) Then
  loc_FB98F9:       If ((Shift <> &HD) And (CBool(Me.DGRevenue.Visible) = 0)) Then
  loc_FB9907:         Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FB9936:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_88, Shift, "Name", &HFF)
  loc_FB9945:       End If
  loc_FB9948:     Else
  loc_FB994F:       If (var_9C = CLng(5)) Then
  loc_FB9955:         var_AA = Shift
  loc_FB9961:         If Not (&H39 > var_AA > &H31) Then
  loc_FB996A:           If Not (var_AA = &H2B) Then
  loc_FB9973:             If Not (var_AA = &H2D) Then
  loc_FB997C:               If Not (var_AA = 8) Then
  loc_FB9985:                 If (var_AA = &H30) Then
  loc_FB9988:                 End If
  loc_FB9988:               End If
  loc_FB9988:             End If
  loc_FB9988:           End If
  loc_FB998B:         Else
  loc_FB998D:           Shift = 0
  loc_FB9990:         End If
  loc_FB9990:       End If
  loc_FB9990:     End If
  loc_FB9990:   End If
  loc_FB9990: End If
  loc_FB9990: Exit Sub
  loc_FB9991: ' Referenced from: FB97E8
  loc_FB9991: Proc_6_60_E63754(Shift, var_AA, 0, Shift)
  loc_FB9996: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E2498C
  'Data Table: 4F6110
  Dim arg_10 As Integer
  loc_E24974: If (Cancel = 0) Then
  loc_E2497D:   Call Proc_109_63_152AEB4(Cancel, var_88)
  loc_E24986:   arg_10 = Not(var_88)
  loc_E24989: End If
  loc_E24989: Exit Sub
End Sub

Private Sub txtPassword_KeyDown(KeyCode As Integer, Shift As Integer) 'E5A978
  'Data Table: 4F6110
  loc_E5A945: If ((CLng(KeyCode) = &H28) Or (CLng(KeyCode) = &HD)) Then
  loc_E5A94E:   Proc_6_75_E5335C(KeyCode)
  loc_E5A953: End If
  loc_E5A968: If ((CLng(KeyCode) = &H26) Or (CLng(KeyCode) = &HD)) Then
  loc_E5A971:   Proc_6_76_E533C8(KeyCode, Shift)
  loc_E5A976: End If
  loc_E5A976: Exit Sub
End Sub

Private Sub txtPassword_Validate(Cancel As Boolean) 'FCC948
  'Data Table: 4F6110
  Dim unk_4F6127 As Connection15
  Dim var_B0 As Variant
  Dim var_B4 As Variant
  Dim var_128 As Variant
  loc_FCC7E4: unk_4F6127.Execute "Select SundryPassword from Enviro where LogSite_Code='" & MemVar_1F95078 & "'", var_B0, -1
  loc_FCC83E: var_B4 = var_B4.Fields
  loc_FCC860: var_128 = CVar(Proc_96_19_EF5CE4(Proc_6_38_E69628(CVar(var_B4.Item("SundryPassword")), Trim(CVar(Me.txtPassword))), (Trim(CVar(Me.txtPassword)) = "india"))) 'String
  loc_FCC8A8: If CBool( Or (var_B4 = var_128) And (Trim(CVar(Me.txtPassword)) <> vbNullString)) Then
  loc_FCC8B7:   Me.CmdPwd.Enabled = True
  loc_FCC8C7:   Set var_B4 = Me.TopCtrl1
  loc_FCC8CD:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_FCC8DD:   Set var_B4 = Me.TopCtrl1
  loc_FCC8E3:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030016(True)
  loc_FCC8EE: Else
  loc_FCC8FB:   Me.txtPassword.Text = vbNullString
  loc_FCC90C:   Set var_B4 = Me.TopCtrl1
  loc_FCC912:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_FCC923:   Set var_B4 = Me.TopCtrl1
  loc_FCC929:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_FCC93D:   Me.CmdPwd.Enabled = False
  loc_FCC945: End If
  loc_FCC945: Exit Sub
  loc_FCC946: CExtInstUnk
End Sub

Private Sub cmdCancel_Click() 'E69964
  'Data Table: 4F6110
  loc_E6991D: Me.txtPassword.Text = vbNullString
  loc_E69931: Me.FrPwd.Visible = False
  loc_E69945: Me.CmdCancel.Visible = False
  loc_E69959: Me.CmdChange.Visible = False
  loc_E69961: Exit Sub
End Sub

Private Sub CmdChange_Click() '100C8B0
  'Data Table: 4F6110
  Dim var_88 As Variant
  Dim var_A0 As Variant
  Dim var_90 As TextBox
  Dim unk_4F6127 As Connection15
  Dim var_124 As String
  Dim var_B0 As Variant
  loc_100C6D1: Me.txtPassword.Text = vbNullString
  loc_100C6D9: On Error Goto loc_100C865
  loc_100C6E7: Set var_88 = Me.Txt
  loc_100C6ED: Call 0.Method_CmdChange_Click0 (CInt(2))
  loc_100C6FC: var_B0 = Trim(CVar(var_90))
  loc_100C716: If (var_B0 = vbNullString) Then
  loc_100C732:   MsgBox("Password Can't be blank ", &H40, var_B0, var_D0, var_110)
  loc_100C74D:   Set var_88 = Me.Txt
  loc_100C753:   Call 0.Method_CmdChange_Click0 (CInt(2), var_90)
  loc_100C75B:   var_90.SetFocus
  loc_100C767:   Exit Sub
  loc_100C768: End If
  loc_100C783: If (Me.FrPwd.Visible = &HFF) Then
  loc_100C792:   Me.FrPwd.Visible = False
  loc_100C7B5:   If (Me.CmdPwd.Enabled = &HFF) Then
  loc_100C7C4:     Me.CmdPwd.Enabled = False
  loc_100C7CC:   End If
  loc_100C7CC: End If
  loc_100C7D5: unk_4F6127.BeginTrans var_118
  loc_100C7F8: Set var_88 = Me.Txt
  loc_100C7FE: Call 0.Method_CmdChange_Click0 (CInt(2), var_90, var_11C, "Update Enviro set SundryPassword='")
  loc_100C806: var_A0 = var_90.Text
  loc_100C817: var_124 = Proc_96_18_EEA0F0(var_11C, -1)
  loc_100C839: unk_4F6127.Execute var_138 & var_124 & "' where SiteCode='" & MemVar_1F95078 & "'", var_90, 
  loc_100C85F: unk_4F6127.CommitTrans
  loc_100C864: Exit Sub
  loc_100C865: ' Referenced from: 100C6D9
  loc_100C86D: Set var_88 = Err()
  loc_100C873: Call 0.Method_arg_2C (var_11C)
  loc_100C87E: Call 0.Method_arg_50 (var_120)
  loc_100C89A: MsgBox(CVar(var_11C), &H40, CVar(var_120), var_D0, var_110)
  loc_100C8AD: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'F358D4
  'Data Table: 4F6110
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F357CB: Me.DGVType.Visible = False
  loc_F357EA: If (Me.RecordCount > 0) Then
  loc_F35829:   Set var_B4 = Me.Txt
  loc_F3582F:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F35837:   var_B8.Text = CStr(Me.Fields.Item("V_Type").Value)
  loc_F3586A:   var_B0 = Me.Fields.Item("Code")
  loc_F35889:   Set var_B4 = Me.Txt
  loc_F3588F:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F35897:   var_B8.Tag = CStr(var_B0.Value)
  loc_F358AD: End If
  loc_F358B8: Set var_A8 = Me.Txt
  loc_F358BE: Call 0.Method_DGVType_UnknownEvent_90 (CInt(0))
  loc_F358C6: var_B0.SetFocus
  loc_F358D2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E86EE0
  'Data Table: 4F6110
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E86E83: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E86E96: Set var_A8 = Me.TxtGrid
  loc_E86E9C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E86EA4: var_AC.Visible = False
  loc_E86EBE: Set var_A8 = Me.TxtGrid
  loc_E86EC4: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E86ECC: var_AC.MaxLength = 0
  loc_E86ED8: Call Proc_109_67_EBC124()
  loc_E86EDD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67320
  'Data Table: 4F6110
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E672DC: Set var_88 = Me.TxtGrid
  loc_E672E2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E672FC: If (var_8C.Visible = 0) Then
  loc_E67315:   Me.FGrid.BackColorSel = CVar(CLng(global_64))
  loc_E6731D: End If
  loc_E6731D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E20670
  'Data Table: 4F6110
  loc_E20667: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E2066F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFEDB4
  'Data Table: 4F6110
  loc_DFEDAC: Call Proc_109_62_E4647C()
  loc_DFEDB1: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '12944A8
  'Data Table: 4F6110
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim arg_C As Integer
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_1293EBC: Set var_88 = Me.TopCtrl1
  loc_1293EC2: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1293F07: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_1293F10:   Call Form_KeyDown(arg_C, arg_10)
  loc_1293F15: End If
  loc_1293F19: Set var_88 = Me.TopCtrl1
  loc_1293F1F: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1293F38: If (CStr() = "Browse") Then
  loc_1293F3B:   Exit Sub
  loc_1293F3C: End If
  loc_1293F59: var_C4 = Me.FGrid.Rows
  loc_1293FB0: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_1293FC6:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1293FD6:   var_9C = "+{Tab}"
  loc_1293FDC:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_1293FE6:   arg_C = 0
  loc_1293FEC: Else
  loc_1293FF6:   var_B0 = Me.FGrid.Rows
  loc_1294043:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1294059:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_129406F:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_1294079:     arg_C = 0
  loc_12940B3:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_12940B6:       Call TopCtrl1_UnknownEvent_16()
  loc_12940BB:     End If
  loc_12940BB:   End If
  loc_12940BB: End If
  loc_12940E7: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_129410B: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_1294121:   var_11C = CLng(Me.FGrid.Col)
  loc_1294131:   If (var_11C = CLng(3)) Then
  loc_1294138:     Set var_88 = Me.TopCtrl1
  loc_129413E:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_11C)
  loc_1294157:     If (CStr(arg_C) = "Add") Then
  loc_129416D:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1294175:       var_F8 = CVar(CLng(3)) 'Long
  loc_129417A:       var_12C = vbNullString
  loc_1294184:       Set var_A0 = Me.FGrid
  loc_129418A:       LateIdCallSt
  loc_12941AF:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12941B7:       var_F8 = CVar(CLng(2)) 'Long
  loc_12941BC:       var_12C = vbNullString
  loc_12941C6:       Set var_A0 = Me.FGrid
  loc_12941CC:       LateIdCallSt
  loc_12941F1:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12941F9:       var_F8 = CVar(CLng(&HA)) 'Long
  loc_12941FE:       var_12C = vbNullString
  loc_1294208:       Set var_A0 = Me.FGrid
  loc_129420E:       LateIdCallSt
  loc_1294233:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_129423B:       var_F8 = CVar(CLng(&HE)) 'Long
  loc_1294240:       var_12C = vbNullString
  loc_129424A:       Set var_A0 = Me.FGrid
  loc_1294250:       LateIdCallSt
  loc_1294262:     End If
  loc_1294265:   Else
  loc_129426C:     If (var_11C = CLng(1)) Then
  loc_1294273:       Set var_88 = Me.TopCtrl1
  loc_1294279:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A0)
  loc_1294292:       If (CStr(var_12C) = "Add") Then
  loc_12942A8:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12942C0:         var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12942C5:         var_12C = vbNullString
  loc_12942CF:         Set var_B4 = Me.FGrid
  loc_12942D5:         LateIdCallSt
  loc_12942ED:       End If
  loc_12942F0:     Else
  loc_12942F7:       If Not (var_11C = CLng(4)) Then
  loc_1294301:         If Not (var_11C = CLng(5)) Then
  loc_129430B:           If Not (var_11C = CLng(6)) Then
  loc_1294315:             If Not (var_11C = CLng(7)) Then
  loc_129431F:               If Not (var_11C = CLng(8)) Then
  loc_1294329:                 If Not (var_11C = CLng(9)) Then
  loc_1294333:                   If Not (var_11C = CLng(&HC)) Then
  loc_129433D:                     If (var_11C = CLng(&H10)) Then
  loc_1294340:                     End If
  loc_1294340:                   End If
  loc_1294340:                 End If
  loc_1294340:               End If
  loc_1294340:             End If
  loc_1294340:           End If
  loc_1294340:         End If
  loc_1294353:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_129436B:         var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1294370:         var_12C = vbNullString
  loc_129437A:         Set var_B4 = Me.FGrid
  loc_1294380:         LateIdCallSt
  loc_129439B:       Else
  loc_12943A2:         If (var_11C = CLng(&HD)) Then
  loc_12943A9:           Set var_88 = Me.TopCtrl1
  loc_12943AF:           Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_B4)
  loc_12943C8:           If (CStr(var_12C) = "Add") Then
  loc_12943DE:             var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12943E6:             var_F8 = CVar(CLng(&HF)) 'Long
  loc_12943EB:             var_12C = vbNullString
  loc_12943F5:             Set var_A0 = Me.FGrid
  loc_12943FB:             LateIdCallSt
  loc_1294420:             var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1294428:             var_F8 = CVar(CLng(&HD)) 'Long
  loc_129442D:             var_12C = vbNullString
  loc_1294437:             Set var_A0 = Me.FGrid
  loc_129443D:             LateIdCallSt
  loc_1294462:             var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_129446A:             var_F8 = CVar(CLng(&HB)) 'Long
  loc_129446F:             var_12C = vbNullString
  loc_1294479:             Set var_A0 = Me.FGrid
  loc_129447F:             LateIdCallSt
  loc_1294491:           End If
  loc_1294491:         End If
  loc_1294491:       End If
  loc_1294491:     End If
  loc_1294491:   End If
  loc_1294491: End If
  loc_1294497: If (arg_C = &HD) Then
  loc_129449F:   global_74 = 0
  loc_12944A2: End If
  loc_12944A4: arg_C = 0
  loc_12944A7: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10060
  'Data Table: 4F6110
  loc_E10051: Call FGrid_UnknownEvent_C()
  loc_E1005E: Exit Sub
  loc_E1005F: Result 0 End Sub 'Currency
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '12DBAE0
  'Data Table: 4F6110
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_12DB42C: Set var_88 = Me.TopCtrl1
  loc_12DB432: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12DB44B: If (CStr() = "Browse") Then
  loc_12DB44E:   Exit Sub
  loc_12DB44F: End If
  loc_12DB462: var_A0 = CLng(Me.FGrid.Col)
  loc_12DB472: If Not (var_A0 = CLng(3)) Then
  loc_12DB47C:   If Not (var_A0 = CLng(&HD)) Then
  loc_12DB486:     If (var_A0 = CLng(8)) Then
  loc_12DB489:     End If
  loc_12DB489:   End If
  loc_12DB48D:   Set var_88 = Me.TopCtrl1
  loc_12DB493:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A0)
  loc_12DB4AC:   If (CStr() = "Add") Then
  loc_12DB4B3:     Set var_C4 = Me.FGrid
  loc_12DB4D7:     var_9C = CStr(Ucase(Chr(CLng(Index))))
  loc_12DB4E0:     var_CA = Asc(var_9C)
  loc_12DB504:     Set var_B4 = var_C4
  loc_12DB516:     Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0)
  loc_12DB53E:     Set var_88 = Me.TxtGrid
  loc_12DB544:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, 0)
  loc_12DB54C:     var_CA = var_B4.Text
  loc_12DB565:     If (Len(var_9C) <= 1) Then
  loc_12DB574:       Set var_88 = Me.TxtGrid
  loc_12DB57A:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_12DB582:       0 = var_B4.Text
  loc_12DB593:       Set var_B8 = Me.TxtGrid
  loc_12DB599:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12DB5A1:       var_C4.Text = var_9C
  loc_12DB5B4:     End If
  loc_12DB5C0:     Set var_88 = Me.TxtGrid
  loc_12DB5C6:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_12DB5E0:     Set var_B8 = Me.TxtGrid
  loc_12DB5E6:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12DB5EE:     var_C4.SelStart = Len(var_B4.Text)
  loc_12DB601:   End If
  loc_12DB604: Else
  loc_12DB60B:   If Not (var_A0 = CLng(4)) Then
  loc_12DB615:     If Not (var_A0 = CLng(6)) Then
  loc_12DB61F:       If Not (var_A0 = CLng(&HC)) Then
  loc_12DB629:         If (var_A0 = CLng(&H10)) Then
  loc_12DB62C:         End If
  loc_12DB62C:       End If
  loc_12DB62C:     End If
  loc_12DB630:     Set var_C4 = Me.FGrid
  loc_12DB654:     var_9C = CStr(Ucase(Chr(CLng(Index))))
  loc_12DB681:     Set var_B4 = var_C4
  loc_12DB693:     Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_12DB6BB:     Set var_88 = Me.TxtGrid
  loc_12DB6C1:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_12DB6C9:     0 = var_B4.Text
  loc_12DB6E2:     If (Len(var_9C) <= 1) Then
  loc_12DB6F1:       Set var_88 = Me.TxtGrid
  loc_12DB6F7:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_12DB6FF:       var_CA = var_B4.Text
  loc_12DB710:       Set var_B8 = Me.TxtGrid
  loc_12DB716:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12DB71E:       var_C4.Text = var_9C
  loc_12DB731:     End If
  loc_12DB73D:     Set var_88 = Me.TxtGrid
  loc_12DB743:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_12DB75D:     Set var_B8 = Me.TxtGrid
  loc_12DB763:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12DB76B:     var_C4.SelStart = Len(var_B4.Text)
  loc_12DB781:   Else
  loc_12DB788:     If (var_A0 = CLng(5)) Then
  loc_12DB7C9:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_12DB7DE:     Else
  loc_12DB7E5:       If Not (var_A0 = CLng(1)) Then
  loc_12DB7EF:         If (var_A0 = CLng(9)) Then
  loc_12DB7F2:         End If
  loc_12DB7F6:         Set var_88 = Me.TopCtrl1
  loc_12DB7FC:         Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(0)
  loc_12DB815:         If (CStr(Index) = "Add") Then
  loc_12DB81C:           Set var_C4 = Me.FGrid
  loc_12DB840:           var_9C = CStr(Ucase(Chr(CLng(Index))))
  loc_12DB86D:           Set var_B4 = var_C4
  loc_12DB87F:           Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_12DB8A7:           Set var_88 = Me.TxtGrid
  loc_12DB8AD:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_12DB8B5:           0 = var_B4.Text
  loc_12DB8CE:           If (Len(var_9C) <= 1) Then
  loc_12DB8DD:             Set var_88 = Me.TxtGrid
  loc_12DB8E3:             Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_12DB8EB:             var_CA = var_B4.Text
  loc_12DB8FC:             Set var_B8 = Me.TxtGrid
  loc_12DB902:             Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_9C)
  loc_12DB90A:             var_C4.Text = 0
  loc_12DB91D:           End If
  loc_12DB929:           Set var_88 = Me.TxtGrid
  loc_12DB92F:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_12DB949:           Set var_B8 = Me.TxtGrid
  loc_12DB94F:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12DB957:           var_C4.SelStart = Len(var_B4.Text)
  loc_12DB96A:         End If
  loc_12DB96D:       Else
  loc_12DB974:         If (var_A0 = CLng(7)) Then
  loc_12DB97B:           Set var_C4 = Me.FGrid
  loc_12DB99F:           var_9C = CStr(Ucase(Chr(CLng(Index))))
  loc_12DB9CC:           Set var_B4 = var_C4
  loc_12DB9DE:           Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_12DBA06:           Set var_88 = Me.TxtGrid
  loc_12DBA0C:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_12DBA14:           0 = var_B4.Text
  loc_12DBA2D:           If (Len(var_9C) <= 1) Then
  loc_12DBA3C:             Set var_88 = Me.TxtGrid
  loc_12DBA42:             Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_12DBA4A:             var_CA = var_B4.Text
  loc_12DBA5B:             Set var_B8 = Me.TxtGrid
  loc_12DBA61:             Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12DBA69:             var_C4.Text = var_9C
  loc_12DBA7C:           End If
  loc_12DBA88:           Set var_88 = Me.TxtGrid
  loc_12DBA8E:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_12DBAA8:           Set var_B8 = Me.TxtGrid
  loc_12DBAAE:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12DBAB6:           var_C4.SelStart = Len(var_B4.Text)
  loc_12DBAC9:         End If
  loc_12DBAC9:       End If
  loc_12DBAC9:     End If
  loc_12DBAC9:   End If
  loc_12DBAC9: End If
  loc_12DBAD3: If (CLng(Index) <> &HD) Then
  loc_12DBADB:   global_74 = &HFF
  loc_12DBADE: End If
  loc_12DBADE: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) '104C3B0
  'Data Table: 4F6110
  Dim var_94 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_11C As MSHFlexGrid
  loc_104C15C: Set var_94 = Me.TopCtrl1
  loc_104C162: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_104C17B: If (CStr() = "Browse") Then
  loc_104C17E:   Exit Sub
  loc_104C17F: End If
  loc_104C183: Set var_94 = Me.TopCtrl1
  loc_104C189: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_104C1A2: If (CStr() = "Edit") Then
  loc_104C1A5:   Exit Sub
  loc_104C1A6: End If
  loc_104C1C3: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_104C1C6:   Exit Sub
  loc_104C1C7: End If
  loc_104C1D8: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_104C1FA:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_104C234:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_104C256:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_104C26C:         var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104C274:         var_E8 = CVar(CLng(1)) 'Long
  loc_104C2C7:         Set var_11C = Me.FGrid
  loc_104C2DF:         Call Proc_109_59_E80790(FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)), CInt(Val(CStr(Me.FGrid.TextMatrix)))))
  loc_104C2E7:       Else
  loc_104C2FA:         Me.FGrid.Rows = 1
  loc_104C320:         var_A4 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(1)))) 'String
  loc_104C328:         Set var_11C = Me.FGrid
  loc_104C355:         Me.FGrid.FixedRows = 1
  loc_104C35D:       End If
  loc_104C35D:     End If
  loc_104C360:   Else
  loc_104C381:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F8, var_118)
  loc_104C391:   End If
  loc_104C395:   Set var_94 = Me.FGrid
  loc_104C3A6: End If
  loc_104C3AB: Set var_8C = Nothing
  loc_104C3AE: Exit Sub
  loc_104C3AF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E204E0
  'Data Table: 4F6110
  loc_E204D7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E204DF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E205D0
  'Data Table: 4F6110
  loc_E205C7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E205CF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E469F8
  'Data Table: 4F6110
  Dim var_8C As TextBox
  loc_E469CC: Call Proc_109_67_EBC124()
  loc_E469DC: Set var_88 = Me.TxtGrid
  loc_E469E2: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E469EA: var_8C.Visible = False
  loc_E469F6: Exit Sub
End Sub

Private Sub CmdPwd_Click() 'F0FF24
  'Data Table: 4F6110
  Dim var_88 As Variant
  Dim var_90 As Variant
  loc_F0FE38: Me.FrPwd.Visible = True
  loc_F0FE5F: Set var_90 = Me.FrPwd
  loc_F0FE65: var_90.Left = (Me.CmdPwd.Width + CDbl(1455))
  loc_F0FE7D: Me.CmdChange.Visible = True
  loc_F0FE91: Me.CmdCancel.Visible = True
  loc_F0FEA5: Me.CmdPwd.Enabled = False
  loc_F0FEBA: Set var_88 = Me.Txt
  loc_F0FEC0: Call 0.Method_CmdPwd_Click0 (CInt(2), var_90)
  loc_F0FEC8: var_90.Enabled = True
  loc_F0FEE2: Set var_88 = Me.Txt
  loc_F0FEE8: Call 0.Method_CmdPwd_Click0 (CInt(2), var_90)
  loc_F0FEF0: var_90.Text = vbNullString
  loc_F0FF07: Set var_88 = Me.Txt
  loc_F0FF0D: Call 0.Method_CmdPwd_Click0 (CInt(2))
  loc_F0FF15: var_90.SetFocus
  loc_F0FF21: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E8028C
  'Data Table: 4F6110
  Dim var_94 As TextBox
  loc_E80228: On Error Goto loc_E80284
  loc_E8024E: Call Proc_109_66_EB9484(Proc_5_1_100EC1C("ADD", Me))
  loc_E80259: Call Proc_109_64_F675B8(global_76)
  loc_E80269: Set var_8C = Me.Txt
  loc_E8026F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_E80277: var_94.SetFocus
  loc_E80283: Exit Sub
  loc_E80284: ' Referenced from: E80228
  loc_E80284: Proc_6_60_E63754(var_94)
  loc_E80289: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EEAA18
  'Data Table: 4F6110
  loc_EEA95C: On Error Goto loc_EEAA10
  loc_EEA996: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EEA9BC:   Call Proc_109_66_EB9484(Proc_5_1_100EC1C("INI", Me))
  loc_EEA9CF:   Set var_10C = Me.TopCtrl1
  loc_EEA9D5:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_EEA9E5:   Set var_10C = Me.TopCtrl1
  loc_EEA9EB:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030016(True)
  loc_EEA9FC:   Set var_10C = Me.TopCtrl1
  loc_EEAA02:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_EEAA0A:   Call Proc_109_65_14903C4(global_76)
  loc_EEAA0F: End If
  loc_EEAA0F: Exit Sub
  loc_EEAA10: ' Referenced from: EEA95C
  loc_EEAA10: Proc_6_60_E63754()
  loc_EEAA15: Exit Sub
  loc_EEAA16:  = 
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EB8F70
  'Data Table: 4F6110
  Dim var_94 As TextBox
  Dim var_8C As CommandButton
  loc_EB8ED4: On Error Goto loc_EB8F68
  loc_EB8EFA: Call Proc_109_66_EB9484(Proc_5_1_100EC1C("EDIT", Me))
  loc_EB8F12: Set var_8C = Me.Txt
  loc_EB8F18: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EB8F20: var_94.Enabled = False
  loc_EB8F39: Set var_8C = Me.Txt
  loc_EB8F3F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_EB8F47: var_94.Enabled = False
  loc_EB8F5F: Me.CmdPaste.Enabled = False
  loc_EB8F67: Exit Sub
  loc_EB8F68: ' Referenced from: EB8ED4
  loc_EB8F68: Proc_6_60_E63754(global_76)
  loc_EB8F6D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1885C
  'Data Table: 4F6110
  loc_E18851: Me.Global.Unload Me
  loc_E18859: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC9D78
  'Data Table: 4F6110
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EC9CD8: On Error Goto loc_EC9D70
  loc_EC9CF2: If (Me.RecordCount <= 0) Then
  loc_EC9CFB:   var_B8 = "Information"
  loc_EC9D16:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC9D26:   Exit Sub
  loc_EC9D27: End If
  loc_EC9D2E: var_10C = "Select Distinct (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))  AS SearchCode,VT.Description,SP.V_Type,Convert(Varchar(11),SP.AppDate,103) As [App.Date] From (((SundryType SP Inner Join Voucher_type VT On SP.V_Type=VT.V_Type) Inner Join SundryMast SM On SP.SundryCode=SM.Code) Inner Join RevMast RM On SP.RevCode=RM.Code) WHERE (SP.LOGSITE_CODE='" & MemVar_1F95078
  loc_EC9D35: MemVar_1F950E4 = var_10C & "' or SP.LOGSITE_CODE='HO') and SP.V_Type in (Select 'B'+ShortName From Depart Where OutletYN='Y' and RestType<>'Banquet') Order by VT.Description,SP.V_Type,[App.Date] Desc"
  loc_EC9D42: MemVar_1F95120 = Me
  loc_EC9D4F: Proc_6_126_F1C850("2000,1000,1500")
  loc_EC9D6A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC9D6F: Exit Sub
  loc_EC9D70: ' Referenced from: EC9CD8
  loc_EC9D70: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EC9D75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E388E8
  'Data Table: 4F6110
  Dim var_6701 As Double
  loc_E388D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E388E0: Call Proc_109_65_14903C4(global_76)
  loc_E388E5: Exit Sub
  loc_E388E6: var_6701 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E38828
  'Data Table: 4F6110
  Dim var_6701 As Double
  loc_E38818: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38820: Call Proc_109_65_14903C4(global_76)
  loc_E38825: Exit Sub
  loc_E38826: var_6701 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E38708
  'Data Table: 4F6110
  Dim var_6701 As Double
  loc_E386F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38700: Call Proc_109_65_14903C4(global_76)
  loc_E38705: Exit Sub
  loc_E38706: var_6701 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E38648
  'Data Table: 4F6110
  Dim var_6701 As Double
  loc_E38638: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38640: Call Proc_109_65_14903C4(global_76)
  loc_E38645: Exit Sub
  loc_E38646: var_6701 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E4680C
  'Data Table: 4F6110
  Dim Me As Recordset15
  loc_E467E3: Me.Requery -1
  loc_E467F3: Me.Requery -1
  loc_E46803: Me.Requery -1
  loc_E46808: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '163FF7C
  'Data Table: 4F6110
  Dim var_9C As Variant
  Dim var_8A As Variant
  Dim var_90 As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_130 As Variant
  Dim unk_4F6127 As Connection15
  Dim var_94 As Variant
  Dim var_170 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_1F4 As MSHFlexGrid
  Dim var_160 As Variant
  Dim var_1A8 As Variant
  Dim var_1F8 As MSHFlexGrid
  Dim var_25C As Variant
  Dim var_27C As Variant
  Dim var_310 As Variant
  Dim var_330 As Variant
  Dim var_3A4 As Variant
  Dim var_3C4 As Variant
  Dim var_3F8 As Variant
  Dim var_448 As Variant
  Dim var_468 As Variant
  Dim var_49C As Variant
  Dim var_4EC As Variant
  Dim var_50C As Variant
  Dim var_530 As Variant
  Dim var_584 As Variant
  Dim var_5A4 As Variant
  Dim var_5B8 As MSHFlexGrid
  Dim var_63C As Variant
  Dim var_65C As Variant
  Dim var_680 As Variant
  Dim var_6D0 As Variant
  Dim var_6F0 As Variant
  Dim var_704 As MSHFlexGrid
  Dim var_714 As Variant
  Dim var_798 As Variant
  Dim var_7A8 As Variant
  Dim var_82C As MSHFlexGrid
  Dim var_83C As Variant
  Dim var_8C0 As MSHFlexGrid
  Dim var_8D0 As Variant
  Dim var_990 As Variant
  Dim var_9E8 As String
  Dim var_A88 As Variant
  Dim var_AA8 As Variant
  Dim var_1DC As String
  Dim var_1E8 As String
  Dim var_110 As Variant
  Dim var_190 As Variant
  Dim var_1C8 As Variant
  Dim var_21C As Variant
  Dim var_22C As Variant
  Dim var_2C0 As Variant
  Dim var_418 As Variant
  Dim var_4CC As Variant
  Dim var_5EC As Variant
  Dim var_724 As Variant
  Dim var_85C As Variant
  Dim var_930 As Variant
  Dim var_980 As Variant
  Dim var_B5C As Variant
  Dim var_98 As MSHFlexGrid
  Dim var_26C As Variant
  Dim var_28C As Variant
  Dim var_1F0 As Variant
  Dim var_3B4 As Variant
  Dim var_3D4 As Variant
  Dim var_408 As Variant
  Dim var_808 As Variant
  Dim var_8BC As Variant
  Dim var_9D4 As MSHFlexGrid
  Dim var_1E4 As String
  Dim var_9A0 As Variant
  Dim var_9E4 As Variant
  Dim var_BE0 As String
  Dim Me As Recordset15
  loc_163EB2C: On Error Goto loc_163FF2A
  loc_163EB33: var_86 = CByte(0) 'Byte
  loc_163EB3A: Call Proc_109_70_E7EAD0(var_8C)
  loc_163EB45: If (var_8C = 0) Then
  loc_163EB48:   Exit Sub
  loc_163EB49: End If
  loc_163EB54: Set var_90 = Me.Txt
  loc_163EB5A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_163EB83: If (Proc_6_27_EA61EC(var_94, "Voucher Type") = 0) Then
  loc_163EB8D:   Call Txt_GotFocus(CInt(0))
  loc_163EB92:   Exit Sub
  loc_163EB93: End If
  loc_163EB9E: Set var_90 = Me.Txt
  loc_163EBA4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_163EBCD: If (Proc_6_27_EA61EC(var_94, "App. Date") = 0) Then
  loc_163EBD7:   Call Txt_GotFocus(CInt(1))
  loc_163EBDC:   Exit Sub
  loc_163EBDD: End If
  loc_163EBE1: Set var_90 = Me.TopCtrl1
  loc_163EBE7: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_163EC00: If (CStr() = "Add") Then
  loc_163EC06:   Call Proc_109_60_FC8BA8(var_8C)
  loc_163EC11:   If (var_8C = &HFF) Then
  loc_163EC14:     Exit Sub
  loc_163EC15:   End If
  loc_163EC15: End If
  loc_163EC3F: For var_B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B0 'Integer
  loc_163EC49:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_163EC51:   var_E0 = CVar(CLng(1)) 'Long
  loc_163EC8D:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_163EC94:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_163EC9C:     var_E0 = CVar(CLng(1)) 'Long
  loc_163ECD9:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> CVar(1)) Then
  loc_163ECE0:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_163ECE8:       var_E0 = CVar(CLng(1)) 'Long
  loc_163ED2B:       var_130 = "Arrange S.No. and Cal. Formulas" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_163ED2F:       MsgBox(var_130, &H40, "Information", var_170, var_190)
  loc_163ED4C:       Set var_90 = Me.FGrid
  loc_163ED5D:       Exit Sub
  loc_163ED5E:     End If
  loc_163ED64:     var_8A = (var_8A + 1)
  loc_163ED67:   End If
  loc_163ED92:   If ((var_88 > 1) And (CLng(var_88) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_163ED99:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_163EDA1:     var_E0 = CVar(CLng(&HF)) 'Long
  loc_163EDBB:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_163EDC1:     var_110 = Trim(var_100)
  loc_163EDDD:     If (var_110 = vbNullString) Then
  loc_163EDF9:       MsgBox("Define revenue ", &H40, var_100, var_110, var_130)
  loc_163EE09:       Exit Sub
  loc_163EE0A:     End If
  loc_163EE0A:   End If
  loc_163EE0E:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_163EE16:   var_E0 = CVar(CLng(3)) 'Long
  loc_163EE52:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_163EE59:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_163EE61:     var_E0 = CVar(CLng(1)) 'Long
  loc_163EE9D:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_163EEA4:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_163EEAC:       var_E0 = CVar(CLng(3)) 'Long
  loc_163EEF3:       MsgBox("Fill S.NO For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_163EF10:       Set var_90 = Me.FGrid
  loc_163EF21:       Exit Sub
  loc_163EF22:     End If
  loc_163EF26:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_163EF2E:     var_E0 = CVar(CLng(4)) 'Long
  loc_163EF6A:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_163EF71:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_163EF79:       var_E0 = CVar(CLng(3)) 'Long
  loc_163EFC0:       MsgBox("Fill Disp. Name For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_163EFDD:       Set var_90 = Me.FGrid
  loc_163EFEE:       Exit Sub
  loc_163EFEF:     End If
  loc_163EFF3:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_163EFFB:     var_E0 = CVar(CLng(6)) 'Long
  loc_163F037:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_163F03E:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_163F046:       var_E0 = CVar(CLng(3)) 'Long
  loc_163F08D:       MsgBox("Fill Per/Amt For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_163F0AA:       Set var_90 = Me.FGrid
  loc_163F0BB:       Exit Sub
  loc_163F0BC:     End If
  loc_163F0BC:   End If
  loc_163F0BF: Next var_B0 'Integer
  loc_163F0CD: unk_4F6127.BeginTrans var_194
  loc_163F0D6: var_86 = CByte(1) 'Byte
  loc_163F0FF: For var_198 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_198 'Integer
  loc_163F109:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_163F111:   var_E0 = CVar(CLng(2)) 'Long
  loc_163F131:   var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_163F139:   var_120 = vbNullString
  loc_163F147:   var_140 = CVar(CLng(var_88)) 'Long
  loc_163F158:   Set var_94 = Me.FGrid
  loc_163F19D:   If CBool(CVar(CLng(1)) And (Trim(CVar(CStr(var_94.TextMatrix)))) <> vbNullString)) Then
  loc_163F1A4:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_163F1AC:     var_E0 = CVar(CLng(&HB)) 'Long
  loc_163F1C6:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_163F1CC:     var_110 = Trim(var_100)
  loc_163F1E8:     If (var_110 = vbNullString) Then
  loc_163F1EF:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_163F1F7:       var_E0 = CVar(CLng(&HB)) 'Long
  loc_163F1FC:       var_120 = "+"
  loc_163F206:       Set var_90 = Me.FGrid
  loc_163F20C:       LateIdCallSt
  loc_163F217:     End If
  loc_163F221:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(Me.TopCtrl1)
  loc_163F23A:     If (CStr(vbNullString) = "Add") Then
  loc_163F24B:       Set var_90 = Me.Txt
  loc_163F251:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_1E4, var_E0, var_C0, var_E0)
  loc_163F259:       var_C0 = var_94.Tag
  loc_163F269:       Set var_98 = Me.Txt
  loc_163F26F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1F0, var_140, (var_110 <> vbNullString))
  loc_163F277:       var_AC = CVar(var_1F0) 'Address
  loc_163F27E:       Proc_6_7_F26918(var_100, var_AC, var_E0)
  loc_163F287:       var_D0 = CVar(CLng(var_88)) 'Long
  loc_163F28F:       var_F0 = CVar(CLng(2)) 'Long
  loc_163F2AE:       var_160 = CVar(CLng(var_88)) 'Long
  loc_163F2B6:       var_1A8 = CVar(CLng(1)) 'Long
  loc_163F2DF:       var_25C = CVar(CLng(var_88)) 'Long
  loc_163F2E7:       var_27C = CVar(CLng(4)) 'Long
  loc_163F306:       var_310 = CVar(CLng(var_88)) 'Long
  loc_163F30E:       var_330 = CVar(CLng(5)) 'Long
  loc_163F32D:       var_3A4 = CVar(CLng(var_88)) 'Long
  loc_163F335:       var_3C4 = CVar(CLng(6)) 'Long
  loc_163F368:       var_448 = CVar(CLng(var_88)) 'Long
  loc_163F370:       var_468 = CVar(CLng(8)) 'Long
  loc_163F3A3:       var_4EC = CVar(CLng(var_88)) 'Long
  loc_163F3AB:       var_50C = CVar(CLng(7)) 'Long
  loc_163F3D4:       var_584 = CVar(CLng(var_88)) 'Long
  loc_163F3DC:       var_5A4 = CVar(CLng(9)) 'Long
  loc_163F405:       var_63C = CVar(CLng(var_88)) 'Long
  loc_163F40D:       var_65C = CVar(CLng(&HF)) 'Long
  loc_163F42C:       var_6D0 = CVar(CLng(var_88)) 'Long
  loc_163F434:       var_6F0 = CVar(CLng(&HA)) 'Long
  loc_163F443:       var_714 = Me.FGrid.TextMatrix)
  loc_163F464:       Set var_798 = Me.FGrid
  loc_163F46A:       var_7A8 = var_798.TextMatrix)
  loc_163F491:       var_83C = Me.FGrid.TextMatrix)
  loc_163F4B2:       Set var_8C0 = Me.FGrid
  loc_163F4B8:       var_8D0 = var_8C0.TextMatrix)
  loc_163F4DD:       var_990 = CVar(Proc_6_14_EF402C(var_8D0, CVar(CLng(&HC)), CVar(CLng(var_88)), var_83C, CVar(CLng(&HE)), CVar(CLng(var_88)), var_7A8)) 'String
  loc_163F4E3:       Proc_6_8_EB1974(var_9A0, var_990, CVar(CLng(&HB)), CVar(CLng(var_88)))
  loc_163F4EC:       Set var_9D4 = Me.TopCtrl1
  loc_163F4F2:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_714)
  loc_163F515:       var_9E8 = CStr(var_9E4)
  loc_163F524:       var_A48 = IIf((var_9E8 = "Add"), "A", "E")
  loc_163F52D:       var_A88 = CVar(CLng(var_88)) 'Long
  loc_163F535:       var_AA8 = CVar(CLng(&H10)) 'Long
  loc_163F578:       var_9C = "Insert Into SundryType (V_Type,AppDate,SundryCode,SNo,DispName," & "CalcFormula,PerOrAmt,RoundOff,SValue,Limit,"
  loc_163F58D:       var_1E8 = var_9C & "RevCode,Nature,CalcSign,SysYN,Grp," & "U_Name,U_EntDt,U_AE,AutoManual,SiteCode,LogSite_Code) " & " Values ('"
  loc_163F5C9:       var_22C = CVar(var_1E8 & var_1E4 & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_163F60A:       var_418 = var_22C & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) 
  loc_163F642:       var_5EC = var_418 & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_163F670:       var_724 = CVar(CStr(var_714)) 'String
  loc_163F69B:       var_85C = var_5EC & "," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & var_724 & "','" & CVar(CStr(var_7A8)) & "','" & CVar(CStr(var_83C)) 
  loc_163F6D0:       var_980 = var_85C & "','" & Left(CVar(CStr(var_8D0)), 1) & "'," & "'" & CVar(MemVar_1F950C8) & "'," 
  loc_163F713:       var_B5C = var_980 & var_9A0 & ",'" & var_A48 & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "','" & CVar(MemVar_1F95070) & "','" 
  loc_163F734:       unk_4F6127.Execute CStr(var_B5C & CVar(MemVar_1F95078) & "')"), var_BC0, -1
  loc_163F827:     Else
  loc_163F82B:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_163F833:       var_E0 = CVar(CLng(4)) 'Long
  loc_163F83C:       Set var_90 = Me.FGrid
  loc_163F852:       var_120 = CVar(CLng(var_88)) 'Long
  loc_163F85A:       var_160 = CVar(CLng(5)) 'Long
  loc_163F863:       Set var_94 = Me.FGrid
  loc_163F879:       var_1A8 = CVar(CLng(var_88)) 'Long
  loc_163F881:       var_21C = CVar(CLng(6)) 'Long
  loc_163F88A:       Set var_98 = Me.FGrid
  loc_163F8B4:       var_26C = CVar(CLng(var_88)) 'Long
  loc_163F8BC:       var_28C = CVar(CLng(8)) 'Long
  loc_163F8C5:       Set var_1F0 = Me.FGrid
  loc_163F8EF:       var_310 = CVar(CLng(var_88)) 'Long
  loc_163F8F7:       var_330 = CVar(CLng(7)) 'Long
  loc_163F920:       var_3B4 = CVar(CLng(var_88)) 'Long
  loc_163F928:       var_3D4 = CVar(CLng(9)) 'Long
  loc_163F931:       Set var_1F8 = Me.FGrid
  loc_163F951:       var_468 = CVar(CLng(var_88)) 'Long
  loc_163F959:       var_4CC = CVar(CLng(&HF)) 'Long
  loc_163F978:       var_50C = CVar(CLng(var_88)) 'Long
  loc_163F98F:       var_408 = Me.FGrid.TextMatrix)
  loc_163F9B6:       var_49C = Me.FGrid.TextMatrix)
  loc_163F9DD:       var_530 = Me.FGrid.TextMatrix)
  loc_163FA04:       var_5EC = Me.FGrid.TextMatrix)
  loc_163FA29:       var_714 = CVar(Proc_6_14_EF402C(var_5EC, CVar(CLng(&HC)), CVar(CLng(var_88)), var_530, CVar(CLng(&HE)), CVar(CLng(var_88)), var_49C)) 'String
  loc_163FA2F:       Proc_6_8_EB1974(var_724, var_714, CVar(CLng(&HB)), CVar(CLng(var_88)))
  loc_163FA38:       Set var_5B8 = Me.TopCtrl1
  loc_163FA3E:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_408)
  loc_163FA79:       var_808 = CVar(CLng(var_88)) 'Long
  loc_163FA90:       var_85C = Me.FGrid.TextMatrix)
  loc_163FABE:       Set var_704 = Me.Txt
  loc_163FAC4:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_798, var_9E8, var_85C, CVar(CLng(&H10)))
  loc_163FACC:       var_808 = var_798.Tag
  loc_163FADC:       Set var_82C = Me.Txt
  loc_163FAE2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_8C0, CVar(CLng(&HA)))
  loc_163FAF1:       Proc_6_7_F26918(var_980, CVar(var_8C0))
  loc_163FAFA:       var_8BC = CVar(CLng(var_88)) 'Long
  loc_163FB02:       var_930 = CVar(CLng(1)) 'Long
  loc_163FB3B:       var_9C = "Update SundryType " & " Set DispName='"
  loc_163FB42:       var_1DC = CStr(var_90.TextMatrix))
  loc_163FB65:       var_190 = CVar(var_9C & var_1DC & "',CalcFormula='" & CStr(var_94.TextMatrix)) & "',PerOrAmt='") & Left(CVar(CStr(var_98.TextMatrix))), 1) 
  loc_163FB89:       var_2C0 = var_190 & "',RoundOff='" & Left(CVar(CStr(var_1F0.TextMatrix))), 1) & "',SValue=" & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_163FBBA:       var_3F8 = var_2C0 & ",Limit=" & CVar(Val(CStr(var_1F8.TextMatrix)))) & ",RevCode='" & CVar(CStr(Me.FGrid.TextMatrix))) & "',Nature='" 
  loc_163FBFD:       var_680 = var_3F8 & CVar(CStr(var_408)) & "',CalcSign='" & CVar(CStr(var_49C)) & "',SysYN='" & CVar(CStr(var_530)) & "',Grp='" & Left(CVar(CStr(var_5EC)), 1) 
  loc_163FC30:       var_83C = var_680 & "',U_Name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_724 & ",U_AE='" & IIf((CStr(var_7A8) = "Add"), "A", "E") 
  loc_163FC63:       var_990 = var_83C & "',AutoManual='" & Left(CVar(CStr(var_85C)), 1) & "' Where V_Type='" & CVar(var_9E8) & "' And AppDate=" & var_980 
  loc_163FC97:       var_BE0 = CStr(var_990 & " And SNo=" & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & " And LogSite_Code='" & CVar(MemVar_1F95078) & "'")
  loc_163FCA1:       unk_4F6127.Execute var_BE0, var_A48, -1
  loc_163FD77:     End If
  loc_163FD77:   End If
  loc_163FD7A: Next var_198 'Integer
  loc_163FD85: unk_4F6127.CommitTrans
  loc_163FD8E: var_86 = CByte(0) 'Byte
  loc_163FD9D: Set var_1F4 = Me.Txt
  loc_163FDA3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_163FDB6: Set var_90 = Me.Txt
  loc_163FDBC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94)
  loc_163FDCC: var_100 = CVar(var_94.Tag) 'String
  loc_163FDE2: Set var_98 = Me.Txt
  loc_163FDE8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1F0, var_1DC)
  loc_163FDF0: 6 = var_1F0.Tag
  loc_163FDFD: var_AC = Space((var_100 - Len(var_1DC)))
  loc_163FE05: var_110 = (var_1F8 + var_90.TextMatrix))
  loc_163FE09: var_C0 = "**"
  loc_163FE0E: var_130 = (var_98.TextMatrix) + var_C0)
  loc_163FE39: var_1C8 = (1 + Format(CVar(var_1F8), "dd/mm/yyyy"))
  loc_163FE7A: Me.Requery -1
  loc_163FEA7: Me.Find "SearchCode ='" & CStr(Format(CVar(var_1F8), "dd/mm/yyyy") & "',RoundOff='") & "'", 0, 1
  loc_163FEB7: Set var_90 = Me.TopCtrl1
  loc_163FEBD: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_163FED6: If (CStr(1) = "Add") Then
  loc_163FED9:   Call TopCtrl1_UnknownEvent_A()
  loc_163FEDE:   Exit Sub
  loc_163FEDF: End If
  loc_163FEF4: var_9C = "INI"
  loc_163FF02: Call Proc_109_66_EB9484(Proc_5_1_100EC1C(var_9C, Me), global_76)
  loc_163FF16: Set var_90 = Me.TopCtrl1
  loc_163FF1C: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_163FF24: Call Proc_109_65_14903C4(CVar(CStr(var_98.TextMatrix))))
  loc_163FF29: Exit Sub
  loc_163FF2A: ' Referenced from: 163EB2C
  loc_163FF33: If (CInt(var_86) = 1) Then
  loc_163FF3C:   unk_4F6127.RollbackTrans
  loc_163FF41: End If
  loc_163FF49: Set var_90 = Err()
  loc_163FF4F: Call 0.Method_arg_2C (var_9C)
  loc_163FF68: MsgBox(CVar(var_9C), &H10, var_100, var_98.TextMatrix), CVar(CStr(var_98.TextMatrix))))
  loc_163FF7B: Exit Sub
End Sub

Private Sub Form_Load() '11C1570
  'Data Table: 4F6110
  Dim var_88 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  Dim var_C0 As String
  loc_11C110C: On Error Goto loc_11C156A
  loc_11C111E: Me.LblUser.Left = CDbl(13500)
  loc_11C1135: Me.LblUser.Top = CDbl(7800)
  loc_11C114C: Me.LblLDt.Top = CDbl(8160)
  loc_11C1163: Me.LblLDt.Left = CDbl(13500)
  loc_11C1172: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_11C1185: Me.FrPwd.BackColor = CLng(MemVar_1F951B4)
  loc_11C1197: Set var_88 = Me.TopCtrl1
  loc_11C119D: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_11C11AB: Call 0.Method_arg_50 (var_AC)
  loc_11C11BB: Set var_88 = Me.TopCtrl1
  loc_11C11C1: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_11C11D8: Me.CmdPwd.Enabled = False
  loc_11C11EB: If (global_60 = "Banquet") Then
  loc_11C11F8:   Set global_80 = New 
  loc_11C120A:   Me.Recordset15.CursorLocation = 3
  loc_11C122D:   var_AC = "Select 'B'+ShortName as Code,Name,Code as DCOde,RestType From Depart Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_11C123E:   Me.Open CVar(var_AC & "' or LOGSITE_CODE='HO') and RestType='Banquet' and OutletYn='Y' Order by Name"), CVar(MemVar_1F95044), 3
  loc_11C1252:   CVarUnk
  loc_11C1257:   VerifyVarObj
  loc_11C125D:   Set var_88 = Me.DGVType
  loc_11C1263:   LateIdStAd
  loc_11C1274: Else
  loc_11C127E:   Set global_80 = New 
  loc_11C1290:   Me.CursorLocation = 3
  loc_11C12B3:   var_AC = "Select VT.V_Type as Code,VT.V_Type,D.Name,D.Code as DCOde,D.RestType From Depart D Inner Join Voucher_Type VT On D.Code=VT.RestCode And D.Site_Code=VT.Site_Code And D.LogSite_Code=VT.LogSite_Code And VT.Category='RSBILL' Where (D.LOGSITE_CODE='" & MemVar_1F95078
  loc_11C12BA:   var_BC = CVar(var_AC & "' or D.LOGSITE_CODE='HO') and D.RestType<>'Banquet' and D.OutletYn='Y' And VT.NCAT<>'ESBIL' Order by D.Name,VT.V_Type") 'String
  loc_11C12C4:   Me.Open var_BC, CVar(MemVar_1F95044), 3
  loc_11C12D8:   CVarUnk
  loc_11C12DD:   VerifyVarObj
  loc_11C12E3:   Set var_88 = Me.DGVType
  loc_11C12E9:   LateIdStAd
  loc_11C12F7: End If
  loc_11C1301: Set global_84 = New 
  loc_11C1313: Me.DGVType.CursorLocation = 3
  loc_11C133D: var_BC = CVar("Select Code,Name,Nature,SysYN From SundryMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_11C1347: Me.Open var_BC, CVar(MemVar_1F95044), 3
  loc_11C135B: CVarUnk
  loc_11C1360: VerifyVarObj
  loc_11C1366: Set var_88 = Me.DGSundry
  loc_11C136C: LateIdStAd
  loc_11C1384: Set global_88 = New 
  loc_11C1396: Me.DGSundry.CursorLocation = 3
  loc_11C13C0: var_BC = CVar("Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (FlagType ='POS' or FlagType  Is Null) and FlagAMR is NULL Order By Name") 'String
  loc_11C13CA: Me.Open var_BC, CVar(MemVar_1F95044), 3
  loc_11C13DE: CVarUnk
  loc_11C13E3: VerifyVarObj
  loc_11C13E9: Set var_88 = Me.DGRevenue
  loc_11C13EF: LateIdStAd
  loc_11C1407: Set global_76 = New 
  loc_11C1419: Me.DGRevenue.CursorLocation = 3
  loc_11C1429: If (global_60 = "Banquet") Then
  loc_11C144A:   var_AC = "Select DISTINCT (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From SundryType SP Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_11C1451:   var_BC = CVar("Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  and V_Type in (Select 'B'+ShortName From Depart Where OutletYN='Y' and RestType='Banquet') Order By (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))") 'String
  loc_11C145B:   Me.Open var_BC, CVar(MemVar_1F95044), 3
  loc_11C1469: Else
  loc_11C1487:   var_AC = "Select DISTINCT (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,SITECODE AS sITE_cODE,LOGSITE_CODE From SundryType SP Where SP.Logsite_Code='" & MemVar_1F95078
  loc_11C148E:   var_C0 = "Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' and V_Type In (Select VT.V_Type From Depart D Inner Join Voucher_Type VT On D.Code=VT.RestCode And D.Site_Code=VT.Site_Code And D.LogSite_Code=VT.LogSite_Code And VT.Category='RSBILL' Where (D.LOGSITE_CODE='"
  loc_11C149C:   var_BC = CVar(var_C0 & MemVar_1F95078 & "' or D.LOGSITE_CODE='HO') and D.RestType<>'Banquet' and D.OutletYn='Y' And VT.NCAT<>'ESBIL') Order By (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))") 'String
  loc_11C14A6:   Me.Open var_BC, CVar(MemVar_1F95044), 3
  loc_11C14B7: End If
  loc_11C14DA: Call Proc_109_66_EB9484(Proc_5_1_100EC1C("INI", Me, global_76, 1, -1, 1, -1, Me), global_88, 1, -1)
  loc_11C14EE: Set var_88 = Me.TopCtrl1
  loc_11C14F4: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_11C1505: Set var_88 = Me.TopCtrl1
  loc_11C150B: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_11C1522: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_11C152A: Call Proc_109_58_12F7630(Me.TopCtrl1, global_84)
  loc_11C152F: Call Proc_109_65_14903C4(1)
  loc_11C1546: Me.FGrid.Left = CVar(CDbl(&H64))
  loc_11C1561: Me.FGrid.Top = CVar(CDbl(1450))
  loc_11C1569: Exit Sub
  loc_11C156A: ' Referenced from: 11C110C
  loc_11C156A: Proc_6_60_E63754(-1)
  loc_11C156F: Exit Sub
End Sub

Private Sub Form_Resize() 'E0B5E8
  'Data Table: 4F6110
  loc_E0B5DF: If (global_60 = "Banquet") Then
  loc_E0B5E2:   GoTo loc_E0B5E5
  loc_E0B5E5:   ' Referenced from: E0B5E2
  loc_E0B5E5: End If
  loc_E0B5E5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E68EC4
  'Data Table: 4F6110
  loc_E68E7B: Set global_80 = Nothing
  loc_E68E8D: Set global_76 = Nothing
  loc_E68E9F: Set global_84 = Nothing
  loc_E68EB1: Set global_88 = Nothing
  loc_E68EC0: Exit Sub
  loc_E68EC1: Set var_88 = 0
End Sub

Private Sub Form_Activate() 'E4DA18
  'Data Table: 4F6110
  loc_E4D9E8: On Error Goto loc_E4DA12
  loc_E4D9EF: Set var_88 = Me.TopCtrl1
  loc_E4D9F5: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4DA0A: If (CLng(CInt()) = &H2D) Then
  loc_E4DA0D:   Call TopCtrl1_UnknownEvent_15()
  loc_E4DA12:   ' Referenced from: E4D9E8
  loc_E4DA12: End If
  loc_E4DA12: Proc_6_60_E63754()
  loc_E4DA17: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E267B4
  'Data Table: 4F6110
  loc_E26799: If (MasterFormExit = &HFF) Then
  loc_E267A9:   Me.Global.Unload Me
  loc_E267B1: End If
  loc_E267B1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E282B4
  'Data Table: 4F6110
  loc_E2828C: On Error Goto loc_E282AC
  loc_E282A3: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E282AB: Exit Sub
  loc_E282AC: ' Referenced from: E2828C
  loc_E282AC: Proc_6_60_E63754(Shift)
  loc_E282B1: Exit Sub
End Sub

Public Function MasterFormExitGet() '4F748C
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4F749B
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '4F74AA
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '4F74B9
  SearchCode = Value
End Sub

Public Function global_60Get() '4F74C8
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '4F74D7
  global_60 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E979E0
  'Data Table: 4F6110
  Dim Me As Recordset15
  loc_E9796E: On Error Goto loc_E979D7
  loc_E97977: Me.MoveFirst
  loc_E979A1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E979C9: Proc_5_0_1107AD0(&HFF, Me, global_76)
  loc_E979D1: Call Proc_109_65_14903C4(0)
  loc_E979D6: Exit Sub
  loc_E979D7: ' Referenced from: E9796E
  loc_E979D7: Proc_6_60_E63754(var_A0)
  loc_E979DC: Exit Sub
End Sub

Public Sub Proc_109_58_12F7630
  'Data Table: 4F6110
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_E4 As MSHFlexGrid
  Dim var_F4 As Variant
  Dim var_118 As String
  loc_12F6F38: On Error Goto loc_12F7628
  loc_12F6F49: Set var_88 = Me.Txt
  loc_12F6F4F: Call 0.Method_Proc_109_58_12F76300 (CInt(0), var_8C)
  loc_12F6F6E: Me.DGVType.Left = CVar(var_8C.Left)
  loc_12F6F8A: Set var_B4 = Me.Txt
  loc_12F6F90: Call 0.Method_Proc_109_58_12F76300 (CInt(0), var_B8)
  loc_12F6FAB: Set var_88 = Me.Txt
  loc_12F6FB1: Call 0.Method_Proc_109_58_12F76300 (CInt(0), var_8C)
  loc_12F6FC9: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_12F6FD8: Me.DGVType.Top = CVar(var_8C.Left)
  loc_12F6FFD: Me.FGrid.Width = CVar(CDbl(13300))
  loc_12F7041: Me.Frame1.Left = ((CDbl(Me.FGrid.Left) + CDbl(Me.FGrid.Width)) + CDbl(150))
  loc_12F705A: Set var_E4 = Me.FGrid
  loc_12F7069: var_E4.Cols = &H11
  loc_12F707A: var_E4.Rows = 1
  loc_12F707F: var_A0 = 0
  loc_12F7088: var_F4 = &H15E
  loc_12F7094: LateIdCallSt
  loc_12F70B0: global_64 = CStr(CLng(var_E4.BackColor))
  loc_12F70BA: var_A0 = 0
  loc_12F70C3: var_F4 = &H64
  loc_12F70CF: LateIdCallSt
  loc_12F70DA: var_A0 = CVar(CLng(1)) 'Long
  loc_12F70DF: var_F4 = &H159
  loc_12F70EB: LateIdCallSt
  loc_12F70F3: var_A0 = 0
  loc_12F70FF: var_F4 = CVar(CLng(1)) 'Long
  loc_12F7104: var_118 = "Sn."
  loc_12F710D: LateIdCallSt
  loc_12F7118: var_A0 = CVar(CLng(1)) 'Long
  loc_12F7123: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F712A: LateIdCallSt
  loc_12F7135: var_A0 = CVar(CLng(2)) 'Long
  loc_12F713A: var_F4 = 0
  loc_12F7146: LateIdCallSt
  loc_12F7151: var_A0 = CVar(CLng(3)) 'Long
  loc_12F7156: var_F4 = &H708
  loc_12F7162: LateIdCallSt
  loc_12F716A: var_A0 = 0
  loc_12F7176: var_F4 = CVar(CLng(3)) 'Long
  loc_12F717B: var_118 = "Sundry Name"
  loc_12F7184: LateIdCallSt
  loc_12F718F: var_A0 = CVar(CLng(3)) 'Long
  loc_12F719A: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F71A1: LateIdCallSt
  loc_12F71AC: var_A0 = CVar(CLng(4)) 'Long
  loc_12F71B1: var_F4 = &H898
  loc_12F71BD: LateIdCallSt
  loc_12F71C5: var_A0 = 0
  loc_12F71D1: var_F4 = CVar(CLng(4)) 'Long
  loc_12F71D6: var_118 = "Display Name"
  loc_12F71DF: LateIdCallSt
  loc_12F71EA: var_A0 = CVar(CLng(4)) 'Long
  loc_12F71F5: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F71FC: LateIdCallSt
  loc_12F7207: var_A0 = CVar(CLng(5)) 'Long
  loc_12F720C: var_F4 = &HD16
  loc_12F7218: LateIdCallSt
  loc_12F7220: var_A0 = 0
  loc_12F722C: var_F4 = CVar(CLng(5)) 'Long
  loc_12F7231: var_118 = "Cal. Formula"
  loc_12F723A: LateIdCallSt
  loc_12F7245: var_A0 = CVar(CLng(5)) 'Long
  loc_12F7250: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F7257: LateIdCallSt
  loc_12F7262: var_A0 = CVar(CLng(5)) 'Long
  loc_12F726D: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F7274: LateIdCallSt
  loc_12F727F: var_A0 = CVar(CLng(6)) 'Long
  loc_12F7284: var_F4 = &H1F4
  loc_12F7290: LateIdCallSt
  loc_12F7298: var_A0 = 0
  loc_12F72A4: var_F4 = CVar(CLng(6)) 'Long
  loc_12F72A9: var_118 = "P/A"
  loc_12F72B2: LateIdCallSt
  loc_12F72BD: var_A0 = CVar(CLng(6)) 'Long
  loc_12F72C8: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F72CF: LateIdCallSt
  loc_12F72DA: var_A0 = CVar(CLng(7)) 'Long
  loc_12F72DF: var_F4 = &H320
  loc_12F72EB: LateIdCallSt
  loc_12F72F3: var_A0 = 0
  loc_12F72FF: var_F4 = CVar(CLng(7)) 'Long
  loc_12F7304: var_118 = "Value"
  loc_12F730D: LateIdCallSt
  loc_12F7318: var_A0 = CVar(CLng(7)) 'Long
  loc_12F7323: var_F4 = CVar(CInt(7)) 'Integer
  loc_12F732A: LateIdCallSt
  loc_12F7335: var_A0 = CVar(CLng(7)) 'Long
  loc_12F7340: var_F4 = CVar(CInt(7)) 'Integer
  loc_12F7347: LateIdCallSt
  loc_12F7352: var_A0 = CVar(CLng(8)) 'Long
  loc_12F7357: var_F4 = 0
  loc_12F7363: LateIdCallSt
  loc_12F736B: var_A0 = 0
  loc_12F7377: var_F4 = CVar(CLng(8)) 'Long
  loc_12F737C: var_118 = "ROff"
  loc_12F7385: LateIdCallSt
  loc_12F7390: var_A0 = CVar(CLng(8)) 'Long
  loc_12F739B: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F73A2: LateIdCallSt
  loc_12F73AD: var_A0 = CVar(CLng(&H10)) 'Long
  loc_12F73B2: var_F4 = &H2BC
  loc_12F73BE: LateIdCallSt
  loc_12F73C6: var_A0 = 0
  loc_12F73D2: var_F4 = CVar(CLng(&H10)) 'Long
  loc_12F73D7: var_118 = "A/M"
  loc_12F73E0: LateIdCallSt
  loc_12F73EB: var_A0 = CVar(CLng(&H10)) 'Long
  loc_12F73F6: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F73FD: LateIdCallSt
  loc_12F7408: var_A0 = CVar(CLng(9)) 'Long
  loc_12F740D: var_F4 = 0
  loc_12F7419: LateIdCallSt
  loc_12F7421: var_A0 = 0
  loc_12F742D: var_F4 = CVar(CLng(9)) 'Long
  loc_12F7432: var_118 = "Limit"
  loc_12F743B: LateIdCallSt
  loc_12F7446: var_A0 = CVar(CLng(9)) 'Long
  loc_12F7451: var_F4 = CVar(CInt(7)) 'Integer
  loc_12F7458: LateIdCallSt
  loc_12F7463: var_A0 = CVar(CLng(9)) 'Long
  loc_12F746E: var_F4 = CVar(CInt(7)) 'Integer
  loc_12F7475: LateIdCallSt
  loc_12F7480: var_A0 = CVar(CLng(&HA)) 'Long
  loc_12F7485: var_F4 = 0
  loc_12F7491: LateIdCallSt
  loc_12F7499: var_A0 = 0
  loc_12F74A5: var_F4 = CVar(CLng(&HA)) 'Long
  loc_12F74AA: var_118 = "Nature"
  loc_12F74B3: LateIdCallSt
  loc_12F74BE: var_A0 = CVar(CLng(&HA)) 'Long
  loc_12F74C9: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F74D0: LateIdCallSt
  loc_12F74DB: var_A0 = CVar(CLng(&HB)) 'Long
  loc_12F74E0: var_F4 = 0
  loc_12F74EC: LateIdCallSt
  loc_12F74F4: var_A0 = 0
  loc_12F7500: var_F4 = CVar(CLng(&HB)) 'Long
  loc_12F7505: var_118 = "+/-"
  loc_12F750E: LateIdCallSt
  loc_12F7519: var_A0 = CVar(CLng(&HB)) 'Long
  loc_12F7524: var_F4 = CVar(CInt(4)) 'Integer
  loc_12F752B: LateIdCallSt
  loc_12F7536: var_A0 = CVar(CLng(&HE)) 'Long
  loc_12F753B: var_F4 = 0
  loc_12F7547: LateIdCallSt
  loc_12F7552: var_A0 = CVar(CLng(&HC)) 'Long
  loc_12F7557: var_F4 = &H1F4
  loc_12F7563: LateIdCallSt
  loc_12F756B: var_A0 = 0
  loc_12F7577: var_F4 = CVar(CLng(&HC)) 'Long
  loc_12F757C: var_118 = "Bold"
  loc_12F7585: LateIdCallSt
  loc_12F7590: var_A0 = CVar(CLng(&HC)) 'Long
  loc_12F759B: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F75A2: LateIdCallSt
  loc_12F75AD: var_A0 = CVar(CLng(&HD)) 'Long
  loc_12F75B2: var_F4 = &HA28
  loc_12F75BE: LateIdCallSt
  loc_12F75C6: var_A0 = 0
  loc_12F75D2: var_F4 = CVar(CLng(&HD)) 'Long
  loc_12F75D7: var_118 = "Revenue Charge"
  loc_12F75E0: LateIdCallSt
  loc_12F75EB: var_A0 = CVar(CLng(&HD)) 'Long
  loc_12F75F6: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F75FD: LateIdCallSt
  loc_12F7608: var_A0 = CVar(CLng(&HF)) 'Long
  loc_12F760D: var_F4 = 0
  loc_12F7619: LateIdCallSt
  loc_12F7623: Set var_E4 = Nothing 
  loc_12F7627: Exit Sub
  loc_12F7628: ' Referenced from: 12F6F38
  loc_12F7628: Proc_6_60_E63754(var_E4, var_F4, var_A0, var_E4, var_F4, var_A0, var_E4, var_118)
  loc_12F762D: Exit Sub
End Sub

Public Sub Proc_109_59_E80790
  'Data Table: 4F6110
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_6701 As Integer
  loc_E8074D: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_E80757:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_E8075F:   var_D0 = CVar(CLng(1)) 'Long
  loc_E80769:   var_9C = CVar(CStr(var_86)) 'String
  loc_E80771:   Set var_8C = Me.FGrid
  loc_E80777:   LateIdCallSt
  loc_E80788: Next var_A0 'Integer
  loc_E8078D: Exit Sub
  loc_E8078E: var_6701 = 
End Sub

Public Sub Proc_109_60_FC8BA8
  'Data Table: 4F6110
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim unk_4F6127 As Connection15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  loc_FC8A43: If (Me.RecordCount = 0) Then
  loc_FC8A46:   Proc_109_60_FC8BA8 = 
  loc_FC8A4C: End If
  loc_FC8A87: Set var_94 = Me.Txt
  loc_FC8A8D: Call 0.Method_Proc_109_60_FC8BA80 (CInt(0), var_98, var_9C, "Select Count(*) From SundryType Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (V_Type='", var_130, -1)
  loc_FC8AA5: var_DC = CVar(var_138 & var_9C & "' And AppDate=") 'String
  loc_FC8AB3: Set var_A8 = Me.Txt
  loc_FC8AB9: Call 0.Method_Proc_109_60_FC8BA80 (CInt(1), var_AC, var_DC)
  loc_FC8AC8: Proc_6_7_F26918(var_CC, CVar(var_AC), 0)
  loc_FC8AD0: var_EC = var_14C & var_CC 
  loc_FC8AE7: unk_4F6127.Execute CStr(var_EC & ")"), var_15C, 
  loc_FC8AEF:  = var_98.Tag.Fields
  loc_FC8AF7:  = var_138.Item()
  loc_FC8AFF:  = var_14C.Value
  loc_FC8B3C: If (var_15C > 0) Then
  loc_FC8B60:   MsgBox("Duplicate Entry", &H40, "Information", var_DC, var_EC)
  loc_FC8B7B:   Set var_94 = Me.Txt
  loc_FC8B81:   Call 0.Method_Proc_109_60_FC8BA80 (CInt(0))
  loc_FC8B89:   var_98.SetFocus
  loc_FC8B9A:   Proc_109_60_FC8BA8 = &HFF
  loc_FC8BA0: End If
  loc_FC8BA0: Proc_109_60_FC8BA8 = var_98
End Sub

Public Sub Proc_109_61_11588A4(arg_C, arg_10) '11588A4
  'Data Table: 4F6110
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F8 As Variant
  Dim var_C4 As String
  Dim var_E4 As Variant
  Dim var_138 As Variant
  Dim var_86 As Integer
  Dim var_A2 As Integer
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_178 As Boolean
  Dim var_9A As Integer
  Dim var_148 As Variant
  Dim var_118 As Variant
  loc_1158508: var_B4 = CVar(CLng(arg_C)) 'Long
  loc_1158511: var_D4 = CVar(CLng(arg_10)) 'Long
  loc_115852B: var_98 = CStr(Me.FGrid.TextMatrix))
  loc_115854C: var_C4 = "+"
  loc_1158566: var_118 = Left(var_98, 1)
  loc_115856E: var_E4 = "-"
  loc_1158585: If CBool((Left(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_11585A6:   MsgBox("Invalid Operator at Starting position of furmula", 0, var_108, var_118, var_128)
  loc_11585B6:   Proc_109_61_11588A4 = &HFF
  loc_11585BC: End If
  loc_11585D4: var_C4 = "+"
  loc_11585EE: var_118 = Right(var_98, 1)
  loc_11585F6: var_E4 = "-"
  loc_115860D: If CBool((Right(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_115862E:   MsgBox("Invalid Operator at Ending position of furmula", 0, var_108, var_118, var_128)
  loc_115863E:   Proc_109_61_11588A4 = &HFF
  loc_1158644: End If
  loc_1158646: var_86 = 0
  loc_1158649: ' Referenced from: 1158898
  loc_1158653: If (Len(var_98) > 0) Then
  loc_1158658:   var_A2 = 0
  loc_115866D:   var_108 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_1158683:   var_F8 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_115869F:   var_B4 = (InStr(1, var_98, "-", 0) = 0)
  loc_11586BD:   var_138 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_11586D3:   var_128 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_11586EF:   var_E4 = (InStr(1, var_98, "+", 0) = 0)
  loc_11586F6:   var_168 = IIf(var_E4, var_128, (Right(var_98, 1) = var_C4) Or (IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108) = var_E4))
  loc_1158726:   var_178 = (InStr(1, var_98, "+", 0) >= InStr(1, var_98, "-", 0))
  loc_115872D:   var_188 = IIf(var_178, IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108), var_168)
  loc_1158736:   var_9A = CInt(var_188)
  loc_1158756:   If (var_9A = 0) Then
  loc_115875C:     var_A0 = var_98
  loc_1158762:   Else
  loc_1158774:     var_F8 = Left(var_98, CLng((var_9A - 1)))
  loc_115877D:     var_A0 = CStr("Invalid Operator at Ending position of furmula")
  loc_1158783:   End If
  loc_115878E:   For var_18C = 1 To (arg_C - 1): var_88 = var_18C 'Integer
  loc_1158797:     var_148 = CVar(var_A0) 'String
  loc_115879F:     var_B4 = CVar(CLng(var_88)) 'Long
  loc_11587DD:     If (CVar(CLng(1)) = Trim(CVar(CStr(Me.FGrid.TextMatrix))))) Then
  loc_11587E2:       var_A2 = &HFF
  loc_11587E5:       Exit For
  loc_11587E8:     End If
  loc_11587EB:   Next var_18C 'Integer
  loc_11587F0:   ' Referenced from: 11587E5
  loc_11587F6:   If (var_A2 = 0) Then
  loc_1158804:     var_F8 = Trim(var_A0)
  loc_1158827:     var_108 = ("Invalid Row Reference " + var_F8)
  loc_1158830:     var_118 = (CVar(CStr(Me.FGrid.TextMatrix))) + vbCrLf)
  loc_1158839:     var_128 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + "Please Enter Correct No.")
  loc_115883D:     MsgBox(var_128, &H40, "Validation", var_168, var_188)
  loc_1158858:     Proc_109_61_11588A4 = &HFF
  loc_115885E:   End If
  loc_1158864:   If (var_9A = 0) Then
  loc_115886A:     var_98 = vbNullString
  loc_1158870:   Else
  loc_1158885:     var_108 = Mid(var_98, CLng((var_9A + 1)), var_F8)
  loc_115888E:     var_98 = CStr(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1158898:   End If
  loc_1158898:   GoTo loc_1158649
  loc_115889B: End If
  loc_115889B: Proc_109_61_11588A4 = 
End Sub

Public Sub Proc_109_62_E4647C
  'Data Table: 4F6110
  loc_E46458: Set var_88 = Me.TopCtrl1
  loc_E4645E: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E46477: If (CStr() = "Browse") Then
  loc_E4647A:   Exit Sub
  loc_E4647B: End If
  loc_E4647B: Exit Sub
End Sub

Public Sub Proc_109_63_152AEB4(arg_C) '152AEB4
  'Data Table: 4F6110
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_86 As Integer
  Dim var_114 As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  Dim var_B0 As String
  Dim var_138 As MSHFlexGrid
  Dim var_170 As Variant
  loc_1529F37: var_A0 = CLng(Me.FGrid.Col)
  loc_1529F47: If (var_A0 = CLng(3)) Then
  loc_1529F6A:   var_A6 = Me.EOF
  loc_1529F98:   Set var_8C = Me.TxtGrid
  loc_1529F9E:   Call 0.Method_Proc_109_63_152AEB40 (arg_C, var_AC, var_B0)
  loc_1529FA6:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_1529FBE:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_1529FD4:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1529FDC:     var_E0 = CVar(CLng(3)) 'Long
  loc_1529FE1:     var_100 = vbNullString
  loc_1529FEB:     Set var_AC = Me.FGrid
  loc_1529FF1:     LateIdCallSt
  loc_152A016:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152A01E:     var_E0 = CVar(CLng(2)) 'Long
  loc_152A023:     var_100 = vbNullString
  loc_152A02D:     Set var_AC = Me.FGrid
  loc_152A033:     LateIdCallSt
  loc_152A058:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152A060:     var_E0 = CVar(CLng(&HA)) 'Long
  loc_152A065:     var_100 = vbNullString
  loc_152A06F:     Set var_AC = Me.FGrid
  loc_152A075:     LateIdCallSt
  loc_152A09A:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152A0A2:     var_E0 = CVar(CLng(&HE)) 'Long
  loc_152A0A7:     var_100 = vbNullString
  loc_152A0B1:     Set var_AC = Me.FGrid
  loc_152A0B7:     LateIdCallSt
  loc_152A0CC:   Else
  loc_152A0CF:     Call Proc_109_68_FBD9B0(var_A6, var_AC, var_100, var_E0, var_C0, var_AC, var_100, var_E0)
  loc_152A0DA:     If (var_A6 = 0) Then
  loc_152A0E2:       Proc_109_63_152AEB4 = 0
  loc_152A0E8:     End If
  loc_152A0FB:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152A103:     var_F0 = CVar(CLng(3)) 'Long
  loc_152A136:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_152A13E:     Set var_138 = Me.FGrid
  loc_152A144:     LateIdCallSt
  loc_152A173:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152A17B:     var_F0 = CVar(CLng(2)) 'Long
  loc_152A1AE:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_152A1B6:     Set var_138 = Me.FGrid
  loc_152A1BC:     LateIdCallSt
  loc_152A1EB:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152A1F3:     var_F0 = CVar(CLng(4)) 'Long
  loc_152A226:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_152A234:     LateIdCallSt
  loc_152A29B:     var_134 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_152A2A3:     Set var_138 = Me.FGrid
  loc_152A2A9:     LateIdCallSt
  loc_152A2D6:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152A2DE:     var_F0 = CVar(CLng(&HE)) 'Long
  loc_152A311:     var_134 = CVar(CStr(Me.Fields.Item("SysYN").Value)) 'String
  loc_152A319:     Set var_138 = Me.FGrid
  loc_152A31F:     LateIdCallSt
  loc_152A33B:   End If
  loc_152A34E:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152A356:   var_E0 = CVar(CLng(&H10)) 'Long
  loc_152A35B:   var_100 = "Manual"
  loc_152A365:   Set var_AC = Me.FGrid
  loc_152A36B:   LateIdCallSt
  loc_152A396:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_152A39B:   var_E0 = 1
  loc_152A3A8:   Set var_AC = Me.FGrid
  loc_152A3B9:   var_B0 = CStr(var_AC.TextMatrix))
  loc_152A3D2:   If (var_B0 <> vbNullString) Then
  loc_152A3D5:     var_C0 = vbNullString
  loc_152A3DF:     Set var_8C = Me.FGrid
  loc_152A3F0:   End If
  loc_152A3F3: Else
  loc_152A3FA:   If Not (var_A0 = CLng(1)) Then
  loc_152A404:     If (var_A0 = CLng(4)) Then
  loc_152A407:     End If
  loc_152A443:     Set var_8C = Me.TxtGrid
  loc_152A449:     Call 0.Method_Proc_109_63_152AEB40 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)))
  loc_152A451:     var_E0 = var_AC.Text
  loc_152A459:     var_134 = CVar(var_B0) 'String
  loc_152A461:     Set var_13C = Me.FGrid
  loc_152A467:     LateIdCallSt
  loc_152A488:   Else
  loc_152A48F:     If (var_A0 = CLng(5)) Then
  loc_152A4CF:       Set var_8C = Me.TxtGrid
  loc_152A4D5:       Call 0.Method_Proc_109_63_152AEB40 (arg_C, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_13C, var_134)
  loc_152A4DD:       var_C0 = var_AC.Text
  loc_152A4E5:       var_134 = CVar(var_B0) 'String
  loc_152A4ED:       Set var_13C = Me.FGrid
  loc_152A4F3:       LateIdCallSt
  loc_152A530:       If (CLng(Me.FGrid.Row) = 1) Then
  loc_152A546:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152A54F:         Set var_AC = Me.FGrid
  loc_152A55E:         var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_152A563:         var_100 = vbNullString
  loc_152A56D:         Set var_114 = Me.FGrid
  loc_152A573:         LateIdCallSt
  loc_152A590:         Proc_109_63_152AEB4 = &HFF
  loc_152A596:       End If
  loc_152A5A3:       Set var_8C = Me.TxtGrid
  loc_152A5A9:       Call 0.Method_Proc_109_63_152AEB40 (arg_C, var_AC, var_B0, var_114, var_100, var_E0, var_C0)
  loc_152A5B1:       var_13C = var_AC.Text
  loc_152A5C8:       If (var_B0 <> vbNullString) Then
  loc_152A606:         Call Proc_109_61_11588A4(CInt(CLng(Me.FGrid.Row)), CInt(CLng(Me.FGrid.Col)))
  loc_152A61F:         If (var_13E = &HFF) Then
  loc_152A624:           var_86 = 0
  loc_152A63A:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152A643:           Set var_AC = Me.FGrid
  loc_152A652:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_152A657:           var_100 = vbNullString
  loc_152A667:           LateIdCallSt
  loc_152A67F:           Proc_109_63_152AEB4 = Me.FGrid
  loc_152A685:         End If
  loc_152A685:       End If
  loc_152A688:     Else
  loc_152A68F:       If Not (var_A0 = CLng(8)) Then
  loc_152A699:         If (var_A0 = CLng(&HC)) Then
  loc_152A69C:         End If
  loc_152A6D8:         Set var_8C = Me.TxtGrid
  loc_152A6DE:         Call 0.Method_Proc_109_63_152AEB40 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_100, CVar(CLng(Me.FGrid.Col)))
  loc_152A6E6:         var_C0 = var_AC.Text
  loc_152A6FC:         LateIdCallSt
  loc_152A727:         Set var_8C = Me.TxtGrid
  loc_152A72D:         Call 0.Method_Proc_109_63_152AEB40 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0), var_86)
  loc_152A735:         var_13E = var_AC.Text
  loc_152A74C:         If (var_B0 = vbNullString) Then
  loc_152A762:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152A76B:           Set var_AC = Me.FGrid
  loc_152A77A:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_152A77F:           var_100 = "No"
  loc_152A789:           Set var_114 = Me.FGrid
  loc_152A78F:           LateIdCallSt
  loc_152A7A7:         End If
  loc_152A7AA:       Else
  loc_152A7B1:         If (var_A0 = CLng(&H10)) Then
  loc_152A7B8:           Set var_114 = Me.FGrid
  loc_152A7F0:           Set var_8C = Me.TxtGrid
  loc_152A7F6:           Call 0.Method_Proc_109_63_152AEB40 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_152A7FE:           var_E0 = var_AC.Text
  loc_152A814:           LateIdCallSt
  loc_152A83F:           Set var_8C = Me.TxtGrid
  loc_152A845:           Call 0.Method_Proc_109_63_152AEB40 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_152A84D:           var_C0 = var_AC.Text
  loc_152A864:           If (var_B0 = vbNullString) Then
  loc_152A87A:             var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152A883:             Set var_AC = Me.FGrid
  loc_152A892:             var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_152A897:             var_100 = "Manual"
  loc_152A8A1:             Set var_114 = Me.FGrid
  loc_152A8A7:             LateIdCallSt
  loc_152A8BF:           End If
  loc_152A8C2:         Else
  loc_152A8C9:           If (var_A0 = CLng(6)) Then
  loc_152A8D0:             Set var_114 = Me.FGrid
  loc_152A908:             Set var_8C = Me.TxtGrid
  loc_152A90E:             Call 0.Method_Proc_109_63_152AEB40 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_152A916:             var_E0 = var_AC.Text
  loc_152A92C:             LateIdCallSt
  loc_152A957:             Set var_8C = Me.TxtGrid
  loc_152A95D:             Call 0.Method_Proc_109_63_152AEB40 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_152A965:             var_C0 = var_AC.Text
  loc_152A97C:             If (var_B0 = vbNullString) Then
  loc_152A992:               var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152A99B:               Set var_AC = Me.FGrid
  loc_152A9AA:               var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_152A9AF:               var_100 = "Amt"
  loc_152A9B9:               Set var_114 = Me.FGrid
  loc_152A9BF:               LateIdCallSt
  loc_152A9D7:             End If
  loc_152A9DA:           Else
  loc_152A9E1:             If (var_A0 = CLng(7)) Then
  loc_152A9F0:               Set var_8C = Me.TxtGrid
  loc_152A9F6:               Call 0.Method_Proc_109_63_152AEB40 (0, var_AC, var_B0, var_114, var_100, var_E0)
  loc_152A9FE:               var_C0 = var_AC.Text
  loc_152AA21:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152AA39:               var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_152AA66:               var_170 = CVar(CStr(Format(CVar(Val(var_B0)), "0.000"))) 'String
  loc_152AA6E:               Set var_13C = Me.FGrid
  loc_152AA74:               LateIdCallSt
  loc_152AA9E:             Else
  loc_152AAA5:               If (var_A0 = CLng(9)) Then
  loc_152AAB4:                 Set var_8C = Me.TxtGrid
  loc_152AABA:                 Call 0.Method_Proc_109_63_152AEB40 (0, var_AC, var_B0, var_13C, var_170, 1, 1)
  loc_152AAC2:                 var_100 = var_AC.Text
  loc_152AAE5:                 var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152AAFD:                 var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_152AB2A:                 var_170 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_152AB32:                 Set var_13C = Me.FGrid
  loc_152AB38:                 LateIdCallSt
  loc_152AB62:               Else
  loc_152AB69:                 If (var_A0 = CLng(&HD)) Then
  loc_152ABBA:                   Set var_8C = Me.TxtGrid
  loc_152ABC0:                   Call 0.Method_Proc_109_63_152AEB40 (arg_C, var_AC, var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_13C, var_170, 1)
  loc_152ABC8:                   1 = var_AC.Text
  loc_152ABE0:                   If (var_100 Or (var_B0 = vbNullString)) Then
  loc_152ABF6:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152ABFE:                     var_E0 = CVar(CLng(&HF)) 'Long
  loc_152AC03:                     var_100 = vbNullString
  loc_152AC0D:                     Set var_AC = Me.FGrid
  loc_152AC13:                     LateIdCallSt
  loc_152AC38:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152AC40:                     var_E0 = CVar(CLng(&HD)) 'Long
  loc_152AC45:                     var_100 = vbNullString
  loc_152AC4F:                     Set var_AC = Me.FGrid
  loc_152AC55:                     LateIdCallSt
  loc_152AC7A:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152AC82:                     var_E0 = CVar(CLng(&HB)) 'Long
  loc_152AC87:                     var_100 = vbNullString
  loc_152AC91:                     Set var_AC = Me.FGrid
  loc_152AC97:                     LateIdCallSt
  loc_152ACAC:                   Else
  loc_152ACBF:                     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152ACC7:                     var_F0 = CVar(CLng(&HF)) 'Long
  loc_152ACFA:                     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_152AD02:                     Set var_138 = Me.FGrid
  loc_152AD08:                     LateIdCallSt
  loc_152AD37:                     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152AD3F:                     var_F0 = CVar(CLng(&HD)) 'Long
  loc_152AD72:                     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_152AD7A:                     Set var_138 = Me.FGrid
  loc_152AD80:                     LateIdCallSt
  loc_152ADDB:                     If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_152ADF1:                       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152ADF9:                       var_E0 = CVar(CLng(&HB)) 'Long
  loc_152ADFE:                       var_100 = "+"
  loc_152AE08:                       Set var_AC = Me.FGrid
  loc_152AE0E:                       LateIdCallSt
  loc_152AE23:                     Else
  loc_152AE62:                       If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_152AE78:                         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152AE80:                         var_E0 = CVar(CLng(&HB)) 'Long
  loc_152AE85:                         var_100 = "-"
  loc_152AE8F:                         Set var_AC = Me.FGrid
  loc_152AE95:                         LateIdCallSt
  loc_152AEA7:                       End If
  loc_152AEA7:                     End If
  loc_152AEA7:                   End If
  loc_152AEA7:                 End If
  loc_152AEA7:               End If
  loc_152AEA7:             End If
  loc_152AEA7:           End If
  loc_152AEA7:         End If
  loc_152AEA7:       End If
  loc_152AEA7:     End If
  loc_152AEA7:   End If
  loc_152AEA7: End If
  loc_152AEAC: Proc_109_63_152AEB4 = &HFF
End Sub

Public Sub Proc_109_64_F675B8
  'Data Table: 4F6110
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F6748E: Set var_8C = Me.Txt
  loc_F67494: Call 0.Method_Proc_109_64_F675B8C (var_8E, var_86)
  loc_F674A4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F674BA:   Set var_8C = Me.Txt
  loc_F674C0:   Call 0.Method_Proc_109_64_F675B80 (CInt(var_86), var_98)
  loc_F674C8:   var_98.Text = vbNullString
  loc_F674E4:   Set var_8C = Me.Txt
  loc_F674EA:   Call 0.Method_Proc_109_64_F675B80 (CInt(var_86), var_98)
  loc_F674F2:   var_98.Tag = vbNullString
  loc_F67501: Next var_92 'Byte
  loc_F67514: Me.LblDepart.Caption = vbNullString
  loc_F67529: Me.LblUser.Caption = vbNullString
  loc_F6753E: Me.LblLDt.Caption = vbNullString
  loc_F67559: Me.FGrid.Rows = 1
  loc_F67576: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F6757E: Set var_98 = Me.FGrid
  loc_F675AD: Me.FGrid.FixedRows = 1
  loc_F675B5: Exit Sub
End Sub

Public Sub Proc_109_65_14903C4
  'Data Table: 4F6110
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_98 As String
  Dim var_DC As Variant
  Dim var_B8 As Variant
  Dim var_A8 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim unk_4F6127 As Connection15
  Dim var_88 As Recordset15
  Dim var_134 As Variant
  Dim var_158 As Variant
  Dim var_148 As Variant
  Dim var_178 As Variant
  Dim var_138 As TextBox
  Dim var_8A As Integer
  Dim var_130 As Variant
  loc_148F780: On Error Goto loc_14903BE
  loc_148F79A: If (Me.RecordCount > 0) Then
  loc_148F79D:   Call Proc_109_64_F675B8()
  loc_148F7B6:   var_94 = "Select VT.Description,SP.*,SM.Name As SundryName,RM.Name As RevName,D.Name As Department From ((((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type ) Left Join Depart D On VT.RestCode=D.Code) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Where Sp.LogSite_Code='" & MemVar_1F95078
  loc_148F7D9:   var_DC = CVar(var_94 & "' and VT.Site_Code='" & MemVar_1F95070 & "' and VT.LogSite_Code='" & MemVar_1F95078 & "' and SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)='") 'String
  loc_148F820:   unk_4F6127.Execute CStr(var_DC & Me.Fields.Item("SearchCode").Value & "' Order By SP.SNo"), var_130, -1
  loc_148F82B:   Set var_88 = var_134
  loc_148F867:   If (var_88.RecordCount > 0) Then
  loc_148F8A4:     var_134 = var_88.Fields
  loc_148F90D:     var_198 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_134.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_148F952:     Me.LblUser.Caption = CStr(var_134 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_198)))
  loc_148F9CC:     var_138 = var_88.Fields.Item("U_AE")
  loc_148FA2D:     var_198 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_138)) = "E"), "Last Update : ", "entdt : "))
  loc_148FA72:     Me.LblLDt.Caption = CStr(var_198 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_148FAE0:     Set var_134 = Me.Txt
  loc_148FAE6:     Call 0.Method_Proc_109_65_14903C40 (CInt(0), var_138)
  loc_148FAEE:     var_138.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("V_Type")))
  loc_148FB38:     Set var_134 = Me.Txt
  loc_148FB3E:     Call 0.Method_Proc_109_65_14903C40 (CInt(0), var_138)
  loc_148FB46:     var_138.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("V_Type")))
  loc_148FB93:     If (Proc_6_38_E69628(CVar(var_88.Fields.Item("Department"))) = vbNullString) Then
  loc_148FB96:     End If
  loc_148FBCB:     Me.LblDepart.Caption = Proc_6_38_E69628(CVar(var_88.Fields.Item("Department")))
  loc_148FC2F:     Set var_134 = Me.Txt
  loc_148FC35:     Call 0.Method_Proc_109_65_14903C40 (CInt(1), var_138, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/mm/yyyy")))
  loc_148FC3D:     var_138.Text = 1
  loc_148FC59:     var_8A = 1
  loc_148FC6F:     Me.FGrid.Rows = 1
  loc_148FC77:     ' Referenced from: 1490335
  loc_148FC86:     If Not(var_88.EOF) Then
  loc_148FC89:       var_B8 = vbNullString
  loc_148FC93:       Set var_A8 = Me.FGrid
  loc_148FCA8:       Set var_1EC = Me.FGrid
  loc_148FCAF:       var_FC = CVar(CLng(var_8A)) 'Long
  loc_148FCB7:       var_148 = CVar(CLng(1)) 'Long
  loc_148FCE7:       var_DC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_148FCEE:       LateIdCallSt
  loc_148FD3D:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1EC, var_DC, CVar(CLng(2)))) 'String
  loc_148FD44:       LateIdCallSt
  loc_148FD8F:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1EC, var_DC)) 'String
  loc_148FD96:       LateIdCallSt
  loc_148FDE1:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1EC, var_DC)) 'String
  loc_148FDE8:       LateIdCallSt
  loc_148FDFE:       var_FC = CVar(CLng(var_8A)) 'Long
  loc_148FE3A:       LateIdCallSt
  loc_148FE74:       var_98 = Proc_6_38_E69628(CVar(var_88.Fields.Item("PerOrAmt")), var_1EC, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_FC, var_1EC, var_DC)), var_FC)
  loc_148FE7B:       var_158 = CVar(CLng(var_8A)) 'Long
  loc_148FE83:       var_178 = CVar(CLng(6)) 'Long
  loc_148FEB9:       var_130 = CVar(CStr(IIf((var_98 = "P"), "Per", "Amt"))) 'String
  loc_148FEC0:       LateIdCallSt
  loc_148FF3D:       LateIdCallSt
  loc_148FF7B:       var_98 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoundOff")), var_1EC, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.000"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_148FF82:       var_158 = CVar(CLng(var_8A)) 'Long
  loc_148FF8A:       var_178 = CVar(CLng(8)) 'Long
  loc_148FFC0:       var_130 = CVar(CStr(IIf((var_98 = "Y"), "Yes", "No"))) 'String
  loc_148FFC7:       LateIdCallSt
  loc_1490044:       LateIdCallSt
  loc_1490093:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_1EC, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_149009A:       LateIdCallSt
  loc_14900E5:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(var_8A)), var_1EC, var_DC, CVar(CLng(9)))) 'String
  loc_14900EC:       LateIdCallSt
  loc_149013E:       LateIdCallSt
  loc_1490178:       var_98 = Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP")), var_1EC, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_1EC, var_DC)), CVar(CLng(var_8A)))
  loc_14901C4:       LateIdCallSt
  loc_149021E:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(&HF)), CVar(CLng(var_8A)), var_1EC, CVar(CStr(IIf((var_98 = "Y"), "Yes", "No"))), CVar(CLng(&HC)))) 'String
  loc_1490225:       LateIdCallSt
  loc_1490270:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevName")), CVar(CLng(&HD)), CVar(CLng(var_8A)), var_1EC, var_DC)) 'String
  loc_1490277:       LateIdCallSt
  loc_14902B8:       var_158 = CVar(CLng(var_8A)) 'Long
  loc_14902C0:       var_178 = CVar(CLng(&H10)) 'Long
  loc_14902ED:       var_10C = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("AutoManual")), var_1EC, "Auto", CVar(CLng(var_8A))) = "A"), "Auto", "Manual")
  loc_14902F6:       var_130 = CVar(CStr(var_10C)) 'String
  loc_14902FD:       LateIdCallSt
  loc_1490320:       Set var_1EC = Nothing 
  loc_149032A:       var_8A = (var_8A + 1)
  loc_1490330:       var_88.MoveNext
  loc_1490335:       GoTo loc_148FC77
  loc_1490338:     End If
  loc_1490338:   End If
  loc_1490338:   var_B8 = 0
  loc_1490342:   Set var_A8 = Me.FGrid
  loc_149036F:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1490372:     var_B8 = "1"
  loc_149037C:     Set var_A8 = Me.FGrid
  loc_149038D:   End If
  loc_149038D:   var_B8 = 1
  loc_14903A0:   Me.FGrid.FixedRows = var_B8
  loc_14903AB: Else
  loc_14903AB:   Call Proc_109_64_F675B8(FGrid.DispID_10000, var_B8, FGrid.DispID_2E, var_B8, var_8A, var_1EC, var_130)
  loc_14903B0: End If
  loc_14903B0: Call Proc_109_67_EBC124(var_178, var_158, var_1EC)
  loc_14903BA: Set var_88 = Nothing
  loc_14903BD: Exit Sub
  loc_14903BE: ' Referenced from: 148F780
  loc_14903BE: Proc_6_60_E63754(var_130, var_178)
  loc_14903C3: Exit Sub
End Sub

Public Sub Proc_109_66_EB9484(arg_C) 'EB9484
  'Data Table: 4F6110
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_EB93F2: Set var_8C = Me.Txt
  loc_EB93F8: Call 0.Method_Proc_109_66_EB9484C (var_8E, var_86)
  loc_EB9408: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB941E:   Set var_8C = Me.Txt
  loc_EB9424:   Call 0.Method_Proc_109_66_EB94840 (CInt(var_86), var_98)
  loc_EB942C:   var_98.Enabled = arg_C
  loc_EB943B: Next var_92 'Byte
  loc_EB944E: Me.Frame1.Enabled = arg_C
  loc_EB9464: Me.CmdCopy.Enabled = Not(arg_C)
  loc_EB9479: Me.CmdPaste.Enabled = arg_C
  loc_EB9481: Exit Sub
End Sub

Public Sub Proc_109_67_EBC124
  'Data Table: 4F6110
  loc_EBC09C: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EBC0AE:   Me.DGVType.Visible = False
  loc_EBC0B6: End If
  loc_EBC0D2: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_EBC0E4:   Me.DGRevenue.Visible = False
  loc_EBC0EC: End If
  loc_EBC108: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_EBC11A:   Me.DGSundry.Visible = False
  loc_EBC122: End If
  loc_EBC122: Exit Sub
End Sub

Public Sub Proc_109_68_FBD9B0
  'Data Table: 4F6110
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBD833: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_FBD838:   var_92 = 3 'Byte
  loc_FBD83C: End If
  loc_FBD845: Set var_98 = Me.TxtGrid
  loc_FBD84B: Call 0.Method_Proc_109_68_FBD9B00 (0, var_B0)
  loc_FBD86E: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBD8A2: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBD8C6:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBD8C9:     GoTo loc_FBD99B
  loc_FBD8CC:   End If
  loc_FBD8D0:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBD8FA:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBD904:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBD939:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBD95D:     MsgBox("Duplicate Sundry Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBD976:     Set var_98 = Me.TxtGrid
  loc_FBD97C:     Call 0.Method_Proc_109_68_FBD9B00 (0, var_B0, CVar(CLng(var_92)))
  loc_FBD984:     var_B0.SetFocus
  loc_FBD995:     Proc_109_68_FBD9B0 = 0
  loc_FBD99B:     ' Referenced from: FBD8C9
  loc_FBD99B:   End If
  loc_FBD99E: Next var_D4 'Integer
  loc_FBD9A8: Proc_109_68_FBD9B0 = &HFF
End Sub

Public Sub Proc_109_69_12D3620
  'Data Table: 4F6110
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_8A As Integer
  Dim var_B8 As String
  Dim unk_4F6127 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_100 As Variant
  Dim var_E0 As Field20
  Dim var_120 As Variant
  Dim var_D0 As Variant
  Dim var_110 As Variant
  Dim var_160 As Variant
  Dim var_F0 As Variant
  Dim var_180 As Variant
  loc_12D2F94: On Error Goto loc_12D3618
  loc_12D2FA4: Set var_B0 = Me.FGrid
  loc_12D2FAA: var_B0.Rows = 1
  loc_12D2FB4: var_8A = 1
  loc_12D2FD2: var_B8 = "SELECT SF.*,SM.Name as SundryName" & " FROM SundryTypeFix SF INNER JOIN SundryMast SM ON SF.SundryCode = SM.Code" & " where (SF.LOGSITE_CODE='"
  loc_12D2FE9: unk_4F6127.Execute var_B8 & MemVar_1F95078 & "' or SF.LOGSITE_CODE='HO') Order By SNo ", var_D0, -1
  loc_12D2FF4: Set var_88 = var_B0
  loc_12D301C: If (var_88.RecordCount > 0) Then
  loc_12D301F:   ' Referenced from: 12D3574
  loc_12D302E:   If Not(var_88.EOF) Then
  loc_12D3031:     var_9C = vbNullString
  loc_12D303B:     Set var_B0 = Me.FGrid
  loc_12D3050:     Set var_DC = Me.FGrid
  loc_12D3057:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12D305F:     var_100 = CVar(CLng(1)) 'Long
  loc_12D308F:     var_120 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_12D3096:     LateIdCallSt
  loc_12D30E5:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_DC, var_120, CVar(CLng(2)))) 'String
  loc_12D30EC:     LateIdCallSt
  loc_12D3137:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_DC, var_120)) 'String
  loc_12D313E:     LateIdCallSt
  loc_12D3189:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_DC, var_120)) 'String
  loc_12D3190:     LateIdCallSt
  loc_12D31A6:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12D31E2:     LateIdCallSt
  loc_12D321C:     var_B8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("PerOrAmt")), var_DC, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_AC, var_DC, var_120)), var_AC)
  loc_12D3223:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12D322B:     var_160 = CVar(CLng(6)) 'Long
  loc_12D3261:     var_180 = CVar(CStr(IIf((var_B8 = "P"), "Per", "Amt"))) 'String
  loc_12D3268:     LateIdCallSt
  loc_12D32E5:     LateIdCallSt
  loc_12D3323:     var_B8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoundOff")), var_DC, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.000"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_12D332A:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12D3332:     var_160 = CVar(CLng(8)) 'Long
  loc_12D3368:     var_180 = CVar(CStr(IIf((var_B8 = "Y"), "Yes", "No"))) 'String
  loc_12D336F:     LateIdCallSt
  loc_12D33EC:     LateIdCallSt
  loc_12D343B:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_DC, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_12D3442:     LateIdCallSt
  loc_12D348D:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_DC, var_120, CVar(CLng(9)))) 'String
  loc_12D3494:     LateIdCallSt
  loc_12D34D5:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12D34DD:     var_160 = CVar(CLng(&HC)) 'Long
  loc_12D3513:     var_180 = CVar(CStr(IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP")), var_DC, "Yes", CVar(CLng(var_8A))) = "Y"), "Yes", "No"))) 'String
  loc_12D351A:     LateIdCallSt
  loc_12D353F:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_12D3547:     var_F0 = CVar(CLng(&H10)) 'Long
  loc_12D354C:     var_110 = "Manual"
  loc_12D3555:     LateIdCallSt
  loc_12D355F:     Set var_DC = Nothing 
  loc_12D3569:     var_8A = (var_8A + 1)
  loc_12D356F:     var_88.MoveNext
  loc_12D3574:     GoTo loc_12D301F
  loc_12D3577:   End If
  loc_12D358A:   Me.FGrid.FixedRows = 1
  loc_12D3592: End If
  loc_12D3598: If (var_8A = 1) Then
  loc_12D35AE:   Me.FGrid.Rows = 1
  loc_12D35CB:   var_120 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_12D35D3:   Set var_E0 = Me.FGrid
  loc_12D35EF:   var_9C = 1
  loc_12D3602:   Me.FGrid.FixedRows = var_9C
  loc_12D360A: End If
  loc_12D360A: Call Proc_109_67_EBC124(FGrid.DispID_10000, var_120, var_8A, var_DC, var_110, var_F0, var_9C)
  loc_12D3614: Set var_88 = Nothing
  loc_12D3617: Exit Sub
  loc_12D3618: ' Referenced from: 12D2F94
  loc_12D3618: Proc_6_60_E63754(var_DC, var_180, var_160)
  loc_12D361D: Exit Sub
End Sub

Public Sub Proc_109_70_E7EAD0
  'Data Table: 4F6110
  loc_E7EA91: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A0 'Integer
  loc_E7EAA4:   Call Proc_109_61_11588A4(var_88, CInt(5))
  loc_E7EAAF:   If (var_A4 = &HFF) Then
  loc_E7EAB7:     Proc_109_70_E7EAD0 = 0
  loc_E7EABD:   End If
  loc_E7EAC0: Next var_A0 'Integer
  loc_E7EACA: Proc_109_70_E7EAD0 = &HFF
End Sub

Public Sub Proc_109_71_1384748
  'Data Table: 4F6110
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_4F6127 As Connection15
  Dim var_88 As Recordset15
  Dim var_8A As Integer
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_F8 As Variant
  Dim var_D8 As Variant
  Dim var_118 As Variant
  Dim var_B4 As Variant
  Dim var_108 As Variant
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_1A8 As String
  Dim var_1A0 As TextBox
  loc_1383EB0: On Error Goto loc_1384740
  loc_1383EC7: var_90 = "Select SP.*,SM.Name As SundryName,RM.Name As RevName,'B'+D.ShortName V_Type1 From SundryType SP Left Join SundryMast SM On SP.SundryCode=SM.Code Left Join RevMast RM On SP.RevCode=RM.Code Left Join Depart D On RM.DeskCode=D.Code Where SP.LogSite_Code='" & MemVar_1F95078
  loc_1383ED7: unk_4F6127.Execute var_90 & "' And SP.V_Type='XXX' Order By SP.SNo", var_B4, -1
  loc_1383EE2: Set var_88 = var_B8
  loc_1383F06: If (var_88.RecordCount > 0) Then
  loc_1383F0B:   var_8A = 1
  loc_1383F21:   Me.FGrid.Rows = 1
  loc_1383F29:   ' Referenced from: 13846B7
  loc_1383F38:   If Not(var_88.EOF) Then
  loc_1383F3B:     var_A4 = vbNullString
  loc_1383F45:     Set var_B8 = Me.FGrid
  loc_1383F5A:     Set var_D4 = Me.FGrid
  loc_1383F61:     var_CC = CVar(CLng(var_8A)) 'Long
  loc_1383F69:     var_F8 = CVar(CLng(1)) 'Long
  loc_1383F99:     var_118 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1383FA0:     LateIdCallSt
  loc_1383FEF:     var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_D4, var_118, CVar(CLng(2)))) 'String
  loc_1383FF6:     LateIdCallSt
  loc_1384041:     var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_D4, var_118)) 'String
  loc_1384048:     LateIdCallSt
  loc_1384093:     var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_D4, var_118)) 'String
  loc_138409A:     LateIdCallSt
  loc_13840B0:     var_CC = CVar(CLng(var_8A)) 'Long
  loc_13840EC:     LateIdCallSt
  loc_1384126:     var_94 = Proc_6_38_E69628(CVar(var_88.Fields.Item("PerOrAmt")), var_D4, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_CC, var_D4, var_118)), var_CC)
  loc_138412D:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_1384135:     var_158 = CVar(CLng(6)) 'Long
  loc_138416B:     var_178 = CVar(CStr(IIf((var_94 = "P"), "Per", "Amt"))) 'String
  loc_1384172:     LateIdCallSt
  loc_13841EF:     LateIdCallSt
  loc_138422D:     var_94 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoundOff")), var_D4, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.000"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_1384234:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_138423C:     var_158 = CVar(CLng(8)) 'Long
  loc_1384272:     var_178 = CVar(CStr(IIf((var_94 = "Y"), "Yes", "No"))) 'String
  loc_1384279:     LateIdCallSt
  loc_13842F6:     LateIdCallSt
  loc_1384345:     var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_D4, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_138434C:     LateIdCallSt
  loc_1384397:     var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(var_8A)), var_D4, var_118, CVar(CLng(9)))) 'String
  loc_138439E:     LateIdCallSt
  loc_13843F0:     LateIdCallSt
  loc_1384419:     var_D8 = var_88.Fields.Item("GRP")
  loc_138442A:     var_94 = Proc_6_38_E69628(CVar(var_D8), var_D4, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_D4, var_118)), CVar(CLng(var_8A)))
  loc_1384431:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_1384439:     var_158 = CVar(CLng(&HC)) 'Long
  loc_1384457:     var_90 = var_94
  loc_138446F:     var_178 = CVar(CStr(IIf((var_90 = "Y"), "Yes", "No"))) 'String
  loc_1384476:     LateIdCallSt
  loc_13844A5:     Set var_B8 = Me.Txt
  loc_13844AB:     Call 0.Method_Proc_109_71_13847480 (CInt(0), var_D8, var_90, var_D4, var_178, var_158)
  loc_1384518:     var_1A8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("V_Type1")), (Proc_6_38_E69628(CVar(var_88.Fields.Item("V_Type1")), (var_90 <> vbNullString), var_D4) = vbNullString), var_178)
  loc_1384529:     Set var_19C = Me.Txt
  loc_138452F:     Call 0.Method_Proc_109_71_13847480 (CInt(0), var_1A0, var_1A4)
  loc_1384537:     var_1A8 = var_1A0.Tag
  loc_1384564:     If ( And (var_D8.Tag Or (var_158 = var_1A4))) Then
  loc_138456B:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_13845A0:       var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(&HF)))) 'String
  loc_13845A7:       LateIdCallSt
  loc_13845F2:       var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevName")), CVar(CLng(&HD)), CVar(CLng(var_8A)))) 'String
  loc_13845F9:       LateIdCallSt
  loc_138460B:     End If
  loc_138463A:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_1384642:     var_158 = CVar(CLng(&H10)) 'Long
  loc_1384657:     var_118 = "Auto"
  loc_1384678:     var_178 = CVar(CStr(IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("AutoManual")), var_D4, var_118) = "A"), var_118, "Manual"))) 'String
  loc_138467F:     LateIdCallSt
  loc_13846A2:     Set var_D4 = Nothing 
  loc_13846AC:     var_8A = (var_8A + 1)
  loc_13846B2:     var_88.MoveNext
  loc_13846B7:     GoTo loc_1383F29
  loc_13846BA:   End If
  loc_13846BA:   var_A4 = 0
  loc_13846C4:   Set var_B8 = Me.FGrid
  loc_13846F1:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_13846F4:     var_A4 = "1"
  loc_13846FE:     Set var_B8 = Me.FGrid
  loc_138470F:   End If
  loc_138470F:   var_A4 = 1
  loc_1384722:   Me.FGrid.FixedRows = var_A4
  loc_138472D: Else
  loc_138472D:   Call Proc_109_64_F675B8(FGrid.DispID_10000, var_A4, FGrid.DispID_2E, var_A4, var_8A, var_D4)
  loc_1384732: End If
  loc_1384732: Call Proc_109_67_EBC124(var_178, var_158, var_108)
  loc_138473C: Set var_88 = Nothing
  loc_138473F: Exit Sub
  loc_1384740: ' Referenced from: 1383EB0
  loc_1384740: Proc_6_60_E63754(var_D4, var_118)
  loc_1384745: Exit Sub
End Sub
