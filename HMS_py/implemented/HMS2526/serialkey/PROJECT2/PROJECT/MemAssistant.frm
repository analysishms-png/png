VERSION 5.00
Begin VB.Form MemAssistant
  Caption = "Member Assistant "
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  LockControls = -1  'True
  Begin MSFlexGrid FGPoint
    Left = 10620
    Top = 9495
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 106
  End
  Begin DataGrid DGMemName
    Left = 8670
    Top = 8790
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin TextBox TxtFrPeriod
    Left = 17535
    Top = 6585
    Width = 1485
    Height = 315
    Visible = 0   'False
    Text = "Text1"
    TabIndex = 104
  End
  Begin TextBox Txt
    Index = 36
    BackColor = &HFFFFFF&
    Left = 17580
    Top = 8145
    Width = 1140
    Height = 255
    Visible = 0   'False
    TabIndex = 95
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 37
    BackColor = &HFFFFFF&
    Left = 17565
    Top = 7860
    Width = 1140
    Height = 255
    Visible = 0   'False
    TabIndex = 94
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 38
    BackColor = &HFFFFFF&
    Left = 15750
    Top = 8895
    Width = 3855
    Height = 255
    Visible = 0   'False
    TabIndex = 93
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 35
    Left = 17610
    Top = 8415
    Width = 1140
    Height = 240
    Visible = 0   'False
    TabIndex = 92
    BorderStyle = 0 'None
    MaxLength = 15
    Appearance = 0 'Flat
  End
End
Begin BtnEnh CmdBill
  Left = 13710
  Top = 480
  Width = 1995
  Height = 480
  TabIndex = 77
End
Begin BtnEnh LblPersonal
  Left = 165
  Top = 1935
  Width = 5715
  Height = 555
  TabIndex = 74
End
Begin TextBox txtCurrBal
  Left = 1845
  Top = 6300
  Width = 1440
  Height = 255
  Enabled = 0   'False
  TabIndex = 69
  BorderStyle = 0 'None
  MaxLength = 15
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin BtnEnh CmdExit
  Left = 4050
  Top = 7860
  Width = 1830
  Height = 435
  TabIndex = 68
End
Begin TextBox Txt
  Index = 20
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 6960
  Top = 9750
  Width = 1680
  Height = 255
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 67
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
Begin TextBox Txt
  Index = 28
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 15885
  Top = 9780
  Width = 615
  Height = 285
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 36
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 50
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
Begin Frame FrBlackListed
  Caption = "Frame2"
  ForeColor = &HFF0000&
  Left = 14175
  Top = 10080
  Width = 6135
  Height = 555
  Visible = 0   'False
  TabIndex = 31
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  BorderStyle = 0 'None
  Begin TextBox Txt
    Index = 30
    BackColor = &HFFFFFF&
    Left = 1770
    Top = 255
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 33
    BorderStyle = 0 'None
    MaxLength = 8
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
    Index = 29
    BackColor = &HFFFFFF&
    Left = 1755
    Top = -15
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 32
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
  Begin Label Lbl
    Caption = "Black List By  "
    Index = 21
    ForeColor = &HFF0000&
    Left = 90
    Top = 270
    Width = 1335
    Height = 240
    TabIndex = 35
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
  Begin Label Lbl
    Caption = "BlackList Reason  "
    Index = 20
    ForeColor = &HFF0000&
    Left = 90
    Top = -15
    Width = 1740
    Height = 240
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
End
Begin TextBox Txt
  Index = 8
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 4410
  Top = 5730
  Width = 1455
  Height = 255
  Enabled = 0   'False
  TabIndex = 30
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
Begin TextBox Txt
  Index = 14
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 5445
  Width = 570
  Height = 255
  Enabled = 0   'False
  TabIndex = 29
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
  Index = 22
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 4305
  Width = 4020
  Height = 255
  Enabled = 0   'False
  TabIndex = 28
  BorderStyle = 0 'None
  MaxLength = 50
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
  Index = 21
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 4020
  Width = 4020
  Height = 255
  Enabled = 0   'False
  TabIndex = 27
  BorderStyle = 0 'None
  MaxLength = 50
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
  Index = 23
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 4590
  Width = 4020
  Height = 255
  Enabled = 0   'False
  TabIndex = 26
  BorderStyle = 0 'None
  MaxLength = 50
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
  Index = 24
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 4875
  Width = 4020
  Height = 255
  Enabled = 0   'False
  TabIndex = 25
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
Begin TextBox Txt
  Index = 25
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 5160
  Width = 4020
  Height = 255
  Enabled = 0   'False
  TabIndex = 24
  BorderStyle = 0 'None
  MaxLength = 50
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
  Index = 26
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 15885
  Top = 9165
  Width = 4365
  Height = 285
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 23
  BorderStyle = 0 'None
  MaxLength = 50
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
  Index = 27
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 15885
  Top = 9465
  Width = 4365
  Height = 285
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 22
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 80
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
  Index = 18
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 3300
  Top = 5445
  Width = 2565
  Height = 255
  TabIndex = 21
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
  Index = 13
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 3735
  Width = 1245
  Height = 255
  Enabled = 0   'False
  TabIndex = 20
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
Begin TextBox Txt
  Index = 9
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 6015
  Width = 570
  Height = 255
  Enabled = 0   'False
  TabIndex = 19
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
  Index = 17
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 4470
  Top = 3735
  Width = 1395
  Height = 255
  Enabled = 0   'False
  TabIndex = 18
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
Begin TextBox Txt
  Index = 11
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 3165
  Width = 1245
  Height = 255
  Enabled = 0   'False
  TabIndex = 17
  BorderStyle = 0 'None
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
Begin TextBox Txt
  Index = 12
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 3450
  Width = 1245
  Height = 255
  TabIndex = 16
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
  Index = 16
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 4470
  Top = 3450
  Width = 1395
  Height = 255
  Enabled = 0   'False
  TabIndex = 15
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
Begin TextBox Txt
  Index = 15
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 4470
  Top = 3165
  Width = 1395
  Height = 255
  Enabled = 0   'False
  TabIndex = 14
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
Begin TextBox Txt
  Index = 10
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 4410
  Top = 6015
  Width = 1455
  Height = 255
  Enabled = 0   'False
  TabIndex = 13
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
  Index = 6
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 2595
  Width = 4020
  Height = 255
  Enabled = 0   'False
  TabIndex = 12
  BorderStyle = 0 'None
  MaxLength = 50
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
  Left = 1845
  Top = 5730
  Width = 570
  Height = 255
  Enabled = 0   'False
  TabIndex = 11
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
  Index = 3
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 9750
  Width = 510
  Height = 255
  Enabled = 0   'False
  Visible = 0   'False
  Text = "Mr."
  TabIndex = 10
  BorderStyle = 0 'None
  MaxLength = 4
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
  Left = 2385
  Top = 9750
  Width = 2880
  Height = 255
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 9
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
  Index = 19
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 5295
  Top = 9750
  Width = 1635
  Height = 255
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 8
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
Begin TextBox Txt
  Index = 2
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 9465
  Width = 1470
  Height = 255
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 7
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
  Left = 1845
  Top = 2880
  Width = 4020
  Height = 255
  TabIndex = 6
  BorderStyle = 0 'None
  MaxLength = 50
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
Begin BtnEnh CmdReset
  Left = 2205
  Top = 7860
  Width = 1830
  Height = 435
  TabIndex = 5
End
Begin TextBox Txt
  Index = 0
  BackColor = &HFFFFFF&
  Left = 1845
  Top = 7515
  Width = 4020
  Height = 255
  TabIndex = 1
  BorderStyle = 0 'None
  MaxLength = 75
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
  Index = 1
  BackColor = &HFFFFFF&
  Left = 390
  Top = 7515
  Width = 1425
  Height = 255
  TabIndex = 0
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
Begin CommonDialog CDlg
End
Begin BtnEnh CmdPayment
  Left = 13695
  Top = 1260
  Width = 1995
  Height = 480
  TabIndex = 78
End
Begin Frame FrBill
  Left = 6015
  Top = 2490
  Width = 9705
  Height = 6285
  TabIndex = 80
  Begin MSFlexGrid FGPoint1
    Left = 1290
    Top = 3645
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 103
  End
  Begin DataGrid DGRev
    Left = 435
    Top = 2670
    Width = 3930
    Height = 2565
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 102
  End
  Begin TextBox TxtPer
    Index = 1
    ForeColor = &HFF0000&
    Left = 7005
    Top = 3645
    Width = 330
    Height = 255
    Visible = 0   'False
    TabIndex = 98
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 8
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
  Begin TextBox TxtGt
    Index = 1
    ForeColor = &HFF0000&
    Left = 7575
    Top = 3645
    Width = 1185
    Height = 255
    Enabled = 0   'False
    TabIndex = 97
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 12
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
    Index = 32
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 840
    Top = 660
    Width = 1155
    Height = 255
    Enabled = 0   'False
    TabIndex = 91
    BorderStyle = 0 'None
    Alignment = 2 'Center
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
  Begin TextBox Txt
    Index = 31
    BackColor = &H8000000F&
    ForeColor = &HFF0000&
    Left = 7545
    Top = 660
    Width = 2025
    Height = 255
    Enabled = 0   'False
    TabIndex = 90
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFC0C0&
    Left = 390
    Top = 1305
    Width = 1065
    Height = 240
    Visible = 0   'False
    TabIndex = 87
    BorderStyle = 0 'None
    MaxLength = 10
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
  Begin TextBox Txt
    Index = 33
    BackColor = &HFFFFFF&
    Left = 5025
    Top = 660
    Width = 1155
    Height = 255
    TabIndex = 83
    BorderStyle = 0 'None
    Alignment = 2 'Center
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
    Index = 34
    BackColor = &HFFFFFF&
    Left = 2835
    Top = 660
    Width = 1350
    Height = 255
    TabIndex = 82
    BorderStyle = 0 'None
    Alignment = 2 'Center
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
  Begin MSHFlexGrid Fgrid
    Left = 375
    Top = 1020
    Width = 7500
    Height = 2355
    TabIndex = 86
  End
  Begin MSHFlexGrid FGCat
    Left = 150
    Top = 3660
    Width = 4185
    Height = 2505
    Visible = 0   'False
    TabIndex = 88
  End
  Begin MainCtrl TopCtrl1
    Left = 75
    Top = 150
    Width = 9525
    Height = 450
    TabIndex = 89
  End
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &HFF0000&
    Left = 5040
    Top = 3645
    Width = 480
    Height = 240
    TabIndex = 101
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
  Begin Label LblAt
    Caption = "%"
    Index = 0
    ForeColor = &HFF0000&
    Left = 7380
    Top = 3645
    Width = 150
    Height = 240
    Visible = 0   'False
    TabIndex = 100
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
  Begin Label LblDummy
    Caption = "Label2"
    Index = 1
    ForeColor = &HFF0000&
    Left = 5010
    Top = 3960
    Width = 750
    Height = 210
    Visible = 0   'False
    TabIndex = 99
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 6225
    Top = 690
    Width = 645
    Height = 210
    TabIndex = 96
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
  Begin Label LblName
    Caption = "Vr. Type"
    Index = 5
    ForeColor = &H0&
    Left = 4230
    Top = 690
    Width = 750
    Height = 210
    TabIndex = 85
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
  Begin Label LblName
    Caption = "Bill No."
    Index = 6
    ForeColor = &H0&
    Left = 180
    Top = 690
    Width = 615
    Height = 210
    TabIndex = 84
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
  Begin Label LblName
    Caption = "Bill Date"
    Index = 2
    ForeColor = &H0&
    Left = 2055
    Top = 690
    Width = 750
    Height = 210
    TabIndex = 81
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
End
Begin BtnEnh LblMsg
  Left = 1710
  Top = 1020
  Width = 8115
  Height = 450
  TabIndex = 75
End
Begin BtnEnh cmdFillDtl
  Left = 375
  Top = 7845
  Width = 1830
  Height = 435
  TabIndex = 105
End
Begin Label LblAt
  Caption = "%"
  Index = 1
  ForeColor = &H0&
  Left = 15375
  Top = 6645
  Width = 180
  Height = 240
  Visible = 0   'False
  TabIndex = 79
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Tahoma"
    Size = 9
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblMember
  Left = 1260
  Top = 345
  Width = 8970
  Height = 300
  TabIndex = 76
  Alignment = 2 'Center
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 12
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Image ImgMemPhoto
  Left = 10860
  Top = 135
  Width = 2205
  Height = 2100
  Stretch = -1  'True
  BorderStyle = 1 'Fixed Single
End
Begin Label Lbl
  Caption = "Opening Balance"
  Index = 17
  ForeColor = &HFF0000&
  Left = 15570
  Top = 10695
  Width = 1650
  Height = 240
  Visible = 0   'False
  TabIndex = 73
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
Begin Label LblOpBalType
  Caption = "Dr/Cr"
  ForeColor = &HC0&
  Left = 18030
  Top = 10755
  Width = 555
  Height = 240
  Visible = 0   'False
  TabIndex = 72
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
Begin Label Lbl
  Caption = "Current Balance"
  Index = 16
  ForeColor = &HFF0000&
  Left = 150
  Top = 6300
  Width = 1545
  Height = 240
  TabIndex = 71
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
Begin Label LblCurBalType
  Caption = "Dr/Cr"
  ForeColor = &HFF00FF&
  Left = 3345
  Top = 6300
  Width = 555
  Height = 240
  TabIndex = 70
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
Begin Label Label1
  Caption = "(Y/N)"
  Index = 2
  ForeColor = &HC0&
  Left = 16590
  Top = 9825
  Width = 435
  Height = 240
  Visible = 0   'False
  TabIndex = 66
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
Begin Label Lbl
  Caption = "Black Listed"
  Index = 19
  ForeColor = &HFF0000&
  Left = 14220
  Top = 9810
  Width = 1155
  Height = 240
  Visible = 0   'False
  TabIndex = 65
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
Begin Label Lbl
  Caption = "Category"
  Index = 18
  ForeColor = &HFF0000&
  Left = 150
  Top = 2610
  Width = 855
  Height = 240
  TabIndex = 64
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
Begin Label Lbl
  Caption = "Allow Credit"
  Index = 23
  ForeColor = &HFF0000&
  Left = 150
  Top = 5723
  Width = 1170
  Height = 240
  TabIndex = 63
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
Begin Label Lbl
  Caption = "Discount%"
  Index = 13
  ForeColor = &HFF0000&
  Left = 3255
  Top = 6015
  Width = 960
  Height = 240
  TabIndex = 62
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
Begin Label Lbl
  Caption = "Active"
  Index = 15
  ForeColor = &HFF0000&
  Left = 150
  Top = 6006
  Width = 585
  Height = 240
  TabIndex = 61
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
  Caption = "(Y/N)"
  Index = 0
  ForeColor = &HFF00FF&
  Left = 2445
  Top = 5730
  Width = 435
  Height = 240
  TabIndex = 60
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
  Caption = "(Y/N)"
  Index = 1
  ForeColor = &HFF00FF&
  Left = 2460
  Top = 6000
  Width = 435
  Height = 240
  TabIndex = 59
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
Begin Label Lbl
  Caption = "Gender"
  Index = 27
  ForeColor = &HFF0000&
  Left = 150
  Top = 3176
  Width = 705
  Height = 240
  TabIndex = 58
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
Begin Label Lbl
  Caption = "Marital Status"
  Index = 30
  ForeColor = &HFF0000&
  Left = 3135
  Top = 3180
  Width = 1305
  Height = 240
  TabIndex = 57
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
Begin Label Lbl
  Caption = "Birth Place"
  Index = 29
  ForeColor = &HFF0000&
  Left = 3135
  Top = 3457
  Width = 1050
  Height = 240
  TabIndex = 56
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
Begin Label Lbl
  Caption = "Date of Birth"
  Index = 28
  ForeColor = &HFF0000&
  Left = 150
  Top = 3459
  Width = 1185
  Height = 240
  TabIndex = 55
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
Begin Label Lbl
  Caption = "Nationality"
  Index = 34
  ForeColor = &HFF0000&
  Left = 150
  Top = 3742
  Width = 1020
  Height = 240
  TabIndex = 54
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
Begin Label Lbl
  Caption = "PAN No."
  Index = 10
  ForeColor = &HFF0000&
  Left = 2475
  Top = 5460
  Width = 780
  Height = 240
  TabIndex = 53
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
Begin Label Lbl
  Caption = "Special Interest"
  Index = 26
  ForeColor = &HFF0000&
  Left = 14220
  Top = 9510
  Width = 1485
  Height = 240
  Visible = 0   'False
  TabIndex = 52
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
Begin Label Lbl
  Caption = "Religion"
  Index = 42
  ForeColor = &HFF0000&
  Left = 3135
  Top = 3735
  Width = 795
  Height = 240
  TabIndex = 51
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
Begin Label Lbl
  Caption = "Passport #"
  Index = 9
  ForeColor = &HFF0000&
  Left = 14220
  Top = 9195
  Width = 975
  Height = 240
  Visible = 0   'False
  TabIndex = 50
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
Begin Label Lbl
  Caption = "Designation"
  Index = 8
  ForeColor = &HFF0000&
  Left = 150
  Top = 5157
  Width = 1125
  Height = 240
  TabIndex = 49
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
Begin Label Lbl
  Caption = "Turnover"
  Index = 7
  ForeColor = &HFF0000&
  Left = 150
  Top = 4874
  Width = 855
  Height = 240
  TabIndex = 48
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
Begin Label Lbl
  Caption = "Type of Business"
  Index = 5
  ForeColor = &HFF0000&
  Left = 150
  Top = 4591
  Width = 1590
  Height = 240
  TabIndex = 47
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
Begin Label Lbl
  Caption = "Edu.Qualification"
  Index = 4
  ForeColor = &HFF0000&
  Left = 150
  Top = 4308
  Width = 1635
  Height = 240
  TabIndex = 46
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
Begin Label Lbl
  Caption = "Prof./Occupation"
  Index = 3
  ForeColor = &HFF0000&
  Left = 150
  Top = 4025
  Width = 1590
  Height = 240
  TabIndex = 45
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
Begin Label Lbl
  Caption = "Blood Group"
  Index = 24
  ForeColor = &HFF0000&
  Left = 150
  Top = 5440
  Width = 1200
  Height = 240
  TabIndex = 44
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
Begin Label Lbl
  Caption = "Credit Limit"
  Index = 6
  ForeColor = &HFF0000&
  Left = 3255
  Top = 5745
  Width = 1110
  Height = 240
  TabIndex = 43
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
Begin Label Lbl
  Caption = "Contact Person"
  Index = 1
  ForeColor = &HFF0000&
  Left = 150
  Top = 9750
  Width = 1440
  Height = 240
  Visible = 0   'False
  TabIndex = 42
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
  Caption = "Middle Name"
  Index = 3
  ForeColor = &HFF00FF&
  Left = 5580
  Top = 10005
  Width = 1125
  Height = 240
  Visible = 0   'False
  TabIndex = 41
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "Last Name"
  Index = 4
  ForeColor = &HFF00FF&
  Left = 7350
  Top = 10005
  Width = 945
  Height = 240
  Visible = 0   'False
  TabIndex = 40
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "First Name"
  Index = 5
  ForeColor = &HFF00FF&
  Left = 3090
  Top = 10005
  Width = 960
  Height = 240
  Visible = 0   'False
  TabIndex = 39
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Member ID"
  Index = 74
  ForeColor = &HFF0000&
  Left = 150
  Top = 9465
  Width = 1035
  Height = 240
  Visible = 0   'False
  TabIndex = 38
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
Begin Label Lbl
  Caption = "Father Name"
  Index = 14
  ForeColor = &HFF0000&
  Left = 150
  Top = 2893
  Width = 1230
  Height = 240
  TabIndex = 37
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
  Index = 0
  ForeColor = &H0&
  Left = 3555
  Top = 7245
  Width = 1260
  Height = 240
  TabIndex = 4
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblName
  Caption = "Card No"
  Index = 1
  ForeColor = &H0&
  Left = 660
  Top = 7260
  Width = 690
  Height = 240
  TabIndex = 3
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
End

Attribute VB_Name = "MemAssistant"

Private global_74 As Integer
Private global_72 As Integer

Private Sub CmdReset_UnknownEvent_9 'E7F6B0
  'Data Table: 537E2C
  Dim var_88 As Frame
  Dim var_8C As TextBox
  loc_E7F648: Call Proc_281_48_10C5D08()
  loc_E7F659: Me.FrBill.Enabled = False
  loc_E7F66E: Set var_88 = Me.Txt
  loc_E7F674: Call 0.Method_CmdReset_UnknownEvent_90 (CInt(1), var_8C)
  loc_E7F67C: var_8C.Enabled = True
  loc_E7F695: Set var_88 = Me.Txt
  loc_E7F69B: Call 0.Method_CmdReset_UnknownEvent_90 (CInt(0), var_8C)
  loc_E7F6A3: var_8C.Enabled = True
  loc_E7F6AF: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1091E14
  'Data Table: 537E2C
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim var_8C As TextBox
  Dim var_B4 As Variant
  Dim var_90 As Variant
  Dim var_CC As Variant
  Dim Me As Recordset15
  loc_1091B7E: Set var_88 = Me.Txt
  loc_1091B84: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1091B92: Proc_183_28_E216B0(var_8C)
  loc_1091B9E: Call Proc_281_54_EF93BC(var_8C)
  loc_1091BA6: var_92 = Index
  loc_1091BB1: If (var_92 = CInt(0)) Then
  loc_1091BC7:   Me.DGMemName.Tag = CVar(CStr(Index))
  loc_1091BDF:   Set var_88 = Me.Txt
  loc_1091BE5:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1091C04:   Me.DGMemName.Left = CVar(var_8C.Left)
  loc_1091C1F:   Set var_90 = Me.Txt
  loc_1091C25:   Call 0.Method_Txt_GotFocus0 (Index, var_CC)
  loc_1091C3F:   Set var_88 = Me.Txt
  loc_1091C45:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1091C5D:   var_B4 = CVar(((var_8C.Top + var_CC.Height) + CDbl(&HF))) 'Single
  loc_1091C6C:   Me.DGMemName.Top = CVar(var_8C.Left)
  loc_1091C95:   If (Me.RecordCount > 0) Then
  loc_1091CA3:     Set var_8C = Me.FGPoint
  loc_1091CBB:     Proc_6_137_1192FDC(Me.DGMemName, global_60, Index)
  loc_1091CC9:   End If
  loc_1091D17:   Set var_88 = Me.Txt
  loc_1091D1D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC)
  loc_1091D25:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1091D3D:   If (var_8C Or (var_DC = vbNullString)) Then
  loc_1091D40:     Exit Sub
  loc_1091D41:   End If
  loc_1091D4E:   Set var_88 = Me.Txt
  loc_1091D54:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1091D5C:   var_DC = var_8C.Text
  loc_1091D6E:   var_B4 = "Name"
  loc_1091DA9:   If CBool(CVar(var_DC) <> Me.Fields.Item(var_B4).Value) Then
  loc_1091DB2:     Me.MoveFirst
  loc_1091DD5:     Set var_88 = Me.Txt
  loc_1091DDB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC, "Name ='")
  loc_1091DE3:     0 = var_8C.Text
  loc_1091DFC:     Me.Find 1 & var_DC & "'", var_B4, var_92
  loc_1091E11:   End If
  loc_1091E11: End If
  loc_1091E11: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FB2528
  'Data Table: 537E2C
  Dim Me As Recordset15
  loc_FB239E: If (CLng(Shift) = &H1B) Then
  loc_FB23A1:   Call Proc_281_54_EF93BC()
  loc_FB23A6:   Exit Sub
  loc_FB23A7: End If
  loc_FB23B5: If (KeyCode = CInt(0)) Then
  loc_FB23D0:   Set var_9C = Nothing
  loc_FB23DB:   Set var_98 = Nothing
  loc_FB2409:   Proc_6_69_134A630(Me.DGMemName, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_FB2476:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FB247D:     Set var_98 = Me.DGMemName
  loc_FB249C:     Proc_6_138_106E830(var_98, global_60, KeyCode, Me.FGPoint, 1)
  loc_FB24AA:   End If
  loc_FB24AA: End If
  loc_FB24C6: If (CBool(Me.DGMemName.Visible) = 0) Then
  loc_FB24E7:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(0))) Then
  loc_FB24F0:     Proc_6_75_E5335C(Shift, arg_14, var_98)
  loc_FB24F5:   End If
  loc_FB2513:   If (((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(1))) Then
  loc_FB251C:     Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_FB2521:   End If
  loc_FB2521:   Call Proc_281_54_EF93BC(0)
  loc_FB2526: End If
  loc_FB2526: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F10FB0
  'Data Table: 537E2C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F10ED2: Proc_6_133_E7FB08(var_94)
  loc_F10EDB: arg_10 = CInt(var_94)
  loc_F10EE4: var_96 = KeyAscii
  loc_F10EEF: If (var_96 = CInt(0)) Then
  loc_F10F0E:   If (CBool(Me.DGMemName.Visible) = &HFF) Then
  loc_F10F20:     var_A0 = "Name"
  loc_F10F3B:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10, var_A0)
  loc_F10F4A:   End If
  loc_F10F4A: End If
  loc_F10F4A: Exit Sub
  loc_F10F53: Set var_9C = Err()
  loc_F10F59: Call 0.Method_arg_1C (var_AC, 0, var_96)
  loc_F10F6A: If (var_AC <> 0) Then
  loc_F10F75:   Set var_9C = Err()
  loc_F10F7B:   Call 0.Method_arg_2C (var_A0, arg_10)
  loc_F10F9C:   MsgBox(CVar(var_A0), &H40, "Validation", var_EC, var_10C)
  loc_F10FAF: End If
  loc_F10FAF: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EDA2F0
  'Data Table: 537E2C
  loc_EDA252: If (KeyCode = CInt(0)) Then
  loc_EDA271:   If (CBool(Me.DGMemName.Visible) = &HFF) Then
  loc_EDA285:     var_A4 = "Name"
  loc_EDA2A9:     Proc_6_68_12A2818(Me.DGMemName, Me.Txt, KeyCode, global_60)
  loc_EDA2DF:     Proc_6_138_106E830(Me.DGMemName, global_60, KeyCode, Me.FGPoint)
  loc_EDA2ED:   End If
  loc_EDA2ED: End If
  loc_EDA2ED: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E484C4
  'Data Table: 537E2C
  loc_E484A2: Set var_88 = Me.Txt
  loc_E484A8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E484B6: Proc_6_73_E23294(var_8C)
  loc_E484C2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '129F508
  'Data Table: 537E2C
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_AC As String
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_129EF07: var_86 = Cancel
  loc_129EF12: If (var_86 = CInt(0)) Then
  loc_129EF63:   Set var_94 = Me.Txt
  loc_129EF69:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_129EF71:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_129EF89:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_129EF99:     Set var_94 = Me.Txt
  loc_129EF9F:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_129EFA7:     var_98.Text = vbNullString
  loc_129EFC0:     Set var_94 = Me.Txt
  loc_129EFC6:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_129EFCE:     var_98.Tag = vbNullString
  loc_129EFE8:     Set var_94 = Me.Txt
  loc_129EFEE:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_129EFF6:     var_98.Text = vbNullString
  loc_129F010:     Set var_94 = Me.Txt
  loc_129F016:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_129F01E:     var_98.Tag = vbNullString
  loc_129F02D:   Else
  loc_129F068:     Set var_B0 = Me.Txt
  loc_129F06E:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_129F076:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_129F0C7:     Set var_B0 = Me.Txt
  loc_129F0CD:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_129F0D5:     var_B4.Tag = CStr(Me.Fields.Item("subcode").Value)
  loc_129F127:     Set var_B0 = Me.Txt
  loc_129F12D:     Call 0.Method_Txt_Validate0 (CInt(1), var_B4)
  loc_129F135:     var_B4.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_129F151:     var_AC = "CompanyType"
  loc_129F168:     var_98 = Me.Fields.Item(var_AC)
  loc_129F187:     Set var_B0 = Me.Txt
  loc_129F18D:     Call 0.Method_Txt_Validate0 (CInt(1), var_B4)
  loc_129F195:     var_B4.Tag = CStr(var_98.Value)
  loc_129F1AB:   End If
  loc_129F1AE: Else
  loc_129F1B6:   If (var_86 = CInt(1)) Then
  loc_129F1C3:     Set var_94 = Me.Txt
  loc_129F1C9:     Call 0.Method_Txt_Validate0 (Cancel)
  loc_129F1D8:     var_D4 = Trim(CVar(var_98))
  loc_129F1E0:     var_9C = CStr(var_D4)
  loc_129F1EE:     Set var_B0 = Me.Txt
  loc_129F1F4:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_129F1FC:     var_B4.Text = var_9C
  loc_129F22B:     If (Me.RecordCount > 0) Then
  loc_129F234:       Me.MoveFirst
  loc_129F257:       Set var_94 = Me.Txt
  loc_129F25D:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C, "CardNo='")
  loc_129F265:       0 = var_98.Text
  loc_129F27E:       Me.Find 1 & var_9C & "'", var_AC, var_98
  loc_129F2BC:       If ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) Then
  loc_129F2D8:         MsgBox("InValid Card no", &H40, var_D4, var_10C, var_12C)
  loc_129F2F6:         Set var_94 = Me.Txt
  loc_129F2FC:         Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_129F304:         var_98.Text = vbNullString
  loc_129F31E:         Set var_94 = Me.Txt
  loc_129F324:         Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_129F32C:         var_98.Tag = vbNullString
  loc_129F345:         Set var_94 = Me.Txt
  loc_129F34B:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_129F353:         var_98.Text = vbNullString
  loc_129F36C:         Set var_94 = Me.Txt
  loc_129F372:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_129F37A:         var_98.Tag = vbNullString
  loc_129F389:       Else
  loc_129F3C5:         Set var_B0 = Me.Txt
  loc_129F3CB:         Call 0.Method_Txt_Validate0 (CInt(0), var_B4)
  loc_129F3D3:         var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_129F425:         Set var_B0 = Me.Txt
  loc_129F42B:         Call 0.Method_Txt_Validate0 (CInt(0), var_B4)
  loc_129F433:         var_B4.Tag = CStr(Me.Fields.Item("subcode").Value)
  loc_129F484:         Set var_B0 = Me.Txt
  loc_129F48A:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_129F492:         var_B4.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_129F4E3:         Set var_B0 = Me.Txt
  loc_129F4E9:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_129F4F1:         var_B4.Tag = CStr(Me.Fields.Item("CompanyType").Value)
  loc_129F507:       End If
  loc_129F507:     End If
  loc_129F507:   End If
  loc_129F507: End If
  loc_129F507: Exit Sub
End Sub

Private Sub DGMemName_UnknownEvent_9 'F460D4
  'Data Table: 537E2C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F45FCB: Me.DGMemName.Visible = False
  loc_F45FEA: If (Me.RecordCount > 0) Then
  loc_F46029:   Set var_B4 = Me.Txt
  loc_F4602F:   Call 0.Method_DGMemName_UnknownEvent_90 (CInt(0), var_B8)
  loc_F46037:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4606A:   var_B0 = Me.Fields.Item("Code")
  loc_F46089:   Set var_B4 = Me.Txt
  loc_F4608F:   Call 0.Method_DGMemName_UnknownEvent_90 (CInt(0), var_B8)
  loc_F46097:   var_B8.Tag = CStr(var_B0.Value)
  loc_F460AD: End If
  loc_F460B8: Set var_A8 = Me.Txt
  loc_F460BE: Call 0.Method_DGMemName_UnknownEvent_90 (CInt(0))
  loc_F460C6: var_B0.SetFocus
  loc_F460D2: Exit Sub
End Sub

Private Sub CmdBill_UnknownEvent_9 'DFBF04
  'Data Table: 537E2C
  loc_DFBF00: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '10AF0BC
  'Data Table: 537E2C
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_8C As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_10AEE02: Set var_88 = Me.TxtGrid
  loc_10AEE08: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_10AEE16: Proc_6_74_E23240(var_8C)
  loc_10AEE22: Call Proc_281_54_EF93BC(var_8C)
  loc_10AEE33: If (Index = 0) Then
  loc_10AEE4C:   Me.Fgrid.CellBackColor = CVar(CLng(global_52))
  loc_10AEE67:   var_A4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_10AEEA6:   Set var_108 = Me.TxtGrid
  loc_10AEEAC:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.Fgrid.TextMatrix)))
  loc_10AEEB4:   var_10C.Tag = CVar(CLng(Me.Fgrid.Col))
  loc_10AEEE5:   var_114 = CLng(Me.Fgrid.Col)
  loc_10AEEF5:   If (var_114 = CLng(1)) Then
  loc_10AEF39:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_10AEF3C:       Exit Sub
  loc_10AEF3D:     End If
  loc_10AEF60:     Proc_6_137_1192FDC(Me.DGRev, global_64, Index, Me.FGPoint1)
  loc_10AEF81:     var_A4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_10AEF89:     var_E4 = CVar(CLng(1)) 'Long
  loc_10AEFBC:     If (CStr(Me.Fgrid.TextMatrix)) <> vbNullString) Then
  loc_10AEFC5:       Me.MoveFirst
  loc_10AEFDD:       var_A4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_10AF005:       Proc_6_17_EAAE40(var_12C, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(&HA)), var_A4, CVar(CLng(&HA)))
  loc_10AF02E:       Me.Find CStr("Code=" & var_12C), 0, 1
  loc_10AF05E:       If (Me.EOF = &HFF) Then
  loc_10AF067:         Me.MoveFirst
  loc_10AF06C:       End If
  loc_10AF06C:     End If
  loc_10AF06F:   Else
  loc_10AF076:     If Not (var_114 = CLng(2)) Then
  loc_10AF080:       If Not (var_114 = CLng(3)) Then
  loc_10AF08A:         If Not (var_114 = CLng(5)) Then
  loc_10AF094:           If (var_114 = CLng(4)) Then
  loc_10AF097:           End If
  loc_10AF097:         End If
  loc_10AF097:       End If
  loc_10AF0A0:       If (global_72 = 0) Then
  loc_10AF0AB:         var_110 = "{Home}+{End}"
  loc_10AF0B1:         Proc_303_0_FBACC8(CStr("Code=" & var_12C), 0, var_15C, var_A4)
  loc_10AF0B9:       End If
  loc_10AF0B9:     End If
  loc_10AF0B9:   End If
  loc_10AF0B9: End If
  loc_10AF0B9: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1266358
  'Data Table: 537E2C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C4 As Variant
  Dim var_98 As DataGrid
  Dim Me As Recordset15
  loc_1265DD7: var_86 = Shift
  loc_1265DE6: If (KeyCode = 0) Then
  loc_1265DF3:   If (CLng(Shift) = &H1B) Then
  loc_1265E03:     Set var_8C = Me.TxtGrid
  loc_1265E09:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_1265E11:     var_88 = var_90.Tag
  loc_1265E23:     Set var_98 = Me.TxtGrid
  loc_1265E29:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1265E31:     var_9C.Text = var_94
  loc_1265E48:     Set var_8C = Me.Fgrid
  loc_1265E65:     Set var_8C = Me.TxtGrid
  loc_1265E6B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1265E73:     var_90.Visible = Fgrid.DispID_8001
  loc_1265E7F:     Exit Sub
  loc_1265E80:   End If
  loc_1265EA3:   If (CLng(Me.Fgrid.Col) = CLng(1)) Then
  loc_1265EB3:     Set var_8C = Me.TxtGrid
  loc_1265EB9:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_1265EC1:     var_B0 = var_90.Left
  loc_1265ED8:     Me.DGRev.Left = CVar(var_B4)
  loc_1265EF3:     Set var_98 = Me.TxtGrid
  loc_1265EF9:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1265F13:     Set var_8C = Me.TxtGrid
  loc_1265F19:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1265F2D:     var_C4 = CVar((var_90.Top + var_9C.Height)) 'Single
  loc_1265F3C:     Me.DGRev.Top = CVar(var_90.Top)
  loc_1265F6B:     Set var_9C = Me.FGPoint1
  loc_1265F76:     Set var_98 = Nothing
  loc_1265FA4:     Proc_6_69_134A630(Me.DGRev, Me.TxtGrid, KeyCode, global_64, Shift, &HFF)
  loc_1265FD1:     If (Me.RecordCount > 0) Then
  loc_1265FD8:       Set var_98 = Me.DGRev
  loc_1265FF7:       Proc_6_138_106E830(var_98, global_64, KeyCode, Me.FGPoint1, 1)
  loc_1266005:     End If
  loc_126600F:     If (CLng(Shift) = &HD) Then
  loc_1266018:       Call Proc_281_56_178C134(KeyCode, var_DE, var_98)
  loc_1266023:       If (var_DE = &HFF) Then
  loc_1266069:         Proc_6_62_1254E68(Me.Fgrid, Me.TxtGrid, KeyCode, Shift, global_72, 6)
  loc_1266079:       End If
  loc_1266079:     End If
  loc_126607C:   Else
  loc_1266083:     If (var_B0 = CLng(2)) Then
  loc_12660C6:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_12660CF:         Call Proc_281_56_178C134(KeyCode, var_DE, 0, 2)
  loc_12660DA:         If (var_DE = &HFF) Then
  loc_1266120:           Proc_6_62_1254E68(Me.Fgrid, Me.TxtGrid, KeyCode, Shift, global_72, 6, 0)
  loc_1266130:         End If
  loc_1266130:       End If
  loc_1266133:     Else
  loc_126613A:       If (var_B0 = CLng(3)) Then
  loc_126617D:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_1266186:           Call Proc_281_56_178C134(KeyCode, var_DE, 3, 0)
  loc_1266191:           If (var_DE = &HFF) Then
  loc_12661D7:             Proc_6_62_1254E68(Me.Fgrid, Me.TxtGrid, KeyCode, Shift, global_72, 6, 0)
  loc_12661E7:           End If
  loc_12661E7:         End If
  loc_12661EA:       Else
  loc_12661F1:         If (var_B0 = CLng(4)) Then
  loc_1266234:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_126623D:             Call Proc_281_56_178C134(KeyCode, var_DE, 4, 0)
  loc_1266248:             If (var_DE = &HFF) Then
  loc_126628E:               Proc_6_62_1254E68(Me.Fgrid, Me.TxtGrid, KeyCode, Shift, global_72, 6, 0)
  loc_126629E:             End If
  loc_126629E:           End If
  loc_12662A1:         Else
  loc_12662A8:           If (var_B0 = CLng(5)) Then
  loc_12662EB:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_12662F4:               Call Proc_281_56_178C134(KeyCode, var_DE, 5, 0)
  loc_12662FF:               If (var_DE = &HFF) Then
  loc_1266345:                 Proc_6_62_1254E68(Me.Fgrid, Me.TxtGrid, KeyCode, Shift, global_72, 6, 0)
  loc_1266355:               End If
  loc_1266355:             End If
  loc_1266355:           End If
  loc_1266355:         End If
  loc_1266355:       End If
  loc_1266355:     End If
  loc_1266355:   End If
  loc_1266355: End If
  loc_1266355: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F2E188
  'Data Table: 537E2C
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F2E07F: Proc_6_58_E06050(arg_10)
  loc_F2E090: If (KeyAscii = 0) Then
  loc_F2E0A6:   var_A0 = CLng(Me.Fgrid.Col)
  loc_F2E0B6:   If (var_A0 = CLng(1)) Then
  loc_F2E0D5:     If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_F2E0E7:       var_A4 = "Name"
  loc_F2E102:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_64, arg_10)
  loc_F2E11C:       Set var_AC = Me.FGPoint1
  loc_F2E134:       Proc_6_138_106E830(Me.DGRev, global_64, KeyAscii, var_AC)
  loc_F2E142:     End If
  loc_F2E145:   Else
  loc_F2E14C:     If (var_A0 = CLng(2)) Then
  loc_F2E159:       Set var_8C = Me.TxtGrid
  loc_F2E15F:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F2E17A:       Proc_6_42_129B55C(var_AC, arg_10, 6, 2)
  loc_F2E186:     End If
  loc_F2E186:   End If
  loc_F2E186: End If
  loc_F2E186: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EDA204
  'Data Table: 537E2C
  Dim var_86 As Integer
  Dim var_A0 As Long
  loc_EDA150: On Error Goto loc_EDA1FB
  loc_EDA156: var_86 = KeyCode
  loc_EDA15F: If (var_86 = 0) Then
  loc_EDA175:   var_A0 = CLng(Me.Fgrid.Col)
  loc_EDA185:   If (var_A0 = CLng(1)) Then
  loc_EDA1AB:     If ((Shift <> &HD) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_EDA1BC:       Call TxtGrid_KeyDown(KeyCode, global_74)
  loc_EDA1EB:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_64, Shift, "Name")
  loc_EDA1FA:     End If
  loc_EDA1FA:   End If
  loc_EDA1FA: End If
  loc_EDA1FA: Exit Sub
  loc_EDA1FB: ' Referenced from: EDA150
  loc_EDA1FB: Proc_6_60_E63754(&HFF, 0)
  loc_EDA200: Exit Sub
  loc_EDA201: Put , var_86, var_A0
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21F8C
  'Data Table: 537E2C
  Dim arg_10 As Integer
  loc_E21F74: If (Cancel = 0) Then
  loc_E21F7D:   Call Proc_281_56_178C134(Cancel, var_88)
  loc_E21F86:   arg_10 = Not(var_88)
  loc_E21F89: End If
  loc_E21F89: Exit Sub
End Sub

Private Sub cmdFillDtl_UnknownEvent_9 'EDA5D4
  'Data Table: 537E2C
  Dim var_88 As Frame
  Dim var_8C As TextBox
  loc_EDA52B: Set var_88 = Me.Txt
  loc_EDA531: Call 0.Method_cmdFillDtl_UnknownEvent_90 (CInt(0))
  loc_EDA55A: If (Proc_6_27_EA61EC(var_8C, "Member Name") = 0) Then
  loc_EDA564:   Call Txt_GotFocus(CInt(0))
  loc_EDA569:   Exit Sub
  loc_EDA56A: End If
  loc_EDA576: Me.FrBill.Enabled = True
  loc_EDA57E: Call Proc_281_55_16D0220(var_8C)
  loc_EDA590: Set var_88 = Me.Txt
  loc_EDA596: Call 0.Method_cmdFillDtl_UnknownEvent_90 (CInt(1), var_8C)
  loc_EDA59E: var_8C.Enabled = False
  loc_EDA5B7: Set var_88 = Me.Txt
  loc_EDA5BD: Call 0.Method_cmdFillDtl_UnknownEvent_90 (CInt(0), var_8C)
  loc_EDA5C5: var_8C.Enabled = False
  loc_EDA5D1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5F0C4
  'Data Table: 537E2C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5F08F: Me.Fgrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5F0A2: Set var_A8 = Me.TxtGrid
  loc_E5F0A8: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5F0B0: var_AC.Visible = False
  loc_E5F0BC: Call Proc_281_54_EF93BC()
  loc_E5F0C1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68F48
  'Data Table: 537E2C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68F04: Set var_88 = Me.TxtGrid
  loc_E68F0A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E68F24: If (var_8C.Visible = 0) Then
  loc_E68F3D:   Me.Fgrid.BackColorSel = CVar(CLng(global_52))
  loc_E68F45: End If
  loc_E68F45: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E4970C
  'Data Table: 537E2C
  loc_E496E4: Set var_88 = Me.TopCtrl1
  loc_E496EA: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E49703: If (CStr() <> "Browse") Then
  loc_E49706:   Call Proc_281_52_E45090()
  loc_E4970B: End If
  loc_E4970B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '100F59C
  'Data Table: 537E2C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_DC As Long
  loc_100F390: Set var_88 = Me.TopCtrl1
  loc_100F396: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_100F3DB: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_100F3E4:   Call Form_KeyDown(Cancel, arg_10)
  loc_100F3E9: End If
  loc_100F3ED: Set var_88 = Me.TopCtrl1
  loc_100F3F3: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_100F40C: If (CStr() = "Browse") Then
  loc_100F40F:   Exit Sub
  loc_100F410: End If
  loc_100F484: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.Fgrid.Tag))) = CDbl((CLng(Me.Fgrid.Rows) - (CLng(Me.Fgrid.Rows) - 1))))) Then
  loc_100F48F:   var_9C = "+{Tab}"
  loc_100F495:   Proc_303_0_FBACC8(CStr(Me.Fgrid.Tag), 0)
  loc_100F49F:   Cancel = 0
  loc_100F4A5: Else
  loc_100F4FC:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.Fgrid.Tag))) = CDbl((CLng(Me.Fgrid.Rows) - 1)))) Then
  loc_100F501:     Cancel = 0
  loc_100F504:   End If
  loc_100F504: End If
  loc_100F50A: global_74 = Cancel
  loc_100F530: Me.Fgrid.Tag = CVar(CStr(CLng(Me.Fgrid.Row)))
  loc_100F554: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_100F56A:   var_DC = CLng(Me.Fgrid.Col)
  loc_100F573: End If
  loc_100F57D: If (CLng(Cancel) = &HD) Then
  loc_100F589:   Call FGrid_UnknownEvent_C()
  loc_100F593:   global_72 = 0
  loc_100F596: End If
  loc_100F598: Cancel = 0
  loc_100F59B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E57BA4
  'Data Table: 537E2C
  loc_E57B70: Set var_88 = Me.TopCtrl1
  loc_E57B76: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E57B8F: If (CStr() = "Browse") Then
  loc_E57B92:   Exit Sub
  loc_E57B93: End If
  loc_E57B9C: Call FGrid_UnknownEvent_C()
  loc_E57BA1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '11BFE24
  'Data Table: 537E2C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As TextBox
  Dim var_A8 As Long
  Dim var_CE As Integer
  Dim var_C8 As TextBox
  loc_11BF9D4: Set var_88 = Me.TopCtrl1
  loc_11BF9DA: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11BF9F3: If (CStr() = "Browse") Then
  loc_11BF9F6:   Exit Sub
  loc_11BF9F7: End If
  loc_11BFA0A: var_A0 = CLng(Me.Fgrid.Col)
  loc_11BFA1A: If (var_A0 = CLng(1)) Then
  loc_11BFA2B:   Set var_88 = Me.TxtGrid
  loc_11BFA31:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11BFA39:   var_A4.MaxLength = &H23
  loc_11BFA48: Else
  loc_11BFA4F:   If (var_A0 = CLng(2)) Then
  loc_11BFA60:     Set var_88 = Me.TxtGrid
  loc_11BFA66:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11BFA6E:     var_A4.MaxLength = 9
  loc_11BFA7D:   Else
  loc_11BFA84:     If (var_A0 = CLng(5)) Then
  loc_11BFA95:       Set var_88 = Me.TxtGrid
  loc_11BFA9B:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11BFAA3:       var_A4.MaxLength = &HB
  loc_11BFAB2:     Else
  loc_11BFAB9:       If (var_A0 = CLng(3)) Then
  loc_11BFACA:         Set var_88 = Me.TxtGrid
  loc_11BFAD0:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11BFAD8:         var_A4.MaxLength = &HB
  loc_11BFAE7:       Else
  loc_11BFAEE:         If (var_A0 = CLng(4)) Then
  loc_11BFAFF:           Set var_88 = Me.TxtGrid
  loc_11BFB05:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11BFB0D:           var_A4.MaxLength = 3
  loc_11BFB19:         End If
  loc_11BFB19:       End If
  loc_11BFB19:     End If
  loc_11BFB19:   End If
  loc_11BFB19: End If
  loc_11BFB2C: var_A8 = CLng(Me.Fgrid.Col)
  loc_11BFB3C: If Not (var_A8 = CLng(1)) Then
  loc_11BFB46:   If Not (var_A8 = CLng(3)) Then
  loc_11BFB50:     If (var_A8 = CLng(5)) Then
  loc_11BFB53:     End If
  loc_11BFB53:   End If
  loc_11BFB57:   Set var_C8 = Me.Fgrid
  loc_11BFB7B:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_11BFBA8:   Set var_A4 = var_C8
  loc_11BFBBA:   Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 0, 0)
  loc_11BFBE2:   Set var_88 = Me.TxtGrid
  loc_11BFBE8:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, Asc(var_9C))
  loc_11BFBF0:   0 = var_A4.Text
  loc_11BFC09:   If (Len(var_9C) <= 1) Then
  loc_11BFC18:     Set var_88 = Me.TxtGrid
  loc_11BFC1E:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_11BFC26:     var_CE = var_A4.Text
  loc_11BFC37:     Set var_BC = Me.TxtGrid
  loc_11BFC3D:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8, var_9C)
  loc_11BFC45:     var_C8.Text = var_A8
  loc_11BFC58:   End If
  loc_11BFC64:   Set var_88 = Me.TxtGrid
  loc_11BFC6A:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11BFC84:   Set var_BC = Me.TxtGrid
  loc_11BFC8A:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11BFC92:   var_C8.SelStart = Len(var_A4.Text)
  loc_11BFCA8: Else
  loc_11BFCAF:   If Not (var_A8 = CLng(2)) Then
  loc_11BFCB9:     If (var_A8 = CLng(4)) Then
  loc_11BFCBC:     End If
  loc_11BFCC0:     Set var_C8 = Me.Fgrid
  loc_11BFCE4:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_11BFD11:     Set var_A4 = var_C8
  loc_11BFD23:     Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 0, &HFF)
  loc_11BFD4B:     Set var_88 = Me.TxtGrid
  loc_11BFD51:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, Asc(var_9C))
  loc_11BFD59:     0 = var_A4.Text
  loc_11BFD72:     If (Len(var_9C) <= 1) Then
  loc_11BFD81:       Set var_88 = Me.TxtGrid
  loc_11BFD87:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_11BFD8F:       var_CE = var_A4.Text
  loc_11BFDA0:       Set var_BC = Me.TxtGrid
  loc_11BFDA6:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11BFDAE:       var_C8.Text = var_9C
  loc_11BFDC1:     End If
  loc_11BFDCD:     Set var_88 = Me.TxtGrid
  loc_11BFDD3:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11BFDED:     Set var_BC = Me.TxtGrid
  loc_11BFDF3:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11BFDFB:     var_C8.SelStart = Len(var_A4.Text)
  loc_11BFE0E:   End If
  loc_11BFE0E: End If
  loc_11BFE18: If (CLng(Cancel) <> &HD) Then
  loc_11BFE20:   global_72 = &HFF
  loc_11BFE23: End If
  loc_11BFE23: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FE95D4
  'Data Table: 537E2C
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FE9400: Set var_88 = Me.TopCtrl1
  loc_FE9406: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE941F: If (CStr() = "Browse") Then
  loc_FE9422:   Exit Sub
  loc_FE9423: End If
  loc_FE9440: If (CLng(Me.Fgrid.ColSel) = CLng(0)) Then
  loc_FE9443:   Exit Sub
  loc_FE9444: End If
  loc_FE9455: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FE9477:   If (CLng(Me.Fgrid.Row) >= 1) Then
  loc_FE94B1:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE94D3:       If (CLng(Me.Fgrid.Rows) > 2) Then
  loc_FE94E9:         var_AC = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_FE94F2:         Set var_110 = Me.Fgrid
  loc_FE950D:       Else
  loc_FE9520:         Me.Fgrid.Rows = 1
  loc_FE9546:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.Fgrid, CInt(0)))) 'String
  loc_FE954E:         Set var_110 = Me.Fgrid
  loc_FE957B:         Me.Fgrid.FixedRows = 1
  loc_FE9583:       End If
  loc_FE9583:       Call Proc_281_42_1534ED0(Fgrid.DispID_10000, var_98)
  loc_FE9588:     End If
  loc_FE958B:   Else
  loc_FE95AC:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE95BC:   End If
  loc_FE95C0:   Set var_88 = Me.Fgrid
  loc_FE95D1: End If
  loc_FE95D1: Exit Sub
  loc_FE95D2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E4592C
  'Data Table: 537E2C
  Dim var_8C As TextBox
  loc_E45900: Call Proc_281_54_EF93BC()
  loc_E45910: Set var_88 = Me.TxtGrid
  loc_E45916: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4591E: var_8C.Visible = False
  loc_E4592A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E5AA60
  'Data Table: 537E2C
  loc_E5AA20: On Error Goto loc_E5AA57
  loc_E5AA46: Call Proc_281_49_F1315C(Proc_5_1_100EC1C("ADD", Me))
  loc_E5AA51: Call Proc_281_45_1427B20(global_56)
  loc_E5AA56: Exit Sub
  loc_E5AA57: ' Referenced from: E5AA20
  loc_E5AA57: Proc_6_60_E63754()
  loc_E5AA5C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBC718
  'Data Table: 537E2C
  loc_EBC684: On Error Goto loc_EBC70F
  loc_EBC6BE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EBC6CD:   Set var_10C = Me
  loc_EBC6E4:   Call Proc_281_49_F1315C(Proc_5_1_100EC1C("INI", var_10C))
  loc_EBC6EF:   Call Proc_281_44_1695D3C(global_56)
  loc_EBC6F7: Else
  loc_EBC6FD:   Call 0.Method_arg_1E8 (var_10C)
  loc_EBC705:   Call var_10C.SetFocus
  loc_EBC70E: End If
  loc_EBC70E: Exit Sub
  loc_EBC70F: ' Referenced from: EBC684
  loc_EBC70F: Proc_6_60_E63754()
  loc_EBC714: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '115CC84
  'Data Table: 537E2C
  Dim var_96 As Integer
  Dim unk_537E46 As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_115C8D8: On Error Goto loc_115CC2A
  loc_115C8E9: If (Proc_183_56_FE8B08(global_56) = &HFF) Then
  loc_115C8EC:   Exit Sub
  loc_115C8ED: End If
  loc_115C924: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_115C929:   var_96 = 0
  loc_115C935:   unk_537E46.BeginTrans var_11C
  loc_115C93C:   var_96 = &HFF
  loc_115C950:   var_94 = Me.Bookmark 'Variant
  loc_115C9AA:   unk_537E46.Execute CStr("Delete From Ledger Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_115CA1C:   unk_537E46.Execute CStr("Delete From MemBill Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_115CA8E:   unk_537E46.Execute CStr("Delete From MemBill1 Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_115CB00:   unk_537E46.Execute CStr("Delete From MemBill2 Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_115CB64:   var_F8 = "Delete From MemSunTran Where DocId='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_115CB68:   var_128 = CStr(var_F8)
  loc_115CB72:   unk_537E46.Execute var_128, var_118, -1
  loc_115CB94:   unk_537E46.CommitTrans
  loc_115CB9B:   var_96 = 0
  loc_115CBA9:   Me.Requery -1
  loc_115CBC9:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_115CBD6:     Me.Bookmark = var_94
  loc_115CBDE:   Else
  loc_115CBF2:     If (Me.EOF = 0) Then
  loc_115CBFB:       Me.MoveLast
  loc_115CC00:     End If
  loc_115CC00:   End If
  loc_115CC00:   Call Proc_281_44_1695D3C(var_96, var_12C, var_12C, var_12C)
  loc_115CC21:   Proc_5_0_1107AD0(&HFF, Me, global_56, 0)
  loc_115CC29: End If
  loc_115CC29: Exit Sub
  loc_115CC2A: ' Referenced from: 115C8D8
  loc_115CC30: If (var_96 = &HFF) Then
  loc_115CC39:   unk_537E46.RollbackTrans
  loc_115CC3E: End If
  loc_115CC46: Set var_120 = Err()
  loc_115CC4C: Call 0.Method_arg_2C (var_128, var_12C, var_12C)
  loc_115CC6D: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_115CC80: Exit Sub
  loc_115CC81: BranchFVar -2817
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F2572C
  'Data Table: 537E2C
  Dim var_94 As TextBox
  loc_F25630: On Error Goto loc_F256E9
  loc_F25641: If (Proc_183_55_FE8490(global_56) = &HFF) Then
  loc_F25644:   Exit Sub
  loc_F25645: End If
  loc_F2565A: var_88 = "EDIT"
  loc_F25668: Call Proc_281_49_F1315C(Proc_5_1_100EC1C(var_88, Me))
  loc_F25680: Set var_8C = Me.Txt
  loc_F25686: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H20), var_94)
  loc_F2568E: var_94.Enabled = False
  loc_F256A7: Set var_8C = Me.Txt
  loc_F256AD: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H22), var_94)
  loc_F256B5: var_94.Enabled = False
  loc_F256CE: Set var_8C = Me.Txt
  loc_F256D4: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H21), var_94)
  loc_F256DC: var_94.Enabled = False
  loc_F256E8: Exit Sub
  loc_F256E9: ' Referenced from: F25630
  loc_F256F1: Set var_8C = Err()
  loc_F256F7: Call 0.Method_arg_2C (var_88)
  loc_F25718: MsgBox(CVar(var_88), &H30, " Editing Error ", var_E4, var_104)
  loc_F2572B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1956C
  'Data Table: 537E2C
  loc_E19561: Me.Global.Unload Me
  loc_E19569: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F60AC0
  'Data Table: 537E2C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_110 As TextBox
  Dim var_118 As String
  Dim MemVar_1F950E4 As String
  loc_F609BC: On Error Goto loc_F60AB9
  loc_F609D6: If (Me.RecordCount <= 0) Then
  loc_F609DF:   var_B8 = "Information"
  loc_F609FA:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_F60A0A:   Exit Sub
  loc_F60A0B: End If
  loc_F60A1C: Set var_10C = Me.Txt
  loc_F60A22: Call 0.Method_TopCtrl1_UnknownEvent_F0 (CInt(0), var_110)
  loc_F60A33: var_118 = "Select DocId As SearchCode, Vno As BillNo, convert(Varchar(11),VDate,106) As BillDate,NetAmount From MemBill Where Memcode='" & var_110.Tag
  loc_F60A67: MemVar_1F950E4 = var_118 & "' And VPrefix=" & MemVar_1F9512C & " And VType='" & global_80 & "' And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By DocId"
  loc_F60A8B: MemVar_1F95120 = Me
  loc_F60A98: Proc_6_126_F1C850("700,1500,1500")
  loc_F60AB3: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F60AB8: Exit Sub
  loc_F60AB9: ' Referenced from: F609BC
  loc_F60AB9: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F60ABE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2F8E8
  'Data Table: 537E2C
  Dim var_4B01 As Double
  loc_E2F8D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F8E0: Call Proc_281_44_1695D3C(global_56)
  loc_E2F8E5: Exit Sub
  loc_E2F8E6: var_4B01 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2FB88
  'Data Table: 537E2C
  loc_E2FB78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2FB80: Call Proc_281_44_1695D3C(global_56)
  loc_E2FB85: Exit Sub
  loc_E2FB86: Set var_4C00 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2F288
  'Data Table: 537E2C
  Dim var_4B01 As Double
  loc_E2F278: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F280: Call Proc_281_44_1695D3C(global_56)
  loc_E2F285: Exit Sub
  loc_E2F286: var_4B01 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2F1C8
  'Data Table: 537E2C
  Dim var_4B01 As Double
  loc_E2F1B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F1C0: Call Proc_281_44_1695D3C(global_56)
  loc_E2F1C5: Exit Sub
  loc_E2F1C6: var_4B01 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E7F104
  'Data Table: 537E2C
  Dim Me As Recordset15
  loc_E7F0A8: On Error Goto loc_E7F0FD
  loc_E7F0AE: var_B4 = "N"
  loc_E7F0E6: Proc_272_4_1851B60(CStr(Me.Fields.Item("SearchCode").Value))
  loc_E7F0FC: Exit Sub
  loc_E7F0FD: ' Referenced from: E7F0A8
  loc_E7F0FD: Proc_6_60_E63754(var_B4)
  loc_E7F102: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0BC8C
  'Data Table: 537E2C
  Dim Me As Recordset15
  loc_E0BC83: Me.Requery -1
  loc_E0BC88: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '169F23C
  'Data Table: 537E2C
  Dim unk_537E46 As Connection15
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_DC As Variant
  Dim var_128 As TextBox
  Dim var_170 As Label
  Dim var_1BC As Variant
  Dim var_208 As Variant
  Dim var_254 As Variant
  Dim var_2A0 As Variant
  Dim var_2F0 As Variant
  Dim var_614 As Double
  Dim var_38C As Variant
  Dim var_36C As Variant
  Dim var_35C As Variant
  Dim var_42C As Variant
  Dim var_554 As TextBox
  Dim var_61C As Double
  Dim var_5A0 As TextBox
  Dim var_624 As Double
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_CC As Variant
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_1E0 As Variant
  Dim var_24C As Variant
  Dim var_288 As Variant
  Dim var_298 As Variant
  Dim var_2C4 As Variant
  Dim var_304 As Variant
  Dim var_314 As Variant
  Dim var_3BC As Variant
  Dim var_3CC As Variant
  Dim var_40C As Variant
  Dim var_44C As Variant
  Dim var_45C As Variant
  Dim var_47C As Variant
  Dim var_48C As Variant
  Dim var_49C As Variant
  Dim var_4CC As Variant
  Dim var_4DC As Variant
  Dim var_524 As Variant
  Dim var_534 As Variant
  Dim var_544 As Variant
  Dim var_568 As Variant
  Dim var_588 As Variant
  Dim var_5C4 As Variant
  Dim var_A0 As Variant
  Dim var_F0 As Variant
  Dim var_A8 As Variant
  Dim var_124 As Variant
  Dim var_1B8 As MSHFlexGrid
  Dim var_204 As MSHFlexGrid
  Dim var_5F8 As Variant
  Dim var_648 As Variant
  Dim var_250 As MSHFlexGrid
  Dim var_678 As Variant
  Dim var_698 As Variant
  Dim var_6D8 As Variant
  Dim var_6F8 As Variant
  Dim var_29C As MSHFlexGrid
  Dim var_558 As String
  Dim var_738 As Variant
  Dim var_758 As Variant
  Dim var_2E8 As MSHFlexGrid
  Dim var_43C As Variant
  Dim var_5A4 As String
  Dim var_2EC As MSHFlexGrid
  Dim var_938 As Variant
  Dim var_4F0 As MSHFlexGrid
  Dim var_4F4 As MSHFlexGrid
  Dim var_1C0 As String
  Dim var_348 As Variant
  Dim var_39C As Variant
  Dim var_3AC As Variant
  Dim var_514 As Variant
  Dim var_908 As Variant
  Dim var_B38 As Variant
  Dim var_E0 As Variant
  Dim var_258 As String
  Dim var_B78 As Double
  Dim var_AC As String
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_169DAE0: On Error Goto loc_169F1E9
  loc_169DAE7: var_86 = CByte(0) 'Byte
  loc_169DAF6: Set var_A0 = Me.Txt
  loc_169DAFC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_9C))
  loc_169DB04: var_AC = "Member Name"
  loc_169DB0D: Set var_A8 = var_A4
  loc_169DB25: If (Proc_6_27_EA61EC(var_A8, var_AC) = 0) Then
  loc_169DB28:   Exit Sub
  loc_169DB29: End If
  loc_169DB2C: Call Proc_281_58_137AE20(var_AE)
  loc_169DB37: If (var_AE = 0) Then
  loc_169DB3A:   Exit Sub
  loc_169DB3B: End If
  loc_169DB44: unk_537E46.BeginTrans var_B4
  loc_169DB4D: var_86 = CByte(1) 'Byte
  loc_169DB6F: Set var_A0 = Me.Txt
  loc_169DB75: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4, var_AC, "Delete From Ledger Where DocId='")
  loc_169DB7D: var_DC = var_A4.Text
  loc_169DB86: var_B8 = -1 & var_AC
  loc_169DB96: unk_537E46.Execute var_B8 & "'", var_A8, var_A4
  loc_169DBCE: Set var_A0 = Me.Txt
  loc_169DBD4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4, var_AC, "Delete From MemBill Where DocId='")
  loc_169DBDC: var_DC = var_A4.Text
  loc_169DBE5: var_B8 = -1 & var_AC
  loc_169DBF5: unk_537E46.Execute var_B8 & "'", var_A8, 
  loc_169DC2D: Set var_A0 = Me.Txt
  loc_169DC33: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4, var_AC, "Delete From MemBill1 Where DocId='")
  loc_169DC3B: var_DC = var_A4.Text
  loc_169DC44: var_B8 = -1 & var_AC
  loc_169DC54: unk_537E46.Execute var_B8 & "'", var_A8, 
  loc_169DC8C: Set var_A0 = Me.Txt
  loc_169DC92: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4, var_AC, "Delete From MemBill2 Where DocId='")
  loc_169DC9A: var_DC = var_A4.Text
  loc_169DCA3: var_B8 = -1 & var_AC
  loc_169DCB3: unk_537E46.Execute var_B8 & "'", var_A8, 
  loc_169DCEB: Set var_A0 = Me.Txt
  loc_169DCF1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4, var_AC, "Delete From MemSunTran Where DocId='")
  loc_169DCF9: var_DC = var_A4.Text
  loc_169DD02: var_B8 = -1 & var_AC
  loc_169DD12: unk_537E46.Execute var_B8 & "'", var_A8, 
  loc_169DD3A: Set var_A0 = Me.Txt
  loc_169DD40: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4)
  loc_169DD48: var_AC = var_A4.Text
  loc_169DD58: Set var_A8 = Me.Txt
  loc_169DD5E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22))
  loc_169DD6D: Proc_6_7_F26918(var_F0, CVar(var_E0))
  loc_169DD80: Set var_124 = Me.Txt
  loc_169DD86: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_128)
  loc_169DD9A: Set var_170 = Me.LblVPrefix
  loc_169DDB3: Set var_1B8 = Me.Txt
  loc_169DDB9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_1BC)
  loc_169DDD4: Set var_204 = Me.Txt
  loc_169DDDA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_208)
  loc_169DDF5: Set var_250 = Me.Txt
  loc_169DDFB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_254)
  loc_169DE03: var_258 = var_254.Tag
  loc_169DE16: Set var_29C = Me.Txt
  loc_169DE1C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_2A0)
  loc_169DE30: Set var_2E8 = Me.TxtGt
  loc_169DE36: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_AE)
  loc_169DE48: Set var_2EC = Me.TxtGt
  loc_169DE4E: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_AE, var_2F0)
  loc_169DE63: var_614 = Val(var_2F0.Text)
  loc_169DE6A: Set var_338 = Me.TopCtrl1
  loc_169DE70: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_614)
  loc_169DEAC: var_42C = CVar(Proc_6_15_EF37AC(var_E0)) 'String
  loc_169DEB2: Proc_6_7_F26918(var_43C)
  loc_169DEC2: Set var_4F0 = Me.Txt
  loc_169DEC8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_4F4)
  loc_169DED7: Proc_6_7_F26918(var_514, CVar(var_4F4))
  loc_169DEE3: Set var_548 = Me.TxtGt
  loc_169DEE9: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_54A)
  loc_169DEFE: Set var_550 = Me.TxtGt
  loc_169DF04: Call 0.Method_TopCtrl1_UnknownEvent_160 ((var_54A - 1), var_554)
  loc_169DF19: var_61C = Val(var_554.Text)
  loc_169DF28: Set var_59C = Me.TxtGt
  loc_169DF2E: Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_5A0, var_5A4)
  loc_169DF5A: var_B8 = "Insert Into MemBill (DocId,vDate,Vno,Vprefix,VType,MemCode,MemCatCode,CardNo,NetAmount,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code,BillDate,RoundOff,Amount) " & " Values ('"
  loc_169DFA7: var_1E0 = CVar(var_B8 & var_AC & "',") & var_F0 & "," & CVar(var_128.Text) & ",'" & CVar(var_170.Caption) & "','" & CVar(var_1BC.Text) 
  loc_169E004: var_3BC = var_1E0 & "','" & CVar(var_208.Tag) & "','" & CVar(var_258) & "','" & CVar(var_2A0.Text) & "'," & CVar(var_614) & ",'" & IIf((CStr(var_348) = "Add"), "A", "E") 
  loc_169E05D: var_524 = var_3BC & "','" & CVar(MemVar_1F950C8) & "'," & var_43C & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "'," & var_514 
  loc_169E085: var_5C4 = var_524 & "," & CVar(var_5A0.Text) & "," & CVar(Val(var_5A4)) 
  loc_169E09C: unk_537E46.Execute CStr(var_5C4 & ")"), var_608, -1
  loc_169E177: For var_628 = 1 To CInt((CLng(Me.Fgrid.Rows) - 1)): var_88 = var_628 'Integer
  loc_169E1A9:   var_100 = Trim(CVar(CStr(Me.Fgrid.TextMatrix))))
  loc_169E1C5:   If CBool(var_100 <> vbNullString) Then
  loc_169E1D6:     Set var_A0 = Me.Txt
  loc_169E1DC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4, var_AC, CVar(CLng(&HA)), CVar(CLng(var_88)))
  loc_169E1E4:     1 = var_A4.Text
  loc_169E1ED:     var_CC = CVar(CLng(var_88)) 'Long
  loc_169E1FE:     Set var_A8 = Me.Fgrid
  loc_169E217:     var_614 = Val(CStr(var_A8.TextMatrix)))
  loc_169E228:     Set var_E0 = Me.Txt
  loc_169E22E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_124, var_258, var_614, CVar(CLng(0)))
  loc_169E236:     var_CC = var_124.Text
  loc_169E246:     Set var_128 = Me.Txt
  loc_169E24C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_170, var_60C)
  loc_169E25B:     Proc_6_7_F26918(var_100, CVar(var_170))
  loc_169E264:     var_288 = CVar(CLng(var_88)) 'Long
  loc_169E26C:     var_304 = CVar(CLng(8)) 'Long
  loc_169E275:     Set var_1B8 = Me.Fgrid
  loc_169E28B:     var_36C = CVar(CLng(var_88)) 'Long
  loc_169E293:     var_3CC = CVar(CLng(9)) 'Long
  loc_169E2B2:     var_45C = CVar(CLng(var_88)) 'Long
  loc_169E2BA:     var_49C = CVar(CLng(&HA)) 'Long
  loc_169E2D9:     var_534 = CVar(CLng(var_88)) 'Long
  loc_169E2E1:     var_588 = CVar(CLng(&HB)) 'Long
  loc_169E300:     var_5F8 = CVar(CLng(var_88)) 'Long
  loc_169E308:     var_648 = CVar(CLng(&HC)) 'Long
  loc_169E327:     var_678 = CVar(CLng(var_88)) 'Long
  loc_169E32F:     var_698 = CVar(CLng(2)) 'Long
  loc_169E358:     var_6D8 = CVar(CLng(var_88)) 'Long
  loc_169E360:     var_6F8 = CVar(CLng(&HD)) 'Long
  loc_169E37A:     var_558 = CStr(Me.Fgrid.TextMatrix))
  loc_169E389:     var_738 = CVar(CLng(var_88)) 'Long
  loc_169E391:     var_758 = CVar(CLng(9)) 'Long
  loc_169E3C7:     var_42C = Me.Fgrid.TextMatrix)
  loc_169E418:     var_4CC = Me.Fgrid.TextMatrix)
  loc_169E43F:     var_524 = Me.Fgrid.TextMatrix)
  loc_169E44F:     Set var_338 = Me.TopCtrl1
  loc_169E455:     Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_524)
  loc_169E491:     var_938 = CVar(Proc_6_15_EF37AC(CVar(CLng(&HF)), CVar(CLng(var_88)), var_4CC, CVar(CLng(&HE)), CVar(CLng(var_88)), var_42C)) 'String
  loc_169E497:     Proc_6_7_F26918(var_948, var_938, CVar(CLng(&H10)), CVar(CLng(var_88)))
  loc_169E4C8:     Proc_6_7_F26918(var_A68, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(var_88)))
  loc_169E4F9:     Proc_6_7_F26918(var_B08, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_88)))
  loc_169E512:     var_B8 = "Insert Into MemBill1 (DocId,Sno,Vno,vDate,VType,Type,FacilityCode,TaxStru,AcCode,BaseAmt,TaxAmt,OutletCode,AcPosting,AcPostingYN,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code,FrPeriod,ToPeriod) " & " Values ('"
  loc_169E541:     var_110 = CVar(var_B8 & var_AC & "'," & CStr(var_614) & "," & var_258 & ",") 'String
  loc_169E583:     var_24C = var_110 & var_100 & ",'" & CVar(CStr(var_1B8.TextMatrix))) & "','" & CVar(CStr(Me.Fgrid.TextMatrix))) & "','" & CVar(CStr(Me.Fgrid.TextMatrix))) 
  loc_169E5BF:     var_39C = var_24C & "','" & CVar(CStr(Me.Fgrid.TextMatrix))) & "','" & CVar(CStr(Me.Fgrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.Fgrid.TextMatrix)))) 
  loc_169E5C8:     var_3AC = var_39C & "," 
  loc_169E5E3:     var_48C = var_3AC & CVar(Val(var_558)) & ",'" & IIf((CStr(Me.Fgrid.TextMatrix)) = "Outlet"), CVar(CStr(var_42C)), vbNullString) 
  loc_169E608:     var_544 = CVar(CStr(var_524)) 'String
  loc_169E62E:     var_908 = var_48C & "','" & CVar(CStr(var_4CC)) & "','" & var_544 & "','" & IIf((CStr(var_5C4) = "Add"), "A", "E") & "','" & CVar(MemVar_1F950C8) 
  loc_169E68D:     var_B38 = var_908 & "'," & var_948 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "'," & var_A68 & "," & var_B08 & ")" 
  loc_169E69B:     unk_537E46.Execute CStr(var_B38), var_B5C, -1
  loc_169E789:   End If
  loc_169E78C: Next var_628 'Integer
  loc_169E7B6: For var_B60 = 1 To CInt((CLng(Me.FGCat.Rows) - 1)): var_88 = var_B60 'Integer
  loc_169E7C0:   var_CC = CVar(CLng(var_88)) 'Long
  loc_169E7C8:   var_1A4 = CVar(CLng(2)) 'Long
  loc_169E804:   If CBool(Trim(CVar(CStr(Me.FGCat.TextMatrix)))) <> vbNullString) Then
  loc_169E815:     Set var_A0 = Me.Txt
  loc_169E81B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4, var_AC)
  loc_169E823:     var_1A4 = var_A4.Text
  loc_169E856:     var_614 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_169E86E:     Set var_E0 = Me.FGCat
  loc_169E874:     var_F0 = var_E0.TextMatrix)
  loc_169E887:     var_61C = Val(CStr(var_F0))
  loc_169E898:     Set var_124 = Me.Txt
  loc_169E89E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_128, var_558, var_61C, CVar(CLng(1)), CVar(CLng(var_88)))
  loc_169E8B6:     Set var_170 = Me.Txt
  loc_169E8BC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_1B8, CVar(CLng(0)))
  loc_169E8CB:     Proc_6_7_F26918(var_110, CVar(var_1B8), CVar(CLng(var_88)))
  loc_169E8D4:     var_35C = CVar(CLng(var_88)) 'Long
  loc_169E8DC:     var_38C = CVar(CLng(4)) 'Long
  loc_169E8E5:     Set var_1BC = Me.FGCat
  loc_169E8FB:     var_40C = CVar(CLng(var_88)) 'Long
  loc_169E903:     var_47C = CVar(CLng(5)) 'Long
  loc_169E922:     var_4DC = CVar(CLng(var_88)) 'Long
  loc_169E92A:     var_568 = CVar(CLng(6)) 'Long
  loc_169E933:     Set var_208 = Me.FGCat
  loc_169E960:     var_298 = Me.FGCat.TextMatrix)
  loc_169E973:     var_624 = Val(CStr(var_298))
  loc_169E98B:     Set var_254 = Me.FGCat
  loc_169E9A4:     var_B78 = Val(CStr(var_254.TextMatrix)))
  loc_169E9D5:     var_B80 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_169E9DC:     Set var_2A0 = Me.TopCtrl1
  loc_169E9E2:     Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_B80)
  loc_169EA24:     Proc_6_7_F26918(var_48C, CVar(Proc_6_15_EF37AC(CVar(CLng(&HA)), CVar(CLng(var_88)), var_B78, CVar(CLng(9)), CVar(CLng(var_88)), var_624)), CVar(CLng(8)), CVar(CLng(var_88)))
  loc_169EA3D:     var_B8 = "Insert Into MemBill2 (DocId,Sno,Sno1,Vno,vDate,VType,FacilityCode,TaxCode,BaseAmt,TaxPer,TaxAmt,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_169EA99:     var_194 = CVar(var_B8 & var_AC & "'," & CStr(var_128.Text) & "," & CStr(var_61C) & "," & var_558 & ",") & var_110 & ",'" & CVar(CStr(var_1BC.TextMatrix))) 
  loc_169EADE:     var_2C4 = var_194 & "','" & CVar(CStr(Me.FGCat.TextMatrix))) & "','" & CVar(CStr(var_208.TextMatrix))) & "'," & CVar(var_624) & "," 
  loc_169EB20:     var_43C = var_2C4 & CVar(var_B78) & "," & CVar(var_B80) & ",'" & IIf((CStr(var_3AC) = "Add"), "A", "E") & "','" & CVar(MemVar_1F950C8) 
  loc_169EB29:     var_44C = var_43C & "'," 
  loc_169EB6D:     unk_537E46.Execute CStr(var_44C & var_48C & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_544, -1
  loc_169EC1B:   End If
  loc_169EC1E: Next var_B60 'Integer
  loc_169EC2F: Set var_A0 = Me.LblCap
  loc_169EC35: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_AE, var_88)
  loc_169EC40: For var_B84 =  To var_AE: 1 = var_B84 'Integer
  loc_169EC54:   Set var_A0 = Me.Txt
  loc_169EC5A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4)
  loc_169EC72:   Set var_A8 = Me.Txt
  loc_169EC78:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22))
  loc_169EC87:   Proc_6_7_F26918(var_F0, CVar(var_E0))
  loc_169EC9A:   Set var_124 = Me.Txt
  loc_169ECA0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_128)
  loc_169ECB4:   Set var_170 = Me.LblVPrefix
  loc_169ECCD:   Set var_1B8 = Me.Txt
  loc_169ECD3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_1BC)
  loc_169ECED:   Set var_204 = Me.LblCap
  loc_169ECF3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_88, var_208)
  loc_169ED0D:   Set var_250 = Me.TxtGt
  loc_169ED13:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_88, var_254)
  loc_169ED28:   var_614 = Val(var_254.Text)
  loc_169ED2F:   Set var_29C = Me.TopCtrl1
  loc_169ED35:   Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_614)
  loc_169ED71:   var_39C = CVar(Proc_6_15_EF37AC(var_E0)) 'String
  loc_169ED77:   Proc_6_7_F26918(var_3AC)
  loc_169ED90:   var_B8 = "Insert Into MemSunTran (DocId,Sno,vDate,Vno,Vprefix,VType,SunCode,SunAmt,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_169EDAA:   var_1C0 = var_B8 & var_A4.Text & "'," & CStr(var_88)
  loc_169EDD3:   var_16C = CVar(var_1C0 & ",") & var_F0 & "," & CVar(var_128.Text) & ",'" 
  loc_169EE27:   var_314 = var_16C & CVar(var_170.Caption) & "','" & CVar(var_1BC.Text) & "','" & CVar(var_208.Tag) & "'," & CVar(var_614) & ",'" & IIf((CStr(var_298) = "Add"), "A", "E") 
  loc_169EE79:   var_43C = var_314 & "','" & CVar(MemVar_1F950C8) & "'," & var_3AC & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')" 
  loc_169EE87:   unk_537E46.Execute CStr(var_43C), var_44C, -1
  loc_169EF10: Next var_B84 'Integer
  loc_169EF19: Set var_A0 = Me.TopCtrl1
  loc_169EF1F: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_169EF38: If (CStr() = "Add") Then
  loc_169EF4F:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_169EF75:   var_100 = CVar(var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_80 & "' And VP.Date_From<=") 'String
  loc_169EF86:   Set var_A0 = Me.Txt
  loc_169EF8C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_1C0, var_100)
  loc_169EF94:   var_13C = var_A4.Text
  loc_169EFA2:   Proc_6_7_F26918(var_F0, CVar(var_1C0))
  loc_169EFAA:   var_110 = -1 & var_F0 
  loc_169EFC1:   unk_537E46.Execute CStr(CVar(var_1C0 & ",") & var_F0 & " Order By VP.Date_From DESC"), var_A8, 
  loc_169EFCC:   Set var_8C = var_A8
  loc_169F00A:   If (var_8C.RecordCount > 0) Then
  loc_169F01B:     Set var_A0 = Me.Txt
  loc_169F021:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_A4)
  loc_169F036:     var_614 = Val(var_A4.Text)
  loc_169F063:     var_1A4 = "Date_From"
  loc_169F086:     Proc_6_7_F26918(var_13C, CVar(var_8C.Fields.Item(var_1A4)))
  loc_169F0B9:     var_1C0 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_614) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_169F0CD:     var_100 = CVar(var_1C0 & MemVar_1F95078 & "') and V_Type='") & var_8C.Fields.Item("V_Type").Value 
  loc_169F0D6:     var_110 = var_100 & "' and Date_From=" 
  loc_169F0EB:     unk_537E46.Execute CStr(var_110 & var_13C), var_16C, -1
  loc_169F125:   End If
  loc_169F125: End If
  loc_169F12B: unk_537E46.CommitTrans
  loc_169F134: var_86 = CByte(0) 'Byte
  loc_169F138: Call Proc_281_53_1653D90(var_170)
  loc_169F148: Set var_A0 = Me.Txt
  loc_169F14E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4)
  loc_169F16C: Me.Requery -1
  loc_169F190: var_F0 = "SearchCode ='" & CVar(var_A4) & "'" 
  loc_169F19E: Me.Find CStr(var_F0), 0, 1
  loc_169F1C2: var_AC = "INI"
  loc_169F1D0: Call Proc_281_49_F1315C(Proc_5_1_100EC1C(var_AC, Me, global_56), var_1A4)
  loc_169F1DB: Call Proc_281_44_1695D3C(var_614)
  loc_169F1E5: Set var_8C = Nothing
  loc_169F1E8: Exit Sub
  loc_169F1E9: ' Referenced from: 169DAE0
  loc_169F1F2: If (CInt(var_86) = 1) Then
  loc_169F1FB:   unk_537E46.RollbackTrans
  loc_169F200: End If
  loc_169F208: Set var_A0 = Err()
  loc_169F20E: Call 0.Method_arg_2C (var_AC)
  loc_169F227: MsgBox(CVar(var_AC), &H10, var_F0, var_100, var_110)
  loc_169F23A: Exit Sub
End Sub

Private Sub Form_Load() '1011478
  'Data Table: 537E2C
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim unk_537E46 As Connection15
  Dim var_C4 As TextBox
  Dim var_CC As DataGrid
  Dim var_D0 As TextBox
  loc_1011268: On Error Goto loc_1011470
  loc_1011271: global_80 = "MFBIL"
  loc_101127C: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1011294: Me.Fgrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_10112AA: Me.FrBill.BackColor = CLng(MemVar_1F951B4)
  loc_10112BC: Set global_60 = New 
  loc_10112CE: Me.Recordset15.CursorLocation = 3
  loc_10112F1: var_AC = "SELECT SubCode,subgroup.Name,CardNo,CompanyType FROM SUBGROUP INNER JOIN MEMCATMAST ON SUBGROUP.COMPANYTYPE=MEMCATMAST.CODE WHERE ActiveYN=1 And IsNull(FBilling,'')<>'N' And (COMPANYTYPE IS NOT NULL AND COMPANYTYPE<>'') and (SUBGROUP.LOGSITE_CODE='" & MemVar_1F95078
  loc_10112F8: var_BC = CVar(var_AC & "' or SUBGROUP.LOGSITE_CODE='HO') Order by subgroup.Name") 'String
  loc_1011302: Me.Open var_BC, CVar(MemVar_1F95044), 3
  loc_1011316: CVarUnk
  loc_101131B: VerifyVarObj
  loc_1011327: LateIdStAd
  loc_1011349: var_AC = "SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1011359: unk_537E46.Execute var_AC & "' or LOGSITE_CODE='HO') ORDER BY MembershipRevMast.Description", var_BC, -1
  loc_1011388: CVarUnk
  loc_101138D: VerifyVarObj
  loc_1011393: Set var_A8 = Me.DGRev
  loc_1011399: LateIdStAd
  loc_10113BB: Call 0.Method_Form_Load0 (CInt(0), var_C4, var_C8, Me.Txt, Me.DGMemName)
  loc_10113DA: Me.DGMemName.Left = CVar(var_C8)
  loc_10113F6: Set var_CC = Me.Txt
  loc_10113FC: Call 0.Method_Form_Load0 (CInt(0), var_D0, var_D4, var_C4.Left)
  loc_1011404: global_60 = var_D0.Height
  loc_1011417: Set var_A8 = Me.Txt
  loc_101141D: Call 0.Method_Form_Load0 (CInt(0), var_C4, var_C8)
  loc_1011425: 1 = var_C4.Top
  loc_1011435: var_94 = CVar(((var_C8 + var_D4) + CDbl(&H19))) 'Single
  loc_1011444: Me.DGMemName.Top = CVar(var_C8)
  loc_1011456: Call Proc_281_51_125E970(-1)
  loc_1011467: Me.FrBill.Enabled = False
  loc_101146F: Exit Sub
  loc_1011470: ' Referenced from: 1011268
  loc_1011470: Proc_6_60_E63754()
  loc_1011475: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1593C
  'Data Table: 537E2C
  loc_E15933: Set global_60 = Nothing
  loc_E1593A: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EB1B14
  'Data Table: 537E2C
  Dim var_6301 As Variant
  loc_EB1A8C: On Error Goto loc_EB1AAC
  loc_EB1AA3: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_EB1AAB: Exit Sub
  loc_EB1AAC: ' Referenced from: EB1A8C
  loc_EB1AB4: Set var_88 = Err()
  loc_EB1ABA: Call 0.Method_arg_1C (var_8C, Shift)
  loc_EB1ACB: If (var_8C <> 0) Then
  loc_EB1AD6:   Set var_88 = Err()
  loc_EB1ADC:   Call 0.Method_arg_2C (var_90)
  loc_EB1AFD:   MsgBox(CVar(var_90), &H40, "Validation", var_E0, var_100)
  loc_EB1B10: End If
  loc_EB1B10: Exit Sub
  loc_EB1B11: var_6301 = CVar(0) 'Integer
End Sub

Private Sub CmdExit_UnknownEvent_9 'E18F30
  'Data Table: 537E2C
  loc_E18F25: Me.Global.Unload Me
  loc_E18F2D: Exit Sub
  loc_E18F2E: Set var_4C00 = 
End Sub

Public Sub SEARCHBACK(MyValue) 'E95258
  'Data Table: 537E2C
  Dim Me As Recordset15
  loc_E951E6: On Error Goto loc_E9524F
  loc_E951EF: Me.MoveFirst
  loc_E95219: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95241: Proc_5_0_1107AD0(&HFF, Me, global_56)
  loc_E95249: Call Proc_281_44_1695D3C(0)
  loc_E9524E: Exit Sub
  loc_E9524F: ' Referenced from: E951E6
  loc_E9524F: Proc_6_60_E63754(var_A0)
  loc_E95254: Exit Sub
End Sub

Public Sub Proc_281_41_10F2090
  'Data Table: 537E2C
  Dim var_98 As String
  Dim var_E0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_8C As Recordset15
  Dim var_AC As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_94 As Long
  Dim var_134 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  loc_10F1DB8: var_90 = global_80
  loc_10F1DCF: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_10F1E00: Set var_AC = Me.Txt
  loc_10F1E06: Call 0.Method_Proc_281_41_10F20900 (CInt(&H22), var_B0, CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10F1E15: Proc_6_7_F26918(var_D0, CVar(var_B0), var_134)
  loc_10F1E1D: var_F0 = -1 & var_D0 
  loc_10F1E31: Me.Txt.Execute CStr(var_F0 & " Order By VP.Date_From DESC"), var_138, 
  loc_10F1E3C: Set var_8C = var_138
  loc_10F1E78: If (var_8C.RecordCount > 0) Then
  loc_10F1EB7:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_10F1EBA:     GoTo loc_10F1F2D
  loc_10F1EBD:   End If
  loc_10F1EE0:   var_14C = CVar(var_8C.Fields.Item("Prefix")) 'Variant
  loc_10F1F01:   var_B0 = var_8C.Fields.Item("start_srl_no")
  loc_10F1F16:   var_D0 = (var_B0.Value + 1)
  loc_10F1F1C:   var_94 = CLng(var_D0)
  loc_10F1F2D:   ' Referenced from: 10F1EBA
  loc_10F1F2D: End If
  loc_10F1F58: var_C0 = Space((5 - Len(var_90)))
  loc_10F1F60: var_E0 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_B0.Value)
  loc_10F1F67: var_F0 = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_14C)
  loc_10F1F7D: var_110 = Space((5 - Len(CStr(var_14C))))
  loc_10F1F85: var_134 = (var_F0 + var_F0 & " Order By VP.Date_From DESC")
  loc_10F1F9B: var_160 = Space((8 - Len(CStr(var_94))))
  loc_10F1FA3: var_170 = (var_134 + var_160)
  loc_10F1FAF: var_190 = (var_170 + CVar(CStr(var_94)))
  loc_10F1FB3: var_1A0 = var_190 'Variant
  loc_10F1FE8: Me.LblVPrefix.Caption = CStr(var_14C)
  loc_10F2005: Set var_AC = Me.Txt
  loc_10F200B: Call 0.Method_Proc_281_41_10F20900 (CInt(&H1F), var_B0)
  loc_10F2013: var_B0.Text = CStr(var_1A0)
  loc_10F2035: Set var_AC = Me.Txt
  loc_10F203B: Call 0.Method_Proc_281_41_10F20900 (CInt(&H20), var_B0)
  loc_10F2043: var_B0.Text = CStr(var_94)
  loc_10F2060: Set var_AC = Me.Txt
  loc_10F2066: Call 0.Method_Proc_281_41_10F20900 (CInt(&H21), var_B0)
  loc_10F206E: var_B0.Text = var_90
  loc_10F207F: var_88 = CStr(var_1A0)
  loc_10F2087: Set var_8C = Nothing
  loc_10F208A: Proc_281_41_10F2090 = var_94
End Sub

Public Sub Proc_281_42_1534ED0
  'Data Table: 537E2C
  Dim unk_537E46 As Connection15
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_DC As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_1D4 As Double
  Dim var_188 As Variant
  Dim var_1C0 As Double
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_86 As Integer
  Dim var_9C As Recordset15
  Dim var_1E0 As Field20
  Dim var_134 As Variant
  Dim var_1E4 As Variant
  Dim var_1B8 As Variant
  Dim var_204 As Variant
  loc_1533F54: unk_537E46.Execute "Select Code,RoundOff from RevMast Where (LogSite_Code='" & MemVar_1F95078 & "' Or LogSite_Code='HO') Order By Name", var_DC, -1
  loc_1533F5F: Set var_9C = var_E0
  loc_1533F82: Me.FGCat.Rows = 1
  loc_1533FAF: For var_F4 = 1 To CInt((CLng(Me.Fgrid.Rows) - 1)): var_8A = var_F4 'Integer
  loc_1533FB9:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_1533FC1:   var_104 = CVar(CLng(0)) 'Long
  loc_1533FCB:   var_DC = CVar(CStr(var_8A)) 'String
  loc_1533FD3:   Set var_E0 = Me.Fgrid
  loc_1533FD9:   LateIdCallSt
  loc_1533FEB:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_1533FF3:   var_104 = CVar(CLng(&HA)) 'Long
  loc_153401E:   If (CStr(Me.Fgrid.TextMatrix)) <> vbNullString) Then
  loc_1534025:     var_CC = CVar(CLng(var_8A)) 'Long
  loc_153402D:     var_104 = CVar(CLng(&HB)) 'Long
  loc_153404C:     var_124 = CVar(CLng(var_8A)) 'Long
  loc_1534054:     var_144 = CVar(CLng(2)) 'Long
  loc_153405D:     Set var_158 = Me.Fgrid
  loc_1534076:     var_1D4 = Val(CStr(var_158.TextMatrix)))
  loc_15340C6:     Call Proc_281_43_18567B4(CStr(Me.Fgrid.TextMatrix)), var_8A, CSng(Format(CVar(var_1D4), "0.00")), vbNullString, 0, 1, 1, var_1D4)
  loc_15340EC:     var_CC = CVar(CLng(var_8A)) 'Long
  loc_15340F4:     var_104 = CVar(CLng(2)) 'Long
  loc_1534120:     var_AC = (var_AC + Val(CStr(Me.Fgrid.TextMatrix))))
  loc_1534130:     var_CC = CVar(CLng(var_8A)) 'Long
  loc_1534138:     var_104 = CVar(CLng(2)) 'Long
  loc_1534164:     var_B4 = (var_B4 + Val(CStr(Me.Fgrid.TextMatrix))))
  loc_1534170:   End If
  loc_1534173: Next var_F4 'Integer
  loc_1534197: If (CLng(Me.FGCat.Rows) = 1) Then
  loc_153419A:   var_CC = vbNullString
  loc_15341A4:   Set var_E0 = Me.FGCat
  loc_15341B5: End If
  loc_15341C8: Me.FGCat.FixedRows = 1
  loc_15341E3: Set var_E0 = Me.LblCap
  loc_15341E9: Call 0.Method_Proc_281_42_1534ED00 (1, var_158, MemVar_1F95070 & "TOT")
  loc_15341F1: var_158.Tag = FGCat.DispID_10000
  loc_153420C: Set var_E0 = Me.LblCap
  loc_1534212: Call 0.Method_Proc_281_42_1534ED00 (1, var_158)
  loc_153421A: var_158.Caption = "Total"
  loc_153425B: Set var_E0 = Me.TxtGt
  loc_1534261: Call 0.Method_Proc_281_42_1534ED00 (1, var_158, CStr(Format(var_AC, "0.00")))
  loc_1534269: var_158.Text = 1
  loc_1534281: var_86 = 2
  loc_1534284: ' Referenced from: 1534827
  loc_153428A: var_1D6 = var_9C.EOF
  loc_1534293: If Not(var_1D6) Then
  loc_1534299:   var_A4 = vbNullString
  loc_153429F:   var_AC = CDbl(0)
  loc_15342C7:   For var_1DA = 1 To CInt((CLng(Me.FGCat.Rows) - 1)): var_8A = var_1DA 'Integer
  loc_15342D1:     var_CC = CVar(CLng(var_8A)) 'Long
  loc_15342D9:     var_104 = CVar(CLng(6)) 'Long
  loc_15342F3:     var_188 = CVar(CStr(Me.FGCat.TextMatrix))) 'String
  loc_1534309:     var_158 = var_9C.Fields
  loc_1534319:     var_168 = var_158.Item("Code").Value
  loc_1534329:     var_134 = CVar(CLng(var_8A)) 'Long
  loc_153433A:     Set var_1E4 = Me.FGCat
  loc_153437D:     If CBool(CVar(CLng(&HA)) And (CDbl(Val(CStr(var_1E4.TextMatrix)))) <> CDbl(0))) Then
  loc_1534384:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_153438C:       var_104 = CVar(CLng(&HA)) 'Long
  loc_15343B4:       var_AC = (var_AC + CDbl(CStr(Me.FGCat.TextMatrix))))
  loc_15343C4:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_15343CC:       var_104 = CVar(CLng(6)) 'Long
  loc_15343E6:       var_98 = CStr(Me.FGCat.TextMatrix))
  loc_15343F3:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_15343FB:       var_104 = CVar(CLng(7)) 'Long
  loc_1534415:       var_A4 = CStr(Me.FGCat.TextMatrix))
  loc_153441E:     End If
  loc_1534421:   Next var_1DA 'Integer
  loc_153442E:   If (var_A4 <> vbNullString) Then
  loc_153443B:     Set var_E0 = Me.LblDummy
  loc_1534441:     Call 0.Method_Proc_281_42_1534ED08 (var_1D6)
  loc_153444D:     If (var_86 > var_1D6) Then
  loc_153445A:       Set var_E0 = Me.LblDummy
  loc_1534460:       Call 0.Method_Proc_281_42_1534ED00 (var_86)
  loc_1534471:       Me.LblDummy.Load var_158
  loc_1534489:       Set var_E0 = Me.LblDummy
  loc_153448F:       Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158)
  loc_1534497:       var_158.Visible = False
  loc_15344A3:     End If
  loc_15344AD:     Set var_E0 = Me.LblCap
  loc_15344B3:     Call 0.Method_Proc_281_42_1534ED08 (var_1D6, var_86)
  loc_15344BF:     If (var_158 > var_1D6) Then
  loc_15344CC:       Set var_E0 = Me.LblCap
  loc_15344D2:       Call 0.Method_Proc_281_42_1534ED00 (var_86)
  loc_15344E3:       Me.LblCap.Load var_158
  loc_15344FC:       Set var_1E0 = Me.LblCap
  loc_1534502:       Call 0.Method_Proc_281_42_1534ED00 (var_86, var_1E4)
  loc_153451F:       Set var_E0 = Me.LblCap
  loc_1534525:       Call 0.Method_Proc_281_42_1534ED00 ((var_86 - 1), var_158)
  loc_1534548:       Set var_200 = Me.LblCap
  loc_153454E:       Call 0.Method_Proc_281_42_1534ED00 (var_86, var_204)
  loc_1534556:       var_204.Top = ((var_158.Top + var_1E4.Height) + CDbl(&HF))
  loc_153456A:     End If
  loc_1534574:     Set var_E0 = Me.TxtGt
  loc_153457A:     Call 0.Method_Proc_281_42_1534ED08 (var_1D6, var_86)
  loc_1534586:     If (var_158 > var_1D6) Then
  loc_1534593:       Set var_E0 = Me.TxtGt
  loc_1534599:       Call 0.Method_Proc_281_42_1534ED00 (var_86)
  loc_15345AA:       Me.TxtGt.Load var_158
  loc_15345C3:       Set var_1E0 = Me.TxtGt
  loc_15345C9:       Call 0.Method_Proc_281_42_1534ED00 (var_86, var_1E4)
  loc_15345E6:       Set var_E0 = Me.TxtGt
  loc_15345EC:       Call 0.Method_Proc_281_42_1534ED00 ((var_86 - 1), var_158)
  loc_153460F:       Set var_200 = Me.TxtGt
  loc_1534615:       Call 0.Method_Proc_281_42_1534ED00 (var_86, var_204)
  loc_153461D:       var_204.Top = ((var_158.Top + var_1E4.Height) + CDbl(&HF))
  loc_1534631:     End If
  loc_153463E:     Set var_E0 = Me.LblCap
  loc_1534644:     Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158)
  loc_153464C:     var_158.Tag = var_98
  loc_1534683:     Set var_E0 = Me.LblCap
  loc_1534689:     Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158)
  loc_1534691:     var_158.Caption = CStr(StrConv(var_A4, 3, 0))
  loc_15346BA:     var_158 = var_9C.Fields.Item("RoundOff")
  loc_15346E8:     Proc_6_142_14A62A0(var_AC, CByte(0), "S")
  loc_15346ED:     var_1C0 = 2
  loc_153471D:     var_1B8 = (CVar(var_AC) + IIf((Proc_6_38_E69628(CVar(var_158)) = "Yes"), CVar(var_1C0), 0))
  loc_1534722:     var_AC = CSng(var_1E4.TextMatrix))
  loc_1534747:     var_B4 = (var_B4 + var_AC)
  loc_1534780:     Set var_E0 = Me.TxtGt
  loc_1534786:     Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158, CStr(Format(var_AC, "0.00")), 1, 1)
  loc_153478E:     var_158.Text = var_B4
  loc_15347B0:     Set var_E0 = Me.LblDummy
  loc_15347B6:     Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158, 0)
  loc_15347BE:     var_158.Visible = var_AC
  loc_15347D6:     Set var_E0 = Me.LblCap
  loc_15347DC:     Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158, &HFF)
  loc_15347E4:     var_158.Visible = var_1C0
  loc_15347FC:     Set var_E0 = Me.TxtGt
  loc_1534802:     Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158)
  loc_153480A:     var_158.Visible = True
  loc_153481C:     var_86 = (var_86 + 1)
  loc_153481F:   End If
  loc_1534822:   var_9C.MoveNext
  loc_1534827:   GoTo loc_1534284
  loc_153482A: End If
  loc_1534834: Set var_E0 = Me.LblDummy
  loc_153483A: Call 0.Method_Proc_281_42_1534ED08 (var_1D6, var_86)
  loc_1534846: If (var_86 > var_1D6) Then
  loc_1534853:   Set var_E0 = Me.LblDummy
  loc_1534859:   Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158)
  loc_153486A:   Me.LblDummy.Load var_158
  loc_1534882:   Set var_E0 = Me.LblDummy
  loc_1534888:   Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158)
  loc_1534890:   var_158.Visible = False
  loc_153489C: End If
  loc_15348A6: Set var_E0 = Me.LblCap
  loc_15348AC: Call 0.Method_Proc_281_42_1534ED08 (var_1D6, var_86)
  loc_15348B8: If (var_158 > var_1D6) Then
  loc_15348C5:   Set var_E0 = Me.LblCap
  loc_15348CB:   Call 0.Method_Proc_281_42_1534ED00 (var_86)
  loc_15348DC:   Me.LblCap.Load var_158
  loc_15348F5:   Set var_1E0 = Me.LblCap
  loc_15348FB:   Call 0.Method_Proc_281_42_1534ED00 (var_86, var_1E4)
  loc_1534918:   Set var_E0 = Me.LblCap
  loc_153491E:   Call 0.Method_Proc_281_42_1534ED00 ((var_86 - 1), var_158)
  loc_1534941:   Set var_200 = Me.LblCap
  loc_1534947:   Call 0.Method_Proc_281_42_1534ED00 (var_86, var_204)
  loc_153494F:   var_204.Top = ((var_158.Top + var_1E4.Height) + CDbl(&HF))
  loc_1534963: End If
  loc_153496D: Set var_E0 = Me.TxtGt
  loc_1534973: Call 0.Method_Proc_281_42_1534ED08 (var_1D6, var_86)
  loc_153497F: If (var_158 > var_1D6) Then
  loc_153498C:   Set var_E0 = Me.TxtGt
  loc_1534992:   Call 0.Method_Proc_281_42_1534ED00 (var_86)
  loc_15349A3:   Me.TxtGt.Load var_158
  loc_15349BC:   Set var_1E0 = Me.TxtGt
  loc_15349C2:   Call 0.Method_Proc_281_42_1534ED00 (var_86, var_1E4)
  loc_15349DF:   Set var_E0 = Me.TxtGt
  loc_15349E5:   Call 0.Method_Proc_281_42_1534ED00 ((var_86 - 1), var_158)
  loc_1534A08:   Set var_200 = Me.TxtGt
  loc_1534A0E:   Call 0.Method_Proc_281_42_1534ED00 (var_86, var_204)
  loc_1534A16:   var_204.Top = ((var_158.Top + var_1E4.Height) + CDbl(&HF))
  loc_1534A2A: End If
  loc_1534A3E: Set var_E0 = Me.LblCap
  loc_1534A44: Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158)
  loc_1534A4C: var_158.Tag = MemVar_1F95070 & "ROFF"
  loc_1534A68: Set var_E0 = Me.LblCap
  loc_1534A6E: Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158)
  loc_1534A76: var_158.Caption = "Round Off"
  loc_1534A9C: Proc_6_142_14A62A0(var_B4, CByte(0), "S")
  loc_1534AA1: var_1C0 = 2
  loc_1534AD9: Set var_E0 = Me.TxtGt
  loc_1534ADF: Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158, CStr(Format(CVar(var_1C0), "0.00")), 1)
  loc_1534AE7: var_158.Text = 1
  loc_1534B0F: Set var_E0 = Me.LblDummy
  loc_1534B15: Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158, 0)
  loc_1534B1D: var_158.Visible = var_1C0
  loc_1534B35: Set var_E0 = Me.LblCap
  loc_1534B3B: Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158)
  loc_1534B43: var_158.Visible = True
  loc_1534B5B: Set var_E0 = Me.TxtGt
  loc_1534B61: Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158)
  loc_1534B69: var_158.Visible = True
  loc_1534B7B: var_86 = (var_86 + 1)
  loc_1534B88: Set var_E0 = Me.LblDummy
  loc_1534B8E: Call 0.Method_Proc_281_42_1534ED08 (var_1D6, var_86)
  loc_1534B9A: If (var_86 > var_1D6) Then
  loc_1534BA7:   Set var_E0 = Me.LblDummy
  loc_1534BAD:   Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158)
  loc_1534BBE:   Me.LblDummy.Load var_158
  loc_1534BD6:   Set var_E0 = Me.LblDummy
  loc_1534BDC:   Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158)
  loc_1534BE4:   var_158.Visible = False
  loc_1534BF0: End If
  loc_1534BFA: Set var_E0 = Me.LblCap
  loc_1534C00: Call 0.Method_Proc_281_42_1534ED08 (var_1D6, var_86)
  loc_1534C0C: If (var_158 > var_1D6) Then
  loc_1534C19:   Set var_E0 = Me.LblCap
  loc_1534C1F:   Call 0.Method_Proc_281_42_1534ED00 (var_86)
  loc_1534C30:   Me.LblCap.Load var_158
  loc_1534C49:   Set var_1E0 = Me.LblCap
  loc_1534C4F:   Call 0.Method_Proc_281_42_1534ED00 (var_86, var_1E4)
  loc_1534C6C:   Set var_E0 = Me.LblCap
  loc_1534C72:   Call 0.Method_Proc_281_42_1534ED00 ((var_86 - 1), var_158)
  loc_1534C95:   Set var_200 = Me.LblCap
  loc_1534C9B:   Call 0.Method_Proc_281_42_1534ED00 (var_86, var_204)
  loc_1534CA3:   var_204.Top = ((var_158.Top + var_1E4.Height) + CDbl(&HF))
  loc_1534CB7: End If
  loc_1534CC1: Set var_E0 = Me.TxtGt
  loc_1534CC7: Call 0.Method_Proc_281_42_1534ED08 (var_1D6, var_86)
  loc_1534CD3: If (var_158 > var_1D6) Then
  loc_1534CE0:   Set var_E0 = Me.TxtGt
  loc_1534CE6:   Call 0.Method_Proc_281_42_1534ED00 (var_86)
  loc_1534CF7:   Me.TxtGt.Load var_158
  loc_1534D10:   Set var_1E0 = Me.TxtGt
  loc_1534D16:   Call 0.Method_Proc_281_42_1534ED00 (var_86, var_1E4)
  loc_1534D33:   Set var_E0 = Me.TxtGt
  loc_1534D39:   Call 0.Method_Proc_281_42_1534ED00 ((var_86 - 1), var_158)
  loc_1534D5C:   Set var_200 = Me.TxtGt
  loc_1534D62:   Call 0.Method_Proc_281_42_1534ED00 (var_86, var_204)
  loc_1534D6A:   var_204.Top = ((var_158.Top + var_1E4.Height) + CDbl(&HF))
  loc_1534D7E: End If
  loc_1534D92: Set var_E0 = Me.LblCap
  loc_1534D98: Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158)
  loc_1534DA0: var_158.Tag = MemVar_1F95070 & "NET"
  loc_1534DBC: Set var_E0 = Me.LblCap
  loc_1534DC2: Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158)
  loc_1534DCA: var_158.Caption = "Net Amount"
  loc_1534DF0: Proc_6_142_14A62A0(var_B4, CByte(0), "S")
  loc_1534DF5: var_1C0 = 2
  loc_1534E14: var_DC = CVar((var_B4 + var_1C0)) 'Double
  loc_1534E31: Set var_E0 = Me.TxtGt
  loc_1534E37: Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158, CStr(Format(CVar(var_1C0), "0.00")), 1)
  loc_1534E3F: var_158.Text = 1
  loc_1534E67: Set var_E0 = Me.LblDummy
  loc_1534E6D: Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158, 0)
  loc_1534E75: var_158.Visible = var_1C0
  loc_1534E8D: Set var_E0 = Me.LblCap
  loc_1534E93: Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158)
  loc_1534E9B: var_158.Visible = True
  loc_1534EB3: Set var_E0 = Me.TxtGt
  loc_1534EB9: Call 0.Method_Proc_281_42_1534ED00 (var_86, var_158)
  loc_1534EC1: var_158.Visible = True
  loc_1534ECD: Exit Sub
End Sub

Public Sub Proc_281_43_18567B4(arg_C, arg_10, arg_14) '18567B4
  'Data Table: 537E2C
  Dim var_E4 As String
  Dim unk_537E46 As Connection15
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_108 As Variant
  Dim var_140 As Variant
  Dim var_170 As Variant
  Dim var_130 As Variant
  Dim var_D0 As Double
  Dim var_194 As Double
  Dim var_150 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_204 As Variant
  Dim var_264 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_1C4 As Integer
  Dim var_274 As Variant
  Dim var_12C As MSHFlexGrid
  Dim var_180 As Double
  Dim var_9C As Double
  loc_18542A4: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_18542B4: unk_537E46.Execute var_E4 & "'", var_108, -1
  loc_18542BF: Set var_8C = var_10C
  loc_185434F: If (((((((MemVar_1F95078 & "TPRB" = arg_C) Or (MemVar_1F95078 & "TPR1" = arg_C)) Or (MemVar_1F95078 & "TPR2" = arg_C)) Or (MemVar_1F95078 & "TPR3" = arg_C)) Or (MemVar_1F95078 & "TPR4" = arg_C)) Or (MemVar_1F95078 & "TMBA" = arg_C)) Or (MemVar_1F95078 & "TMPA" = arg_C)) Then
  loc_1854354:   var_DA = &HFF
  loc_185435A: Else
  loc_185435C:   var_DA = 0
  loc_185435F: End If
  loc_1854362: var_94 = arg_14
  loc_1854367: var_86 = 1
  loc_185436D: var_A8 = var_94
  loc_1854373: var_B0 = var_94
  loc_1854379: var_B8 = CDbl(0)
  loc_1854390: If (var_8C.RecordCount > 0) Then
  loc_1854393:   ' Referenced from: 1856788
  loc_18543A2:   If Not(var_8C.EOF) Then
  loc_18543A9:     Set var_12C = Me.FGCat
  loc_18543C0:     If (var_8C.RecordCount > 0) Then
  loc_18543C9:       var_D2 = (var_D2 + 1)
  loc_1854402:       var_160 = Trim(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Nature")), var_D2, var_B8, var_B0, var_A8))) 'Variant
  loc_185441B:       If (var_160 = "On Base Amt") Then
  loc_185445E:         If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_18544A0:           var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_1C)) / CDbl(&H64))
  loc_18544B3:         Else
  loc_18544D5:           var_140 = var_8C.Fields.Item("Rate").Value
  loc_1854513:           Proc_6_142_14A62A0(((Val(CStr(var_140)) * (var_A8 + arg_1C)) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_140)), var_D0)
  loc_1854518:           var_194 = var_86
  loc_1854546:           var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_185455E:           var_D0 = (((Val(var_E4) * (var_A8 + arg_1C)) / CDbl(&H64)) + var_194)
  loc_185457C:         End If
  loc_18545A2:         Proc_6_39_E7D3A0(var_140, CVar(var_8C.Fields.Item("Limit")), var_D0, var_194)
  loc_18545DC:         Proc_6_39_E7D3A0(var_1C4, CVar(var_8C.Fields.Item("Rate")), (var_140 <= CVar(var_94)), var_94)
  loc_1854606:         If CBool(var_DA And (var_1C4 > 0)) Then
  loc_1854610:           If (var_D0 > CDbl(0)) Then
  loc_1854613:             var_F8 = vbNullString
  loc_185463D:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1854645:             var_1A4 = CVar(CLng(0)) 'Long
  loc_185464F:             var_140 = CVar(CStr(arg_10)) 'String
  loc_1854656:             LateIdCallSt
  loc_1854681:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1854689:             var_1A4 = CVar(CLng(1)) 'Long
  loc_1854693:             var_140 = CVar(CStr(var_86)) 'String
  loc_185469A:             LateIdCallSt
  loc_18546B2:             If (var_DA = 0) Then
  loc_18546CE:               var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1854709:               var_1B4 = CVar(Proc_6_38_E69628(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(arg_10)), CVar(CLng(2)), var_204, var_12C, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(6)))) 'String
  loc_1854710:               LateIdCallSt
  loc_1854743:               var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185477E:               var_1B4 = CVar(Proc_6_38_E69628(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(7)), CVar(CLng(arg_10)), CVar(CLng(3)), var_204, var_12C, var_1B4)) 'String
  loc_1854785:               LateIdCallSt
  loc_18547B8:               var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18547F3:               var_1B4 = CVar(Proc_6_38_E69628(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(8)), CVar(CLng(arg_10)), CVar(CLng(4)), var_204, var_12C, var_1B4)) 'String
  loc_18547FA:               LateIdCallSt
  loc_1854818:               Set var_130 = Me.FGCat
  loc_185482D:               var_204 = CVar((CLng(var_130.Rows) - 1)) 'Long
  loc_1854868:               var_1B4 = CVar(Proc_6_38_E69628(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(arg_10)), CVar(CLng(5)), var_204, var_12C, var_1B4)) 'String
  loc_185486F:               LateIdCallSt
  loc_185488C:             Else
  loc_18548A5:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18548C0:               Set var_10C = Me.Txt
  loc_18548C6:               Call 0.Method_Proc_281_43_18567B40 (CInt(&H1F), var_130, var_E4, CVar(CLng(2)), CVar(CLng(arg_10)), var_12C, var_1B4)
  loc_18548CE:               var_F8 = var_130.Text
  loc_18548DD:               LateIdCallSt
  loc_185490E:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1854929:               Set var_10C = Me.Txt
  loc_185492F:               Call 0.Method_Proc_281_43_18567B40 (CInt(&H20), var_130, var_E4, CVar(CLng(3)), var_F8, var_12C, CVar(var_E4))
  loc_1854937:               var_12C = var_130.Text
  loc_185493F:               var_140 = CVar(var_E4) 'String
  loc_1854946:               LateIdCallSt
  loc_1854977:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1854992:               Set var_10C = Me.Txt
  loc_1854998:               Call 0.Method_Proc_281_43_18567B40 (CInt(&H21), var_130, var_E4, CVar(CLng(4)), var_F8, var_12C)
  loc_18549A0:               var_140 = var_130.Text
  loc_18549A8:               var_140 = CVar(var_E4) 'String
  loc_18549AF:               LateIdCallSt
  loc_18549E0:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18549E8:               var_1A4 = CVar(CLng(5)) 'Long
  loc_18549F7:               LateIdCallSt
  loc_1854A05:             End If
  loc_1854A1E:             var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1854A26:             var_1D4 = CVar(CLng(6)) 'Long
  loc_1854A56:             var_150 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1854A5D:             LateIdCallSt
  loc_1854A90:             var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1854A98:             var_1D4 = CVar(CLng(7)) 'Long
  loc_1854AC8:             var_150 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1854ACF:             LateIdCallSt
  loc_1854B02:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1854B0A:             var_1A4 = CVar(CLng(8)) 'Long
  loc_1854B18:             var_140 = CVar(CStr((var_A8 + arg_1C))) 'String
  loc_1854B1F:             LateIdCallSt
  loc_1854B4A:             var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1854B52:             var_1D4 = CVar(CLng(9)) 'Long
  loc_1854B82:             var_150 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1854B89:             LateIdCallSt
  loc_1854BE7:             var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1854BEF:             var_234 = CVar(CLng(&HA)) 'Long
  loc_1854C33:             var_274 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))) 'String
  loc_1854C3A:             LateIdCallSt
  loc_1854C5E:           End If
  loc_1854C77:           var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1854C7F:           var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1854CA4:           var_9C = (var_9C + Val(CStr(var_12C.TextMatrix))))
  loc_1854CCD:           var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1854CD5:           var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1854CF0:           var_180 = Val(CStr(var_12C.TextMatrix)))
  loc_1854CFA:           var_94 = (var_94 + var_180)
  loc_1854D11:           var_B0 = (var_B0 + var_D0)
  loc_1854D17:           var_B8 = var_D0
  loc_1854D1A:         End If
  loc_1854D1D:       Else
  loc_1854D28:         If (var_160 = "On Running Total") Then
  loc_1854D6B:           If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_1854DA9:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_1854DBC:           Else
  loc_1854DDE:             var_140 = var_8C.Fields.Item("Rate").Value
  loc_1854E18:             Proc_6_142_14A62A0(((Val(CStr(var_140)) * var_B0) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_140)), var_D0, var_B8, var_B0)
  loc_1854E1D:             var_194 = var_94
  loc_1854E4B:             var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_1854E5F:             var_D0 = (((Val(var_E4) * var_B0) / CDbl(&H64)) + var_194)
  loc_1854E7D:           End If
  loc_1854EA3:           Proc_6_39_E7D3A0(var_140, CVar(var_8C.Fields.Item("Rate")), var_D0, var_194, var_180)
  loc_1854EBD:           If (var_140 > 0) Then
  loc_1854EC7:             If (var_D0 > CDbl(0)) Then
  loc_1854ECA:               var_F8 = vbNullString
  loc_1854EF4:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1854EFC:               var_1A4 = CVar(CLng(0)) 'Long
  loc_1854F06:               var_140 = CVar(CStr(arg_10)) 'String
  loc_1854F0D:               LateIdCallSt
  loc_1854F38:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1854F40:               var_1A4 = CVar(CLng(1)) 'Long
  loc_1854F4A:               var_140 = CVar(CStr(var_86)) 'String
  loc_1854F51:               LateIdCallSt
  loc_1854F69:               If (var_DA = 0) Then
  loc_1854F85:                 var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1854FC0:                 var_1B4 = CVar(Proc_6_38_E69628(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(arg_10)), CVar(CLng(2)), var_D0, var_12C, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(6)))) 'String
  loc_1854FC7:                 LateIdCallSt
  loc_1854FFA:                 var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855035:                 var_1B4 = CVar(Proc_6_38_E69628(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(7)), CVar(CLng(arg_10)), CVar(CLng(3)), var_D0, var_12C, var_1B4)) 'String
  loc_185503C:                 LateIdCallSt
  loc_185506F:                 var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18550AA:                 var_1B4 = CVar(Proc_6_38_E69628(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(8)), CVar(CLng(arg_10)), CVar(CLng(4)), var_D0, var_12C, var_1B4)) 'String
  loc_18550B1:                 LateIdCallSt
  loc_18550CF:                 Set var_130 = Me.FGCat
  loc_18550E4:                 var_204 = CVar((CLng(var_130.Rows) - 1)) 'Long
  loc_185511F:                 var_1B4 = CVar(Proc_6_38_E69628(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(arg_10)), CVar(CLng(5)), var_D0, var_12C, var_1B4)) 'String
  loc_1855126:                 LateIdCallSt
  loc_1855143:               Else
  loc_185515C:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855177:                 Set var_10C = Me.Txt
  loc_185517D:                 Call 0.Method_Proc_281_43_18567B40 (CInt(&H1F), var_130, var_E4, CVar(CLng(2)), CVar(CLng(arg_10)), var_12C, var_1B4)
  loc_1855185:                 var_F8 = var_130.Text
  loc_1855194:                 LateIdCallSt
  loc_18551C5:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18551E0:                 Set var_10C = Me.Txt
  loc_18551E6:                 Call 0.Method_Proc_281_43_18567B40 (CInt(&H20), var_130, var_E4, CVar(CLng(3)), var_F8, var_12C, CVar(var_E4))
  loc_18551EE:                 var_12C = var_130.Text
  loc_18551F6:                 var_140 = CVar(var_E4) 'String
  loc_18551FD:                 LateIdCallSt
  loc_185522E:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855249:                 Set var_10C = Me.Txt
  loc_185524F:                 Call 0.Method_Proc_281_43_18567B40 (CInt(&H21), var_130, var_E4, CVar(CLng(4)), var_F8, var_12C)
  loc_1855257:                 var_140 = var_130.Text
  loc_185525F:                 var_140 = CVar(var_E4) 'String
  loc_1855266:                 LateIdCallSt
  loc_1855297:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185529F:                 var_1A4 = CVar(CLng(5)) 'Long
  loc_18552AE:                 LateIdCallSt
  loc_18552BC:               End If
  loc_18552D5:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18552DD:               var_1D4 = CVar(CLng(6)) 'Long
  loc_185530D:               var_150 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1855314:               LateIdCallSt
  loc_1855347:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185534F:               var_1D4 = CVar(CLng(7)) 'Long
  loc_185537F:               var_150 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1855386:               LateIdCallSt
  loc_18553B9:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18553C1:               var_1A4 = CVar(CLng(8)) 'Long
  loc_18553CB:               var_140 = CVar(CStr(var_B0)) 'String
  loc_18553D2:               LateIdCallSt
  loc_18553FD:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855405:               var_1D4 = CVar(CLng(9)) 'Long
  loc_1855435:               var_150 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_185543C:               LateIdCallSt
  loc_185549A:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18554A2:               var_234 = CVar(CLng(&HA)) 'Long
  loc_18554E6:               var_274 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))) 'String
  loc_18554ED:               LateIdCallSt
  loc_1855511:             End If
  loc_185552A:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855532:             var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1855557:             var_9C = (var_9C + Val(CStr(var_12C.TextMatrix))))
  loc_1855580:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855588:             var_1A4 = CVar(CLng(&HA)) 'Long
  loc_18555AD:             var_94 = (var_94 + Val(CStr(var_12C.TextMatrix))))
  loc_18555C4:             var_B0 = (var_B0 + var_D0)
  loc_18555CA:             var_B8 = var_D0
  loc_18555CD:           End If
  loc_18555D0:         Else
  loc_18555DB:           If (var_160 = "On Prev. Tax Amt") Then
  loc_185561E:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_185565C:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_185566F:             Else
  loc_18556CB:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_18556FE:               var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_1855712:               var_D0 = (((Val(var_E4) * var_B8) / CDbl(&H64)) + var_94)
  loc_1855730:             End If
  loc_1855737:             If (var_D0 > CDbl(0)) Then
  loc_185573A:               var_F8 = vbNullString
  loc_1855764:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185576C:               var_1A4 = CVar(CLng(0)) 'Long
  loc_1855776:               var_140 = CVar(CStr(arg_10)) 'String
  loc_185577D:               LateIdCallSt
  loc_18557A8:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18557B0:               var_1A4 = CVar(CLng(1)) 'Long
  loc_18557BA:               var_140 = CVar(CStr(var_86)) 'String
  loc_18557C1:               LateIdCallSt
  loc_18557D9:               If (var_DA = 0) Then
  loc_18557F5:                 var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855830:                 var_1B4 = CVar(Proc_6_38_E69628(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(arg_10)), CVar(CLng(2)), var_D0, var_12C, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(6)))) 'String
  loc_1855837:                 LateIdCallSt
  loc_185586A:                 var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18558A5:                 var_1B4 = CVar(Proc_6_38_E69628(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(7)), CVar(CLng(arg_10)), CVar(CLng(3)), var_D0, var_12C, var_1B4)) 'String
  loc_18558AC:                 LateIdCallSt
  loc_18558DF:                 var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185591A:                 var_1B4 = CVar(Proc_6_38_E69628(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(8)), CVar(CLng(arg_10)), CVar(CLng(4)), var_D0, var_12C, var_1B4)) 'String
  loc_1855921:                 LateIdCallSt
  loc_185593F:                 Set var_130 = Me.FGCat
  loc_1855954:                 var_204 = CVar((CLng(var_130.Rows) - 1)) 'Long
  loc_185598F:                 var_1B4 = CVar(Proc_6_38_E69628(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(arg_10)), CVar(CLng(5)), var_D0, var_12C, var_1B4)) 'String
  loc_1855996:                 LateIdCallSt
  loc_18559B3:               Else
  loc_18559CC:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18559E7:                 Set var_10C = Me.Txt
  loc_18559ED:                 Call 0.Method_Proc_281_43_18567B40 (CInt(&H1F), var_130, var_E4, CVar(CLng(2)), CVar(CLng(arg_10)), var_12C, var_1B4)
  loc_18559F5:                 var_F8 = var_130.Text
  loc_1855A04:                 LateIdCallSt
  loc_1855A35:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855A50:                 Set var_10C = Me.Txt
  loc_1855A56:                 Call 0.Method_Proc_281_43_18567B40 (CInt(&H20), var_130, var_E4, CVar(CLng(3)), var_F8, var_12C, CVar(var_E4))
  loc_1855A5E:                 var_12C = var_130.Text
  loc_1855A66:                 var_140 = CVar(var_E4) 'String
  loc_1855A6D:                 LateIdCallSt
  loc_1855A9E:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855AB9:                 Set var_10C = Me.Txt
  loc_1855ABF:                 Call 0.Method_Proc_281_43_18567B40 (CInt(&H21), var_130, var_E4, CVar(CLng(4)), var_F8, var_12C)
  loc_1855AC7:                 var_140 = var_130.Text
  loc_1855ACF:                 var_140 = CVar(var_E4) 'String
  loc_1855AD6:                 LateIdCallSt
  loc_1855B07:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855B0F:                 var_1A4 = CVar(CLng(5)) 'Long
  loc_1855B1E:                 LateIdCallSt
  loc_1855B2C:               End If
  loc_1855B45:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855B4D:               var_1D4 = CVar(CLng(6)) 'Long
  loc_1855B7D:               var_150 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1855B84:               LateIdCallSt
  loc_1855BB7:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855BBF:               var_1D4 = CVar(CLng(7)) 'Long
  loc_1855BEF:               var_150 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1855BF6:               LateIdCallSt
  loc_1855C29:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855C31:               var_1A4 = CVar(CLng(8)) 'Long
  loc_1855C3B:               var_140 = CVar(CStr(var_B8)) 'String
  loc_1855C42:               LateIdCallSt
  loc_1855C6D:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855C75:               var_1D4 = CVar(CLng(9)) 'Long
  loc_1855CA5:               var_150 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1855CAC:               LateIdCallSt
  loc_1855D06:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855D0E:               var_234 = CVar(CLng(&HA)) 'Long
  loc_1855D13:               var_1C4 = 2
  loc_1855D52:               var_264 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_1C4))))) 'String
  loc_1855D59:               LateIdCallSt
  loc_1855D7D:             End If
  loc_1855D96:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855D9E:             var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1855DC3:             var_9C = (var_9C + Val(CStr(var_12C.TextMatrix))))
  loc_1855DEC:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855DF4:             var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1855E0F:             var_180 = Val(CStr(var_12C.TextMatrix)))
  loc_1855E19:             var_94 = (var_94 + var_180)
  loc_1855E30:             var_B0 = (var_B0 + var_D0)
  loc_1855E36:             var_B8 = var_D0
  loc_1855E3C:           Else
  loc_1855E7C:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_1855EBA:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1855ECD:             Else
  loc_1855EEF:               var_140 = var_8C.Fields.Item("Rate").Value
  loc_1855F29:               Proc_6_142_14A62A0(((Val(CStr(var_140)) * var_A8) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_140)), var_D0, var_B8, var_B0)
  loc_1855F2E:               var_194 = var_94
  loc_1855F5C:               var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_1855F70:               var_D0 = (((Val(var_E4) * var_A8) / CDbl(&H64)) + var_194)
  loc_1855F8E:             End If
  loc_1855F91:             var_F8 = "Limit"
  loc_1855FB4:             Proc_6_39_E7D3A0(var_140, CVar(var_8C.Fields.Item(var_F8)), var_D0, var_194, var_180)
  loc_1855FCB:             var_1A4 = "Rate"
  loc_1855FEE:             Proc_6_39_E7D3A0(var_1C4, CVar(var_8C.Fields.Item(var_1A4)), (var_140 <= CVar(var_94)), var_1A4)
  loc_1856018:             If CBool(var_F8 And (var_1C4 > 0)) Then
  loc_1856022:               If (var_D0 > CDbl(0)) Then
  loc_1856025:                 var_F8 = vbNullString
  loc_185604F:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856057:                 var_1A4 = CVar(CLng(0)) 'Long
  loc_1856061:                 var_140 = CVar(CStr(arg_10)) 'String
  loc_1856068:                 LateIdCallSt
  loc_1856093:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185609B:                 var_1A4 = CVar(CLng(1)) 'Long
  loc_18560A5:                 var_140 = CVar(CStr(var_86)) 'String
  loc_18560AC:                 LateIdCallSt
  loc_18560C4:                 If (var_DA = 0) Then
  loc_18560E0:                   var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185611B:                   var_1B4 = CVar(Proc_6_38_E69628(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(arg_10)), CVar(CLng(2)), var_D0, var_12C, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(6)))) 'String
  loc_1856122:                   LateIdCallSt
  loc_1856155:                   var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856190:                   var_1B4 = CVar(Proc_6_38_E69628(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(7)), CVar(CLng(arg_10)), CVar(CLng(3)), var_D0, var_12C, var_1B4)) 'String
  loc_1856197:                   LateIdCallSt
  loc_18561CA:                   var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856205:                   var_1B4 = CVar(Proc_6_38_E69628(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(8)), CVar(CLng(arg_10)), CVar(CLng(4)), var_D0, var_12C, var_1B4)) 'String
  loc_185620C:                   LateIdCallSt
  loc_185622A:                   Set var_130 = Me.FGCat
  loc_185623F:                   var_204 = CVar((CLng(var_130.Rows) - 1)) 'Long
  loc_185627A:                   var_1B4 = CVar(Proc_6_38_E69628(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(arg_10)), CVar(CLng(5)), var_D0, var_12C, var_1B4)) 'String
  loc_1856281:                   LateIdCallSt
  loc_185629E:                 Else
  loc_18562B7:                   var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18562D2:                   Set var_10C = Me.Txt
  loc_18562D8:                   Call 0.Method_Proc_281_43_18567B40 (CInt(&H1F), var_130, var_E4, CVar(CLng(2)), CVar(CLng(arg_10)), var_12C, var_1B4)
  loc_18562E0:                   var_F8 = var_130.Text
  loc_18562EF:                   LateIdCallSt
  loc_1856320:                   var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185633B:                   Set var_10C = Me.Txt
  loc_1856341:                   Call 0.Method_Proc_281_43_18567B40 (CInt(&H20), var_130, var_E4, CVar(CLng(3)), var_F8, var_12C, CVar(var_E4))
  loc_1856349:                   var_12C = var_130.Text
  loc_1856351:                   var_140 = CVar(var_E4) 'String
  loc_1856358:                   LateIdCallSt
  loc_1856389:                   var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18563A4:                   Set var_10C = Me.Txt
  loc_18563AA:                   Call 0.Method_Proc_281_43_18567B40 (CInt(&H21), var_130, var_E4, CVar(CLng(4)), var_F8, var_12C)
  loc_18563B2:                   var_140 = var_130.Text
  loc_18563BA:                   var_140 = CVar(var_E4) 'String
  loc_18563C1:                   LateIdCallSt
  loc_18563F2:                   var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18563FA:                   var_1A4 = CVar(CLng(5)) 'Long
  loc_1856409:                   LateIdCallSt
  loc_1856417:                 End If
  loc_1856430:                 var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856438:                 var_1D4 = CVar(CLng(6)) 'Long
  loc_1856468:                 var_150 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_185646F:                 LateIdCallSt
  loc_18564A2:                 var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18564AA:                 var_1D4 = CVar(CLng(7)) 'Long
  loc_18564DA:                 var_150 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_18564E1:                 LateIdCallSt
  loc_1856514:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185651C:                 var_1A4 = CVar(CLng(8)) 'Long
  loc_1856526:                 var_140 = CVar(CStr(var_A8)) 'String
  loc_185652D:                 LateIdCallSt
  loc_1856558:                 var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856560:                 var_1D4 = CVar(CLng(9)) 'Long
  loc_1856590:                 var_150 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1856597:                 LateIdCallSt
  loc_18565F5:                 var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18565FD:                 var_234 = CVar(CLng(&HA)) 'Long
  loc_1856641:                 var_274 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))) 'String
  loc_1856648:                 LateIdCallSt
  loc_185666C:               End If
  loc_1856685:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185668D:               var_1A4 = CVar(CLng(&HA)) 'Long
  loc_18566B2:               var_9C = (var_9C + Val(CStr(var_12C.TextMatrix))))
  loc_18566DB:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18566E3:               var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1856708:               var_94 = (var_94 + Val(CStr(var_12C.TextMatrix))))
  loc_185671F:               var_B0 = (var_B0 + var_D0)
  loc_1856725:               var_B8 = var_D0
  loc_1856728:             End If
  loc_1856728:           End If
  loc_1856728:         End If
  loc_1856728:       End If
  loc_1856728:     End If
  loc_185672E:     var_86 = (var_86 + 1)
  loc_1856733:     Set var_12C = Nothing 
  loc_185673D:     If (var_DA = 0) Then
  loc_1856744:       var_F8 = CVar(CLng(arg_10)) 'Long
  loc_185674C:       var_1A4 = CVar(CLng(&HD)) 'Long
  loc_1856756:       var_108 = CVar(CStr(var_9C)) 'String
  loc_185675E:       Set var_10C = Me.Fgrid
  loc_1856764:       LateIdCallSt
  loc_1856775:     Else
  loc_185677C:       var_294 = CVar(var_9C) 'Variant
  loc_1856780:     End If
  loc_1856783:     var_8C.MoveNext
  loc_1856788:     GoTo loc_1854393
  loc_185678B:   End If
  loc_1856790:   Set var_8C = Nothing
  loc_1856798:   Set var_C4 = Nothing
  loc_18567A0:   Set var_C0 = Nothing
  loc_18567A8:   Set var_D8 = Nothing
  loc_18567B0:   Set var_E0 = Nothing
  loc_18567B3: End If
  loc_18567B3: Exit Sub
End Sub

Public Sub Proc_281_44_1695D3C
  'Data Table: 537E2C
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_184 As Variant
  Dim unk_537E46 As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As Variant
  Dim var_1B0 As Variant
  Dim var_1AC As Variant
  Dim var_8C As Recordset15
  Dim var_96 As Integer
  Dim var_90 As Recordset15
  Dim var_94 As Recordset15
  Dim var_1D8 As Variant
  loc_16944E8: On Error Goto loc_1695D33
  loc_1694502: If (Me.RecordCount > 0) Then
  loc_1694505:   Call Proc_281_50_1027970()
  loc_1694549:   var_E4 = "Select S.Name As MemName,M.* From membill M Left Join SubGroup S On M.MemCode=S.SubCode Where M.DocId='" & Me.Fields.Item("SearchCode").Value 
  loc_1694578:   var_184 = var_E4 & "' And M.Site_Code='" & CVar(MemVar_1F95070) & "' And (M.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or M.LogSite_Code='HO')" 
  loc_1694586:   unk_537E46.Execute CStr(var_184), var_1A8, -1
  loc_1694591:   Set var_88 = var_1AC
  loc_16945C0:   var_D4 = "Select MR.Description As Facility,M1.* From membill1 M1 Left Join MembershipRevMast MR On M1.FacilityCode=MR.Code Where M1.DocId='"
  loc_169460E:   var_144 = var_D4 & Me.Fields.Item("SearchCode").Value & "' And M1.Type='Revenue' And M1.Site_Code='" & CVar(MemVar_1F95070) & "' And (M1.LogSite_Code='" 
  loc_169462F:   unk_537E46.Execute CStr(var_144 & CVar(MemVar_1F95078) & "' Or M1.LogSite_Code='HO')"), var_1A8, -1
  loc_169463A:   Set var_8C = var_1AC
  loc_169469B:   var_E4 = "Select R.Name As TaxName,M2.* From membill2 M2 Left Join RevMast R On M2.TaxCode=R.Code Where M2.DocId='" & Me.Fields.Item("SearchCode").Value 
  loc_16946CA:   var_184 = var_E4 & "' And M2.Site_Code='" & CVar(MemVar_1F95070) & "' And (M2.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or M2.LogSite_Code='HO') Order By Sno,Sno1" 
  loc_16946D8:   unk_537E46.Execute CStr(var_184), var_1A8, -1
  loc_16946E3:   Set var_90 = var_1AC
  loc_1694744:   var_E4 = "Select R.Name As SunName,MS.* From memSunTran MS Left Join RevMast R On MS.SunCode=R.Code Where MS.DocId='" & Me.Fields.Item("SearchCode").Value 
  loc_1694773:   var_184 = var_E4 & "' And MS.Site_Code='" & CVar(MemVar_1F95070) & "' And (MS.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or MS.LogSite_Code='HO') Order By Sno" 
  loc_1694781:   unk_537E46.Execute CStr(var_184), var_1A8, -1
  loc_169478C:   Set var_94 = var_1AC
  loc_16947C2:   If (var_88.RecordCount > 0) Then
  loc_1694801:     Call 0.Method_Proc_281_44_1695D3C0 (CInt(&H1F), var_1B0, Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")), Me.Txt, Me.Txt))
  loc_1694809:     var_1B0.Text = Me.Txt
  loc_1694848:     var_E4 = "dd/MMM/yyyy"
  loc_169486F:     Set var_1AC = Me.Txt
  loc_1694875:     Call 0.Method_Proc_281_44_1695D3C0 (CInt(&H22), var_1B0, CStr(Format(CVar(var_88.Fields.Item("VDate")), var_E4)))
  loc_169487D:     var_1B0.Text = 1
  loc_16948BD:     Proc_6_39_E7D3A0(var_E4, CVar(var_88.Fields.Item("VNo")))
  loc_16948D4:     Set var_1AC = Me.Txt
  loc_16948DA:     Call 0.Method_Proc_281_44_1695D3C0 (CInt(&H20), var_1B0, CStr(var_E4))
  loc_16948E2:     var_1B0.Text = 1
  loc_169492F:     Me.LblVPrefix.Caption = Proc_6_38_E69628(CVar(var_88.Fields.Item("vPrefix")))
  loc_1694977:     Set var_1AC = Me.Txt
  loc_169497D:     Call 0.Method_Proc_281_44_1695D3C0 (CInt(&H21), var_1B0)
  loc_1694985:     var_1B0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("vType")))
  loc_16949AD:     If (var_8C.RecordCount > 0) Then
  loc_16949B2:       var_96 = 1
  loc_16949C8:       Me.Fgrid.Rows = 1
  loc_16949D0:       ' Referenced from: 169505C
  loc_16949DF:       If Not(var_8C.EOF) Then
  loc_16949E6:         Set var_1B8 = Me.Fgrid
  loc_16949EE:         var_C4 = CVar(CStr(var_96)) 'String
  loc_1694A39:         var_E4 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Facility")), CVar(CLng(1)), CVar(CLng(var_96)), Fgrid.DispID_10000)) 'String
  loc_1694A40:         LateIdCallSt
  loc_1694A89:         Proc_6_39_E7D3A0(var_E4, CVar(var_8C.Fields.Item("SNo")), CVar(CLng(0)), CVar(CLng(var_96)), var_1B8)
  loc_1694A92:         var_104 = CVar(CStr(var_E4)) 'String
  loc_1694A99:         LateIdCallSt
  loc_1694AE4:         Proc_6_39_E7D3A0(var_E4, CVar(var_8C.Fields.Item("VNo")), CVar(CLng(7)), CVar(CLng(var_96)), var_1B8)
  loc_1694AED:         var_104 = CVar(CStr(var_E4)) 'String
  loc_1694AF4:         LateIdCallSt
  loc_1694B41:         var_E4 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("DocID")), CVar(CLng(6)), CVar(CLng(var_96)), var_1B8, var_104)) 'String
  loc_1694B48:         LateIdCallSt
  loc_1694B93:         var_E4 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("vType")), CVar(CLng(8)), CVar(CLng(var_96)), var_1B8, var_E4)) 'String
  loc_1694B9A:         LateIdCallSt
  loc_1694BE5:         var_E4 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Type")), CVar(CLng(9)), CVar(CLng(var_96)), var_1B8, var_E4)) 'String
  loc_1694BEC:         LateIdCallSt
  loc_1694C3E:         var_E4 = CVar(Proc_6_38_E69628(var_8C.Fields.Item("FacilityCode").Value, CVar(CLng(&HA)), CVar(CLng(var_96)), var_1B8, var_E4)) 'String
  loc_1694C45:         LateIdCallSt
  loc_1694C94:         var_E4 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("TaxStru")), CVar(CLng(&HB)), CVar(CLng(var_96)), var_1B8, var_E4)) 'String
  loc_1694C9B:         LateIdCallSt
  loc_1694CE6:         var_E4 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("AcCode")), CVar(CLng(&HC)), CVar(CLng(var_96)), var_1B8, var_E4)) 'String
  loc_1694CED:         LateIdCallSt
  loc_1694D25:         Proc_6_39_E7D3A0(var_E4, CVar(var_8C.Fields.Item("BaseAmt")), var_1B8, var_E4, var_104)
  loc_1694D2E:         var_F4 = CVar(CLng(var_96)) 'Long
  loc_1694D36:         var_134 = CVar(CLng(2)) 'Long
  loc_1694D5F:         var_144 = CVar(CStr(Format(var_E4, "0.00"))) 'String
  loc_1694D66:         LateIdCallSt
  loc_1694D9E:         var_F4 = CVar(CLng(var_96)) 'Long
  loc_1694DA6:         var_134 = CVar(CLng(3)) 'Long
  loc_1694DD3:         var_124 = CVar(CStr(Format(CVar(var_8C.Fields.Item("FrPeriod")), "dd/MMM/YYYY"))) 'String
  loc_1694DDA:         LateIdCallSt
  loc_1694E10:         var_F4 = CVar(CLng(var_96)) 'Long
  loc_1694E18:         var_134 = CVar(CLng(5)) 'Long
  loc_1694E45:         var_124 = CVar(CStr(Format(CVar(var_8C.Fields.Item("ToPeriod")), "dd/MMM/YYYY"))) 'String
  loc_1694E4C:         LateIdCallSt
  loc_1694E95:         var_1B0 = var_8C.Fields.Item("ToPeriod")
  loc_1694EA7:         var_E4 = CVar(var_1B0) 'Address
  loc_1694EC1:         var_134 = CVar(CLng(var_96)) 'Long
  loc_1694EEB:         var_124 = (DateDiff("d", CVar(var_8C.Fields.Item("FrPeriod")), var_E4, 1, 1) + 1)
  loc_1694F02:         LateIdCallSt
  loc_1694F48:         Proc_6_39_E7D3A0(var_E4, CVar(var_8C.Fields.Item("TaxAmt")), var_1B8, CVar(CStr(Format(var_124, "0"))), 1, 1, CVar(CLng(4)))
  loc_1694F51:         var_F4 = CVar(CLng(var_96)) 'Long
  loc_1694F89:         LateIdCallSt
  loc_1694FDA:         var_E4 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ACPosting")), CVar(CLng(&HE)), CVar(CLng(var_96)), var_1B8, CVar(CStr(Format(var_E4, "0.00"))), 1, 1)) 'String
  loc_1694FE1:         LateIdCallSt
  loc_169502C:         var_E4 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("AcPostingYN")), CVar(CLng(&HF)), CVar(CLng(var_96)), var_1B8, var_E4, CVar(CLng(&HD)))) 'String
  loc_1695033:         LateIdCallSt
  loc_1695047:         Set var_1B8 = Nothing 
  loc_1695051:         var_96 = (var_96 + 1)
  loc_1695057:         var_8C.MoveNext
  loc_169505C:         GoTo loc_16949D0
  loc_169505F:       End If
  loc_169505F:     End If
  loc_169505F:     var_B0 = 0
  loc_1695069:     Set var_A0 = Me.Fgrid
  loc_1695096:     If (CLng(Me.Fgrid.Rows) = 1) Then
  loc_1695099:       var_B0 = "1"
  loc_16950A3:       Set var_A0 = Me.Fgrid
  loc_16950B4:     End If
  loc_16950C7:     Me.Fgrid.FixedRows = 1
  loc_16950E3:     If (var_90.RecordCount > 0) Then
  loc_16950E8:       var_96 = 1
  loc_16950FE:       Me.FGCat.Rows = 1
  loc_1695106:       ' Referenced from: 169557A
  loc_1695115:       If Not(var_90.EOF) Then
  loc_169511C:         Set var_1CC = Me.FGCat
  loc_169511F:         var_B0 = vbNullString
  loc_1695144:         var_B0 = "SNo"
  loc_1695167:         Proc_6_39_E7D3A0(var_E4, CVar(var_90.Fields.Item(var_B0)), CVar(CLng(0)), CVar(CLng(var_96)), FGCat.DispID_10000, var_B0, var_96)
  loc_1695177:         LateIdCallSt
  loc_16951C2:         Proc_6_39_E7D3A0(var_E4, CVar(var_90.Fields.Item("Sno1")), CVar(CLng(1)), CVar(CLng(var_96)), var_1CC, CVar(CStr(var_E4)), Fgrid.DispID_10000)
  loc_16951D2:         LateIdCallSt
  loc_16951FA:         var_B0 = "DocID"
  loc_169521F:         var_E4 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item(var_B0)), CVar(CLng(2)), CVar(CLng(var_96)), var_1CC, CVar(CStr(var_E4)), var_B0)) 'String
  loc_1695226:         LateIdCallSt
  loc_169526F:         Proc_6_39_E7D3A0(var_E4, CVar(var_90.Fields.Item("VNo")), CVar(CLng(3)), CVar(CLng(var_96)), var_1CC, var_E4)
  loc_169527F:         LateIdCallSt
  loc_16952CC:         var_E4 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("vType")), CVar(CLng(4)), CVar(CLng(var_96)), var_1CC, CVar(CStr(var_E4)))) 'String
  loc_16952D3:         LateIdCallSt
  loc_1695325:         var_E4 = CVar(Proc_6_38_E69628(var_90.Fields.Item("FacilityCode").Value, CVar(CLng(5)), CVar(CLng(var_96)), var_1CC, var_E4)) 'String
  loc_169532C:         LateIdCallSt
  loc_169537B:         var_E4 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("TaxCode")), CVar(CLng(6)), CVar(CLng(var_96)), var_1CC, var_E4)) 'String
  loc_1695382:         LateIdCallSt
  loc_16953CD:         var_E4 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("TaxName")), CVar(CLng(7)), CVar(CLng(var_96)), var_1CC, var_E4)) 'String
  loc_16953D4:         LateIdCallSt
  loc_169540C:         Proc_6_39_E7D3A0(var_E4, CVar(var_90.Fields.Item("BaseAmt")), var_1CC, var_E4, Fgrid.DispID_2E)
  loc_1695415:         var_F4 = CVar(CLng(var_96)) 'Long
  loc_169541D:         var_134 = CVar(CLng(8)) 'Long
  loc_169544D:         LateIdCallSt
  loc_169548B:         Proc_6_39_E7D3A0(var_E4, CVar(var_90.Fields.Item("TaxPer")), var_1CC, CVar(CStr(Format(var_E4, "0.00"))), 1, 1)
  loc_1695494:         var_F4 = CVar(CLng(var_96)) 'Long
  loc_16954CC:         LateIdCallSt
  loc_16954FB:         var_B4 = var_90.Fields.Item("TaxAmt")
  loc_169550A:         Proc_6_39_E7D3A0(var_E4, CVar(var_B4), var_1CC, CVar(CStr(Format(var_E4, "0.00"))), 1, 1, CVar(CLng(9)))
  loc_1695513:         var_F4 = CVar(CLng(var_96)) 'Long
  loc_169551B:         var_134 = CVar(CLng(&HA)) 'Long
  loc_1695544:         var_144 = CVar(CStr(Format(var_E4, "0.00"))) 'String
  loc_169554B:         LateIdCallSt
  loc_1695565:         Set var_1CC = Nothing 
  loc_169556F:         var_96 = (var_96 + 1)
  loc_1695575:         var_90.MoveNext
  loc_169557A:         GoTo loc_1695106
  loc_169557D:       End If
  loc_169557D:     End If
  loc_169557D:     var_B0 = 0
  loc_1695587:     Set var_A0 = Me.FGCat
  loc_16955B4:     If (CLng(Me.FGCat.Rows) = 1) Then
  loc_16955B7:       var_B0 = vbNullString
  loc_16955C1:       Set var_A0 = Me.FGCat
  loc_16955D2:     End If
  loc_16955D2:     var_B0 = 1
  loc_16955E5:     Me.FGCat.FixedRows = var_B0
  loc_16955ED:   End If
  loc_1695601:   If (var_94.RecordCount > 0) Then
  loc_1695606:     var_96 = 1
  loc_1695609:     ' Referenced from: 1695D02
  loc_169560F:     var_1B2 = var_94.EOF
  loc_1695618:     If Not(var_1B2) Then
  loc_1695625:       Set var_A0 = Me.LblDummy
  loc_169562B:       Call 0.Method_Proc_281_44_1695D3C8 (var_1B2, var_96, var_96, FGCat.DispID_10000, var_B0, FGCat.DispID_2E, var_B0)
  loc_1695637:       If (var_96 > var_1B2) Then
  loc_1695644:         Set var_A0 = Me.LblDummy
  loc_169564A:         Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_B4, var_1CC, var_144)
  loc_169565B:         Me.LblDummy.Load var_B4
  loc_1695673:         Set var_A0 = Me.LblDummy
  loc_1695679:         Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_B4, 0, 1)
  loc_1695681:         var_B4.Visible = True
  loc_169568D:       End If
  loc_1695697:       Set var_A0 = Me.LblCap
  loc_169569D:       Call 0.Method_Proc_281_44_1695D3C8 (var_1B2, var_96)
  loc_16956A9:       If (var_134 > var_1B2) Then
  loc_16956B6:         Set var_A0 = Me.LblCap
  loc_16956BC:         Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_B4)
  loc_16956CD:         Me.LblCap.Load var_B4
  loc_16956E6:         Set var_1AC = Me.LblCap
  loc_16956EC:         Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_1B0)
  loc_1695709:         Set var_A0 = Me.LblCap
  loc_169570F:         Call 0.Method_Proc_281_44_1695D3C0 ((var_96 - 1), var_B4)
  loc_1695732:         Set var_1D4 = Me.LblCap
  loc_1695738:         Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_1D8)
  loc_1695740:         var_1D8.Top = ((var_B4.Top + var_1B0.Height) + CDbl(&HF))
  loc_1695754:       End If
  loc_169575E:       Set var_A0 = Me.TxtGt
  loc_1695764:       Call 0.Method_Proc_281_44_1695D3C8 (var_1B2, var_96)
  loc_1695770:       If (var_F4 > var_1B2) Then
  loc_169577D:         Set var_A0 = Me.TxtGt
  loc_1695783:         Call 0.Method_Proc_281_44_1695D3C0 (var_96)
  loc_1695794:         Me.TxtGt.Load var_B4
  loc_16957AD:         Set var_1AC = Me.TxtGt
  loc_16957B3:         Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_1B0)
  loc_16957D0:         Set var_A0 = Me.TxtGt
  loc_16957D6:         Call 0.Method_Proc_281_44_1695D3C0 ((var_96 - 1), var_B4)
  loc_16957F9:         Set var_1D4 = Me.TxtGt
  loc_16957FF:         Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_1D8)
  loc_1695807:         var_1D8.Top = ((var_B4.Top + var_1B0.Height) + CDbl(&HF))
  loc_169581B:       End If
  loc_169585F:       If (Proc_6_38_E69628(CVar(var_94.Fields.Item("SunCode"))) = MemVar_1F95070 & "TOT") Then
  loc_1695879:         var_B4 = var_94.Fields.Item("SunCode")
  loc_1695897:         Set var_1AC = Me.LblCap
  loc_169589D:         Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_1B0)
  loc_16958A5:         var_1B0.Tag = Proc_6_38_E69628(CVar(var_B4))
  loc_16958E7:         Set var_A0 = Me.LblCap
  loc_16958ED:         Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_B4)
  loc_16958F5:         var_B4.Caption = CStr(StrConv("Total", 3, 0))
  loc_169596A:         Set var_1AC = Me.TxtGt
  loc_1695970:         Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_1B0, CStr(Format(CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("SunAmt")))), "0.00")))
  loc_1695978:         var_1B0.Text = 1
  loc_169599B:       Else
  loc_16959DF:         If (Proc_6_38_E69628(CVar(var_94.Fields.Item("SunCode")), 1) = MemVar_1F95070 & "NET") Then
  loc_16959F9:           var_B4 = var_94.Fields.Item("SunCode")
  loc_1695A17:           Set var_1AC = Me.LblCap
  loc_1695A1D:           Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_1B0)
  loc_1695A25:           var_1B0.Tag = Proc_6_38_E69628(CVar(var_B4))
  loc_1695A67:           Set var_A0 = Me.LblCap
  loc_1695A6D:           Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_B4)
  loc_1695A75:           var_B4.Caption = CStr(StrConv("Net Amount", 3, 0))
  loc_1695AEA:           Set var_1AC = Me.TxtGt
  loc_1695AF0:           Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_1B0, CStr(Format(CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("SunAmt")))), "0.00")))
  loc_1695AF8:           var_1B0.Text = 1
  loc_1695B1B:         Else
  loc_1695B50:           Set var_1AC = Me.LblCap
  loc_1695B56:           Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_1B0)
  loc_1695B5E:           var_1B0.Tag = Proc_6_38_E69628(CVar(var_94.Fields.Item("SunCode")), 1)
  loc_1695BC6:           Set var_1AC = Me.LblCap
  loc_1695BCC:           Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_1B0)
  loc_1695BD4:           var_1B0.Caption = CStr(StrConv(CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("SunName")))), 3, 0))
  loc_1695C09:           var_B4 = var_94.Fields.Item("SunAmt")
  loc_1695C51:           Set var_1AC = Me.TxtGt
  loc_1695C57:           Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_1B0, CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B4))), "0.00")))
  loc_1695C5F:           var_1B0.Text = 1
  loc_1695C7F:         End If
  loc_1695C7F:       End If
  loc_1695C8B:       Set var_A0 = Me.LblDummy
  loc_1695C91:       Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_B4, 0)
  loc_1695C99:       var_B4.Visible = True
  loc_1695CB1:       Set var_A0 = Me.LblCap
  loc_1695CB7:       Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_B4)
  loc_1695CBF:       var_B4.Visible = True
  loc_1695CD7:       Set var_A0 = Me.TxtGt
  loc_1695CDD:       Call 0.Method_Proc_281_44_1695D3C0 (var_96, var_B4)
  loc_1695CE5:       var_B4.Visible = True
  loc_1695CF7:       var_96 = (var_96 + 1)
  loc_1695CFD:       var_94.MoveNext
  loc_1695D02:       GoTo loc_1695609
  loc_1695D05:     End If
  loc_1695D05:   End If
  loc_1695D08: Else
  loc_1695D08:   Call Proc_281_50_1027970(var_96)
  loc_1695D0D: End If
  loc_1695D0D: Call Proc_281_54_EF93BC(var_B4)
  loc_1695D17: Set var_88 = Nothing
  loc_1695D1F: Set var_8C = Nothing
  loc_1695D27: Set var_90 = Nothing
  loc_1695D2F: Set var_94 = Nothing
  loc_1695D32: Exit Sub
  loc_1695D33: ' Referenced from: 16944E8
  loc_1695D33: Proc_6_60_E63754()
  loc_1695D38: Exit Sub
End Sub

Public Sub Proc_281_45_1427B20
  'Data Table: 537E2C
  Dim var_9C As String
  Dim var_AC As Variant
  Dim var_B8 As String
  Dim unk_537E46 As Connection15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_88 As Recordset15
  Dim var_8E As Integer
  Dim var_E0 As Variant
  Dim var_DC As Variant
  Dim var_B0 As String
  Dim var_8C As Recordset15
  Dim var_F0 As Variant
  Dim var_98 As Double
  Dim var_15C As Variant
  Dim var_118 As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_1BC As Variant
  loc_14270B4: var_9C = "Select MR.Code,MR.Description,M.Nature,M.Appdate,M.Amount,MR.AcountYN,MR.AcCode,MR.ACPosting,MR.TaxStru from (MemRevWise M Left Join MembershipRevMast MR on M.Revcode=MR.code) Where MR.Site_Code='" & MemVar_1F95070
  loc_14270DA: Set var_A8 = Me.Txt
  loc_14270E0: Call 0.Method_Proc_281_45_1427B200 (CInt(0), var_AC, var_B0, var_9C & "' and (MR.LOGSITE_CODE='" & MemVar_1F95078 & "' or MR.LOGSITE_CODE='HO') and M.MemCode='")
  loc_14270E8: var_DC = var_AC.Tag
  loc_14270F1: var_B8 = -1 & var_B0
  loc_1427101: unk_537E46.Execute var_B8 & "'", var_E0, 
  loc_142710C: Set var_88 = var_E0
  loc_142712C: Call Proc_281_50_1027970()
  loc_1427136: var_9C = CStr(MemVar_1F950EC)
  loc_1427144: Set var_A8 = Me.Txt
  loc_142714A: Call 0.Method_Proc_281_45_1427B200 (CInt(&H22), var_AC)
  loc_1427152: var_AC.Text = var_9C
  loc_1427167: Call Proc_281_41_10F2090(MemVar_1F95044)
  loc_142717A: Set var_A8 = Me.Txt
  loc_1427180: Call 0.Method_Proc_281_45_1427B200 (CInt(&H1F), var_AC)
  loc_1427188: var_AC.Text = var_9C
  loc_14271A6: Me.Fgrid.Redraw = False
  loc_14271C1: Me.Fgrid.Rows = 1
  loc_14271DD: If (var_88.RecordCount > 0) Then
  loc_14271E2:   var_8E = 1
  loc_14271E5:   ' Referenced from: 1427AA1
  loc_14271F4:   If Not(var_88.EOF) Then
  loc_1427215:     Set var_A8 = Me.Txt
  loc_142721B:     Call 0.Method_Proc_281_45_1427B200 (CInt(0), var_AC, var_9C, "Select max(ToPeriod) ToPeriod from MemBill1 Inner Join MemBill On MemBill.DocId=MemBill1.DocId where MemBill.MemCode='", var_118)
  loc_1427223:     -1 = var_AC.Tag
  loc_1427269:     var_B8 = var_8E & Proc_6_38_E69628(CVar(var_88.Fields.Item("Code")), var_11C & var_9C & "' And MemBill1.FacilityCode='") & "' and MemBill1.Site_Code='"
  loc_142728E:     unk_537E46.Execute var_B8 & MemVar_1F95070 & "' and (MemBill1.LOGSITE_CODE='" & MemVar_1F95078 & "' or MemBill1.LOGSITE_CODE='HO')", var_9C, 
  loc_1427299:     Set var_8C = var_11C
  loc_14272F3:     If IsNull(CVar(var_8C.Fields.Item("ToPeriod"))) Then
  loc_1427347:       Me.TxtFrPeriod.Text = CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/MMM/YYYY"))
  loc_1427362:     Else
  loc_14273CA:       If (var_8C.Fields.Item("ToPeriod").Value < var_88.Fields.Item("AppDate").Value) Then
  loc_142741E:         Me.TxtFrPeriod.Text = CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/MMM/YYYY"))
  loc_1427439:       Else
  loc_1427466:         var_118 = DateAdd("d", CDbl(1), CVar(var_8C.Fields.Item("ToPeriod")))
  loc_142748E:         var_9C = CStr(Format(var_118, "dd/MMM/YYYY"))
  loc_142749C:         Me.TxtFrPeriod.Text = var_9C
  loc_14274B6:       End If
  loc_14274B6:     End If
  loc_14274DC:     Proc_6_39_E7D3A0(var_118, CVar(var_88.Fields.Item("Amount")), 1, 1)
  loc_14274E5:     var_98 = CSng(var_118)
  loc_14274F9:     If (var_98 <> CDbl(0)) Then
  loc_1427501:       var_DC = CVar(CStr(var_8E)) 'String
  loc_1427509:       Set var_A8 = Me.Fgrid
  loc_1427556:       var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Description")), CVar(CLng(1)), CVar(CLng(var_8E)), Fgrid.DispID_10000, CVar(var_88.Fields.Item("Description")))) 'String
  loc_142755E:       Set var_E0 = Me.Fgrid
  loc_1427564:       LateIdCallSt
  loc_142757E:       var_14C = CVar(CLng(var_8E)) 'Long
  loc_1427586:       var_16C = CVar(CLng(2)) 'Long
  loc_14275B4:       var_12C = CVar(CStr(Format(var_98, "0.00"))) 'String
  loc_14275BC:       Set var_A8 = Me.Fgrid
  loc_14275C2:       LateIdCallSt
  loc_14275E1:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_14275E9:       var_15C = CVar(CLng(3)) 'Long
  loc_1427616:       var_13C = CVar(CStr(Format(CVar(Me.TxtFrPeriod), "dd/MMM/YYYY"))) 'String
  loc_142761E:       Set var_A8 = Me.Fgrid
  loc_1427624:       LateIdCallSt
  loc_1427659:       var_14C = CVar(CLng(var_8E)) 'Long
  loc_1427661:       var_16C = CVar(CLng(5)) 'Long
  loc_1427683:       var_12C = (DateAdd("m", CDbl(1), CVar(Me.TxtFrPeriod)) - 1)
  loc_142769A:       var_1BC = CVar(CStr(Format(Format(CVar(Me.TxtFrPeriod), "dd/MMM/YYYY"), "dd/MMM/YYYY"))) 'String
  loc_14276A2:       Set var_A8 = Me.Fgrid
  loc_14276A8:       LateIdCallSt
  loc_1427703:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_142770B:       var_15C = CVar(CLng(4)) 'Long
  loc_1427734:       var_1BC = CVar(CStr(Format(DateDiff("d", CVar(Me.TxtFrPeriod), DateAdd("m", CDbl(1), CVar(Me.TxtFrPeriod)), 1, 1), "0"))) 'String
  loc_142773C:       Set var_A8 = Me.Fgrid
  loc_1427742:       LateIdCallSt
  loc_1427782:       var_A8 = var_88.Fields
  loc_142779B:       var_118 = CVar(Proc_6_38_E69628(CVar(var_A8.Item("AcCode")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_A8, var_1BC, 1, 1)) 'String
  loc_14277A9:       LateIdCallSt
  loc_14277F8:       var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ACPosting")), CVar(CLng(&HE)), CVar(CLng(var_8E)), Me.Fgrid, var_118, CVar(CLng(&HE)))) 'String
  loc_1427806:       LateIdCallSt
  loc_1427844:       var_AC = var_88.Fields.Item("AcountYN")
  loc_1427855:       var_118 = CVar(Proc_6_38_E69628(CVar(var_AC), CVar(CLng(&HF)), CVar(CLng(var_8E)), Me.Fgrid, var_118)) 'String
  loc_1427863:       LateIdCallSt
  loc_1427898:       Set var_A8 = Me.Txt
  loc_142789E:       Call 0.Method_Proc_281_45_1427B200 (CInt(&H1F), var_AC, var_9C, CVar(CLng(6)), CVar(CLng(var_8E)), Me.Fgrid)
  loc_14278A6:       var_118 = var_AC.Text
  loc_14278AE:       var_DC = CVar(var_9C) 'String
  loc_14278BC:       LateIdCallSt
  loc_14278EF:       Set var_A8 = Me.Txt
  loc_14278F5:       Call 0.Method_Proc_281_45_1427B200 (CInt(&H20), var_AC, var_9C, CVar(CLng(7)), CVar(CLng(var_8E)), Me.Fgrid)
  loc_14278FD:       var_DC = var_AC.Text
  loc_1427905:       var_DC = CVar(var_9C) 'String
  loc_142790D:       Set var_E0 = Me.Fgrid
  loc_1427913:       LateIdCallSt
  loc_142792B:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1427942:       Set var_A8 = Me.Fgrid
  loc_1427948:       LateIdCallSt
  loc_1427967:       var_CC = "Code"
  loc_1427973:       var_A8 = var_88.Fields
  loc_142798C:       var_118 = CVar(Proc_6_38_E69628(CVar(var_A8.Item(var_CC)), CVar(CLng(&HA)), CVar(CLng(var_8E)), var_A8, vbNullString, CVar(CLng(&H10)), var_CC)) 'String
  loc_142799A:       LateIdCallSt
  loc_14279D8:       var_AC = var_88.Fields.Item("TaxStru")
  loc_14279E9:       var_118 = CVar(Proc_6_38_E69628(CVar(var_AC), CVar(CLng(&HB)), CVar(CLng(var_8E)), Me.Fgrid, var_118, Me.Fgrid)) 'String
  loc_14279F7:       LateIdCallSt
  loc_1427A2C:       Set var_A8 = Me.Txt
  loc_1427A32:       Call 0.Method_Proc_281_45_1427B200 (CInt(&H21), var_AC, var_9C, CVar(CLng(8)), CVar(CLng(var_8E)), Me.Fgrid)
  loc_1427A3A:       var_118 = var_AC.Text
  loc_1427A42:       var_DC = CVar(var_9C) 'String
  loc_1427A4A:       Set var_E0 = Me.Fgrid
  loc_1427A50:       LateIdCallSt
  loc_1427A68:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1427A70:       var_14C = CVar(CLng(9)) 'Long
  loc_1427A75:       var_16C = "Revenue"
  loc_1427A7F:       Set var_A8 = Me.Fgrid
  loc_1427A85:       LateIdCallSt
  loc_1427A96:       var_8E = (var_8E + 1)
  loc_1427A99:     End If
  loc_1427A9C:     var_88.MoveNext
  loc_1427AA1:     GoTo loc_14271E5
  loc_1427AA4:   End If
  loc_1427AA4: End If
  loc_1427AC3: If (CLng(Me.Fgrid.Rows) = 1) Then
  loc_1427AC6:   var_CC = "1"
  loc_1427AD0:   Set var_A8 = Me.Fgrid
  loc_1427AE1: End If
  loc_1427AF4: Me.Fgrid.FixedRows = 1
  loc_1427AFC: var_CC = True
  loc_1427B04: Set var_A8 = Me.Fgrid
  loc_1427B0A: var_A8.Redraw = var_CC
  loc_1427B12: Call Proc_281_42_1534ED0(Fgrid.DispID_10000, var_CC, var_8E, var_A8, var_16C, var_14C, var_CC)
  loc_1427B1C: Set var_88 = Nothing
  loc_1427B1F: Exit Sub
End Sub

Public Sub Proc_281_46_DFBD64
  'Data Table: 537E2C
  loc_DFBD60: Exit Sub
End Sub

Public Sub Proc_281_47_DFBCC8
  'Data Table: 537E2C
  loc_DFBCC4: Exit Sub
End Sub

Public Sub Proc_281_48_10C5D08
  'Data Table: 537E2C
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As Variant
  Dim var_110 As Variant
  loc_10C5A22: Set var_8C = Me.Txt
  loc_10C5A28: Call 0.Method_Proc_281_48_10C5D08C (var_8E, var_86)
  loc_10C5A38: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10C5A4E:   Set var_8C = Me.Txt
  loc_10C5A54:   Call 0.Method_Proc_281_48_10C5D080 (CInt(var_86), var_98)
  loc_10C5A5C:   var_98.Text = vbNullString
  loc_10C5A78:   Set var_8C = Me.Txt
  loc_10C5A7E:   Call 0.Method_Proc_281_48_10C5D080 (CInt(var_86), var_98)
  loc_10C5A86:   var_98.Tag = vbNullString
  loc_10C5A95: Next var_92 'Byte
  loc_10C5AB9: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_10C5ACE: Me.ImgMemPhoto.Picture = var_8C
  loc_10C5AE7: Me.ImgMemPhoto.Tag = vbNullString
  loc_10C5AFB: Me.ImgMemPhoto.Visible = True
  loc_10C5B10: Me.LblOpBalType.Caption = vbNullString
  loc_10C5B25: Me.LblCurBalType.Caption = vbNullString
  loc_10C5B3A: Me.txtCurrBal.Text = vbNullString
  loc_10C5B51: Me.txtCurrBal.BackColor = -2147483643
  loc_10C5B68: Me.txtCurrBal.ForeColor = &HC00000
  loc_10C5B84: Call 0.Method_Proc_281_48_10C5D088 (var_8E, var_86)
  loc_10C5B91: For var_F0 = Me.LblCap To CByte(var_8E): CByte(2) = var_F0 'Byte
  loc_10C5BA4:   Set var_8C = Me.LblCap
  loc_10C5BAA:   Call 0.Method_Proc_281_48_10C5D080 (CInt(var_86), var_98)
  loc_10C5BBB:   Me.LblCap.Unload var_98
  loc_10C5BD4:   Set var_8C = Me.TxtGt
  loc_10C5BDA:   Call 0.Method_Proc_281_48_10C5D080 (CInt(var_86), var_98)
  loc_10C5BEB:   Me.TxtGt.Unload var_98
  loc_10C5BFA: Next var_F0 'Byte
  loc_10C5C0C: Set var_8C = Me.TxtGt
  loc_10C5C12: Call 0.Method_Proc_281_48_10C5D080 (1, var_98)
  loc_10C5C1A: var_98.Text = vbNullString
  loc_10C5C39: Me.Fgrid.Rows = 1
  loc_10C5C56: var_110 = CVar(CStr(CLng(Me.Fgrid.Rows))) 'String
  loc_10C5C5E: Set var_98 = Me.Fgrid
  loc_10C5C8D: Me.Fgrid.FixedRows = 1
  loc_10C5CA8: Me.FGCat.Rows = 1
  loc_10C5CC5: var_110 = CVar(CStr(CLng(Me.FGCat.Rows))) 'String
  loc_10C5CCD: Set var_98 = Me.FGCat
  loc_10C5CFC: Me.FGCat.FixedRows = 1
  loc_10C5D04: Exit Sub
End Sub

Public Sub Proc_281_49_F1315C
  'Data Table: 537E2C
  Dim var_98 As TextBox
  loc_F1306E: Set var_8C = Me.Txt
  loc_F13074: Call 0.Method_Proc_281_49_F1315CC (var_8E, var_86)
  loc_F13084: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F13099:   Set var_8C = Me.Txt
  loc_F1309F:   Call 0.Method_Proc_281_49_F1315C0 (CInt(var_86), var_98)
  loc_F130A7:   var_98.Enabled = False
  loc_F130B6: Next var_92 'Byte
  loc_F130C9: Set var_8C = Me.Txt
  loc_F130CF: Call 0.Method_Proc_281_49_F1315C0 (CInt(&H1F), var_98)
  loc_F130D7: var_98.Enabled = False
  loc_F130F0: Set var_8C = Me.Txt
  loc_F130F6: Call 0.Method_Proc_281_49_F1315C0 (CInt(&H20), var_98)
  loc_F130FE: var_98.Enabled = False
  loc_F13117: Set var_8C = Me.Txt
  loc_F1311D: Call 0.Method_Proc_281_49_F1315C0 (CInt(&H21), var_98)
  loc_F13125: var_98.Enabled = False
  loc_F1313E: Set var_8C = Me.Txt
  loc_F13144: Call 0.Method_Proc_281_49_F1315C0 (CInt(&H22), var_98)
  loc_F1314C: var_98.Enabled = False
  loc_F13158: Exit Sub
End Sub

Public Sub Proc_281_50_1027970
  'Data Table: 537E2C
  Dim var_90 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_DC As Variant
  Dim arg_61FF As Double
  loc_1027746: Set var_8C = Me.Txt
  loc_102774C: Call 0.Method_Proc_281_50_10279700 (CInt(&H1F), var_90)
  loc_1027754: var_90.Text = vbNullString
  loc_102776E: Set var_8C = Me.Txt
  loc_1027774: Call 0.Method_Proc_281_50_10279700 (CInt(&H20), var_90)
  loc_102777C: var_90.Text = vbNullString
  loc_1027796: Set var_8C = Me.Txt
  loc_102779C: Call 0.Method_Proc_281_50_10279700 (CInt(&H21), var_90)
  loc_10277A4: var_90.Text = vbNullString
  loc_10277BE: Set var_8C = Me.Txt
  loc_10277C4: Call 0.Method_Proc_281_50_10279700 (CInt(&H22), var_90)
  loc_10277CC: var_90.Text = vbNullString
  loc_10277E6: Set var_8C = Me.LblCap
  loc_10277EC: Call 0.Method_Proc_281_50_10279708 (var_92, var_86)
  loc_10277F9: For var_96 =  To CByte(var_92): CByte(2) = var_96 'Byte
  loc_102780C:   Set var_8C = Me.LblCap
  loc_1027812:   Call 0.Method_Proc_281_50_10279700 (CInt(var_86))
  loc_1027823:   Me.LblCap.Unload var_90
  loc_102783C:   Set var_8C = Me.TxtGt
  loc_1027842:   Call 0.Method_Proc_281_50_10279700 (CInt(var_86), var_90)
  loc_1027853:   Me.TxtGt.Unload var_90
  loc_1027862: Next var_96 'Byte
  loc_1027874: Set var_8C = Me.TxtGt
  loc_102787A: Call 0.Method_Proc_281_50_10279700 (1, var_90)
  loc_1027882: var_90.Text = vbNullString
  loc_10278A1: Me.Fgrid.Rows = 1
  loc_10278BE: var_DC = CVar(CStr(CLng(Me.Fgrid.Rows))) 'String
  loc_10278C6: Set var_90 = Me.Fgrid
  loc_10278F5: Me.Fgrid.FixedRows = 1
  loc_1027910: Me.FGCat.Rows = 1
  loc_102792D: var_DC = CVar(CStr(CLng(Me.FGCat.Rows))) 'String
  loc_1027935: Set var_90 = Me.FGCat
  loc_1027964: Me.FGCat.FixedRows = 1
  loc_102796C: Exit Sub
  loc_102796D: arg_61FF = FGCat.DispID_10000
End Sub

Public Sub Proc_281_51_125E970
  'Data Table: 537E2C
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  Dim var_100 As MSHFlexGrid
  loc_125E3EC: Set var_88 = Me.Fgrid
  loc_125E3FB: var_88.Width = CVar(CDbl(8400))
  loc_125E40C: var_88.Cols = &H11
  loc_125E41D: var_88.Rows = 2
  loc_125E42E: var_88.FixedCols = 1
  loc_125E447: global_52 = CStr(CLng(var_88.BackColor))
  loc_125E451: var_98 = 0
  loc_125E45D: var_CC = CVar(CLng(0)) 'Long
  loc_125E462: var_EC = "SNo"
  loc_125E46B: LateIdCallSt
  loc_125E476: var_98 = CVar(CLng(0)) 'Long
  loc_125E47B: var_CC = &H1F4
  loc_125E487: LateIdCallSt
  loc_125E48F: var_98 = 0
  loc_125E49B: var_CC = CVar(CLng(1)) 'Long
  loc_125E4A0: var_EC = "Description"
  loc_125E4A9: LateIdCallSt
  loc_125E4B4: var_98 = CVar(CLng(1)) 'Long
  loc_125E4B9: var_CC = &HDAC
  loc_125E4C5: LateIdCallSt
  loc_125E4CD: var_98 = 0
  loc_125E4D9: var_CC = CVar(CLng(2)) 'Long
  loc_125E4DE: var_EC = "Amount"
  loc_125E4E7: LateIdCallSt
  loc_125E4F2: var_98 = CVar(CLng(2)) 'Long
  loc_125E4F7: var_CC = &H4B0
  loc_125E503: LateIdCallSt
  loc_125E50E: var_98 = CVar(CLng(2)) 'Long
  loc_125E519: var_CC = CVar(CInt(7)) 'Integer
  loc_125E520: LateIdCallSt
  loc_125E52B: var_98 = CVar(CLng(2)) 'Long
  loc_125E536: var_CC = CVar(CInt(7)) 'Integer
  loc_125E53D: LateIdCallSt
  loc_125E545: var_98 = 0
  loc_125E551: var_CC = CVar(CLng(3)) 'Long
  loc_125E556: var_EC = "Date From"
  loc_125E55F: LateIdCallSt
  loc_125E56A: var_98 = CVar(CLng(3)) 'Long
  loc_125E56F: var_CC = &H4B0
  loc_125E57B: LateIdCallSt
  loc_125E586: var_98 = CVar(CLng(3)) 'Long
  loc_125E591: var_CC = CVar(CInt(1)) 'Integer
  loc_125E598: LateIdCallSt
  loc_125E5A0: var_98 = 0
  loc_125E5AC: var_CC = CVar(CLng(4)) 'Long
  loc_125E5B1: var_EC = "Days"
  loc_125E5BA: LateIdCallSt
  loc_125E5C5: var_98 = CVar(CLng(4)) 'Long
  loc_125E5CA: var_CC = &H2BC
  loc_125E5D6: LateIdCallSt
  loc_125E5E1: var_98 = CVar(CLng(4)) 'Long
  loc_125E5EC: var_CC = CVar(CInt(4)) 'Integer
  loc_125E5F3: LateIdCallSt
  loc_125E5FE: var_98 = CVar(CLng(4)) 'Long
  loc_125E609: var_CC = CVar(CInt(4)) 'Integer
  loc_125E610: LateIdCallSt
  loc_125E618: var_98 = 0
  loc_125E624: var_CC = CVar(CLng(5)) 'Long
  loc_125E629: var_EC = "Date To"
  loc_125E632: LateIdCallSt
  loc_125E63D: var_98 = CVar(CLng(5)) 'Long
  loc_125E642: var_CC = &H4B0
  loc_125E64E: LateIdCallSt
  loc_125E659: var_98 = CVar(CLng(5)) 'Long
  loc_125E664: var_CC = CVar(CInt(1)) 'Integer
  loc_125E66B: LateIdCallSt
  loc_125E673: var_98 = 0
  loc_125E67F: var_CC = CVar(CLng(6)) 'Long
  loc_125E684: var_EC = "Docid"
  loc_125E68D: LateIdCallSt
  loc_125E698: var_98 = CVar(CLng(6)) 'Long
  loc_125E69D: var_CC = 0
  loc_125E6A9: LateIdCallSt
  loc_125E6B1: var_98 = 0
  loc_125E6BD: var_CC = CVar(CLng(7)) 'Long
  loc_125E6C2: var_EC = "Bill No"
  loc_125E6CB: LateIdCallSt
  loc_125E6D6: var_98 = CVar(CLng(7)) 'Long
  loc_125E6DB: var_CC = 0
  loc_125E6E7: LateIdCallSt
  loc_125E6EF: var_98 = 0
  loc_125E6FB: var_CC = CVar(CLng(8)) 'Long
  loc_125E700: var_EC = "VType"
  loc_125E709: LateIdCallSt
  loc_125E714: var_98 = CVar(CLng(8)) 'Long
  loc_125E719: var_CC = 0
  loc_125E725: LateIdCallSt
  loc_125E72D: var_98 = 0
  loc_125E739: var_CC = CVar(CLng(9)) 'Long
  loc_125E73E: var_EC = "Type"
  loc_125E747: LateIdCallSt
  loc_125E752: var_98 = CVar(CLng(9)) 'Long
  loc_125E757: var_CC = 0
  loc_125E763: LateIdCallSt
  loc_125E76B: var_98 = 0
  loc_125E777: var_CC = CVar(CLng(&HA)) 'Long
  loc_125E77C: var_EC = "FacilityCode"
  loc_125E785: LateIdCallSt
  loc_125E790: var_98 = CVar(CLng(&HA)) 'Long
  loc_125E795: var_CC = 0
  loc_125E7A1: LateIdCallSt
  loc_125E7A9: var_98 = 0
  loc_125E7B5: var_CC = CVar(CLng(&HB)) 'Long
  loc_125E7BA: var_EC = "TaxStruCode"
  loc_125E7C3: LateIdCallSt
  loc_125E7CE: var_98 = CVar(CLng(&HB)) 'Long
  loc_125E7D3: var_CC = 0
  loc_125E7DF: LateIdCallSt
  loc_125E7E7: var_98 = 0
  loc_125E7F3: var_CC = CVar(CLng(&HC)) 'Long
  loc_125E7F8: var_EC = "AcCode"
  loc_125E801: LateIdCallSt
  loc_125E80C: var_98 = CVar(CLng(&HC)) 'Long
  loc_125E811: var_CC = 0
  loc_125E81D: LateIdCallSt
  loc_125E825: var_98 = 0
  loc_125E831: var_CC = CVar(CLng(&HD)) 'Long
  loc_125E836: var_EC = "Tax Amt"
  loc_125E83F: LateIdCallSt
  loc_125E84A: var_98 = CVar(CLng(&HD)) 'Long
  loc_125E84F: var_CC = 0
  loc_125E85B: LateIdCallSt
  loc_125E863: var_98 = 0
  loc_125E86F: var_CC = CVar(CLng(&HE)) 'Long
  loc_125E874: var_EC = "AcPosting"
  loc_125E87D: LateIdCallSt
  loc_125E888: var_98 = CVar(CLng(&HE)) 'Long
  loc_125E88D: var_CC = 0
  loc_125E899: LateIdCallSt
  loc_125E8A1: var_98 = 0
  loc_125E8AD: var_CC = CVar(CLng(&HF)) 'Long
  loc_125E8B2: var_EC = "AcPostingYN"
  loc_125E8BB: LateIdCallSt
  loc_125E8C6: var_98 = CVar(CLng(&HF)) 'Long
  loc_125E8CB: var_CC = 0
  loc_125E8D7: LateIdCallSt
  loc_125E8DF: var_98 = 0
  loc_125E8EB: var_CC = CVar(CLng(&H10)) 'Long
  loc_125E8F0: var_EC = "OutletCode"
  loc_125E8F9: LateIdCallSt
  loc_125E904: var_98 = CVar(CLng(&H10)) 'Long
  loc_125E909: var_CC = 0
  loc_125E915: LateIdCallSt
  loc_125E929: var_88.FixedRows = 1
  loc_125E930: Set var_88 = Nothing 
  loc_125E93E: var_98 = CVar(CLng(7)) 'Long
  loc_125E943: var_CC = &H7D0
  loc_125E94F: LateIdCallSt
  loc_125E963: Me.FGCat.Cols = &HB
  loc_125E96A: Set var_100 = Nothing 
  loc_125E96E: Exit Sub
End Sub

Public Sub Proc_281_52_E45090
  'Data Table: 537E2C
  loc_E4506C: Set var_88 = Me.TopCtrl1
  loc_E45072: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4508B: If (CStr() = "Browse") Then
  loc_E4508E:   Exit Sub
  loc_E4508F: End If
  loc_E4508F: Exit Sub
End Sub

Public Sub Proc_281_53_1653D90
  'Data Table: 537E2C
  Dim var_9E As Integer
  Dim var_A8 As Variant
  Dim var_B0 As String
  Dim var_B4 As String
  Dim unk_537E46 As Connection15
  Dim var_88 As Recordset15
  Dim var_D8 As Variant
  Dim var_E4 As Variant
  Dim var_D4 As Variant
  Dim var_118 As Variant
  Dim var_94 As Double
  Dim var_15C As Label
  Dim var_11C As Variant
  Dim var_124 As Variant
  Dim var_12C As Variant
  Dim var_144 As TextBox
  Dim var_14C As String
  Dim var_120 As Variant
  Dim var_128 As Fields15
  Dim var_1A0 As TextBox
  Dim var_1A8 As TextBox
  Dim var_A4 As Fields15
  Dim var_1A4 As Label
  Dim var_F8 As Variant
  Dim var_224 As Integer
  Dim var_AC As String
  Dim var_1F4 As Variant
  Dim var_E8 As Recordset15
  Dim var_148 As String
  loc_165278E: var_9E = 1
  loc_16527AF: Set var_A4 = Me.Txt
  loc_16527B5: Call 0.Method_Proc_281_53_1653D900 (CInt(&H1F), var_A8, var_AC, "Select Sum(BaseAmt) as BaseAmt  from MemBill1 where Type='Outlet' and Docid='")
  loc_16527BD: var_D4 = var_A8.Text
  loc_16527C6: var_B0 = -1 & var_AC
  loc_16527D6: unk_537E46.Execute var_B0 & "'", var_D8, var_9E
  loc_16527E1: Set var_88 = var_D8
  loc_165280D: If (var_88.RecordCount > 0) Then
  loc_1652817:   Set var_A4 = Me.TxtGt
  loc_165281D:   Call 0.Method_Proc_281_53_1653D908 (var_DE)
  loc_165282F:   Set var_A8 = Me.TxtGt
  loc_1652835:   Call 0.Method_Proc_281_53_1653D900 (var_DE, var_D8)
  loc_165285D:   var_E4 = var_88.Fields
  loc_1652874:   Proc_6_39_E7D3A0(var_F8, CVar(var_E4.Item("BaseAmt")))
  loc_165287C:   var_118 = (CVar(Val(var_D8.Text)) - var_F8)
  loc_1652881:   var_94 = CSng(var_118)
  loc_165289C: Else
  loc_16528A3:   Set var_A4 = Me.TxtGt
  loc_16528A9:   Call 0.Method_Proc_281_53_1653D908 (var_DE)
  loc_16528BB:   Set var_A8 = Me.TxtGt
  loc_16528C1:   Call 0.Method_Proc_281_53_1653D900 (var_DE, var_D8)
  loc_16528D6:   var_94 = Val(var_D8.Text)
  loc_16528E5: End If
  loc_16528F3: Set var_A4 = Me.Txt
  loc_16528F9: Call 0.Method_Proc_281_53_1653D900 (CInt(&H1F), var_A8, var_150)
  loc_1652914: Set var_D8 = Me.Txt
  loc_165291A: Call 0.Method_Proc_281_53_1653D900 (CInt(&H20), var_E4)
  loc_1652922: var_158 = var_E4.Text
  loc_1652947: Set var_E8 = Me.Txt
  loc_165294D: Call 0.Method_Proc_281_53_1653D900 (CInt(&H22), var_11C)
  loc_1652968: Set var_120 = Me.Txt
  loc_165296E: Call 0.Method_Proc_281_53_1653D900 (CInt(0), var_124)
  loc_1652976: var_AC = var_124.Tag
  loc_1652989: Set var_128 = Me.Txt
  loc_165298F: Call 0.Method_Proc_281_53_1653D900 (CInt(&H20), var_12C)
  loc_16529AA: Set var_140 = Me.Txt
  loc_16529B0: Call 0.Method_Proc_281_53_1653D900 (CInt(var_13C), var_144)
  loc_16529B8: var_148 = var_144.Text
  loc_16529CA: var_19C = 0
  loc_16529D5: var_198 = 0
  loc_16529E0: var_194 = 0
  loc_16529E9: var_190 = "A"
  loc_1652A09: var_14C = "Against bill no : " & var_12C.Text & " For "
  loc_1652A17: var_180 = vbNullString
  loc_1652A5B: Proc_6_141_12E23F4(MemVar_1F95044, var_150, var_9E, global_80, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F95070, CDate(var_11C.Text))
  loc_1652AA7: var_9E = (var_9E + 1)
  loc_1652AC8: Set var_A4 = Me.Txt
  loc_1652ACE: Call 0.Method_Proc_281_53_1653D900 (CInt(&H1F), var_A8, var_AC, "Select Sum(TaxAmt) as BaseAmt,max(Accode) as AcCode from MemBILL2 Inner join Revmast on revmast.code=Membill2.TaxCode Where Docid='", Now, -1, var_D8)
  loc_1652AD6: var_9E = var_A8.Text
  loc_1652AEF: unk_537E46.Execute var_AC & var_AC & "' Group By TaxCode", CDbl(0), var_A8.Text
  loc_1652AFA: Set var_88 = var_D8
  loc_1652B12: ' Referenced from: 1652D51
  loc_1652B21: If Not(var_88.EOF) Then
  loc_1652B32:   Set var_A4 = Me.Txt
  loc_1652B38:   Call 0.Method_Proc_281_53_1653D900 (CInt(&H1F), var_A8, var_150)
  loc_1652B40:   var_180 = var_A8.Text
  loc_1652B53:   Set var_D8 = Me.Txt
  loc_1652B59:   Call 0.Method_Proc_281_53_1653D900 (CInt(&H20), var_E4, var_158)
  loc_1652B61:   var_14C & var_148 = var_E4.Text
  loc_1652B86:   Set var_E8 = Me.Txt
  loc_1652B8C:   Call 0.Method_Proc_281_53_1653D900 (CInt(&H22), var_11C)
  loc_1652BBB:   var_F8 = var_88.Fields.Item("AcCode").Value
  loc_1652BE2:   var_118 = var_88.Fields.Item("BaseAmt").Value
  loc_1652BF5:   Set var_140 = Me.Txt
  loc_1652BFB:   Call 0.Method_Proc_281_53_1653D900 (CInt(0), var_144)
  loc_1652C03:   var_AC = var_144.Tag
  loc_1652C16:   Set var_15C = Me.Txt
  loc_1652C1C:   Call 0.Method_Proc_281_53_1653D900 (CInt(&H20), var_1A0)
  loc_1652C37:   Set var_1A4 = Me.Txt
  loc_1652C3D:   Call 0.Method_Proc_281_53_1653D900 (CInt(var_13C), var_1A8)
  loc_1652C45:   var_148 = var_1A8.Text
  loc_1652C4D:   var_D4 = Now
  loc_1652C57:   var_19C = 0
  loc_1652C62:   var_198 = 0
  loc_1652C6D:   var_194 = 0
  loc_1652C76:   var_190 = "A"
  loc_1652C96:   var_14C = "Against bill no : " & var_1A0.Text & " For "
  loc_1652CEC:   Proc_6_141_12E23F4(MemVar_1F95044, var_150, var_9E, global_80, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F95070, CDate(var_11C.Text))
  loc_1652D46:   var_9E = (var_9E + 1)
  loc_1652D4C:   var_88.MoveNext
  loc_1652D51:   GoTo loc_1652B12
  loc_1652D54: End If
  loc_1652D72: Set var_A4 = Me.Txt
  loc_1652D78: Call 0.Method_Proc_281_53_1653D900 (CInt(&H1F), var_A8, var_AC, "Select BaseAmt,MEMBILL1.AcCode,FacilityCode,Name from MemBill1 Left join MemFacilityMast on MemFacilitymast.code=Membill1.Facilitycode where Type='Facility' and Docid='", var_D4, -1, var_D8)
  loc_1652D80: var_9E = var_A8.Text
  loc_1652D99: unk_537E46.Execute CStr(var_F8) & var_AC & "'", CSng(var_118), CDbl(0)
  loc_1652DA4: Set var_88 = var_D8
  loc_1652DBC: ' Referenced from: 1652FFB
  loc_1652DCB: If Not(var_88.EOF) Then
  loc_1652DDC:   Set var_A4 = Me.Txt
  loc_1652DE2:   Call 0.Method_Proc_281_53_1653D900 (CInt(&H1F), var_A8, var_150)
  loc_1652DEA:   var_AC = var_A8.Text
  loc_1652DFD:   Set var_D8 = Me.Txt
  loc_1652E03:   Call 0.Method_Proc_281_53_1653D900 (CInt(&H20), var_E4, var_158)
  loc_1652E0B:   var_14C & var_148 = var_E4.Text
  loc_1652E30:   Set var_E8 = Me.Txt
  loc_1652E36:   Call 0.Method_Proc_281_53_1653D900 (CInt(&H22), var_11C)
  loc_1652E65:   var_F8 = var_88.Fields.Item("AcCode").Value
  loc_1652E8C:   var_118 = var_88.Fields.Item("BaseAmt").Value
  loc_1652E9F:   Set var_140 = Me.Txt
  loc_1652EA5:   Call 0.Method_Proc_281_53_1653D900 (CInt(0), var_144)
  loc_1652EAD:   var_AC = var_144.Tag
  loc_1652EC0:   Set var_15C = Me.Txt
  loc_1652EC6:   Call 0.Method_Proc_281_53_1653D900 (CInt(&H20), var_1A0)
  loc_1652EE1:   Set var_1A4 = Me.Txt
  loc_1652EE7:   Call 0.Method_Proc_281_53_1653D900 (CInt(var_13C), var_1A8)
  loc_1652EEF:   var_148 = var_1A8.Text
  loc_1652EF7:   var_D4 = Now
  loc_1652F01:   var_19C = 0
  loc_1652F0C:   var_198 = 0
  loc_1652F17:   var_194 = 0
  loc_1652F20:   var_190 = "A"
  loc_1652F40:   var_14C = "Against bill no : " & var_1A0.Text & " For "
  loc_1652F96:   Proc_6_141_12E23F4(MemVar_1F95044, var_150, var_9E, global_80, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F95070, CDate(var_11C.Text))
  loc_1652FF0:   var_9E = (var_9E + 1)
  loc_1652FF6:   var_88.MoveNext
  loc_1652FFB:   GoTo loc_1652DBC
  loc_1652FFE: End If
  loc_165301C: Set var_A4 = Me.Txt
  loc_1653022: Call 0.Method_Proc_281_53_1653D900 (CInt(&H1F), var_A8, var_AC, "Select BaseAmt,MEMBILL1.AcCode,FacilityCode from MemBill1 Left join MembershipRevMast on MembershipRevMast.code=Membill1.Facilitycode where Type='Revenue' and Docid='", var_D4, -1, var_D8)
  loc_165302A: var_9E = var_A8.Text
  loc_1653043: unk_537E46.Execute CStr(var_F8) & var_AC & "'", CSng(var_118), CDbl(0)
  loc_165304E: Set var_88 = var_D8
  loc_1653066: ' Referenced from: 16532A5
  loc_1653075: If Not(var_88.EOF) Then
  loc_1653086:   Set var_A4 = Me.Txt
  loc_165308C:   Call 0.Method_Proc_281_53_1653D900 (CInt(&H1F), var_A8, var_150)
  loc_1653094:   var_AC = var_A8.Text
  loc_16530A7:   Set var_D8 = Me.Txt
  loc_16530AD:   Call 0.Method_Proc_281_53_1653D900 (CInt(&H20), var_E4, var_158)
  loc_16530B5:   var_14C & var_148 = var_E4.Text
  loc_16530DA:   Set var_E8 = Me.Txt
  loc_16530E0:   Call 0.Method_Proc_281_53_1653D900 (CInt(&H22), var_11C)
  loc_165310F:   var_F8 = var_88.Fields.Item("AcCode").Value
  loc_165312E:   var_12C = var_88.Fields.Item("BaseAmt")
  loc_1653136:   var_118 = var_12C.Value
  loc_1653149:   Set var_140 = Me.Txt
  loc_165314F:   Call 0.Method_Proc_281_53_1653D900 (CInt(0), var_144)
  loc_1653157:   var_AC = var_144.Tag
  loc_165316A:   Set var_15C = Me.Txt
  loc_1653170:   Call 0.Method_Proc_281_53_1653D900 (CInt(&H20), var_1A0)
  loc_165318B:   Set var_1A4 = Me.Txt
  loc_1653191:   Call 0.Method_Proc_281_53_1653D900 (CInt(var_13C), var_1A8)
  loc_1653199:   var_148 = var_1A8.Text
  loc_16531A1:   var_D4 = Now
  loc_16531AB:   var_19C = 0
  loc_16531B6:   var_198 = 0
  loc_16531C1:   var_194 = 0
  loc_16531CA:   var_190 = "A"
  loc_16531EA:   var_14C = "Against bill no : " & var_1A0.Text & " For "
  loc_1653240:   Proc_6_141_12E23F4(MemVar_1F95044, var_150, var_9E, global_80, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F95070, CDate(var_11C.Text))
  loc_165329A:   var_9E = (var_9E + 1)
  loc_16532A0:   var_88.MoveNext
  loc_16532A5:   GoTo loc_1653066
  loc_16532A8: End If
  loc_16532C6: Set var_A4 = Me.Txt
  loc_16532CC: Call 0.Method_Proc_281_53_1653D900 (CInt(&H1F), var_A8, var_AC, "Select IsNull(RoundOff,0) As RoundOff,MemBill.MemCode from MemBill Left join SubGroup on SubGroup.SubCode=Membill.MemCode Where Docid='", var_D4, -1, var_D8)
  loc_16532D4: var_9E = var_A8.Text
  loc_16532ED: unk_537E46.Execute CStr(var_F8) & var_AC & "'", CSng(var_118), CDbl(0)
  loc_16532F8: Set var_88 = var_D8
  loc_1653310: ' Referenced from: 165379C
  loc_165331F: If Not(var_88.EOF) Then
  loc_165333C:   var_A8 = var_88.Fields.Item("RoundOff")
  loc_165335E:   If (var_A8.Value > 0) Then
  loc_165336F:     Set var_A4 = Me.Txt
  loc_1653375:     Call 0.Method_Proc_281_53_1653D900 (CInt(&H1F), var_A8, var_150)
  loc_165337D:     var_AC = var_A8.Text
  loc_1653390:     Set var_D8 = Me.Txt
  loc_1653396:     Call 0.Method_Proc_281_53_1653D900 (CInt(&H20), var_E4, var_158)
  loc_165339E:     var_14C & var_148 = var_E4.Text
  loc_16533C3:     Set var_E8 = Me.Txt
  loc_16533C9:     Call 0.Method_Proc_281_53_1653D900 (CInt(&H22), var_11C)
  loc_16533D1:     var_168 = var_11C.Text
  loc_16533F8:     var_F8 = var_88.Fields.Item("RoundOff").Value
  loc_165340B:     Set var_128 = Me.Txt
  loc_1653411:     Call 0.Method_Proc_281_53_1653D900 (CInt(0), var_12C)
  loc_1653419:     var_AC = var_12C.Tag
  loc_165342C:     Set var_140 = Me.Txt
  loc_1653432:     Call 0.Method_Proc_281_53_1653D900 (CInt(&H20), var_144)
  loc_165344D:     Set var_15C = Me.Txt
  loc_1653453:     Call 0.Method_Proc_281_53_1653D900 (CInt(var_13C), var_1A0)
  loc_165345B:     var_148 = var_1A0.Text
  loc_1653463:     var_D4 = Now
  loc_165346D:     var_19C = 0
  loc_1653478:     var_198 = 0
  loc_1653483:     var_194 = 0
  loc_165348C:     var_190 = "A"
  loc_16534AC:     var_14C = "Against bill no : " & var_144.Text & " For "
  loc_1653505:     Proc_6_141_12E23F4(MemVar_1F95044, var_150, var_9E, global_80, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F95070, CDate(var_168))
  loc_1653556:   Else
  loc_1653570:     var_A8 = var_88.Fields.Item("RoundOff")
  loc_1653578:     var_D4 = var_A8.Value
  loc_1653592:     If (var_D4 < 0) Then
  loc_16535A3:       Set var_A4 = Me.Txt
  loc_16535A9:       Call 0.Method_Proc_281_53_1653D900 (CInt(&H1F), var_A8, var_150, MemVar_1F95070 & "ROFF", CSng(var_F8), CDbl(0))
  loc_16535B1:       var_AC = var_A8.Text
  loc_16535C4:       Set var_D8 = Me.Txt
  loc_16535CA:       Call 0.Method_Proc_281_53_1653D900 (CInt(&H20), var_E4, var_158, var_14C & var_148)
  loc_16535D2:       MemVar_1F950C8 = var_E4.Text
  loc_16535F7:       Set var_E8 = Me.Txt
  loc_16535FD:       Call 0.Method_Proc_281_53_1653D900 (CInt(&H22), var_11C, var_168)
  loc_1653605:       CDate(var_D4) = var_11C.Text
  loc_165362C:       var_D4 = var_88.Fields.Item("RoundOff").Value
  loc_165363F:       Set var_128 = Me.Txt
  loc_1653645:       Call 0.Method_Proc_281_53_1653D900 (CInt(0), var_12C)
  loc_165364D:       var_AC = var_12C.Tag
  loc_1653660:       Set var_140 = Me.Txt
  loc_1653666:       Call 0.Method_Proc_281_53_1653D900 (CInt(&H20), var_144)
  loc_1653681:       Set var_15C = Me.Txt
  loc_1653687:       Call 0.Method_Proc_281_53_1653D900 (CInt(var_13C), var_1A0)
  loc_165368F:       var_148 = var_1A0.Text
  loc_1653697:       var_118 = Now
  loc_16536A1:       var_19C = 0
  loc_16536AC:       var_198 = 0
  loc_16536B7:       var_194 = 0
  loc_16536C0:       var_190 = "A"
  loc_16536E0:       var_14C = "Against bill no :   " & var_144.Text & " For "
  loc_16536F5:       var_F8 = Abs(var_D4)
  loc_165373D:       Proc_6_141_12E23F4(MemVar_1F95044, var_150, var_9E, global_80, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F95070, CDate(var_168))
  loc_165378B:     End If
  loc_165378B:   End If
  loc_1653791:   var_9E = (var_9E + 1)
  loc_1653797:   var_88.MoveNext
  loc_165379C:   GoTo loc_1653310
  loc_165379F: End If
  loc_16537BD: Set var_A4 = Me.Txt
  loc_16537C3: Call 0.Method_Proc_281_53_1653D900 (CInt(&H1F), var_A8, var_AC, "Select NetAmount,MemBill.MemCode,MeshAc,Vdate from MemBill Left join SubGroup on SubGroup.SubCode=Membill.MemCode Where Docid='", var_D4, -1, var_D8)
  loc_16537CB: var_9E = var_A8.Text
  loc_16537E4: unk_537E46.Execute MemVar_1F95070 & "ROFF" & var_AC & "'", CDbl(0), CSng(var_F8)
  loc_16537EF: Set var_88 = var_D8
  loc_165381B: If (var_88.RecordCount > 0) Then
  loc_165384C:   var_118 = Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("meshAc")), var_AC)))
  loc_1653868:   If CBool(var_118 <> vbNullString) Then
  loc_165386B:     ' Referenced from: 1653D83
  loc_165387A:     If Not(var_88.EOF) Then
  loc_1653894:       var_A8 = var_88.Fields.Item("MemCode")
  loc_16538BF:       var_E4 = var_88.Fields.Item("VDate")
  loc_16538CE:       Proc_6_7_F26918(var_118, CVar(var_E4))
  loc_16538D9:       var_224 = 0
  loc_16538F9:       var_B0 = "Select isnull(Sum(AmtDr),0)-isnull(Sum(AmtCr),0) As CreditAmt From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_A8), var_14C & var_148)
  loc_165390F:       var_1F4 = CVar(MemVar_1F95070 & "ROFF" & Proc_6_38_E69628(CVar(var_A8), var_14C & var_148) & "' And V_date<=") & var_118 & vbNullString 
  loc_165391D:       unk_537E46.Execute CStr(var_1F4), var_214, -1
  loc_1653925:       var_E8 = var_E8.Fields
  loc_165392D:       var_224 = var_11C.Item(var_11C)
  loc_1653935:       var_120 = var_120.Value
  loc_1653940:       Proc_6_39_E7D3A0(var_244, var_234)
  loc_1653980:       If (CSng(var_244) > CDbl(0)) Then
  loc_1653989:         var_9E = (var_9E + 1)
  loc_165399A:         Set var_A4 = Me.Txt
  loc_16539A0:         Call 0.Method_Proc_281_53_1653D900 (CInt(&H1F), var_A8, var_14C, var_9E)
  loc_16539BB:         Set var_D8 = Me.Txt
  loc_16539C1:         Call 0.Method_Proc_281_53_1653D900 (CInt(&H20), var_E4, var_154)
  loc_16539C9:         var_234 = var_E4.Text
  loc_16539EE:         Set var_E8 = Me.Txt
  loc_16539F4:         Call 0.Method_Proc_281_53_1653D900 (CInt(&H22), var_11C)
  loc_16539FC:         var_164 = var_11C.Text
  loc_1653A5D:         Set var_140 = Me.Txt
  loc_1653A63:         Call 0.Method_Proc_281_53_1653D900 (CInt(&H20), var_144)
  loc_1653A6B:         var_AC = var_144.Text
  loc_1653A7E:         Set var_15C = Me.Txt
  loc_1653A84:         Call 0.Method_Proc_281_53_1653D900 (CInt(var_13C), var_1A0)
  loc_1653A8C:         var_B4 = var_1A0.Text
  loc_1653A9E:         var_198 = 0
  loc_1653AA9:         var_194 = 0
  loc_1653AB4:         var_190 = 0
  loc_1653ABD:         var_184 = "A"
  loc_1653B2F:         Proc_6_141_12E23F4(MemVar_1F95044, var_14C, var_9E, global_80, CLng(var_154), Me.LblVPrefix.Caption, MemVar_1F95070, CDate(var_164))
  loc_1653B85:         var_9E = (var_9E + 1)
  loc_1653B96:         Set var_A4 = Me.Txt
  loc_1653B9C:         Call 0.Method_Proc_281_53_1653D900 (CInt(&H1F), var_A8, var_14C, var_9E, CStr(var_88.Fields.Item("MemCode").Value), var_A8.Text)
  loc_1653BA4:         CDbl(0) = var_A8.Text
  loc_1653BB7:         Set var_D8 = Me.Txt
  loc_1653BBD:         Call 0.Method_Proc_281_53_1653D900 (CInt(&H20), var_E4, var_154, CStr(var_88.Fields.Item("meshAc").Value))
  loc_1653BC5:         var_148 & var_B4 = var_E4.Text
  loc_1653BEA:         Set var_E8 = Me.Txt
  loc_1653BF0:         Call 0.Method_Proc_281_53_1653D900 (CInt(&H22), var_11C, var_164)
  loc_1653BF8:         MemVar_1F950C8 = var_11C.Text
  loc_1653C1F:         var_F8 = var_88.Fields.Item("meshAc").Value
  loc_1653C46:         var_118 = var_88.Fields.Item("MemCode").Value
  loc_1653C59:         Set var_140 = Me.Txt
  loc_1653C5F:         Call 0.Method_Proc_281_53_1653D900 (CInt(&H20), var_144, var_AC)
  loc_1653C67:         CDate(Now) = var_144.Text
  loc_1653C7A:         Set var_15C = Me.Txt
  loc_1653C80:         Call 0.Method_Proc_281_53_1653D900 (CInt(var_13C), var_1A0)
  loc_1653C88:         var_B4 = var_1A0.Text
  loc_1653C90:         var_D4 = Now
  loc_1653C9A:         var_198 = 0
  loc_1653CA5:         var_194 = 0
  loc_1653CB0:         var_190 = 0
  loc_1653CB9:         var_184 = "A"
  loc_1653CD9:         var_148 = "Against bill no : " & var_AC & " For "
  loc_1653D2B:         Proc_6_141_12E23F4(MemVar_1F95044, var_14C, var_9E, global_80, CLng(var_154), Me.LblVPrefix.Caption, MemVar_1F95070, CDate(var_164))
  loc_1653D7B:       End If
  loc_1653D7E:       var_88.MoveNext
  loc_1653D83:       GoTo loc_165386B
  loc_1653D86:     End If
  loc_1653D86:   End If
  loc_1653D86: End If
  loc_1653D8B: Set var_88 = Nothing
  loc_1653D8E: Exit Sub
End Sub

Public Sub Proc_281_54_EF93BC
  'Data Table: 537E2C
  loc_EF92FC: If (CBool(Me.DGMemName.Visible) = &HFF) Then
  loc_EF930E:   Me.DGMemName.Visible = False
  loc_EF9316: End If
  loc_EF9332: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_EF9344:   Me.DGRev.Visible = False
  loc_EF934C: End If
  loc_EF9368: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF937A:   Me.FGPoint.Visible = False
  loc_EF9382: End If
  loc_EF939E: If (CBool(Me.FGPoint1.Visible) = &HFF) Then
  loc_EF93B0:   Me.FGPoint1.Visible = False
  loc_EF93B8: End If
  loc_EF93B8: Exit Sub
End Sub

Public Sub Proc_281_55_16D0220
  'Data Table: 537E2C
  Dim var_B0 As String
  Dim var_B4 As String
  Dim var_B8 As String
  Dim var_BC As String
  Dim var_C0 As String
  Dim var_C4 As String
  Dim var_CC As String
  Dim var_D0 As String
  Dim var_D4 As String
  Dim var_DC As Variant
  Dim var_E8 As String
  Dim unk_537F48 As Connection15
  Dim unk_537E46 As Connection15
  Dim var_88 As Recordset15
  Dim var_FC As Variant
  Dim var_D8 As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_110 As Variant
  Dim var_13C As Variant
  Dim var_150 As Variant
  Dim var_164 As Variant
  Dim var_178 As Variant
  Dim var_18C As Variant
  Dim var_E0 As String
  Dim var_8C As Recordset15
  Dim var_116 As Integer
  Dim var_114 As Variant
  Dim var_1C0 As String
  loc_16CE874: On Error Goto loc_16D01B5
  loc_16CE88D: var_B0 = "Select S.SubCode,S.Name,S.ConPrefix,S.ConPerson,S.ConPersonMName,S.ConPersonLName,S.FatherName,S.PanNo,S.GroupCode,S.ApplDate,S.Discount," & "S.meshAc,S.U_AE,S.U_Name,S.U_EntDt,S.AddName,S.Add1,S.Add2,S.Add3,S.CITYCODE,S.Pin,S.Phone,S.Mobile,S.Email,S.AppNo,S.CardNo,S.Remark,S.subcorresYN,"
  loc_16CE89B: var_B8 = var_B0 & "S.CompanyType,S.AllowCredit,S.CreditLimit,S.ActiveYN,S.Blacklisted,S.ReasonBlackList,S.BlackListedBy," & "MF.bloodGroup,MF.ProOcc,MF.Edquali,MF.TBusiness,MF.Turnover,MF.Desig,MF.Passport,MF.SpInterest,MF.Gender,MF.DOB,MF.POB,"
  loc_16CE8A2: var_BC = var_B8 & "MF.MaritalStatus,MF.Nationality,MF.Religion,MF.PicPath,MF.SigPath,G.GroupNature AS GNature,G.GroupName,G.MainGrCode,a.areaname,C.CityName,T.CATEGORY_Desc, "
  loc_16CE8B0: var_C4 = var_BC & "TDSCAT.NAME AS TDSNAME,St.Name As StateN,St.Code As StateC,Co.Name As CountryN, Co.Code As CountryC, " & "MM.Name As MeshAcName From ((((((((subGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode "
  loc_16CE8BE: var_CC = var_C4 & "Left Join City C on S.CityCode=C.CityCode) Left Join CATEGORY T on S.CatEGORY=T.CatEGORY) " & "left join areamast a on s.areacode=a.areacode) LEFT JOIN TDSCAT ON TDSCAT.CODE=S.TDS_Catg) "
  loc_16CE8CC: var_D4 = var_CC & "Left Join State St On St.Code=C.State) Left Join Country Co On Co.Code=C.Country) " & "Left Join MemberFamily MF On MF.Subcode= S.Subcode And MF.RelationShip='Member' And MF.SNo=1) left Join SubGroup MM On MM.SubCode=S.MeshAc) "
  loc_16CE8E4: Set var_D8 = Me.Txt
  loc_16CE8EA: Call 0.Method_Proc_281_55_16D02200 (CInt(0), var_DC, var_E0, var_D4 & "Where S.SubCode='")
  loc_16CE8F2: var_10C = var_DC.Tag
  loc_16CE8FB: var_E8 = -1 & var_E0
  loc_16CE90B: unk_537F48.Execute var_E8 & "'", var_110, 
  loc_16CE916: Set var_88 = var_110
  loc_16CE964: Set var_D8 = Me.Txt
  loc_16CE96A: Call 0.Method_Proc_281_55_16D02200 (CInt(0), var_DC, var_B0, "Select DocId As SearchCode,* From MemBill Where Memcode='")
  loc_16CE972: var_10C = var_DC.Tag
  loc_16CE97B: var_B4 = -1 & var_B0
  loc_16CE982: var_B8 = var_B0 & "S.CompanyType,S.AllowCredit,S.CreditLimit,S.ActiveYN,S.Blacklisted,S.ReasonBlackList,S.BlackListedBy," & "' And VPrefix="
  loc_16CE9AF: var_D0 = var_B8 & MemVar_1F9512C & " And VType='" & global_80 & "' And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By DocId"
  loc_16CE9B8: unk_537E46.Execute var_D0, var_110, 
  loc_16CEA07: var_B0 = "INI"
  loc_16CEA15: Call Proc_281_49_F1315C(Proc_5_1_100EC1C(var_B0, Me))
  loc_16CEA22: Call TopCtrl1_UnknownEvent_11()
  loc_16CEA47: Set var_D8 = Me.Txt
  loc_16CEA4D: Call 0.Method_Proc_281_55_16D02200 (CInt(0), var_DC, var_B0, "Select MR.Code,MR.Description As Name,M.Nature,M.Appdate,M.Amount,MR.AcountYN,MR.AcCode,MR.ACPosting,MR.TaxStru from (MembershipRevMast MR Left Join (Select * From MemRevWise Where MemCode='")
  loc_16CEA55: var_10C = var_DC.Tag
  loc_16CEA5E: var_B4 = -1 & var_B0
  loc_16CEA65: var_B8 = var_B0 & "S.CompanyType,S.AllowCredit,S.CreditLimit,S.ActiveYN,S.Blacklisted,S.ReasonBlackList,S.BlackListedBy," & "') M on M.Revcode=MR.code) Where MR.Site_Code='"
  loc_16CEA8A: unk_537E46.Execute var_B8 & MemVar_1F95070 & "' and (MR.LOGSITE_CODE='" & MemVar_1F95078 & "' or MR.LOGSITE_CODE='HO') ORDER BY MR.Description", var_110, var_110
  loc_16CEAC9: CVarUnk
  loc_16CEACE: VerifyVarObj
  loc_16CEAD4: Set var_D8 = Me.DGRev
  loc_16CEADA: LateIdStAd
  loc_16CEAFE: If (var_88.RecordCount > 0) Then
  loc_16CEB15:   var_D8 = var_88.Fields
  loc_16CEB68:   var_C0 = var_88.Fields & Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPerson")), var_D8 & Proc_6_38_E69628(CVar(var_D8.Item("CardNo")), "#") & " ")
  loc_16CEBD4:   var_E0 = var_C0 & " " & Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPersonMName"))) & " " & Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPersonLName")))
  loc_16CEBE1:   Me.LblMember.Caption = var_E0
  loc_16CEC33:   var_DC = var_88.Fields.Item("subcode")
  loc_16CEC51:   Me.LblMember.Tag = CStr(var_DC.Value)
  loc_16CEC75:   Set var_D8 = Me.Txt
  loc_16CEC7B:   Call 0.Method_Proc_281_55_16D02200 (CInt(0), var_DC)
  loc_16CEC83:   var_B0 = var_DC.Tag
  loc_16CEC9B:   Set var_110 = Me.txtCurrBal
  loc_16CECA1:   var_110.Text = Proc_183_42_107DF48(var_B0)
  loc_16CECC0:   If (MemVar_1F95078 = "HO") Then
  loc_16CECE3:     Set var_D8 = Me.Txt
  loc_16CECE9:     Call 0.Method_Proc_281_55_16D02200 (CInt(0), var_DC, var_B0, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_16CECF1:     var_10C = var_DC.Tag
  loc_16CECFA:     var_B4 = -1 & var_B0
  loc_16CED0A:     unk_537F48.Execute var_D8 & Proc_6_38_E69628(CVar(var_D8.Item("CardNo")), "#") & "'", var_110, 
  loc_16CED15:     Set var_8C = var_110
  loc_16CED30:   Else
  loc_16CED52:     Set var_D8 = Me.Txt
  loc_16CED58:     Call 0.Method_Proc_281_55_16D02200 (CInt(0), var_DC, var_B0, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_16CED60:     var_10C = var_DC.Tag
  loc_16CED69:     var_B4 = -1 & var_B0
  loc_16CED87:     unk_537F48.Execute var_D8 & Proc_6_38_E69628(CVar(var_D8.Item("CardNo")), "#") & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "'", var_110, 
  loc_16CED92:     Set var_8C = var_110
  loc_16CEDAE:   End If
  loc_16CEDB8:   var_11C = var_8C.RecordCount
  loc_16CEDC6:   If (var_11C > 0) Then
  loc_16CEDF3:     var_116 = IsNull(CVar(var_8C.Fields.Item("CurrBal")))
  loc_16CEE62:     var_1F0 = Format(IIf(var_116, 0, Abs(var_8C.Fields.Item("CurrBal").Value)), "0.00") 'Variant
  loc_16CEEC3:     var_114 = var_8C.Fields.Item("CurrBal")
  loc_16CEEDB:     var_1C0 = "Cr"
  loc_16CEF3D:     Me.LblCurBalType.Caption = CStr(IIf((var_8C.Fields.Item("CurrBal").Value > 0), "Dr", IIf((var_114.Value < 0), var_1C0, vbNullString)))
  loc_16CEFAC:     If ((Me.LblCurBalType.Caption = "CR") Or (Me.LblCurBalType.Caption = vbNullString)) Then
  loc_16CEFB1:       var_FC = "MemberShip Up-to-Date!"
  loc_16CEFBB:       Set var_D8 = Me.LblMsg
  loc_16CEFC1:       Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("CurrBal")
  loc_16CEFD8:       Set var_D8 = Me.LblMsg
  loc_16CEFDE:       Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_2D(&H8000)
  loc_16CEFE9:     Else
  loc_16CEFF7:       Set var_D8 = Me.LblMsg
  loc_16CEFFD:       Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("Payment Required!")
  loc_16CF014:       Set var_D8 = Me.LblMsg
  loc_16CF01A:       Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_2D(&HC0)
  loc_16CF022:     End If
  loc_16CF049:     var_250 = CVar(var_8C.Fields.Item("CurrBal")) 'Variant
  loc_16CF089:     var_18C = "Dr"
  loc_16CF0AE:     var_260 = IIf((var_8C.Fields.Item("CurrBal").Value > 0), var_18C, "Cr") 'Variant
  loc_16CF0F7:     var_12C = CVar((var_94 - var_9C)) 'Double
  loc_16CF0FB:     var_13C = (var_8C.Fields.Item("CurrBal").Value + 0)
  loc_16CF10D:     Me.txtCurrBal.Tag = CStr((var_8C.Fields.Item("CurrBal").Value > 0))
  loc_16CF128:   Else
  loc_16CF13D:     Me.txtCurrBal.Text = CStr(0)
  loc_16CF157:     Me.LblCurBalType.Caption = vbNullString
  loc_16CF166:     var_250 = 0 'Variant
  loc_16CF171:     var_260 = "Cr" 'Variant
  loc_16CF180:     var_1F0.Tag = 0
  loc_16CF184:   End If
  loc_16CF1BE:   Set var_110 = Me.Txt
  loc_16CF1C4:   Call 0.Method_Proc_281_55_16D02200 (CInt(3), var_114, Proc_6_38_E69628(CVar(var_1F0.Recordset15.Fields.Item("ConPrefix")), 1))
  loc_16CF1CC:   var_114.Text = 1
  loc_16CF218:   Set var_110 = Me.Txt
  loc_16CF21E:   Call 0.Method_Proc_281_55_16D02200 (CInt(4), var_114)
  loc_16CF226:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPerson")))
  loc_16CF272:   Set var_110 = Me.Txt
  loc_16CF278:   Call 0.Method_Proc_281_55_16D02200 (CInt(&H13), var_114)
  loc_16CF280:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPersonMName")))
  loc_16CF2CC:   Set var_110 = Me.Txt
  loc_16CF2D2:   Call 0.Method_Proc_281_55_16D02200 (CInt(&H14), var_114)
  loc_16CF2DA:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPersonLName")))
  loc_16CF326:   Set var_110 = Me.Txt
  loc_16CF32C:   Call 0.Method_Proc_281_55_16D02200 (CInt(5), var_114)
  loc_16CF334:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("FatherName")))
  loc_16CF380:   Set var_110 = Me.Txt
  loc_16CF386:   Call 0.Method_Proc_281_55_16D02200 (CInt(&HE), var_114)
  loc_16CF38E:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("bloodGroup")))
  loc_16CF3CA:   Proc_6_47_EF6560((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_88.Fields.Item("Discount")))
  loc_16CF3E1:   Set var_110 = Me.Txt
  loc_16CF3E7:   Call 0.Method_Proc_281_55_16D02200 (CInt(&HA), var_114)
  loc_16CF3EF:   var_114.Text = CStr((var_8C.Fields.Item("CurrBal").Value > 0))
  loc_16CF434:   var_270 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("AddName")))) 'Variant
  loc_16CF476:   Set var_110 = Me.Txt
  loc_16CF47C:   Call 0.Method_Proc_281_55_16D02200 (CInt(1), var_114)
  loc_16CF484:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")))
  loc_16CF4C5:   var_280 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")))) 'Variant
  loc_16CF507:   Set var_110 = Me.Txt
  loc_16CF50D:   Call 0.Method_Proc_281_55_16D02200 (CInt(&H12), var_114)
  loc_16CF515:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("PanNo")))
  loc_16CF567:   var_13C = "select code,Name from MemcatMast where code='" & var_88.Fields.Item("CompanyType").Value 
  loc_16CF57E:   unk_537E46.Execute CStr(var_13C & "'"), var_18C, -1
  loc_16CF5DB:   Set var_110 = Me.Txt
  loc_16CF5E1:   Call 0.Method_Proc_281_55_16D02200 (CInt(6), var_114)
  loc_16CF5E9:   var_114.Text = Proc_6_38_E69628(CVar(var_110.Fields.Item("Name")), var_110)
  loc_16CF635:   Set var_110 = Me.Txt
  loc_16CF63B:   Call 0.Method_Proc_281_55_16D02200 (CInt(6), var_114)
  loc_16CF643:   var_114.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CompanyType")))
  loc_16CF6C8:   Set var_110 = Me.Txt
  loc_16CF6CE:   Call 0.Method_Proc_281_55_16D02200 (CInt(7), var_114)
  loc_16CF6D6:   var_114.Text = Proc_6_38_E69628(IIf((var_88.Fields.Item("AllowCredit").Value = "Y"), "Yes", "No"))
  loc_16CF71E:   Proc_6_47_EF6560(var_13C, CVar(var_88.Fields.Item("CreditLimit")))
  loc_16CF735:   Set var_110 = Me.Txt
  loc_16CF73B:   Call 0.Method_Proc_281_55_16D02200 (CInt(8), var_114)
  loc_16CF743:   var_114.Text = CStr(var_13C)
  loc_16CF793:   Set var_110 = Me.Txt
  loc_16CF799:   Call 0.Method_Proc_281_55_16D02200 (CInt(&H15), var_114)
  loc_16CF7A1:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ProOcc")))
  loc_16CF7ED:   Set var_110 = Me.Txt
  loc_16CF7F3:   Call 0.Method_Proc_281_55_16D02200 (CInt(&H16), var_114)
  loc_16CF7FB:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Edquali")))
  loc_16CF847:   Set var_110 = Me.Txt
  loc_16CF84D:   Call 0.Method_Proc_281_55_16D02200 (CInt(&H17), var_114)
  loc_16CF855:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("TBusiness")))
  loc_16CF8A1:   Set var_110 = Me.Txt
  loc_16CF8A7:   Call 0.Method_Proc_281_55_16D02200 (CInt(&H18), var_114)
  loc_16CF8AF:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Turnover")))
  loc_16CF8FB:   Set var_110 = Me.Txt
  loc_16CF901:   Call 0.Method_Proc_281_55_16D02200 (CInt(&H19), var_114)
  loc_16CF909:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Desig")))
  loc_16CF955:   Set var_110 = Me.Txt
  loc_16CF95B:   Call 0.Method_Proc_281_55_16D02200 (CInt(&H1A), var_114)
  loc_16CF963:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Passport")))
  loc_16CF9AF:   Set var_110 = Me.Txt
  loc_16CF9B5:   Call 0.Method_Proc_281_55_16D02200 (CInt(&H1B), var_114)
  loc_16CF9BD:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("SpInterest")))
  loc_16CFA09:   Set var_110 = Me.Txt
  loc_16CFA0F:   Call 0.Method_Proc_281_55_16D02200 (CInt(&HB), var_114)
  loc_16CFA17:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Gender")))
  loc_16CFA7F:   Set var_110 = Me.Txt
  loc_16CFA85:   Call 0.Method_Proc_281_55_16D02200 (CInt(&HC), var_114, CStr(Format(CVar(var_88.Fields.Item("DOB")), "DD/MMM/YYYY")))
  loc_16CFA8D:   var_114.Text = 1
  loc_16CFADF:   Set var_110 = Me.Txt
  loc_16CFAE5:   Call 0.Method_Proc_281_55_16D02200 (CInt(&H10), var_114)
  loc_16CFAED:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("POB")), 1)
  loc_16CFB39:   Set var_110 = Me.Txt
  loc_16CFB3F:   Call 0.Method_Proc_281_55_16D02200 (CInt(&HF), var_114)
  loc_16CFB47:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MaritalStatus")))
  loc_16CFB93:   Set var_110 = Me.Txt
  loc_16CFB99:   Call 0.Method_Proc_281_55_16D02200 (CInt(&HD), var_114)
  loc_16CFBA1:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Nationality")))
  loc_16CFBED:   Set var_110 = Me.Txt
  loc_16CFBF3:   Call 0.Method_Proc_281_55_16D02200 (CInt(&H11), var_114)
  loc_16CFBFB:   var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Religion")))
  loc_16CFC7C:   Set var_110 = Me.Txt
  loc_16CFC82:   Call 0.Method_Proc_281_55_16D02200 (CInt(9), var_114)
  loc_16CFC8A:   var_114.Text = CStr(IIf((var_88.Fields.Item("ActiveYN").Value = 1), "Yes", "No"))
  loc_16CFCC6:   var_DC = var_88.Fields.Item("BlackListed")
  loc_16CFD17:   Set var_110 = Me.Txt
  loc_16CFD1D:   Call 0.Method_Proc_281_55_16D02200 (CInt(&H1C), var_114)
  loc_16CFD25:   var_114.Text = CStr(IIf((var_DC.Value = "Y"), "Yes", "No"))
  loc_16CFD55:   Set var_D8 = Me.Txt
  loc_16CFD5B:   Call 0.Method_Proc_281_55_16D02200 (CInt(&H1C), var_DC)
  loc_16CFD7A:   If (var_DC.Text = "Yes") Then
  loc_16CFD8B:     Me.FrBlackListed.Visible = True
  loc_16CFD96:   Else
  loc_16CFDA6:     Me.FrBlackListed.Visible = False
  loc_16CFDAE:   End If
  loc_16CFDEB:   Set var_110 = Me.Txt
  loc_16CFDF1:   Call 0.Method_Proc_281_55_16D02200 (CInt(&H1D), var_114)
  loc_16CFDF9:   var_114.Text = CStr(var_88.Fields.Item("ReasonBlackList").Value)
  loc_16CFE4A:   Set var_110 = Me.Txt
  loc_16CFE50:   Call 0.Method_Proc_281_55_16D02200 (CInt(&H1E), var_114)
  loc_16CFE58:   var_114.Text = CStr(var_88.Fields.Item("BlackListedBy").Value)
  loc_16CFE7F:   var_D8 = var_88.Fields
  loc_16CFE98:   var_178 = IsNull(CVar(var_D8.Item("PicPath")))
  loc_16CFE9F:   var_12C = "PicPath"
  loc_16CFECA:   var_150 = vbNullString
  loc_16CFEEC:   If CBool(var_178 Or (Trim(CVar(var_88.Fields.Item(var_12C))) = var_150)) Then
  loc_16CFF0F:     Me.Global.LoadPicture var_FC, var_12C, var_150, var_178, var_1C0
  loc_16CFF24:     Me.ImgMemPhoto.Picture = var_D8
  loc_16CFF3F:     Me.ImgMemPhoto.Tag = vbNullString
  loc_16CFF4A:   Else
  loc_16CFF7C:     var_150 = "PicPath"
  loc_16CFFAF:     var_164 = Right(Trim(CVar(var_88.Fields.Item("PicPath"))), 3)
  loc_16CFFBA:     var_18C = Ucase(var_164)
  loc_16CFFC2:     var_12C = "DAT"
  loc_16CFFEA:     var_178 = "AVI"
  loc_16D0014:     If CBool((var_18C = var_12C) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_150))), 3)) = var_178)) Then
  loc_16D0025:       Me.ImgMemPhoto.Visible = False
  loc_16D0030:     Else
  loc_16D006C:       Me.ImgMemPhoto.Tag = CStr(var_88.Fields.Item("PicPath").Value)
  loc_16D008B:       var_FC = "PicPath"
  loc_16D009F:       var_DC = var_88.Fields.Item(var_FC)
  loc_16D00BC:       Call 0.Method_Proc_281_55_16D02204 (CStr(var_DC.Value), var_116)
  loc_16D00D1:       If var_116 Then
  loc_16D00D6:         On Error Resume Next
  loc_16D00FB:         var_B0 = Me.ImgMemPhoto.Tag
  loc_16D010D:         Me.Global.LoadPicture CVar(var_B0), var_FC, var_12C, var_150, var_178
  loc_16D0122:         Me.ImgMemPhoto.Picture = var_DC
  loc_16D0139:         Set var_D8 = Me.ImgMemPhoto
  loc_16D013F:         var_D8.Refresh
  loc_16D014A:       Else
  loc_16D016C:         Me.Global.LoadPicture var_FC, var_12C, var_150, var_178, var_1C0
  loc_16D0181:         Me.ImgMemPhoto.Picture = var_D8
  loc_16D018D:       End If
  loc_16D018F:     End If
  loc_16D0191:   End If
  loc_16D0196: Else
  loc_16D019A:   Call Proc_281_48_10C5D08(var_D8, var_DC)
  loc_16D019F: End If
  loc_16D01A3: Call Proc_281_54_EF93BC(var_D8)
  loc_16D01AF: Set var_88 = Nothing
  loc_16D01B4: Exit Sub
  loc_16D01B5: ' Referenced from: 16CE874
  loc_16D01BF: Set var_D8 = Err()
  loc_16D01C5: Call 0.Method_arg_1C (var_11C)
  loc_16D01D6: If (var_11C <> 0) Then
  loc_16D01E3:   Set var_D8 = Err()
  loc_16D01E9:   Call 0.Method_arg_2C (var_B0)
  loc_16D020A:   MsgBox(CVar(var_B0), &H40, "Validation", var_164, var_18C)
  loc_16D021D: End If
  loc_16D021F: Exit Sub
End Sub

Public Sub Proc_281_56_178C134(arg_C) '178C134
  'Data Table: 537E2C
  Dim var_A0 As Variant
  Dim var_B4 As Long
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_13C As Variant
  Dim var_14C As String
  Dim var_160 As String
  Dim unk_537E46 As Connection15
  Dim var_98 As Recordset15
  Dim var_C4 As String
  Dim var_E4 As Variant
  Dim var_140 As Variant
  Dim var_104 As Variant
  Dim var_184 As Variant
  Dim var_170 As Variant
  Dim var_2D8 As Double
  Dim var_174 As Variant
  Dim var_124 As Variant
  Dim var_1C4 As Variant
  Dim var_1D8 As MSHFlexGrid
  Dim var_1E8 As Variant
  Dim var_218 As Variant
  Dim var_1F8 As Variant
  Dim var_25C As MSHFlexGrid
  Dim var_27C As Variant
  Dim var_29C As Variant
  Dim var_2BC As Variant
  Dim var_BA As Integer
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_228 As Variant
  Dim var_208 As Variant
  Dim var_2E8 As Variant
  Dim var_2F8 As Variant
  Dim var_258 As Variant
  Dim var_28C As Variant
  Dim var_2AC As Variant
  Dim var_328 As Variant
  loc_178A2E8: If (arg_C = 0) Then
  loc_178A2FE:   var_B4 = CLng(Me.Fgrid.Col)
  loc_178A30E:   If (var_B4 = CLng(1)) Then
  loc_178A331:     var_BA = Me.EOF
  loc_178A35F:     Set var_A0 = Me.TxtGrid
  loc_178A365:     Call 0.Method_Proc_281_56_178C1340 (arg_C, var_C0, var_C4)
  loc_178A36D:     ((Me.RecordCount = 0) Or ((var_BA = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_178A385:     If (var_B4 Or (var_C4 = vbNullString)) Then
  loc_178A39B:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178A3A3:       var_F4 = CVar(CLng(1)) 'Long
  loc_178A3A8:       var_114 = vbNullString
  loc_178A3B2:       Set var_C0 = Me.Fgrid
  loc_178A3B8:       LateIdCallSt
  loc_178A3DD:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178A3E5:       var_F4 = CVar(CLng(&HA)) 'Long
  loc_178A3EA:       var_114 = vbNullString
  loc_178A3F4:       Set var_C0 = Me.Fgrid
  loc_178A3FA:       LateIdCallSt
  loc_178A41F:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178A427:       var_F4 = CVar(CLng(1)) 'Long
  loc_178A42C:       var_114 = vbNullString
  loc_178A436:       Set var_C0 = Me.Fgrid
  loc_178A43C:       LateIdCallSt
  loc_178A461:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178A469:       var_F4 = CVar(CLng(2)) 'Long
  loc_178A46E:       var_114 = vbNullString
  loc_178A478:       Set var_C0 = Me.Fgrid
  loc_178A47E:       LateIdCallSt
  loc_178A4A3:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178A4AB:       var_F4 = CVar(CLng(3)) 'Long
  loc_178A4B0:       var_114 = vbNullString
  loc_178A4BA:       Set var_C0 = Me.Fgrid
  loc_178A4C0:       LateIdCallSt
  loc_178A4E5:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178A4ED:       var_F4 = CVar(CLng(5)) 'Long
  loc_178A4F2:       var_114 = vbNullString
  loc_178A4FC:       Set var_C0 = Me.Fgrid
  loc_178A502:       LateIdCallSt
  loc_178A527:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178A52F:       var_F4 = CVar(CLng(4)) 'Long
  loc_178A534:       var_114 = vbNullString
  loc_178A53E:       Set var_C0 = Me.Fgrid
  loc_178A544:       LateIdCallSt
  loc_178A569:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178A571:       var_F4 = CVar(CLng(&HC)) 'Long
  loc_178A576:       var_114 = vbNullString
  loc_178A580:       Set var_C0 = Me.Fgrid
  loc_178A586:       LateIdCallSt
  loc_178A5AB:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178A5B3:       var_F4 = CVar(CLng(&HE)) 'Long
  loc_178A5B8:       var_114 = vbNullString
  loc_178A5C2:       Set var_C0 = Me.Fgrid
  loc_178A5C8:       LateIdCallSt
  loc_178A5ED:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178A5F5:       var_F4 = CVar(CLng(&HF)) 'Long
  loc_178A5FA:       var_114 = vbNullString
  loc_178A604:       Set var_C0 = Me.Fgrid
  loc_178A60A:       LateIdCallSt
  loc_178A62F:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178A637:       var_F4 = CVar(CLng(6)) 'Long
  loc_178A63C:       var_114 = vbNullString
  loc_178A646:       Set var_C0 = Me.Fgrid
  loc_178A64C:       LateIdCallSt
  loc_178A671:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178A679:       var_F4 = CVar(CLng(7)) 'Long
  loc_178A67E:       var_114 = vbNullString
  loc_178A688:       Set var_C0 = Me.Fgrid
  loc_178A68E:       LateIdCallSt
  loc_178A6B3:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178A6BB:       var_F4 = CVar(CLng(&H10)) 'Long
  loc_178A6C0:       var_114 = vbNullString
  loc_178A6CA:       Set var_C0 = Me.Fgrid
  loc_178A6D0:       LateIdCallSt
  loc_178A6F5:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178A6FD:       var_F4 = CVar(CLng(&HA)) 'Long
  loc_178A702:       var_114 = vbNullString
  loc_178A70C:       Set var_C0 = Me.Fgrid
  loc_178A712:       LateIdCallSt
  loc_178A737:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178A73F:       var_F4 = CVar(CLng(&HB)) 'Long
  loc_178A744:       var_114 = vbNullString
  loc_178A74E:       Set var_C0 = Me.Fgrid
  loc_178A754:       LateIdCallSt
  loc_178A779:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178A781:       var_F4 = CVar(CLng(8)) 'Long
  loc_178A786:       var_114 = vbNullString
  loc_178A790:       Set var_C0 = Me.Fgrid
  loc_178A796:       LateIdCallSt
  loc_178A7BB:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178A7C3:       var_F4 = CVar(CLng(9)) 'Long
  loc_178A7C8:       var_114 = vbNullString
  loc_178A7D2:       Set var_C0 = Me.Fgrid
  loc_178A7D8:       LateIdCallSt
  loc_178A7ED:     Else
  loc_178A7F0:       Call Proc_281_57_FBE180(var_BA, var_C0, var_114, var_F4, var_D4, var_C0, var_114, var_F4)
  loc_178A7FB:       If (var_BA = 0) Then
  loc_178A803:         Proc_281_56_178C134 = 0
  loc_178A809:       End If
  loc_178A827:       Set var_A0 = Me.Txt
  loc_178A82D:       Call 0.Method_Proc_281_56_178C1340 (CInt(var_134), var_C0, var_C4, "Select max(ToPeriod) ToPeriod from MemBill1 Inner Join MemBill On MemBill.DocId=MemBill1.DocId where MemBill.MemCode='", var_170, -1, var_174)
  loc_178A835:       var_D4 = var_C0.Tag
  loc_178A84B:       var_D4 = "Code"
  loc_178A877:       var_14C = var_D4 & Proc_6_38_E69628(CVar(Me.Fields.Item(var_D4)), var_C0 & var_C4 & "' And MemBill1.FacilityCode='", var_114, var_F4)
  loc_178A89A:       var_160 = var_14C & "' and MemBill1.Site_Code='" & MemVar_1F95070 & "' and (MemBill1.LOGSITE_CODE='" & MemVar_1F95078 & "' or MemBill1.LOGSITE_CODE='HO')"
  loc_178A8A3:       unk_537E46.Execute var_160, var_C0, var_114
  loc_178A8AE:       Set var_98 = var_174
  loc_178A908:       If IsNull(CVar(var_98.Fields.Item("ToPeriod"))) Then
  loc_178A925:         var_C0 = Me.Fields.Item("AppDate")
  loc_178A93C:         If IsNull(CVar(var_C0)) Then
  loc_178A94A:           Set var_A0 = Me.Txt
  loc_178A950:           Call 0.Method_Proc_281_56_178C1340 (CInt(&H22))
  loc_178A98A:           Me.TxtFrPeriod.Text = CStr(Format(CVar(var_C0), "dd/MMM/YYYY"))
  loc_178A9A5:         Else
  loc_178A9F9:           Me.TxtFrPeriod.Text = CStr(Format(CVar(Me.Fields.Item("AppDate")), "dd/MMM/YYYY"))
  loc_178AA11:         End If
  loc_178AA14:       Else
  loc_178AA7F:         If (var_98.Fields.Item("ToPeriod").Value < Me.Fields.Item("AppDate").Value) Then
  loc_178AAD6:           Me.TxtFrPeriod.Text = CStr(Format(CVar(Me.Fields.Item("AppDate")), "dd/MMM/YYYY"))
  loc_178AAF1:         Else
  loc_178AB3E:           var_194 = Format(DateAdd("d", CDbl(1), CVar(var_98.Fields.Item("ToPeriod"))), "dd/MMM/YYYY")
  loc_178AB54:           Me.TxtFrPeriod.Text = CStr(var_194)
  loc_178AB6E:         End If
  loc_178AB6E:       End If
  loc_178AB81:       var_E4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178AB89:       var_104 = CVar(CLng(1)) 'Long
  loc_178ABBC:       var_184 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_178ABC4:       Set var_140 = Me.Fgrid
  loc_178ABCA:       LateIdCallSt
  loc_178ABF9:       var_E4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178AC01:       var_104 = CVar(CLng(&HA)) 'Long
  loc_178AC34:       var_184 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_178AC3C:       Set var_140 = Me.Fgrid
  loc_178AC42:       LateIdCallSt
  loc_178AC93:       var_C4 = CStr(Me.Fgrid.TextMatrix))
  loc_178AC9B:       var_2D8 = Val(var_C4)
  loc_178ACB8:       var_140 = Me.Fields.Item("Amount")
  loc_178ACC7:       Proc_6_39_E7D3A0(var_194, CVar(var_140), var_2D8, CVar(CLng(2)), CVar(CLng(Me.Fgrid.Row)), var_140, CVar(var_140))
  loc_178ACDF:       var_124 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178ACE7:       var_1C4 = CVar(CLng(2)) 'Long
  loc_178AD37:       var_27C = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178AD3F:       var_29C = CVar(CLng(2)) 'Long
  loc_178AD68:       var_2BC = CVar(CStr(Format(IIf((CDbl(var_2D8) = CDbl(0)), var_194, CVar(Val(CStr(Me.Fgrid.TextMatrix))))), "0.00"))) 'String
  loc_178AD70:       Set var_2D0 = Me.Fgrid
  loc_178AD76:       LateIdCallSt
  loc_178ADC6:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178ADCE:       var_F4 = CVar(CLng(3)) 'Long
  loc_178AE38:       var_1B4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178AE40:       var_1D4 = CVar(CLng(3)) 'Long
  loc_178AE6D:       var_258 = IIf((IsDate(CVar(CStr(Me.Fgrid.TextMatrix)))) = 0), IIf((IsDate(CVar(Me.TxtFrPeriod)) = 0), MemVar_1F950EC, CVar(Me.TxtFrPeriod)), CVar(CStr(Me.Fgrid.TextMatrix))))
  loc_178AE85:       var_27C = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178AE8D:       var_29C = CVar(CLng(3)) 'Long
  loc_178AEB6:       var_2F8 = CVar(CStr(Format(var_258, "dd/MMM/YYYY"))) 'String
  loc_178AEBE:       Set var_1D8 = Me.Fgrid
  loc_178AEC4:       LateIdCallSt
  loc_178AF11:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178AF19:       var_F4 = CVar(CLng(5)) 'Long
  loc_178AF95:       var_1C4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178AF9D:       var_1F8 = CVar(CLng(5)) 'Long
  loc_178AFC2:       var_228 = (DateAdd("m", CDbl(1), IIf((IsDate(CVar(Me.TxtFrPeriod)) = 0), MemVar_1F950EC, CVar(Me.TxtFrPeriod))) - 1)
  loc_178AFF2:       var_28C = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178AFFA:       var_2AC = CVar(CLng(5)) 'Long
  loc_178B01A:       var_308 = Format(IIf((IsDate(CVar(CStr(Me.Fgrid.TextMatrix)))) = 0), Me.Fgrid.TextMatrix), CVar(CStr(Me.Fgrid.TextMatrix)))), "dd/MMM/YYYY")
  loc_178B023:       var_328 = CVar(CStr(var_308)) 'String
  loc_178B02B:       Set var_1D8 = Me.Fgrid
  loc_178B031:       LateIdCallSt
  loc_178B082:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B08A:       var_F4 = CVar(CLng(3)) 'Long
  loc_178B0B8:       var_114 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B0C0:       var_1B4 = CVar(CLng(5)) 'Long
  loc_178B0CF:       var_194 = Me.Fgrid.TextMatrix)
  loc_178B111:       var_208 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B13B:       var_228 = (DateDiff("d", CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CStr(var_194)), 1, 1) + 1)
  loc_178B159:       LateIdCallSt
  loc_178B1D6:       var_184 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("AcCode")), CVar(CLng(&HC)), CVar(CLng(Me.Fgrid.Row)), Me.Fgrid, CVar(CStr(Format(Me.Fgrid.TextMatrix), "0"))), 1, 1)) 'String
  loc_178B1E4:       LateIdCallSt
  loc_178B249:       var_184 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ACPosting")), CVar(CLng(&HE)), CVar(CLng(Me.Fgrid.Row)), Me.Fgrid, var_184, CVar(CLng(4)))) 'String
  loc_178B257:       LateIdCallSt
  loc_178B2AB:       var_C0 = Me.Fields.Item("AcountYN")
  loc_178B2BC:       var_184 = CVar(Proc_6_38_E69628(CVar(var_C0), CVar(CLng(&HF)), CVar(CLng(Me.Fgrid.Row)), Me.Fgrid, var_184)) 'String
  loc_178B2CA:       LateIdCallSt
  loc_178B312:       Set var_A0 = Me.Txt
  loc_178B318:       Call 0.Method_Proc_281_56_178C1340 (CInt(&H1F), var_C0, var_C4, CVar(CLng(6)), CVar(CLng(Me.Fgrid.Row)), Me.Fgrid)
  loc_178B320:       var_184 = var_C0.Text
  loc_178B328:       var_170 = CVar(var_C4) 'String
  loc_178B336:       LateIdCallSt
  loc_178B37E:       Set var_A0 = Me.Txt
  loc_178B384:       Call 0.Method_Proc_281_56_178C1340 (CInt(&H20), var_C0, var_C4, CVar(CLng(7)), CVar(CLng(Me.Fgrid.Row)), Me.Fgrid)
  loc_178B38C:       var_170 = var_C0.Text
  loc_178B394:       var_170 = CVar(var_C4) 'String
  loc_178B39C:       Set var_140 = Me.Fgrid
  loc_178B3A2:       LateIdCallSt
  loc_178B3CF:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B3E6:       Set var_C0 = Me.Fgrid
  loc_178B3EC:       LateIdCallSt
  loc_178B421:       var_D4 = "TaxStru"
  loc_178B438:       var_C0 = Me.Fields.Item(var_D4)
  loc_178B449:       var_184 = CVar(Proc_6_38_E69628(CVar(var_C0), CVar(CLng(&HB)), CVar(CLng(Me.Fgrid.Row)), var_C0, vbNullString, CVar(CLng(&H10)), var_D4)) 'String
  loc_178B457:       LateIdCallSt
  loc_178B49F:       Set var_A0 = Me.Txt
  loc_178B4A5:       Call 0.Method_Proc_281_56_178C1340 (CInt(&H21), var_C0, var_C4, CVar(CLng(8)), CVar(CLng(Me.Fgrid.Row)), Me.Fgrid, var_184)
  loc_178B4AD:       var_140 = var_C0.Text
  loc_178B4B5:       var_170 = CVar(var_C4) 'String
  loc_178B4BD:       Set var_140 = Me.Fgrid
  loc_178B4C3:       LateIdCallSt
  loc_178B4F0:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B4F8:       var_F4 = CVar(CLng(9)) 'Long
  loc_178B4FD:       var_114 = "Revenue"
  loc_178B507:       Set var_C0 = Me.Fgrid
  loc_178B50D:       LateIdCallSt
  loc_178B51F:     End If
  loc_178B51F:     Call Proc_281_42_1534ED0(var_C0, var_114, var_F4, var_D4, var_140, var_170)
  loc_178B53D:     var_D4 = CVar((CLng(Me.Fgrid.Rows) - 1)) 'Long
  loc_178B545:     var_F4 = CVar(CLng(&HA)) 'Long
  loc_178B55F:     var_C4 = CStr(Me.Fgrid.TextMatrix))
  loc_178B578:     If (var_C4 <> vbNullString) Then
  loc_178B590:       var_170 = CVar(CStr(CLng(Me.Fgrid.Rows))) 'String
  loc_178B598:       Set var_C0 = Me.Fgrid
  loc_178B5B4:     End If
  loc_178B5B7:   Else
  loc_178B5BE:     If (var_B4 = CLng(2)) Then
  loc_178B5CB:       Set var_A0 = Me.TxtGrid
  loc_178B5D1:       Call 0.Method_Proc_281_56_178C1340 (arg_C, var_C0, Fgrid.DispID_10000, var_170, var_F4, var_D4)
  loc_178B5F0:       Set var_13C = Me.TxtGrid
  loc_178B5F6:       Call 0.Method_Proc_281_56_178C1340 (arg_C, var_140, var_C4, Not(IsNumeric(CVar(var_C0))), var_170)
  loc_178B5FE:       var_208 = var_140.Text
  loc_178B620:       If (var_194 Or (CDbl(Val(var_C4)) <= CDbl(0))) Then
  loc_178B634:         Set var_A0 = Me.TxtGrid
  loc_178B63A:         Call 0.Method_Proc_281_56_178C1340 (arg_C, var_C0, CStr(0))
  loc_178B642:         var_C0.Text = var_1B4
  loc_178B656:         Proc_281_56_178C134 = 0
  loc_178B65C:       End If
  loc_178B669:       Set var_A0 = Me.TxtGrid
  loc_178B66F:       Call 0.Method_Proc_281_56_178C1340 (arg_C, var_C0)
  loc_178B68F:       var_E4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B6A7:       var_104 = CVar(CLng(Me.Fgrid.Col)) 'Long
  loc_178B6DB:       Set var_174 = Me.Fgrid
  loc_178B6E1:       LateIdCallSt
  loc_178B705:       Call Proc_281_42_1534ED0(var_174, CVar(CStr(Format(CVar(var_C0.Text), "0.00"))), 1, 1)
  loc_178B70D:     Else
  loc_178B714:       If (var_B4 = CLng(3)) Then
  loc_178B721:         Set var_A0 = Me.TxtGrid
  loc_178B727:         Call 0.Method_Proc_281_56_178C1340 (arg_C, var_C0, var_104)
  loc_178B73A:         var_C4 = Proc_6_33_15125B8(var_C0, var_E4)
  loc_178B747:         Set var_140 = Me.TxtGrid
  loc_178B74D:         Call 0.Method_Proc_281_56_178C1340 (arg_C, var_174)
  loc_178B755:         var_174.Text = var_C4
  loc_178B772:         Set var_A0 = Me.TxtGrid
  loc_178B778:         Call 0.Method_Proc_281_56_178C1340 (arg_C, var_C0)
  loc_178B792:         If (IsDate(CVar(var_C0)) = 0) Then
  loc_178B79A:           Proc_281_56_178C134 = 0
  loc_178B7A0:         End If
  loc_178B7B3:         var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B7CB:         var_F4 = CVar(CLng(Me.Fgrid.Col)) 'Long
  loc_178B7DD:         Set var_A0 = Me.TxtGrid
  loc_178B7E3:         Call 0.Method_Proc_281_56_178C1340 (arg_C, var_C0, var_C4)
  loc_178B7EB:         var_F4 = var_C0.Text
  loc_178B7F3:         var_184 = CVar(var_C4) 'String
  loc_178B7FB:         Set var_174 = Me.Fgrid
  loc_178B801:         LateIdCallSt
  loc_178B832:         var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B83A:         var_F4 = CVar(CLng(4)) 'Long
  loc_178B872:         If (CDbl(Val(CStr(Me.Fgrid.TextMatrix)))) = CDbl(0)) Then
  loc_178B888:           var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B890:           var_F4 = CVar(CLng(4)) 'Long
  loc_178B899:           var_170 = CVar(CStr(1)) 'String
  loc_178B8A1:           Set var_C0 = Me.Fgrid
  loc_178B8A7:           LateIdCallSt
  loc_178B8BD:         End If
  loc_178B8D0:         var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B8D8:         var_F4 = CVar(CLng(5)) 'Long
  loc_178B90D:         If (IsDate(CVar(CStr(Me.Fgrid.TextMatrix)))) = 0) Then
  loc_178B923:           var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B92B:           var_F4 = CVar(CLng(4)) 'Long
  loc_178B963:           var_114 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B97B:           var_1B4 = CVar(CLng(Me.Fgrid.Col)) 'Long
  loc_178B9B9:           var_208 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B9C1:           var_27C = CVar(CLng(5)) 'Long
  loc_178B9E3:           var_228 = (DateAdd("d", Val(CStr(Me.Fgrid.TextMatrix))), CVar(CStr(Me.Fgrid.TextMatrix)))) - 1)
  loc_178B9FA:           var_2E8 = CVar(CStr(Format(Me.Fgrid.TextMatrix), "dd/MMM/YYYY"))) 'String
  loc_178BA02:           Set var_25C = Me.Fgrid
  loc_178BA08:           LateIdCallSt
  loc_178BA42:         Else
  loc_178BA55:           var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178BA5D:           var_F4 = CVar(CLng(3)) 'Long
  loc_178BA66:           Set var_C0 = Me.Fgrid
  loc_178BA6C:           var_170 = var_C0.TextMatrix)
  loc_178BA8B:           var_114 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178BA93:           var_1B4 = CVar(CLng(5)) 'Long
  loc_178BAA2:           var_194 = Me.Fgrid.TextMatrix)
  loc_178BAD5:           Set var_174 = Me.Fgrid
  loc_178BAE4:           var_208 = CVar(CLng(var_174.Row)) 'Long
  loc_178BAEC:           var_27C = CVar(CLng(4)) 'Long
  loc_178BB0E:           var_228 = (DateDiff("d", CVar(CStr(var_170)), CVar(CStr(var_194)), 1, 1) + 1)
  loc_178BB1E:           var_2BC = CVar(CStr(Format(Me.Fgrid.TextMatrix), "0"))) 'String
  loc_178BB26:           Set var_1D8 = Me.Fgrid
  loc_178BB2C:           LateIdCallSt
  loc_178BB5E:         End If
  loc_178BB61:       Else
  loc_178BB68:         If (var_B4 = CLng(5)) Then
  loc_178BB75:           Set var_A0 = Me.TxtGrid
  loc_178BB7B:           Call 0.Method_Proc_281_56_178C1340 (arg_C, var_C0, var_1D8, var_2BC, 1, 1, var_27C)
  loc_178BB8E:           var_C4 = Proc_6_33_15125B8(var_C0, var_208, var_194, var_1B4)
  loc_178BB9B:           Set var_140 = Me.TxtGrid
  loc_178BBA1:           Call 0.Method_Proc_281_56_178C1340 (arg_C, var_174, var_C4, var_114)
  loc_178BBA9:           var_174.Text = var_170
  loc_178BBC6:           Set var_A0 = Me.TxtGrid
  loc_178BBCC:           Call 0.Method_Proc_281_56_178C1340 (arg_C, var_C0)
  loc_178BBE6:           If (IsDate(CVar(var_C0)) = 0) Then
  loc_178BBEE:             Proc_281_56_178C134 = 0
  loc_178BBF4:           End If
  loc_178BC2E:           Set var_A0 = Me.TxtGrid
  loc_178BC34:           Call 0.Method_Proc_281_56_178C1340 (arg_C, var_C0, CVar(CLng(Me.Fgrid.Col)))
  loc_178BC47:           var_184 = CVar(Proc_6_33_15125B8(var_C0, CVar(CLng(Me.Fgrid.Row)))) 'String
  loc_178BC4F:           Set var_1D8 = Me.Fgrid
  loc_178BC55:           LateIdCallSt
  loc_178BC86:           var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178BC8E:           var_F4 = CVar(CLng(3)) 'Long
  loc_178BCC3:           If (IsDate(CVar(CStr(Me.Fgrid.TextMatrix)))) = 0) Then
  loc_178BCD9:             var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178BCE1:             var_F4 = CVar(CLng(3)) 'Long
  loc_178BCEB:             var_170 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_178BCF3:             Set var_C0 = Me.Fgrid
  loc_178BCF9:             LateIdCallSt
  loc_178BD0F:           End If
  loc_178BD22:           var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178BD2A:           var_F4 = CVar(CLng(3)) 'Long
  loc_178BD33:           Set var_C0 = Me.Fgrid
  loc_178BD39:           var_170 = var_C0.TextMatrix)
  loc_178BD58:           var_114 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178BD60:           var_1B4 = CVar(CLng(5)) 'Long
  loc_178BD69:           Set var_140 = Me.Fgrid
  loc_178BD6F:           var_194 = var_140.TextMatrix)
  loc_178BDB1:           var_208 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178BDB9:           var_27C = CVar(CLng(4)) 'Long
  loc_178BDDB:           var_228 = (DateDiff("d", CVar(CStr(var_170)), CVar(CStr(var_194)), 1, 1) + 1)
  loc_178BDEB:           var_2BC = CVar(CStr(Format(Me.Fgrid.TextMatrix), "0"))) 'String
  loc_178BDF3:           Set var_1D8 = Me.Fgrid
  loc_178BDF9:           LateIdCallSt
  loc_178BE2E:         Else
  loc_178BE35:           If (var_B4 = CLng(4)) Then
  loc_178BE42:             Set var_A0 = Me.TxtGrid
  loc_178BE48:             Call 0.Method_Proc_281_56_178C1340 (arg_C, var_C0, var_1D8, var_2BC, 1, 1, var_27C)
  loc_178BE67:             Set var_13C = Me.TxtGrid
  loc_178BE6D:             Call 0.Method_Proc_281_56_178C1340 (arg_C, var_140, var_C4, Not(IsNumeric(CVar(var_C0))), var_208, var_194)
  loc_178BE75:             var_1B4 = var_140.Text
  loc_178BE97:             If (var_114 Or (CDbl(Val(var_C4)) <= CDbl(0))) Then
  loc_178BE9E:               var_C4 = CStr(1)
  loc_178BEAB:               Set var_A0 = Me.TxtGrid
  loc_178BEB1:               Call 0.Method_Proc_281_56_178C1340 (arg_C, var_C0, var_C4)
  loc_178BEB9:               var_C0.Text = var_170
  loc_178BEC8:             End If
  loc_178BED5:             Set var_A0 = Me.TxtGrid
  loc_178BEDB:             Call 0.Method_Proc_281_56_178C1340 (arg_C, var_C0, var_C4)
  loc_178BEE3:             var_F4 = var_C0.Text
  loc_178BEFB:             var_E4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178BF13:             var_104 = CVar(CLng(Me.Fgrid.Col)) 'Long
  loc_178BF3F:             var_1E8 = CVar(CStr(Format(CVar(var_C4), "0"))) 'String
  loc_178BF47:             Set var_174 = Me.Fgrid
  loc_178BF4D:             LateIdCallSt
  loc_178BF84:             var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178BF8C:             var_F4 = CVar(CLng(3)) 'Long
  loc_178BFC1:             If (IsDate(CVar(CStr(Me.Fgrid.TextMatrix)))) = 0) Then
  loc_178BFD7:               var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178BFDF:               var_F4 = CVar(CLng(3)) 'Long
  loc_178BFE9:               var_170 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_178BFF1:               Set var_C0 = Me.Fgrid
  loc_178BFF7:               LateIdCallSt
  loc_178C00D:             End If
  loc_178C020:             var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178C028:             var_F4 = CVar(CLng(4)) 'Long
  loc_178C060:             var_114 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178C068:             var_1B4 = CVar(CLng(3)) 'Long
  loc_178C0A6:             var_208 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178C0AE:             var_27C = CVar(CLng(5)) 'Long
  loc_178C0D0:             var_218 = (DateAdd("d", Val(CStr(Me.Fgrid.TextMatrix))), CVar(CStr(Me.Fgrid.TextMatrix)))) - 1)
  loc_178C0E7:             var_2BC = CVar(CStr(Format(DateDiff("d", CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CStr(Me.Fgrid.TextMatrix))), 1, 1), "dd/MMM/YYYY"))) 'String
  loc_178C0EF:             Set var_1D8 = Me.Fgrid
  loc_178C0F5:             LateIdCallSt
  loc_178C128:           End If
  loc_178C128:         End If
  loc_178C128:       End If
  loc_178C128:     End If
  loc_178C128:   End If
  loc_178C128: End If
  loc_178C12D: Proc_281_56_178C134 = &HFF
End Sub

Public Sub Proc_281_57_FBE180
  'Data Table: 537E2C
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBE003: If (CLng(Me.Fgrid.Col) = CLng(1)) Then
  loc_FBE008:   var_92 = 1 'Byte
  loc_FBE00C: End If
  loc_FBE015: Set var_98 = Me.TxtGrid
  loc_FBE01B: Call 0.Method_Proc_281_57_FBE1800 (0, var_B0)
  loc_FBE03E: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBE072: For var_D4 = 1 To CInt((CLng(Me.Fgrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBE096:   If (CLng(var_88) = CLng(Me.Fgrid.Row)) Then
  loc_FBE099:     GoTo loc_FBE16B
  loc_FBE09C:   End If
  loc_FBE0A0:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBE0CA:   var_D0 = Trim(CVar(CStr(Me.Fgrid.TextMatrix))))
  loc_FBE0D4:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBE109:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBE12D:     MsgBox("Duplicate Revenue Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBE146:     Set var_98 = Me.TxtGrid
  loc_FBE14C:     Call 0.Method_Proc_281_57_FBE1800 (0, var_B0, CVar(CLng(var_92)))
  loc_FBE154:     var_B0.SetFocus
  loc_FBE165:     Proc_281_57_FBE180 = 0
  loc_FBE16B:     ' Referenced from: FBE099
  loc_FBE16B:   End If
  loc_FBE16E: Next var_D4 'Integer
  loc_FBE178: Proc_281_57_FBE180 = &HFF
  loc_FBE17E: CExtInstUnk
End Sub

Public Sub Proc_281_58_137AE20
  'Data Table: 537E2C
  Dim var_86 As Integer
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_12C As String
  Dim var_138 As TextBox
  Dim var_108 As Variant
  Dim var_3B4 As TextBox
  Dim var_13C As String
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_3D8 As Variant
  Dim var_478 As Variant
  Dim unk_537E46 As Connection15
  Dim var_8C As Recordset15
  loc_137A62E: var_86 = 0
  loc_137A656: For var_A8 = 1 To CInt((CLng(Me.Fgrid.Rows) - 1)): var_8E = var_A8 'Integer
  loc_137A687:   If ((var_8E > 1) And (CLng(var_8E) < (CLng(Me.Fgrid.Rows) - 1))) Then
  loc_137A68E:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_137A6B0:     var_F8 = CVar(CStr(Me.Fgrid.TextMatrix))) 'String
  loc_137A6B6:     var_108 = Trim(var_F8)
  loc_137A6D2:     If (var_108 = vbNullString) Then
  loc_137A6EE:       MsgBox("Define revenue ", &H40, var_F8, var_108, var_128)
  loc_137A6FE:       Proc_281_58_137AE20 = CVar(CLng(&HA))
  loc_137A704:     End If
  loc_137A704:   End If
  loc_137A708:   var_B8 = CVar(CLng(var_8E)) 'Long
  loc_137A710:   var_D8 = CVar(CLng(&HA)) 'Long
  loc_137A730:   var_108 = Trim(CVar(CStr(Me.Fgrid.TextMatrix))))
  loc_137A74C:   If CBool(var_108 <> vbNullString) Then
  loc_137A753:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_137A775:     var_12C = CStr(Me.Fgrid.TextMatrix))
  loc_137A78B:     If (CDbl(Val(var_12C)) <= CDbl(0)) Then
  loc_137A7A1:       Me.Fgrid.Row = CVar(CLng(var_8E))
  loc_137A7AC:       var_B8 = CVar(CLng(2)) 'Long
  loc_137A7BB:       Me.Fgrid.Col = var_B8
  loc_137A7C7:       Set var_94 = Me.Fgrid
  loc_137A7D8:       Call FGrid_UnknownEvent_B()
  loc_137A7E2:       Call TxtGrid_GotFocus(0)
  loc_137A7ED:       Call 0.Method_arg_50 (var_12C, Fgrid.DispID_8001, CVar(CLng(2)), var_B8, CVar(CLng(2)))
  loc_137A803:       var_B8 = "Please Fill Valid Amount."
  loc_137A80E:       MsgBox(var_B8, 0, CVar(var_12C), var_108, var_128)
  loc_137A81E:       Proc_281_58_137AE20 = var_B8
  loc_137A824:     End If
  loc_137A828:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_137A85D:     If Not(IsDate(CVar(CStr(Me.Fgrid.TextMatrix))))) Then
  loc_137A873:       Me.Fgrid.Row = CVar(CLng(var_8E))
  loc_137A87E:       var_B8 = CVar(CLng(3)) 'Long
  loc_137A88D:       Me.Fgrid.Col = var_B8
  loc_137A899:       Set var_94 = Me.Fgrid
  loc_137A8AA:       Call FGrid_UnknownEvent_B()
  loc_137A8B4:       Call TxtGrid_GotFocus(0)
  loc_137A8BF:       Call 0.Method_arg_50 (var_12C, Fgrid.DispID_8001, CVar(CLng(3)), var_B8)
  loc_137A8D5:       var_B8 = "Please Fill Valid Date."
  loc_137A8E0:       MsgBox(var_B8, 0, CVar(var_12C), var_108, var_128)
  loc_137A8F0:       Proc_281_58_137AE20 = var_B8
  loc_137A8F6:     End If
  loc_137A8FA:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_137A91C:     var_12C = CStr(Me.Fgrid.TextMatrix))
  loc_137A932:     If (CDbl(Val(var_12C)) <= CDbl(0)) Then
  loc_137A948:       Me.Fgrid.Row = CVar(CLng(var_8E))
  loc_137A962:       Me.Fgrid.Col = CVar(CLng(4))
  loc_137A96E:       Set var_94 = Me.Fgrid
  loc_137A97F:       Call FGrid_UnknownEvent_B()
  loc_137A989:       Call TxtGrid_GotFocus(0)
  loc_137A994:       Call 0.Method_arg_50 (var_12C, Fgrid.DispID_8001, CVar(CLng(4)))
  loc_137A9AA:       var_B8 = "Please Fill Valid Days."
  loc_137A9B5:       MsgBox(var_B8, 0, CVar(var_12C), var_108, var_128)
  loc_137A9C5:       Proc_281_58_137AE20 = var_B8
  loc_137A9CB:     End If
  loc_137A9CF:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_137AA04:     If Not(IsDate(CVar(CStr(Me.Fgrid.TextMatrix))))) Then
  loc_137AA1A:       Me.Fgrid.Row = CVar(CLng(var_8E))
  loc_137AA34:       Me.Fgrid.Col = CVar(CLng(5))
  loc_137AA40:       Set var_94 = Me.Fgrid
  loc_137AA51:       Call FGrid_UnknownEvent_B()
  loc_137AA5B:       Call TxtGrid_GotFocus(0)
  loc_137AA66:       Call 0.Method_arg_50 (var_12C, Fgrid.DispID_8001, CVar(CLng(5)))
  loc_137AA7C:       var_B8 = "Please Fill Valid Date."
  loc_137AA87:       MsgBox(var_B8, 0, CVar(var_12C), var_108, var_128)
  loc_137AA97:       Proc_281_58_137AE20 = var_B8
  loc_137AA9D:     End If
  loc_137AA9D:   End If
  loc_137AAA0: Next var_A8 'Integer
  loc_137AACA: For var_132 = 1 To CInt((CLng(Me.Fgrid.Rows) - 1)): var_8E = var_132 'Integer
  loc_137AADE:   Set var_94 = Me.Txt
  loc_137AAE4:   Call 0.Method_Proc_281_58_137AE200 (CInt(0), var_138)
  loc_137AAF5:   var_B8 = CVar(CLng(var_8E)) 'Long
  loc_137AAFD:   var_D8 = CVar(CLng(&HA)) 'Long
  loc_137AB0C:   var_A4 = Me.Fgrid.TextMatrix)
  loc_137AB33:   var_F8 = Me.Fgrid.TextMatrix)
  loc_137AB44:   Proc_6_7_F26918(var_128, CVar(CStr(var_F8)), CVar(CLng(3)), CVar(CLng(var_8E)))
  loc_137AB75:   Proc_6_7_F26918(var_234, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_8E)))
  loc_137ABA6:   Proc_6_7_F26918(var_2D8, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(var_8E)))
  loc_137ABD7:   Proc_6_7_F26918(var_37C, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_8E)))
  loc_137ABEA:   Set var_3B0 = Me.Txt
  loc_137ABF0:   Call 0.Method_Proc_281_58_137AE200 (CInt(&H1F), var_3B4, var_3B8, var_A4)
  loc_137ABF8:   var_D8 = var_3B4.Text
  loc_137AC11:   var_13C = "Select MemBill1.VNo from MemBill1 Inner Join MemBill On MemBill.DocId=MemBill1.DocId where MemBill.MemCode='" & var_138.Tag
  loc_137AC2A:   var_190 = CVar(var_13C & "' And MemBill1.FacilityCode='" & CStr(var_A4) & "' And (MemBill1.FrPeriod Between ") 'String
  loc_137AC30:   var_1A0 = var_190 & var_128 
  loc_137AC73:   var_3D8 = var_1A0 & " And " & var_234 & " Or MemBill1.ToPeriod Between " & var_2D8 & " And " & var_37C & ") And MemBill1.DocId<>'" & CVar(var_3B8) 
  loc_137ACA2:   var_478 = var_3D8 & "' And MemBill1.Site_Code='" & CVar(MemVar_1F95070) & "' and (MemBill1.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' or MemBill1.LOGSITE_CODE='HO')" 
  loc_137ACB0:   unk_537E46.Execute CStr(var_478), var_49C, -1
  loc_137ACBB:   Set var_8C = var_4A0
  loc_137AD37:   If (var_8C.RecordCount > 0) Then
  loc_137AD4D:     Me.Fgrid.Row = CVar(CLng(var_8E))
  loc_137AD67:     Me.Fgrid.Col = CVar(CLng(1))
  loc_137AD73:     Set var_94 = Me.Fgrid
  loc_137AD84:     Call FGrid_UnknownEvent_B()
  loc_137AD8E:     Call TxtGrid_GotFocus(0)
  loc_137ADB9:     Proc_6_39_E7D3A0(var_F8, CVar(var_8C.Fields.Item("VNo")), Fgrid.DispID_8001)
  loc_137ADE0:     MsgBox("Revenue Adready Billed Against Voucher No. " & var_F8, &H40, "Information", var_190, var_1A0)
  loc_137ADFC:     Set var_8C = Nothing
  loc_137ADFF:     Proc_281_58_137AE20 = var_4A0
  loc_137AE05:   End If
  loc_137AE08: Next var_132 'Integer
  loc_137AE17: Set var_8C = Nothing
  loc_137AE1A: Proc_281_58_137AE20 = &HFF
End Sub
