VERSION 5.00
Begin VB.Form PrLeavench
  Caption = "Leave Encashment"
  BackColor = &HD0C7BB&
  ForeColor = &H0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  Icon = "PrLeavench.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 105
  ClientTop = 600
  ClientWidth = 10410
  ClientHeight = 5070
  WhatsThisHelp = -1  'True
  PaletteMode = 1
  Begin DataGrid DGEmployee
    Left = 7560
    Top = 4335
    Width = 11250
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 31
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10410
    Height = 495
    TabIndex = 27
  End
  Begin PictureBox Picture1
    Picture = "PrLeavench.frx":1082
    Left = 14835
    Top = 7635
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 26
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture3
    Picture = "PrLeavench.frx":13D0
    Left = 14910
    Top = 7410
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 25
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin TextBox TExt1
    Index = 10
    BackColor = &H80000004&
    Left = 6360
    Top = 30
    Width = 2235
    Height = 255
    TabIndex = 23
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin TextBox TExt1
    Index = 8
    Left = 7545
    Top = 2145
    Width = 1065
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TExt1
    Index = 5
    Left = 7545
    Top = 1830
    Width = 1065
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 4
    Locked = -1  'True
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
  Begin TextBox TExt1
    Index = 9
    Left = 2145
    Top = 2460
    Width = 6465
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin DataGrid DBGrid1
    Left = 255
    Top = 2955
    Width = 11040
    Height = 4410
    TabIndex = 10
  End
  Begin DataGrid DGAcName
    Left = 14655
    Top = 1140
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 19
  End
  Begin TextBox TExt1
    Index = 2
    Left = 2145
    Top = 1515
    Width = 6465
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin TextBox TExt1
    Index = 1
    Left = 7155
    Top = 1200
    Width = 1455
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 15
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
  Begin TextBox TExt1
    Index = 4
    Left = 4545
    Top = 1830
    Width = 1515
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 4
    Locked = -1  'True
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
  Begin TextBox TExt1
    Index = 7
    Left = 4545
    Top = 2145
    Width = 1515
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 6
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
  Begin TextBox TExt1
    Index = 6
    Left = 2145
    Top = 2145
    Width = 735
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 4
    Locked = -1  'True
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
  Begin TextBox TExt1
    Index = 3
    Left = 2145
    Top = 1830
    Width = 735
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 4
    Locked = -1  'True
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
  Begin TextBox TExt1
    Index = 0
    Left = 2145
    Top = 1200
    Width = 735
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 5
    Locked = -1  'True
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
    Left = 16545
    Top = 6840
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 24
  End
  Begin Label LblEmpRef
    Caption = "."
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 8685
    Top = 1530
    Width = 105
    Height = 270
    TabIndex = 32
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
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
    Left = 4755
    Top = 7515
    Width = 2790
    Height = 450
    TabIndex = 30
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
    Left = 1380
    Top = 7515
    Width = 2880
    Height = 420
    TabIndex = 29
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
    Top = 450
    Width = 180
    Height = 540
    TabIndex = 28
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 13515
    Top = 2640
    Width = 675
    Height = 240
    TabIndex = 22
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Amount"
    Index = 6
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 6390
    Top = 2145
    Width = 735
    Height = 240
    TabIndex = 21
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Leave Balance"
    Index = 10
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 6105
    Top = 1830
    Width = 1425
    Height = 240
    TabIndex = 20
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Leave Already Paid"
    Index = 2
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 180
    Top = 2145
    Width = 1875
    Height = 240
    TabIndex = 18
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Employee Name"
    Index = 9
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 480
    Top = 1515
    Width = 1560
    Height = 240
    TabIndex = 17
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Post in Account"
    Index = 8
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 570
    Top = 2460
    Width = 1470
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Leave Encashed"
    Index = 5
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 2925
    Top = 2145
    Width = 1560
    Height = 240
    TabIndex = 15
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Leave Taken"
    Index = 4
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 3255
    Top = 1830
    Width = 1230
    Height = 240
    TabIndex = 14
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Total Leave Allowed"
    Index = 3
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 105
    Top = 1830
    Width = 1965
    Height = 240
    TabIndex = 13
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Serial No."
    Index = 0
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 1095
    Top = 1200
    Width = 945
    Height = 240
    TabIndex = 12
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Date"
    Index = 1
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 6645
    Top = 1200
    Width = 435
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
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "PrLeavench"

Private global_56 As Recordset15
Private global_68 As Integer
Private global_54 As Integer

Private Sub FGPoint_UnknownEvent_9 'E645C8
  'Data Table: 49B6B4
  loc_E64598: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_E6459B:   Call DGEmployee_UnknownEvent_9()
  loc_E645A0: End If
  loc_E645BC: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_E645BF:   Call DGAcName_UnknownEvent_9()
  loc_E645C4: End If
  loc_E645C4: Exit Sub
End Sub

Private Sub Text1_GotFocus(Index As Integer) '1136FA8
  'Data Table: 49B6B4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_1136C3A: Set var_88 = Me.TExt1
  loc_1136C40: Call 0.Method_Text1_GotFocus0 (Index)
  loc_1136C4E: Proc_6_74_E23240(var_8C)
  loc_1136C5A: Call Proc_307_35_EBD5C4(var_8C)
  loc_1136C62: var_92 = Index
  loc_1136C6D: If (var_92 = CInt(9)) Then
  loc_1136C87:   If (Me.RecordCount > 0) Then
  loc_1136C95:     Set var_8C = Me.FGPoint
  loc_1136CAD:     Proc_6_137_1192FDC(Me.DGAcName, global_60, Index)
  loc_1136CBB:   End If
  loc_1136D09:   Set var_88 = Me.TExt1
  loc_1136D0F:   Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_A0)
  loc_1136D17:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1136D2F:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1136D32:     Exit Sub
  loc_1136D33:   End If
  loc_1136D40:   Set var_88 = Me.TExt1
  loc_1136D46:   Call 0.Method_Text1_GotFocus0 (Index, var_8C)
  loc_1136D4E:   var_A0 = var_8C.Text
  loc_1136D60:   var_B0 = "Name"
  loc_1136D9B:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1136DA4:     Me.MoveFirst
  loc_1136DC7:     Set var_88 = Me.TExt1
  loc_1136DCD:     Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1136DD5:     0 = var_8C.Text
  loc_1136DEE:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_1136E03:   End If
  loc_1136E06: Else
  loc_1136E0E:   If (var_92 = CInt(2)) Then
  loc_1136E28:     If (Me.RecordCount > 0) Then
  loc_1136E36:       Set var_8C = Me.FGPoint
  loc_1136E4E:       Proc_6_137_1192FDC(Me.DGEmployee, global_64)
  loc_1136E5C:     End If
  loc_1136EAA:     Set var_88 = Me.TExt1
  loc_1136EB0:     Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_A0)
  loc_1136EB8:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1136ED0:     If (Index Or (var_A0 = vbNullString)) Then
  loc_1136ED3:       Exit Sub
  loc_1136ED4:     End If
  loc_1136EE1:     Set var_88 = Me.TExt1
  loc_1136EE7:     Call 0.Method_Text1_GotFocus0 (Index, var_8C)
  loc_1136EEF:     var_A0 = var_8C.Text
  loc_1136F01:     var_B0 = "Name"
  loc_1136F3C:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1136F45:       Me.MoveFirst
  loc_1136F68:       Set var_88 = Me.TExt1
  loc_1136F6E:       Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1136F76:       0 = var_8C.Text
  loc_1136F8F:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_1136FA4:     End If
  loc_1136FA4:   End If
  loc_1136FA4: End If
  loc_1136FA4: Exit Sub
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer) '116AE0C
  'Data Table: 49B6B4
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_90 As DataGrid
  Dim var_94 As DataGrid
  loc_116AA4F: var_88 = Shift
  loc_116AA5C: If (CLng(Shift) = &H1B) Then
  loc_116AA5F:   Call Proc_307_35_EBD5C4(var_88)
  loc_116AA64:   Exit Sub
  loc_116AA65: End If
  loc_116AA68: var_8A = KeyCode
  loc_116AA71: If (var_8A = 3) Then
  loc_116AA7E:   Set var_90 = Me.TExt1
  loc_116AA84:   Call 0.Method_Text1_KeyDown0 (KeyCode, var_94)
  loc_116AA9F:   Proc_6_41_FA1734(var_94, Shift, 3)
  loc_116AAAE: Else
  loc_116AAB4:   If (var_8A = 4) Then
  loc_116AAC1:     Set var_90 = Me.TExt1
  loc_116AAC7:     Call 0.Method_Text1_KeyDown0 (KeyCode, var_94)
  loc_116AAE2:     Proc_6_41_FA1734(var_94, Shift, 7)
  loc_116AAF1:   Else
  loc_116AAF7:     If (var_8A = 6) Then
  loc_116AB04:       Set var_90 = Me.TExt1
  loc_116AB0A:       Call 0.Method_Text1_KeyDown0 (KeyCode, var_94, 2)
  loc_116AB25:       Proc_6_41_FA1734(var_94, Shift, 8)
  loc_116AB34:     Else
  loc_116AB3C:       If (var_8A = CInt(9)) Then
  loc_116AB5C:         Set var_A4 = Me.FGPoint
  loc_116AB67:         Set var_98 = Nothing
  loc_116AB99:         Proc_6_69_134A630(Me.DGAcName, Me.TExt1, CInt(9), global_60, Shift, 0, 1)
  loc_116AC08:         If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_116AC0F:           Set var_98 = Me.DGAcName
  loc_116AC2E:           Proc_6_138_106E830(var_98, global_60, KeyCode, Me.FGPoint, var_98)
  loc_116AC3C:         End If
  loc_116AC3F:       Else
  loc_116AC47:         If (var_8A = CInt(2)) Then
  loc_116AC67:           Set var_A4 = Me.FGPoint
  loc_116ACA4:           Proc_6_69_134A630(Me.DGEmployee, Me.TExt1, CInt(2), global_64, Shift, 0, 1, Nothing)
  loc_116AD13:           If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_116AD39:             Proc_6_138_106E830(Me.DGEmployee, global_64, KeyCode, Me.FGPoint, var_A4, 0)
  loc_116AD47:           End If
  loc_116AD47:         End If
  loc_116AD47:       End If
  loc_116AD47:     End If
  loc_116AD47:   End If
  loc_116AD47: End If
  loc_116AD82: If ((CBool(Me.DGEmployee.Visible) = 0) And (CBool(Me.DGAcName.Visible) = 0)) Then
  loc_116ADA3:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_116ADAC:     Call Text1_Validate(KeyCode)
  loc_116ADB7:     If (var_86 = &HFF) Then
  loc_116ADBA:       Exit Sub
  loc_116ADBB:     End If
  loc_116ADBE:     Call Proc_307_34_E80A04(KeyCode, var_86, var_A4, 0)
  loc_116ADC3:     Exit Sub
  loc_116ADC4:   End If
  loc_116ADD9:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_116ADE2:     Proc_6_75_E5335C(Shift, arg_14, 0)
  loc_116ADE7:   End If
  loc_116ADEF:   If (KeyCode <> CInt(0)) Then
  loc_116ADFC:     If (CLng(Shift) = &H26) Then
  loc_116AE05:       Proc_6_76_E533C8(Shift, arg_14)
  loc_116AE0A:     End If
  loc_116AE0A:   End If
  loc_116AE0A: End If
  loc_116AE0A: Exit Sub
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer) '100BD20
  'Data Table: 49B6B4
  Dim arg_10 As Integer
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_100BB12: If (arg_10 = &HD) Then
  loc_100BB17:   arg_10 = 0
  loc_100BB1A: End If
  loc_100BB1D: Proc_6_58_E06050(arg_10)
  loc_100BB25: var_86 = KeyAscii
  loc_100BB2E: If (var_86 = 3) Then
  loc_100BB3B:   Set var_8C = Me.TExt1
  loc_100BB41:   Call 0.Method_Text1_KeyPress0 (KeyAscii, var_90)
  loc_100BB5C:   Proc_6_42_129B55C(var_90, arg_10, 3)
  loc_100BB6B: Else
  loc_100BB71:   If (var_86 = 4) Then
  loc_100BB7E:     Set var_8C = Me.TExt1
  loc_100BB84:     Call 0.Method_Text1_KeyPress0 (KeyAscii, var_90, 0)
  loc_100BB9F:     Proc_6_42_129B55C(var_90, arg_10, 7)
  loc_100BBAE:   Else
  loc_100BBB4:     If (var_86 = 6) Then
  loc_100BBC1:       Set var_8C = Me.TExt1
  loc_100BBC7:       Call 0.Method_Text1_KeyPress0 (KeyAscii, var_90, 2)
  loc_100BBE2:       Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_100BBF1:     Else
  loc_100BBF9:       If (var_86 = CInt(2)) Then
  loc_100BC18:         If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_100BC45:           Proc_6_89_1470B00(Me.TExt1, KeyAscii, global_64, arg_10, "Name")
  loc_100BC77:           Proc_6_138_106E830(Me.DGEmployee, global_64, KeyAscii, Me.FGPoint)
  loc_100BC85:         End If
  loc_100BC88:       Else
  loc_100BC90:         If (var_86 = CInt(9)) Then
  loc_100BCAF:           If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_100BCDC:             Proc_6_89_1470B00(Me.TExt1, KeyAscii, global_60, arg_10, "Name")
  loc_100BD0E:             Proc_6_138_106E830(Me.DGAcName, global_60, KeyAscii, Me.FGPoint, 0)
  loc_100BD1C:           End If
  loc_100BD1C:         End If
  loc_100BD1C:       End If
  loc_100BD1C:     End If
  loc_100BD1C:   End If
  loc_100BD1C: End If
  loc_100BD1C: Exit Sub
End Sub

Private Sub Text1_KeyUp(KeyCode As Integer, Shift As Integer) 'F162C0
  'Data Table: 49B6B4
  Dim var_86 As Integer
  loc_F161D3: var_86 = KeyCode
  loc_F161DE: If (var_86 = CInt(9)) Then
  loc_F161FD:   If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_F16211:     var_A4 = "Name"
  loc_F16235:     Proc_6_68_12A2818(Me.DGAcName, Me.TExt1, KeyCode, global_60)
  loc_F16248:   End If
  loc_F1624B: Else
  loc_F16253:   If (var_86 = CInt(2)) Then
  loc_F16272:     If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_F16286:       var_A4 = "Name"
  loc_F162AA:       Proc_6_68_12A2818(Me.DGEmployee, Me.TExt1, KeyCode, global_64, Shift)
  loc_F162BD:     End If
  loc_F162BD:   End If
  loc_F162BD: End If
  loc_F162BD: Exit Sub
  loc_F162BE: Set arg_3C74 = var_A4
End Sub

Private Sub Text1_LostFocus(Index As Integer) 'E48C7C
  'Data Table: 49B6B4
  loc_E48C5A: Set var_88 = Me.TExt1
  loc_E48C60: Call 0.Method_Text1_LostFocus0 (Index)
  loc_E48C6E: Proc_6_73_E23294(var_8C)
  loc_E48C7A: Exit Sub
  loc_E48C7B: Exit Sub
End Sub

Private Sub Text1_Validate(Cancel As Boolean) '1472FF8
  'Data Table: 49B6B4
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_49B6C1 As Connection15
  Dim var_CA As Integer
  Dim var_C4 As Variant
  Dim var_9C As String
  Dim var_D0 As Variant
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_C8 As Variant
  Dim var_128 As Variant
  Dim var_12C As Variant
  Dim var_140 As TextBox
  Dim var_134 As TextBox
  Dim var_118 As Variant
  Dim var_174 As Integer
  Dim var_160 As Recordset15
  Dim var_164 As Fields15
  Dim var_178 As Field20
  Dim var_180 As TextBox
  Dim arg_10 As Integer
  Dim var_88 As Recordset15
  Dim var_194 As Variant
  Dim var_130 As TextBox
  Dim var_138 As String
  Dim var_8C As Recordset15
  loc_147243C: On Error Goto loc_1472FB4
  loc_147245D: Set var_94 = Me.TExt1
  loc_1472463: Call 0.Method_Text1_Validate0 (CInt(2), var_98, var_9C, "SELECT * FROM EMPLOYEE WHERE CODE='")
  loc_147246B: var_C4 = var_98.Tag
  loc_1472474: var_A0 = -1 & var_9C
  loc_1472484: unk_49B6C1.Execute var_A0 & "'", var_C8, 
  loc_147248F: Set var_88 = var_C8
  loc_14724AA: var_CA = Cancel
  loc_14724B3: If Not (var_CA = 3) Then
  loc_14724BC:   If Not (var_CA = 4) Then
  loc_14724C5:     If (var_CA = 6) Then
  loc_14724C8:     End If
  loc_14724C8:   End If
  loc_14724D2:   Set var_94 = Me.TExt1
  loc_14724D8:   Call 0.Method_Text1_Validate0 (Cancel, var_98)
  loc_14724E4:   Proc_6_40_EA5C80(CVar(var_98))
  loc_14724EB:   var_9C = CStr(var_CA)
  loc_14724F8:   Set var_C8 = Me.TExt1
  loc_14724FE:   Call 0.Method_Text1_Validate0 (Cancel, var_D0)
  loc_1472506:   var_D0.Text = var_9C
  loc_147251D: Else
  loc_1472523:   If (var_CA = 0) Then
  loc_147252C:     Call Proc_307_37_10F199C(MemVar_1F95044)
  loc_1472537:   Else
  loc_147253F:     If (var_CA = CInt(9)) Then
  loc_1472591:       Set var_94 = Me.TExt1
  loc_1472597:       Call 0.Method_Text1_Validate0 (CInt(9), var_98, var_9C)
  loc_147259F:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_14725B7:       If (var_9C Or (var_9C = vbNullString)) Then
  loc_14725BA:         Exit Sub
  loc_14725BB:       End If
  loc_14725F7:       Set var_C8 = Me.TExt1
  loc_14725FD:       Call 0.Method_Text1_Validate0 (CInt(9), var_D0)
  loc_1472605:       var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1472638:       var_98 = Me.Fields.Item("Code")
  loc_1472657:       Set var_C8 = Me.TExt1
  loc_147265D:       Call 0.Method_Text1_Validate0 (CInt(9), var_D0)
  loc_1472665:       var_D0.Tag = CStr(var_98.Value)
  loc_147267E:     Else
  loc_1472686:       If (var_CA = CInt(2)) Then
  loc_14726D8:         Set var_94 = Me.TExt1
  loc_14726DE:         Call 0.Method_Text1_Validate0 (CInt(2), var_98)
  loc_14726FE:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_1472701:           Exit Sub
  loc_1472702:         End If
  loc_147273E:         Set var_C8 = Me.TExt1
  loc_1472744:         Call 0.Method_Text1_Validate0 (CInt(2), var_D0)
  loc_147274C:         var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_147279E:         Set var_C8 = Me.TExt1
  loc_14727A4:         Call 0.Method_Text1_Validate0 (CInt(2), var_D0)
  loc_14727AC:         var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14727DF:         var_98 = Me.Fields.Item("Department")
  loc_14727E7:         var_C4 = var_98.Value
  loc_14727EF:         var_E8 = " - "
  loc_14727F4:         var_F8 = (var_C4 + var_E8)
  loc_1472815:         var_D0 = Me.Fields.Item("Designation")
  loc_1472825:         var_128 = (var_F8 + var_D0.Value)
  loc_1472837:         Me.LblEmpRef.Caption = CStr(var_128)
  loc_1472865:         Set var_94 = Me.TExt1
  loc_147286B:         Call 0.Method_Text1_Validate0 (CInt(2), var_98)
  loc_1472886:         Set var_13C = Me.TExt1
  loc_147288C:         Call 0.Method_Text1_Validate0 (CInt(2), var_140)
  loc_147289F:         var_E8 = 0
  loc_14728CC:         unk_49B6C1.Execute "Select Joining_date from employee where code='" & var_98.Tag & "'", var_C4, -1
  loc_14728D4:         var_C8 = var_C8.Fields
  loc_14728DC:         var_E8 = var_D0.Item(var_D0)
  loc_14728E4:         var_12C = var_12C.Value
  loc_14728FA:         Set var_130 = Me.TExt1
  loc_1472900:         Call 0.Method_Text1_Validate0 (CInt(1), var_134, var_138)
  loc_1472908:         var_F8 = var_134.Text
  loc_1472917:         var_118 = (var_F8 > CDate(CDate(var_138)))
  loc_1472921:         var_174 = 0
  loc_147294E:         unk_49B6C1.Execute "Select Resign_date from employee where code='" & var_140.Tag & "'", var_128, -1
  loc_1472956:         var_160 = var_160.Fields
  loc_147295E:         var_174 = var_164.Item(var_164)
  loc_1472966:         var_178 = var_178.Value
  loc_147297C:         Set var_17C = Me.TExt1
  loc_1472982:         Call 0.Method_Text1_Validate0 (CInt(1), var_180, var_184)
  loc_14729E0:         If CBool(var_118 Or (var_180.Text < CDate(CDate(var_184)))) Then
  loc_14729FC:           MsgBox("Invalid Date For This Employee", &H40, var_F8, var_118, var_128)
  loc_1472A0E:           arg_10 = &HFF
  loc_1472A11:         End If
  loc_1472A25:         If (var_88.RecordCount > 0) Then
  loc_1472A4E:           Proc_6_39_E7D3A0(var_F8, CVar(var_88.Fields.Item("Tot_EL_Allow")))
  loc_1472A6D:           var_D0 = var_88.Fields.Item("OP_Earned")
  loc_1472A7C:           Proc_6_39_E7D3A0(var_128, CVar(var_D0))
  loc_1472A84:           var_194 = (var_F8 + var_128)
  loc_1472A97:           Set var_12C = Me.TExt1
  loc_1472A9D:           Call 0.Method_Text1_Validate0 (CInt(3), var_130)
  loc_1472AA5:           var_130.Text = CStr(var_180.Text)
  loc_1472ADC:           var_98 = var_88.Fields.Item("Curr_Earned")
  loc_1472AEB:           Proc_6_39_E7D3A0(var_F8, CVar(var_98))
  loc_1472B02:           Set var_C8 = Me.TExt1
  loc_1472B08:           Call 0.Method_Text1_Validate0 (CInt(4), var_D0)
  loc_1472B10:           var_D0.Text = CStr(var_F8)
  loc_1472B36:           Set var_94 = Me.TExt1
  loc_1472B3C:           Call 0.Method_Text1_Validate0 (CInt(3), var_98)
  loc_1472B64:           var_C8 = var_88.Fields
  loc_1472B6C:           var_D0 = var_C8.Item("Curr_Earned")
  loc_1472B7B:           Proc_6_39_E7D3A0(var_F8, CVar(var_D0))
  loc_1472B83:           var_118 = (CVar(Val(var_98.Text)) - var_F8)
  loc_1472B87:           var_A0 = CStr(CVar(var_D0))
  loc_1472B96:           Set var_12C = Me.TExt1
  loc_1472B9C:           Call 0.Method_Text1_Validate0 (CInt(5), var_130)
  loc_1472BA4:           var_130.Text = var_A0
  loc_1472BCC:           If (MemVar_1F953B0 = "A") Then
  loc_1472BEA:             var_A4 = "SELECT IIF(ISNULL(sum(Leave_Ench)),0,sum(Leave_Ench)) as el FROM Leave_Ench WHERE site_code='" & MemVar_1F95070 & "' and EMP_CODE='"
  loc_1472BFB:             Set var_94 = Me.TExt1
  loc_1472C01:             Call 0.Method_Text1_Validate0 (CInt(2), var_98, var_A0, var_A4)
  loc_1472C09:             var_C4 = var_98.Tag
  loc_1472C12:             var_138 = -1 & var_A0
  loc_1472C22:             unk_49B6C1.Execute var_138 & "'", var_C8, arg_10
  loc_1472C2D:             Set var_8C = var_C8
  loc_1472C4C:           Else
  loc_1472C54:             If (MemVar_1F953B0 = "S") Then
  loc_1472C72:               var_A4 = "SELECT ISNULL(sum(Leave_Ench),0) as el FROM Leave_Ench WHERE site_code='" & MemVar_1F95070 & "' and EMP_CODE='"
  loc_1472C83:               Set var_94 = Me.TExt1
  loc_1472C89:               Call 0.Method_Text1_Validate0 (CInt(2), var_98, var_A0, var_A4)
  loc_1472C91:               var_C4 = var_98.Tag
  loc_1472C9A:               var_138 = -1 & var_A0
  loc_1472CAA:               unk_49B6C1.Execute var_138 & "'", var_C8, 
  loc_1472CB5:               Set var_8C = var_C8
  loc_1472CD1:             End If
  loc_1472CD1:           End If
  loc_1472CE5:           If (var_8C.RecordCount > 0) Then
  loc_1472D24:             If (var_8C.Fields.Item("el").Value > 0) Then
  loc_1472D41:               var_98 = var_8C.Fields.Item("el")
  loc_1472D60:               Set var_C8 = Me.TExt1
  loc_1472D66:               Call 0.Method_Text1_Validate0 (CInt(6), var_D0)
  loc_1472D6E:               var_D0.Text = CStr(var_98.Value)
  loc_1472D87:             Else
  loc_1472DBB:               Set var_94 = Me.TExt1
  loc_1472DC1:               Call 0.Method_Text1_Validate0 (CInt(6), var_98, CStr(Format(0, "0")))
  loc_1472DC9:               var_98.Text = 1
  loc_1472DE1:             End If
  loc_1472DE1:           End If
  loc_1472DEF:           Set var_C8 = Me.TExt1
  loc_1472DF5:           Call 0.Method_Text1_Validate0 (CInt(6), var_D0)
  loc_1472E10:           Set var_94 = Me.TExt1
  loc_1472E16:           Call 0.Method_Text1_Validate0 (CInt(5), var_98)
  loc_1472E33:           var_A4 = CStr((Val(var_98.Text) - CDbl(var_D0.Text)))
  loc_1472E41:           Set var_12C = Me.TExt1
  loc_1472E47:           Call 0.Method_Text1_Validate0 (CInt(7), var_130)
  loc_1472E4F:           var_130.Text = var_A4
  loc_1472E6C:         End If
  loc_1472E6F:       Else
  loc_1472E77:         If (var_CA = CInt(1)) Then
  loc_1472E87:           Set var_94 = Me.TExt1
  loc_1472E8D:           Call 0.Method_Text1_Validate0 (Cancel, var_98)
  loc_1472EAC:           If (var_98.Text = vbNullString) Then
  loc_1472EC2:             Set var_94 = Me.TExt1
  loc_1472EC8:             Call 0.Method_Text1_Validate0 (CInt(1), var_98)
  loc_1472ED0:             var_98.Text = CStr(MemVar_1F950EC)
  loc_1472EE2:           Else
  loc_1472EEC:             Set var_94 = Me.TExt1
  loc_1472EF2:             Call 0.Method_Text1_Validate0 (Cancel, var_98)
  loc_1472F12:             Set var_D0 = Me.TExt1
  loc_1472F18:             Call 0.Method_Text1_Validate0 (Cancel, var_12C)
  loc_1472F20:             var_12C.Text = Proc_6_33_15125B8(var_98)
  loc_1472F33:           End If
  loc_1472F36:         Else
  loc_1472F3E:           If (var_CA = CInt(8)) Then
  loc_1472F4B:             Set var_94 = Me.TExt1
  loc_1472F51:             Call 0.Method_Text1_Validate0 (Cancel, var_98)
  loc_1472F75:             var_118 = Format(CVar(var_98), "0.00")
  loc_1472F7D:             var_9C = CStr(var_118)
  loc_1472F8B:             Set var_C8 = Me.TExt1
  loc_1472F91:             Call 0.Method_Text1_Validate0 (Cancel, var_D0, var_9C)
  loc_1472F99:             var_D0.Text = 1
  loc_1472FB3:           End If
  loc_1472FB3:         End If
  loc_1472FB3:       End If
  loc_1472FB3:     End If
  loc_1472FB3:   End If
  loc_1472FB3: End If
  loc_1472FB3: Exit Sub
  loc_1472FB4: ' Referenced from: 147243C
  loc_1472FBC: Set var_94 = Err()
  loc_1472FC2: Call 0.Method_arg_2C (var_9C, 1)
  loc_1472FE3: MsgBox(CVar(var_9C), &H10, "Information", var_118, var_128)
  loc_1472FF6: Exit Sub
  loc_1472FF7: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_9 'F3E514
  'Data Table: 49B6B4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3E40B: Me.DGEmployee.Visible = False
  loc_F3E42A: If (Me.RecordCount > 0) Then
  loc_F3E469:   Set var_B4 = Me.TExt1
  loc_F3E46F:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3E477:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3E4AA:   var_B0 = Me.Fields.Item("Name")
  loc_F3E4C9:   Set var_B4 = Me.TExt1
  loc_F3E4CF:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3E4D7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3E4ED: End If
  loc_F3E4F8: Set var_A8 = Me.TExt1
  loc_F3E4FE: Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(2))
  loc_F3E506: var_B0.SetFocus
  loc_F3E512: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_1F 'E742F0
  'Data Table: 49B6B4
  loc_E742AE: Proc_6_153_E91D24(Me.DGEmployee, arg_14)
  loc_E742C5: Set var_8C = Me.FGPoint
  loc_E742E1: Proc_6_138_106E830(Me.DGEmployee, global_64, CInt(2))
  loc_E742EF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E814B0
  'Data Table: 49B6B4
  Dim var_94 As TextBox
  Dim arg_3CFF As Double
  loc_E81448: On Error Goto loc_E814A8
  loc_E81472: Call Proc_307_33_E6D444(Proc_5_1_100EC1C("ADD", Me))
  loc_E8147D: Call Proc_307_31_FCDB84(global_56)
  loc_E8148D: Set var_8C = Me.TExt1
  loc_E81493: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_E8149B: var_94.SetFocus
  loc_E814A7: Exit Sub
  loc_E814A8: ' Referenced from: E81448
  loc_E814A8: Proc_6_60_E63754(var_94)
  loc_E814AD: Exit Sub
  loc_E814AE: arg_3CFF = 
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EAA4E0
  'Data Table: 49B6B4
  loc_EAA460: On Error Goto loc_EAA4DA
  loc_EAA49A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EAA49D:   Call Proc_307_35_EBD5C4()
  loc_EAA4C9:   Call Proc_307_33_E6D444(Proc_5_1_100EC1C("INI", Me))
  loc_EAA4D4:   Call Proc_307_32_144E080(global_56)
  loc_EAA4D9: End If
  loc_EAA4D9: Exit Sub
  loc_EAA4DA: ' Referenced from: EAA460
  loc_EAA4DA: Proc_6_60_E63754()
  loc_EAA4DF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '103F010
  'Data Table: 49B6B4
  Dim unk_49B6C1 As Connection15
  Dim var_128 As TextBox
  Dim var_130 As String
  Dim var_12C As String
  Dim var_13C As String
  Dim var_BC As Variant
  loc_103EDD8: On Error Goto loc_103EFC2
  loc_103EDED: If (Proc_183_56_FE8B08(global_56) = &HFF) Then
  loc_103EDF0:   Exit Sub
  loc_103EDF1: End If
  loc_103EE28: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_FC, var_11C) = 6) Then
  loc_103EE34:   unk_49B6C1.BeginTrans var_120
  loc_103EE4D:   var_94 = Me.Recordset15.Bookmark 'Variant
  loc_103EE6F:   Set var_124 = Me.TExt1
  loc_103EE75:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_128, var_12C, "DELETE FROM LEDGER WHERE DOCID='")
  loc_103EE7D:   var_BC = var_128.Text
  loc_103EE86:   var_130 = -1 & var_12C
  loc_103EE96:   unk_49B6C1.Execute var_130 & "'", var_138, 
  loc_103EEC4:   var_12C = "DELETE FROM LEAVE_ENCH WHERE site_code='" & MemVar_1F95070
  loc_103EEDC:   Set var_124 = Me.TExt1
  loc_103EEE2:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_128, var_130, var_12C & "' and Sr_No=")
  loc_103EEEA:   var_BC = var_128.Text
  loc_103EEF3:   var_13C = -1 & var_130
  loc_103EEFC:   unk_49B6C1.Execute var_13C, var_138, 
  loc_103EF1E:   unk_49B6C1.CommitTrans
  loc_103EF31:   Me.Recordset15.Requery -1
  loc_103EF54:   If (CVar(Me.Recordset15.RecordCount) >= var_94) Then
  loc_103EF64:     Me.Recordset15.Bookmark = var_94
  loc_103EF6C:   Else
  loc_103EF83:     If (global_56.EOF = 0) Then
  loc_103EF8F:       Me.Recordset15.MoveLast
  loc_103EF94:     End If
  loc_103EF94:   End If
  loc_103EF94:   Call Proc_307_32_144E080()
  loc_103EFB9:   Proc_5_0_1107AD0(&HFF, Me)
  loc_103EFC1: End If
  loc_103EFC1: Exit Sub
  loc_103EFC2: ' Referenced from: 103EDD8
  loc_103EFC8: unk_49B6C1.RollbackTrans
  loc_103EFD5: Set var_124 = Err()
  loc_103EFDB: Call 0.Method_arg_2C (var_12C, global_56)
  loc_103EFFC: MsgBox(CVar(var_12C), &H10, " Deletion Message", var_FC, var_11C)
  loc_103F00F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F2CC90
  'Data Table: 49B6B4
  Dim var_8C As DataGrid
  Dim var_B4 As TextBox
  loc_F2CB7C: On Error Goto loc_F2CC88
  loc_F2CB91: If (Proc_183_55_FE8490(global_56) = &HFF) Then
  loc_F2CB94:   Exit Sub
  loc_F2CB95: End If
  loc_F2CBBC: Call Proc_307_33_E6D444(Proc_5_1_100EC1C("EDIT", Me))
  loc_F2CBD6: Me.DBGrid1.Enabled = False
  loc_F2CBEB: Set var_8C = Me.TExt1
  loc_F2CBF1: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_B4)
  loc_F2CBF9: var_B4.Enabled = False
  loc_F2CC12: Set var_8C = Me.TExt1
  loc_F2CC18: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_B4)
  loc_F2CC20: var_B4.Enabled = False
  loc_F2CC37: Set var_8C = Me.TExt1
  loc_F2CC3D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_B4)
  loc_F2CC45: var_B4.SetFocus
  loc_F2CC5F: Set var_8C = Me.TExt1
  loc_F2CC65: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_B4)
  loc_F2CC7A: global_68 = CInt(var_B4.Text)
  loc_F2CC87: Exit Sub
  loc_F2CC88: ' Referenced from: F2CB7C
  loc_F2CC88: Proc_6_60_E63754(global_68)
  loc_F2CC8D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1CBC0
  'Data Table: 49B6B4
  loc_E1CBB5: Me.Global.Unload Me
  loc_E1CBBD: Exit Sub
  loc_E1CBBE: Set arg_3C00 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EDE30C
  'Data Table: 49B6B4
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EDE258: On Error Goto loc_EDE305
  loc_EDE275: If (Me.Recordset15.RecordCount <= 0) Then
  loc_EDE27E:   var_B8 = "Information"
  loc_EDE299:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EDE2A9:   Exit Sub
  loc_EDE2AA: End If
  loc_EDE2B2: If (MemVar_1F953B0 = "A") Then
  loc_EDE2BC:   var_10C = "SELECT LEAVE_ENCH.SR_NO AS SEARCHCODE,Leave_Ench.L_DATE,LEAVE_ENCH,AMT_ENCH,EMPLOYEE.NAME AS EmpName, SG.Name as AcName FROM (Leave_Ench LEFT JOIN EMPLOYEE ON EMPLOYEE.CODE=Leave_Ench.EMP_CODE) Left Join SubGroup  SG on SG.SubCode=Leave_Ench.AC_Code where leave_Ench.site_code='" & MemVar_1F95070
  loc_EDE2C3:   MemVar_1F950E4 = var_10C & "' and ORDER BY SR_NO"
  loc_EDE2CD: Else
  loc_EDE2D4:   var_10C = "SELECT LEAVE_ENCH.SR_NO AS SEARCHCODE,Convert(Varchar(11),Leave_Ench.L_DATE,103) AS DATE,LEAVE_ENCH,AMT_ENCH,EMPLOYEE.NAME AS EmpName, SG.Name as AcName FROM (Leave_Ench LEFT JOIN EMPLOYEE ON EMPLOYEE.CODE=Leave_Ench.EMP_CODE) Left Join SubGroup  SG on SG.SubCode=Leave_Ench.AC_Code where Leave_Ench.site_code='" & MemVar_1F95070
  loc_EDE2DB:   MemVar_1F950E4 = var_10C & "' and  ORDER BY SR_NO"
  loc_EDE2E2: End If
  loc_EDE2E8: MemVar_1F95120 = Me
  loc_EDE2FF: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EDE304: Exit Sub
  loc_EDE305: ' Referenced from: EDE258
  loc_EDE305: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EDE30A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E4398C
  'Data Table: 49B6B4
  loc_E4397C: Proc_5_0_1107AD0(&HFF, Me)
  loc_E43984: Call Proc_307_32_144E080(global_56)
  loc_E43989: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E43928
  'Data Table: 49B6B4
  loc_E43918: Proc_5_0_1107AD0(&HFF, Me)
  loc_E43920: Call Proc_307_32_144E080(global_56)
  loc_E43925: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E436D0
  'Data Table: 49B6B4
  loc_E436C0: Proc_5_0_1107AD0(&HFF, Me)
  loc_E436C8: Call Proc_307_32_144E080(global_56)
  loc_E436CD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E4366C
  'Data Table: 49B6B4
  loc_E4365C: Proc_5_0_1107AD0(&HFF, Me)
  loc_E43664: Call Proc_307_32_144E080(global_56)
  loc_E43669: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15C83F0
  'Data Table: 49B6B4
  Dim var_AC As TextBox
  Dim var_B4 As String
  Dim var_B8 As String
  Dim unk_49B6C1 As Connection15
  Dim var_B0 As String
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_C8 As Variant
  Dim var_108 As Variant
  Dim var_110 As TextBox
  Dim var_130 As Variant
  Dim var_E0 As Variant
  Dim var_168 As Double
  Dim var_170 As Double
  Dim var_8C As Integer
  Dim var_178 As String
  Dim var_DC As Variant
  Dim var_F4 As Variant
  Dim var_F0 As Variant
  Dim var_88 As Recordset15
  Dim var_A8 As Fields15
  Dim var_150 As Variant
  Dim var_2CC As TextBox
  Dim var_314 As TextBox
  Dim var_3B4 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_2A8 As Variant
  Dim var_344 As Variant
  Dim var_364 As Variant
  Dim var_3A4 As Variant
  Dim var_3D4 As Variant
  Dim var_298 As Variant
  Dim var_41C As TextBox
  Dim var_334 As Variant
  Dim var_184 As String
  loc_15C719C: On Error Goto loc_15C83D6
  loc_15C71C2: Set var_A8 = Me.TExt1
  loc_15C71C8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC, var_B0, "SELECT Employee.AC_Code FROM Employee WHERE Code='")
  loc_15C71D0: var_D8 = var_AC.Tag
  loc_15C71D9: var_B4 = -1 & var_B0
  loc_15C71E9: unk_49B6C1.Execute var_B4 & "'", var_DC, 0
  loc_15C71F4: Set var_88 = var_DC
  loc_15C7210: Set var_A8 = Me.TopCtrl1
  loc_15C7216: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_15C722F: If (CStr() = "Add") Then
  loc_15C7240:   Set var_A8 = Me.TExt1
  loc_15C7246:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC)
  loc_15C724E:   var_B0 = var_AC.Text
  loc_15C726B:   Set var_DC = Me.TExt1
  loc_15C7271:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_E0)
  loc_15C7280:   Proc_6_39_E7D3A0(var_F0, CVar(var_E0))
  loc_15C7296:   Set var_F4 = Me.TExt1
  loc_15C729C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_F8, var_B4)
  loc_15C72A4:   var_F0 = var_F8.Text
  loc_15C72B5:   var_108 = (CVar(Val(var_B0)) + CVar(Val(var_B4)))
  loc_15C72C7:   Set var_10C = Me.TExt1
  loc_15C72CD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_110)
  loc_15C72D5:   var_B8 = var_110.Text
  loc_15C72E6:   var_130 = (var_108 - CVar(Val(var_B8)))
  loc_15C730F:   If ( > var_130) Then
  loc_15C7333:     MsgBox("Invalid Leave", &H40, "Information", var_108, var_130)
  loc_15C7351:     Set var_A8 = Me.TExt1
  loc_15C7357:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC)
  loc_15C735F:     var_AC.Text = vbNullString
  loc_15C7374:     Set var_A8 = Me.TExt1
  loc_15C737A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (3)
  loc_15C7382:     var_AC.SetFocus
  loc_15C738E:     Exit Sub
  loc_15C738F:   End If
  loc_15C7392: Else
  loc_15C73A0:   Set var_DC = Me.TExt1
  loc_15C73A6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_E0)
  loc_15C73AE:   var_B4 = var_E0.Text
  loc_15C73BB:   var_168 = Val(var_B4)
  loc_15C73CC:   Set var_F4 = Me.TExt1
  loc_15C73D2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_F8, var_B8)
  loc_15C73E7:   var_170 = Val(var_B8)
  loc_15C73F8:   Set var_A8 = Me.TExt1
  loc_15C73FE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC, var_B0)
  loc_15C743D:   If (CDbl(Val(var_B0)) > CDbl((var_F8.Text - (var_AC.Text - CDbl(global_68))))) Then
  loc_15C745B:     var_D8 = "Invalid Leave"
  loc_15C7461:     MsgBox(var_D8, &H40, "Information", var_108, var_130)
  loc_15C747F:     Set var_A8 = Me.TExt1
  loc_15C7485:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC)
  loc_15C748D:     var_AC.Text = vbNullString
  loc_15C74A2:     Set var_A8 = Me.TExt1
  loc_15C74A8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (3, var_AC)
  loc_15C74B0:     var_AC.SetFocus
  loc_15C74BC:     Exit Sub
  loc_15C74BD:   End If
  loc_15C74BD: End If
  loc_15C74CB: Set var_A8 = Me.TExt1
  loc_15C74D1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC)
  loc_15C74F5: If (CDbl(Val(var_AC.Text)) = CDbl(0)) Then
  loc_15C7506:   Set var_A8 = Me.TExt1
  loc_15C750C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC)
  loc_15C7514:   var_AC.Text = vbNullString
  loc_15C7520: End If
  loc_15C752E: Set var_A8 = Me.TExt1
  loc_15C7534: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_AC)
  loc_15C7558: If (CDbl(Val(var_AC.Text)) = CDbl(0)) Then
  loc_15C7569:   Set var_A8 = Me.TExt1
  loc_15C756F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_AC)
  loc_15C7577:   var_AC.Text = vbNullString
  loc_15C7583: End If
  loc_15C758E: Set var_A8 = Me.TExt1
  loc_15C7594: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_15C75A5: Set var_DC = Me.Label1
  loc_15C75AB: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_E0)
  loc_15C75DE: If (Proc_6_27_EA61EC(var_AC, var_E0.Caption) = 0) Then
  loc_15C75E1:   Exit Sub
  loc_15C75E2: End If
  loc_15C75ED: Set var_A8 = Me.TExt1
  loc_15C75F3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC)
  loc_15C7604: Set var_DC = Me.Label1
  loc_15C760A: Call 0.Method_TopCtrl1_UnknownEvent_160 (9, var_E0)
  loc_15C763D: If (Proc_6_27_EA61EC(var_AC, var_E0.Caption) = 0) Then
  loc_15C7640:   Exit Sub
  loc_15C7641: End If
  loc_15C764C: Set var_A8 = Me.TExt1
  loc_15C7652: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC)
  loc_15C7663: Set var_DC = Me.Label1
  loc_15C7669: Call 0.Method_TopCtrl1_UnknownEvent_160 (5, var_E0)
  loc_15C769C: If (Proc_6_27_EA61EC(var_AC, var_E0.Caption) = 0) Then
  loc_15C769F:   Exit Sub
  loc_15C76A0: End If
  loc_15C76AB: Set var_A8 = Me.TExt1
  loc_15C76B1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_AC)
  loc_15C76C2: Set var_DC = Me.Label1
  loc_15C76C8: Call 0.Method_TopCtrl1_UnknownEvent_160 (6, var_E0)
  loc_15C76FB: If (Proc_6_27_EA61EC(var_AC, var_E0.Caption) = 0) Then
  loc_15C76FE:   Exit Sub
  loc_15C76FF: End If
  loc_15C770A: Set var_A8 = Me.TExt1
  loc_15C7710: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_AC)
  loc_15C7721: Set var_DC = Me.Label1
  loc_15C7727: Call 0.Method_TopCtrl1_UnknownEvent_160 (8, var_E0)
  loc_15C773E: Set var_F4 = var_AC
  loc_15C775A: If (Proc_6_27_EA61EC(var_F4, var_E0.Caption) = 0) Then
  loc_15C775D:   Exit Sub
  loc_15C775E: End If
  loc_15C776C: unk_49B6C1.BeginTrans var_174
  loc_15C7775: Set var_A8 = Me.TopCtrl1
  loc_15C777B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(&HFF)
  loc_15C7794: If (CStr(var_AC) = "Add") Then
  loc_15C77BA:   var_B0 = "SELECT COUNT(*) FROM Leave_ench WHERE site_code='" & MemVar_1F95070
  loc_15C77D2:   Set var_A8 = Me.TExt1
  loc_15C77D8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_B4, var_B0 & "' and SR_NO = ", var_D8, -1)
  loc_15C77E0:   var_DC = var_AC.Text
  loc_15C77F2:   unk_49B6C1.Execute var_E0 & var_B4, 0, var_F4
  loc_15C7802:    = var_E0.Item()
  loc_15C780A:    = var_F4.Value
  loc_15C7839:   If (var_DC.Fields > 0) Then
  loc_15C7842:     Call 0.Method_arg_50 (var_B0)
  loc_15C7863:     MsgBox("* Sr.No. Already Exist *", &H40, CVar(var_B0), var_108, var_130)
  loc_15C787E:     Set var_A8 = Me.TExt1
  loc_15C7884:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15C788C:     var_AC.SetFocus
  loc_15C7898:     Exit Sub
  loc_15C7899:   End If
  loc_15C789C: Else
  loc_15C78C8:   Set var_A8 = Me.TExt1
  loc_15C78CE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_B4, "DELETE FROM LEDGER WHERE site_code='" & MemVar_1F95070 & "' and V_TYPE= 'LV' AND V_NO=")
  loc_15C78D6:   var_D8 = var_AC.Text
  loc_15C78DF:   var_178 = -1 & var_B4
  loc_15C78E8:   unk_49B6C1.Execute var_E0 & var_B4, var_DC, var_AC
  loc_15C7930:   Set var_A8 = Me.TExt1
  loc_15C7936:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_B4, "DELETE FROM LEAVE_ENCH WHERE site_code='" & MemVar_1F95070 & "' and Sr_No=")
  loc_15C793E:   var_D8 = var_AC.Text
  loc_15C7947:   var_178 = -1 & var_B4
  loc_15C7950:   unk_49B6C1.Execute var_E0 & var_B4, var_DC, 
  loc_15C796C: End If
  loc_15C7980: If (var_88.RecordCount > 0) Then
  loc_15C799A:   var_AC = var_88.Fields.Item("Ac_Code")
  loc_15C79AB:   var_9C = Proc_6_38_E69628(CVar(var_AC))
  loc_15C79B4: End If
  loc_15C79C2: Set var_A8 = Me.TExt1
  loc_15C79C8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_15C7A03: var_F0 = CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & Proc_183_15_EAD490("LV", 5)) 'String
  loc_15C7A16: var_108 = (var_F0 + Space(5))
  loc_15C7A2E: var_150 = (var_108 + CVar(Proc_183_16_EAF86C(var_AC.Text, 8)))
  loc_15C7A33: var_A4 = CStr(var_150)
  loc_15C7A65: Set var_A8 = Me.TExt1
  loc_15C7A6B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC)
  loc_15C7A73: var_B0 = var_AC.Text
  loc_15C7A86: Proc_6_17_EAAE40(var_F0)
  loc_15C7A99: Set var_DC = Me.TExt1
  loc_15C7A9F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_E0)
  loc_15C7AC9: Set var_F8 = Me.TExt1
  loc_15C7ACF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_10C)
  loc_15C7ADE: Proc_6_7_F26918(var_248, CVar(var_10C))
  loc_15C7AEE: Proc_6_17_EAAE40(var_298, var_9C)
  loc_15C7B01: Set var_110 = Me.TExt1
  loc_15C7B07: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_2CC)
  loc_15C7B1C: var_168 = Val(var_2CC.Text)
  loc_15C7B2D: Set var_310 = Me.TExt1
  loc_15C7B33: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_314, var_184)
  loc_15C7B49: Proc_6_17_EAAE40(var_334, CVar(var_184))
  loc_15C7B53: var_3B4 = CVar(Proc_6_14_EF402C("LV")) 'String
  loc_15C7B59: Proc_183_8_EB1634(var_3C4)
  loc_15C7B72: var_B4 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE) VALUES ('" & var_B0
  loc_15C7BB8: var_208 = CVar(var_B4 & "',1,") & var_F0 & "," & CVar(var_E0.Text) & ",'" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F95070) 
  loc_15C7BD8: var_2A8 = var_208 & "'," & var_248 & "," & var_298 
  loc_15C7C1F: var_3D4 = var_2A8 & "," & CVar(var_314.Tag) & ",0," & var_334 & ",'Being leave encashment allowed','" & CVar(MemVar_1F950C8) & "'," & var_3C4 
  loc_15C7C36: unk_49B6C1.Execute CStr(var_3D4 & ",'A')"), var_418, -1
  loc_15C7CB2: Set var_A8 = Me.TExt1
  loc_15C7CB8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC, var_B0)
  loc_15C7CC0: var_41C = var_AC.Text
  loc_15C7CD3: Proc_6_17_EAAE40(var_F0, "LV")
  loc_15C7CE6: Set var_DC = Me.TExt1
  loc_15C7CEC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_E0)
  loc_15C7CF4: var_B8 = var_E0.Text
  loc_15C7D16: Set var_F8 = Me.TExt1
  loc_15C7D1C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_10C)
  loc_15C7D2B: Proc_6_7_F26918(var_248, CVar(var_10C))
  loc_15C7D3E: Set var_110 = Me.TExt1
  loc_15C7D44: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_2CC)
  loc_15C7D5A: Proc_6_17_EAAE40(var_2A8, CVar(var_2CC.Tag))
  loc_15C7D6D: Set var_310 = Me.TExt1
  loc_15C7D73: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_314)
  loc_15C7D88: var_168 = Val(var_314.Text)
  loc_15C7D96: Proc_6_17_EAAE40(var_334, var_9C)
  loc_15C7DA0: var_3B4 = CVar(Proc_6_14_EF402C(var_168)) 'String
  loc_15C7DA6: Proc_183_8_EB1634(var_3C4, var_3B4)
  loc_15C7DBF: var_B4 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE) VALUES ('" & var_B0
  loc_15C7DDF: var_1A8 = CVar(var_B4 & "',2,") & var_F0 & "," & CVar(var_B8) 
  loc_15C7DFB: var_1E8 = var_1A8 & ",'" & CVar(Me.LblVPrefix.Caption) & "','" 
  loc_15C7E49: var_344 = var_1E8 & CVar(MemVar_1F95070) & "'," & var_248 & "," & var_2A8 & ",0," & CVar(var_168) & "," & var_334 
  loc_15C7E65: var_3A4 = var_344 & ",'Being leave encashment allowed','" & CVar(MemVar_1F950C8) & "'," 
  loc_15C7E83: unk_49B6C1.Execute CStr(var_3A4 & var_3C4 & ",'A')"), var_418, -1
  loc_15C7F0F: Set var_A8 = Me.TExt1
  loc_15C7F15: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_B0, "INSERT INTO LEAVE_ENCH (Sr_No,L_Date,Emp_Code,Leave_Ench,Amt_Ench,AC_Code,Site_Code,U_EntDt,U_AE) VALUES (", var_3A4)
  loc_15C7F1D: -1 = var_AC.Text
  loc_15C7F3B: Set var_DC = Me.TExt1
  loc_15C7F41: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E0, CVar(var_420 & var_B0 & ","))
  loc_15C7F50: Proc_6_7_F26918(var_F0, CVar(var_E0))
  loc_15C7F61: var_150 = var_41C & var_F0 & "," 
  loc_15C7F73: Set var_F4 = Me.TExt1
  loc_15C7F79: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_F8, var_B8)
  loc_15C7F81: var_150 = var_F8.Tag
  loc_15C7F8F: Proc_6_17_EAAE40(var_1A8, CVar(var_B8))
  loc_15C7F97: var_1B8 = var_3B4 & var_1A8 
  loc_15C7FAF: Set var_10C = Me.TExt1
  loc_15C7FB5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_110)
  loc_15C7FC4: Proc_6_39_E7D3A0(var_1E8, CVar(var_110))
  loc_15C7FE4: Set var_2CC = Me.TExt1
  loc_15C7FEA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_310)
  loc_15C7FF9: Proc_6_39_E7D3A0(var_248, CVar(var_310))
  loc_15C801C: Set var_314 = Me.TExt1
  loc_15C8022: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_41C)
  loc_15C802A: var_178 = var_41C.Tag
  loc_15C8038: Proc_6_17_EAAE40(var_2A8, CVar(var_178))
  loc_15C806B: Proc_6_8_EB1974(var_344)
  loc_15C8073: var_364 = CVar(Proc_6_14_EF402C(var_1B8 & "," & var_1E8 & "," & var_248 & "," & var_2A8 & ",'" & CVar(MemVar_1F95070) & "',")) & var_344 
  loc_15C808A: unk_49B6C1.Execute CStr(var_364 & ",'A')"), , 
  loc_15C80EE: Set var_A8 = Me.TopCtrl1
  loc_15C80F4: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_15C810D: If (CStr() = "Add") Then
  loc_15C8124:   var_B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_15C814A:   Set var_A8 = Me.TExt1
  loc_15C8150:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_178, CVar(var_B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='LV' And VP.Date_From<="))
  loc_15C8158:   var_198 = var_AC.Text
  loc_15C8166:   Proc_6_7_F26918(var_F0, CVar(var_178))
  loc_15C816E:   var_130 = -1 & var_F0 
  loc_15C8185:   unk_49B6C1.Execute CStr(var_41C & var_F0 & " Order By VP.Date_From DESC"), var_DC, 
  loc_15C8190:   Set var_94 = var_DC
  loc_15C81CD:   If (Me.Recordset15.RecordCount > 0) Then
  loc_15C81DE:     Set var_A8 = Me.TExt1
  loc_15C81E4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_15C81EC:     var_B0 = var_AC.Text
  loc_15C8214:     var_C8 = "V_Type"
  loc_15C8261:     Proc_6_7_F26918(var_198, CVar(Me.Recordset15.Fields.Item("Date_From")))
  loc_15C8294:     var_184 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(Val(var_B0)) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_15C82B6:     var_108 = CVar(var_184 & MemVar_1F95078 & "') and PREFIX='" & Me.LblVPrefix.Caption & "' AND V_Type='") & Me.Recordset15.Fields.Item(var_C8).Value 
  loc_15C82D4:     unk_49B6C1.Execute CStr(var_108 & "' and Date_From=" & var_198), var_1B8, -1
  loc_15C8316:   End If
  loc_15C8316: End If
  loc_15C831C: unk_49B6C1.CommitTrans
  loc_15C8323: var_8C = 0
  loc_15C8334: Me.Recordset15.Requery -1
  loc_15C8347: Set var_A8 = Me.TExt1
  loc_15C834D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_B0)
  loc_15C8355: var_8C = var_AC.Text
  loc_15C838F: Me.Recordset15.Find "SearchCode ='" & "SearchCode ='" & var_B0 & "'", 0, 1
  loc_15C83C2: Call Proc_307_33_E6D444(Proc_5_1_100EC1C("INI", Me, global_56), var_C8)
  loc_15C83D2: Set var_88 = Nothing
  loc_15C83D5: Exit Sub
  loc_15C83D6: ' Referenced from: 15C719C
  loc_15C83DC: If (var_8C = &HFF) Then
  loc_15C83E5:   unk_49B6C1.RollbackTrans
  loc_15C83EA: End If
  loc_15C83EA: Proc_6_60_E63754(var_110)
  loc_15C83EF: Exit Sub
End Sub

Private Sub Form_Load() '103A4A4
  'Data Table: 49B6B4
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_B0 As String
  Dim var_C0 As Variant
  Dim unk_49B6C1 As Connection15
  loc_103A250: On Error Goto loc_103A49D
  loc_103A262: Me.LblUser.Left = CDbl(13500)
  loc_103A279: Me.LblUser.Top = CDbl(7800)
  loc_103A290: Me.LblLDt.Top = CDbl(8160)
  loc_103A2A7: Me.LblLDt.Left = CDbl(13500)
  loc_103A2B3: var_9C = CVar(CLng(MemVar_1F951B4)) 'Long
  loc_103A2BC: Set var_8C = Me.DBGrid1
  loc_103A2D1: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), DBGrid1.DispID_FFFFFE0B)
  loc_103A2E0: Set global_56 = New 
  loc_103A2F5: Me.DBGrid1.CursorLocation = 3
  loc_103A318: var_B0 = "SELECT LEAVE_ENCH.SR_NO AS SEARCHCODE,Leave_Ench.*,EMPLOYEE.NAME AS EmpName, SG.Name as AcName,IsNull(Depart.Name,'') As Department,Desig.Name As Designation FROM (Leave_Ench LEFT JOIN EMPLOYEE ON EMPLOYEE.CODE=Leave_Ench.EMP_CODE) Left Join SubGroup SG on SG.SubCode=Leave_Ench.AC_Code Left Join Depart On Depart.Code=Employee.Department Left Join Desig on Desig.Code=Employee.Designation where (Leave_Ench.LOGSITE_CODE='" & MemVar_1F95078
  loc_103A31F: var_C0 = CVar(var_B0 & "' or Leave_Ench.LOGSITE_CODE='HO') ORDER BY SR_NO") 'String
  loc_103A32C: Me.Recordset15.Open var_C0, CVar(MemVar_1F95044), 2
  loc_103A343: CVarUnk
  loc_103A348: VerifyVarObj
  loc_103A354: LateIdStAd
  loc_103A386: unk_49B6C1.Execute "SELECT SUBCODE as Code,NAME FROM SUBGROUP where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY NAME", var_C0, -1
  loc_103A3B5: CVarUnk
  loc_103A3BA: VerifyVarObj
  loc_103A3C6: LateIdStAd
  loc_103A3E8: var_B0 = "Select Employee.Code,Employee.Name,IsNull(Depart.Name,'') As Department,Desig.Name As Designation From Employee Left Join Depart On Depart.Code=Employee.Department Left Join Desig on Desig.Code=Employee.Designation Where (Employee.LOGSITE_CODE='" & MemVar_1F95078
  loc_103A3F8: unk_49B6C1.Execute var_B0 & "' or Employee.LOGSITE_CODE='HO') Order by Employee.Name", var_C0, -1
  loc_103A427: CVarUnk
  loc_103A42C: VerifyVarObj
  loc_103A432: Set var_8C = Me.DGEmployee
  loc_103A438: LateIdStAd
  loc_103A449: var_9C = CVar(CDbl(0)) 'Single
  loc_103A458: Me.DBGrid1.Left = var_9C
  loc_103A487: Call Proc_307_33_E6D444(Proc_5_1_100EC1C("INI", Me, global_56, Me, Me.DGAcName, Me, Me), Me.DBGrid1, Me, Me)
  loc_103A492: Call Proc_307_36_F8C89C(global_56, 3)
  loc_103A497: Call Proc_307_32_144E080(-1)
  loc_103A49C: Exit Sub
  loc_103A49D: ' Referenced from: 103A250
  loc_103A49D: Proc_6_60_E63754(var_9C)
  loc_103A4A2: Exit Sub
End Sub

Private Sub Form_Resize() 'ED4338
  'Data Table: 49B6B4
  Dim var_8C As Label
  loc_ED4296: Call 0.Method_arg_50 (var_88)
  loc_ED42A8: Me.LblFormCaption.Caption = var_88
  loc_ED42C1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED42CD: Set var_A0 = Me.TopCtrl1
  loc_ED42D3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED42E0: Set var_8C = Me.TopCtrl1
  loc_ED42E6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED4300: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED431B: Call 0.Method_arg_100 (var_B8)
  loc_ED432D: Me.LblFormCaption.Width = var_B8
  loc_ED4335: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0CC9C
  'Data Table: 49B6B4
  loc_E0CC93: Set global_56 = Nothing
  loc_E0CC9A: Exit Sub
End Sub

Private Sub Form_Activate() 'E0CC58
  'Data Table: 49B6B4
  loc_E0CC49: If (global_54 = &HFF) Then
  loc_E0CC51:   global_54 = 0
  loc_E0CC54: End If
  loc_E0CC54: Exit Sub
  loc_E0CC55: Set var_8C = global_54
End Sub

Private Sub Form_Deactivate() 'E023C8
  'Data Table: 49B6B4
  loc_E023C1: global_54 = &HFF
  loc_E023C4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29F74
  'Data Table: 49B6B4
  loc_E29F4C: On Error Goto loc_E29F6C
  loc_E29F63: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E29F6B: Exit Sub
  loc_E29F6C: ' Referenced from: E29F4C
  loc_E29F6C: Proc_6_60_E63754(Shift)
  loc_E29F71: Exit Sub
  loc_E29F72: CExtInstUnk
End Sub

Private Sub DGAcName_UnknownEvent_9 'F393F4
  'Data Table: 49B6B4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F392EB: Me.DGAcName.Visible = False
  loc_F3930A: If (Me.RecordCount > 0) Then
  loc_F39349:   Set var_B4 = Me.TExt1
  loc_F3934F:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(9), var_B8)
  loc_F39357:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3938A:   var_B0 = Me.Fields.Item("Name")
  loc_F393A9:   Set var_B4 = Me.TExt1
  loc_F393AF:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(9), var_B8)
  loc_F393B7:   var_B8.Text = CStr(var_B0.Value)
  loc_F393CD: End If
  loc_F393D8: Set var_A8 = Me.TExt1
  loc_F393DE: Call 0.Method_DGAcName_UnknownEvent_90 (CInt(9))
  loc_F393E6: var_B0.SetFocus
  loc_F393F2: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_1F 'E72858
  'Data Table: 49B6B4
  loc_E72816: Proc_6_153_E91D24(Me.DGAcName, arg_14)
  loc_E7282D: Set var_8C = Me.FGPoint
  loc_E72849: Proc_6_138_106E830(Me.DGAcName, global_60, CInt(9))
  loc_E72857: Exit Sub
End Sub

Private Sub DBGrid1_UnknownEvent_1D 'E0CF28
  'Data Table: 49B6B4
  Dim arg_3CFF As Double
  loc_E0CF1D: If ((KeyCode = &H26) Or (KeyCode = &H28)) Then
  loc_E0CF20:   Call Proc_307_32_144E080()
  loc_E0CF25: End If
  loc_E0CF25: Exit Sub
  loc_E0CF26: arg_3CFF = 
End Sub

Public Sub SEARCHBACK(MyValue) 'E9CCA0
  'Data Table: 49B6B4
  loc_E9CC26: On Error Goto loc_E9CC99
  loc_E9CC32: Me.Recordset15.MoveFirst
  loc_E9CC5F: Me.Recordset15.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E9CC8B: Proc_5_0_1107AD0(&HFF, Me, global_56)
  loc_E9CC93: Call Proc_307_32_144E080(0)
  loc_E9CC98: Exit Sub
  loc_E9CC99: ' Referenced from: E9CC26
  loc_E9CC99: Proc_6_60_E63754(var_A0)
  loc_E9CC9E: Exit Sub
End Sub

Public Sub Proc_307_30_E1CB28
  'Data Table: 49B6B4
  loc_E1CB1D: Me.Global.Unload Me
  loc_E1CB25: Exit Sub
End Sub

Public Sub Proc_307_31_FCDB84
  'Data Table: 49B6B4
  Dim var_8C As TextBox
  Dim var_88 As Label
  loc_FCD9D3: Set var_88 = Me.TExt1
  loc_FCD9D9: Call 0.Method_Proc_307_31_FCDB840 (CInt(1), var_8C)
  loc_FCD9E1: var_8C.Text = CStr(MemVar_1F950EC)
  loc_FCD9FE: Set var_88 = Me.TExt1
  loc_FCDA04: Call 0.Method_Proc_307_31_FCDB840 (CInt(0), var_8C)
  loc_FCDA0C: var_8C.Text = vbNullString
  loc_FCDA26: Set var_88 = Me.TExt1
  loc_FCDA2C: Call 0.Method_Proc_307_31_FCDB840 (CInt(3), var_8C)
  loc_FCDA34: var_8C.Text = vbNullString
  loc_FCDA4E: Set var_88 = Me.TExt1
  loc_FCDA54: Call 0.Method_Proc_307_31_FCDB840 (CInt(6), var_8C)
  loc_FCDA5C: var_8C.Text = vbNullString
  loc_FCDA76: Set var_88 = Me.TExt1
  loc_FCDA7C: Call 0.Method_Proc_307_31_FCDB840 (CInt(7), var_8C)
  loc_FCDA84: var_8C.Text = vbNullString
  loc_FCDA9E: Set var_88 = Me.TExt1
  loc_FCDAA4: Call 0.Method_Proc_307_31_FCDB840 (CInt(8), var_8C)
  loc_FCDAAC: var_8C.Text = vbNullString
  loc_FCDAC6: Set var_88 = Me.TExt1
  loc_FCDACC: Call 0.Method_Proc_307_31_FCDB840 (CInt(4), var_8C)
  loc_FCDAD4: var_8C.Text = vbNullString
  loc_FCDAEE: Set var_88 = Me.TExt1
  loc_FCDAF4: Call 0.Method_Proc_307_31_FCDB840 (CInt(9), var_8C)
  loc_FCDAFC: var_8C.Text = vbNullString
  loc_FCDB16: Set var_88 = Me.TExt1
  loc_FCDB1C: Call 0.Method_Proc_307_31_FCDB840 (CInt(2), var_8C)
  loc_FCDB24: var_8C.Text = vbNullString
  loc_FCDB3E: Set var_88 = Me.TExt1
  loc_FCDB44: Call 0.Method_Proc_307_31_FCDB840 (CInt(&HA), var_8C)
  loc_FCDB4C: var_8C.Text = vbNullString
  loc_FCDB65: Me.LblVPrefix.Caption = vbNullString
  loc_FCDB7A: Me.LblEmpRef.Caption = vbNullString
  loc_FCDB82: Exit Sub
End Sub

Public Sub Proc_307_32_144E080
  'Data Table: 49B6B4
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_B8 As Variant
  Dim var_C4 As String
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_BC As Fields15
  Dim var_114 As Variant
  Dim var_118 As Variant
  Dim var_104 As Variant
  Dim var_128 As Variant
  Dim var_150 As String
  Dim unk_49B6C1 As Connection15
  Dim var_164 As Variant
  Dim var_168 As Field20
  Dim var_17C As String
  Dim var_180 As Label
  Dim var_184 As TextBox
  Dim var_12C As String
  Dim var_8C As Recordset15
  loc_144D568: On Error Goto loc_144E077
  loc_144D585: If (Me.Recordset15.RecordCount > 0) Then
  loc_144D594:   Set var_94 = Me.TExt1
  loc_144D59A:   Call 0.Method_Proc_307_32_144E0800 (1, var_98)
  loc_144D5A2:   var_98.Text = vbNullString
  loc_144D5BA:   Set var_94 = Me.TExt1
  loc_144D5C0:   Call 0.Method_Proc_307_32_144E0800 (2, var_98)
  loc_144D5C8:   var_98.Text = vbNullString
  loc_144D5E0:   Set var_94 = Me.TExt1
  loc_144D5E6:   Call 0.Method_Proc_307_32_144E0800 (5, var_98)
  loc_144D5EE:   var_98.Text = vbNullString
  loc_144D62F:   If Not(IsNull(CVar(Me.Recordset15.Fields.Item("l_date")))) Then
  loc_144D671:     Set var_BC = Me.TExt1
  loc_144D677:     Call 0.Method_Proc_307_32_144E0800 (CInt(1), var_C0)
  loc_144D67F:     var_C0.Text = CStr(Me.Recordset15.Fields.Item("l_date").Value)
  loc_144D695:   End If
  loc_144D6D1:   Set var_BC = Me.TExt1
  loc_144D6D7:   Call 0.Method_Proc_307_32_144E0800 (CInt(9), var_C0)
  loc_144D6DF:   var_C0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("AcName")))
  loc_144D72F:   Set var_BC = Me.TExt1
  loc_144D735:   Call 0.Method_Proc_307_32_144E0800 (CInt(9), var_C0)
  loc_144D73D:   var_C0.Tag = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Ac_Code")))
  loc_144D790:   Set var_BC = Me.TExt1
  loc_144D796:   Call 0.Method_Proc_307_32_144E0800 (CInt(2), var_C0)
  loc_144D79E:   var_C0.Text = CStr(Me.Recordset15.Fields.Item("EmpName").Value)
  loc_144D7F3:   Set var_BC = Me.TExt1
  loc_144D7F9:   Call 0.Method_Proc_307_32_144E0800 (CInt(2), var_C0)
  loc_144D801:   var_C0.Tag = CStr(Me.Recordset15.Fields.Item("Emp_Code").Value)
  loc_144D847:   var_D4 = " - "
  loc_144D84C:   var_E4 = (Me.Recordset15.Fields.Item("Department").Value + var_D4)
  loc_144D870:   var_C0 = Me.Recordset15.Fields.Item("Designation")
  loc_144D880:   var_114 = (var_E4 + var_C0.Value)
  loc_144D88C:   Set var_118 = Me.LblEmpRef
  loc_144D892:   var_118.Caption = CStr(var_114)
  loc_144D8F1:   Set var_BC = Me.TExt1
  loc_144D8F7:   Call 0.Method_Proc_307_32_144E0800 (CInt(0), var_C0)
  loc_144D8FF:   var_C0.Text = CStr(Me.Recordset15.Fields.Item("SR_no").Value)
  loc_144D93A:   var_B8 = CVar(Me.Recordset15.Fields.Item("LEAVE_ENCH")) 'Address
  loc_144D941:   Proc_6_39_E7D3A0(var_E4)
  loc_144D958:   Set var_BC = Me.TExt1
  loc_144D95E:   Call 0.Method_Proc_307_32_144E0800 (CInt(7), var_C0)
  loc_144D966:   var_C0.Text = CStr(var_E4)
  loc_144D99B:   var_98 = Me.Recordset15.Fields.Item("Amt_Ench")
  loc_144D9AA:   Proc_6_39_E7D3A0(var_E4, CVar(var_98))
  loc_144D9E1:   Set var_BC = Me.TExt1
  loc_144D9E7:   Call 0.Method_Proc_307_32_144E0800 (CInt(8), var_C0, CStr(Format(var_E4, "0.00")))
  loc_144D9EF:   var_C0.Text = 1
  loc_144DA43:   Set var_94 = Me.TExt1
  loc_144DA49:   Call 0.Method_Proc_307_32_144E0800 (CInt(1), var_98, CVar("SELECT V_PREFIX FROM LEDGER WHERE site_code='" & MemVar_1F95070 & "' and V_DATE="), var_160, -1, var_118)
  loc_144DA51:   var_B8 = CVar(var_98) 'Address
  loc_144DA58:   Proc_6_7_F26918(var_E4, var_B8, var_164, 0)
  loc_144DA7B:   Set var_BC = Me.TExt1
  loc_144DA81:   Call 0.Method_Proc_307_32_144E0800 (CInt(0), var_C0, var_12C, var_168 & var_E4 & " AND V_NO=")
  loc_144DA89:   var_178 = var_C0.Text
  loc_144DAA2:   unk_49B6C1.Execute CStr(1 & CVar(var_12C)), var_B8, 
  loc_144DAAA:    = var_118.Fields
  loc_144DAB2:    = var_164.Item()
  loc_144DABA:    = var_168.Value
  loc_144DAD0:   Me.LblVPrefix.Caption = CStr(var_178)
  loc_144DB27:   var_C4 = "SELECT DOCID FROM LEDGER WHERE site_code='" & MemVar_1F95070
  loc_144DB3C:   Set var_94 = Me.TExt1
  loc_144DB42:   Call 0.Method_Proc_307_32_144E0800 (CInt(1), var_98, CVar(var_C4 & "' and V_DATE="), var_160, -1)
  loc_144DB51:   Proc_6_7_F26918(var_E4, CVar(var_98), var_118, var_164)
  loc_144DB59:   var_114 = 0 & var_E4 
  loc_144DB62:   var_128 = var_114 & " AND V_NO=" 
  loc_144DB74:   Set var_BC = Me.TExt1
  loc_144DB7A:   Call 0.Method_Proc_307_32_144E0800 (CInt(0), var_C0, var_12C)
  loc_144DB82:   var_128 = var_C0.Text
  loc_144DB9B:   unk_49B6C1.Execute CStr(var_168 & CVar(var_12C)), var_178, 
  loc_144DBA3:    = var_118.Fields
  loc_144DBAB:    = var_164.Item()
  loc_144DBB3:    = var_168.Value
  loc_144DBCA:   Set var_180 = Me.TExt1
  loc_144DBD0:   Call 0.Method_Proc_307_32_144E0800 (CInt(&HA), var_184)
  loc_144DBD8:   var_184.Text = CStr(var_178)
  loc_144DC2C:   Set var_94 = Me.TExt1
  loc_144DC32:   Call 0.Method_Proc_307_32_144E0800 (CInt(2), var_98, var_C4, "SELECT * FROM EMPLOYEE WHERE CODE='")
  loc_144DC3A:   var_B8 = var_98.Tag
  loc_144DC43:   var_12C = -1 & var_C4
  loc_144DC53:   unk_49B6C1.Execute var_12C & "'", var_BC, 
  loc_144DC5E:   Set var_88 = var_BC
  loc_144DC8D:   If (Me.Recordset15.RecordCount > 0) Then
  loc_144DCB2:     var_B8 = CVar(Me.Recordset15.Fields.Item("Tot_EL_Allow")) 'Address
  loc_144DCB9:     Proc_6_39_E7D3A0(var_E4)
  loc_144DCDB:     var_C0 = Me.Recordset15.Fields.Item("OP_Earned")
  loc_144DCEA:     Proc_6_39_E7D3A0(var_114, CVar(var_C0))
  loc_144DCF2:     var_128 = (var_E4 + var_114)
  loc_144DD05:     Set var_118 = Me.TExt1
  loc_144DD0B:     Call 0.Method_Proc_307_32_144E0800 (CInt(3), var_164)
  loc_144DD13:     var_164.Text = CStr(var_128)
  loc_144DD4D:     var_98 = Me.Recordset15.Fields.Item("Curr_Earned")
  loc_144DD5C:     Proc_6_39_E7D3A0(var_E4, CVar(var_98))
  loc_144DD73:     Set var_BC = Me.TExt1
  loc_144DD79:     Call 0.Method_Proc_307_32_144E0800 (CInt(4), var_C0)
  loc_144DD81:     var_C0.Text = CStr(var_E4)
  loc_144DDA7:     Set var_94 = Me.TExt1
  loc_144DDAD:     Call 0.Method_Proc_307_32_144E0800 (CInt(3), var_98)
  loc_144DDD8:     var_BC = Me.Recordset15.Fields
  loc_144DDE0:     var_C0 = var_BC.Item("Curr_Earned")
  loc_144DDEF:     Proc_6_39_E7D3A0(var_E4, CVar(var_C0))
  loc_144DDF7:     var_104 = (CVar(Val(var_98.Text)) - var_E4)
  loc_144DDFB:     var_12C = CStr(CVar(var_C0))
  loc_144DE0A:     Set var_118 = Me.TExt1
  loc_144DE10:     Call 0.Method_Proc_307_32_144E0800 (CInt(5), var_164)
  loc_144DE18:     var_164.Text = var_12C
  loc_144DE40:     If (MemVar_1F953B0 = "A") Then
  loc_144DE5E:       var_150 = "SELECT IIF(ISNULL(sum(Leave_Ench)),0,sum(Leave_Ench)) as el FROM Leave_Ench WHERE site_code='" & MemVar_1F95070 & "' and EMP_CODE='"
  loc_144DE6F:       Set var_94 = Me.TExt1
  loc_144DE75:       Call 0.Method_Proc_307_32_144E0800 (CInt(2), var_98, var_12C, var_150)
  loc_144DE86:       var_17C = -1 & var_12C
  loc_144DE96:       unk_49B6C1.Execute CStr(var_178) & "'", var_BC, var_98.Tag
  loc_144DEA1:       Set var_8C = var_BC
  loc_144DEC0:     Else
  loc_144DEC8:       If (MemVar_1F953B0 = "S") Then
  loc_144DEF7:         Set var_94 = Me.TExt1
  loc_144DEFD:         Call 0.Method_Proc_307_32_144E0800 (CInt(2), var_98, var_12C, "SELECT ISNULL(sum(Leave_Ench),0) as el FROM Leave_Ench WHERE site_code='" & MemVar_1F95070 & "' and EMP_CODE='")
  loc_144DF05:         var_B8 = var_98.Tag
  loc_144DF0E:         var_17C = -1 & var_12C
  loc_144DF1E:         unk_49B6C1.Execute CStr(var_178) & "'", var_BC, 
  loc_144DF29:         Set var_8C = var_BC
  loc_144DF45:       End If
  loc_144DF45:     End If
  loc_144DF5C:     If (var_8C.RecordCount > 0) Then
  loc_144DF9E:       If (Me.Recordset15.Fields.Item("el").Value > 0) Then
  loc_144DFBE:         var_98 = Me.Recordset15.Fields.Item("el")
  loc_144DFDD:         Set var_BC = Me.TExt1
  loc_144DFE3:         Call 0.Method_Proc_307_32_144E0800 (CInt(6), var_C0)
  loc_144DFEB:         var_C0.Text = CStr(var_98.Value)
  loc_144E004:       Else
  loc_144E038:         Set var_94 = Me.TExt1
  loc_144E03E:         Call 0.Method_Proc_307_32_144E0800 (CInt(6), var_98, CStr(Format(0, "0")))
  loc_144E046:         var_98.Text = 1
  loc_144E05E:       End If
  loc_144E05E:     End If
  loc_144E05E:   End If
  loc_144E061: Else
  loc_144E061:   Call Proc_307_31_FCDB84(1)
  loc_144E066: End If
  loc_144E06B: Set var_88 = Nothing
  loc_144E073: Set var_8C = Nothing
  loc_144E076: Exit Sub
  loc_144E077: ' Referenced from: 144D568
  loc_144E077: Proc_6_60_E63754()
  loc_144E07C: Exit Sub
End Sub

Public Sub Proc_307_33_E6D444(arg_C) 'E6D444
  'Data Table: 49B6B4
  Dim var_98 As TextBox
  loc_E6D3F8: Set var_8C = Me.TExt1
  loc_E6D3FE: Call 0.Method_Proc_307_33_E6D444C (var_8E, var_86)
  loc_E6D40C: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_E6D41F:   Set var_8C = Me.TExt1
  loc_E6D425:   Call 0.Method_Proc_307_33_E6D4440 (var_86, var_98)
  loc_E6D42D:   var_98.Enabled = arg_C
  loc_E6D43C: Next var_92 'Integer
  loc_E6D441: Exit Sub
End Sub

Public Sub Proc_307_34_E80A04
  'Data Table: 49B6B4
  loc_E809DF: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E809E2:   Call TopCtrl1_UnknownEvent_16()
  loc_E809EA: Else
  loc_E809F0:   Call 0.Method_arg_1E8 (var_108)
  loc_E809F8:   Call var_108.SetFocus
  loc_E80A01: End If
  loc_E80A01: Exit Sub
End Sub

Public Sub Proc_307_35_EBD5C4
  'Data Table: 49B6B4
  loc_EBD53C: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_EBD54E:   Me.DGEmployee.Visible = False
  loc_EBD556: End If
  loc_EBD572: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_EBD584:   Me.DGAcName.Visible = False
  loc_EBD58C: End If
  loc_EBD5A8: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBD5BA:   Me.FGPoint.Visible = False
  loc_EBD5C2: End If
  loc_EBD5C2: Exit Sub
End Sub

Public Sub Proc_307_36_F8C89C
  'Data Table: 49B6B4
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_F8C74A: Set var_88 = Me.TExt1
  loc_F8C750: Call 0.Method_Proc_307_36_F8C89C0 (CInt(2), var_8C)
  loc_F8C76F: Me.DGEmployee.Left = CVar(var_8C.Left)
  loc_F8C78B: Set var_B4 = Me.TExt1
  loc_F8C791: Call 0.Method_Proc_307_36_F8C89C0 (CInt(2), var_B8)
  loc_F8C7AC: Set var_88 = Me.TExt1
  loc_F8C7B2: Call 0.Method_Proc_307_36_F8C89C0 (CInt(2), var_8C)
  loc_F8C7CA: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_F8C7D9: Me.DGEmployee.Top = CVar(var_8C.Left)
  loc_F8C7F9: Set var_88 = Me.TExt1
  loc_F8C7FF: Call 0.Method_Proc_307_36_F8C89C0 (CInt(9), var_8C)
  loc_F8C81E: Me.DGAcName.Left = CVar(var_8C.Left)
  loc_F8C83A: Set var_B4 = Me.TExt1
  loc_F8C840: Call 0.Method_Proc_307_36_F8C89C0 (CInt(9), var_B8)
  loc_F8C85B: Set var_88 = Me.TExt1
  loc_F8C861: Call 0.Method_Proc_307_36_F8C89C0 (CInt(9), var_8C)
  loc_F8C879: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_F8C888: Me.DGAcName.Top = CVar(var_8C.Left)
  loc_F8C89A: Exit Sub
End Sub

Public Sub Proc_307_37_10F199C
  'Data Table: 49B6B4
  Dim var_94 As String
  Dim var_A4 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_134 As Label
  Dim var_CC As Variant
  Dim var_13C As TextBox
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_178 As TextBox
  Dim var_198 As Variant
  Dim var_1A0 As TextBox
  loc_10F16D5: var_90 = "LV"
  loc_10F16EC: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_10F1708: var_A4 = var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90
  loc_10F171D: Set var_A8 = Me.TExt1
  loc_10F1723: Call 0.Method_Proc_307_37_10F199C0 (CInt(1), var_AC, CVar(var_A4 & "' And VP.Date_From<="))
  loc_10F1732: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_10F173A: var_EC = -1 & var_CC 
  loc_10F174E: Me.TExt1.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10F1759: Set var_8C = var_134
  loc_10F1795: If (var_8C.RecordCount > 0) Then
  loc_10F17D0:   Me.LblVPrefix.Caption = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10F1813:   var_CC = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_10F1826:   Set var_134 = Me.TExt1
  loc_10F182C:   Call 0.Method_Proc_307_37_10F199C0 (CInt(0), var_13C)
  loc_10F1834:   var_13C.Text = CStr(var_CC)
  loc_10F184E: End If
  loc_10F1879: var_BC = Space((5 - Len(var_90)))
  loc_10F1881: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_8C.Fields.Item("start_srl_no").Value)
  loc_10F18A4: var_EC = Space((5 - Len(Me.LblVPrefix.Caption)))
  loc_10F18AC: var_10C = (CVar(var_A4 & "' And VP.Date_From<=") + var_EC)
  loc_10F18C8: var_150 = (var_EC & " Order By VP.Date_From DESC" + CVar(Me.LblVPrefix.Caption))
  loc_10F18DF: Set var_134 = Me.TExt1
  loc_10F18E5: Call 0.Method_Proc_307_37_10F199C0 (CInt(0), var_13C, var_A4)
  loc_10F18ED: 8 = var_13C.Text
  loc_10F18FA: var_160 = Space((var_150 - Len(var_A4)))
  loc_10F1902: var_170 = ( + var_160)
  loc_10F1914: Set var_174 = Me.TExt1
  loc_10F191A: Call 0.Method_Proc_307_37_10F199C0 (CInt(0), var_178)
  loc_10F192D: var_198 = (var_170 + CVar(var_178.Text))
  loc_10F1940: Set var_19C = Me.TExt1
  loc_10F1946: Call 0.Method_Proc_307_37_10F199C0 (CInt(&HA), var_1A0)
  loc_10F194E: var_1A0.Text = CStr(var_198)
  loc_10F1991: Set var_8C = Nothing
  loc_10F1994: Proc_307_37_10F199C = 
End Sub
