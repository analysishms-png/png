VERSION 5.00
Begin VB.Form HallSundry
  Caption = "Outlet Bill Sundry Setting"
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11625
    Height = 450
    TabIndex = 14
  End
  Begin TextBox txtPassword
    Left = 2625
    Top = 7380
    Width = 1365
    Height = 285
    TabIndex = 9
    PasswordChar = "#"
  End
  Begin Frame Frame1
    Left = 11040
    Top = 1815
    Width = 555
    Height = 2040
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Begin CommandButton CmdUp
      Caption = "á"
      BackColor = &H808080&
      Left = 90
      Top = 270
      Width = 390
      Height = 630
      TabIndex = 8
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
      BackColor = &H808080&
      Left = 83
      Top = 1125
      Width = 390
      Height = 630
      TabIndex = 7
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
    Left = 11520
    Top = 1290
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin DataGrid DGRevenue
    Left = 11550
    Top = 600
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2265
    Top = 1275
    Width = 1425
    Height = 255
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
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
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
    Left = 315
    Top = 1605
    Width = 13290
    Height = 4740
    TabIndex = 2
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 13
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
    Top = 8760
    Width = 2430
    Height = 285
    TabIndex = 12
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
    Top = 8430
    Width = 2520
    Height = 255
    TabIndex = 11
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
    Caption = "Password"
    Index = 2
    ForeColor = &H80&
    Left = 1605
    Top = 7410
    Width = 915
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
  Begin Label LblName
    Caption = "Applicable Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 690
    Top = 1245
    Width = 1515
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
End

Attribute VB_Name = "HallSundry"

Private global_72 As Integer
Private global_74 As Integer
Private MasterFormExit As Integer

Private Sub txtPassword_KeyDown(KeyCode As Integer, Shift As Integer) 'E5A018
  'Data Table: 4BC9BC
  loc_E59FE5: If ((CLng(KeyCode) = &H28) Or (CLng(KeyCode) = &HD)) Then
  loc_E59FEE:   Proc_6_75_E5335C(KeyCode)
  loc_E59FF3: End If
  loc_E5A008: If ((CLng(KeyCode) = &H26) Or (CLng(KeyCode) = &HD)) Then
  loc_E5A011:   Proc_6_76_E533C8(KeyCode, Shift)
  loc_E5A016: End If
  loc_E5A016: Exit Sub
End Sub

Private Sub txtPassword_Validate(Cancel As Boolean) 'E778C4
  'Data Table: 4BC9BC
  loc_E7788E: If (Trim(CVar(Me.txtPassword)) = "india") Then
  loc_E77899:   Set var_D8 = Me.TopCtrl1
  loc_E7789F:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_E778AA: Else
  loc_E778B3:   Set var_D8 = Me.TopCtrl1
  loc_E778B9:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_E778C1: End If
  loc_E778C1: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11E3248
  'Data Table: 4BC9BC
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_11E2DD0: Call Proc_119_60_E84F60()
  loc_11E2DE8: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11E2E03: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E2E0C: Set var_BC = Me.FGrid
  loc_11E2E42: Set var_104 = Me.TxtGrid
  loc_11E2E48: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_11E2E50: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_11E2E81: var_110 = CLng(Me.FGrid.Col)
  loc_11E2E91: If (var_110 = CLng(3)) Then
  loc_11E2EA3:   Set var_A8 = Me.TxtGrid
  loc_11E2EA9:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E2EB1:   var_BC.MaxLength = var_110
  loc_11E2EFE:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E2F01:     Exit Sub
  loc_11E2F02:   End If
  loc_11E2F15:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E2F1D:   var_DC = CVar(CLng(3)) 'Long
  loc_11E2F50:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E2F59:     Me.MoveFirst
  loc_11E2F71:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E2F79:     var_DC = CVar(CLng(2)) 'Long
  loc_11E2F82:     Set var_BC = Me.FGrid
  loc_11E2F99:     Proc_6_17_EAAE40(var_128, CVar(CStr(var_BC.TextMatrix))), var_DC, var_94)
  loc_11E2FC2:     Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E2FF2:     If (Me.EOF = &HFF) Then
  loc_11E2FFB:       Me.MoveFirst
  loc_11E3000:     End If
  loc_11E3000:   End If
  loc_11E3003: Else
  loc_11E300A:   If Not (var_110 = CLng(7)) Then
  loc_11E3014:     If (var_110 = CLng(9)) Then
  loc_11E3017:     End If
  loc_11E3026:     Set var_A8 = Me.TxtGrid
  loc_11E302C:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB, var_158)
  loc_11E3034:     var_BC.MaxLength = var_DC
  loc_11E3049:     If (global_74 = 0) Then
  loc_11E3054:       var_10C = "{Home}+{End}"
  loc_11E305A:       Proc_303_0_FBACC8(CStr("Code=" & var_128), 0)
  loc_11E3062:     End If
  loc_11E3065:   Else
  loc_11E306C:     If (var_110 = CLng(4)) Then
  loc_11E307E:       Set var_A8 = Me.TxtGrid
  loc_11E3084:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E308C:       var_BC.MaxLength = var_94
  loc_11E309B:     Else
  loc_11E30A2:       If (var_110 = CLng(5)) Then
  loc_11E30B4:         Set var_A8 = Me.TxtGrid
  loc_11E30BA:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E30C2:         var_BC.MaxLength = &H32
  loc_11E30D1:       Else
  loc_11E30D8:         If (var_110 = CLng(&HD)) Then
  loc_11E30EA:           Set var_A8 = Me.TxtGrid
  loc_11E30F0:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E30F8:           var_BC.MaxLength = &H32
  loc_11E3145:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E3148:             Exit Sub
  loc_11E3149:           End If
  loc_11E315C:           var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E3164:           var_DC = CVar(CLng(&HD)) 'Long
  loc_11E3197:           If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E31A0:             Me.MoveFirst
  loc_11E31E0:             Proc_6_17_EAAE40(var_128, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)))
  loc_11E3209:             Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E3239:             If (Me.EOF = &HFF) Then
  loc_11E3242:               Me.MoveFirst
  loc_11E3247:             End If
  loc_11E3247:           End If
  loc_11E3247:         End If
  loc_11E3247:       End If
  loc_11E3247:     End If
  loc_11E3247:   End If
  loc_11E3247: End If
  loc_11E3247: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13BBA7C
  'Data Table: 4BC9BC
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C8 As Variant
  Dim var_94 As DataGrid
  loc_13BB10C: On Error Goto loc_13BBA76
  loc_13BB119: If (CLng(Shift) = &H1B) Then
  loc_13BB129:   Set var_88 = Me.TxtGrid
  loc_13BB12F:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13BB149:   Set var_94 = Me.TxtGrid
  loc_13BB14F:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_13BB157:   var_98.Text = var_8C.Tag
  loc_13BB173:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13BB178:   Call Proc_119_60_E84F60(arg_14)
  loc_13BB181:   Set var_88 = Me.FGrid
  loc_13BB19E:   Set var_88 = Me.TxtGrid
  loc_13BB1A4:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13BB1AC:   var_8C.Visible = False
  loc_13BB1B8:   Exit Sub
  loc_13BB1B9: End If
  loc_13BB1CC: var_AC = CLng(Me.FGrid.Col)
  loc_13BB1DC: If (var_AC = CLng(1)) Then
  loc_13BB1E9:   If (CLng(Shift) = &HD) Then
  loc_13BB1F2:     Call Proc_119_56_1506DC8(KeyCode, var_AE)
  loc_13BB1FD:     If (var_AE = &HFF) Then
  loc_13BB20B:       Set var_98 = Me.TxtGrid
  loc_13BB234:       Set var_8C = var_98
  loc_13BB243:       Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_74, &HF)
  loc_13BB253:     End If
  loc_13BB253:   End If
  loc_13BB256: Else
  loc_13BB25D:   If (var_AC = CLng(3)) Then
  loc_13BB26C:     Set var_88 = Me.TxtGrid
  loc_13BB272:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0)
  loc_13BB27A:     3 = var_8C.Left
  loc_13BB291:     Me.DGSundry.Left = CVar(var_B8)
  loc_13BB2AB:     Set var_94 = Me.TxtGrid
  loc_13BB2B1:     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13BB2B9:     0 = var_98.Height
  loc_13BB2CA:     Set var_88 = Me.TxtGrid
  loc_13BB2D0:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13BB2D8:     var_AC = var_8C.Top
  loc_13BB2E4:     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13BB2F3:     Me.DGSundry.Top = CVar(var_B8)
  loc_13BB31D:     Set var_98 = Nothing
  loc_13BB356:     Proc_6_69_134A630(Me.DGSundry, Me.TxtGrid, KeyCode, global_84, Shift, &HFF)
  loc_13BB374:     If (CLng(Shift) = &HD) Then
  loc_13BB37D:       Call Proc_119_56_1506DC8(KeyCode, var_AE, 1, Nothing)
  loc_13BB388:       If (var_AE = &HFF) Then
  loc_13BB3CE:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF)
  loc_13BB3DE:       End If
  loc_13BB3DE:     End If
  loc_13BB3E1:   Else
  loc_13BB3E8:     If (var_AC = CLng(4)) Then
  loc_13BB42B:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BB434:         Call Proc_119_56_1506DC8(KeyCode, var_AE, 0, 4)
  loc_13BB43F:         If (var_AE = &HFF) Then
  loc_13BB485:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BB495:         End If
  loc_13BB495:       End If
  loc_13BB498:     Else
  loc_13BB49F:       If (var_AC = CLng(5)) Then
  loc_13BB4E2:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BB4EB:           Call Proc_119_56_1506DC8(KeyCode, var_AE, 5, 0)
  loc_13BB4F6:           If (var_AE = &HFF) Then
  loc_13BB53C:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BB54C:           End If
  loc_13BB54C:         End If
  loc_13BB54F:       Else
  loc_13BB556:         If (var_AC = CLng(6)) Then
  loc_13BB599:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BB5A2:             Call Proc_119_56_1506DC8(KeyCode, var_AE, 6, 0)
  loc_13BB5AD:             If (var_AE = &HFF) Then
  loc_13BB5F3:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BB603:             End If
  loc_13BB603:           End If
  loc_13BB606:         Else
  loc_13BB60D:           If (var_AC = CLng(7)) Then
  loc_13BB650:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BB659:               Call Proc_119_56_1506DC8(KeyCode, var_AE, 7, 0)
  loc_13BB664:               If (var_AE = &HFF) Then
  loc_13BB6AA:                 Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BB6BA:               End If
  loc_13BB6BA:             End If
  loc_13BB6BD:           Else
  loc_13BB6C4:             If Not (var_AC = CLng(8)) Then
  loc_13BB6CE:               If (var_AC = CLng(&H10)) Then
  loc_13BB6D1:               End If
  loc_13BB711:               If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BB71A:                 Call Proc_119_56_1506DC8(KeyCode, var_AE, &HC, 0)
  loc_13BB725:                 If (var_AE = &HFF) Then
  loc_13BB76B:                   Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BB77B:                 End If
  loc_13BB77B:               End If
  loc_13BB77E:             Else
  loc_13BB785:               If (var_AC = CLng(9)) Then
  loc_13BB7C8:                 If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BB7D1:                   Call Proc_119_56_1506DC8(KeyCode, var_AE, 9, 0)
  loc_13BB7DC:                   If (var_AE = &HFF) Then
  loc_13BB822:                     Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BB832:                   End If
  loc_13BB832:                 End If
  loc_13BB835:               Else
  loc_13BB83C:                 If (var_AC = CLng(&HC)) Then
  loc_13BB87F:                   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BB888:                     Call Proc_119_56_1506DC8(KeyCode, var_AE, &HC, 0)
  loc_13BB893:                     If (var_AE = &HFF) Then
  loc_13BB8A1:                       Set var_98 = Me.TxtGrid
  loc_13BB8CA:                       Set var_8C = var_98
  loc_13BB8D9:                       Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_74, &HF, 0)
  loc_13BB8E9:                     End If
  loc_13BB8E9:                   End If
  loc_13BB8EC:                 Else
  loc_13BB8F3:                   If (var_AC = CLng(&HD)) Then
  loc_13BB902:                     Set var_88 = Me.TxtGrid
  loc_13BB908:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0, 0)
  loc_13BB910:                     0 = var_8C.Left
  loc_13BB927:                     Me.DGRevenue.Left = CVar(var_B8)
  loc_13BB941:                     Set var_94 = Me.TxtGrid
  loc_13BB947:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13BB94F:                     var_98 = var_98.Height
  loc_13BB960:                     Set var_88 = Me.TxtGrid
  loc_13BB966:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13BB96E:                     0 = var_8C.Top
  loc_13BB97A:                     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13BB989:                     Me.DGRevenue.Top = CVar(var_B8)
  loc_13BB9B3:                     Set var_98 = Nothing
  loc_13BB9EC:                     Proc_6_69_134A630(Me.DGRevenue, Me.TxtGrid, KeyCode, global_88, Shift, &HFF)
  loc_13BBA0A:                     If (CLng(Shift) = &HD) Then
  loc_13BBA13:                       Call Proc_119_56_1506DC8(KeyCode, var_AE, 1, Nothing)
  loc_13BBA1E:                       If (var_AE = &HFF) Then
  loc_13BBA66:                         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF)
  loc_13BBA76:                       End If
  loc_13BBA76:                     End If
  loc_13BBA76:                   End If
  loc_13BBA76:                 End If
  loc_13BBA76:               End If
  loc_13BBA76:             End If
  loc_13BBA76:           End If
  loc_13BBA76:         End If
  loc_13BBA76:       End If
  loc_13BBA76:       ' Referenced from: 13BB10C
  loc_13BBA76:     End If
  loc_13BBA76:   End If
  loc_13BBA76: End If
  loc_13BBA76: Proc_6_60_E63754(CByte(1), 0, 0)
  loc_13BBA7B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '116CEC4
  'Data Table: 4BC9BC
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_B4 As Integer
  Dim arg_10 As Integer
  Dim var_AC As TextBox
  loc_116CAFB: Proc_6_58_E06050(arg_10)
  loc_116CB0C: If (KeyAscii = 0) Then
  loc_116CB22:   var_A0 = CLng(Me.FGrid.Col)
  loc_116CB32:   If (var_A0 = CLng(3)) Then
  loc_116CB51:     If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_116CB58:       Set var_AC = Me.TxtGrid
  loc_116CB63:       var_A4 = "Name"
  loc_116CB7E:       Proc_6_89_1470B00(var_AC, KeyAscii, global_84, arg_10)
  loc_116CB8D:     End If
  loc_116CB90:   Else
  loc_116CB97:     If Not (var_A0 = CLng(9)) Then
  loc_116CBA1:       If (var_A0 = CLng(7)) Then
  loc_116CBA4:       End If
  loc_116CBAE:       Set var_8C = Me.TxtGrid
  loc_116CBB4:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_116CBCF:       Proc_6_42_129B55C(var_AC, arg_10, 8, 2)
  loc_116CBDE:     Else
  loc_116CBE5:       If (var_A0 = CLng(5)) Then
  loc_116CBEB:         var_B4 = arg_10
  loc_116CBF7:         If Not (&H39 > var_B4 > &H31) Then
  loc_116CC00:           If Not (var_B4 = &H2B) Then
  loc_116CC09:             If Not (var_B4 = &H2D) Then
  loc_116CC12:               If Not (var_B4 = 8) Then
  loc_116CC1B:                 If (var_B4 = &H30) Then
  loc_116CC1E:                 End If
  loc_116CC1E:               End If
  loc_116CC1E:             End If
  loc_116CC1E:           End If
  loc_116CC21:         Else
  loc_116CC23:           arg_10 = 0
  loc_116CC26:         End If
  loc_116CC29:       Else
  loc_116CC30:         If (var_A0 = CLng(6)) Then
  loc_116CC40:           If ((arg_10 = &H50) Or (arg_10 = &H70)) Then
  loc_116CC50:             Set var_8C = Me.TxtGrid
  loc_116CC56:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Per", arg_10)
  loc_116CC5E:             var_AC.Text = var_B4
  loc_116CC6C:             arg_10 = 0
  loc_116CC72:           Else
  loc_116CC7F:             If ((arg_10 = &H41) Or (arg_10 = &H5A)) Then
  loc_116CC8F:               Set var_8C = Me.TxtGrid
  loc_116CC95:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Amt", arg_10)
  loc_116CC9D:               var_AC.Text = 0
  loc_116CCAB:               arg_10 = 0
  loc_116CCB1:             Else
  loc_116CCBE:               Set var_8C = Me.TxtGrid
  loc_116CCC4:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_116CCCC:               var_AC.Text = arg_10
  loc_116CCDA:               arg_10 = 0
  loc_116CCDD:             End If
  loc_116CCDD:           End If
  loc_116CCE0:         Else
  loc_116CCE7:           If Not (var_A0 = CLng(8)) Then
  loc_116CCF1:             If (var_A0 = CLng(&HC)) Then
  loc_116CCF4:             End If
  loc_116CD01:             If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_116CD11:               Set var_8C = Me.TxtGrid
  loc_116CD17:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "No")
  loc_116CD1F:               var_AC.Text = arg_10
  loc_116CD2D:               arg_10 = 0
  loc_116CD33:             Else
  loc_116CD40:               If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_116CD50:                 Set var_8C = Me.TxtGrid
  loc_116CD56:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Yes")
  loc_116CD5E:                 var_AC.Text = arg_10
  loc_116CD6C:                 arg_10 = 0
  loc_116CD72:               Else
  loc_116CD7F:                 Set var_8C = Me.TxtGrid
  loc_116CD85:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_116CD8D:                 var_AC.Text = arg_10
  loc_116CD9B:                 arg_10 = 0
  loc_116CD9E:               End If
  loc_116CD9E:             End If
  loc_116CDA1:           Else
  loc_116CDA8:             If (var_A0 = CLng(&H10)) Then
  loc_116CDD4:               If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_116CDE4:                 Set var_8C = Me.TxtGrid
  loc_116CDEA:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Auto")
  loc_116CDF2:                 var_AC.Text = arg_10
  loc_116CE00:                 arg_10 = 0
  loc_116CE06:               Else
  loc_116CE2F:                 If (Ucase(Chr(CLng(arg_10))) = "M") Then
  loc_116CE3F:                   Set var_8C = Me.TxtGrid
  loc_116CE45:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Manual")
  loc_116CE4D:                   var_AC.Text = arg_10
  loc_116CE5B:                   arg_10 = 0
  loc_116CE5E:                 End If
  loc_116CE5E:               End If
  loc_116CE61:             Else
  loc_116CE68:               If (var_A0 = CLng(&HD)) Then
  loc_116CE87:                 If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_116CEB4:                   Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_88, arg_10, "Name")
  loc_116CEC3:                 End If
  loc_116CEC3:               End If
  loc_116CEC3:             End If
  loc_116CEC3:           End If
  loc_116CEC3:         End If
  loc_116CEC3:       End If
  loc_116CEC3:     End If
  loc_116CEC3:   End If
  loc_116CEC3: End If
  loc_116CEC3: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'FB91D8
  'Data Table: 4BC9BC
  Dim var_9C As Long
  Dim var_AA As Integer
  Dim Shift As Integer
  loc_FB9028: On Error Goto loc_FB91D1
  loc_FB903E: var_9C = CLng(Me.FGrid.Col)
  loc_FB904E: If (var_9C = CLng(3)) Then
  loc_FB9074:   If ((Shift <> &HD) And (CBool(Me.DGSundry.Visible) = 0)) Then
  loc_FB9082:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FB9096:     var_A4 = "Name"
  loc_FB90B1:     Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_84, Shift)
  loc_FB90C0:   End If
  loc_FB90C3: Else
  loc_FB90CA:   If Not (var_9C = CLng(6)) Then
  loc_FB90D4:     If Not (var_9C = CLng(8)) Then
  loc_FB90DE:       If Not (var_9C = CLng(&HC)) Then
  loc_FB90E8:         If Not (var_9C = CLng(5)) Then
  loc_FB90F2:           If (var_9C = CLng(&H10)) Then
  loc_FB90F5:           End If
  loc_FB90F5:         End If
  loc_FB90F5:       End If
  loc_FB90F5:     End If
  loc_FB90FB:     If (Shift <> &HD) Then
  loc_FB9104:       Call TxtGrid_KeyPress(KeyCode)
  loc_FB9109:     End If
  loc_FB910C:   Else
  loc_FB9113:     If (var_9C = CLng(&HD)) Then
  loc_FB9139:       If ((Shift <> &HD) And (CBool(Me.DGRevenue.Visible) = 0)) Then
  loc_FB9147:         Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FB9176:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_88, Shift, "Name", &HFF)
  loc_FB9185:       End If
  loc_FB9188:     Else
  loc_FB918F:       If (var_9C = CLng(5)) Then
  loc_FB9195:         var_AA = Shift
  loc_FB91A1:         If Not (&H39 > var_AA > &H31) Then
  loc_FB91AA:           If Not (var_AA = &H2B) Then
  loc_FB91B3:             If Not (var_AA = &H2D) Then
  loc_FB91BC:               If Not (var_AA = 8) Then
  loc_FB91C5:                 If (var_AA = &H30) Then
  loc_FB91C8:                 End If
  loc_FB91C8:               End If
  loc_FB91C8:             End If
  loc_FB91C8:           End If
  loc_FB91CB:         Else
  loc_FB91CD:           Shift = 0
  loc_FB91D0:         End If
  loc_FB91D0:       End If
  loc_FB91D0:     End If
  loc_FB91D0:   End If
  loc_FB91D0: End If
  loc_FB91D0: Exit Sub
  loc_FB91D1: ' Referenced from: FB9028
  loc_FB91D1: Proc_6_60_E63754(Shift, var_AA, 0, Shift)
  loc_FB91D6: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E214B8
  'Data Table: 4BC9BC
  Dim arg_10 As Integer
  loc_E214A0: If (Cancel = 0) Then
  loc_E214A9:   Call Proc_119_56_1506DC8(Cancel, var_88)
  loc_E214B2:   arg_10 = Not(var_88)
  loc_E214B5: End If
  loc_E214B5: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E53498
  'Data Table: 4BC9BC
  loc_E53472: Set var_88 = Me.Txt
  loc_E53478: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E53486: Proc_6_74_E23240(var_8C)
  loc_E53492: Call Proc_119_60_E84F60(var_8C)
  loc_E53497: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'EB8474
  'Data Table: 4BC9BC
  loc_EB83E6: If (CLng(Shift) = &H1B) Then
  loc_EB83E9:   Call Proc_119_60_E84F60()
  loc_EB83EE:   Exit Sub
  loc_EB83EF: End If
  loc_EB842A: If ((CBool(Me.DGSundry.Visible) = 0) And (CBool(Me.DGRevenue.Visible) = 0)) Then
  loc_EB8442:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EB844B:     Proc_6_75_E5335C(Shift)
  loc_EB8450:   End If
  loc_EB8465:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_EB846E:     Proc_6_76_E533C8(Shift, arg_14)
  loc_EB8473:   End If
  loc_EB8473: End If
  loc_EB8473: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E05010
  'Data Table: 4BC9BC
  Dim var_86 As Integer
  loc_E05003: Proc_6_58_E06050(arg_10)
  loc_E0500B: var_86 = KeyAscii
  loc_E0500E: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47964
  'Data Table: 4BC9BC
  loc_E47942: Set var_88 = Me.Txt
  loc_E47948: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47956: Proc_6_73_E23294(var_8C)
  loc_E47962: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F13D54
  'Data Table: 4BC9BC
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_A0 As TextBox
  Dim var_8C As MSHFlexGrid
  loc_F13C6B: var_86 = Cancel
  loc_F13C76: If (var_86 = CInt(0)) Then
  loc_F13C84:   Set var_8C = Me.Txt
  loc_F13C8A:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_F13CB3:   If (Proc_6_27_EA61EC(var_90, "App. Date") = 0) Then
  loc_F13CC1:     Set var_8C = Me.Txt
  loc_F13CC7:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_F13CCF:     var_90.SetFocus
  loc_F13CDD:     arg_10 = &HFF
  loc_F13CE0:     Exit Sub
  loc_F13CE1:   End If
  loc_F13CEB:   Set var_8C = Me.Txt
  loc_F13CF1:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F13D11:   Set var_9C = Me.Txt
  loc_F13D17:   Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_F13D1F:   var_A0.Text = Proc_6_33_15125B8(var_90, arg_10)
  loc_F13D44:   Me.FGrid.Col = CVar(CLng(1))
  loc_F13D4C:   Call Proc_119_62_12D4400(var_86)
  loc_F13D51: End If
  loc_F13D51: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E85740
  'Data Table: 4BC9BC
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E856E3: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E856F6: Set var_A8 = Me.TxtGrid
  loc_E856FC: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E85704: var_AC.Visible = False
  loc_E8571E: Set var_A8 = Me.TxtGrid
  loc_E85724: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E8572C: var_AC.MaxLength = 0
  loc_E85738: Call Proc_119_60_E84F60()
  loc_E8573D: Exit Sub
  loc_E8573E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6A7B8
  'Data Table: 4BC9BC
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6A774: Set var_88 = Me.TxtGrid
  loc_E6A77A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6A794: If (var_8C.Visible = 0) Then
  loc_E6A7AD:   Me.FGrid.BackColorSel = CVar(CLng(global_64))
  loc_E6A7B5: End If
  loc_E6A7B5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1D4C0
  'Data Table: 4BC9BC
  loc_E1D4B7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D4BF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFECD4
  'Data Table: 4BC9BC
  loc_DFECCC: Call Proc_119_55_E45BE4()
  loc_DFECD1: Exit Sub
  loc_DFECD2: CExtInstUnk
End Sub

Private Sub FGrid_UnknownEvent_A '123274C
  'Data Table: 4BC9BC
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_123222C: Set var_88 = Me.TopCtrl1
  loc_1232232: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1232277: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1232280:   Call Form_KeyDown(Cancel, arg_10)
  loc_1232285: End If
  loc_1232289: Set var_88 = Me.TopCtrl1
  loc_123228F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12322A8: If (CStr() = "Browse") Then
  loc_12322AB:   Exit Sub
  loc_12322AC: End If
  loc_12322C9: var_C4 = Me.FGrid.Rows
  loc_1232320: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_1232336:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1232346:   var_9C = "+{Tab}"
  loc_123234C:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_1232356:   Cancel = 0
  loc_123235C: Else
  loc_1232366:   var_B0 = Me.FGrid.Rows
  loc_12323B3:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_12323C9:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12323DF:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_12323E9:     Cancel = 0
  loc_1232423:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_1232426:       Call TopCtrl1_UnknownEvent_16()
  loc_123242B:     End If
  loc_123242B:   End If
  loc_123242B: End If
  loc_1232431: global_72 = Cancel
  loc_1232457: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_123247B: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1232491:   var_11C = CLng(Me.FGrid.Col)
  loc_12324A1:   If (var_11C = CLng(3)) Then
  loc_12324B7:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12324BF:     var_F8 = CVar(CLng(3)) 'Long
  loc_12324C4:     var_12C = vbNullString
  loc_12324CE:     Set var_A0 = Me.FGrid
  loc_12324D4:     LateIdCallSt
  loc_12324F9:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1232501:     var_F8 = CVar(CLng(2)) 'Long
  loc_1232506:     var_12C = vbNullString
  loc_1232510:     Set var_A0 = Me.FGrid
  loc_1232516:     LateIdCallSt
  loc_123253B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1232543:     var_F8 = CVar(CLng(&HA)) 'Long
  loc_1232548:     var_12C = vbNullString
  loc_1232552:     Set var_A0 = Me.FGrid
  loc_1232558:     LateIdCallSt
  loc_123257D:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1232585:     var_F8 = CVar(CLng(&HE)) 'Long
  loc_123258A:     var_12C = vbNullString
  loc_1232594:     Set var_A0 = Me.FGrid
  loc_123259A:     LateIdCallSt
  loc_12325AF:   Else
  loc_12325B6:     If Not (var_11C = CLng(1)) Then
  loc_12325C0:       If Not (var_11C = CLng(4)) Then
  loc_12325CA:         If Not (var_11C = CLng(5)) Then
  loc_12325D4:           If Not (var_11C = CLng(6)) Then
  loc_12325DE:             If Not (var_11C = CLng(7)) Then
  loc_12325E8:               If Not (var_11C = CLng(8)) Then
  loc_12325F2:                 If Not (var_11C = CLng(9)) Then
  loc_12325FC:                   If Not (var_11C = CLng(&HC)) Then
  loc_1232606:                     If (var_11C = CLng(&H10)) Then
  loc_1232609:                     End If
  loc_1232609:                   End If
  loc_1232609:                 End If
  loc_1232609:               End If
  loc_1232609:             End If
  loc_1232609:           End If
  loc_1232609:         End If
  loc_1232609:       End If
  loc_123261C:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1232634:       var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1232639:       var_12C = vbNullString
  loc_1232643:       Set var_B4 = Me.FGrid
  loc_1232649:       LateIdCallSt
  loc_1232664:     Else
  loc_123266B:       If (var_11C = CLng(&HD)) Then
  loc_1232681:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1232689:         var_F8 = CVar(CLng(&HF)) 'Long
  loc_123268E:         var_12C = vbNullString
  loc_1232698:         Set var_A0 = Me.FGrid
  loc_123269E:         LateIdCallSt
  loc_12326C3:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12326CB:         var_F8 = CVar(CLng(&HD)) 'Long
  loc_12326D0:         var_12C = vbNullString
  loc_12326DA:         Set var_A0 = Me.FGrid
  loc_12326E0:         LateIdCallSt
  loc_1232705:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123270D:         var_F8 = CVar(CLng(&HB)) 'Long
  loc_1232712:         var_12C = vbNullString
  loc_123271C:         Set var_A0 = Me.FGrid
  loc_1232722:         LateIdCallSt
  loc_1232734:       End If
  loc_1232734:     End If
  loc_1232734:   End If
  loc_1232734: End If
  loc_123273A: If (Cancel = &HD) Then
  loc_1232742:   global_74 = 0
  loc_1232745: End If
  loc_1232747: Cancel = 0
  loc_123274A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0CAA8
  'Data Table: 4BC9BC
  loc_E0CA99: Call FGrid_UnknownEvent_C()
  loc_E0CAA3: global_74 = 0
  loc_E0CAA6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1188620
  'Data Table: 4BC9BC
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_118823C: Set var_88 = Me.TopCtrl1
  loc_1188242: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_118825B: If (CStr() = "Browse") Then
  loc_118825E:   Exit Sub
  loc_118825F: End If
  loc_1188263: Set var_88 = Me.TopCtrl1
  loc_1188269: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1188282: If (CStr() = "Browse") Then
  loc_1188285:   Exit Sub
  loc_1188286: End If
  loc_1188299: var_A0 = CLng(Me.FGrid.Col)
  loc_11882A9: If Not (var_A0 = CLng(3)) Then
  loc_11882B3:   If Not (var_A0 = CLng(4)) Then
  loc_11882BD:     If Not (var_A0 = CLng(&HD)) Then
  loc_11882C7:       If Not (var_A0 = CLng(6)) Then
  loc_11882D1:         If Not (var_A0 = CLng(8)) Then
  loc_11882DB:           If Not (var_A0 = CLng(&HC)) Then
  loc_11882E5:             If (var_A0 = CLng(&H10)) Then
  loc_11882E8:             End If
  loc_11882E8:           End If
  loc_11882E8:         End If
  loc_11882E8:       End If
  loc_11882E8:     End If
  loc_11882E8:   End If
  loc_11882EC:   Set var_C4 = Me.FGrid
  loc_1188310:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_118833D:   Set var_B4 = var_C4
  loc_118834F:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1188377:   Set var_88 = Me.TxtGrid
  loc_118837D:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1188385:   0 = var_B4.Text
  loc_118839E:   If (Len(var_9C) <= 1) Then
  loc_11883AD:     Set var_88 = Me.TxtGrid
  loc_11883B3:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_11883BB:     var_CA = var_B4.Text
  loc_11883CC:     Set var_B8 = Me.TxtGrid
  loc_11883D2:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_11883DA:     var_C4.Text = var_9C
  loc_11883ED:   End If
  loc_11883F9:   Set var_88 = Me.TxtGrid
  loc_11883FF:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1188419:   Set var_B8 = Me.TxtGrid
  loc_118841F:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1188427:   var_C4.SelStart = Len(var_B4.Text)
  loc_118843D: Else
  loc_1188444:   If (var_A0 = CLng(5)) Then
  loc_1188485:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_118849A:   Else
  loc_11884A1:     If Not (var_A0 = CLng(1)) Then
  loc_11884AB:       If Not (var_A0 = CLng(9)) Then
  loc_11884B5:         If (var_A0 = CLng(7)) Then
  loc_11884B8:         End If
  loc_11884B8:       End If
  loc_11884BC:       Set var_C4 = Me.FGrid
  loc_11884E0:       var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_11884E9:       var_CA = Asc(var_9C)
  loc_118850D:       Set var_B4 = var_C4
  loc_118851F:       Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF, var_CA)
  loc_1188547:       Set var_88 = Me.TxtGrid
  loc_118854D:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, 0, var_CA)
  loc_1188555:       0 = var_B4.Text
  loc_118856E:       If (Len(var_9C) <= 1) Then
  loc_118857D:         Set var_88 = Me.TxtGrid
  loc_1188583:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_118858B:         Cancel = var_B4.Text
  loc_118859C:         Set var_B8 = Me.TxtGrid
  loc_11885A2:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_9C)
  loc_11885AA:         var_C4.Text = 0
  loc_11885BD:       End If
  loc_11885C9:       Set var_88 = Me.TxtGrid
  loc_11885CF:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_11885E9:       Set var_B8 = Me.TxtGrid
  loc_11885EF:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_11885F7:       var_C4.SelStart = Len(var_B4.Text)
  loc_118860A:     End If
  loc_118860A:   End If
  loc_118860A: End If
  loc_1188614: If (CLng(Cancel) <> &HD) Then
  loc_118861C:   global_74 = &HFF
  loc_118861F: End If
  loc_118861F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1041A1C
  'Data Table: 4BC9BC
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_114 As MSHFlexGrid
  loc_10417D0: Set var_8C = Me.TopCtrl1
  loc_10417D6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10417EF: If (CStr() = "Browse") Then
  loc_10417F2:   Exit Sub
  loc_10417F3: End If
  loc_10417F7: Set var_8C = Me.TopCtrl1
  loc_10417FD: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1041816: If (CStr() = "Edit") Then
  loc_1041819:   Exit Sub
  loc_104181A: End If
  loc_1041837: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_104183A:   Exit Sub
  loc_104183B: End If
  loc_104184C: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_104186E:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10418A8:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_10418CA:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10418E0:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10418E8:         var_E0 = CVar(CLng(1)) 'Long
  loc_104193B:         Set var_114 = Me.FGrid
  loc_1041953:         Call Proc_119_51_E7FED0(FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)), CInt(Val(CStr(Me.FGrid.TextMatrix)))))
  loc_104195B:       Else
  loc_104196E:         Me.FGrid.Rows = 1
  loc_1041994:         var_9C = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(1)))) 'String
  loc_104199C:         Set var_114 = Me.FGrid
  loc_10419C9:         Me.FGrid.FixedRows = 1
  loc_10419D1:       End If
  loc_10419D1:     End If
  loc_10419D4:   Else
  loc_10419F5:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_1041A05:   End If
  loc_1041A09:   Set var_8C = Me.FGrid
  loc_1041A1A: End If
  loc_1041A1A: Exit Sub
  loc_1041A1B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1D560
  'Data Table: 4BC9BC
  loc_E1D557: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1D55F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1D510
  'Data Table: 4BC9BC
  loc_E1D507: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D50F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E45CB0
  'Data Table: 4BC9BC
  Dim var_8C As TextBox
  loc_E45C84: Call Proc_119_60_E84F60()
  loc_E45C94: Set var_88 = Me.TxtGrid
  loc_E45C9A: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E45CA2: var_8C.Visible = False
  loc_E45CAE: Exit Sub
End Sub

Private Sub CmdUp_Click() '10F49E0
  'Data Table: 4BC9BC
  Dim var_DC As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  loc_10F4753: If (CLng(Me.FGrid.Row) = (CLng(Me.FGrid.Rows) - 1)) Then
  loc_10F4756:   Exit Sub
  loc_10F4757: End If
  loc_10F4776: If (CLng(Me.FGrid.Row) = 0) Then
  loc_10F4779:   Exit Sub
  loc_10F477A: End If
  loc_10F4799: If (CLng(Me.FGrid.Row) = 1) Then
  loc_10F479C:   Exit Sub
  loc_10F479D: End If
  loc_10F47BC: If (CLng(Me.FGrid.Row) = 2) Then
  loc_10F47BF:   Exit Sub
  loc_10F47C0: End If
  loc_10F47D4: var_86 = CInt(CLng(Me.FGrid.Row))
  loc_10F4802: For var_F0 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_F0 'Integer
  loc_10F480C:   var_100 = CVar(CLng(var_86)) 'Long
  loc_10F4815:   var_120 = CVar(CLng(var_C2)) 'Long
  loc_10F4839:   var_A0(CLng(var_C2)) = CStr(Me.FGrid.TextMatrix))
  loc_10F4846: Next var_F0 'Integer
  loc_10F4870: For var_138 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_138 'Integer
  loc_10F4889:   var_15C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F4892:   var_17C = CVar(CLng(var_C2)) 'Long
  loc_10F48B0:   var_100 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_10F48B9:   var_120 = CVar(CLng(var_C2)) 'Long
  loc_10F48D3:   var_19C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_10F48DB:   Set var_1B0 = Me.FGrid
  loc_10F48E1:   LateIdCallSt
  loc_10F4902: Next var_138 'Integer
  loc_10F492C: For var_1B4 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_1B4 'Integer
  loc_10F494B:   var_100 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_10F4954:   var_120 = CVar(CLng(var_C2)) 'Long
  loc_10F4969:   Set var_DC = Me.FGrid
  loc_10F496F:   LateIdCallSt
  loc_10F4984: Next var_1B4 'Integer
  loc_10F4990: var_100 = CVar(CLng((var_86 - 1))) 'Long
  loc_10F499F: Me.FGrid.Row = var_100
  loc_10F49C9: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_10F49D8: Call Proc_119_51_E7FED0()
  loc_10F49DD: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_9 '103C130
  'Data Table: 4BC9BC
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_103BEEF: Me.DGRevenue.Visible = False
  loc_103BF0E: If (Me.RecordCount > 0) Then
  loc_103BF24:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103BF2C:   var_E4 = CVar(CLng(&HF)) 'Long
  loc_103BF5F:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_103BF67:   Set var_128 = Me.FGrid
  loc_103BF6D:   LateIdCallSt
  loc_103BF9C:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103BFA4:   var_E4 = CVar(CLng(&HD)) 'Long
  loc_103BFD7:   var_114 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_103BFDF:   Set var_128 = Me.FGrid
  loc_103BFE5:   LateIdCallSt
  loc_103C040:   If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_103C056:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103C05E:     var_D4 = CVar(CLng(&HB)) 'Long
  loc_103C063:     var_F4 = "+"
  loc_103C06D:     Set var_B0 = Me.FGrid
  loc_103C073:     LateIdCallSt
  loc_103C088:   Else
  loc_103C0C7:     If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_103C0DD:       var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103C0E5:       var_D4 = CVar(CLng(&HB)) 'Long
  loc_103C0EA:       var_F4 = "-"
  loc_103C0F4:       Set var_B0 = Me.FGrid
  loc_103C0FA:       LateIdCallSt
  loc_103C10C:     End If
  loc_103C10C:   End If
  loc_103C10C: End If
  loc_103C115: Set var_A8 = Me.TxtGrid
  loc_103C11B: Call 0.Method_DGRevenue_UnknownEvent_90 (0, var_B0, var_B0, var_F4, var_D4, var_94, var_B0)
  loc_103C123: var_B0.SetFocus
  loc_103C12F: Exit Sub
End Sub

Private Sub CmdDown_Click() '10977B0
  'Data Table: 4BC9BC
  Dim var_C0 As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  loc_109754F: If (CLng(Me.FGrid.Row) = 1) Then
  loc_1097552:   Exit Sub
  loc_1097553: End If
  loc_109758E: If (CLng(Me.FGrid.Row) = (CLng(Me.FGrid.Rows) - 2)) Then
  loc_1097591:   Exit Sub
  loc_1097592: End If
  loc_10975A6: var_86 = CInt(CLng(Me.FGrid.Row))
  loc_10975D4: For var_D4 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_D4 'Integer
  loc_10975DE:   var_E4 = CVar(CLng(var_86)) 'Long
  loc_10975E7:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_109760B:   var_A0(CLng(var_A6)) = CStr(Me.FGrid.TextMatrix))
  loc_1097618: Next var_D4 'Integer
  loc_1097642: For var_11C = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_11C 'Integer
  loc_109765B:   var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1097664:   var_160 = CVar(CLng(var_A6)) 'Long
  loc_1097682:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_109768B:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_10976A5:   var_180 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_10976AD:   Set var_194 = Me.FGrid
  loc_10976B3:   LateIdCallSt
  loc_10976D4: Next var_11C 'Integer
  loc_10976FE: For var_198 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_198 'Integer
  loc_109771D:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_1097726:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_109773B:   Set var_C0 = Me.FGrid
  loc_1097741:   LateIdCallSt
  loc_1097756: Next var_198 'Integer
  loc_1097762: var_E4 = CVar(CLng((var_86 + 1))) 'Long
  loc_1097771: Me.FGrid.Row = var_E4
  loc_109779B: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_10977AA: Call Proc_119_51_E7FED0()
  loc_10977AF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EA9C54
  'Data Table: 4BC9BC
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EA9BC8: On Error Goto loc_EA9C4E
  loc_EA9BEE: Call Proc_119_59_E8CF38(Proc_5_1_100EC1C("ADD", Me))
  loc_EA9BF9: Call Proc_119_57_F194C0(global_76)
  loc_EA9C09: Set var_8C = Me.Txt
  loc_EA9C0F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EA9C17: var_94.SetFocus
  loc_EA9C30: Me.LblUser.Caption = vbNullString
  loc_EA9C45: Me.LblLDt.Caption = vbNullString
  loc_EA9C4D: Exit Sub
  loc_EA9C4E: ' Referenced from: EA9BC8
  loc_EA9C4E: Proc_6_60_E63754(var_94)
  loc_EA9C53: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EE8FB0
  'Data Table: 4BC9BC
  loc_EE8EF4: On Error Goto loc_EE8FA9
  loc_EE8F2E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EE8F54:   Call Proc_119_59_E8CF38(Proc_5_1_100EC1C("INI", Me))
  loc_EE8F67:   Set var_10C = Me.TopCtrl1
  loc_EE8F6D:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_EE8F7E:   Set var_10C = Me.TopCtrl1
  loc_EE8F84:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_EE8F95:   Set var_10C = Me.TopCtrl1
  loc_EE8F9B:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_EE8FA3:   Call Proc_119_58_1443E5C(global_76)
  loc_EE8FA8: End If
  loc_EE8FA8: Exit Sub
  loc_EE8FA9: ' Referenced from: EE8EF4
  loc_EE8FA9: Proc_6_60_E63754()
  loc_EE8FAE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1C9F8
  'Data Table: 4BC9BC
  Dim TopCtrl1_UnknownEvent_E4FF As Double
  loc_E1C9ED: Me.Global.Unload Me
  loc_E1C9F5: Exit Sub
  loc_E1C9F6: TopCtrl1_UnknownEvent_E4FF = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB5598
  'Data Table: 4BC9BC
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB5508: On Error Goto loc_EB5592
  loc_EB5522: If (Me.RecordCount <= 0) Then
  loc_EB552B:   var_B8 = "Information"
  loc_EB5546:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB5556:   Exit Sub
  loc_EB5557: End If
  loc_EB555A: MemVar_1F950E4 = "Select (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,VT.Description,Convert(Varchar(11),SP.AppDate,103) As AppDate,SP.SNo,SM.Name As SundryName,SP.DispName,SP.CalcFormula,RM.Name As Revenue From (((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) where SP.V_Type='IDC' Order by SP.AppDate,VT.Description"
  loc_EB5564: MemVar_1F95120 = Me
  loc_EB5571: Proc_6_126_F1C850("2000,1000,1000,2000,2000,2000,2000")
  loc_EB558C: Call 0.Method_arg_2B0 (1)
  loc_EB5591: Exit Sub
  loc_EB5592: ' Referenced from: EB5508
  loc_EB5592: Proc_6_60_E63754(var_B8)
  loc_EB5597: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3DB08
  'Data Table: 4BC9BC
  loc_E3DAF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3DB00: Call Proc_119_58_1443E5C(global_76)
  loc_E3DB05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3DBC8
  'Data Table: 4BC9BC
  loc_E3DBB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3DBC0: Call Proc_119_58_1443E5C(global_76)
  loc_E3DBC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3E7C8
  'Data Table: 4BC9BC
  loc_E3E7B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3E7C0: Call Proc_119_58_1443E5C(global_76)
  loc_E3E7C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3D9E8
  'Data Table: 4BC9BC
  loc_E3D9D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D9E0: Call Proc_119_58_1443E5C(global_76)
  loc_E3D9E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E20CD8
  'Data Table: 4BC9BC
  Dim Me As Recordset15
  loc_E20CBF: Me.Requery -1
  loc_E20CCF: Me.Requery -1
  loc_E20CD4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '150A948
  'Data Table: 4BC9BC
  Dim var_8A As Variant
  Dim var_90 As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_130 As Variant
  Dim unk_4BC9E5 As Connection15
  Dim var_94 As Variant
  Dim var_170 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_98 As Variant
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
  Dim var_9C As Variant
  Dim var_1E8 As String
  Dim var_110 As Variant
  Dim var_190 As Variant
  Dim var_240 As Variant
  Dim var_40C As Variant
  Dim var_5E0 As Variant
  Dim var_7BC As Variant
  Dim var_9A4 As Variant
  Dim Me As Recordset15
  loc_1509BCC: On Error Goto loc_150A8F5
  loc_1509BD3: var_86 = CByte(0) 'Byte
  loc_1509BDA: Call Proc_119_63_E7D618(var_8C)
  loc_1509BE5: If (var_8C = 0) Then
  loc_1509BE8:   Exit Sub
  loc_1509BE9: End If
  loc_1509BF4: Set var_90 = Me.Txt
  loc_1509BFA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1509C23: If (Proc_6_27_EA61EC(var_94, "App. Date") = 0) Then
  loc_1509C2D:   Call Txt_GotFocus(CInt(0))
  loc_1509C32:   Exit Sub
  loc_1509C33: End If
  loc_1509C36: Call Proc_119_53_F9341C(var_8C)
  loc_1509C41: If (var_8C = &HFF) Then
  loc_1509C44:   Exit Sub
  loc_1509C45: End If
  loc_1509C6F: For var_B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B0 'Integer
  loc_1509C79:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1509C81:   var_E0 = CVar(CLng(1)) 'Long
  loc_1509CBD:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1509CC4:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1509CCC:     var_E0 = CVar(CLng(1)) 'Long
  loc_1509D09:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> CVar(1)) Then
  loc_1509D10:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1509D18:       var_E0 = CVar(CLng(1)) 'Long
  loc_1509D5B:       var_130 = "Arrange S.No. and Cal. Formulas" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1509D5F:       MsgBox(var_130, &H40, "Information", var_170, var_190)
  loc_1509D7C:       Set var_90 = Me.FGrid
  loc_1509D8D:       Exit Sub
  loc_1509D8E:     End If
  loc_1509D94:     var_8A = (var_8A + 1)
  loc_1509D97:   End If
  loc_1509DC2:   If ((var_88 > 1) And (CLng(var_88) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_1509DC9:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1509DD1:     var_E0 = CVar(CLng(&HF)) 'Long
  loc_1509DEB:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1509DF1:     var_110 = Trim(var_100)
  loc_1509E0D:     If (var_110 = vbNullString) Then
  loc_1509E29:       MsgBox("Define revenue ", &H40, var_100, var_110, var_130)
  loc_1509E39:       Exit Sub
  loc_1509E3A:     End If
  loc_1509E3A:   End If
  loc_1509E3E:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1509E46:   var_E0 = CVar(CLng(3)) 'Long
  loc_1509E82:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1509E89:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1509E91:     var_E0 = CVar(CLng(1)) 'Long
  loc_1509ECD:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1509ED4:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1509EDC:       var_E0 = CVar(CLng(3)) 'Long
  loc_1509F23:       MsgBox("Fill S.NO For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_1509F40:       Set var_90 = Me.FGrid
  loc_1509F51:       Exit Sub
  loc_1509F52:     End If
  loc_1509F56:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1509F5E:     var_E0 = CVar(CLng(4)) 'Long
  loc_1509F9A:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1509FA1:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1509FA9:       var_E0 = CVar(CLng(3)) 'Long
  loc_1509FF0:       MsgBox("Fill Disp. Name For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_150A00D:       Set var_90 = Me.FGrid
  loc_150A01E:       Exit Sub
  loc_150A01F:     End If
  loc_150A023:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_150A02B:     var_E0 = CVar(CLng(6)) 'Long
  loc_150A067:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_150A06E:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_150A076:       var_E0 = CVar(CLng(3)) 'Long
  loc_150A0BD:       MsgBox("Fill Per/Amt For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_150A0DA:       Set var_90 = Me.FGrid
  loc_150A0EB:       Exit Sub
  loc_150A0EC:     End If
  loc_150A0EC:   End If
  loc_150A0EF: Next var_B0 'Integer
  loc_150A0FD: unk_4BC9E5.BeginTrans var_194
  loc_150A106: var_86 = CByte(1) 'Byte
  loc_150A12F: For var_198 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_198 'Integer
  loc_150A139:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_150A141:   var_E0 = CVar(CLng(2)) 'Long
  loc_150A161:   var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_150A169:   var_120 = vbNullString
  loc_150A177:   var_140 = CVar(CLng(var_88)) 'Long
  loc_150A188:   Set var_94 = Me.FGrid
  loc_150A1CD:   If CBool(CVar(CLng(1)) And (Trim(CVar(CStr(var_94.TextMatrix)))) <> vbNullString)) Then
  loc_150A1D4:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_150A1DC:     var_E0 = CVar(CLng(&HB)) 'Long
  loc_150A1F6:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_150A218:     If (Trim(var_100) = vbNullString) Then
  loc_150A21F:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_150A227:       var_E0 = CVar(CLng(&HB)) 'Long
  loc_150A22C:       var_120 = "+"
  loc_150A236:       Set var_90 = Me.FGrid
  loc_150A23C:       LateIdCallSt
  loc_150A247:     End If
  loc_150A252:     Set var_90 = Me.Txt
  loc_150A258:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_90, vbNullString, var_E0, var_C0, var_E0)
  loc_150A260:     var_AC = CVar(var_94) 'Address
  loc_150A267:     Proc_6_7_F26918(var_100, var_AC, var_C0, var_140)
  loc_150A270:     var_D0 = CVar(CLng(var_88)) 'Long
  loc_150A278:     var_F0 = CVar(CLng(2)) 'Long
  loc_150A281:     Set var_98 = Me.FGrid
  loc_150A297:     var_160 = CVar(CLng(var_88)) 'Long
  loc_150A29F:     var_1A8 = CVar(CLng(1)) 'Long
  loc_150A2C8:     var_250 = CVar(CLng(var_88)) 'Long
  loc_150A2D0:     var_270 = CVar(CLng(4)) 'Long
  loc_150A2EF:     var_304 = CVar(CLng(var_88)) 'Long
  loc_150A2F7:     var_324 = CVar(CLng(5)) 'Long
  loc_150A316:     var_398 = CVar(CLng(var_88)) 'Long
  loc_150A31E:     var_3B8 = CVar(CLng(6)) 'Long
  loc_150A351:     var_43C = CVar(CLng(var_88)) 'Long
  loc_150A359:     var_45C = CVar(CLng(8)) 'Long
  loc_150A38C:     var_4E0 = CVar(CLng(var_88)) 'Long
  loc_150A394:     var_500 = CVar(CLng(7)) 'Long
  loc_150A3BD:     var_578 = CVar(CLng(var_88)) 'Long
  loc_150A3C5:     var_598 = CVar(CLng(9)) 'Long
  loc_150A3EE:     var_630 = CVar(CLng(var_88)) 'Long
  loc_150A3F6:     var_650 = CVar(CLng(&HF)) 'Long
  loc_150A415:     var_6C4 = CVar(CLng(var_88)) 'Long
  loc_150A41D:     var_6E4 = CVar(CLng(&HA)) 'Long
  loc_150A43C:     var_758 = CVar(CLng(var_88)) 'Long
  loc_150A444:     var_778 = CVar(CLng(&HB)) 'Long
  loc_150A47A:     var_830 = Me.FGrid.TextMatrix)
  loc_150A4A1:     var_8C4 = Me.FGrid.TextMatrix)
  loc_150A4CC:     Proc_6_7_F26918(var_994, MemVar_1F950EC, var_8C4, CVar(CLng(&HC)), CVar(CLng(var_88)), var_830, CVar(CLng(&HE)), CVar(CLng(var_88)))
  loc_150A4D5:     var_9D4 = CVar(CLng(var_88)) 'Long
  loc_150A4DD:     var_9F4 = CVar(CLng(&H10)) 'Long
  loc_150A520:     var_9C = "Insert Into SundryType (V_Type,AppDate,SundryCode,SNo,DispName," & "CalcFormula,PerOrAmt,RoundOff,SValue,Limit,"
  loc_150A53F:     var_1E8 = var_9C & "RevCode,Nature,CalcSign,SysYN,Grp," & "U_Name,U_EntDt,U_AE,AutoManual,SiteCode,LogSite_Code) " & " Values ('" & global_92
  loc_150A57D:     var_240 = CVar(var_1E8 & "',") & var_100 & ",'" & CVar(CStr(var_98.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" 
  loc_150A5B5:     var_40C = var_240 & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) 
  loc_150A5ED:     var_5E0 = var_40C & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_150A632:     var_7BC = var_5E0 & "," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_150A682:     var_9A4 = var_7BC & "','" & CVar(CStr(var_830)) & "','" & Left(CVar(CStr(var_8C4)), 1) & "'," & "'" & CVar(MemVar_1F950C8) & "'," & var_994 
  loc_150A6B8:     var_AC8 = var_9A4 & ",'A','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) 
  loc_150A6CF:     unk_4BC9E5.Execute CStr(var_AC8 & "')"), var_B0C, -1
  loc_150A7A5:   End If
  loc_150A7A8: Next var_198 'Integer
  loc_150A7B3: unk_4BC9E5.CommitTrans
  loc_150A7BC: var_86 = CByte(0) 'Byte
  loc_150A7CB: Set var_90 = Me.Txt
  loc_150A7D1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_150A7DC: var_C0 = CVar(global_92) 'String
  loc_150A7EF: var_AC = Space((6 - Len(global_92)))
  loc_150A7F7: var_100 = (var_C0 + var_AC)
  loc_150A800: var_110 = (var_100 + "**")
  loc_150A81C: var_130 = CVar(var_94) 'Address
  loc_150A82B: var_190 = (1 + Format(var_130, "dd/mm/yyyy"))
  loc_150A85C: Me.Requery -1
  loc_150A889: Me.Find "SearchCode ='" & CStr(CVar(CStr(var_98.TextMatrix)))) & "'", 0, 1
  loc_150A899: Set var_90 = Me.TopCtrl1
  loc_150A89F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_150A8B8: If (CStr(1) = "Add") Then
  loc_150A8BB:   Call TopCtrl1_UnknownEvent_A()
  loc_150A8C0:   Exit Sub
  loc_150A8C1: End If
  loc_150A8D6: var_9C = "INI"
  loc_150A8E4: Call Proc_119_59_E8CF38(Proc_5_1_100EC1C(var_9C, Me, global_76), CVar(var_1E8 & "',"))
  loc_150A8EF: Call Proc_119_58_1443E5C(var_94)
  loc_150A8F4: Exit Sub
  loc_150A8F5: ' Referenced from: 1509BCC
  loc_150A8FE: If (CInt(var_86) = 1) Then
  loc_150A907:   unk_4BC9E5.RollbackTrans
  loc_150A90C: End If
  loc_150A914: Set var_90 = Err()
  loc_150A91A: Call 0.Method_arg_2C (var_9C)
  loc_150A933: MsgBox(CVar(var_9C), &H10, var_100, CVar(var_1E8 & "',"), var_130)
  loc_150A946: Exit Sub
End Sub

Private Sub DGSundry_UnknownEvent_9 '107742C
  'Data Table: 4BC9BC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_128 As TextBox
  loc_10771AB: Me.DGSundry.Visible = False
  loc_10771CA: If (Me.RecordCount > 0) Then
  loc_10771E0:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10771E8:   var_E4 = CVar(CLng(2)) 'Long
  loc_107721B:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1077223:   Set var_128 = Me.FGrid
  loc_1077229:   LateIdCallSt
  loc_107729B:   Set var_128 = Me.FGrid
  loc_10772A1:   LateIdCallSt
  loc_10772F7:   Set var_B4 = Me.TxtGrid
  loc_10772FD:   Call 0.Method_DGSundry_UnknownEvent_90 (0, var_128, CStr(Me.Fields.Item("Name").Value), var_128, CVar(CStr(Me.Fields.Item("Name").Value)), CVar(CLng(3)))
  loc_1077305:   var_128.Text = CVar(CLng(Me.FGrid.Row))
  loc_1077366:   var_114 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_128)) 'String
  loc_107736E:   Set var_128 = Me.FGrid
  loc_1077374:   LateIdCallSt
  loc_10773A1:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10773A9:   var_E4 = CVar(CLng(&HE)) 'Long
  loc_10773CB:   var_B0 = Me.Fields.Item("SysYN")
  loc_10773DC:   var_114 = CVar(CStr(var_B0.Value)) 'String
  loc_10773E4:   Set var_128 = Me.FGrid
  loc_10773EA:   LateIdCallSt
  loc_1077406: End If
  loc_107740F: Set var_A8 = Me.TxtGrid
  loc_1077415: Call 0.Method_DGSundry_UnknownEvent_90 (0, var_B0, var_128, var_114, var_E4, var_A4)
  loc_107741D: var_B0.SetFocus
  loc_1077429: Exit Sub
End Sub

Private Sub Form_Load() '1171050
  'Data Table: 4BC9BC
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_CC As String
  Dim unk_4BC9E5 As Connection15
  Dim var_88 As Recordset15
  loc_1170C84: On Error Goto loc_1171048
  loc_1170C8E: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1170CA6: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1170CBD: Me.LblUser.Left = CDbl(13500)
  loc_1170CD4: Me.LblUser.Top = CDbl(7800)
  loc_1170CEB: Me.LblLDt.Top = CDbl(8160)
  loc_1170D02: Me.LblLDt.Left = CDbl(13500)
  loc_1170D14: Set var_AC = Me.TopCtrl1
  loc_1170D1A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1170D28: Call 0.Method_arg_50 (var_B0)
  loc_1170D38: Set var_AC = Me.TopCtrl1
  loc_1170D3E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B0))
  loc_1170D53: Set global_84 = New 
  loc_1170D65: Me.TopCtrl1.CursorLocation = 3
  loc_1170D8F: var_C0 = CVar("Select Code,Name,Nature,SysYN From SundryMast Where LogSite_Code in ('" & MemVar_1F95078 & "','HO') Order By Name") 'String
  loc_1170D99: Me.Open var_C0, CVar(MemVar_1F95044), 3
  loc_1170DAD: CVarUnk
  loc_1170DB2: VerifyVarObj
  loc_1170DB8: Set var_AC = Me.DGSundry
  loc_1170DBE: LateIdStAd
  loc_1170DD6: Set global_88 = New 
  loc_1170DE8: Me.DGSundry.CursorLocation = 3
  loc_1170E12: var_C0 = CVar("Select Code,Name,DeskCode,Type From RevMast Where LogSite_Code in ('" & MemVar_1F95078 & "','HO') And (FlagType ='POS' or FlagType  Is Null or FlagType='')  Order By Name") 'String
  loc_1170E1C: Me.Open var_C0, CVar(MemVar_1F95044), 3
  loc_1170E30: CVarUnk
  loc_1170E35: VerifyVarObj
  loc_1170E41: LateIdStAd
  loc_1170E7B: var_CC = "Select V_Type From Voucher_Type Where LogSite_Code in ('" & MemVar_1F95078 & "','HO') And RestCode='" & global_60 & "' And NCat IN ('BBILL')"
  loc_1170E84: unk_4BC9E5.Execute var_CC, var_C0, -1
  loc_1170E8F: Set var_88 = Me.DGRevenue
  loc_1170EB7: If (var_88.RecordCount > 0) Then
  loc_1170EBD:   var_88.MoveFirst
  loc_1170EF3:   global_92 = CStr(var_88.Fields.Item("V_Type").Value)
  loc_1170F04: End If
  loc_1170F20: Me.CursorLocation = 3
  loc_1170F43: var_B0 = "Select DISTINCT (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode From SundryType SP Where SP.LogSite_Code in ('" & MemVar_1F95078
  loc_1170F5B: var_C0 = CVar(CStr(var_88.Fields.Item("V_Type").Value) & "','HO')  and V_Type in ('" & global_92 & "') Order By (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))") 'String
  loc_1170F65: Me.Open var_88.Fields.Item("V_Type").Value, CVar(MemVar_1F95044), 3
  loc_1170F99: Call Proc_119_59_E8CF38(Proc_5_1_100EC1C("INI", Me, New, 1, -1, Me, Me), global_88, 1, -1)
  loc_1170FAC: Set var_AC = Me.TopCtrl1
  loc_1170FB2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_1170FC3: Set var_AC = Me.TopCtrl1
  loc_1170FC9: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_1170FE0: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_1170FE8: Call Proc_119_50_12779E0(Me.TopCtrl1, global_84)
  loc_1170FED: Call Proc_119_58_1443E5C(1)
  loc_1171005: Me.FGrid.Left = CVar(CDbl(400))
  loc_1171020: Me.FGrid.Height = CVar(CDbl(5500))
  loc_1171031: Set var_AC = Me.TopCtrl1
  loc_1171037: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_1171044: Set var_88 = Nothing
  loc_1171047: Exit Sub
  loc_1171048: ' Referenced from: 1170C84
  loc_1171048: Proc_6_60_E63754(-1)
  loc_117104D: Exit Sub
End Sub

Private Sub Form_Resize() 'ED93D8
  'Data Table: 4BC9BC
  Dim var_8C As Label
  loc_ED9336: Call 0.Method_arg_50 (var_88)
  loc_ED9348: Me.LblFormCaption.Caption = var_88
  loc_ED9361: Me.LblFormCaption.Left = CDbl(0)
  loc_ED936D: Set var_A0 = Me.TopCtrl1
  loc_ED9373: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED9380: Set var_8C = Me.TopCtrl1
  loc_ED9386: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED93A0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED93BB: Call 0.Method_arg_100 (var_B8)
  loc_ED93CD: Me.LblFormCaption.Width = var_B8
  loc_ED93D5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E676DC
  'Data Table: 4BC9BC
  loc_E67693: Set global_80 = Nothing
  loc_E676A5: Set global_76 = Nothing
  loc_E676B7: Set global_84 = Nothing
  loc_E676C9: Set global_88 = Nothing
  loc_E676D5: MasterFormExit = 0
  loc_E676D8: Exit Sub
End Sub

Private Sub Form_Activate() 'E4A068
  'Data Table: 4BC9BC
  loc_E4A038: On Error Goto loc_E4A062
  loc_E4A03F: Set var_88 = Me.TopCtrl1
  loc_E4A045: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4A05A: If (CLng(CInt()) = &H2D) Then
  loc_E4A05D:   Call TopCtrl1_UnknownEvent_15()
  loc_E4A062:   ' Referenced from: E4A038
  loc_E4A062: End If
  loc_E4A062: Proc_6_60_E63754()
  loc_E4A067: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E254CC
  'Data Table: 4BC9BC
  loc_E254B1: If (MasterFormExit = &HFF) Then
  loc_E254C1:   Me.Global.Unload Me
  loc_E254C9: End If
  loc_E254C9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29508
  'Data Table: 4BC9BC
  loc_E294E0: On Error Goto loc_E29500
  loc_E294F7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E294FF: Exit Sub
  loc_E29500: ' Referenced from: E294E0
  loc_E29500: Proc_6_60_E63754(Shift)
  loc_E29505: Exit Sub
End Sub

Public Function MasterFormExitGet() '4BD838
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4BD847
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '4BD856
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '4BD865
  SearchCode = Value
End Sub

Public Function global_60Get() '4BD874
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '4BD883
  global_60 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E94568
  'Data Table: 4BC9BC
  Dim Me As Recordset15
  loc_E944F6: On Error Goto loc_E9455F
  loc_E944FF: Me.MoveFirst
  loc_E94529: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94551: Proc_5_0_1107AD0(&HFF, Me, global_76)
  loc_E94559: Call Proc_119_58_1443E5C(0)
  loc_E9455E: Exit Sub
  loc_E9455F: ' Referenced from: E944F6
  loc_E9455F: Proc_6_60_E63754(var_A0)
  loc_E94564: Exit Sub
  loc_E94567:  = 
End Sub

Public Sub Proc_119_50_12779E0
  'Data Table: 4BC9BC
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  loc_1277420: On Error Goto loc_12779D8
  loc_1277427: Set var_88 = Me.FGrid
  loc_1277436: var_88.Cols = &H11
  loc_1277447: var_88.Rows = 1
  loc_1277460: global_64 = CStr(CLng(var_88.BackColor))
  loc_127746A: var_98 = 0
  loc_1277473: var_CC = &H64
  loc_127747F: LateIdCallSt
  loc_127748A: var_98 = CVar(CLng(1)) 'Long
  loc_127748F: var_CC = &H1C2
  loc_127749B: LateIdCallSt
  loc_12774A3: var_98 = 0
  loc_12774AF: var_CC = CVar(CLng(1)) 'Long
  loc_12774B4: var_EC = "Sn."
  loc_12774BD: LateIdCallSt
  loc_12774C8: var_98 = CVar(CLng(1)) 'Long
  loc_12774D3: var_CC = CVar(CInt(1)) 'Integer
  loc_12774DA: LateIdCallSt
  loc_12774E5: var_98 = CVar(CLng(2)) 'Long
  loc_12774EA: var_CC = 0
  loc_12774F6: LateIdCallSt
  loc_1277501: var_98 = CVar(CLng(3)) 'Long
  loc_1277506: var_CC = &H7D0
  loc_1277512: LateIdCallSt
  loc_127751A: var_98 = 0
  loc_1277526: var_CC = CVar(CLng(3)) 'Long
  loc_127752B: var_EC = "Sundry Name"
  loc_1277534: LateIdCallSt
  loc_127753F: var_98 = CVar(CLng(3)) 'Long
  loc_127754A: var_CC = CVar(CInt(1)) 'Integer
  loc_1277551: LateIdCallSt
  loc_127755C: var_98 = CVar(CLng(4)) 'Long
  loc_1277561: var_CC = &H7D0
  loc_127756D: LateIdCallSt
  loc_1277575: var_98 = 0
  loc_1277581: var_CC = CVar(CLng(4)) 'Long
  loc_1277586: var_EC = "Display Name"
  loc_127758F: LateIdCallSt
  loc_127759A: var_98 = CVar(CLng(4)) 'Long
  loc_12775A5: var_CC = CVar(CInt(1)) 'Integer
  loc_12775AC: LateIdCallSt
  loc_12775B7: var_98 = CVar(CLng(5)) 'Long
  loc_12775BC: var_CC = &H7D0
  loc_12775C8: LateIdCallSt
  loc_12775D0: var_98 = 0
  loc_12775DC: var_CC = CVar(CLng(5)) 'Long
  loc_12775E1: var_EC = "Cal. Formula"
  loc_12775EA: LateIdCallSt
  loc_12775F5: var_98 = CVar(CLng(5)) 'Long
  loc_1277600: var_CC = CVar(CInt(1)) 'Integer
  loc_1277607: LateIdCallSt
  loc_1277612: var_98 = CVar(CLng(5)) 'Long
  loc_127761D: var_CC = CVar(CInt(1)) 'Integer
  loc_1277624: LateIdCallSt
  loc_127762F: var_98 = CVar(CLng(6)) 'Long
  loc_1277634: var_CC = &H226
  loc_1277640: LateIdCallSt
  loc_1277648: var_98 = 0
  loc_1277654: var_CC = CVar(CLng(6)) 'Long
  loc_1277659: var_EC = "P/A"
  loc_1277662: LateIdCallSt
  loc_127766D: var_98 = CVar(CLng(6)) 'Long
  loc_1277678: var_CC = CVar(CInt(1)) 'Integer
  loc_127767F: LateIdCallSt
  loc_127768A: var_98 = CVar(CLng(7)) 'Long
  loc_127768F: var_CC = &H320
  loc_127769B: LateIdCallSt
  loc_12776A3: var_98 = 0
  loc_12776AF: var_CC = CVar(CLng(7)) 'Long
  loc_12776B4: var_EC = "Value"
  loc_12776BD: LateIdCallSt
  loc_12776C8: var_98 = CVar(CLng(7)) 'Long
  loc_12776D3: var_CC = CVar(CInt(7)) 'Integer
  loc_12776DA: LateIdCallSt
  loc_12776E5: var_98 = CVar(CLng(7)) 'Long
  loc_12776F0: var_CC = CVar(CInt(7)) 'Integer
  loc_12776F7: LateIdCallSt
  loc_1277702: var_98 = CVar(CLng(8)) 'Long
  loc_1277707: var_CC = 0
  loc_1277713: LateIdCallSt
  loc_127771B: var_98 = 0
  loc_1277727: var_CC = CVar(CLng(8)) 'Long
  loc_127772C: var_EC = "ROff"
  loc_1277735: LateIdCallSt
  loc_1277740: var_98 = CVar(CLng(8)) 'Long
  loc_127774B: var_CC = CVar(CInt(1)) 'Integer
  loc_1277752: LateIdCallSt
  loc_127775D: var_98 = CVar(CLng(&H10)) 'Long
  loc_1277762: var_CC = &H320
  loc_127776E: LateIdCallSt
  loc_1277776: var_98 = 0
  loc_1277782: var_CC = CVar(CLng(&H10)) 'Long
  loc_1277787: var_EC = "A/M"
  loc_1277790: LateIdCallSt
  loc_127779B: var_98 = CVar(CLng(&H10)) 'Long
  loc_12777A6: var_CC = CVar(CInt(1)) 'Integer
  loc_12777AD: LateIdCallSt
  loc_12777B8: var_98 = CVar(CLng(9)) 'Long
  loc_12777BD: var_CC = 0
  loc_12777C9: LateIdCallSt
  loc_12777D1: var_98 = 0
  loc_12777DD: var_CC = CVar(CLng(9)) 'Long
  loc_12777E2: var_EC = "Limit"
  loc_12777EB: LateIdCallSt
  loc_12777F6: var_98 = CVar(CLng(9)) 'Long
  loc_1277801: var_CC = CVar(CInt(7)) 'Integer
  loc_1277808: LateIdCallSt
  loc_1277813: var_98 = CVar(CLng(9)) 'Long
  loc_127781E: var_CC = CVar(CInt(7)) 'Integer
  loc_1277825: LateIdCallSt
  loc_1277830: var_98 = CVar(CLng(&HA)) 'Long
  loc_1277835: var_CC = 0
  loc_1277841: LateIdCallSt
  loc_1277849: var_98 = 0
  loc_1277855: var_CC = CVar(CLng(&HA)) 'Long
  loc_127785A: var_EC = "Nature"
  loc_1277863: LateIdCallSt
  loc_127786E: var_98 = CVar(CLng(&HA)) 'Long
  loc_1277879: var_CC = CVar(CInt(1)) 'Integer
  loc_1277880: LateIdCallSt
  loc_127788B: var_98 = CVar(CLng(&HB)) 'Long
  loc_1277890: var_CC = 0
  loc_127789C: LateIdCallSt
  loc_12778A4: var_98 = 0
  loc_12778B0: var_CC = CVar(CLng(&HB)) 'Long
  loc_12778B5: var_EC = "+/-"
  loc_12778BE: LateIdCallSt
  loc_12778C9: var_98 = CVar(CLng(&HB)) 'Long
  loc_12778D4: var_CC = CVar(CInt(4)) 'Integer
  loc_12778DB: LateIdCallSt
  loc_12778E6: var_98 = CVar(CLng(&HE)) 'Long
  loc_12778EB: var_CC = 0
  loc_12778F7: LateIdCallSt
  loc_1277902: var_98 = CVar(CLng(&HC)) 'Long
  loc_1277907: var_CC = &H258
  loc_1277913: LateIdCallSt
  loc_127791B: var_98 = 0
  loc_1277927: var_CC = CVar(CLng(&HC)) 'Long
  loc_127792C: var_EC = "Bold"
  loc_1277935: LateIdCallSt
  loc_1277940: var_98 = CVar(CLng(&HC)) 'Long
  loc_127794B: var_CC = CVar(CInt(1)) 'Integer
  loc_1277952: LateIdCallSt
  loc_127795D: var_98 = CVar(CLng(&HD)) 'Long
  loc_1277962: var_CC = &HBB8
  loc_127796E: LateIdCallSt
  loc_1277976: var_98 = 0
  loc_1277982: var_CC = CVar(CLng(&HD)) 'Long
  loc_1277987: var_EC = "Revenue Charge"
  loc_1277990: LateIdCallSt
  loc_127799B: var_98 = CVar(CLng(&HD)) 'Long
  loc_12779A6: var_CC = CVar(CInt(1)) 'Integer
  loc_12779AD: LateIdCallSt
  loc_12779B8: var_98 = CVar(CLng(&HF)) 'Long
  loc_12779BD: var_CC = 0
  loc_12779C9: LateIdCallSt
  loc_12779D3: Set var_88 = Nothing 
  loc_12779D7: Exit Sub
  loc_12779D8: ' Referenced from: 1277420
  loc_12779D8: Proc_6_60_E63754(var_88, var_CC, var_98, var_88, var_CC, var_98, var_88, var_EC)
  loc_12779DD: Exit Sub
End Sub

Public Sub Proc_119_51_E7FED0
  'Data Table: 4BC9BC
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim Proc_119_51_E7FED0400 As Integer
  loc_E7FE8D: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_E7FE97:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_E7FE9F:   var_D0 = CVar(CLng(1)) 'Long
  loc_E7FEA9:   var_9C = CVar(CStr(var_86)) 'String
  loc_E7FEB1:   Set var_8C = Me.FGrid
  loc_E7FEB7:   LateIdCallSt
  loc_E7FEC8: Next var_A0 'Integer
  loc_E7FECD: Exit Sub
  loc_E7FECE: Proc_119_51_E7FED0400 = 
End Sub

Public Sub Proc_119_52_DFCF44
  'Data Table: 4BC9BC
  loc_DFCF40: Exit Sub
End Sub

Public Sub Proc_119_53_F9341C
  'Data Table: 4BC9BC
  Dim var_94 As String
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim unk_4BC9E5 As Connection15
  Dim var_124 As Recordset15
  Dim var_128 As Fields15
  Dim var_13C As Field20
  Dim var_9C As TextBox
  loc_F93318: var_94 = "Select Count(*) From SundryType Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (V_Type='" & global_92
  loc_F9331F: var_CC = CVar(var_94 & "' And AppDate=") 'String
  loc_F9332D: Set var_98 = Me.Txt
  loc_F93333: Call 0.Method_Proc_119_53_F9341C0 (CInt(0), var_9C, var_CC, var_120, -1)
  loc_F93342: Proc_6_7_F26918(var_BC, CVar(var_9C), var_124, var_128)
  loc_F9334A: var_DC = 0 & var_BC 
  loc_F93361: unk_4BC9E5.Execute CStr(var_DC & ")"), var_13C, var_14C
  loc_F93369:  = var_124.Fields
  loc_F93371:  = var_128.Item()
  loc_F93379:  = var_13C.Value
  loc_F933B0: If (var_14C > 0) Then
  loc_F933D4:   MsgBox("Duplicate Entry", &H40, "Information", var_CC, var_DC)
  loc_F933EF:   Set var_98 = Me.Txt
  loc_F933F5:   Call 0.Method_Proc_119_53_F9341C0 (CInt(0))
  loc_F933FD:   var_9C.SetFocus
  loc_F9340E:   Proc_119_53_F9341C = &HFF
  loc_F93414: End If
  loc_F93414: Proc_119_53_F9341C = var_9C
  loc_F9341A: CExtInstUnk
End Sub

Public Sub Proc_119_54_1157CB0(arg_C, arg_10) '1157CB0
  'Data Table: 4BC9BC
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
  loc_1157914: var_B4 = CVar(CLng(arg_C)) 'Long
  loc_115791D: var_D4 = CVar(CLng(arg_10)) 'Long
  loc_1157937: var_98 = CStr(Me.FGrid.TextMatrix))
  loc_1157958: var_C4 = "+"
  loc_1157972: var_118 = Left(var_98, 1)
  loc_115797A: var_E4 = "-"
  loc_1157991: If CBool((Left(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_11579B2:   MsgBox("Invalid Operator at Starting position of furmula", 0, var_108, var_118, var_128)
  loc_11579C2:   Proc_119_54_1157CB0 = &HFF
  loc_11579C8: End If
  loc_11579E0: var_C4 = "+"
  loc_11579FA: var_118 = Right(var_98, 1)
  loc_1157A02: var_E4 = "-"
  loc_1157A19: If CBool((Right(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_1157A3A:   MsgBox("Invalid Operator at Ending position of furmula", 0, var_108, var_118, var_128)
  loc_1157A4A:   Proc_119_54_1157CB0 = &HFF
  loc_1157A50: End If
  loc_1157A52: var_86 = 0
  loc_1157A55: ' Referenced from: 1157CA4
  loc_1157A5F: If (Len(var_98) > 0) Then
  loc_1157A64:   var_A2 = 0
  loc_1157A79:   var_108 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_1157A8F:   var_F8 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_1157AAB:   var_B4 = (InStr(1, var_98, "-", 0) = 0)
  loc_1157AC9:   var_138 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_1157ADF:   var_128 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_1157AFB:   var_E4 = (InStr(1, var_98, "+", 0) = 0)
  loc_1157B02:   var_168 = IIf(var_E4, var_128, (Right(var_98, 1) = var_C4) Or (IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108) = var_E4))
  loc_1157B32:   var_178 = (InStr(1, var_98, "+", 0) >= InStr(1, var_98, "-", 0))
  loc_1157B39:   var_188 = IIf(var_178, IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108), var_168)
  loc_1157B42:   var_9A = CInt(var_188)
  loc_1157B62:   If (var_9A = 0) Then
  loc_1157B68:     var_A0 = var_98
  loc_1157B6E:   Else
  loc_1157B80:     var_F8 = Left(var_98, CLng((var_9A - 1)))
  loc_1157B89:     var_A0 = CStr("Invalid Operator at Ending position of furmula")
  loc_1157B8F:   End If
  loc_1157B9A:   For var_18C = 1 To (arg_C - 1): var_88 = var_18C 'Integer
  loc_1157BA3:     var_148 = CVar(var_A0) 'String
  loc_1157BAB:     var_B4 = CVar(CLng(var_88)) 'Long
  loc_1157BE9:     If (CVar(CLng(1)) = Trim(CVar(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1157BEE:       var_A2 = &HFF
  loc_1157BF1:       Exit For
  loc_1157BF4:     End If
  loc_1157BF7:   Next var_18C 'Integer
  loc_1157BFC:   ' Referenced from: 1157BF1
  loc_1157C02:   If (var_A2 = 0) Then
  loc_1157C10:     var_F8 = Trim(var_A0)
  loc_1157C33:     var_108 = ("Invalid Row Reference " + var_F8)
  loc_1157C3C:     var_118 = (CVar(CStr(Me.FGrid.TextMatrix))) + vbCrLf)
  loc_1157C45:     var_128 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + "Please Enter Correct No.")
  loc_1157C49:     MsgBox(var_128, &H40, "Validation", var_168, var_188)
  loc_1157C64:     Proc_119_54_1157CB0 = &HFF
  loc_1157C6A:   End If
  loc_1157C70:   If (var_9A = 0) Then
  loc_1157C76:     var_98 = vbNullString
  loc_1157C7C:   Else
  loc_1157C91:     var_108 = Mid(var_98, CLng((var_9A + 1)), var_F8)
  loc_1157C9A:     var_98 = CStr(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1157CA4:   End If
  loc_1157CA4:   GoTo loc_1157A55
  loc_1157CA7: End If
  loc_1157CA7: Proc_119_54_1157CB0 = 
  loc_1157CAD: StAryRecCopy
End Sub

Public Sub Proc_119_55_E45BE4
  'Data Table: 4BC9BC
  loc_E45BC0: Set var_88 = Me.TopCtrl1
  loc_E45BC6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E45BDF: If (CStr() = "Browse") Then
  loc_E45BE2:   Exit Sub
  loc_E45BE3: End If
  loc_E45BE3: Exit Sub
End Sub

Public Sub Proc_119_56_1506DC8(arg_C) '1506DC8
  'Data Table: 4BC9BC
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
  loc_1505F07: var_A0 = CLng(Me.FGrid.Col)
  loc_1505F17: If (var_A0 = CLng(3)) Then
  loc_1505F3A:   var_A6 = Me.EOF
  loc_1505F68:   Set var_8C = Me.TxtGrid
  loc_1505F6E:   Call 0.Method_Proc_119_56_1506DC80 (arg_C, var_AC, var_B0)
  loc_1505F76:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_1505F8E:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_1505FA4:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1505FAC:     var_E0 = CVar(CLng(3)) 'Long
  loc_1505FB1:     var_100 = vbNullString
  loc_1505FBB:     Set var_AC = Me.FGrid
  loc_1505FC1:     LateIdCallSt
  loc_1505FE6:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1505FEE:     var_E0 = CVar(CLng(2)) 'Long
  loc_1505FF3:     var_100 = vbNullString
  loc_1505FFD:     Set var_AC = Me.FGrid
  loc_1506003:     LateIdCallSt
  loc_1506028:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506030:     var_E0 = CVar(CLng(&HA)) 'Long
  loc_1506035:     var_100 = vbNullString
  loc_150603F:     Set var_AC = Me.FGrid
  loc_1506045:     LateIdCallSt
  loc_150606A:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506072:     var_E0 = CVar(CLng(&HE)) 'Long
  loc_1506077:     var_100 = vbNullString
  loc_1506081:     Set var_AC = Me.FGrid
  loc_1506087:     LateIdCallSt
  loc_150609C:   Else
  loc_150609F:     Call Proc_119_61_FC4AF8(var_A6, var_AC, var_100, var_E0, var_C0, var_AC, var_100, var_E0)
  loc_15060AA:     If (var_A6 = 0) Then
  loc_15060B2:       Proc_119_56_1506DC8 = 0
  loc_15060B8:     End If
  loc_15060CB:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15060D3:     var_F0 = CVar(CLng(3)) 'Long
  loc_1506106:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_150610E:     Set var_138 = Me.FGrid
  loc_1506114:     LateIdCallSt
  loc_1506143:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_150614B:     var_F0 = CVar(CLng(2)) 'Long
  loc_150617E:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1506186:     Set var_138 = Me.FGrid
  loc_150618C:     LateIdCallSt
  loc_15061BB:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15061C3:     var_F0 = CVar(CLng(4)) 'Long
  loc_15061F6:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1506204:     LateIdCallSt
  loc_150626B:     var_134 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_1506273:     Set var_138 = Me.FGrid
  loc_1506279:     LateIdCallSt
  loc_15062A6:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15062AE:     var_F0 = CVar(CLng(&HE)) 'Long
  loc_15062E1:     var_134 = CVar(CStr(Me.Fields.Item("SysYN").Value)) 'String
  loc_15062E9:     Set var_138 = Me.FGrid
  loc_15062EF:     LateIdCallSt
  loc_150630B:   End If
  loc_150631E:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506326:   var_E0 = CVar(CLng(&H10)) 'Long
  loc_150632B:   var_100 = "Manual"
  loc_1506335:   Set var_AC = Me.FGrid
  loc_150633B:   LateIdCallSt
  loc_1506366:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_150636B:   var_E0 = 1
  loc_1506378:   Set var_AC = Me.FGrid
  loc_1506389:   var_B0 = CStr(var_AC.TextMatrix))
  loc_15063A2:   If (var_B0 <> vbNullString) Then
  loc_15063A5:     var_C0 = vbNullString
  loc_15063AF:     Set var_8C = Me.FGrid
  loc_15063C0:   End If
  loc_15063C3: Else
  loc_15063CA:   If Not (var_A0 = CLng(1)) Then
  loc_15063D4:     If (var_A0 = CLng(4)) Then
  loc_15063D7:     End If
  loc_1506413:     Set var_8C = Me.TxtGrid
  loc_1506419:     Call 0.Method_Proc_119_56_1506DC80 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)))
  loc_1506421:     var_E0 = var_AC.Text
  loc_1506429:     var_134 = CVar(var_B0) 'String
  loc_1506431:     Set var_13C = Me.FGrid
  loc_1506437:     LateIdCallSt
  loc_1506458:   Else
  loc_150645F:     If (var_A0 = CLng(5)) Then
  loc_150649F:       Set var_8C = Me.TxtGrid
  loc_15064A5:       Call 0.Method_Proc_119_56_1506DC80 (arg_C, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_13C, var_134)
  loc_15064AD:       var_C0 = var_AC.Text
  loc_15064B5:       var_134 = CVar(var_B0) 'String
  loc_15064BD:       Set var_13C = Me.FGrid
  loc_15064C3:       LateIdCallSt
  loc_1506500:       If (CLng(Me.FGrid.Row) = 1) Then
  loc_1506516:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_150651F:         Set var_AC = Me.FGrid
  loc_150652E:         var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1506533:         var_100 = vbNullString
  loc_150653D:         Set var_114 = Me.FGrid
  loc_1506543:         LateIdCallSt
  loc_1506560:         Proc_119_56_1506DC8 = &HFF
  loc_1506566:       End If
  loc_1506573:       Set var_8C = Me.TxtGrid
  loc_1506579:       Call 0.Method_Proc_119_56_1506DC80 (arg_C, var_AC, var_B0, var_114, var_100, var_E0, var_C0)
  loc_1506581:       var_13C = var_AC.Text
  loc_1506598:       If (var_B0 <> vbNullString) Then
  loc_15065D6:         Call Proc_119_54_1157CB0(CInt(CLng(Me.FGrid.Row)), CInt(CLng(Me.FGrid.Col)))
  loc_15065EF:         If (var_13E = &HFF) Then
  loc_15065F4:           var_86 = 0
  loc_150660A:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506613:           Set var_AC = Me.FGrid
  loc_1506622:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1506627:           var_100 = vbNullString
  loc_1506637:           LateIdCallSt
  loc_150664F:           Proc_119_56_1506DC8 = Me.FGrid
  loc_1506655:         End If
  loc_1506655:       End If
  loc_1506658:     Else
  loc_150665F:       If Not (var_A0 = CLng(8)) Then
  loc_1506669:         If (var_A0 = CLng(&HC)) Then
  loc_150666C:         End If
  loc_15066A8:         Set var_8C = Me.TxtGrid
  loc_15066AE:         Call 0.Method_Proc_119_56_1506DC80 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_100, CVar(CLng(Me.FGrid.Col)))
  loc_15066B6:         var_C0 = var_AC.Text
  loc_15066CC:         LateIdCallSt
  loc_15066F7:         Set var_8C = Me.TxtGrid
  loc_15066FD:         Call 0.Method_Proc_119_56_1506DC80 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0), var_86)
  loc_1506705:         var_13E = var_AC.Text
  loc_150671C:         If (var_B0 = vbNullString) Then
  loc_1506732:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_150673B:           Set var_AC = Me.FGrid
  loc_150674A:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_150674F:           var_100 = "No"
  loc_1506759:           Set var_114 = Me.FGrid
  loc_150675F:           LateIdCallSt
  loc_1506777:         End If
  loc_150677A:       Else
  loc_1506781:         If (var_A0 = CLng(&H10)) Then
  loc_1506788:           Set var_114 = Me.FGrid
  loc_15067C0:           Set var_8C = Me.TxtGrid
  loc_15067C6:           Call 0.Method_Proc_119_56_1506DC80 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_15067CE:           var_E0 = var_AC.Text
  loc_15067E4:           LateIdCallSt
  loc_150680F:           Set var_8C = Me.TxtGrid
  loc_1506815:           Call 0.Method_Proc_119_56_1506DC80 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_150681D:           var_C0 = var_AC.Text
  loc_1506834:           If (var_B0 = vbNullString) Then
  loc_150684A:             var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506853:             Set var_AC = Me.FGrid
  loc_1506862:             var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1506867:             var_100 = "Manual"
  loc_1506871:             Set var_114 = Me.FGrid
  loc_1506877:             LateIdCallSt
  loc_150688F:           End If
  loc_1506892:         Else
  loc_1506899:           If (var_A0 = CLng(6)) Then
  loc_15068A0:             Set var_114 = Me.FGrid
  loc_15068D8:             Set var_8C = Me.TxtGrid
  loc_15068DE:             Call 0.Method_Proc_119_56_1506DC80 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_15068E6:             var_E0 = var_AC.Text
  loc_15068FC:             LateIdCallSt
  loc_1506927:             Set var_8C = Me.TxtGrid
  loc_150692D:             Call 0.Method_Proc_119_56_1506DC80 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_1506935:             var_C0 = var_AC.Text
  loc_150694C:             If (var_B0 = vbNullString) Then
  loc_1506962:               var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_150696B:               Set var_AC = Me.FGrid
  loc_150697A:               var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_150697F:               var_100 = "Amt"
  loc_1506989:               Set var_114 = Me.FGrid
  loc_150698F:               LateIdCallSt
  loc_15069A7:             End If
  loc_15069AA:           Else
  loc_15069B1:             If Not (var_A0 = CLng(9)) Then
  loc_15069BB:               If (var_A0 = CLng(7)) Then
  loc_15069BE:               End If
  loc_15069CA:               Set var_8C = Me.TxtGrid
  loc_15069D0:               Call 0.Method_Proc_119_56_1506DC80 (0, var_AC, var_B0, var_114, var_100, var_E0)
  loc_15069D8:               var_C0 = var_AC.Text
  loc_15069FB:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506A13:               var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1506A40:               var_170 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_1506A48:               Set var_13C = Me.FGrid
  loc_1506A4E:               LateIdCallSt
  loc_1506A78:             Else
  loc_1506A7F:               If (var_A0 = CLng(&HD)) Then
  loc_1506AD0:                 Set var_8C = Me.TxtGrid
  loc_1506AD6:                 Call 0.Method_Proc_119_56_1506DC80 (arg_C, var_AC, var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_13C, var_170, 1)
  loc_1506ADE:                 1 = var_AC.Text
  loc_1506AF6:                 If (var_100 Or (var_B0 = vbNullString)) Then
  loc_1506B0C:                   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506B14:                   var_E0 = CVar(CLng(&HF)) 'Long
  loc_1506B19:                   var_100 = vbNullString
  loc_1506B23:                   Set var_AC = Me.FGrid
  loc_1506B29:                   LateIdCallSt
  loc_1506B4E:                   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506B56:                   var_E0 = CVar(CLng(&HD)) 'Long
  loc_1506B5B:                   var_100 = vbNullString
  loc_1506B65:                   Set var_AC = Me.FGrid
  loc_1506B6B:                   LateIdCallSt
  loc_1506B90:                   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506B98:                   var_E0 = CVar(CLng(&HB)) 'Long
  loc_1506B9D:                   var_100 = vbNullString
  loc_1506BA7:                   Set var_AC = Me.FGrid
  loc_1506BAD:                   LateIdCallSt
  loc_1506BC2:                 Else
  loc_1506BD5:                   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506BDD:                   var_F0 = CVar(CLng(&HF)) 'Long
  loc_1506C10:                   var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1506C18:                   Set var_138 = Me.FGrid
  loc_1506C1E:                   LateIdCallSt
  loc_1506C4D:                   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506C55:                   var_F0 = CVar(CLng(&HD)) 'Long
  loc_1506C88:                   var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1506C90:                   Set var_138 = Me.FGrid
  loc_1506C96:                   LateIdCallSt
  loc_1506CF1:                   If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_1506D07:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506D0F:                     var_E0 = CVar(CLng(&HB)) 'Long
  loc_1506D14:                     var_100 = "+"
  loc_1506D1E:                     Set var_AC = Me.FGrid
  loc_1506D24:                     LateIdCallSt
  loc_1506D39:                   Else
  loc_1506D78:                     If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_1506D8E:                       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506D96:                       var_E0 = CVar(CLng(&HB)) 'Long
  loc_1506D9B:                       var_100 = "-"
  loc_1506DA5:                       Set var_AC = Me.FGrid
  loc_1506DAB:                       LateIdCallSt
  loc_1506DBD:                     End If
  loc_1506DBD:                   End If
  loc_1506DBD:                 End If
  loc_1506DBD:               End If
  loc_1506DBD:             End If
  loc_1506DBD:           End If
  loc_1506DBD:         End If
  loc_1506DBD:       End If
  loc_1506DBD:     End If
  loc_1506DBD:   End If
  loc_1506DBD: End If
  loc_1506DC2: Proc_119_56_1506DC8 = &HFF
End Sub

Public Sub Proc_119_57_F194C0
  'Data Table: 4BC9BC
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F193D6: Set var_8C = Me.Txt
  loc_F193DC: Call 0.Method_Proc_119_57_F194C0C (var_8E, var_86)
  loc_F193EC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F19402:   Set var_8C = Me.Txt
  loc_F19408:   Call 0.Method_Proc_119_57_F194C00 (CInt(var_86), var_98)
  loc_F19410:   var_98.Text = vbNullString
  loc_F1942C:   Set var_8C = Me.Txt
  loc_F19432:   Call 0.Method_Proc_119_57_F194C00 (CInt(var_86), var_98)
  loc_F1943A:   var_98.Tag = vbNullString
  loc_F19449: Next var_92 'Byte
  loc_F19462: Me.FGrid.Rows = 1
  loc_F1947F: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F19487: Set var_98 = Me.FGrid
  loc_F194B6: Me.FGrid.FixedRows = 1
  loc_F194BE: Exit Sub
End Sub

Public Sub Proc_119_58_1443E5C
  'Data Table: 4BC9BC
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_4BC9E5 As Connection15
  Dim var_88 As Recordset15
  Dim var_124 As Fields15
  Dim var_148 As Variant
  Dim var_138 As Variant
  Dim var_168 As Variant
  Dim var_128 As TextBox
  Dim var_8A As Integer
  Dim var_120 As Variant
  loc_144336C: On Error Goto loc_1443E53
  loc_1443386: If (Me.RecordCount > 0) Then
  loc_1443389:   Call Proc_119_57_F194C0()
  loc_14433A2:   var_94 = "Select VT.Description,SP.*,SM.Name As SundryName,RM.Name As RevName From (((SundryType SP Inner Join Voucher_type VT On (SP.V_Type=VT.V_Type And SP.LogSite_Code=VT.LogSite_Code)) Inner Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Where SP.Logsite_Code='" & MemVar_1F95078
  loc_14433A9:   var_CC = CVar(var_94 & "' and SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)='") 'String
  loc_14433F0:   unk_4BC9E5.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "' Order By SP.SNo"), var_120, -1
  loc_14433FB:   Set var_88 = var_124
  loc_144342F:   If (var_88.RecordCount > 0) Then
  loc_144346C:     var_124 = var_88.Fields
  loc_14434D5:     var_188 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_124.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_144351A:     Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_188)))
  loc_1443594:     var_128 = var_88.Fields.Item("U_AE")
  loc_14435F5:     var_188 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_128)) = "E"), "Last Update : ", "entdt : "))
  loc_144363A:     Me.LblLDt.Caption = CStr(var_188 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_14436C4:     Set var_124 = Me.Txt
  loc_14436CA:     Call 0.Method_Proc_119_58_1443E5C0 (CInt(0), var_128, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/mm/yyyy")))
  loc_14436D2:     var_128.Text = 1
  loc_14436EE:     var_8A = 1
  loc_1443704:     Me.FGrid.Rows = 1
  loc_144370C:     ' Referenced from: 1443DCA
  loc_144371B:     If Not(var_88.EOF) Then
  loc_144371E:       var_A8 = vbNullString
  loc_1443728:       Set var_98 = Me.FGrid
  loc_144373D:       Set var_1E8 = Me.FGrid
  loc_1443744:       var_EC = CVar(CLng(var_8A)) 'Long
  loc_144374C:       var_138 = CVar(CLng(1)) 'Long
  loc_144377C:       var_CC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1443783:       LateIdCallSt
  loc_14437D2:       var_CC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1E8, var_CC, CVar(CLng(2)))) 'String
  loc_14437D9:       LateIdCallSt
  loc_1443824:       var_CC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1E8, var_CC)) 'String
  loc_144382B:       LateIdCallSt
  loc_1443876:       var_CC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1E8, var_CC)) 'String
  loc_144387D:       LateIdCallSt
  loc_1443893:       var_EC = CVar(CLng(var_8A)) 'Long
  loc_14438CF:       LateIdCallSt
  loc_1443909:       var_100 = Proc_6_38_E69628(CVar(var_88.Fields.Item("PerOrAmt")), var_1E8, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_EC, var_1E8, var_CC)), var_EC)
  loc_1443910:       var_148 = CVar(CLng(var_8A)) 'Long
  loc_1443918:       var_168 = CVar(CLng(6)) 'Long
  loc_144394E:       var_120 = CVar(CStr(IIf((var_100 = "P"), "Per", "Amt"))) 'String
  loc_1443955:       LateIdCallSt
  loc_14439D2:       LateIdCallSt
  loc_1443A10:       var_100 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoundOff")), var_1E8, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_1443A17:       var_148 = CVar(CLng(var_8A)) 'Long
  loc_1443A1F:       var_168 = CVar(CLng(8)) 'Long
  loc_1443A55:       var_120 = CVar(CStr(IIf((var_100 = "Y"), "Yes", "No"))) 'String
  loc_1443A5C:       LateIdCallSt
  loc_1443AD9:       LateIdCallSt
  loc_1443B28:       var_CC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_1443B2F:       LateIdCallSt
  loc_1443B7A:       var_CC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(var_8A)), var_1E8, var_CC, CVar(CLng(9)))) 'String
  loc_1443B81:       LateIdCallSt
  loc_1443BD3:       LateIdCallSt
  loc_1443C0D:       var_100 = Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP")), var_1E8, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_1E8, var_CC)), CVar(CLng(var_8A)))
  loc_1443C59:       LateIdCallSt
  loc_1443CB3:       var_CC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(&HF)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(IIf((var_100 = "Y"), "Yes", "No"))), CVar(CLng(&HC)))) 'String
  loc_1443CBA:       LateIdCallSt
  loc_1443D05:       var_CC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevName")), CVar(CLng(&HD)), CVar(CLng(var_8A)), var_1E8, var_CC)) 'String
  loc_1443D0C:       LateIdCallSt
  loc_1443D4D:       var_148 = CVar(CLng(var_8A)) 'Long
  loc_1443D55:       var_168 = CVar(CLng(&H10)) 'Long
  loc_1443D82:       var_FC = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("AutoManual")), var_1E8, "Auto", CVar(CLng(var_8A))) = "A"), "Auto", "Manual")
  loc_1443D8B:       var_120 = CVar(CStr(var_FC)) 'String
  loc_1443D92:       LateIdCallSt
  loc_1443DB5:       Set var_1E8 = Nothing 
  loc_1443DBF:       var_8A = (var_8A + 1)
  loc_1443DC5:       var_88.MoveNext
  loc_1443DCA:       GoTo loc_144370C
  loc_1443DCD:     End If
  loc_1443DCD:   End If
  loc_1443DCD:   var_A8 = 0
  loc_1443DD7:   Set var_98 = Me.FGrid
  loc_1443E04:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1443E07:     var_A8 = "1"
  loc_1443E11:     Set var_98 = Me.FGrid
  loc_1443E22:   End If
  loc_1443E22:   var_A8 = 1
  loc_1443E35:   Me.FGrid.FixedRows = var_A8
  loc_1443E40: Else
  loc_1443E40:   Call Proc_119_57_F194C0(FGrid.DispID_10000, var_A8, FGrid.DispID_2E, var_A8, var_8A, var_1E8, var_120)
  loc_1443E45: End If
  loc_1443E45: Call Proc_119_60_E84F60(var_168, var_148, var_1E8)
  loc_1443E4F: Set var_88 = Nothing
  loc_1443E52: Exit Sub
  loc_1443E53: ' Referenced from: 144336C
  loc_1443E53: Proc_6_60_E63754(var_120, var_168)
  loc_1443E58: Exit Sub
End Sub

Public Sub Proc_119_59_E8CF38(arg_C) 'E8CF38
  'Data Table: 4BC9BC
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_E8CED2: Set var_8C = Me.Txt
  loc_E8CED8: Call 0.Method_Proc_119_59_E8CF38C (var_8E, var_86)
  loc_E8CEE8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E8CEFE:   Set var_8C = Me.Txt
  loc_E8CF04:   Call 0.Method_Proc_119_59_E8CF380 (CInt(var_86), var_98)
  loc_E8CF0C:   var_98.Enabled = arg_C
  loc_E8CF1B: Next var_92 'Byte
  loc_E8CF2E: Me.Frame1.Enabled = arg_C
  loc_E8CF36: Exit Sub
End Sub

Public Sub Proc_119_60_E84F60
  'Data Table: 4BC9BC
  loc_E84F0C: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_E84F1E:   Me.DGRevenue.Visible = False
  loc_E84F26: End If
  loc_E84F42: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_E84F54:   Me.DGSundry.Visible = False
  loc_E84F5C: End If
  loc_E84F5C: Exit Sub
End Sub

Public Sub Proc_119_61_FC4AF8
  'Data Table: 4BC9BC
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC497B: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_FC4980:   var_92 = 3 'Byte
  loc_FC4984: End If
  loc_FC498D: Set var_98 = Me.TxtGrid
  loc_FC4993: Call 0.Method_Proc_119_61_FC4AF80 (0, var_B0)
  loc_FC49B6: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC49EA: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC4A0E:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC4A11:     GoTo loc_FC4AE3
  loc_FC4A14:   End If
  loc_FC4A18:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC4A42:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC4A4C:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC4A81:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC4AA5:     MsgBox("Duplicate Sundry Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC4ABE:     Set var_98 = Me.TxtGrid
  loc_FC4AC4:     Call 0.Method_Proc_119_61_FC4AF80 (0, var_B0, CVar(CLng(var_92)))
  loc_FC4ACC:     var_B0.SetFocus
  loc_FC4ADD:     Proc_119_61_FC4AF8 = 0
  loc_FC4AE3:     ' Referenced from: FC4A11
  loc_FC4AE3:   End If
  loc_FC4AE6: Next var_D4 'Integer
  loc_FC4AF0: Proc_119_61_FC4AF8 = &HFF
  loc_FC4AF6: () = 
End Sub

Public Sub Proc_119_62_12D4400
  'Data Table: 4BC9BC
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_8A As Integer
  Dim var_B8 As String
  Dim unk_4BC9E5 As Connection15
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
  loc_12D3D74: On Error Goto loc_12D43F8
  loc_12D3D84: Set var_B0 = Me.FGrid
  loc_12D3D8A: var_B0.Rows = 1
  loc_12D3D94: var_8A = 1
  loc_12D3DB2: var_B8 = "SELECT SF.*,SM.Name as SundryName" & " FROM SundryTypeFix SF Inner JOIN SundryMast SM ON SF.SundryCode = SM.Code" & " Where SF.LogSite_Code='"
  loc_12D3DC9: unk_4BC9E5.Execute var_B8 & MemVar_1F95078 & "' Order By SNo ", var_D0, -1
  loc_12D3DD4: Set var_88 = var_B0
  loc_12D3DFC: If (var_88.RecordCount > 0) Then
  loc_12D3DFF:   ' Referenced from: 12D4354
  loc_12D3E0E:   If Not(var_88.EOF) Then
  loc_12D3E11:     var_9C = vbNullString
  loc_12D3E1B:     Set var_B0 = Me.FGrid
  loc_12D3E30:     Set var_DC = Me.FGrid
  loc_12D3E37:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12D3E3F:     var_100 = CVar(CLng(1)) 'Long
  loc_12D3E6F:     var_120 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_12D3E76:     LateIdCallSt
  loc_12D3EC5:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_DC, var_120, CVar(CLng(2)))) 'String
  loc_12D3ECC:     LateIdCallSt
  loc_12D3F17:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_DC, var_120)) 'String
  loc_12D3F1E:     LateIdCallSt
  loc_12D3F69:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_DC, var_120)) 'String
  loc_12D3F70:     LateIdCallSt
  loc_12D3F86:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12D3FC2:     LateIdCallSt
  loc_12D3FFC:     var_B8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("PerOrAmt")), var_DC, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_AC, var_DC, var_120)), var_AC)
  loc_12D4003:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12D400B:     var_160 = CVar(CLng(6)) 'Long
  loc_12D4041:     var_180 = CVar(CStr(IIf((var_B8 = "P"), "Per", "Amt"))) 'String
  loc_12D4048:     LateIdCallSt
  loc_12D40C5:     LateIdCallSt
  loc_12D4103:     var_B8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoundOff")), var_DC, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_12D410A:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12D4112:     var_160 = CVar(CLng(8)) 'Long
  loc_12D4148:     var_180 = CVar(CStr(IIf((var_B8 = "Y"), "Yes", "No"))) 'String
  loc_12D414F:     LateIdCallSt
  loc_12D41CC:     LateIdCallSt
  loc_12D421B:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_DC, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_12D4222:     LateIdCallSt
  loc_12D426D:     var_120 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_DC, var_120, CVar(CLng(9)))) 'String
  loc_12D4274:     LateIdCallSt
  loc_12D42B5:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12D42BD:     var_160 = CVar(CLng(&HC)) 'Long
  loc_12D42F3:     var_180 = CVar(CStr(IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP")), var_DC, "Yes", CVar(CLng(var_8A))) = "Y"), "Yes", "No"))) 'String
  loc_12D42FA:     LateIdCallSt
  loc_12D431F:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_12D4327:     var_F0 = CVar(CLng(&H10)) 'Long
  loc_12D432C:     var_110 = "Manual"
  loc_12D4335:     LateIdCallSt
  loc_12D433F:     Set var_DC = Nothing 
  loc_12D4349:     var_8A = (var_8A + 1)
  loc_12D434F:     var_88.MoveNext
  loc_12D4354:     GoTo loc_12D3DFF
  loc_12D4357:   End If
  loc_12D436A:   Me.FGrid.FixedRows = 1
  loc_12D4372: End If
  loc_12D4378: If (var_8A = 1) Then
  loc_12D438E:   Me.FGrid.Rows = 1
  loc_12D43AB:   var_120 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_12D43B3:   Set var_E0 = Me.FGrid
  loc_12D43CF:   var_9C = 1
  loc_12D43E2:   Me.FGrid.FixedRows = var_9C
  loc_12D43EA: End If
  loc_12D43EA: Call Proc_119_60_E84F60(FGrid.DispID_10000, var_120, var_8A, var_DC, var_110, var_F0, var_9C)
  loc_12D43F4: Set var_88 = Nothing
  loc_12D43F7: Exit Sub
  loc_12D43F8: ' Referenced from: 12D3D74
  loc_12D43F8: Proc_6_60_E63754(var_DC, var_180, var_160)
  loc_12D43FD: Exit Sub
End Sub

Public Sub Proc_119_63_E7D618
  'Data Table: 4BC9BC
  loc_E7D5D9: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A0 'Integer
  loc_E7D5EC:   Call Proc_119_54_1157CB0(var_88, CInt(5))
  loc_E7D5F7:   If (var_A4 = &HFF) Then
  loc_E7D5FF:     Proc_119_63_E7D618 = 0
  loc_E7D605:   End If
  loc_E7D608: Next var_A0 'Integer
  loc_E7D612: Proc_119_63_E7D618 = &HFF
End Sub
