VERSION 5.00
Begin VB.Form SmartCardRecharge
  Caption = "Smart Card Recharge Entry"
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
  ClientWidth = 11520
  ClientHeight = 5490
  Begin BtnEnh CmdCardScan
    Left = 2250
    Top = 870
    Width = 5625
    Height = 540
    TabIndex = 38
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11520
    Height = 450
    TabIndex = 37
  End
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 4980
    Width = 1380
    Height = 285
    TabIndex = 35
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox Txt
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 4665
    Width = 1380
    Height = 285
    TabIndex = 33
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin CommandButton CmdPosting
    Caption = "LS_Posting"
    Left = 12525
    Top = 9195
    Width = 1575
    Height = 510
    Visible = 0   'False
    TabIndex = 31
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 1875
    Width = 1380
    Height = 285
    TabIndex = 27
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
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    Left = 7020
    Top = 60
    Width = 2760
    Height = 240
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    MaxLength = 21
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
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6570
    Top = 4965
    Width = 1380
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6555
    Top = 4665
    Width = 1395
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 2505
    Width = 5475
    Height = 285
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 75
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 3135
    Width = 5475
    Height = 285
    TabIndex = 3
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
  Begin PictureBox Picture1
    ForeColor = &HFF0000&
    Left = 12030
    Top = 1815
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 17
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin PictureBox Picture3
    ForeColor = &HFF0000&
    Left = 11850
    Top = 1215
    Width = 300
    Height = 285
    Visible = 0   'False
    TabIndex = 16
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6585
    Top = 2190
    Width = 1380
    Height = 285
    TabIndex = 7
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6585
    Top = 1875
    Width = 1380
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
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 4350
    Width = 5475
    Height = 285
    TabIndex = 5
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
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 2190
    Width = 1380
    Height = 285
    TabIndex = 6
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
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2475
    Top = 3450
    Width = 5475
    Height = 870
    TabIndex = 4
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 125
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 2820
    Width = 5475
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 75
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6585
    Top = 1560
    Width = 1380
    Height = 285
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 1560
    Width = 1380
    Height = 285
    TabIndex = 28
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
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3885
    Top = 1560
    Width = 630
    Height = 285
    TabIndex = 30
    BorderStyle = 0 'None
    MaxLength = 5
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
  Begin Label LblName
    Caption = "Current Security Balance"
    Index = 11
    ForeColor = &HFF0000&
    Left = 15
    Top = 4980
    Width = 2385
    Height = 285
    TabIndex = 36
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
    Caption = "Current Balance"
    Index = 10
    ForeColor = &HFF0000&
    Left = 825
    Top = 4665
    Width = 1545
    Height = 285
    TabIndex = 34
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
    Caption = "Receipt.No."
    Index = 9
    ForeColor = &HFF0000&
    Left = 825
    Top = 1875
    Width = 1095
    Height = 285
    TabIndex = 32
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
    Caption = "Recharge Date"
    Index = 8
    ForeColor = &HFF0000&
    Left = 825
    Top = 1545
    Width = 1410
    Height = 240
    TabIndex = 29
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
    Caption = "Security Amount"
    Index = 7
    ForeColor = &HFF0000&
    Left = 4920
    Top = 4995
    Width = 1575
    Height = 285
    TabIndex = 26
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
    Caption = "Recharge Amount"
    Index = 5
    ForeColor = &HFF0000&
    Left = 4770
    Top = 4650
    Width = 1710
    Height = 285
    TabIndex = 25
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
    Caption = "Member Name"
    Index = 3
    ForeColor = &HFF0000&
    Left = 825
    Top = 2505
    Width = 1395
    Height = 240
    TabIndex = 23
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
  Begin Image ImgSign
    Left = 8145
    Top = 4170
    Width = 2295
    Height = 705
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Image ImgPhoto
    Left = 8130
    Top = 1530
    Width = 2235
    Height = 2460
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Label LblPhoto
    Caption = "Photo"
    ForeColor = &H80&
    Left = 8820
    Top = 2520
    Width = 510
    Height = 240
    TabIndex = 21
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblSign
    Caption = "Signature"
    ForeColor = &H80&
    Left = 8880
    Top = 4380
    Width = 825
    Height = 240
    TabIndex = 20
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLedgerAc
    Caption = "Member ID"
    Index = 4
    ForeColor = &HFF0000&
    Left = 825
    Top = 3135
    Width = 1035
    Height = 285
    TabIndex = 19
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
    Caption = "Mobile No."
    Index = 1
    ForeColor = &HFF0000&
    Left = 825
    Top = 4350
    Width = 1020
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
  End
  Begin Label LblName
    Caption = "Issue Date"
    Index = 0
    ForeColor = &HFF0000&
    Left = 5310
    Top = 1875
    Width = 975
    Height = 285
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
  End
  Begin Label LblName
    Caption = "Valid Upto Date"
    Index = 4
    ForeColor = &HFF0000&
    Left = 825
    Top = 2190
    Width = 1485
    Height = 285
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
  End
  Begin Label LblLedgerAc
    Caption = "Address"
    Index = 0
    ForeColor = &HFF0000&
    Left = 825
    Top = 3465
    Width = 750
    Height = 285
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
  End
  Begin Label LblName
    Caption = "Blocked"
    Index = 6
    ForeColor = &HFF0000&
    Left = 5325
    Top = 2190
    Width = 765
    Height = 285
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
  End
  Begin Label LblName
    Caption = "Account Name"
    Index = 2
    ForeColor = &HFF0000&
    Left = 825
    Top = 2835
    Width = 1380
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
  Begin Label LblLedgerAc
    Caption = "Card Type"
    Index = 2
    ForeColor = &HFF0000&
    Left = 5295
    Top = 1560
    Width = 975
    Height = 285
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
End

Attribute VB_Name = "SmartCardRecharge"


Private Sub Txt_GotFocus(Index As Integer) 'E7ABCC
  'Data Table: 45A94C
  Dim var_86 As Integer
  loc_E7AB7C: On Error Goto loc_E7AB86
  loc_E7AB82: var_86 = Index
  loc_E7AB85: Exit Sub
  loc_E7AB86: ' Referenced from: E7AB7C
  loc_E7AB8E: Set var_8C = Err()
  loc_E7AB94: Call 0.Method_arg_2C (var_90)
  loc_E7ABB5: MsgBox(CVar(var_90), &H40, "Information", var_E0, var_100)
  loc_E7ABC8: Exit Sub
  loc_E7ABC9: Exit Sub
  loc_E7ABCA: DOC
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E7A5F4
  'Data Table: 45A94C
  Dim var_86 As Integer
  Dim var_88 As Integer
  loc_E7A58F: var_86 = Shift
  loc_E7A59C: If (CLng(Shift) = &H1B) Then
  loc_E7A59F:   Exit Sub
  loc_E7A5A0: End If
  loc_E7A5A3: var_88 = KeyCode
  loc_E7A5C4: If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HA))) Then
  loc_E7A5CD:   Proc_6_75_E5335C(Shift, arg_14)
  loc_E7A5D2: End If
  loc_E7A5E5: If ((CLng(Shift) = &H26) And (KeyCode <> CInt(9))) Then
  loc_E7A5EE:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E7A5F3: End If
  loc_E7A5F3: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EEDB90
  'Data Table: 45A94C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_EEDACE: Proc_6_133_E7FB08(var_94)
  loc_EEDAD7: arg_10 = CInt(var_94)
  loc_EEDAE0: Proc_6_58_E06050(arg_10, arg_10)
  loc_EEDAE8: var_96 = KeyAscii
  loc_EEDAF3: If (var_96 = CInt(9)) Then
  loc_EEDAFC:   If (arg_10 = &H2D) Then
  loc_EEDB01:     arg_10 = 0
  loc_EEDB04:   End If
  loc_EEDB0E:   Set var_9C = Me.Txt
  loc_EEDB14:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, arg_10)
  loc_EEDB2F:   Proc_6_42_129B55C(var_A0, arg_10, 7)
  loc_EEDB3E: Else
  loc_EEDB46:   If (var_96 = CInt(&HA)) Then
  loc_EEDB4F:     If (arg_10 = &H2D) Then
  loc_EEDB54:       arg_10 = 0
  loc_EEDB57:     End If
  loc_EEDB61:     Set var_9C = Me.Txt
  loc_EEDB67:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, arg_10)
  loc_EEDB82:     Proc_6_42_129B55C(var_A0, arg_10, 6, 0)
  loc_EEDB8E:   End If
  loc_EEDB8E: End If
  loc_EEDB8E: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F88274
  'Data Table: 45A94C
  Dim var_86 As Integer
  Dim var_DC As String
  Dim var_D8 As TextBox
  loc_F88128: On Error Goto loc_F8822F
  loc_F8812E: var_86 = Cancel
  loc_F88139: If (var_86 = CInt(9)) Then
  loc_F88146:   Set var_8C = Me.Txt
  loc_F8814C:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F88186:   Set var_D4 = Me.Txt
  loc_F8818C:   Call 0.Method_Txt_Validate0 (Cancel, var_D8, CStr(Format(CVar(var_90), "0.00")))
  loc_F88194:   var_D8.Text = 1
  loc_F881B1: Else
  loc_F881B9:   If (var_86 = CInt(&HA)) Then
  loc_F881C6:     Set var_8C = Me.Txt
  loc_F881CC:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F881F0:     var_D0 = Format(CVar(var_90), "0.00")
  loc_F881F8:     var_DC = CStr(var_D0)
  loc_F88206:     Set var_D4 = Me.Txt
  loc_F8820C:     Call 0.Method_Txt_Validate0 (Cancel, var_D8, var_DC, 1)
  loc_F88214:     var_D8.Text = 1
  loc_F8822E:   End If
  loc_F8822E: End If
  loc_F8822E: Exit Sub
  loc_F8822F: ' Referenced from: F88128
  loc_F88237: Set var_8C = Err()
  loc_F8823D: Call 0.Method_arg_2C (var_DC, 1)
  loc_F8825E: MsgBox(CVar(var_DC), &H40, "Information", var_D0, var_10C)
  loc_F88271: Exit Sub
  loc_F88272: Exit Sub
End Sub

Private Sub Form_Load() 'EE1F90
  'Data Table: 45A94C
  loc_EE1EE0: On Error Goto loc_EE1F4C
  loc_EE1EEA: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_EE1EEF: Call Proc_284_21_EE1EA0()
  loc_EE1EF4: Call Proc_284_26_EF6CC4()
  loc_EE1F05: Set var_90 = Me
  loc_EE1F0E: var_8C = "INI"
  loc_EE1F1C: Call Proc_284_20_10980F8(Proc_5_1_100EC1C(var_8C, var_90))
  loc_EE1F30: Call 0.Method_arg_160 (var_90)
  loc_EE1F3E: Call 0.Method_arg_164 (var_90)
  loc_EE1F46: Call Proc_284_23_135E77C(global_52)
  loc_EE1F4B: Exit Sub
  loc_EE1F4C: ' Referenced from: EE1EE0
  loc_EE1F54: Set var_90 = Err()
  loc_EE1F5A: Call 0.Method_arg_2C (var_8C)
  loc_EE1F7B: MsgBox(CVar(var_8C), &H40, "Information", var_E8, var_108)
  loc_EE1F8E: Exit Sub
  loc_EE1F8F: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0DC5C
  'Data Table: 45A94C
  loc_E0DC53: Set global_52 = Nothing
  loc_E0DC5A: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27FD4
  'Data Table: 45A94C
  loc_E27FAC: On Error Goto loc_E27FCB
  loc_E27FC3: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E27FCB: ' Referenced from: E27FAC
  loc_E27FCB: Proc_6_60_E63754(Shift)
  loc_E27FD0: Exit Sub
End Sub

Private Sub CmdPosting_Click() '140D174
  'Data Table: 45A94C
  Dim var_B8 As String
  Dim unk_45A959 As Connection15
  Dim var_88 As Recordset15
  Dim var_E0 As Fields15
  Dim var_DC As Variant
  Dim var_264 As String
  Dim var_240 As String
  loc_140C790: On Error Goto loc_140D0FD
  loc_140C7B7: unk_45A959.Execute "Select * From SmartCardTransaction SCT Where LogSite_Code='" & MemVar_1F95078 & "' Order By TransactionId", var_DC, -1
  loc_140C7C2: Set var_88 = var_E0
  loc_140C7D8: var_E4 = var_88.RecordCount
  loc_140C7E6: If (var_E4 > 0) Then
  loc_140C7F2:   unk_45A959.BeginTrans var_E4
  loc_140C7FB:   var_B2 = CByte(1) 'Byte
  loc_140C7FF:   ' Referenced from: 140D066
  loc_140C80E:   If Not(var_88.EOF) Then
  loc_140C84A:     If (Proc_6_38_E69628(CVar(var_88.Fields.Item("Type"))) = "Recharge") Then
  loc_140C9A7:       var_250 = var_88.Fields.Item("U_EntDt").Value
  loc_140C9F2:       var_268 = 0
  loc_140C9FC:       var_264 = CStr(var_88.Fields.Item("U_AE").Value)
  loc_140CA09:       var_240 = CStr(var_88.Fields.Item("U_Name").Value)
  loc_140CA38:       Proc_275_17_1187538(CStr(var_88.Fields.Item("Code").Value), CStr(var_88.Fields.Item("SerialNo").Value), CStr(var_88.Fields.Item("Type").Value), CDate(var_88.Fields.Item("VDate").Value), CSng(var_88.Fields.Item("CashAmtCr").Value), CSng(var_88.Fields.Item("SecurAmtCr").Value), CStr(var_88.Fields.Item("Comments").Value))
  loc_140CA93:     Else
  loc_140CACC:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("Type")), var_240, CDate(var_250), var_264) = "Refund") Then
  loc_140CC29:         var_250 = var_88.Fields.Item("U_EntDt").Value
  loc_140CC74:         var_268 = 0
  loc_140CC7E:         var_264 = CStr(var_88.Fields.Item("U_AE").Value)
  loc_140CCBA:         Proc_275_17_1187538(CStr(var_88.Fields.Item("Code").Value), CStr(var_88.Fields.Item("SerialNo").Value), CStr(var_88.Fields.Item("Type").Value), CDate(var_88.Fields.Item("VDate").Value), CSng(var_88.Fields.Item("CashAmtDr").Value), CSng(var_88.Fields.Item("SecurAmtDr").Value), CStr(var_88.Fields.Item("Comments").Value), CStr(var_88.Fields.Item("U_Name").Value))
  loc_140CD15:       Else
  loc_140CD3D:         var_B8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("Type")), CDate(var_250), var_264, var_268, 0)
  loc_140CD4E:         If (var_B8 = "Settlement") Then
  loc_140CD79:           var_A0 = Proc_6_38_E69628(CVar(var_88.Fields.Item("ContraDocId")), 0, var_268)
  loc_140CD8C:           If (Len(var_A0) = &H15) Then
  loc_140CE78:             var_E0 = var_88.Fields
  loc_140CE88:             var_DC = var_E0.Item("VDate").Value
  loc_140CEAF:             var_1D4 = var_88.Fields.Item("Code").Value
  loc_140CED6:             var_1E4 = var_88.Fields.Item("SerialNo").Value
  loc_140CEFD:             var_1F8 = var_88.Fields.Item("CashAmtDr").Value
  loc_140CF24:             var_208 = var_88.Fields.Item("Comments").Value
  loc_140CF4B:             var_218 = var_88.Fields.Item("U_Name").Value
  loc_140CF72:             var_228 = var_88.Fields.Item("U_EntDt").Value
  loc_140CF99:             var_23C = var_88.Fields.Item("U_AE").Value
  loc_140CFAE:             var_264 = "CARDEXP"
  loc_140D014:             Proc_275_16_10AF65C(MemVar_1F95044, var_A0, 1, CStr(Trim(Mid(var_A0, 4, 5))), CLng(Trim(Mid(var_A0, &HE, 8))), CStr(Trim(Mid(var_A0, 9, 5))), CStr(Trim(Mid(var_A0, 2, 2))), CDate(var_DC))
  loc_140D05E:           End If
  loc_140D05E:         End If
  loc_140D05E:       End If
  loc_140D05E:     End If
  loc_140D061:     var_88.MoveNext
  loc_140D066:     GoTo loc_140C7FF
  loc_140D069:   End If
  loc_140D07F:   unk_45A959.Execute "Update SmartCardRegistration Set CurrBal=R.CurrBal,SecurBal=R.SecurBal From SmartCardRegistration SCR Left Join (Select Q.Code,Sum(Q.RCARDC)+Sum(Q.CARDEXP) Currbal,Sum(Q.RCARDS) SecurBal From (Select Code,(Case When Type='RCARDC' Then IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) Else 0 End) RCARDC,(Case When Type='CARDEXP' Then IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) Else 0 End) CARDEXP,(Case When Type='RCARDS' Then IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) Else 0 End) RCARDS From SmartCardLedger Group By Code,Type)Q Group By Q.Code)R On SCR.Code=R.Code", var_DC, -1
  loc_140D08A:   Proc_275_21_1128200(var_E0, CStr(var_1D4), CStr(var_1E4), CDbl(0), CSng(var_1F8))
  loc_140D0A5:   unk_45A959.Execute "Update SmartCardRegistration Set CurrBal=R.CurrBal,SecurBal=R.SecurBal From SmartCardRegistration SCR Left Join (Select Q.Code,Sum(Q.RCARDC)+Sum(Q.CARDEXP) Currbal,Sum(Q.RCARDS) SecurBal From (Select Code,(Case When Type In ('RCARDC','CARDADJC') Then IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) Else 0 End) RCARDC,(Case When Type='CARDEXP' Then IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) Else 0 End) CARDEXP,(Case When Type In ('RCARDS','CARDADJS') Then IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) Else 0 End) RCARDS From SmartCardLedger Group By Code,Type)Q Group By Q.Code)R On SCR.Code=R.Code", var_DC, -1
  loc_140D0B6:   unk_45A959.CommitTrans
  loc_140D0BF:   var_B2 = CByte(1) 'Byte
  loc_140D0DC:   MsgBox("Process Completed Successfully.", &H40, var_1D4, var_1E4, var_1F8)
  loc_140D0EC: End If
  loc_140D0F1: Set var_88 = Nothing
  loc_140D0F9: Set var_8C = Nothing
  loc_140D0FC: Exit Sub
  loc_140D0FD: ' Referenced from: 140C790
  loc_140D106: If (CInt(var_B2) = 1) Then
  loc_140D10F:   unk_45A959.RollbackTrans
  loc_140D114: End If
  loc_140D122: Call 0.Method_arg_1C (var_E4, Err(), CStr(var_208))
  loc_140D133: If (var_E4 <> 0) Then
  loc_140D13E:   Set var_E0 = Err()
  loc_140D144:   Call 0.Method_arg_2C (var_B8, CStr(var_218))
  loc_140D15D:   MsgBox(CVar(var_B8), &H10, var_1D4, var_1E4, var_1F8)
  loc_140D170: End If
  loc_140D170: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F34C90
  'Data Table: 45A94C
  Dim var_108 As String
  Dim var_114 As TextBox
  loc_F34B80: On Error Goto loc_F34C4C
  loc_F34B8E: If (global_56 = vbNullString) Then
  loc_F34BB2:   MsgBox("Please Scan Card First.", &H40, "Smart Card Validation", var_E4, var_104)
  loc_F34BC2:   Exit Sub
  loc_F34BC3: End If
  loc_F34BE6: Call Proc_284_20_10980F8(Proc_5_1_100EC1C("ADD", Me))
  loc_F34BF1: Call Proc_284_22_F0D268(global_52)
  loc_F34BFB: var_108 = CStr(MemVar_1F950EC)
  loc_F34C09: Set var_10C = Me.Txt
  loc_F34C0F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HD), var_114)
  loc_F34C17: var_114.Text = var_108
  loc_F34C31: Set var_10C = Me.Txt
  loc_F34C37: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9))
  loc_F34C3F: var_114.SetFocus
  loc_F34C4B: Exit Sub
  loc_F34C4C: ' Referenced from: F34B80
  loc_F34C54: Set var_10C = Err()
  loc_F34C5A: Call 0.Method_arg_2C (var_108)
  loc_F34C7B: MsgBox(CVar(var_108), &H40, "Information", var_E4, var_104)
  loc_F34C8E: Exit Sub
  loc_F34C8F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBB430
  'Data Table: 45A94C
  loc_EBB39C: On Error Goto loc_EBB427
  loc_EBB3D6: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBB3E5:   Set var_110 = Me
  loc_EBB3FC:   Call Proc_284_20_10980F8(Proc_5_1_100EC1C("INI", var_110))
  loc_EBB407:   Call Proc_284_23_135E77C(global_52)
  loc_EBB40F: Else
  loc_EBB415:   Call 0.Method_arg_1E8 (var_110)
  loc_EBB41D:   Call var_110.SetFocus
  loc_EBB426: End If
  loc_EBB426: Exit Sub
  loc_EBB427: ' Referenced from: EBB39C
  loc_EBB427: Proc_6_60_E63754()
  loc_EBB42C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19BF4
  'Data Table: 45A94C
  loc_E19BE9: Me.Global.Unload Me
  loc_E19BF1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EE9BE0
  'Data Table: 45A94C
  Dim Me As Recordset15
  loc_EE9B24: On Error Goto loc_EE9B7A
  loc_EE9B27: Call Proc_284_26_EF6CC4()
  loc_EE9B35: var_88 = Me.RecordCount
  loc_EE9B43: If (var_88 > 0) Then
  loc_EE9B49:   var_8C = "0,0,900,900,3000,800,0,1000,1000,0,0,2500,1000,0,0,0,0,0,0,0,0,2500"
  loc_EE9B4F:   Proc_6_126_F1C850(var_8C)
  loc_EE9B5D:   MemVar_1F95120 = Me
  loc_EE9B74:   Call 0.Method_arg_2B0 (1)
  loc_EE9B79: End If
  loc_EE9B79: Exit Sub
  loc_EE9B7A: ' Referenced from: EE9B24
  loc_EE9B82: Set var_B0 = Err()
  loc_EE9B88: Call 0.Method_arg_1C (var_88)
  loc_EE9B99: If (var_88 <> 0) Then
  loc_EE9BA4:   Set var_B0 = Err()
  loc_EE9BAA:   Call 0.Method_arg_2C (var_8C)
  loc_EE9BCB:   MsgBox(CVar(var_8C), &H40, "Validation", var_E0, var_100)
  loc_EE9BDE: End If
  loc_EE9BDE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E33AE8
  'Data Table: 45A94C
  loc_E33AD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33AE0: Call Proc_284_23_135E77C(global_52)
  loc_E33AE5: Exit Sub
  loc_E33AE6: 1() = 
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E33E48
  'Data Table: 45A94C
  loc_E33E38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33E40: Call Proc_284_23_135E77C(global_52)
  loc_E33E45: Exit Sub
  loc_E33E46: 4() = 
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E33BA8
  'Data Table: 45A94C
  loc_E33B98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33BA0: Call Proc_284_23_135E77C(global_52)
  loc_E33BA5: Exit Sub
  loc_E33BA6: 3() = 
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E33B48
  'Data Table: 45A94C
  loc_E33B38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33B40: Call Proc_284_23_135E77C(global_52)
  loc_E33B45: Exit Sub
  loc_E33B46: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'F04374
  'Data Table: 45A94C
  Dim var_8C As TextBox
  loc_F042AB: Set var_88 = Me.Txt
  loc_F042B1: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HD))
  loc_F042C8: If IsDate(CVar(var_8C)) Then
  loc_F042D9:   Set var_88 = Me.Txt
  loc_F042DF:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HD), var_8C)
  loc_F042FF:   If (CDate(var_8C.Text) = MemVar_1F950EC) Then
  loc_F04310:     Set var_88 = Me.Txt
  loc_F04316:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HB), var_8C)
  loc_F0431E:     var_A0 = var_8C.Text
  loc_F04329:     Proc_275_19_166FAB8(var_A0, MemVar_1F953B8)
  loc_F0433B:   Else
  loc_F04341:     Call 0.Method_arg_50 (var_A0)
  loc_F04362:     MsgBox("Print Receipt Of Current Date Only.", &H40, CVar(var_A0), var_E0, var_100)
  loc_F04372:   End If
  loc_F04372: End If
  loc_F04372: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12E9D44
  'Data Table: 45A94C
  Dim var_BC As String
  Dim var_134 As TextBox
  Dim var_140 As TextBox
  Dim unk_45A959 As Connection15
  Dim var_138 As String
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_154 As Double
  Dim var_168 As TextBox
  Dim var_15C As Double
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_144 As String
  Dim var_160 As String
  Dim var_240 As Variant
  Dim Me As Recordset15
  loc_12E96D0: On Error Goto loc_12E9C98
  loc_12E96DE: If (global_56 = vbNullString) Then
  loc_12E96EC:   var_EC = "Smart Card Validation"
  loc_12E9702:   MsgBox("Please Scan Card First.", &H40, var_EC, var_10C, var_12C)
  loc_12E9712:   Exit Sub
  loc_12E9713: End If
  loc_12E9721: Set var_130 = Me.Txt
  loc_12E9727: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_134)
  loc_12E974F: Set var_13C = Me.Txt
  loc_12E9755: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_140)
  loc_12E9782: If ((CDbl(Val(var_134.Text)) = CDbl(0)) And (CDbl(Val(var_140.Text)) = CDbl(0))) Then
  loc_12E979E:   MsgBox("Both of Amount Should Not be Zero.", &H40, var_EC, var_10C, var_12C)
  loc_12E97B5:   Call Txt_GotFocus(CInt(9))
  loc_12E97BA:   Exit Sub
  loc_12E97BB: End If
  loc_12E97C4: unk_45A959.BeginTrans var_14C
  loc_12E97CD: var_AA = CByte(1) 'Byte
  loc_12E97E4: Set var_130 = Me.Txt
  loc_12E97EA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_134)
  loc_12E97F2: var_134.Text = CStr(MemVar_1F950EC)
  loc_12E980C: var_160 = 0
  loc_12E9831: var_144 = 0
  loc_12E985B: If (Proc_275_12_130B494(2, var_8C, var_88, 0, var_144) = 0) Then
  loc_12E985E:   GoTo loc_12E9C98
  loc_12E9861: End If
  loc_12E9878: If ((global_60 = var_8C) And (global_56 = var_88)) Then
  loc_12E9888:   var_138 = "Agnst. Recharge " & var_88
  loc_12E989D:   Set var_130 = Me.Txt
  loc_12E98A3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_134, CVar(var_138 & "/"), 0)
  loc_12E98B2:   var_EC = Trim(CVar(var_134))
  loc_12E98E1:   Set var_130 = Me.Txt
  loc_12E98E7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_134, var_160)
  loc_12E9902:   Set var_13C = Me.Txt
  loc_12E9908:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_140, var_138)
  loc_12E9910:   var_94 = var_140.Text
  loc_12E991D:   var_154 = Val(var_138)
  loc_12E992E:   Set var_164 = Me.Txt
  loc_12E9934:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_168, var_144)
  loc_12E9949:   var_15C = Val(var_144)
  loc_12E9987:   Proc_275_17_1187538(var_88, global_60, "Recharge", CDate(var_134.Text), var_168.Text, var_15C, CStr(0 & var_EC))
  loc_12E99B6:   Set var_130 = Me.Txt
  loc_12E99BC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_134, var_138, MemVar_1F950C8, CDate(Proc_6_14_EF402C(var_15C)))
  loc_12E99C4:   "A" = var_134.Text
  loc_12E99D1:   var_154 = Val(var_138)
  loc_12E99DB:   var_94 = (var_94 + var_154)
  loc_12E99F6:   Set var_130 = Me.Txt
  loc_12E99FC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_134, var_138, var_94, var_154)
  loc_12E9A04:   var_A8 = var_134.Text
  loc_12E9A1B:   var_9C = (var_9C + Val(var_138))
  loc_12E9A36:   Set var_130 = Me.Txt
  loc_12E9A3C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_134, var_138, var_9C)
  loc_12E9A44:   var_154 = var_134.Text
  loc_12E9A51:   var_154 = Val(var_138)
  loc_12E9A5F:   Proc_6_17_EAAE40(var_EC, CVar(Proc_6_14_EF402C(var_154, var_94)))
  loc_12E9A6F:   Proc_6_17_EAAE40(var_1F0, var_88)
  loc_12E9A94:   var_10C = CVar("Update SmartCardRegistration Set LastTransAmt=" & CStr(var_154) & ",LastTransDate=") 'String
  loc_12E9A9A:   var_12C = var_10C & var_EC 
  loc_12E9AE5:   var_240 = var_12C & ",CurrBal=" & CVar(var_94) & ",SecurBal=" & CVar(var_9C) & " Where Code=" & var_1F0 & " And LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_12E9AFC:   unk_45A959.Execute CStr(var_240 & "'"), var_280, -1
  loc_12E9B47:   If (Proc_275_7_10CE5A4(var_94, var_9C, var_8C) = 0) Then
  loc_12E9B4A:     GoTo loc_12E9C98
  loc_12E9B4D:   End If
  loc_12E9B50: Else
  loc_12E9B66:   var_BC = "Smart Card is Changed"
  loc_12E9B71:   MsgBox(var_BC, &H10, "Smart Card Verification", var_10C, var_12C)
  loc_12E9B84: Else
  loc_12E9B8A:   unk_45A959.CommitTrans
  loc_12E9B93:   var_AA = CByte(0) 'Byte
  loc_12E9B97:   Call Proc_284_26_EF6CC4(var_13C, var_9C)
  loc_12E9BC1:   Me.Find "SearchCode='" & var_A8 & "'", 0, 1
  loc_12E9BF0:   Call Proc_284_20_10980F8(Proc_5_1_100EC1C("INI", Me, global_52), var_BC)
  loc_12E9BFB:   Call Proc_284_23_135E77C(var_9C)
  loc_12E9C09:   var_14C = Me.RecordCount
  loc_12E9C17:   If (var_14C > 0) Then
  loc_12E9C51:     If (MsgBox("Print Receipt ?", &H24, "Print", var_10C, var_12C) = 6) Then
  loc_12E9C5A:       Proc_275_19_166FAB8(var_A8)
  loc_12E9C5F:     End If
  loc_12E9C5F:   End If
  loc_12E9C5F:   Call Proc_284_21_EE1EA0(MemVar_1F953B8)
  loc_12E9C64:   Call Proc_284_26_EF6CC4()
  loc_12E9C7E:   var_138 = "INI"
  loc_12E9C8C:   Call Proc_284_20_10980F8(Proc_5_1_100EC1C(var_138, Me))
  loc_12E9C97:   Exit Sub
  loc_12E9C98: End If
  loc_12E9C98: ' Referenced from: 12E9B4A
  loc_12E9C98: ' Referenced from: 12E985E
  loc_12E9C98: ' Referenced from: 12E96D0
  loc_12E9CA1: If (CInt(var_AA) = 1) Then
  loc_12E9CAA:   unk_45A959.RollbackTrans
  loc_12E9CBA:   var_EC = "Smart Card Detail"
  loc_12E9CD0:   MsgBox("Transaction Failed.", &H10, var_EC, var_10C, var_12C)
  loc_12E9CE0:   Call Proc_284_21_EE1EA0(global_52)
  loc_12E9CE5: End If
  loc_12E9CED: Set var_130 = Err()
  loc_12E9CF3: Call 0.Method_arg_1C (var_14C)
  loc_12E9D04: If (var_14C <> 0) Then
  loc_12E9D0F:   Set var_130 = Err()
  loc_12E9D15:   Call 0.Method_arg_2C (var_138)
  loc_12E9D2E:   MsgBox(CVar(var_138), &H10, var_EC, var_10C, var_12C)
  loc_12E9D41: End If
  loc_12E9D41: Exit Sub
  loc_12E9D42: Exit Sub
End Sub

Private Sub CmdCardScan_UnknownEvent_9 'F6E91C
  'Data Table: 45A94C
  Dim var_D8 As TextBox
  loc_F6E7E4: Call Proc_284_21_EE1EA0()
  loc_F6E7F1: If (Proc_275_20_13682EC() = 0) Then
  loc_F6E7F4:   Exit Sub
  loc_F6E7F5: End If
  loc_F6E800: var_B0 = 0
  loc_F6E855: If (Proc_275_12_130B494(2, global_60, global_56, 0, 0) = 0) Then
  loc_F6E858:   Exit Sub
  loc_F6E859: End If
  loc_F6E85F: Call Proc_284_24_125DDBC(global_56, 0, 0)
  loc_F6E86F: Proc_6_47_EF6560(var_D0, var_8C, var_B0)
  loc_F6E886: Set var_D4 = Me.Txt
  loc_F6E88C: Call 0.Method_CmdCardScan_UnknownEvent_90 (CInt(&HF), var_D8, CStr(var_D0))
  loc_F6E894: var_D8.Text = var_8C
  loc_F6E8B1: Proc_6_47_EF6560(var_D0, var_94)
  loc_F6E8C8: Set var_D4 = Me.Txt
  loc_F6E8CE: Call 0.Method_CmdCardScan_UnknownEvent_90 (CInt(&H10), var_D8)
  loc_F6E8D6: var_D8.Text = CStr(var_D0)
  loc_F6E8E8: Call Proc_284_26_EF6CC4(var_94)
  loc_F6E910: Call Proc_284_20_10980F8(Proc_5_1_100EC1C("INI", Me))
  loc_F6E91B: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EE7C5C
  'Data Table: 45A94C
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EE7BAE: On Error Goto loc_EE7C17
  loc_EE7BB7: Me.MoveFirst
  loc_EE7BD1: var_8C = "SearchCode='" & MyValue
  loc_EE7BE1: Me.Find var_8C & "'", 0, 1
  loc_EE7C09: Proc_5_0_1107AD0(&HFF, Me, global_52)
  loc_EE7C11: Call Proc_284_23_135E77C(0)
  loc_EE7C16: Exit Sub
  loc_EE7C17: ' Referenced from: EE7BAE
  loc_EE7C1F: Set var_A8 = Err()
  loc_EE7C25: Call 0.Method_arg_2C (var_8C)
  loc_EE7C46: MsgBox(CVar(var_8C), &H40, "Information", var_EC, var_10C)
  loc_EE7C59: Exit Sub
  loc_EE7C5A: Exit Sub
End Sub

Public Sub Proc_284_20_10980F8(arg_C) '10980F8
  'Data Table: 45A94C
  Dim var_98 As TextBox
  loc_1097E3E: Set var_8C = Me.Txt
  loc_1097E44: Call 0.Method_Proc_284_20_10980F8C (var_8E, var_86)
  loc_1097E54: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1097E6A:   Set var_8C = Me.Txt
  loc_1097E70:   Call 0.Method_Proc_284_20_10980F80 (CInt(var_86), var_98)
  loc_1097E78:   var_98.Enabled = arg_C
  loc_1097E87: Next var_92 'Byte
  loc_1097E9A: Set var_8C = Me.Txt
  loc_1097EA0: Call 0.Method_Proc_284_20_10980F80 (CInt(0), var_98)
  loc_1097EA8: var_98.Enabled = False
  loc_1097EC1: Set var_8C = Me.Txt
  loc_1097EC7: Call 0.Method_Proc_284_20_10980F80 (CInt(1), var_98)
  loc_1097ECF: var_98.Enabled = False
  loc_1097EE8: Set var_8C = Me.Txt
  loc_1097EEE: Call 0.Method_Proc_284_20_10980F80 (CInt(2), var_98)
  loc_1097EF6: var_98.Enabled = False
  loc_1097F0F: Set var_8C = Me.Txt
  loc_1097F15: Call 0.Method_Proc_284_20_10980F80 (CInt(3), var_98)
  loc_1097F1D: var_98.Enabled = False
  loc_1097F36: Set var_8C = Me.Txt
  loc_1097F3C: Call 0.Method_Proc_284_20_10980F80 (CInt(4), var_98)
  loc_1097F44: var_98.Enabled = False
  loc_1097F5D: Set var_8C = Me.Txt
  loc_1097F63: Call 0.Method_Proc_284_20_10980F80 (CInt(5), var_98)
  loc_1097F6B: var_98.Enabled = False
  loc_1097F84: Set var_8C = Me.Txt
  loc_1097F8A: Call 0.Method_Proc_284_20_10980F80 (CInt(6), var_98)
  loc_1097F92: var_98.Enabled = False
  loc_1097FAB: Set var_8C = Me.Txt
  loc_1097FB1: Call 0.Method_Proc_284_20_10980F80 (CInt(7), var_98)
  loc_1097FB9: var_98.Enabled = False
  loc_1097FD2: Set var_8C = Me.Txt
  loc_1097FD8: Call 0.Method_Proc_284_20_10980F80 (CInt(8), var_98)
  loc_1097FE0: var_98.Enabled = False
  loc_1097FF9: Set var_8C = Me.Txt
  loc_1097FFF: Call 0.Method_Proc_284_20_10980F80 (CInt(&HB), var_98)
  loc_1098007: var_98.Enabled = False
  loc_1098020: Set var_8C = Me.Txt
  loc_1098026: Call 0.Method_Proc_284_20_10980F80 (CInt(&HC), var_98)
  loc_109802E: var_98.Enabled = False
  loc_1098047: Set var_8C = Me.Txt
  loc_109804D: Call 0.Method_Proc_284_20_10980F80 (CInt(&HD), var_98)
  loc_1098055: var_98.Enabled = False
  loc_109806E: Set var_8C = Me.Txt
  loc_1098074: Call 0.Method_Proc_284_20_10980F80 (CInt(&HE), var_98)
  loc_109807C: var_98.Enabled = False
  loc_1098095: Set var_8C = Me.Txt
  loc_109809B: Call 0.Method_Proc_284_20_10980F80 (CInt(&HF), var_98)
  loc_10980A3: var_98.Enabled = False
  loc_10980BC: Set var_8C = Me.Txt
  loc_10980C2: Call 0.Method_Proc_284_20_10980F80 (CInt(&H10), var_98)
  loc_10980CA: var_98.Enabled = False
  loc_10980E3: Set var_8C = Me.CmdCardScan
  loc_10980E9: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000D(Not(arg_C))
  loc_10980F4: Exit Sub
End Sub

Public Sub Proc_284_21_EE1EA0
  'Data Table: 45A94C
  Dim var_98 As TextBox
  loc_EE1DF2: Set var_8C = Me.Txt
  loc_EE1DF8: Call 0.Method_Proc_284_21_EE1EA0C (var_8E, var_86)
  loc_EE1E08: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE1E1E:   Set var_8C = Me.Txt
  loc_EE1E24:   Call 0.Method_Proc_284_21_EE1EA00 (CInt(var_86), var_98)
  loc_EE1E2C:   var_98.Text = vbNullString
  loc_EE1E48:   Set var_8C = Me.Txt
  loc_EE1E4E:   Call 0.Method_Proc_284_21_EE1EA00 (CInt(var_86), var_98)
  loc_EE1E56:   var_98.Tag = vbNullString
  loc_EE1E65: Next var_92 'Byte
  loc_EE1E71: global_56 = vbNullString
  loc_EE1E7B: global_60 = vbNullString
  loc_EE1E82: var_A0 = vbNullString
  loc_EE1E91: Call Proc_284_25_11DB538(vbNullString)
  loc_EE1E9D: Exit Sub
  loc_EE1E9E: CExtInstUnk
End Sub

Public Sub Proc_284_22_F0D268
  'Data Table: 45A94C
  Dim var_8C As TextBox
  loc_F0D182: Set var_88 = Me.Txt
  loc_F0D188: Call 0.Method_Proc_284_22_F0D2680 (CInt(&HD), var_8C)
  loc_F0D190: var_8C.Text = vbNullString
  loc_F0D1AA: Set var_88 = Me.Txt
  loc_F0D1B0: Call 0.Method_Proc_284_22_F0D2680 (CInt(&HC), var_8C)
  loc_F0D1B8: var_8C.Text = vbNullString
  loc_F0D1D2: Set var_88 = Me.Txt
  loc_F0D1D8: Call 0.Method_Proc_284_22_F0D2680 (CInt(&HE), var_8C)
  loc_F0D1E0: var_8C.Text = vbNullString
  loc_F0D1FA: Set var_88 = Me.Txt
  loc_F0D200: Call 0.Method_Proc_284_22_F0D2680 (CInt(&HB), var_8C)
  loc_F0D208: var_8C.Text = vbNullString
  loc_F0D222: Set var_88 = Me.Txt
  loc_F0D228: Call 0.Method_Proc_284_22_F0D2680 (CInt(9), var_8C)
  loc_F0D230: var_8C.Text = vbNullString
  loc_F0D24A: Set var_88 = Me.Txt
  loc_F0D250: Call 0.Method_Proc_284_22_F0D2680 (CInt(&HA), var_8C)
  loc_F0D258: var_8C.Text = vbNullString
  loc_F0D264: Exit Sub
  loc_F0D265:  = 
End Sub

Public Sub Proc_284_23_135E77C
  'Data Table: 45A94C
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B4 As String
  Dim var_BC As TextBox
  Dim var_B8 As Fields15
  Dim var_DC As Variant
  loc_135DF40: On Error Goto loc_135E736
  loc_135DF49: Proc_183_45_E5CCA8(global_52)
  loc_135DF65: If (Me.RecordCount <= 0) Then
  loc_135DF68:   Call Proc_284_21_EE1EA0()
  loc_135DF70: Else
  loc_135DFA1:   global_60 = Proc_6_38_E69628(CVar(Me.Fields.Item("SerialNo")))
  loc_135DFEA:   Set var_B8 = Me.Txt
  loc_135DFF0:   Call 0.Method_Proc_284_23_135E77C0 (CInt(&HB), var_BC)
  loc_135DFF8:   var_BC.Text = CStr(Me.Fields.Item("SearchCode").Value)
  loc_135E063:   Set var_B8 = Me.Txt
  loc_135E069:   Call 0.Method_Proc_284_23_135E77C0 (CInt(&HD), var_BC, CStr(Format(CVar(Me.Fields.Item("VDate")), "dd/MMM/yyyy")))
  loc_135E071:   var_BC.Text = 1
  loc_135E0B9:   var_DC = "hh:nn"
  loc_135E0E0:   Set var_B8 = Me.Txt
  loc_135E0E6:   Call 0.Method_Proc_284_23_135E77C0 (CInt(&HE), var_BC, CStr(Format(CVar(Me.Fields.Item("U_EntDt")), var_DC)))
  loc_135E0EE:   var_BC.Text = 1
  loc_135E131:   Proc_6_39_E7D3A0(var_DC, CVar(Me.Fields.Item("VNo")))
  loc_135E148:   Set var_B8 = Me.Txt
  loc_135E14E:   Call 0.Method_Proc_284_23_135E77C0 (CInt(&HC), var_BC, CStr(var_DC))
  loc_135E156:   var_BC.Text = 1
  loc_135E1C3:   Set var_B8 = Me.Txt
  loc_135E1C9:   Call 0.Method_Proc_284_23_135E77C0 (CInt(0), var_BC, CStr(Format(CVar(Me.Fields.Item("IssDate")), "dd/MMM/yyyy")))
  loc_135E1D1:   var_BC.Text = 1
  loc_135E227:   Set var_B8 = Me.Txt
  loc_135E22D:   Call 0.Method_Proc_284_23_135E77C0 (CInt(1), var_BC, CStr(Me.Fields.Item("CardType").Value))
  loc_135E235:   var_BC.Text = 1
  loc_135E284:   Set var_B8 = Me.Txt
  loc_135E28A:   Call 0.Method_Proc_284_23_135E77C0 (CInt(2), var_BC)
  loc_135E292:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("MemberName")))
  loc_135E2DF:   Set var_B8 = Me.Txt
  loc_135E2E5:   Call 0.Method_Proc_284_23_135E77C0 (CInt(2), var_BC)
  loc_135E2ED:   var_BC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("MemberCode")))
  loc_135E33A:   Set var_B8 = Me.Txt
  loc_135E340:   Call 0.Method_Proc_284_23_135E77C0 (CInt(3), var_BC)
  loc_135E348:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_135E395:   Set var_B8 = Me.Txt
  loc_135E39B:   Call 0.Method_Proc_284_23_135E77C0 (CInt(3), var_BC)
  loc_135E3A3:   var_BC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("Code")))
  loc_135E3F3:   Set var_B8 = Me.Txt
  loc_135E3F9:   Call 0.Method_Proc_284_23_135E77C0 (CInt(4), var_BC)
  loc_135E401:   var_BC.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_135E450:   Set var_B8 = Me.Txt
  loc_135E456:   Call 0.Method_Proc_284_23_135E77C0 (CInt(5), var_BC)
  loc_135E45E:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Addr")))
  loc_135E4AB:   Set var_B8 = Me.Txt
  loc_135E4B1:   Call 0.Method_Proc_284_23_135E77C0 (CInt(6), var_BC)
  loc_135E4B9:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Phone")))
  loc_135E522:   Set var_B8 = Me.Txt
  loc_135E528:   Call 0.Method_Proc_284_23_135E77C0 (CInt(7), var_BC, CStr(Format(CVar(Me.Fields.Item("ValidUpto")), "dd/MMM/yyyy")))
  loc_135E530:   var_BC.Text = 1
  loc_135E57D:   var_EC = "No"
  loc_135E588:   var_DC = "Yes"
  loc_135E5A0:   var_11C = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("BlockedYN")), 1) = "Y"), var_DC, var_EC)
  loc_135E5B7:   Set var_B8 = Me.Txt
  loc_135E5BD:   Call 0.Method_Proc_284_23_135E77C0 (CInt(8), var_BC)
  loc_135E5C5:   var_BC.Text = CStr(var_11C)
  loc_135E612:   Proc_6_47_EF6560(var_DC, CVar(Me.Fields.Item("CashAmt")))
  loc_135E629:   Set var_B8 = Me.Txt
  loc_135E62F:   Call 0.Method_Proc_284_23_135E77C0 (CInt(9), var_BC)
  loc_135E637:   var_BC.Text = CStr(var_DC)
  loc_135E678:   Proc_6_47_EF6560(var_DC, CVar(Me.Fields.Item("SecurityAmt")))
  loc_135E680:   var_B4 = CStr(var_DC)
  loc_135E68F:   Set var_B8 = Me.Txt
  loc_135E695:   Call 0.Method_Proc_284_23_135E77C0 (CInt(&HA), var_BC)
  loc_135E69D:   var_BC.Text = var_B4
  loc_135E719:   Call Proc_284_25_11DB538(Proc_6_38_E69628(CVar(Me.Fields.Item("PicPath"))), Proc_6_38_E69628(CVar(Me.Fields.Item("SigPath"))))
  loc_135E735: End If
  loc_135E735: Exit Sub
  loc_135E736: ' Referenced from: 135DF40
  loc_135E73E: Set var_8C = Err()
  loc_135E744: Call 0.Method_arg_2C (var_B4)
  loc_135E765: MsgBox(CVar(var_B4), &H40, "Information", var_EC, var_11C)
  loc_135E778: Exit Sub
End Sub

Public Sub Proc_284_24_125DDBC(arg_C) '125DDBC
  'Data Table: 45A94C
  Dim var_90 As String
  Dim unk_45A959 As Connection15
  Dim var_8C As Recordset15
  Dim var_C0 As Fields15
  Dim var_BC As Variant
  Dim var_100 As TextBox
  Dim var_C8 As Variant
  Dim var_FC As Fields15
  loc_125D863: var_88 = arg_C
  loc_125D87A: var_90 = "Select SCR.MemberCode,S.Name As MemberName,SCR.Code,SCR.Name As Name,SCR.CardType,SCR.CardNo,SCR.Addr,SCR.Phone,SCR.SerialNo,SCR.IssDate,SCR.ValidUpto,SCR.BlockedYN,MF.PicPath,MF.SigPath From SmartCardRegistration SCR Left Join MemberFamily MF On MF.CardRegId=SCR.Code Left Join SubGroup S On SCR.MemberCode=S.Subcode Where SCR.LogSite_Code='" & MemVar_1F95078
  loc_125D898: unk_45A959.Execute var_90 & "' And SCR.Code='" & var_88 & "'", var_BC, -1
  loc_125D8A3: Set var_8C = var_C0
  loc_125D8CB: If (var_8C.RecordCount > 0) Then
  loc_125D8FC:   global_60 = Proc_6_38_E69628(CVar(var_8C.Fields.Item("SerialNo")))
  loc_125D95B:   Set var_FC = Me.Txt
  loc_125D961:   Call 0.Method_Proc_284_24_125DDBC0 (CInt(0), var_100, CStr(Format(CVar(var_8C.Fields.Item("IssDate")), "dd/MMM/yyyy")))
  loc_125D969:   var_100.Text = 1
  loc_125D9BC:   Set var_FC = Me.Txt
  loc_125D9C2:   Call 0.Method_Proc_284_24_125DDBC0 (CInt(1), var_100, CStr(var_8C.Fields.Item("CardType").Value))
  loc_125D9CA:   var_100.Text = 1
  loc_125DA16:   Set var_FC = Me.Txt
  loc_125DA1C:   Call 0.Method_Proc_284_24_125DDBC0 (CInt(2), var_100)
  loc_125DA24:   var_100.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("MemberName")))
  loc_125DA6E:   Set var_FC = Me.Txt
  loc_125DA74:   Call 0.Method_Proc_284_24_125DDBC0 (CInt(2), var_100)
  loc_125DA7C:   var_100.Tag = Proc_6_38_E69628(CVar(var_8C.Fields.Item("MemberCode")))
  loc_125DAA7:   var_C8 = var_8C.Fields.Item("Name")
  loc_125DAC6:   Set var_FC = Me.Txt
  loc_125DACC:   Call 0.Method_Proc_284_24_125DDBC0 (CInt(3), var_100)
  loc_125DAD4:   var_100.Text = Proc_6_38_E69628(CVar(var_C8))
  loc_125DAF6:   Set var_C0 = Me.Txt
  loc_125DAFC:   Call 0.Method_Proc_284_24_125DDBC0 (CInt(3), var_C8)
  loc_125DB04:   var_C8.Tag = var_88
  loc_125DB46:   Set var_FC = Me.Txt
  loc_125DB4C:   Call 0.Method_Proc_284_24_125DDBC0 (CInt(4), var_100)
  loc_125DB54:   var_100.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("CardNo")))
  loc_125DB9E:   Set var_FC = Me.Txt
  loc_125DBA4:   Call 0.Method_Proc_284_24_125DDBC0 (CInt(5), var_100)
  loc_125DBAC:   var_100.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Addr")))
  loc_125DBF6:   Set var_FC = Me.Txt
  loc_125DBFC:   Call 0.Method_Proc_284_24_125DDBC0 (CInt(6), var_100)
  loc_125DC04:   var_100.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Phone")))
  loc_125DC6A:   Set var_FC = Me.Txt
  loc_125DC70:   Call 0.Method_Proc_284_24_125DDBC0 (CInt(7), var_100, CStr(Format(CVar(var_8C.Fields.Item("ValidUpto")), "dd/MMM/yyyy")))
  loc_125DC78:   var_100.Text = 1
  loc_125DCFC:   Set var_FC = Me.Txt
  loc_125DD02:   Call 0.Method_Proc_284_24_125DDBC0 (CInt(8), var_100)
  loc_125DD0A:   var_100.Text = CStr(IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("BlockedYN")), 1) = "Y"), "Yes", "No"))
  loc_125DD3D:   var_C0 = var_8C.Fields
  loc_125DD8C:   Call Proc_284_25_11DB538(Proc_6_38_E69628(CVar(var_C0.Item("PicPath"))), Proc_6_38_E69628(CVar(var_8C.Fields.Item("SigPath"))))
  loc_125DDAB: Else
  loc_125DDAB:   Call Proc_284_21_EE1EA0(var_C0)
  loc_125DDB0: End If
  loc_125DDB5: Set var_8C = Nothing
  loc_125DDB8: Exit Sub
End Sub

Public Sub Proc_284_25_11DB538(arg_C, arg_10) '11DB538
  'Data Table: 45A94C
  Dim var_8C As Image
  Dim var_A0 As Variant
  Dim var_F0 As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_11DB0DF: Set var_8C = Me.ImgPhoto
  loc_11DB0F8: If (var_8C.Tag <> arg_C) Then
  loc_11DB108:   var_F0 = IsNull(arg_C)
  loc_11DB10F:   var_B0 = arg_C
  loc_11DB11F:   var_D0 = vbNullString
  loc_11DB136:   If CBool(var_F0 Or (Trim(var_B0) = var_D0)) Then
  loc_11DB157:     Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DB16C:     Me.ImgPhoto.Picture = var_8C
  loc_11DB185:     Me.ImgPhoto.Tag = vbNullString
  loc_11DB190:   Else
  loc_11DB193:     var_A0 = arg_C
  loc_11DB1A3:     var_D0 = arg_C
  loc_11DB1CE:     var_B0 = "DAT"
  loc_11DB1F6:     var_F0 = "AVI"
  loc_11DB215:     If CBool((Ucase(Right(Trim(var_A0), 3)) = var_B0) Or (Ucase(Right(Trim(var_D0), 3)) = var_F0)) Then
  loc_11DB224:       Me.ImgPhoto.Visible = False
  loc_11DB22F:     Else
  loc_11DB23C:       Me.ImgPhoto.Tag = arg_C
  loc_11DB250:       Call 0.Method_Proc_284_25_11DB5384 (arg_C, var_17A)
  loc_11DB258:       If var_17A Then
  loc_11DB275:         Set var_8C = Me.ImgPhoto
  loc_11DB28D:         Me.Global.LoadPicture CVar(Me.ImgPhoto.Tag), var_A0, var_B0, var_D0, var_F0
  loc_11DB2A2:         Me.ImgPhoto.Picture = var_114
  loc_11DB2B7:         Set var_8C = Me.ImgPhoto
  loc_11DB2BD:         var_8C.Refresh
  loc_11DB2C8:       Else
  loc_11DB2E6:         Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DB2FB:         Me.ImgPhoto.Picture = var_8C
  loc_11DB307:       End If
  loc_11DB307:     End If
  loc_11DB307:   End If
  loc_11DB307: End If
  loc_11DB30E: Set var_8C = Me.ImgSign
  loc_11DB327: If (var_8C.Tag <> arg_10) Then
  loc_11DB337:   var_F0 = IsNull(arg_10)
  loc_11DB33E:   var_B0 = arg_10
  loc_11DB34E:   var_D0 = vbNullString
  loc_11DB365:   If CBool(var_F0 Or (Trim(var_B0) = var_D0)) Then
  loc_11DB386:     Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DB39B:     Me.ImgSign.Picture = var_8C
  loc_11DB3B4:     Me.ImgSign.Tag = vbNullString
  loc_11DB3BF:   Else
  loc_11DB3C2:     var_A0 = arg_10
  loc_11DB3D2:     var_D0 = arg_10
  loc_11DB3FD:     var_B0 = "DAT"
  loc_11DB425:     var_F0 = "AVI"
  loc_11DB444:     If CBool((Ucase(Right(Trim(var_A0), 3)) = var_B0) Or (Ucase(Right(Trim(var_D0), 3)) = var_F0)) Then
  loc_11DB453:       Me.ImgSign.Visible = False
  loc_11DB45E:     Else
  loc_11DB465:       Set var_8C = Me.ImgSign
  loc_11DB46B:       var_8C.Tag = arg_10
  loc_11DB47F:       Call 0.Method_Proc_284_25_11DB5384 (arg_10, var_17A, var_8C)
  loc_11DB487:       If var_17A Then
  loc_11DB4A4:         Set var_8C = Me.ImgSign
  loc_11DB4BC:         Me.Global.LoadPicture CVar(Me.ImgSign.Tag), var_A0, var_B0, var_D0, var_F0
  loc_11DB4D1:         Me.ImgSign.Picture = var_114
  loc_11DB4E6:         Set var_8C = Me.ImgSign
  loc_11DB4EC:         var_8C.Refresh
  loc_11DB4F7:       Else
  loc_11DB515:         Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DB52A:         Me.ImgSign.Picture = var_8C
  loc_11DB536:       End If
  loc_11DB536:     End If
  loc_11DB536:   End If
  loc_11DB536: End If
  loc_11DB536: Exit Sub
End Sub

Public Sub Proc_284_26_EF6CC4
  'Data Table: 45A94C
  Dim var_88 As String
  Dim var_9C As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim unk_45A959 As Connection15
  loc_EF6C17: var_88 = "SELECT SCL.DocId As Searchcode,SCL.Code,SCL.VType,SCL.VNo,Convert(Varchar(11),SCL.VDate,103) VDate,SCL.Narration,SCL.U_Name,SCL.U_EntDt,SCL.CashAmt,SCL.SecurityAmt,SCR.IssDate,SCR.CardType,SCR.Name,SCR.CardNo,SCR.Addr,SCR.Phone,SCR.ValidUpto,SCR.BlockedYN,SCR.SerialNo,SCR.MemberCode,MF.PicPath,MF.SigPath,S.Name MemberName From (Select DocId,Max(Code)Code,Max(VType)Vtype,Max(VNo)VNo,Max(VDate)VDate,Max(Narration)Narration,Max(U_Name)U_Name,Max(U_EntDt)U_EntDt,IsNull(Sum(CashAmt),0)CashAmt,IsNull(Sum(SecurityAmt),0)SecurityAmt From " & "(Select DocId,Code,Vtype,VNo,VDate,Narration,U_Name,U_EntDt,CashAmt = CASE WHEN Type='RCARDC' THEN AmtCr ELSE 0 END ,SecurityAmt = CASE WHEN Type='RCARDS' THEN AmtCr ELSE 0 END From SmartCardLedger Where VType='RCARD' And AmtCr>0 And Code='"
  loc_EF6C28: var_9C = CVar(var_88 & global_56 & "' And VDate='") 'String
  loc_EF6C61: var_15C = var_9C & CDate(MemVar_1F950EC) & "' And Site_Code='" & CVar(MemVar_1F95070) & "' And LOGSITE_CODE='" & CVar(MemVar_1F95078) & "')Q Group By Q.DocId) SCL Inner Join SmartCardRegistration SCR On SCL.Code=SCR.Code " 
  loc_EF6C6A: var_17C = var_15C & "Left Join MemberFamily MF On SCR.Code=MF.CardRegId Left Join Subgroup S On SCR.MemberCode=S.SubCode Order By SCL.VNo Desc" 
  loc_EF6CA3: unk_45A959.Execute CStr(var_17C), var_9C, -1
  loc_EF6CB4: Set global_52 = var_180
  loc_EF6CC2: Exit Sub
End Sub
