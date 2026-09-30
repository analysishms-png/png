VERSION 5.00
Begin VB.Form DepartSundry
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
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 11625
  ClientHeight = 7155
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11625
    Height = 450
    TabIndex = 22
  End
  Begin Frame PwdFrame
    Caption = "Change Password"
    BackColor = &HC0FFFF&
    ForeColor = &HC00000&
    Left = 6795
    Top = 6135
    Width = 3570
    Height = 1230
    Visible = 0   'False
    TabIndex = 17
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton CmdChange
      Caption = "Change"
      Left = 855
      Top = 705
      Width = 780
      Height = 330
      Visible = 0   'False
      TabIndex = 14
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdCancel
      Caption = "Cancel"
      Left = 1845
      Top = 705
      Width = 780
      Height = 330
      Visible = 0   'False
      TabIndex = 15
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox Txt
      Index = 2
      ForeColor = &HC00000&
      Left = 1590
      Top = 285
      Width = 1245
      Height = 285
      TabIndex = 13
      PasswordChar = "*"
      MaxLength = 8
    End
    Begin Label Label1
      Caption = "New Password"
      BackColor = &HC0FFC0&
      ForeColor = &HC00000&
      Left = 255
      Top = 300
      Width = 1140
      Height = 285
      TabIndex = 18
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin TextBox txtPassword
    ForeColor = &HC00000&
    Left = 3090
    Top = 6135
    Width = 1365
    Height = 315
    TabIndex = 11
    PasswordChar = "#"
  End
  Begin Frame Frame1
    BackColor = &HFFC0C0&
    Left = 11805
    Top = 6690
    Width = 555
    Height = 2040
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Begin CommandButton CmdUp
      Caption = "á"
      BackColor = &HC0FFFF&
      Left = 90
      Top = 270
      Width = 390
      Height = 630
      TabIndex = 10
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
      BackColor = &HC0FFFF&
      Left = 83
      Top = 1125
      Width = 390
      Height = 630
      TabIndex = 9
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
    Left = 9945
    Top = 1815
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin DataGrid DGRevenue
    Left = 9555
    Top = 1530
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin DataGrid DGVType
    Left = 9240
    Top = 1215
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2730
    Top = 1260
    Width = 1455
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 1065
    Top = 2460
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 45
    Top = 1770
    Width = 10890
    Height = 3540
    TabIndex = 2
  End
  Begin CommandButton CmdPwd
    Caption = "Change Password"
    BackColor = &HC0FFFF&
    Left = 5040
    Top = 6135
    Width = 1725
    Height = 330
    TabIndex = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5100
    Top = 7575
    Width = 2790
    Height = 285
    TabIndex = 21
    Alignment = 2 'Center
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
    Left = 1725
    Top = 7575
    Width = 2880
    Height = 255
    TabIndex = 20
    Alignment = 2 'Center
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
    TabIndex = 19
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
    Caption = "Password"
    Index = 2
    ForeColor = &HC00000&
    Left = 2040
    Top = 6135
    Width = 915
    Height = 240
    TabIndex = 16
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
  Begin Label LblDepart
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 5730
    Top = 1095
    Width = 3885
    Height = 510
    Visible = 0   'False
    TabIndex = 7
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Applicable From"
    Index = 1
    ForeColor = &HC00000&
    Left = 975
    Top = 1260
    Width = 1575
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
End

Attribute VB_Name = "DepartSundry"

Private global_68 As Integer
Private global_70 As Integer
Private MasterFormExit As Integer

Private Sub CmdDown_Click() '1096EB0
  'Data Table: 4EFEC4
  Dim var_C0 As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  loc_1096C4F: If (CLng(Me.FGrid.Row) = 1) Then
  loc_1096C52:   Exit Sub
  loc_1096C53: End If
  loc_1096C8E: If (CLng(Me.FGrid.Row) = (CLng(Me.FGrid.Rows) - 2)) Then
  loc_1096C91:   Exit Sub
  loc_1096C92: End If
  loc_1096CA6: var_86 = CInt(CLng(Me.FGrid.Row))
  loc_1096CD4: For var_D4 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_D4 'Integer
  loc_1096CDE:   var_E4 = CVar(CLng(var_86)) 'Long
  loc_1096CE7:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_1096D0B:   var_A0(CLng(var_A6)) = CStr(Me.FGrid.TextMatrix))
  loc_1096D18: Next var_D4 'Integer
  loc_1096D42: For var_11C = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_11C 'Integer
  loc_1096D5B:   var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1096D64:   var_160 = CVar(CLng(var_A6)) 'Long
  loc_1096D82:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_1096D8B:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_1096DA5:   var_180 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1096DAD:   Set var_194 = Me.FGrid
  loc_1096DB3:   LateIdCallSt
  loc_1096DD4: Next var_11C 'Integer
  loc_1096DFE: For var_198 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_198 'Integer
  loc_1096E1D:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_1096E26:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_1096E3B:   Set var_C0 = Me.FGrid
  loc_1096E41:   LateIdCallSt
  loc_1096E56: Next var_198 'Integer
  loc_1096E62: var_E4 = CVar(CLng((var_86 + 1))) 'Long
  loc_1096E71: Me.FGrid.Row = var_E4
  loc_1096E9B: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_1096EAA: Call Proc_73_50_E7ED50()
  loc_1096EAF: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_9 '103F560
  'Data Table: 4EFEC4
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_103F31F: Me.DGRevenue.Visible = False
  loc_103F33E: If (Me.RecordCount > 0) Then
  loc_103F354:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103F35C:   var_E4 = CVar(CLng(&HF)) 'Long
  loc_103F38F:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_103F397:   Set var_128 = Me.FGrid
  loc_103F39D:   LateIdCallSt
  loc_103F3CC:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103F3D4:   var_E4 = CVar(CLng(&HD)) 'Long
  loc_103F407:   var_114 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_103F40F:   Set var_128 = Me.FGrid
  loc_103F415:   LateIdCallSt
  loc_103F470:   If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_103F486:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103F48E:     var_D4 = CVar(CLng(&HB)) 'Long
  loc_103F493:     var_F4 = "+"
  loc_103F49D:     Set var_B0 = Me.FGrid
  loc_103F4A3:     LateIdCallSt
  loc_103F4B8:   Else
  loc_103F4F7:     If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_103F50D:       var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103F515:       var_D4 = CVar(CLng(&HB)) 'Long
  loc_103F51A:       var_F4 = "-"
  loc_103F524:       Set var_B0 = Me.FGrid
  loc_103F52A:       LateIdCallSt
  loc_103F53C:     End If
  loc_103F53C:   End If
  loc_103F53C: End If
  loc_103F545: Set var_A8 = Me.TxtGrid
  loc_103F54B: Call 0.Method_DGRevenue_UnknownEvent_90 (0, var_B0, var_B0, var_F4, var_D4, var_94, var_B0)
  loc_103F553: var_B0.SetFocus
  loc_103F55F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E51DD0
  'Data Table: 4EFEC4
  loc_E51DAA: Set var_88 = Me.Txt
  loc_E51DB0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E51DBE: Proc_6_74_E23240(var_8C)
  loc_E51DCA: Call Proc_73_59_EBCA98(var_8C)
  loc_E51DCF: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'EE0BE4
  'Data Table: 4EFEC4
  loc_EE0B3A: If (CLng(Shift) = &H1B) Then
  loc_EE0B3D:   Call Proc_73_59_EBCA98()
  loc_EE0B42:   Exit Sub
  loc_EE0B43: End If
  loc_EE0B99: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGSundry.Visible) = 0)) And (CBool(Me.DGRevenue.Visible) = 0)) Then
  loc_EE0BB1:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EE0BBA:     Proc_6_75_E5335C(Shift)
  loc_EE0BBF:   End If
  loc_EE0BD4:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_EE0BDD:     Proc_6_76_E533C8(Shift, arg_14)
  loc_EE0BE2:   End If
  loc_EE0BE2: End If
  loc_EE0BE2: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E05050
  'Data Table: 4EFEC4
  Dim var_86 As Integer
  loc_E05043: Proc_6_58_E06050(arg_10)
  loc_E0504B: var_86 = KeyAscii
  loc_E0504E: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4886C
  'Data Table: 4EFEC4
  loc_E4884A: Set var_88 = Me.Txt
  loc_E48850: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4885E: Proc_6_73_E23294(var_8C)
  loc_E4886A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FD03E4
  'Data Table: 4EFEC4
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_A0 As TextBox
  Dim var_A4 As String
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_8C As MSHFlexGrid
  loc_FD024A: If (Cancel = CInt(1)) Then
  loc_FD0258:   Set var_8C = Me.Txt
  loc_FD025E:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_FD0287:   If (Proc_6_27_EA61EC(var_90, "App. Date") = 0) Then
  loc_FD0295:     Set var_8C = Me.Txt
  loc_FD029B:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_FD02A3:     var_90.SetFocus
  loc_FD02B1:     arg_10 = &HFF
  loc_FD02B4:     Exit Sub
  loc_FD02B5:   End If
  loc_FD02BF:   Set var_8C = Me.Txt
  loc_FD02C5:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FD02E5:   Set var_9C = Me.Txt
  loc_FD02EB:   Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_FD02F3:   var_A0.Text = Proc_6_33_15125B8(var_90, arg_10)
  loc_FD0322:   Me.Recordset15.CursorLocation = 3
  loc_FD034C:   var_A4 = " SELECT DISTINCT RM.Code as Code,RM.Name as NAme,RM.Type FROM RevMast AS RM WHERE  (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and RM.FieldType='T'"
  loc_FD0361:   var_B0 = var_A4 & " Union " & " Select Distinct RM.Code as Code,RM.Name as NAme,RM.Type From RevMast RM Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_FD0380:   Me.Open CVar(var_B0 & "' or LOGSITE_CODE='HO') and RM.DeskCode='" & MemVar_1F95078 & "PURC' Order By Name"), CVar(MemVar_1F95044), 3
  loc_FD03A2:   CVarUnk
  loc_FD03A7:   VerifyVarObj
  loc_FD03B3:   LateIdStAd
  loc_FD03C1:   Call Proc_73_61_12DCFF0(Me.DGRevenue, New, 1)
  loc_FD03D8:   Me.FGrid.Col = CVar(CLng(1))
  loc_FD03E0: End If
  loc_FD03E0: Exit Sub
  loc_FD03E1: VarIndexSt
End Sub

Private Sub DGSundry_UnknownEvent_9 '1077FAC
  'Data Table: 4EFEC4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_128 As TextBox
  loc_1077D2B: Me.DGSundry.Visible = False
  loc_1077D4A: If (Me.RecordCount > 0) Then
  loc_1077D60:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1077D68:   var_E4 = CVar(CLng(2)) 'Long
  loc_1077D9B:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1077DA3:   Set var_128 = Me.FGrid
  loc_1077DA9:   LateIdCallSt
  loc_1077E1B:   Set var_128 = Me.FGrid
  loc_1077E21:   LateIdCallSt
  loc_1077E77:   Set var_B4 = Me.TxtGrid
  loc_1077E7D:   Call 0.Method_DGSundry_UnknownEvent_90 (0, var_128, CStr(Me.Fields.Item("Name").Value), var_128, CVar(CStr(Me.Fields.Item("Name").Value)), CVar(CLng(3)))
  loc_1077E85:   var_128.Text = CVar(CLng(Me.FGrid.Row))
  loc_1077EE6:   var_114 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_128)) 'String
  loc_1077EEE:   Set var_128 = Me.FGrid
  loc_1077EF4:   LateIdCallSt
  loc_1077F21:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1077F29:   var_E4 = CVar(CLng(&HE)) 'Long
  loc_1077F4B:   var_B0 = Me.Fields.Item("SysYN")
  loc_1077F5C:   var_114 = CVar(CStr(var_B0.Value)) 'String
  loc_1077F64:   Set var_128 = Me.FGrid
  loc_1077F6A:   LateIdCallSt
  loc_1077F86: End If
  loc_1077F8F: Set var_A8 = Me.TxtGrid
  loc_1077F95: Call 0.Method_DGSundry_UnknownEvent_90 (0, var_B0, var_128, var_114, var_E4, var_A4)
  loc_1077F9D: var_B0.SetFocus
  loc_1077FA9: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11E4598
  'Data Table: 4EFEC4
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_11E4120: Call Proc_73_59_EBCA98()
  loc_11E4138: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11E4153: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E415C: Set var_BC = Me.FGrid
  loc_11E4192: Set var_104 = Me.TxtGrid
  loc_11E4198: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_11E41A0: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_11E41D1: var_110 = CLng(Me.FGrid.Col)
  loc_11E41E1: If (var_110 = CLng(3)) Then
  loc_11E41F3:   Set var_A8 = Me.TxtGrid
  loc_11E41F9:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E4201:   var_BC.MaxLength = var_110
  loc_11E424E:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E4251:     Exit Sub
  loc_11E4252:   End If
  loc_11E4265:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E426D:   var_DC = CVar(CLng(3)) 'Long
  loc_11E42A0:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E42A9:     Me.MoveFirst
  loc_11E42C1:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E42C9:     var_DC = CVar(CLng(2)) 'Long
  loc_11E42D2:     Set var_BC = Me.FGrid
  loc_11E42E9:     Proc_6_17_EAAE40(var_128, CVar(CStr(var_BC.TextMatrix))), var_DC, var_94)
  loc_11E4312:     Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E4342:     If (Me.EOF = &HFF) Then
  loc_11E434B:       Me.MoveFirst
  loc_11E4350:     End If
  loc_11E4350:   End If
  loc_11E4353: Else
  loc_11E435A:   If Not (var_110 = CLng(7)) Then
  loc_11E4364:     If (var_110 = CLng(9)) Then
  loc_11E4367:     End If
  loc_11E4376:     Set var_A8 = Me.TxtGrid
  loc_11E437C:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB, var_158)
  loc_11E4384:     var_BC.MaxLength = var_DC
  loc_11E4399:     If (global_70 = 0) Then
  loc_11E43A4:       var_10C = "{Home}+{End}"
  loc_11E43AA:       Proc_303_0_FBACC8(CStr("Code=" & var_128), 0)
  loc_11E43B2:     End If
  loc_11E43B5:   Else
  loc_11E43BC:     If (var_110 = CLng(4)) Then
  loc_11E43CE:       Set var_A8 = Me.TxtGrid
  loc_11E43D4:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E43DC:       var_BC.MaxLength = var_94
  loc_11E43EB:     Else
  loc_11E43F2:       If (var_110 = CLng(5)) Then
  loc_11E4404:         Set var_A8 = Me.TxtGrid
  loc_11E440A:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E4412:         var_BC.MaxLength = &H32
  loc_11E4421:       Else
  loc_11E4428:         If (var_110 = CLng(&HD)) Then
  loc_11E443A:           Set var_A8 = Me.TxtGrid
  loc_11E4440:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E4448:           var_BC.MaxLength = &H32
  loc_11E4495:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E4498:             Exit Sub
  loc_11E4499:           End If
  loc_11E44AC:           var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E44B4:           var_DC = CVar(CLng(&HD)) 'Long
  loc_11E44E7:           If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E44F0:             Me.MoveFirst
  loc_11E4530:             Proc_6_17_EAAE40(var_128, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)))
  loc_11E4559:             Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E4589:             If (Me.EOF = &HFF) Then
  loc_11E4592:               Me.MoveFirst
  loc_11E4597:             End If
  loc_11E4597:           End If
  loc_11E4597:         End If
  loc_11E4597:       End If
  loc_11E4597:     End If
  loc_11E4597:   End If
  loc_11E4597: End If
  loc_11E4597: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13F5EC8
  'Data Table: 4EFEC4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C8 As Variant
  Dim var_94 As DataGrid
  loc_13F5498: On Error Goto loc_13F5EC0
  loc_13F54A5: If (CLng(Shift) = &H1B) Then
  loc_13F54B5:   Set var_88 = Me.TxtGrid
  loc_13F54BB:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13F54D5:   Set var_94 = Me.TxtGrid
  loc_13F54DB:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_13F54E3:   var_98.Text = var_8C.Tag
  loc_13F54FF:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13F5504:   Call Proc_73_59_EBCA98(arg_14)
  loc_13F550D:   Set var_88 = Me.FGrid
  loc_13F552A:   Set var_88 = Me.TxtGrid
  loc_13F5530:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13F5538:   var_8C.Visible = False
  loc_13F5544:   Exit Sub
  loc_13F5545: End If
  loc_13F5558: var_AC = CLng(Me.FGrid.Col)
  loc_13F5568: If (var_AC = CLng(1)) Then
  loc_13F5575:   If (CLng(Shift) = &HD) Then
  loc_13F557E:     Call Proc_73_55_15411C0(KeyCode, var_AE)
  loc_13F5589:     If (var_AE = &HFF) Then
  loc_13F5597:       Set var_98 = Me.TxtGrid
  loc_13F55C0:       Set var_8C = var_98
  loc_13F55CF:       Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_70, &HF)
  loc_13F55DF:     End If
  loc_13F55DF:   End If
  loc_13F55E2: Else
  loc_13F55E9:   If (var_AC = CLng(3)) Then
  loc_13F55F8:     Set var_88 = Me.TxtGrid
  loc_13F55FE:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0)
  loc_13F5606:     3 = var_8C.Left
  loc_13F561D:     Me.DGSundry.Left = CVar(var_B8)
  loc_13F5637:     Set var_94 = Me.TxtGrid
  loc_13F563D:     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13F5645:     0 = var_98.Height
  loc_13F5656:     Set var_88 = Me.TxtGrid
  loc_13F565C:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13F5664:     var_AC = var_8C.Top
  loc_13F5670:     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13F567F:     Me.DGSundry.Top = CVar(var_B8)
  loc_13F56A9:     Set var_98 = Nothing
  loc_13F56E2:     Proc_6_69_134A630(Me.DGSundry, Me.TxtGrid, KeyCode, global_76, Shift, &HFF)
  loc_13F5700:     If (CLng(Shift) = &HD) Then
  loc_13F5709:       Call Proc_73_55_15411C0(KeyCode, var_AE, 1, Nothing)
  loc_13F5714:       If (var_AE = &HFF) Then
  loc_13F575A:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF)
  loc_13F576A:       End If
  loc_13F576A:     End If
  loc_13F576D:   Else
  loc_13F5774:     If (var_AC = CLng(4)) Then
  loc_13F57B7:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F57C0:         Call Proc_73_55_15411C0(KeyCode, var_AE, 0, 4)
  loc_13F57CB:         If (var_AE = &HFF) Then
  loc_13F5811:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F5821:         End If
  loc_13F5821:       End If
  loc_13F5824:     Else
  loc_13F582B:       If (var_AC = CLng(5)) Then
  loc_13F586E:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F5877:           Call Proc_73_55_15411C0(KeyCode, var_AE, 5, 0)
  loc_13F5882:           If (var_AE = &HFF) Then
  loc_13F58C8:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F58D8:           End If
  loc_13F58D8:         End If
  loc_13F58DB:       Else
  loc_13F58E2:         If (var_AC = CLng(6)) Then
  loc_13F5925:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F592E:             Call Proc_73_55_15411C0(KeyCode, var_AE, 6, 0)
  loc_13F5939:             If (var_AE = &HFF) Then
  loc_13F597F:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F598F:             End If
  loc_13F598F:           End If
  loc_13F5992:         Else
  loc_13F5999:           If (var_AC = CLng(7)) Then
  loc_13F59DC:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F59E5:               Call Proc_73_55_15411C0(KeyCode, var_AE, 7, 0)
  loc_13F59F0:               If (var_AE = &HFF) Then
  loc_13F5A36:                 Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F5A46:               End If
  loc_13F5A46:             End If
  loc_13F5A49:           Else
  loc_13F5A50:             If Not (var_AC = CLng(8)) Then
  loc_13F5A5A:               If (var_AC = CLng(&H10)) Then
  loc_13F5A5D:               End If
  loc_13F5A9D:               If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F5AA6:                 Call Proc_73_55_15411C0(KeyCode, var_AE, &HC, 0)
  loc_13F5AB1:                 If (var_AE = &HFF) Then
  loc_13F5AFE:                   Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, CByte((CInt(&H11) + 1)), 0)
  loc_13F5B0E:                 End If
  loc_13F5B0E:               End If
  loc_13F5B11:             Else
  loc_13F5B18:               If (var_AC = CLng(&H11)) Then
  loc_13F5B5B:                 If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F5B64:                   Call Proc_73_55_15411C0(KeyCode, var_AE, 0, 0)
  loc_13F5B6F:                   If (var_AE = &HFF) Then
  loc_13F5BB5:                     Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F5BC5:                   End If
  loc_13F5BC5:                 End If
  loc_13F5BC8:               Else
  loc_13F5BCF:                 If (var_AC = CLng(9)) Then
  loc_13F5C12:                   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F5C1B:                     Call Proc_73_55_15411C0(KeyCode, var_AE, 1, 0)
  loc_13F5C26:                     If (var_AE = &HFF) Then
  loc_13F5C6C:                       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F5C7C:                     End If
  loc_13F5C7C:                   End If
  loc_13F5C7F:                 Else
  loc_13F5C86:                   If (var_AC = CLng(&HC)) Then
  loc_13F5CC9:                     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F5CD2:                       Call Proc_73_55_15411C0(KeyCode, var_AE, &HC, 0)
  loc_13F5CDD:                       If (var_AE = &HFF) Then
  loc_13F5CEB:                         Set var_98 = Me.TxtGrid
  loc_13F5D14:                         Set var_8C = var_98
  loc_13F5D23:                         Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_70, &HF, 0)
  loc_13F5D33:                       End If
  loc_13F5D33:                     End If
  loc_13F5D36:                   Else
  loc_13F5D3D:                     If (var_AC = CLng(&HD)) Then
  loc_13F5D4C:                       Set var_88 = Me.TxtGrid
  loc_13F5D52:                       Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0, 0)
  loc_13F5D5A:                       0 = var_8C.Left
  loc_13F5D71:                       Me.DGRevenue.Left = CVar(var_B8)
  loc_13F5D8B:                       Set var_94 = Me.TxtGrid
  loc_13F5D91:                       Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13F5D99:                       var_98 = var_98.Height
  loc_13F5DAA:                       Set var_88 = Me.TxtGrid
  loc_13F5DB0:                       Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13F5DB8:                       0 = var_8C.Top
  loc_13F5DC4:                       var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13F5DD3:                       Me.DGRevenue.Top = CVar(var_B8)
  loc_13F5DFD:                       Set var_98 = Nothing
  loc_13F5E36:                       Proc_6_69_134A630(Me.DGRevenue, Me.TxtGrid, KeyCode, global_80, Shift, &HFF)
  loc_13F5E54:                       If (CLng(Shift) = &HD) Then
  loc_13F5E5D:                         Call Proc_73_55_15411C0(KeyCode, var_AE, 1, Nothing)
  loc_13F5E68:                         If (var_AE = &HFF) Then
  loc_13F5EB0:                           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &H11)
  loc_13F5EC0:                         End If
  loc_13F5EC0:                       End If
  loc_13F5EC0:                     End If
  loc_13F5EC0:                   End If
  loc_13F5EC0:                 End If
  loc_13F5EC0:               End If
  loc_13F5EC0:             End If
  loc_13F5EC0:           End If
  loc_13F5EC0:         End If
  loc_13F5EC0:       End If
  loc_13F5EC0:       ' Referenced from: 13F5498
  loc_13F5EC0:     End If
  loc_13F5EC0:   End If
  loc_13F5EC0: End If
  loc_13F5EC0: Proc_6_60_E63754(CByte(1), 0, 0)
  loc_13F5EC5: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '11E7130
  'Data Table: 4EFEC4
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_B4 As Integer
  Dim arg_10 As Integer
  Dim var_AC As TextBox
  loc_11E6CA7: Proc_6_58_E06050(arg_10)
  loc_11E6CB8: If (KeyAscii = 0) Then
  loc_11E6CCE:   var_A0 = CLng(Me.FGrid.Col)
  loc_11E6CDE:   If (var_A0 = CLng(3)) Then
  loc_11E6CFD:     If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_11E6D04:       Set var_AC = Me.TxtGrid
  loc_11E6D0F:       var_A4 = "Name"
  loc_11E6D2A:       Proc_6_89_1470B00(var_AC, KeyAscii, global_76, arg_10)
  loc_11E6D39:     End If
  loc_11E6D3C:   Else
  loc_11E6D43:     If Not (var_A0 = CLng(9)) Then
  loc_11E6D4D:       If (var_A0 = CLng(7)) Then
  loc_11E6D50:       End If
  loc_11E6D5A:       Set var_8C = Me.TxtGrid
  loc_11E6D60:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_11E6D7B:       Proc_6_42_129B55C(var_AC, arg_10, 8, 2)
  loc_11E6D8A:     Else
  loc_11E6D91:       If (var_A0 = CLng(5)) Then
  loc_11E6D97:         var_B4 = arg_10
  loc_11E6DA3:         If Not (&H39 > var_B4 > &H31) Then
  loc_11E6DAC:           If Not (var_B4 = &H2B) Then
  loc_11E6DB5:             If Not (var_B4 = &H2D) Then
  loc_11E6DBE:               If Not (var_B4 = 8) Then
  loc_11E6DC7:                 If (var_B4 = &H30) Then
  loc_11E6DCA:                 End If
  loc_11E6DCA:               End If
  loc_11E6DCA:             End If
  loc_11E6DCA:           End If
  loc_11E6DCD:         Else
  loc_11E6DCF:           arg_10 = 0
  loc_11E6DD2:         End If
  loc_11E6DD5:       Else
  loc_11E6DDC:         If (var_A0 = CLng(6)) Then
  loc_11E6DEC:           If ((arg_10 = &H50) Or (arg_10 = &H70)) Then
  loc_11E6DFC:             Set var_8C = Me.TxtGrid
  loc_11E6E02:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Per", arg_10)
  loc_11E6E0A:             var_AC.Text = var_B4
  loc_11E6E18:             arg_10 = 0
  loc_11E6E1E:           Else
  loc_11E6E2B:             If ((arg_10 = &H41) Or (arg_10 = &H5A)) Then
  loc_11E6E3B:               Set var_8C = Me.TxtGrid
  loc_11E6E41:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Amt", arg_10)
  loc_11E6E49:               var_AC.Text = 0
  loc_11E6E57:               arg_10 = 0
  loc_11E6E5D:             Else
  loc_11E6E6A:               Set var_8C = Me.TxtGrid
  loc_11E6E70:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_11E6E78:               var_AC.Text = arg_10
  loc_11E6E86:               arg_10 = 0
  loc_11E6E89:             End If
  loc_11E6E89:           End If
  loc_11E6E8C:         Else
  loc_11E6E93:           If Not (var_A0 = CLng(8)) Then
  loc_11E6E9D:             If (var_A0 = CLng(&HC)) Then
  loc_11E6EA0:             End If
  loc_11E6EAD:             If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_11E6EBD:               Set var_8C = Me.TxtGrid
  loc_11E6EC3:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "No")
  loc_11E6ECB:               var_AC.Text = arg_10
  loc_11E6ED9:               arg_10 = 0
  loc_11E6EDF:             Else
  loc_11E6EEC:               If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_11E6EFC:                 Set var_8C = Me.TxtGrid
  loc_11E6F02:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Yes")
  loc_11E6F0A:                 var_AC.Text = arg_10
  loc_11E6F18:                 arg_10 = 0
  loc_11E6F1E:               Else
  loc_11E6F2B:                 Set var_8C = Me.TxtGrid
  loc_11E6F31:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_11E6F39:                 var_AC.Text = arg_10
  loc_11E6F47:                 arg_10 = 0
  loc_11E6F4A:               End If
  loc_11E6F4A:             End If
  loc_11E6F4D:           Else
  loc_11E6F54:             If (var_A0 = CLng(&H10)) Then
  loc_11E6F80:               If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_11E6F90:                 Set var_8C = Me.TxtGrid
  loc_11E6F96:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Auto")
  loc_11E6F9E:                 var_AC.Text = arg_10
  loc_11E6FAC:                 arg_10 = 0
  loc_11E6FB2:               Else
  loc_11E6FDB:                 If (Ucase(Chr(CLng(arg_10))) = "M") Then
  loc_11E6FEB:                   Set var_8C = Me.TxtGrid
  loc_11E6FF1:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Manual")
  loc_11E6FF9:                   var_AC.Text = arg_10
  loc_11E7007:                   arg_10 = 0
  loc_11E700A:                 End If
  loc_11E700A:               End If
  loc_11E700D:             Else
  loc_11E7014:               If (var_A0 = CLng(&H11)) Then
  loc_11E7040:                 If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_11E7050:                   Set var_8C = Me.TxtGrid
  loc_11E7056:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Yes")
  loc_11E705E:                   var_AC.Text = arg_10
  loc_11E706C:                   arg_10 = 0
  loc_11E7072:                 Else
  loc_11E709B:                   If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_11E70AB:                     Set var_8C = Me.TxtGrid
  loc_11E70B1:                     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "No")
  loc_11E70B9:                     var_AC.Text = arg_10
  loc_11E70C7:                     arg_10 = 0
  loc_11E70CA:                   End If
  loc_11E70CA:                 End If
  loc_11E70CD:               Else
  loc_11E70D4:                 If (var_A0 = CLng(&HD)) Then
  loc_11E70F3:                   If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_11E7120:                     Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_80, arg_10, "Name")
  loc_11E712F:                   End If
  loc_11E712F:                 End If
  loc_11E712F:               End If
  loc_11E712F:             End If
  loc_11E712F:           End If
  loc_11E712F:         End If
  loc_11E712F:       End If
  loc_11E712F:     End If
  loc_11E712F:   End If
  loc_11E712F: End If
  loc_11E712F: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'FCB398
  'Data Table: 4EFEC4
  Dim var_9C As Long
  Dim var_AA As Integer
  Dim Shift As Integer
  loc_FCB1DC: On Error Goto loc_FCB38F
  loc_FCB1F2: var_9C = CLng(Me.FGrid.Col)
  loc_FCB202: If (var_9C = CLng(3)) Then
  loc_FCB228:   If ((Shift <> &HD) And (CBool(Me.DGSundry.Visible) = 0)) Then
  loc_FCB236:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FCB24A:     var_A4 = "Name"
  loc_FCB265:     Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_76, Shift)
  loc_FCB274:   End If
  loc_FCB277: Else
  loc_FCB27E:   If Not (var_9C = CLng(6)) Then
  loc_FCB288:     If Not (var_9C = CLng(8)) Then
  loc_FCB292:       If Not (var_9C = CLng(&HC)) Then
  loc_FCB29C:         If Not (var_9C = CLng(5)) Then
  loc_FCB2A6:           If Not (var_9C = CLng(&H10)) Then
  loc_FCB2B0:             If (var_9C = CLng(&H11)) Then
  loc_FCB2B3:             End If
  loc_FCB2B3:           End If
  loc_FCB2B3:         End If
  loc_FCB2B3:       End If
  loc_FCB2B3:     End If
  loc_FCB2B9:     If (Shift <> &HD) Then
  loc_FCB2C2:       Call TxtGrid_KeyPress(KeyCode)
  loc_FCB2C7:     End If
  loc_FCB2CA:   Else
  loc_FCB2D1:     If (var_9C = CLng(&HD)) Then
  loc_FCB2F7:       If ((Shift <> &HD) And (CBool(Me.DGRevenue.Visible) = 0)) Then
  loc_FCB305:         Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FCB334:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_80, Shift, "Name", &HFF)
  loc_FCB343:       End If
  loc_FCB346:     Else
  loc_FCB34D:       If (var_9C = CLng(5)) Then
  loc_FCB353:         var_AA = Shift
  loc_FCB35F:         If Not (&H39 > var_AA > &H31) Then
  loc_FCB368:           If Not (var_AA = &H2B) Then
  loc_FCB371:             If Not (var_AA = &H2D) Then
  loc_FCB37A:               If Not (var_AA = 8) Then
  loc_FCB383:                 If (var_AA = &H30) Then
  loc_FCB386:                 End If
  loc_FCB386:               End If
  loc_FCB386:             End If
  loc_FCB386:           End If
  loc_FCB389:         Else
  loc_FCB38B:           Shift = 0
  loc_FCB38E:         End If
  loc_FCB38E:       End If
  loc_FCB38E:     End If
  loc_FCB38E:   End If
  loc_FCB38E: End If
  loc_FCB38E: Exit Sub
  loc_FCB38F: ' Referenced from: FCB1DC
  loc_FCB38F: Proc_6_60_E63754(Shift, var_AA, 0, Shift)
  loc_FCB394: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23144
  'Data Table: 4EFEC4
  Dim arg_10 As Integer
  loc_E2312C: If (Cancel = 0) Then
  loc_E23135:   Call Proc_73_55_15411C0(Cancel, var_88)
  loc_E2313E:   arg_10 = Not(var_88)
  loc_E23141: End If
  loc_E23141: Exit Sub
End Sub

Private Sub txtPassword_KeyDown(KeyCode As Integer, Shift As Integer) 'E5A9F0
  'Data Table: 4EFEC4
  loc_E5A9BD: If ((CLng(KeyCode) = &H28) Or (CLng(KeyCode) = &HD)) Then
  loc_E5A9C6:   Proc_6_75_E5335C(KeyCode)
  loc_E5A9CB: End If
  loc_E5A9E0: If ((CLng(KeyCode) = &H26) Or (CLng(KeyCode) = &HD)) Then
  loc_E5A9E9:   Proc_6_76_E533C8(KeyCode, Shift)
  loc_E5A9EE: End If
  loc_E5A9EE: Exit Sub
End Sub

Private Sub txtPassword_Validate(Cancel As Boolean) 'F9CBE4
  'Data Table: 4EFEC4
  Dim unk_4EFEDD As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_B4 As Variant
  loc_F9CAB4: unk_4EFEDD.Execute "Select SundryPassword from Enviro where LogSite_Code='" & MemVar_1F95078 & "'", var_B4, -1
  loc_F9CABF: Set var_88 = var_B8
  loc_F9CAE3: If (var_88.RecordCount > 0) Then
  loc_F9CAF5:   var_B8 = var_88.Fields
  loc_F9CB0E:   var_8C = Proc_6_38_E69628(CVar(var_B8.Item("SundryPassword")))
  loc_F9CB1A: Else
  loc_F9CB1D:   var_8C = vbNullString
  loc_F9CB20: End If
  loc_F9CB73: If CBool(var_B8 Or ((Trim(CVar(Me.txtPassword)) = "aaster") = CVar(Proc_96_19_EF5CE4(var_8C, Trim(CVar(Me.txtPassword)))))) Then
  loc_F9CB82:   Me.CmdPwd.Enabled = True
  loc_F9CB92:   Set var_B8 = Me.TopCtrl1
  loc_F9CB98:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_F9CBA3: Else
  loc_F9CBB0:   Me.txtPassword.Text = vbNullString
  loc_F9CBC1:   Set var_B8 = Me.TopCtrl1
  loc_F9CBC7:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_F9CBDB:   Me.CmdPwd.Enabled = False
  loc_F9CBE3: End If
  loc_F9CBE3: Exit Sub
End Sub

Private Sub cmdCancel_Click() 'E66554
  'Data Table: 4EFEC4
  loc_E6650D: Me.txtPassword.Text = vbNullString
  loc_E66521: Me.PwdFrame.Visible = False
  loc_E66535: Me.CmdCancel.Visible = False
  loc_E66549: Me.CmdChange.Visible = False
  loc_E66551: Exit Sub
End Sub

Private Sub CmdChange_Click() '100B398
  'Data Table: 4EFEC4
  Dim var_88 As Variant
  Dim var_A0 As Variant
  Dim var_90 As TextBox
  Dim unk_4EFEDD As Connection15
  Dim var_124 As String
  Dim var_B0 As Variant
  loc_100B1B9: Me.txtPassword.Text = vbNullString
  loc_100B1C1: On Error Goto loc_100B34D
  loc_100B1CF: Set var_88 = Me.Txt
  loc_100B1D5: Call 0.Method_CmdChange_Click0 (CInt(2))
  loc_100B1E4: var_B0 = Trim(CVar(var_90))
  loc_100B1FE: If (var_B0 = vbNullString) Then
  loc_100B21A:   MsgBox("Password Can't be blank ", &H40, var_B0, var_D0, var_110)
  loc_100B235:   Set var_88 = Me.Txt
  loc_100B23B:   Call 0.Method_CmdChange_Click0 (CInt(2), var_90)
  loc_100B243:   var_90.SetFocus
  loc_100B24F:   Exit Sub
  loc_100B250: End If
  loc_100B26B: If (Me.PwdFrame.Visible = &HFF) Then
  loc_100B27A:   Me.PwdFrame.Visible = False
  loc_100B29D:   If (Me.CmdPwd.Enabled = &HFF) Then
  loc_100B2AC:     Me.CmdPwd.Enabled = False
  loc_100B2B4:   End If
  loc_100B2B4: End If
  loc_100B2BD: unk_4EFEDD.BeginTrans var_118
  loc_100B2E0: Set var_88 = Me.Txt
  loc_100B2E6: Call 0.Method_CmdChange_Click0 (CInt(2), var_90, var_11C, "Update Enviro set SundryPassword='")
  loc_100B2EE: var_A0 = var_90.Text
  loc_100B2FF: var_124 = Proc_96_18_EEA0F0(var_11C, -1)
  loc_100B321: unk_4EFEDD.Execute var_138 & var_124 & "' where SiteCode='" & MemVar_1F95078 & "'", var_90, 
  loc_100B347: unk_4EFEDD.CommitTrans
  loc_100B34C: Exit Sub
  loc_100B34D: ' Referenced from: 100B1C1
  loc_100B355: Set var_88 = Err()
  loc_100B35B: Call 0.Method_arg_2C (var_11C)
  loc_100B366: Call 0.Method_arg_50 (var_120)
  loc_100B382: MsgBox(CVar(var_11C), &H40, CVar(var_120), var_D0, var_110)
  loc_100B395: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E86508
  'Data Table: 4EFEC4
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E864AB: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E864BE: Set var_A8 = Me.TxtGrid
  loc_E864C4: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E864CC: var_AC.Visible = False
  loc_E864E6: Set var_A8 = Me.TxtGrid
  loc_E864EC: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E864F4: var_AC.MaxLength = 0
  loc_E86500: Call Proc_73_59_EBCA98()
  loc_E86505: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E69FC0
  'Data Table: 4EFEC4
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E69F7C: Set var_88 = Me.TxtGrid
  loc_E69F82: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E69F9C: If (var_8C.Visible = 0) Then
  loc_E69FB5:   Me.FGrid.BackColorSel = CVar(CLng(global_60))
  loc_E69FBD: End If
  loc_E69FBD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1EB90
  'Data Table: 4EFEC4
  loc_E1EB87: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1EB8F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E00634
  'Data Table: 4EFEC4
  loc_E0062C: Call Proc_73_54_E3F334()
  loc_E00631: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '123AAE0
  'Data Table: 4EFEC4
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
  loc_123A5B4: Set var_88 = Me.TopCtrl1
  loc_123A5BA: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_123A5FF: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_123A608:   Call Form_KeyDown(arg_C, arg_10)
  loc_123A60D: End If
  loc_123A611: Set var_88 = Me.TopCtrl1
  loc_123A617: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_123A630: If (CStr() = "Browse") Then
  loc_123A633:   Exit Sub
  loc_123A634: End If
  loc_123A651: var_C4 = Me.FGrid.Rows
  loc_123A6A8: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_123A6BE:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_123A6CE:   var_9C = "+{Tab}"
  loc_123A6D4:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_123A6DE:   arg_C = 0
  loc_123A6E4: Else
  loc_123A6EE:   var_B0 = Me.FGrid.Rows
  loc_123A73B:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_123A751:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_123A767:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_123A771:     arg_C = 0
  loc_123A7AB:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_123A7AE:       Call TopCtrl1_UnknownEvent_16()
  loc_123A7B3:     End If
  loc_123A7B3:   End If
  loc_123A7B3: End If
  loc_123A7B9: global_68 = arg_C
  loc_123A7DF: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_123A803: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_123A819:   var_11C = CLng(Me.FGrid.Col)
  loc_123A829:   If (var_11C = CLng(3)) Then
  loc_123A83F:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123A847:     var_F8 = CVar(CLng(3)) 'Long
  loc_123A84C:     var_12C = vbNullString
  loc_123A856:     Set var_A0 = Me.FGrid
  loc_123A85C:     LateIdCallSt
  loc_123A881:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123A889:     var_F8 = CVar(CLng(2)) 'Long
  loc_123A88E:     var_12C = vbNullString
  loc_123A898:     Set var_A0 = Me.FGrid
  loc_123A89E:     LateIdCallSt
  loc_123A8C3:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123A8CB:     var_F8 = CVar(CLng(&HA)) 'Long
  loc_123A8D0:     var_12C = vbNullString
  loc_123A8DA:     Set var_A0 = Me.FGrid
  loc_123A8E0:     LateIdCallSt
  loc_123A905:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123A90D:     var_F8 = CVar(CLng(&HE)) 'Long
  loc_123A912:     var_12C = vbNullString
  loc_123A91C:     Set var_A0 = Me.FGrid
  loc_123A922:     LateIdCallSt
  loc_123A937:   Else
  loc_123A93E:     If Not (var_11C = CLng(1)) Then
  loc_123A948:       If Not (var_11C = CLng(4)) Then
  loc_123A952:         If Not (var_11C = CLng(5)) Then
  loc_123A95C:           If Not (var_11C = CLng(6)) Then
  loc_123A966:             If Not (var_11C = CLng(7)) Then
  loc_123A970:               If Not (var_11C = CLng(8)) Then
  loc_123A97A:                 If Not (var_11C = CLng(9)) Then
  loc_123A984:                   If Not (var_11C = CLng(&HC)) Then
  loc_123A98E:                     If (var_11C = CLng(&H10)) Then
  loc_123A991:                     End If
  loc_123A991:                   End If
  loc_123A991:                 End If
  loc_123A991:               End If
  loc_123A991:             End If
  loc_123A991:           End If
  loc_123A991:         End If
  loc_123A991:       End If
  loc_123A9A4:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123A9BC:       var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_123A9C1:       var_12C = vbNullString
  loc_123A9CB:       Set var_B4 = Me.FGrid
  loc_123A9D1:       LateIdCallSt
  loc_123A9EC:     Else
  loc_123A9F3:       If Not (var_11C = CLng(&HD)) Then
  loc_123A9FD:         If (var_11C = CLng(&H11)) Then
  loc_123AA00:         End If
  loc_123AA13:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123AA1B:         var_F8 = CVar(CLng(&HF)) 'Long
  loc_123AA20:         var_12C = vbNullString
  loc_123AA2A:         Set var_A0 = Me.FGrid
  loc_123AA30:         LateIdCallSt
  loc_123AA55:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123AA5D:         var_F8 = CVar(CLng(&HD)) 'Long
  loc_123AA62:         var_12C = vbNullString
  loc_123AA6C:         Set var_A0 = Me.FGrid
  loc_123AA72:         LateIdCallSt
  loc_123AA97:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123AA9F:         var_F8 = CVar(CLng(&HB)) 'Long
  loc_123AAA4:         var_12C = vbNullString
  loc_123AAAE:         Set var_A0 = Me.FGrid
  loc_123AAB4:         LateIdCallSt
  loc_123AAC6:       End If
  loc_123AAC6:     End If
  loc_123AAC6:   End If
  loc_123AAC6: End If
  loc_123AACC: If (arg_C = &HD) Then
  loc_123AAD4:   global_70 = 0
  loc_123AAD7: End If
  loc_123AAD9: arg_C = 0
  loc_123AADC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10450
  'Data Table: 4EFEC4
  loc_E10441: Call FGrid_UnknownEvent_C()
  loc_E1044B: global_70 = 0
  loc_E1044E: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '1192758
  'Data Table: 4EFEC4
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1192368: Set var_88 = Me.TopCtrl1
  loc_119236E: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1192387: If (CStr() = "Browse") Then
  loc_119238A:   Exit Sub
  loc_119238B: End If
  loc_119238F: Set var_88 = Me.TopCtrl1
  loc_1192395: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11923AE: If (CStr() = "Browse") Then
  loc_11923B1:   Exit Sub
  loc_11923B2: End If
  loc_11923C5: var_A0 = CLng(Me.FGrid.Col)
  loc_11923D5: If Not (var_A0 = CLng(3)) Then
  loc_11923DF:   If Not (var_A0 = CLng(4)) Then
  loc_11923E9:     If Not (var_A0 = CLng(&HD)) Then
  loc_11923F3:       If Not (var_A0 = CLng(6)) Then
  loc_11923FD:         If Not (var_A0 = CLng(8)) Then
  loc_1192407:           If Not (var_A0 = CLng(&HC)) Then
  loc_1192411:             If Not (var_A0 = CLng(&H10)) Then
  loc_119241B:               If (var_A0 = CLng(&H11)) Then
  loc_119241E:               End If
  loc_119241E:             End If
  loc_119241E:           End If
  loc_119241E:         End If
  loc_119241E:       End If
  loc_119241E:     End If
  loc_119241E:   End If
  loc_1192422:   Set var_C4 = Me.FGrid
  loc_1192446:   var_9C = CStr(Ucase(Chr(CLng(Index))))
  loc_1192473:   Set var_B4 = var_C4
  loc_1192485:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_11924AD:   Set var_88 = Me.TxtGrid
  loc_11924B3:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_11924BB:   0 = var_B4.Text
  loc_11924D4:   If (Len(var_9C) <= 1) Then
  loc_11924E3:     Set var_88 = Me.TxtGrid
  loc_11924E9:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_11924F1:     var_CA = var_B4.Text
  loc_1192502:     Set var_B8 = Me.TxtGrid
  loc_1192508:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1192510:     var_C4.Text = var_9C
  loc_1192523:   End If
  loc_119252F:   Set var_88 = Me.TxtGrid
  loc_1192535:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_119254F:   Set var_B8 = Me.TxtGrid
  loc_1192555:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_119255D:   var_C4.SelStart = Len(var_B4.Text)
  loc_1192573: Else
  loc_119257A:   If (var_A0 = CLng(5)) Then
  loc_11925BB:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_11925D0:   Else
  loc_11925D7:     If Not (var_A0 = CLng(1)) Then
  loc_11925E1:       If Not (var_A0 = CLng(9)) Then
  loc_11925EB:         If (var_A0 = CLng(7)) Then
  loc_11925EE:         End If
  loc_11925EE:       End If
  loc_11925F2:       Set var_C4 = Me.FGrid
  loc_1192616:       var_9C = CStr(Ucase(Chr(CLng(Index))))
  loc_119261F:       var_CA = Asc(var_9C)
  loc_1192643:       Set var_B4 = var_C4
  loc_1192655:       Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF, var_CA)
  loc_119267D:       Set var_88 = Me.TxtGrid
  loc_1192683:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, 0, var_CA)
  loc_119268B:       0 = var_B4.Text
  loc_11926A4:       If (Len(var_9C) <= 1) Then
  loc_11926B3:         Set var_88 = Me.TxtGrid
  loc_11926B9:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_11926C1:         Index = var_B4.Text
  loc_11926D2:         Set var_B8 = Me.TxtGrid
  loc_11926D8:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_9C)
  loc_11926E0:         var_C4.Text = 0
  loc_11926F3:       End If
  loc_11926FF:       Set var_88 = Me.TxtGrid
  loc_1192705:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_119271F:       Set var_B8 = Me.TxtGrid
  loc_1192725:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_119272D:       var_C4.SelStart = Len(var_B4.Text)
  loc_1192740:     End If
  loc_1192740:   End If
  loc_1192740: End If
  loc_119274A: If (CLng(Index) <> &HD) Then
  loc_1192752:   global_70 = &HFF
  loc_1192755: End If
  loc_1192755: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) '104B3A8
  'Data Table: 4EFEC4
  Dim var_94 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_11C As MSHFlexGrid
  loc_104B154: Set var_94 = Me.TopCtrl1
  loc_104B15A: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_104B173: If (CStr() = "Browse") Then
  loc_104B176:   Exit Sub
  loc_104B177: End If
  loc_104B17B: Set var_94 = Me.TopCtrl1
  loc_104B181: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_104B19A: If (CStr() = "Edit") Then
  loc_104B19D:   Exit Sub
  loc_104B19E: End If
  loc_104B1BB: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_104B1BE:   Exit Sub
  loc_104B1BF: End If
  loc_104B1D0: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_104B1F2:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_104B22C:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_104B24E:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_104B264:         var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104B26C:         var_E8 = CVar(CLng(1)) 'Long
  loc_104B2BF:         Set var_11C = Me.FGrid
  loc_104B2D7:         Call Proc_73_50_E7ED50(FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)), CInt(Val(CStr(Me.FGrid.TextMatrix)))))
  loc_104B2DF:       Else
  loc_104B2F2:         Me.FGrid.Rows = 1
  loc_104B318:         var_A4 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(1)))) 'String
  loc_104B320:         Set var_11C = Me.FGrid
  loc_104B34D:         Me.FGrid.FixedRows = 1
  loc_104B355:       End If
  loc_104B355:     End If
  loc_104B358:   Else
  loc_104B379:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F8, var_118)
  loc_104B389:   End If
  loc_104B38D:   Set var_94 = Me.FGrid
  loc_104B39E: End If
  loc_104B3A3: Set var_8C = Nothing
  loc_104B3A6: Exit Sub
  loc_104B3A7: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1D060
  'Data Table: 4EFEC4
  loc_E1D057: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1D05F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1D790
  'Data Table: 4EFEC4
  loc_E1D787: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D78F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3F07C
  'Data Table: 4EFEC4
  Dim var_8C As TextBox
  loc_E3F050: Call Proc_73_59_EBCA98()
  loc_E3F060: Set var_88 = Me.TxtGrid
  loc_E3F066: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3F06E: var_8C.Visible = False
  loc_E3F07A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAC4F4
  'Data Table: 4EFEC4
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EAC468: On Error Goto loc_EAC4EE
  loc_EAC48E: Call Proc_73_58_E8BA64(Proc_5_1_100EC1C("ADD", Me))
  loc_EAC499: Call Proc_73_56_F2A064(global_72)
  loc_EAC4A9: Set var_8C = Me.Txt
  loc_EAC4AF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_EAC4B7: var_94.SetFocus
  loc_EAC4D0: Me.LblUser.Caption = vbNullString
  loc_EAC4E5: Me.LblLDt.Caption = vbNullString
  loc_EAC4ED: Exit Sub
  loc_EAC4EE: ' Referenced from: EAC468
  loc_EAC4EE: Proc_6_60_E63754(var_94)
  loc_EAC4F3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EEA608
  'Data Table: 4EFEC4
  loc_EEA54C: On Error Goto loc_EEA601
  loc_EEA586: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EEA5AC:   Call Proc_73_58_E8BA64(Proc_5_1_100EC1C("INI", Me))
  loc_EEA5BF:   Set var_10C = Me.TopCtrl1
  loc_EEA5C5:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_EEA5D6:   Set var_10C = Me.TopCtrl1
  loc_EEA5DC:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_EEA5ED:   Set var_10C = Me.TopCtrl1
  loc_EEA5F3:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_EEA5FB:   Call Proc_73_57_1469BAC(global_72)
  loc_EEA600: End If
  loc_EEA600: Exit Sub
  loc_EEA601: ' Referenced from: EEA54C
  loc_EEA601: Proc_6_60_E63754()
  loc_EEA606: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18B08
  'Data Table: 4EFEC4
  loc_E18AFD: Me.Global.Unload Me
  loc_E18B05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB58E8
  'Data Table: 4EFEC4
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB5858: On Error Goto loc_EB58E2
  loc_EB5872: If (Me.RecordCount <= 0) Then
  loc_EB587B:   var_B8 = "Information"
  loc_EB5896:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB58A6:   Exit Sub
  loc_EB58A7: End If
  loc_EB58AA: MemVar_1F950E4 = "Select (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,VT.Description,Convert(Varchar(11),SP.AppDate,103) As AppDate,SP.SNo,SM.Name As SundryName,SP.DispName,SP.CalcFormula,RM.Name As Revenue,PostYN From (((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Order by VT.Description,SP.AppDate,SP.SNo"
  loc_EB58B4: MemVar_1F95120 = Me
  loc_EB58C1: Proc_6_126_F1C850("2000,1100,500,2000,1800,2000,2000,1000")
  loc_EB58DC: Call 0.Method_arg_2B0 (1)
  loc_EB58E1: Exit Sub
  loc_EB58E2: ' Referenced from: EB5858
  loc_EB58E2: Proc_6_60_E63754(var_B8)
  loc_EB58E7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3ED08
  'Data Table: 4EFEC4
  Dim TopCtrl1_UnknownEvent_10CFF As Double
  loc_E3ECF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3ED00: Call Proc_73_57_1469BAC(global_72)
  loc_E3ED05: Exit Sub
  loc_E3ED06: TopCtrl1_UnknownEvent_10CFF = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3EB88
  'Data Table: 4EFEC4
  Dim TopCtrl1_UnknownEvent_11CFF As Double
  loc_E3EB78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3EB80: Call Proc_73_57_1469BAC(global_72)
  loc_E3EB85: Exit Sub
  loc_E3EB86: TopCtrl1_UnknownEvent_11CFF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3EBE8
  'Data Table: 4EFEC4
  Dim TopCtrl1_UnknownEvent_12CFF As Double
  loc_E3EBD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3EBE0: Call Proc_73_57_1469BAC(global_72)
  loc_E3EBE5: Exit Sub
  loc_E3EBE6: TopCtrl1_UnknownEvent_12CFF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3EE28
  'Data Table: 4EFEC4
  Dim TopCtrl1_UnknownEvent_13CFF As Double
  loc_E3EE18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3EE20: Call Proc_73_57_1469BAC(global_72)
  loc_E3EE25: Exit Sub
  loc_E3EE26: TopCtrl1_UnknownEvent_13CFF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E22F4C
  'Data Table: 4EFEC4
  Dim Me As Recordset15
  loc_E22F33: Me.Requery -1
  loc_E22F43: Me.Requery -1
  loc_E22F48: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1526D7C
  'Data Table: 4EFEC4
  Dim var_8A As Variant
  Dim var_90 As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_130 As Variant
  Dim var_94 As Variant
  Dim var_9C As Variant
  Dim unk_4EFEDD As Connection15
  Dim var_170 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_98 As MSHFlexGrid
  Dim var_160 As Variant
  Dim var_1A8 As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_304 As Variant
  Dim var_324 As Variant
  Dim var_398 As Variant
  Dim var_3B8 As Variant
  Dim var_43C As Variant
  Dim var_45C As Variant
  Dim var_4E0 As Variant
  Dim var_500 As Variant
  Dim var_578 As Variant
  Dim var_598 As Variant
  Dim var_630 As Variant
  Dim var_650 As Variant
  Dim var_6C4 As Variant
  Dim var_6E4 As Variant
  Dim var_758 As Variant
  Dim var_778 As Variant
  Dim var_830 As Variant
  Dim var_8C4 As Variant
  Dim var_9D4 As Variant
  Dim var_9F4 As Variant
  Dim var_AB8 As Variant
  Dim var_AD8 As Variant
  Dim var_1E4 As String
  Dim var_110 As Variant
  Dim var_190 As Variant
  Dim var_1C8 As Variant
  Dim var_220 As Variant
  Dim var_40C As Variant
  Dim var_5E0 As Variant
  Dim var_7BC As Variant
  Dim var_9A4 As Variant
  Dim var_B1C As Variant
  Dim Me As Recordset15
  loc_1525F74: On Error Goto loc_1526D29
  loc_1525F7B: var_86 = CByte(0) 'Byte
  loc_1525F82: Call Proc_73_62_E7D6B4(var_8C)
  loc_1525F8D: If (var_8C = 0) Then
  loc_1525F90:   Exit Sub
  loc_1525F91: End If
  loc_1525F9C: Set var_90 = Me.Txt
  loc_1525FA2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1525FCB: If (Proc_6_27_EA61EC(var_94, "App. Date") = 0) Then
  loc_1525FD5:   Call Txt_GotFocus(CInt(1))
  loc_1525FDA:   Exit Sub
  loc_1525FDB: End If
  loc_1525FDE: Call Proc_73_52_F97B00(var_8C)
  loc_1525FE9: If (var_8C = &HFF) Then
  loc_1525FEC:   Exit Sub
  loc_1525FED: End If
  loc_1526017: For var_B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B0 'Integer
  loc_1526021:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1526029:   var_E0 = CVar(CLng(1)) 'Long
  loc_1526065:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_152606C:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1526074:     var_E0 = CVar(CLng(1)) 'Long
  loc_15260B1:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> CVar(1)) Then
  loc_15260B8:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_15260C0:       var_E0 = CVar(CLng(1)) 'Long
  loc_1526103:       var_130 = "Arrange S.No. and Cal. Formulas" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1526107:       MsgBox(var_130, &H40, "Information", var_170, var_190)
  loc_1526124:       Set var_90 = Me.FGrid
  loc_1526135:       Exit Sub
  loc_1526136:     End If
  loc_152613C:     var_8A = (var_8A + 1)
  loc_152613F:   End If
  loc_1526153:   var_AC = Me.FGrid.Rows
  loc_1526168:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_15261A4:   If (CVar(CLng(&H11)) And (CStr(Me.FGrid.TextMatrix)) = "Yes")) Then
  loc_15261AB:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_15261B3:     var_E0 = CVar(CLng(&HF)) 'Long
  loc_15261CD:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15261D3:     var_110 = Trim(var_100)
  loc_15261EF:     If (var_110 = vbNullString) Then
  loc_152620B:       MsgBox("Define revenue ", &H40, var_100, var_110, var_130)
  loc_152621B:       Exit Sub
  loc_152621C:     End If
  loc_152621C:   End If
  loc_1526220:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1526228:   var_E0 = CVar(CLng(3)) 'Long
  loc_1526264:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_152626B:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1526273:     var_E0 = CVar(CLng(1)) 'Long
  loc_15262AF:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_15262B6:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_15262BE:       var_E0 = CVar(CLng(3)) 'Long
  loc_1526305:       MsgBox("Fill S.NO For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_1526322:       Set var_90 = Me.FGrid
  loc_1526333:       Exit Sub
  loc_1526334:     End If
  loc_1526338:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1526340:     var_E0 = CVar(CLng(4)) 'Long
  loc_152637C:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1526383:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_152638B:       var_E0 = CVar(CLng(3)) 'Long
  loc_15263D2:       MsgBox("Fill Disp. Name For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_15263EF:       Set var_90 = Me.FGrid
  loc_1526400:       Exit Sub
  loc_1526401:     End If
  loc_1526405:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_152640D:     var_E0 = CVar(CLng(6)) 'Long
  loc_1526449:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1526450:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1526458:       var_E0 = CVar(CLng(3)) 'Long
  loc_152649F:       MsgBox("Fill Per/Amt For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_15264BC:       Set var_90 = Me.FGrid
  loc_15264CD:       Exit Sub
  loc_15264CE:     End If
  loc_15264CE:   End If
  loc_15264D1: Next var_B0 'Integer
  loc_15264DF: unk_4EFEDD.BeginTrans var_194
  loc_15264E8: var_86 = CByte(1) 'Byte
  loc_1526511: For var_198 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_198 'Integer
  loc_152651B:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1526523:   var_E0 = CVar(CLng(2)) 'Long
  loc_1526543:   var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_152654B:   var_120 = vbNullString
  loc_1526559:   var_140 = CVar(CLng(var_88)) 'Long
  loc_152656A:   Set var_94 = Me.FGrid
  loc_15265AF:   If CBool(CVar(CLng(1)) And (Trim(CVar(CStr(var_94.TextMatrix)))) <> vbNullString)) Then
  loc_15265B6:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_15265BE:     var_E0 = CVar(CLng(&HB)) 'Long
  loc_15265D8:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15265FA:     If (Trim(var_100) = vbNullString) Then
  loc_1526601:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1526609:       var_E0 = CVar(CLng(&HB)) 'Long
  loc_152660E:       var_120 = "+"
  loc_1526618:       Set var_90 = Me.FGrid
  loc_152661E:       LateIdCallSt
  loc_1526629:     End If
  loc_1526634:     Set var_90 = Me.Txt
  loc_152663A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_90, vbNullString, var_E0, var_C0, var_E0)
  loc_1526649:     Proc_6_7_F26918(var_100, CVar(var_94), var_C0, var_140)
  loc_1526652:     var_D0 = CVar(CLng(var_88)) 'Long
  loc_152665A:     var_F0 = CVar(CLng(2)) 'Long
  loc_1526663:     Set var_98 = Me.FGrid
  loc_1526679:     var_160 = CVar(CLng(var_88)) 'Long
  loc_1526681:     var_1A8 = CVar(CLng(1)) 'Long
  loc_15266AA:     var_250 = CVar(CLng(var_88)) 'Long
  loc_15266B2:     var_270 = CVar(CLng(4)) 'Long
  loc_15266D1:     var_304 = CVar(CLng(var_88)) 'Long
  loc_15266D9:     var_324 = CVar(CLng(5)) 'Long
  loc_15266F8:     var_398 = CVar(CLng(var_88)) 'Long
  loc_1526700:     var_3B8 = CVar(CLng(6)) 'Long
  loc_1526733:     var_43C = CVar(CLng(var_88)) 'Long
  loc_152673B:     var_45C = CVar(CLng(8)) 'Long
  loc_152676E:     var_4E0 = CVar(CLng(var_88)) 'Long
  loc_1526776:     var_500 = CVar(CLng(7)) 'Long
  loc_152679F:     var_578 = CVar(CLng(var_88)) 'Long
  loc_15267A7:     var_598 = CVar(CLng(9)) 'Long
  loc_15267D0:     var_630 = CVar(CLng(var_88)) 'Long
  loc_15267D8:     var_650 = CVar(CLng(&HF)) 'Long
  loc_15267F7:     var_6C4 = CVar(CLng(var_88)) 'Long
  loc_15267FF:     var_6E4 = CVar(CLng(&HA)) 'Long
  loc_152681E:     var_758 = CVar(CLng(var_88)) 'Long
  loc_1526826:     var_778 = CVar(CLng(&HB)) 'Long
  loc_152685C:     var_830 = Me.FGrid.TextMatrix)
  loc_1526883:     var_8C4 = Me.FGrid.TextMatrix)
  loc_15268B1:     Proc_6_7_F26918(var_994, Date, var_8C4, CVar(CLng(&HC)), CVar(CLng(var_88)), var_830, CVar(CLng(&HE)), CVar(CLng(var_88)))
  loc_15268BA:     var_9D4 = CVar(CLng(var_88)) 'Long
  loc_15268C2:     var_9F4 = CVar(CLng(&H10)) 'Long
  loc_15268F5:     var_AB8 = CVar(CLng(var_88)) 'Long
  loc_15268FD:     var_AD8 = CVar(CLng(&H11)) 'Long
  loc_152692C:     var_9C = "Insert Into SundryType (V_Type,AppDate,SundryCode,SNo,DispName," & "CalcFormula,PerOrAmt,RoundOff,SValue,Limit,"
  loc_1526941:     var_1E4 = var_9C & "RevCode,Nature,CalcSign,SysYN,Grp," & "U_Name,U_EntDt,U_AE,AutoManual,SiteCode,PostYN,LogSite_Code) " & " Values ('"
  loc_152697D:     var_220 = CVar(var_1E4 & MemVar_1F95078 & "PURC',") & var_100 & ",'" & CVar(CStr(var_98.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_15269BE:     var_40C = var_220 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) 
  loc_15269F6:     var_5E0 = var_40C & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1526A3B:     var_7BC = var_5E0 & "," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1526A8B:     var_9A4 = var_7BC & "','" & CVar(CStr(var_830)) & "','" & Left(CVar(CStr(var_8C4)), 1) & "'," & "'" & CVar(MemVar_1F950C8) & "'," & var_994 
  loc_1526AC2:     var_B1C = var_9A4 & ",'A','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "','" & CVar(MemVar_1F95070) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1526AEC:     unk_4EFEDD.Execute CStr(var_B1C & "','" & CVar(MemVar_1F95078) & "')"), var_BA0, -1
  loc_1526BCE:   End If
  loc_1526BD1: Next var_198 'Integer
  loc_1526BDC: unk_4EFEDD.CommitTrans
  loc_1526BE5: var_86 = CByte(0) 'Byte
  loc_1526BF4: Set var_90 = Me.Txt
  loc_1526BFA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1526C06: var_100 = CVar(MemVar_1F95078 & "PURC") 'String
  loc_1526C1D: var_AC = Space((6 - Len(MemVar_1F95078 & "PURC")))
  loc_1526C25: var_110 = (var_100 + CVar(var_94))
  loc_1526C29: var_C0 = "**"
  loc_1526C2E: var_130 = (CVar(var_1E4 & MemVar_1F95078 & "PURC',") + var_C0)
  loc_1526C59: var_1C8 = (1 + Format(CVar(var_94), "dd/mm/yyyy"))
  loc_1526C90: Me.Requery -1
  loc_1526CBD: Me.Find "SearchCode ='" & CStr(CVar(var_1E4 & MemVar_1F95078 & "PURC',") & var_100 & ",'" & CVar(CStr(var_98.TextMatrix)))) & "'", 0, 1
  loc_1526CCD: Set var_90 = Me.TopCtrl1
  loc_1526CD3: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_1526CEC: If (CStr(1) = "Add") Then
  loc_1526CEF:   Call TopCtrl1_UnknownEvent_A()
  loc_1526CF4:   Exit Sub
  loc_1526CF5: End If
  loc_1526D0A: var_9C = "INI"
  loc_1526D18: Call Proc_73_58_E8BA64(Proc_5_1_100EC1C(var_9C, Me, global_72), CVar(var_1E4 & MemVar_1F95078 & "PURC',") & var_100)
  loc_1526D23: Call Proc_73_57_1469BAC(var_94)
  loc_1526D28: Exit Sub
  loc_1526D29: ' Referenced from: 1525F74
  loc_1526D32: If (CInt(var_86) = 1) Then
  loc_1526D3B:   unk_4EFEDD.RollbackTrans
  loc_1526D40: End If
  loc_1526D48: Set var_90 = Err()
  loc_1526D4E: Call 0.Method_arg_2C (var_9C)
  loc_1526D67: MsgBox(CVar(var_9C), &H10, var_100, CVar(var_1E4 & MemVar_1F95078 & "PURC',"), CVar(var_1E4 & MemVar_1F95078 & "PURC',") & var_100)
  loc_1526D7A: Exit Sub
End Sub

Private Sub Form_Load() '10FB260
  'Data Table: 4EFEC4
  Dim var_88 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  loc_10FAF20: On Error Goto loc_10FB25A
  loc_10FAF32: Me.LblUser.Left = CDbl(13500)
  loc_10FAF49: Me.LblUser.Top = CDbl(7800)
  loc_10FAF60: Me.LblLDt.Top = CDbl(8160)
  loc_10FAF77: Me.LblLDt.Left = CDbl(13500)
  loc_10FAF86: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10FAF9E: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_10FAFB0: Set var_88 = Me.TopCtrl1
  loc_10FAFB6: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_10FAFC4: Call 0.Method_arg_50 (var_AC)
  loc_10FAFD4: Set var_88 = Me.TopCtrl1
  loc_10FAFDA: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_10FAFF1: Me.CmdPwd.Enabled = False
  loc_10FB015: Me.Recordset15.CursorLocation = 3
  loc_10FB03F: var_BC = CVar("Select Code,Name,Nature,SysYN From SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_10FB049: Me.Open var_BC, CVar(MemVar_1F95044), 3
  loc_10FB05D: CVarUnk
  loc_10FB062: VerifyVarObj
  loc_10FB068: Set var_88 = Me.DGSundry
  loc_10FB06E: LateIdStAd
  loc_10FB098: Me.DGSundry.CursorLocation = 3
  loc_10FB0C2: var_BC = CVar("Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND (FlagType ='PUR' or FlagType  Is Null) and FlagAMR is NULL Order By Name") 'String
  loc_10FB0E0: CVarUnk
  loc_10FB0E5: VerifyVarObj
  loc_10FB0EB: Set var_88 = Me.DGRevenue
  loc_10FB0F1: LateIdStAd
  loc_10FB11B: Me.DGRevenue.CursorLocation = 3
  loc_10FB13E: var_AC = "Select DISTINCT (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,SITEcODE AS SITE_CODE,LOGSITE_CODE From SundryType SP Where V_Type ='" & MemVar_1F95078
  loc_10FB145: var_BC = CVar("Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "PURC' Order By (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))") 'String
  loc_10FB14F: r_BC, CVar(MemVar_1F95044), 3 var_BC, CVar(MemVar_1F95044), 3
  loc_10FB17D: Call Proc_73_58_E8BA64(Proc_5_1_100EC1C("INI", Me, New, 1, -1, Me, New), 1, -1, Me)
  loc_10FB190: Set var_88 = Me.TopCtrl1
  loc_10FB196: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_10FB1A7: Set var_88 = Me.TopCtrl1
  loc_10FB1AD: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_10FB1BE: Set var_88 = Me.TopCtrl1
  loc_10FB1C4: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_10FB1CC: Call Proc_73_49_12AFD34(New, 1)
  loc_10FB1D1: Call Proc_73_57_1469BAC(-1)
  loc_10FB1E9: Me.FGrid.Left = CVar(CDbl(400))
  loc_10FB204: Me.FGrid.Top = CVar(CDbl(1750))
  loc_10FB21F: Me.FGrid.Height = CVar(CDbl(4300))
  loc_10FB23A: Me.FGrid.Width = CVar(CDbl(14000))
  loc_10FB24B: Set var_88 = Me.TopCtrl1
  loc_10FB251: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_10FB259: Exit Sub
  loc_10FB25A: ' Referenced from: 10FAF20
  loc_10FB25A: Proc_6_60_E63754()
  loc_10FB25F: Exit Sub
End Sub

Private Sub Form_Resize() 'ED7998
  'Data Table: 4EFEC4
  Dim var_8C As Label
  loc_ED78F6: Call 0.Method_arg_50 (var_88)
  loc_ED7908: Me.LblFormCaption.Caption = var_88
  loc_ED7921: Me.LblFormCaption.Left = CDbl(0)
  loc_ED792D: Set var_A0 = Me.TopCtrl1
  loc_ED7933: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED7940: Set var_8C = Me.TopCtrl1
  loc_ED7946: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED7960: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED797B: Call 0.Method_arg_100 (var_B8)
  loc_ED798D: Me.LblFormCaption.Width = var_B8
  loc_ED7995: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E571B4
  'Data Table: 4EFEC4
  loc_E5717F: Set global_72 = Nothing
  loc_E57191: Set global_76 = Nothing
  loc_E571A3: Set global_80 = Nothing
  loc_E571AF: MasterFormExit = 0
  loc_E571B2: Exit Sub
End Sub

Private Sub Form_Activate() 'E48940
  'Data Table: 4EFEC4
  loc_E48910: On Error Goto loc_E4893A
  loc_E48917: Set var_88 = Me.TopCtrl1
  loc_E4891D: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E48932: If (CLng(CInt()) = &H2D) Then
  loc_E48935:   Call TopCtrl1_UnknownEvent_15()
  loc_E4893A:   ' Referenced from: E48910
  loc_E4893A: End If
  loc_E4893A: Proc_6_60_E63754()
  loc_E4893F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2730C
  'Data Table: 4EFEC4
  loc_E272F1: If (MasterFormExit = &HFF) Then
  loc_E27301:   Me.Global.Unload Me
  loc_E27309: End If
  loc_E27309: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B8F8
  'Data Table: 4EFEC4
  loc_E2B8D0: On Error Goto loc_E2B8F0
  loc_E2B8E7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2B8EF: Exit Sub
  loc_E2B8F0: ' Referenced from: E2B8D0
  loc_E2B8F0: Proc_6_60_E63754(Shift)
  loc_E2B8F5: Exit Sub
End Sub

Public Function MasterFormExitGet() '4F1160
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4F116F
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '4F117E
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '4F118D
  SearchCode = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E97648
  'Data Table: 4EFEC4
  Dim Me As Recordset15
  loc_E975D6: On Error Goto loc_E9763F
  loc_E975DF: Me.MoveFirst
  loc_E97609: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97631: Proc_5_0_1107AD0(&HFF, Me, global_72)
  loc_E97639: Call Proc_73_57_1469BAC(0)
  loc_E9763E: Exit Sub
  loc_E9763F: ' Referenced from: E975D6
  loc_E9763F: Proc_6_60_E63754(var_A0)
  loc_E97644: Exit Sub
End Sub

Public Sub Proc_73_49_12AFD34
  'Data Table: 4EFEC4
  Dim var_98 As Variant
  Dim var_B0 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_12AF6F0: On Error Goto loc_12AFD2C
  loc_12AF6F9: Call 0.Method_Me8 (var_88)
  loc_12AF705: var_98 = CVar((var_88 - CDbl(&H32))) 'Single
  loc_12AF714: Me.FGrid.Height = var_98
  loc_12AF720: Set var_B0 = Me.FGrid
  loc_12AF72F: var_B0.Cols = &H12
  loc_12AF740: var_B0.Rows = 1
  loc_12AF759: global_60 = CStr(CLng(var_B0.BackColor))
  loc_12AF763: var_98 = 0
  loc_12AF76C: var_D4 = &H64
  loc_12AF778: LateIdCallSt
  loc_12AF783: var_98 = CVar(CLng(1)) 'Long
  loc_12AF788: var_D4 = &H1C2
  loc_12AF794: LateIdCallSt
  loc_12AF79C: var_98 = 0
  loc_12AF7A8: var_D4 = CVar(CLng(1)) 'Long
  loc_12AF7AD: var_F4 = "Sn."
  loc_12AF7B6: LateIdCallSt
  loc_12AF7C1: var_98 = CVar(CLng(1)) 'Long
  loc_12AF7CC: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AF7D3: LateIdCallSt
  loc_12AF7DE: var_98 = CVar(CLng(2)) 'Long
  loc_12AF7E3: var_D4 = 0
  loc_12AF7EF: LateIdCallSt
  loc_12AF7FA: var_98 = CVar(CLng(3)) 'Long
  loc_12AF7FF: var_D4 = &H708
  loc_12AF80B: LateIdCallSt
  loc_12AF813: var_98 = 0
  loc_12AF81F: var_D4 = CVar(CLng(3)) 'Long
  loc_12AF824: var_F4 = "Sundry Name"
  loc_12AF82D: LateIdCallSt
  loc_12AF838: var_98 = CVar(CLng(3)) 'Long
  loc_12AF843: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AF84A: LateIdCallSt
  loc_12AF855: var_98 = CVar(CLng(4)) 'Long
  loc_12AF85A: var_D4 = &H708
  loc_12AF866: LateIdCallSt
  loc_12AF86E: var_98 = 0
  loc_12AF87A: var_D4 = CVar(CLng(4)) 'Long
  loc_12AF87F: var_F4 = "Display Name"
  loc_12AF888: LateIdCallSt
  loc_12AF893: var_98 = CVar(CLng(4)) 'Long
  loc_12AF89E: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AF8A5: LateIdCallSt
  loc_12AF8B0: var_98 = CVar(CLng(5)) 'Long
  loc_12AF8B5: var_D4 = &H9C4
  loc_12AF8C1: LateIdCallSt
  loc_12AF8C9: var_98 = 0
  loc_12AF8D5: var_D4 = CVar(CLng(5)) 'Long
  loc_12AF8DA: var_F4 = "Cal. Formula"
  loc_12AF8E3: LateIdCallSt
  loc_12AF8EE: var_98 = CVar(CLng(5)) 'Long
  loc_12AF8F9: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AF900: LateIdCallSt
  loc_12AF90B: var_98 = CVar(CLng(5)) 'Long
  loc_12AF916: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AF91D: LateIdCallSt
  loc_12AF928: var_98 = CVar(CLng(6)) 'Long
  loc_12AF92D: var_D4 = &H226
  loc_12AF939: LateIdCallSt
  loc_12AF941: var_98 = 0
  loc_12AF94D: var_D4 = CVar(CLng(6)) 'Long
  loc_12AF952: var_F4 = "P/A"
  loc_12AF95B: LateIdCallSt
  loc_12AF966: var_98 = CVar(CLng(6)) 'Long
  loc_12AF971: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AF978: LateIdCallSt
  loc_12AF983: var_98 = CVar(CLng(7)) 'Long
  loc_12AF988: var_D4 = &H320
  loc_12AF994: LateIdCallSt
  loc_12AF99C: var_98 = 0
  loc_12AF9A8: var_D4 = CVar(CLng(7)) 'Long
  loc_12AF9AD: var_F4 = "Value"
  loc_12AF9B6: LateIdCallSt
  loc_12AF9C1: var_98 = CVar(CLng(7)) 'Long
  loc_12AF9CC: var_D4 = CVar(CInt(7)) 'Integer
  loc_12AF9D3: LateIdCallSt
  loc_12AF9DE: var_98 = CVar(CLng(7)) 'Long
  loc_12AF9E9: var_D4 = CVar(CInt(7)) 'Integer
  loc_12AF9F0: LateIdCallSt
  loc_12AF9FB: var_98 = CVar(CLng(8)) 'Long
  loc_12AFA00: var_D4 = 0
  loc_12AFA0C: LateIdCallSt
  loc_12AFA14: var_98 = 0
  loc_12AFA20: var_D4 = CVar(CLng(8)) 'Long
  loc_12AFA25: var_F4 = "ROff"
  loc_12AFA2E: LateIdCallSt
  loc_12AFA39: var_98 = CVar(CLng(8)) 'Long
  loc_12AFA44: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AFA4B: LateIdCallSt
  loc_12AFA56: var_98 = CVar(CLng(&H10)) 'Long
  loc_12AFA5B: var_D4 = &H2B2
  loc_12AFA67: LateIdCallSt
  loc_12AFA6F: var_98 = 0
  loc_12AFA7B: var_D4 = CVar(CLng(&H10)) 'Long
  loc_12AFA80: var_F4 = "A/M"
  loc_12AFA89: LateIdCallSt
  loc_12AFA94: var_98 = CVar(CLng(&H10)) 'Long
  loc_12AFA9F: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AFAA6: LateIdCallSt
  loc_12AFAB1: var_98 = CVar(CLng(9)) 'Long
  loc_12AFAB6: var_D4 = 0
  loc_12AFAC2: LateIdCallSt
  loc_12AFACA: var_98 = 0
  loc_12AFAD6: var_D4 = CVar(CLng(9)) 'Long
  loc_12AFADB: var_F4 = "Limit"
  loc_12AFAE4: LateIdCallSt
  loc_12AFAEF: var_98 = CVar(CLng(9)) 'Long
  loc_12AFAFA: var_D4 = CVar(CInt(7)) 'Integer
  loc_12AFB01: LateIdCallSt
  loc_12AFB0C: var_98 = CVar(CLng(9)) 'Long
  loc_12AFB17: var_D4 = CVar(CInt(7)) 'Integer
  loc_12AFB1E: LateIdCallSt
  loc_12AFB29: var_98 = CVar(CLng(&HA)) 'Long
  loc_12AFB2E: var_D4 = 0
  loc_12AFB3A: LateIdCallSt
  loc_12AFB42: var_98 = 0
  loc_12AFB4E: var_D4 = CVar(CLng(&HA)) 'Long
  loc_12AFB53: var_F4 = "Nature"
  loc_12AFB5C: LateIdCallSt
  loc_12AFB67: var_98 = CVar(CLng(&HA)) 'Long
  loc_12AFB72: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AFB79: LateIdCallSt
  loc_12AFB84: var_98 = CVar(CLng(&HB)) 'Long
  loc_12AFB89: var_D4 = 0
  loc_12AFB95: LateIdCallSt
  loc_12AFB9D: var_98 = 0
  loc_12AFBA9: var_D4 = CVar(CLng(&HB)) 'Long
  loc_12AFBAE: var_F4 = "+/-"
  loc_12AFBB7: LateIdCallSt
  loc_12AFBC2: var_98 = CVar(CLng(&HB)) 'Long
  loc_12AFBCD: var_D4 = CVar(CInt(4)) 'Integer
  loc_12AFBD4: LateIdCallSt
  loc_12AFBDF: var_98 = CVar(CLng(&HE)) 'Long
  loc_12AFBE4: var_D4 = 0
  loc_12AFBF0: LateIdCallSt
  loc_12AFBFB: var_98 = CVar(CLng(&HC)) 'Long
  loc_12AFC00: var_D4 = &H258
  loc_12AFC0C: LateIdCallSt
  loc_12AFC14: var_98 = 0
  loc_12AFC20: var_D4 = CVar(CLng(&HC)) 'Long
  loc_12AFC25: var_F4 = "Bold"
  loc_12AFC2E: LateIdCallSt
  loc_12AFC39: var_98 = CVar(CLng(&HC)) 'Long
  loc_12AFC44: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AFC4B: LateIdCallSt
  loc_12AFC56: var_98 = CVar(CLng(&HD)) 'Long
  loc_12AFC5B: var_D4 = &HC1C
  loc_12AFC67: LateIdCallSt
  loc_12AFC6F: var_98 = 0
  loc_12AFC7B: var_D4 = CVar(CLng(&HD)) 'Long
  loc_12AFC80: var_F4 = "Revenue Charge"
  loc_12AFC89: LateIdCallSt
  loc_12AFC94: var_98 = CVar(CLng(&HD)) 'Long
  loc_12AFC9F: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AFCA6: LateIdCallSt
  loc_12AFCB1: var_98 = CVar(CLng(&HF)) 'Long
  loc_12AFCB6: var_D4 = 0
  loc_12AFCC2: LateIdCallSt
  loc_12AFCCD: var_98 = CVar(CLng(&H11)) 'Long
  loc_12AFCD2: var_D4 = &H258
  loc_12AFCDE: LateIdCallSt
  loc_12AFCE6: var_98 = 0
  loc_12AFCF2: var_D4 = CVar(CLng(&H11)) 'Long
  loc_12AFCF7: var_F4 = "Post"
  loc_12AFD00: LateIdCallSt
  loc_12AFD0B: var_98 = CVar(CLng(&H11)) 'Long
  loc_12AFD16: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AFD1D: LateIdCallSt
  loc_12AFD27: Set var_B0 = Nothing 
  loc_12AFD2B: Exit Sub
  loc_12AFD2C: ' Referenced from: 12AF6F0
  loc_12AFD2C: Proc_6_60_E63754(var_B0, var_D4, var_98, var_B0, var_F4, var_D4, var_98, var_B0)
  loc_12AFD31: Exit Sub
End Sub

Public Sub Proc_73_50_E7ED50
  'Data Table: 4EFEC4
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_E7ED0D: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_E7ED17:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_E7ED1F:   var_D0 = CVar(CLng(1)) 'Long
  loc_E7ED29:   var_9C = CVar(CStr(var_86)) 'String
  loc_E7ED31:   Set var_8C = Me.FGrid
  loc_E7ED37:   LateIdCallSt
  loc_E7ED48: Next var_A0 'Integer
  loc_E7ED4D: Exit Sub
End Sub

Public Sub Proc_73_51_E19014
  'Data Table: 4EFEC4
  loc_E19008: Me.PwdFrame.Visible = False
  loc_E19010: Exit Sub
End Sub

Public Sub Proc_73_52_F97B00
  'Data Table: 4EFEC4
  Dim var_98 As String
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  Dim unk_4EFEDD As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Fields15
  Dim var_140 As Field20
  Dim var_A0 As TextBox
  loc_F979FC: var_98 = "Select Count(*) From SundryType Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (V_Type='" & MemVar_1F95078 & "PURC"
  loc_F97A03: var_D0 = CVar(var_98 & "' And AppDate=") 'String
  loc_F97A11: Set var_9C = Me.Txt
  loc_F97A17: Call 0.Method_Proc_73_52_F97B000 (CInt(1), var_A0, var_D0, var_124, -1)
  loc_F97A26: Proc_6_7_F26918(var_C0, CVar(var_A0), var_128, var_12C)
  loc_F97A2E: var_E0 = 0 & var_C0 
  loc_F97A45: unk_4EFEDD.Execute CStr(var_E0 & ")"), var_140, var_150
  loc_F97A4D:  = var_128.Fields
  loc_F97A55:  = var_12C.Item()
  loc_F97A5D:  = var_140.Value
  loc_F97A96: If (var_150 > 0) Then
  loc_F97ABA:   MsgBox("Duplicate Entry", &H40, "Information", var_D0, var_E0)
  loc_F97AD5:   Set var_9C = Me.Txt
  loc_F97ADB:   Call 0.Method_Proc_73_52_F97B000 (CInt(0))
  loc_F97AE3:   var_A0.SetFocus
  loc_F97AF4:   Proc_73_52_F97B00 = &HFF
  loc_F97AFA: End If
  loc_F97AFA: Proc_73_52_F97B00 = var_A0
End Sub

Public Sub Proc_73_53_115909C(arg_C, arg_10) '115909C
  'Data Table: 4EFEC4
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
  Dim Proc_73_53_115909CCFF As Variant
  loc_1158D00: var_B4 = CVar(CLng(arg_C)) 'Long
  loc_1158D09: var_D4 = CVar(CLng(arg_10)) 'Long
  loc_1158D23: var_98 = CStr(Me.FGrid.TextMatrix))
  loc_1158D44: var_C4 = "+"
  loc_1158D5E: var_118 = Left(var_98, 1)
  loc_1158D66: var_E4 = "-"
  loc_1158D7D: If CBool((Left(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_1158D9E:   MsgBox("Invalid Operator at Starting position of furmula", 0, var_108, var_118, var_128)
  loc_1158DAE:   Proc_73_53_115909C = &HFF
  loc_1158DB4: End If
  loc_1158DCC: var_C4 = "+"
  loc_1158DE6: var_118 = Right(var_98, 1)
  loc_1158DEE: var_E4 = "-"
  loc_1158E05: If CBool((Right(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_1158E26:   MsgBox("Invalid Operator at Ending position of furmula", 0, var_108, var_118, var_128)
  loc_1158E36:   Proc_73_53_115909C = &HFF
  loc_1158E3C: End If
  loc_1158E3E: var_86 = 0
  loc_1158E41: ' Referenced from: 1159090
  loc_1158E4B: If (Len(var_98) > 0) Then
  loc_1158E50:   var_A2 = 0
  loc_1158E65:   var_108 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_1158E7B:   var_F8 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_1158E97:   var_B4 = (InStr(1, var_98, "-", 0) = 0)
  loc_1158EB5:   var_138 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_1158ECB:   var_128 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_1158EE7:   var_E4 = (InStr(1, var_98, "+", 0) = 0)
  loc_1158EEE:   var_168 = IIf(var_E4, var_128, (Right(var_98, 1) = var_C4) Or (IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108) = var_E4))
  loc_1158F1E:   var_178 = (InStr(1, var_98, "+", 0) >= InStr(1, var_98, "-", 0))
  loc_1158F25:   var_188 = IIf(var_178, IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108), var_168)
  loc_1158F2E:   var_9A = CInt(var_188)
  loc_1158F4E:   If (var_9A = 0) Then
  loc_1158F54:     var_A0 = var_98
  loc_1158F5A:   Else
  loc_1158F6C:     var_F8 = Left(var_98, CLng((var_9A - 1)))
  loc_1158F75:     var_A0 = CStr("Invalid Operator at Ending position of furmula")
  loc_1158F7B:   End If
  loc_1158F86:   For var_18C = 1 To (arg_C - 1): var_88 = var_18C 'Integer
  loc_1158F8F:     var_148 = CVar(var_A0) 'String
  loc_1158F97:     var_B4 = CVar(CLng(var_88)) 'Long
  loc_1158FD5:     If (CVar(CLng(1)) = Trim(CVar(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1158FDA:       var_A2 = &HFF
  loc_1158FDD:       Exit For
  loc_1158FE0:     End If
  loc_1158FE3:   Next var_18C 'Integer
  loc_1158FE8:   ' Referenced from: 1158FDD
  loc_1158FEE:   If (var_A2 = 0) Then
  loc_1158FFC:     var_F8 = Trim(var_A0)
  loc_115901F:     var_108 = ("Invalid Row Reference " + var_F8)
  loc_1159028:     var_118 = (CVar(CStr(Me.FGrid.TextMatrix))) + vbCrLf)
  loc_1159031:     var_128 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + "Please Enter Correct No.")
  loc_1159035:     MsgBox(var_128, &H40, "Validation", var_168, var_188)
  loc_1159050:     Proc_73_53_115909C = &HFF
  loc_1159056:   End If
  loc_115905C:   If (var_9A = 0) Then
  loc_1159062:     var_98 = vbNullString
  loc_1159068:   Else
  loc_115907D:     var_108 = Mid(var_98, CLng((var_9A + 1)), var_F8)
  loc_1159086:     var_98 = CStr(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1159090:   End If
  loc_1159090:   GoTo loc_1158E41
  loc_1159093: End If
  loc_1159099: Proc_73_53_115909CCFF = StrComp(, , )
End Sub

Public Sub Proc_73_54_E3F334
  'Data Table: 4EFEC4
  loc_E3F310: Set var_88 = Me.TopCtrl1
  loc_E3F316: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E3F32F: If (CStr() = "Browse") Then
  loc_E3F332:   Exit Sub
  loc_E3F333: End If
  loc_E3F333: Exit Sub
End Sub

Public Sub Proc_73_55_15411C0(arg_C) '15411C0
  'Data Table: 4EFEC4
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
  loc_15401E7: var_A0 = CLng(Me.FGrid.Col)
  loc_15401F7: If (var_A0 = CLng(3)) Then
  loc_154021A:   var_A6 = Me.EOF
  loc_1540248:   Set var_8C = Me.TxtGrid
  loc_154024E:   Call 0.Method_Proc_73_55_15411C00 (arg_C, var_AC, var_B0)
  loc_1540256:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_154026E:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_1540284:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_154028C:     var_E0 = CVar(CLng(3)) 'Long
  loc_1540291:     var_100 = vbNullString
  loc_154029B:     Set var_AC = Me.FGrid
  loc_15402A1:     LateIdCallSt
  loc_15402C6:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15402CE:     var_E0 = CVar(CLng(2)) 'Long
  loc_15402D3:     var_100 = vbNullString
  loc_15402DD:     Set var_AC = Me.FGrid
  loc_15402E3:     LateIdCallSt
  loc_1540308:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540310:     var_E0 = CVar(CLng(&HA)) 'Long
  loc_1540315:     var_100 = vbNullString
  loc_154031F:     Set var_AC = Me.FGrid
  loc_1540325:     LateIdCallSt
  loc_154034A:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540352:     var_E0 = CVar(CLng(&HE)) 'Long
  loc_1540357:     var_100 = vbNullString
  loc_1540361:     Set var_AC = Me.FGrid
  loc_1540367:     LateIdCallSt
  loc_154037C:   Else
  loc_154037F:     Call Proc_73_60_FBFAE4(var_A6, var_AC, var_100, var_E0, var_C0, var_AC, var_100, var_E0)
  loc_154038A:     If (var_A6 = 0) Then
  loc_1540392:       Proc_73_55_15411C0 = 0
  loc_1540398:     End If
  loc_15403AB:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15403B3:     var_F0 = CVar(CLng(3)) 'Long
  loc_15403E6:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_15403EE:     Set var_138 = Me.FGrid
  loc_15403F4:     LateIdCallSt
  loc_1540423:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_154042B:     var_F0 = CVar(CLng(2)) 'Long
  loc_154045E:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1540466:     Set var_138 = Me.FGrid
  loc_154046C:     LateIdCallSt
  loc_154049B:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15404A3:     var_F0 = CVar(CLng(4)) 'Long
  loc_15404D6:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_15404E4:     LateIdCallSt
  loc_154054B:     var_134 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_1540553:     Set var_138 = Me.FGrid
  loc_1540559:     LateIdCallSt
  loc_1540586:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_154058E:     var_F0 = CVar(CLng(&HE)) 'Long
  loc_15405C1:     var_134 = CVar(CStr(Me.Fields.Item("SysYN").Value)) 'String
  loc_15405C9:     Set var_138 = Me.FGrid
  loc_15405CF:     LateIdCallSt
  loc_15405EB:   End If
  loc_15405FE:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540606:   var_E0 = CVar(CLng(&H10)) 'Long
  loc_154060B:   var_100 = "Manual"
  loc_1540615:   Set var_AC = Me.FGrid
  loc_154061B:   LateIdCallSt
  loc_1540646:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_154064B:   var_E0 = 1
  loc_1540658:   Set var_AC = Me.FGrid
  loc_1540669:   var_B0 = CStr(var_AC.TextMatrix))
  loc_1540682:   If (var_B0 <> vbNullString) Then
  loc_1540685:     var_C0 = vbNullString
  loc_154068F:     Set var_8C = Me.FGrid
  loc_15406A0:   End If
  loc_15406A3: Else
  loc_15406AA:   If Not (var_A0 = CLng(1)) Then
  loc_15406B4:     If (var_A0 = CLng(4)) Then
  loc_15406B7:     End If
  loc_15406F3:     Set var_8C = Me.TxtGrid
  loc_15406F9:     Call 0.Method_Proc_73_55_15411C00 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)))
  loc_1540701:     var_E0 = var_AC.Text
  loc_1540709:     var_134 = CVar(var_B0) 'String
  loc_1540711:     Set var_13C = Me.FGrid
  loc_1540717:     LateIdCallSt
  loc_1540738:   Else
  loc_154073F:     If (var_A0 = CLng(5)) Then
  loc_154077F:       Set var_8C = Me.TxtGrid
  loc_1540785:       Call 0.Method_Proc_73_55_15411C00 (arg_C, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_13C, var_134)
  loc_154078D:       var_C0 = var_AC.Text
  loc_1540795:       var_134 = CVar(var_B0) 'String
  loc_154079D:       Set var_13C = Me.FGrid
  loc_15407A3:       LateIdCallSt
  loc_15407E0:       If (CLng(Me.FGrid.Row) = 1) Then
  loc_15407F6:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15407FF:         Set var_AC = Me.FGrid
  loc_154080E:         var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1540813:         var_100 = vbNullString
  loc_154081D:         Set var_114 = Me.FGrid
  loc_1540823:         LateIdCallSt
  loc_1540840:         Proc_73_55_15411C0 = &HFF
  loc_1540846:       End If
  loc_1540853:       Set var_8C = Me.TxtGrid
  loc_1540859:       Call 0.Method_Proc_73_55_15411C00 (arg_C, var_AC, var_B0, var_114, var_100, var_E0, var_C0)
  loc_1540861:       var_13C = var_AC.Text
  loc_1540878:       If (var_B0 <> vbNullString) Then
  loc_15408B6:         Call Proc_73_53_115909C(CInt(CLng(Me.FGrid.Row)), CInt(CLng(Me.FGrid.Col)))
  loc_15408CF:         If (var_13E = &HFF) Then
  loc_15408D4:           var_86 = 0
  loc_15408EA:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15408F3:           Set var_AC = Me.FGrid
  loc_1540902:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1540907:           var_100 = vbNullString
  loc_1540917:           LateIdCallSt
  loc_154092F:           Proc_73_55_15411C0 = Me.FGrid
  loc_1540935:         End If
  loc_1540935:       End If
  loc_1540938:     Else
  loc_154093F:       If Not (var_A0 = CLng(8)) Then
  loc_1540949:         If (var_A0 = CLng(&HC)) Then
  loc_154094C:         End If
  loc_1540988:         Set var_8C = Me.TxtGrid
  loc_154098E:         Call 0.Method_Proc_73_55_15411C00 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_100, CVar(CLng(Me.FGrid.Col)))
  loc_1540996:         var_C0 = var_AC.Text
  loc_15409AC:         LateIdCallSt
  loc_15409D7:         Set var_8C = Me.TxtGrid
  loc_15409DD:         Call 0.Method_Proc_73_55_15411C00 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0), var_86)
  loc_15409E5:         var_13E = var_AC.Text
  loc_15409FC:         If (var_B0 = vbNullString) Then
  loc_1540A12:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540A1B:           Set var_AC = Me.FGrid
  loc_1540A2A:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1540A2F:           var_100 = "No"
  loc_1540A39:           Set var_114 = Me.FGrid
  loc_1540A3F:           LateIdCallSt
  loc_1540A57:         End If
  loc_1540A5A:       Else
  loc_1540A61:         If (var_A0 = CLng(&H10)) Then
  loc_1540A68:           Set var_114 = Me.FGrid
  loc_1540AA0:           Set var_8C = Me.TxtGrid
  loc_1540AA6:           Call 0.Method_Proc_73_55_15411C00 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_1540AAE:           var_E0 = var_AC.Text
  loc_1540AC4:           LateIdCallSt
  loc_1540AEF:           Set var_8C = Me.TxtGrid
  loc_1540AF5:           Call 0.Method_Proc_73_55_15411C00 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_1540AFD:           var_C0 = var_AC.Text
  loc_1540B14:           If (var_B0 = vbNullString) Then
  loc_1540B2A:             var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540B33:             Set var_AC = Me.FGrid
  loc_1540B42:             var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1540B47:             var_100 = "Manual"
  loc_1540B51:             Set var_114 = Me.FGrid
  loc_1540B57:             LateIdCallSt
  loc_1540B6F:           End If
  loc_1540B72:         Else
  loc_1540B79:           If (var_A0 = CLng(&H11)) Then
  loc_1540B80:             Set var_114 = Me.FGrid
  loc_1540BB8:             Set var_8C = Me.TxtGrid
  loc_1540BBE:             Call 0.Method_Proc_73_55_15411C00 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_1540BC6:             var_E0 = var_AC.Text
  loc_1540BDC:             LateIdCallSt
  loc_1540C07:             Set var_8C = Me.TxtGrid
  loc_1540C0D:             Call 0.Method_Proc_73_55_15411C00 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_1540C15:             var_C0 = var_AC.Text
  loc_1540C2C:             If (var_B0 = vbNullString) Then
  loc_1540C42:               var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540C4B:               Set var_AC = Me.FGrid
  loc_1540C5A:               var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1540C5F:               var_100 = "Yes"
  loc_1540C69:               Set var_114 = Me.FGrid
  loc_1540C6F:               LateIdCallSt
  loc_1540C87:             End If
  loc_1540C8A:           Else
  loc_1540C91:             If (var_A0 = CLng(6)) Then
  loc_1540C98:               Set var_114 = Me.FGrid
  loc_1540CD0:               Set var_8C = Me.TxtGrid
  loc_1540CD6:               Call 0.Method_Proc_73_55_15411C00 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_1540CDE:               var_E0 = var_AC.Text
  loc_1540CF4:               LateIdCallSt
  loc_1540D1F:               Set var_8C = Me.TxtGrid
  loc_1540D25:               Call 0.Method_Proc_73_55_15411C00 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_1540D2D:               var_C0 = var_AC.Text
  loc_1540D44:               If (var_B0 = vbNullString) Then
  loc_1540D5A:                 var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540D63:                 Set var_AC = Me.FGrid
  loc_1540D72:                 var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1540D77:                 var_100 = "Amt"
  loc_1540D81:                 Set var_114 = Me.FGrid
  loc_1540D87:                 LateIdCallSt
  loc_1540D9F:               End If
  loc_1540DA2:             Else
  loc_1540DA9:               If Not (var_A0 = CLng(9)) Then
  loc_1540DB3:                 If (var_A0 = CLng(7)) Then
  loc_1540DB6:                 End If
  loc_1540DC2:                 Set var_8C = Me.TxtGrid
  loc_1540DC8:                 Call 0.Method_Proc_73_55_15411C00 (0, var_AC, var_B0, var_114, var_100, var_E0)
  loc_1540DD0:                 var_C0 = var_AC.Text
  loc_1540DF3:                 var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540E0B:                 var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1540E38:                 var_170 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_1540E40:                 Set var_13C = Me.FGrid
  loc_1540E46:                 LateIdCallSt
  loc_1540E70:               Else
  loc_1540E77:                 If (var_A0 = CLng(&HD)) Then
  loc_1540EC8:                   Set var_8C = Me.TxtGrid
  loc_1540ECE:                   Call 0.Method_Proc_73_55_15411C00 (arg_C, var_AC, var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_13C, var_170, 1)
  loc_1540ED6:                   1 = var_AC.Text
  loc_1540EEE:                   If (var_100 Or (var_B0 = vbNullString)) Then
  loc_1540F04:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540F0C:                     var_E0 = CVar(CLng(&HF)) 'Long
  loc_1540F11:                     var_100 = vbNullString
  loc_1540F1B:                     Set var_AC = Me.FGrid
  loc_1540F21:                     LateIdCallSt
  loc_1540F46:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540F4E:                     var_E0 = CVar(CLng(&HD)) 'Long
  loc_1540F53:                     var_100 = vbNullString
  loc_1540F5D:                     Set var_AC = Me.FGrid
  loc_1540F63:                     LateIdCallSt
  loc_1540F88:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540F90:                     var_E0 = CVar(CLng(&HB)) 'Long
  loc_1540F95:                     var_100 = vbNullString
  loc_1540F9F:                     Set var_AC = Me.FGrid
  loc_1540FA5:                     LateIdCallSt
  loc_1540FBA:                   Else
  loc_1540FCD:                     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540FD5:                     var_F0 = CVar(CLng(&HF)) 'Long
  loc_1541008:                     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1541010:                     Set var_138 = Me.FGrid
  loc_1541016:                     LateIdCallSt
  loc_1541045:                     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_154104D:                     var_F0 = CVar(CLng(&HD)) 'Long
  loc_1541080:                     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1541088:                     Set var_138 = Me.FGrid
  loc_154108E:                     LateIdCallSt
  loc_15410E9:                     If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_15410FF:                       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1541107:                       var_E0 = CVar(CLng(&HB)) 'Long
  loc_154110C:                       var_100 = "+"
  loc_1541116:                       Set var_AC = Me.FGrid
  loc_154111C:                       LateIdCallSt
  loc_1541131:                     Else
  loc_1541170:                       If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_1541186:                         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_154118E:                         var_E0 = CVar(CLng(&HB)) 'Long
  loc_1541193:                         var_100 = "-"
  loc_154119D:                         Set var_AC = Me.FGrid
  loc_15411A3:                         LateIdCallSt
  loc_15411B5:                       End If
  loc_15411B5:                     End If
  loc_15411B5:                   End If
  loc_15411B5:                 End If
  loc_15411B5:               End If
  loc_15411B5:             End If
  loc_15411B5:           End If
  loc_15411B5:         End If
  loc_15411B5:       End If
  loc_15411B5:     End If
  loc_15411B5:   End If
  loc_15411B5: End If
  loc_15411BA: Proc_73_55_15411C0 = &HFF
End Sub

Public Sub Proc_73_56_F2A064
  'Data Table: 4EFEC4
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F29F66: Set var_8C = Me.Txt
  loc_F29F6C: Call 0.Method_Proc_73_56_F2A064C (var_8E, var_86)
  loc_F29F7C: For var_92 =  To CByte((var_8E - 1)): CByte(1) = var_92 'Byte
  loc_F29F92:   Set var_8C = Me.Txt
  loc_F29F98:   Call 0.Method_Proc_73_56_F2A0640 (CInt(var_86), var_98)
  loc_F29FA0:   var_98.Text = vbNullString
  loc_F29FBC:   Set var_8C = Me.Txt
  loc_F29FC2:   Call 0.Method_Proc_73_56_F2A0640 (CInt(var_86), var_98)
  loc_F29FCA:   var_98.Tag = vbNullString
  loc_F29FD9: Next var_92 'Byte
  loc_F29FEC: Me.LblDepart.Caption = vbNullString
  loc_F2A007: Me.FGrid.Rows = 1
  loc_F2A024: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F2A02C: Set var_98 = Me.FGrid
  loc_F2A05B: Me.FGrid.FixedRows = 1
  loc_F2A063: Exit Sub
End Sub

Public Sub Proc_73_57_1469BAC
  'Data Table: 4EFEC4
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_D8 As Variant
  Dim unk_4EFEDD As Connection15
  Dim var_88 As Recordset15
  Dim var_120 As Variant
  Dim var_138 As Variant
  Dim var_10C As Variant
  Dim var_128 As String
  Dim var_168 As Variant
  Dim var_124 As TextBox
  Dim var_8A As Integer
  Dim var_148 As Variant
  Dim var_11C As Variant
  loc_1468FFC: On Error Goto loc_1469BA6
  loc_1469016: If (Me.RecordCount > 0) Then
  loc_1469019:   Call Proc_73_56_F2A064()
  loc_146902B:   var_C8 = "Select VT.Description,SP.*,SM.Name As SundryName,RM.Name As RevName,D.Name As Department From ((((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join Depart D On VT.RestCode=D.Code) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Where SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)='"
  loc_1469074:   unk_4EFEDD.Execute CStr(var_C8 & Me.Fields.Item("SearchCode").Value & "' Order By SP.SNo"), var_11C, -1
  loc_146907F:   Set var_88 = var_120
  loc_14690D3:   var_120 = var_88.Fields
  loc_146913C:   var_188 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_120.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1469181:   Me.LblUser.Caption = CStr(var_120 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_188)))
  loc_14691FB:   var_124 = var_88.Fields.Item("U_AE")
  loc_146925C:   var_188 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_124)) = "E"), "Last Update : ", "entdt : "))
  loc_14692A1:   Me.LblLDt.Caption = CStr(var_188 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_14692ED:   If (var_88.RecordCount > 0) Then
  loc_1469329:     If (Proc_6_38_E69628(CVar(var_88.Fields.Item("Department"))) = vbNullString) Then
  loc_146932C:     End If
  loc_1469361:     Me.LblDepart.Caption = Proc_6_38_E69628(CVar(var_88.Fields.Item("Department")))
  loc_14693C5:     Set var_120 = Me.Txt
  loc_14693CB:     Call 0.Method_Proc_73_57_1469BAC0 (CInt(1), var_124, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/mm/yyyy")))
  loc_14693D3:     var_124.Text = 1
  loc_14693EF:     var_8A = 1
  loc_1469405:     Me.FGrid.Rows = 1
  loc_146940D:     ' Referenced from: 1469B1D
  loc_146941C:     If Not(var_88.EOF) Then
  loc_146941F:       var_A4 = vbNullString
  loc_1469429:       Set var_94 = Me.FGrid
  loc_146943E:       Set var_1E8 = Me.FGrid
  loc_1469445:       var_C8 = CVar(CLng(var_8A)) 'Long
  loc_146944D:       var_10C = CVar(CLng(1)) 'Long
  loc_146947D:       var_D8 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1469484:       LateIdCallSt
  loc_14694D3:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1E8, var_D8, CVar(CLng(2)))) 'String
  loc_14694DA:       LateIdCallSt
  loc_1469525:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1E8, var_D8)) 'String
  loc_146952C:       LateIdCallSt
  loc_1469577:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1E8, var_D8)) 'String
  loc_146957E:       LateIdCallSt
  loc_1469594:       var_C8 = CVar(CLng(var_8A)) 'Long
  loc_14695D0:       LateIdCallSt
  loc_146960A:       var_128 = Proc_6_38_E69628(CVar(var_88.Fields.Item("PerOrAmt")), var_1E8, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_C8, var_1E8, var_D8)), var_C8)
  loc_1469611:       var_138 = CVar(CLng(var_8A)) 'Long
  loc_1469619:       var_168 = CVar(CLng(6)) 'Long
  loc_146964F:       var_148 = CVar(CStr(IIf((var_128 = "P"), "Per", "Amt"))) 'String
  loc_1469656:       LateIdCallSt
  loc_14696D3:       LateIdCallSt
  loc_1469711:       var_128 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoundOff")), var_1E8, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_1469718:       var_138 = CVar(CLng(var_8A)) 'Long
  loc_1469720:       var_168 = CVar(CLng(8)) 'Long
  loc_1469756:       var_148 = CVar(CStr(IIf((var_128 = "Y"), "Yes", "No"))) 'String
  loc_146975D:       LateIdCallSt
  loc_14697DA:       LateIdCallSt
  loc_1469829:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_1469830:       LateIdCallSt
  loc_146987B:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(var_8A)), var_1E8, var_D8, CVar(CLng(9)))) 'String
  loc_1469882:       LateIdCallSt
  loc_14698D4:       LateIdCallSt
  loc_146990E:       var_128 = Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP")), var_1E8, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_1E8, var_D8)), CVar(CLng(var_8A)))
  loc_146995A:       LateIdCallSt
  loc_14699B4:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(&HF)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(IIf((var_128 = "Y"), "Yes", "No"))), CVar(CLng(&HC)))) 'String
  loc_14699BB:       LateIdCallSt
  loc_1469A06:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevName")), CVar(CLng(&HD)), CVar(CLng(var_8A)), var_1E8, var_D8)) 'String
  loc_1469A0D:       LateIdCallSt
  loc_1469A4E:       var_138 = CVar(CLng(var_8A)) 'Long
  loc_1469A56:       var_168 = CVar(CLng(&H10)) 'Long
  loc_1469A83:       var_11C = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("AutoManual")), var_1E8, "Auto", CVar(CLng(var_8A))) = "A"), "Auto", "Manual")
  loc_1469A8C:       var_148 = CVar(CStr(var_11C)) 'String
  loc_1469A93:       LateIdCallSt
  loc_1469AED:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PostYn")), CVar(CLng(&H11)), CVar(CLng(var_8A)), var_1E8, var_148, var_168)) 'String
  loc_1469AF4:       LateIdCallSt
  loc_1469B08:       Set var_1E8 = Nothing 
  loc_1469B12:       var_8A = (var_8A + 1)
  loc_1469B18:       var_88.MoveNext
  loc_1469B1D:       GoTo loc_146940D
  loc_1469B20:     End If
  loc_1469B20:   End If
  loc_1469B20:   var_A4 = 0
  loc_1469B2A:   Set var_94 = Me.FGrid
  loc_1469B57:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1469B5A:     var_A4 = "1"
  loc_1469B64:     Set var_94 = Me.FGrid
  loc_1469B75:   End If
  loc_1469B75:   var_A4 = 1
  loc_1469B88:   Me.FGrid.FixedRows = var_A4
  loc_1469B93: Else
  loc_1469B93:   Call Proc_73_56_F2A064(FGrid.DispID_10000, var_A4, FGrid.DispID_2E, var_A4, var_8A, var_1E8)
  loc_1469B98: End If
  loc_1469B98: Call Proc_73_59_EBCA98(var_D8, var_138, var_1E8)
  loc_1469BA2: Set var_88 = Nothing
  loc_1469BA5: Exit Sub
  loc_1469BA6: ' Referenced from: 1468FFC
  loc_1469BA6: Proc_6_60_E63754(var_148, var_168)
  loc_1469BAB: Exit Sub
End Sub

Public Sub Proc_73_58_E8BA64(arg_C) 'E8BA64
  'Data Table: 4EFEC4
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_E8B9FE: Set var_8C = Me.Txt
  loc_E8BA04: Call 0.Method_Proc_73_58_E8BA64C (var_8E, var_86)
  loc_E8BA14: For var_92 =  To CByte((var_8E - 1)): CByte(1) = var_92 'Byte
  loc_E8BA2A:   Set var_8C = Me.Txt
  loc_E8BA30:   Call 0.Method_Proc_73_58_E8BA640 (CInt(var_86), var_98)
  loc_E8BA38:   var_98.Enabled = arg_C
  loc_E8BA47: Next var_92 'Byte
  loc_E8BA5A: Me.Frame1.Enabled = arg_C
  loc_E8BA62: Exit Sub
  loc_E8BA63: Result  End Sub 'Currency
End Sub

Public Sub Proc_73_59_EBCA98
  'Data Table: 4EFEC4
  loc_EBCA10: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EBCA22:   Me.DGVType.Visible = False
  loc_EBCA2A: End If
  loc_EBCA46: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_EBCA58:   Me.DGRevenue.Visible = False
  loc_EBCA60: End If
  loc_EBCA7C: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_EBCA8E:   Me.DGSundry.Visible = False
  loc_EBCA96: End If
  loc_EBCA96: Exit Sub
End Sub

Public Sub Proc_73_60_FBFAE4
  'Data Table: 4EFEC4
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  Dim Proc_73_60_FBFAE4CFE As Double
  loc_FBF967: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_FBF96C:   var_92 = 3 'Byte
  loc_FBF970: End If
  loc_FBF979: Set var_98 = Me.TxtGrid
  loc_FBF97F: Call 0.Method_Proc_73_60_FBFAE40 (0, var_B0)
  loc_FBF9A2: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBF9D6: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBF9FA:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBF9FD:     GoTo loc_FBFACF
  loc_FBFA00:   End If
  loc_FBFA04:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBFA2E:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBFA38:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBFA6D:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBFA91:     MsgBox("Duplicate Sundry Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBFAAA:     Set var_98 = Me.TxtGrid
  loc_FBFAB0:     Call 0.Method_Proc_73_60_FBFAE40 (0, var_B0, CVar(CLng(var_92)))
  loc_FBFAB8:     var_B0.SetFocus
  loc_FBFAC9:     Proc_73_60_FBFAE4 = 0
  loc_FBFACF:     ' Referenced from: FBF9FD
  loc_FBFACF:   End If
  loc_FBFAD2: Next var_D4 'Integer
  loc_FBFAE2: Proc_73_60_FBFAE4CFE = 
End Sub

Public Sub Proc_73_61_12DCFF0
  'Data Table: 4EFEC4
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_8A As Integer
  Dim var_B4 As String
  Dim var_B8 As String
  Dim unk_4EFEDD As Connection15
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
  loc_12DC944: On Error Goto loc_12DCFEA
  loc_12DC954: Set var_B0 = Me.FGrid
  loc_12DC95A: var_B0.Rows = 1
  loc_12DC964: var_8A = 1
  loc_12DC97B: var_B4 = "SELECT SF.*,SM.Name as SundryName" & " FROM SundryTypeFix SF inner JOIN SundryMast SM ON (SF.SundryCode = SM.Code and SF.LogSite_Code=Sm.LogSite_Code) where (SF.LOGSITE_CODE='"
  loc_12DC999: unk_4EFEDD.Execute var_B4 & MemVar_1F95078 & "')" & " Order By SNo ", var_D0, -1
  loc_12DC9A4: Set var_88 = var_B0
  loc_12DC9CC: If (var_88.RecordCount > 0) Then
  loc_12DC9CF:   ' Referenced from: 12DCF46
  loc_12DC9DE:   If Not(var_88.EOF) Then
  loc_12DC9E1:     var_9C = vbNullString
  loc_12DC9EB:     Set var_B0 = Me.FGrid
  loc_12DCA00:     Set var_DC = Me.FGrid
  loc_12DCA07:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12DCA0F:     var_100 = CVar(CLng(1)) 'Long
  loc_12DCA3F:     var_120 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_12DCA46:     LateIdCallSt
  loc_12DCA95:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_DC, var_120, CVar(CLng(2)))) 'String
  loc_12DCA9C:     LateIdCallSt
  loc_12DCAE7:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_DC, var_120)) 'String
  loc_12DCAEE:     LateIdCallSt
  loc_12DCB39:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_DC, var_120)) 'String
  loc_12DCB40:     LateIdCallSt
  loc_12DCB56:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12DCB92:     LateIdCallSt
  loc_12DCBCC:     var_B8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("PerOrAmt")), var_DC, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_AC, var_DC, var_120)), var_AC)
  loc_12DCBD3:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12DCBDB:     var_160 = CVar(CLng(6)) 'Long
  loc_12DCC11:     var_180 = CVar(CStr(IIf((var_B8 = "P"), "Per", "Amt"))) 'String
  loc_12DCC18:     LateIdCallSt
  loc_12DCC95:     LateIdCallSt
  loc_12DCCD3:     var_B8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoundOff")), var_DC, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_12DCCDA:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12DCCE2:     var_160 = CVar(CLng(8)) 'Long
  loc_12DCD18:     var_180 = CVar(CStr(IIf((var_B8 = "Y"), "Yes", "No"))) 'String
  loc_12DCD1F:     LateIdCallSt
  loc_12DCD9C:     LateIdCallSt
  loc_12DCDEB:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_DC, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_12DCDF2:     LateIdCallSt
  loc_12DCE3D:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_DC, var_120, CVar(CLng(9)))) 'String
  loc_12DCE44:     LateIdCallSt
  loc_12DCE85:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12DCE8D:     var_160 = CVar(CLng(&HC)) 'Long
  loc_12DCEC3:     var_180 = CVar(CStr(IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP")), var_DC, "Yes", CVar(CLng(var_8A))) = "Y"), "Yes", "No"))) 'String
  loc_12DCECA:     LateIdCallSt
  loc_12DCEEF:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_12DCEF7:     var_F0 = CVar(CLng(&H10)) 'Long
  loc_12DCEFC:     var_110 = "Manual"
  loc_12DCF05:     LateIdCallSt
  loc_12DCF11:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_12DCF19:     var_F0 = CVar(CLng(&H11)) 'Long
  loc_12DCF1E:     var_110 = "Yes"
  loc_12DCF27:     LateIdCallSt
  loc_12DCF31:     Set var_DC = Nothing 
  loc_12DCF3B:     var_8A = (var_8A + 1)
  loc_12DCF41:     var_88.MoveNext
  loc_12DCF46:     GoTo loc_12DC9CF
  loc_12DCF49:   End If
  loc_12DCF5C:   Me.FGrid.FixedRows = 1
  loc_12DCF64: End If
  loc_12DCF6A: If (var_8A = 1) Then
  loc_12DCF80:   Me.FGrid.Rows = 1
  loc_12DCF9D:   var_120 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_12DCFA5:   Set var_E0 = Me.FGrid
  loc_12DCFC1:   var_9C = 1
  loc_12DCFD4:   Me.FGrid.FixedRows = var_9C
  loc_12DCFDC: End If
  loc_12DCFDC: Call Proc_73_59_EBCA98(FGrid.DispID_10000, var_120, var_8A, var_DC, var_110, var_F0, var_9C)
  loc_12DCFE6: Set var_88 = Nothing
  loc_12DCFE9: Exit Sub
  loc_12DCFEA: ' Referenced from: 12DC944
  loc_12DCFEA: Proc_6_60_E63754(var_DC, var_110, var_F0)
  loc_12DCFEF: Exit Sub
End Sub

Public Sub Proc_73_62_E7D6B4
  'Data Table: 4EFEC4
  loc_E7D675: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A0 'Integer
  loc_E7D688:   Call Proc_73_53_115909C(var_88, CInt(5))
  loc_E7D693:   If (var_A4 = &HFF) Then
  loc_E7D69B:     Proc_73_62_E7D6B4 = 0
  loc_E7D6A1:   End If
  loc_E7D6A4: Next var_A0 'Integer
  loc_E7D6AE: Proc_73_62_E7D6B4 = &HFF
End Sub
