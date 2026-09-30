VERSION 5.00
Begin VB.Form FrmItemMastRaw
  Caption = "Item Entry (Raw)"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmItemMastRaw.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 11625
  ClientHeight = 9435
  LockControls = -1  'True
  Begin Frame FrLblInfo
    Caption = "Label Info."
    BackColor = &HC0FFFF&
    ForeColor = &H80&
    Left = 6990
    Top = 1995
    Width = 5175
    Height = 3045
    Visible = 0   'False
    TabIndex = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox Txt
      Index = 24
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1260
      Top = 255
      Width = 3855
      Height = 285
      TabIndex = 82
      BorderStyle = 0 'None
      MaxLength = 40
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
      ForeColor = &HC00000&
      Left = 1260
      Top = 570
      Width = 3855
      Height = 285
      TabIndex = 81
      BorderStyle = 0 'None
      MaxLength = 40
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
      ForeColor = &HC00000&
      Left = 1260
      Top = 885
      Width = 3855
      Height = 285
      TabIndex = 80
      BorderStyle = 0 'None
      MaxLength = 40
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
      ForeColor = &HC00000&
      Left = 1260
      Top = 1200
      Width = 3855
      Height = 285
      TabIndex = 79
      BorderStyle = 0 'None
      MaxLength = 40
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
      ForeColor = &HC00000&
      Left = 1260
      Top = 1515
      Width = 3855
      Height = 285
      TabIndex = 78
      BorderStyle = 0 'None
      MaxLength = 40
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
      Index = 29
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1260
      Top = 1830
      Width = 3855
      Height = 285
      TabIndex = 77
      BorderStyle = 0 'None
      MaxLength = 40
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
      Index = 30
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1260
      Top = 2145
      Width = 3855
      Height = 285
      TabIndex = 76
      BorderStyle = 0 'None
      MaxLength = 40
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
    Begin DTPicker DTP
      Left = 1425
      Top = 2505
      Width = 1980
      Height = 315
      TabIndex = 83
    End
    Begin BtnEnh CmdLabelPrint
      Left = 3855
      Top = 2550
      Width = 1305
      Height = 465
      TabIndex = 84
    End
    Begin Label LblName
      Caption = "Label Name"
      Index = 21
      ForeColor = &HC00000&
      Left = 105
      Top = 255
      Width = 1155
      Height = 240
      TabIndex = 92
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
      Caption = "Label Qty."
      Index = 14
      ForeColor = &HC00000&
      Left = 105
      Top = 570
      Width = 975
      Height = 240
      TabIndex = 91
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
      Caption = "Remark 1"
      Index = 15
      ForeColor = &HC00000&
      Left = 105
      Top = 885
      Width = 900
      Height = 240
      TabIndex = 90
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
      Caption = "Remark 2"
      Index = 16
      ForeColor = &HC00000&
      Left = 105
      Top = 1200
      Width = 900
      Height = 240
      TabIndex = 89
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
      Caption = "Remark 3"
      Index = 17
      ForeColor = &HC00000&
      Left = 105
      Top = 1515
      Width = 900
      Height = 240
      TabIndex = 88
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
      Caption = "Remark 4"
      Index = 18
      ForeColor = &HC00000&
      Left = 105
      Top = 1830
      Width = 900
      Height = 240
      TabIndex = 87
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
      Caption = "Remark 5"
      Index = 19
      ForeColor = &HC00000&
      Left = 105
      Top = 2145
      Width = 900
      Height = 240
      TabIndex = 86
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
      Caption = "Packing Date"
      Index = 20
      ForeColor = &HC00000&
      Left = 105
      Top = 2535
      Width = 1260
      Height = 240
      TabIndex = 85
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11625
    Height = 450
    TabIndex = 74
  End
  Begin TextBox Txt
    Index = 23
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2805
    Top = 1710
    Width = 3855
    Height = 285
    TabIndex = 2
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
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2805
    Top = 2340
    Width = 3855
    Height = 285
    TabIndex = 4
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
  Begin DataGrid DGFinItem
    Left = 7290
    Top = 5790
    Width = 8220
    Height = 2220
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 68
  End
  Begin TextBox Txt
    Index = 21
    BackColor = &HFFFFFF&
    Left = 2850
    Top = 8265
    Width = 3855
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 50
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
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2805
    Top = 5490
    Width = 525
    Height = 285
    TabIndex = 16
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
  Begin Frame Frame1
    Caption = "Frame1"
    ForeColor = &HC00000&
    Left = 8550
    Top = 5730
    Width = 6510
    Height = 3375
    Visible = 0   'False
    TabIndex = 52
    Appearance = 0 'Flat
    Begin CommandButton Command6
      Caption = "X"
      BackColor = &HE0E0E0&
      Left = 6105
      Top = 120
      Width = 360
      Height = 315
      TabIndex = 64
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &H8000000F&
    End
    Begin DataGrid DgNewUnit
      Left = 2205
      Top = 990
      Width = 2100
      Height = 2295
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 62
    End
  End
End
Begin DataGrid DgXItem
  Left = 2205
  Top = 435
  Width = 4230
  Height = 2220
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 61
End
Begin CommandButton Command4
  Caption = "Manage Item's Purchase Unit"
  BackColor = &HE0E0E0&
  Left = 2085
  Top = 2505
  Width = 2430
  Height = 705
  TabIndex = 59
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  MaskColor = &H8000000F&
End
Begin TextBox Txt
  Index = 19
  BackColor = &HFFFFFF&
  Left = 2205
  Top = 720
  Width = 1440
  Height = 255
  TabIndex = 55
  BorderStyle = 0 'None
  MaxLength = 6
  BeginProperty Font
    Name = "MS Sans Serif"
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
  Left = 2205
  Top = 450
  Width = 1440
  Height = 255
  TabIndex = 54
  BorderStyle = 0 'None
  MaxLength = 6
  BeginProperty Font
    Name = "MS Sans Serif"
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
  Left = 2205
  Top = 180
  Width = 3855
  Height = 255
  TabIndex = 53
  BorderStyle = 0 'None
  MaxLength = 35
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin Label Label3
  Caption = "Nature Of Units Must Be same"
  ForeColor = &HFF&
  Left = 255
  Top = 2205
  Width = 5955
  Height = 315
  TabIndex = 60
  Alignment = 2 'Center
  BeginProperty Font
    Name = "Tahoma"
    Size = 12
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblLedgerAc
  Caption = "Old Purchase Unit"
  Index = 5
  ForeColor = &H0&
  Left = 390
  Top = 435
  Width = 1605
  Height = 240
  TabIndex = 58
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblName
  Caption = "Item Name"
  Index = 11
  ForeColor = &H0&
  Left = 390
  Top = 180
  Width = 975
  Height = 240
  TabIndex = 57
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblLedgerAc
  Caption = "New Purchase Unit"
  Index = 4
  ForeColor = &H0&
  Left = 405
  Top = 705
  Width = 1695
  Height = 240
  TabIndex = 56
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin CommandButton Command5
  Caption = "Manage Item's Purchase Unit"
  BackColor = &HE0E0E0&
  Left = 4350
  Top = 8325
  Width = 2430
  Height = 705
  Visible = 0   'False
  TabIndex = 63
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  MaskColor = &H8000000F&
End
Begin CommandButton Command3
  Caption = "Manage Item Issue Unit"
  BackColor = &HE0E0E0&
  Left = 4905
  Top = 10395
  Width = 1560
  Height = 465
  Visible = 0   'False
  TabIndex = 51
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  MaskColor = &H8000000F&
End
Begin CommandButton Command2
  Caption = "&Wizard"
  BackColor = &HE0E0E0&
  Left = 4875
  Top = 5850
  Width = 1560
  Height = 1020
  Visible = 0   'False
  TabIndex = 50
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  MaskColor = &H8000000F&
End
Begin DataGrid DGConsumptionItem
  Left = 3450
  Top = 8010
  Width = 4230
  Height = 2220
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 46
End
Begin DataGrid DGHelp
  Left = 3165
  Top = 7650
  Width = 4230
  Height = 2220
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 19
End
Begin DataGrid DGCat
  Left = 2865
  Top = 7290
  Width = 4410
  Height = 2040
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 32
End
Begin DataGrid DGItemGroup
  Left = 2520
  Top = 6945
  Width = 4965
  Height = 2130
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 24
End
Begin DataGrid DGUnit
  Left = 2235
  Top = 6600
  Width = 2100
  Height = 2295
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 39
End
Begin TextBox Txt
  Index = 16
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2805
  Top = 2025
  Width = 3855
  Height = 285
  TabIndex = 3
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
Begin CommandButton Command1
  Caption = "&Consumption"
  BackColor = &HE0E0E0&
  Left = 2310
  Top = 9555
  Width = 1560
  Height = 1020
  Visible = 0   'False
  TabIndex = 43
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  MaskColor = &H8000000F&
End
Begin TextBox Txt
  Index = 13
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2805
  Top = 1125
  Width = 1440
  Height = 285
  Visible = 0   'False
  TabIndex = 0
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
  Left = 10725
  Top = 660
  Width = 1230
  Height = 240
  Visible = 0   'False
  TabIndex = 35
  BorderStyle = 0 'None
  MaxLength = 8
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
  Index = 11
  Left = 8955
  Top = 390
  Width = 2460
  Height = 240
  Visible = 0   'False
  TabIndex = 33
  BorderStyle = 0 'None
  MaxLength = 21
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
  Index = 10
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2805
  Top = 3915
  Width = 3855
  Height = 285
  TabIndex = 9
  BorderStyle = 0 'None
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
  Index = 8
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2805
  Top = 5805
  Width = 1440
  Height = 285
  Visible = 0   'False
  TabIndex = 17
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  ForeColor = &HC00000&
  Left = 2760
  Top = 7725
  Width = 1440
  Height = 255
  Visible = 0   'False
  TabIndex = 18
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Index = 7
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2805
  Top = 5175
  Width = 1440
  Height = 285
  TabIndex = 14
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  ForeColor = &HC00000&
  Left = 2805
  Top = 4545
  Width = 1440
  Height = 285
  TabIndex = 12
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  ForeColor = &HC00000&
  Left = 2805
  Top = 4860
  Width = 1440
  Height = 285
  TabIndex = 13
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  ForeColor = &HC00000&
  Left = 2805
  Top = 4230
  Width = 1440
  Height = 285
  TabIndex = 11
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  ForeColor = &HC00000&
  Left = 2805
  Top = 1395
  Width = 3855
  Height = 285
  TabIndex = 1
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
  Index = 3
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2805
  Top = 3600
  Width = 3855
  Height = 285
  TabIndex = 8
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
  Index = 2
  BackColor = &HFFFFFF&
  Left = 2850
  Top = 7995
  Width = 3855
  Height = 255
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 10
  BorderStyle = 0 'None
  MaxLength = 12
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
  ForeColor = &HC00000&
  Left = 2805
  Top = 2655
  Width = 1440
  Height = 285
  TabIndex = 5
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
  Index = 14
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2805
  Top = 2970
  Width = 1440
  Height = 285
  TabIndex = 6
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
  Index = 15
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2805
  Top = 3285
  Width = 1440
  Height = 285
  TabIndex = 7
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Left = 7365
  Top = 7635
  Width = 1980
  Height = 1440
  Visible = 0   'False
  TabIndex = 42
End
Begin BtnEnh ChkLblInfo
  Left = 9195
  Top = 1530
  Width = 2955
  Height = 465
  TabIndex = 93
End
Begin Label LblLDt
  Caption = "Last Update"
  ForeColor = &HFF0000&
  Left = 4050
  Top = 6855
  Width = 2790
  Height = 285
  TabIndex = 73
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
  Left = 675
  Top = 6855
  Width = 2880
  Height = 255
  TabIndex = 72
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
  TabIndex = 71
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
  Caption = "HSN Code"
  Index = 13
  ForeColor = &HC00000&
  Left = 1050
  Top = 1710
  Width = 960
  Height = 240
  TabIndex = 70
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
  Caption = "Bar Code"
  Index = 7
  ForeColor = &HC00000&
  Left = 1050
  Top = 2325
  Width = 885
  Height = 240
  TabIndex = 69
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
  Caption = "Finish Item"
  Index = 12
  ForeColor = &H0&
  Left = 1200
  Top = 8265
  Width = 945
  Height = 240
  Visible = 0   'False
  TabIndex = 67
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
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 4
  ForeColor = &H80&
  Left = 3345
  Top = 5505
  Width = 885
  Height = 240
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
Begin Label LblLedgerAc
  Caption = "Active"
  Index = 6
  ForeColor = &HC00000&
  Left = 1050
  Top = 5490
  Width = 585
  Height = 240
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
Begin Label Label1
  Caption = "In Wt. Unit"
  Index = 2
  ForeColor = &H80&
  Left = 4260
  Top = 5190
  Width = 990
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
Begin Label Label1
  Caption = "In Wt. Unit"
  Index = 1
  ForeColor = &H80&
  Left = 4260
  Top = 4860
  Width = 990
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
Begin Label Label1
  Caption = "In Wt. Unit"
  Index = 0
  ForeColor = &H80&
  Left = 4260
  Top = 4545
  Width = 990
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
Begin Label LblName
  Caption = "Consumption Item"
  Index = 5
  ForeColor = &HC00000&
  Left = 1050
  Top = 2025
  Width = 1725
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
Begin Label Label2
  BackColor = &HC0FFFF&
  ForeColor = &H80&
  Left = 4260
  Top = 2655
  Width = 2400
  Height = 270
  TabIndex = 44
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
Begin Label LblName
  Caption = "Conversion Ratio"
  Index = 4
  ForeColor = &HC00000&
  Left = 1050
  Top = 3285
  Width = 1620
  Height = 240
  TabIndex = 41
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
  Caption = "Wt. Unit"
  Index = 1
  ForeColor = &HC00000&
  Left = 1050
  Top = 2955
  Width = 750
  Height = 240
  TabIndex = 40
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
  Caption = "Code"
  Index = 3
  ForeColor = &HC00000&
  Left = 1050
  Top = 1125
  Width = 495
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
Begin Label Label1
  Caption = "Vr. No."
  Index = 3
  ForeColor = &H0&
  Left = 9405
  Top = 660
  Width = 585
  Height = 240
  Visible = 0   'False
  TabIndex = 37
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
Begin Label LblVPrefix
  Caption = "VPrefix"
  ForeColor = &HFF&
  Left = 10020
  Top = 660
  Width = 675
  Height = 240
  Visible = 0   'False
  TabIndex = 36
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
  Caption = "DocID"
  Index = 29
  ForeColor = &H0&
  Left = 8385
  Top = 405
  Width = 555
  Height = 210
  Visible = 0   'False
  TabIndex = 34
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
  Caption = "Item Category"
  Index = 3
  ForeColor = &HC00000&
  Left = 1050
  Top = 3915
  Width = 1335
  Height = 240
  TabIndex = 31
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
  Caption = "Min Stock"
  Index = 8
  ForeColor = &HC00000&
  Left = 1050
  Top = 4545
  Width = 930
  Height = 240
  TabIndex = 30
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
  Caption = "Max Stock"
  Index = 10
  ForeColor = &HC00000&
  Left = 1050
  Top = 4860
  Width = 990
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
  Caption = "Reorder Stock"
  Index = 9
  ForeColor = &HC00000&
  Left = 1050
  Top = 5175
  Width = 1350
  Height = 240
  TabIndex = 28
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
  Caption = "Purchase Rate"
  Index = 7
  ForeColor = &HC00000&
  Left = 1050
  Top = 4230
  Width = 1380
  Height = 240
  TabIndex = 27
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
  Caption = "Opening value"
  Index = 1
  ForeColor = &HC00000&
  Left = 975
  Top = 7725
  Width = 1365
  Height = 240
  Visible = 0   'False
  TabIndex = 26
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
Begin Label LblName
  Caption = "Item Name"
  Index = 0
  ForeColor = &HC00000&
  Left = 1050
  Top = 1395
  Width = 1035
  Height = 240
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
Begin Label LblLedgerAc
  Caption = "Item Group"
  Index = 0
  ForeColor = &HC00000&
  Left = 1050
  Top = 3600
  Width = 1065
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
Begin Label LblName
  Caption = "Opening Stock"
  Index = 6
  ForeColor = &HC00000&
  Left = 1050
  Top = 5805
  Width = 1395
  Height = 240
  Visible = 0   'False
  TabIndex = 22
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
  Caption = "Type"
  Index = 2
  ForeColor = &H0&
  Left = 1230
  Top = 7995
  Width = 420
  Height = 240
  Visible = 0   'False
  TabIndex = 21
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
Begin Label LblLedgerAc
  Caption = "Purchase Unit"
  Index = 2
  ForeColor = &HC00000&
  Left = 1050
  Top = 2640
  Width = 1320
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
End
End

Attribute VB_Name = "FrmItemMastRaw"

Private global_120 As Integer
Private global_88 As Double
Private global_96 As Double

Private Sub Command2_Click() 'E62A4C
  'Data Table: 525C5C
  Dim Me As Recordset15
  loc_E62A13: If (Me.RecordCount > 0) Then
  loc_E62A1C:   Me.MoveFirst
  loc_E62A21:   ' Referenced from: E62A45
  loc_E62A33:   If Not(Me.EOF) Then
  loc_E62A36:     Call TopCtrl1_UnknownEvent_D()
  loc_E62A3B:     Call TopCtrl1_UnknownEvent_16()
  loc_E62A40:     Call TopCtrl1_UnknownEvent_12()
  loc_E62A45:     GoTo loc_E62A21
  loc_E62A48:   End If
  loc_E62A48: End If
  loc_E62A48: Exit Sub
End Sub

Private Sub Command5_Click() 'EB71EC
  'Data Table: 525C5C
  Dim var_88 As Variant
  Dim var_8C As TextBox
  loc_EB7158: Me.Frame1.Visible = True
  loc_EB716C: Me.Command4.Enabled = True
  loc_EB7181: Set var_88 = Me.Txt
  loc_EB7187: Call 0.Method_Command5_Click0 (CInt(&H11), var_8C)
  loc_EB718F: var_8C.Enabled = True
  loc_EB71A8: Set var_88 = Me.Txt
  loc_EB71AE: Call 0.Method_Command5_Click0 (CInt(&H12), var_8C)
  loc_EB71B6: var_8C.Enabled = False
  loc_EB71CF: Set var_88 = Me.Txt
  loc_EB71D5: Call 0.Method_Command5_Click0 (CInt(&H13), var_8C)
  loc_EB71DD: var_8C.Enabled = True
  loc_EB71E9: Exit Sub
  loc_EB71EA: Result  End Sub 'Currency
End Sub

Private Sub Txt_GotFocus(Index As Integer) '151736C
  'Data Table: 525C5C
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_9E As Integer
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_90 As Variant
  Dim var_88 As DataGrid
  loc_1516452: Set var_88 = Me.Txt
  loc_1516458: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1516466: Proc_6_74_E23240(var_8C)
  loc_1516472: Call Proc_50_50_F98578(var_8C)
  loc_1516477: On Error Goto loc_1517328
  loc_151647D: var_92 = Index
  loc_1516488: If Not (var_92 = CInt(6)) Then
  loc_1516493:   If Not (var_92 = CInt(5)) Then
  loc_151649E:     If Not (var_92 = CInt(7)) Then
  loc_15164A9:       If Not (var_92 = CInt(8)) Then
  loc_15164B4:         If Not (var_92 = CInt(4)) Then
  loc_15164BF:           If Not (var_92 = CInt(9)) Then
  loc_15164CA:             If (var_92 = CInt(&HF)) Then
  loc_15164CD:             End If
  loc_15164CD:           End If
  loc_15164CD:         End If
  loc_15164CD:       End If
  loc_15164CD:     End If
  loc_15164CD:   End If
  loc_15164DC:   Set var_88 = Me.Txt
  loc_15164E2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15164EA:   var_8C.SelStart = 0
  loc_1516503:   Set var_88 = Me.Txt
  loc_1516509:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1516511:   var_98 = var_8C.Text
  loc_1516524:   Set var_90 = Me.Txt
  loc_151652A:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_1516532:   var_9C.SelLength = Len(var_98)
  loc_1516545: End If
  loc_1516548: var_9E = Index
  loc_1516553: If (var_9E = CInt(&H11)) Then
  loc_151656D:   If (Me.RecordCount > 0) Then
  loc_151657C:     Set var_8C = Nothing
  loc_1516594:     Proc_6_137_1192FDC(Me.DgXItem, global_76, Index)
  loc_15165A2:   End If
  loc_15165F0:   Set var_88 = Me.Txt
  loc_15165F6:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_15165FE:   var_8C = var_8C.Text
  loc_1516616:   If (var_9E Or (var_98 = vbNullString)) Then
  loc_1516619:     Exit Sub
  loc_151661A:   End If
  loc_1516627:   Set var_88 = Me.Txt
  loc_151662D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1516635:   var_98 = var_8C.Text
  loc_1516647:   var_B8 = "Name"
  loc_1516682:   If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_151668B:     Me.MoveFirst
  loc_15166AE:     Set var_88 = Me.Txt
  loc_15166B4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_15166BC:     0 = var_8C.Text
  loc_15166D5:     Me.Find 1 & var_98 & "'", var_B8, var_92
  loc_15166EA:   End If
  loc_15166ED: Else
  loc_15166F5:   If (var_9E = CInt(&H13)) Then
  loc_151670F:     If (Me.RecordCount > 0) Then
  loc_151671E:       Set var_8C = Nothing
  loc_1516736:       Proc_6_137_1192FDC(Me.DgNewUnit, global_80)
  loc_1516744:     End If
  loc_1516792:     Set var_88 = Me.Txt
  loc_1516798:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_15167A0:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15167B8:     If (Index Or (var_98 = vbNullString)) Then
  loc_15167BB:       Exit Sub
  loc_15167BC:     End If
  loc_15167C9:     Set var_88 = Me.Txt
  loc_15167CF:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15167D7:     var_98 = var_8C.Text
  loc_15167E9:     var_B8 = "Name"
  loc_1516824:     If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_151682D:       Me.MoveFirst
  loc_1516850:       Set var_88 = Me.Txt
  loc_1516856:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_151685E:       0 = var_8C.Text
  loc_1516877:       Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_151688C:     End If
  loc_151688F:   Else
  loc_1516897:     If (var_9E = CInt(&H10)) Then
  loc_15168B1:       If (Me.RecordCount > 0) Then
  loc_15168BF:         Set var_8C = Me.FGPoint
  loc_15168D7:         Proc_6_137_1192FDC(Me.DGConsumptionItem, global_72)
  loc_15168E5:       End If
  loc_1516933:       Set var_88 = Me.Txt
  loc_1516939:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1516941:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1516959:       If (Index Or (var_98 = vbNullString)) Then
  loc_151695C:         Exit Sub
  loc_151695D:       End If
  loc_151696A:       Set var_88 = Me.Txt
  loc_1516970:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1516978:       var_98 = var_8C.Text
  loc_151698A:       var_B8 = "Name"
  loc_15169C5:       If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_15169CE:         Me.MoveFirst
  loc_15169F1:         Set var_88 = Me.Txt
  loc_15169F7:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_15169FF:         0 = var_8C.Text
  loc_1516A18:         Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_1516A2D:       End If
  loc_1516A30:     Else
  loc_1516A38:       If (var_9E = CInt(&H15)) Then
  loc_1516A52:         If (Me.RecordCount > 0) Then
  loc_1516A60:           Set var_8C = Me.FGPoint
  loc_1516A78:           Proc_6_137_1192FDC(Me.DGFinItem, global_84)
  loc_1516A86:         End If
  loc_1516AD4:         Set var_88 = Me.Txt
  loc_1516ADA:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1516AE2:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1516AFA:         If (Index Or (var_98 = vbNullString)) Then
  loc_1516AFD:           Exit Sub
  loc_1516AFE:         End If
  loc_1516B0B:         Set var_88 = Me.Txt
  loc_1516B11:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1516B19:         var_98 = var_8C.Text
  loc_1516B2B:         var_B8 = "Name"
  loc_1516B66:         If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_1516B6F:           Me.MoveFirst
  loc_1516B92:           Set var_88 = Me.Txt
  loc_1516B98:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1516BA0:           0 = var_8C.Text
  loc_1516BB9:           Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_1516BCE:         End If
  loc_1516BD1:       Else
  loc_1516BD9:         If (var_9E = CInt(0)) Then
  loc_1516BF3:           If (Me.RecordCount > 0) Then
  loc_1516C01:             Set var_8C = Me.FGPoint
  loc_1516C19:             Proc_6_137_1192FDC(Me.DGHelp, global_56)
  loc_1516C27:           End If
  loc_1516C75:           Set var_88 = Me.Txt
  loc_1516C7B:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1516C83:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1516C9B:           If (Index Or (var_98 = vbNullString)) Then
  loc_1516C9E:             Exit Sub
  loc_1516C9F:           End If
  loc_1516CAC:           Set var_88 = Me.Txt
  loc_1516CB2:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1516CBA:           var_98 = var_8C.Text
  loc_1516CCC:           var_B8 = "Name"
  loc_1516D07:           If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_1516D10:             Me.MoveFirst
  loc_1516D33:             Set var_88 = Me.Txt
  loc_1516D39:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1516D41:             0 = var_8C.Text
  loc_1516D5A:             Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_1516D6F:           End If
  loc_1516D72:         Else
  loc_1516D7A:           If (var_9E = CInt(3)) Then
  loc_1516D94:             If (Me.RecordCount > 0) Then
  loc_1516DA2:               Set var_8C = Me.FGPoint
  loc_1516DBA:               Proc_6_137_1192FDC(Me.DGItemGroup, global_60)
  loc_1516DC8:             End If
  loc_1516E16:             Set var_88 = Me.Txt
  loc_1516E1C:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1516E24:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1516E3C:             If (Index Or (var_98 = vbNullString)) Then
  loc_1516E3F:               Exit Sub
  loc_1516E40:             End If
  loc_1516E4D:             Set var_88 = Me.Txt
  loc_1516E53:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1516E5B:             var_98 = var_8C.Text
  loc_1516E6D:             var_B8 = "Name"
  loc_1516EA8:             If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_1516EB1:               Me.MoveFirst
  loc_1516ED4:               Set var_88 = Me.Txt
  loc_1516EDA:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1516EE2:               0 = var_8C.Text
  loc_1516EFB:               Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_1516F10:             End If
  loc_1516F13:           Else
  loc_1516F1B:             If (var_9E = CInt(&HA)) Then
  loc_1516F35:               If (Me.RecordCount > 0) Then
  loc_1516F43:                 Set var_8C = Me.FGPoint
  loc_1516F5B:                 Proc_6_137_1192FDC(Me.DGCat, global_64)
  loc_1516F69:               End If
  loc_1516FB7:               Set var_88 = Me.Txt
  loc_1516FBD:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1516FC5:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1516FDD:               If (Index Or (var_98 = vbNullString)) Then
  loc_1516FE0:                 Exit Sub
  loc_1516FE1:               End If
  loc_1516FEE:               Set var_88 = Me.Txt
  loc_1516FF4:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1516FFC:               var_98 = var_8C.Text
  loc_151700E:               var_B8 = "Name"
  loc_1517025:               var_9C = Me.Fields.Item(var_B8)
  loc_1517049:               If CBool(CVar(var_98) <> var_9C.Value) Then
  loc_1517052:                 Me.MoveFirst
  loc_1517075:                 Set var_88 = Me.Txt
  loc_151707B:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1517083:                 0 = var_8C.Text
  loc_151709C:                 Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_15170B1:               End If
  loc_15170B4:             Else
  loc_15170BC:               If Not (var_9E = CInt(1)) Then
  loc_15170C7:                 If (var_9E = CInt(&HE)) Then
  loc_15170CA:                 End If
  loc_15170D7:                 Set var_88 = Me.Txt
  loc_15170DD:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15170FC:                 Me.DGUnit.Left = CVar(var_8C.Left)
  loc_1517117:                 Set var_90 = Me.Txt
  loc_151711D:                 Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_1517137:                 Set var_88 = Me.Txt
  loc_151713D:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1517155:                 var_B8 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H19))) 'Single
  loc_1517164:                 Me.DGUnit.Top = CVar(var_8C.Left)
  loc_1517189:                 Me.DGUnit.Tag = CVar(CStr(Index))
  loc_15171AB:                 If (Me.RecordCount > 0) Then
  loc_15171B9:                   Set var_8C = Me.FGPoint
  loc_15171D1:                   Proc_6_137_1192FDC(Me.DGUnit, global_68)
  loc_15171DF:                 End If
  loc_151722D:                 Set var_88 = Me.Txt
  loc_1517233:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_151723B:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1517253:                 If (Index Or (var_98 = vbNullString)) Then
  loc_1517256:                   Exit Sub
  loc_1517257:                 End If
  loc_1517264:                 Set var_88 = Me.Txt
  loc_151726A:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1517272:                 var_98 = var_8C.Text
  loc_1517284:                 var_B8 = "Name"
  loc_15172BF:                 If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_15172C8:                   Me.MoveFirst
  loc_15172EB:                   Set var_88 = Me.Txt
  loc_15172F1:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_15172F9:                   0 = var_8C.Text
  loc_1517312:                   Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_1517327:                 End If
  loc_1517327:               End If
  loc_1517327:             End If
  loc_1517327:           End If
  loc_1517327:         End If
  loc_1517327:       End If
  loc_1517327:     End If
  loc_1517327:   End If
  loc_1517327: End If
  loc_1517327: Exit Sub
  loc_1517328: ' Referenced from: 1516477
  loc_1517330: Set var_88 = Err()
  loc_1517336: Call 0.Method_arg_2C (var_98)
  loc_1517357: MsgBox(CVar(var_98), &H40, "Information", var_E8, var_128)
  loc_151736A: Exit Sub
  loc_151736B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13934D4
  'Data Table: 525C5C
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As DataGrid
  Dim var_E4 As Variant
  Dim var_9C As DataGrid
  Dim var_F4 As Variant
  loc_1392C1A: If (CLng(Shift) = &H1B) Then
  loc_1392C1D:   Call Proc_50_50_F98578()
  loc_1392C22:   Exit Sub
  loc_1392C23: End If
  loc_1392C26: var_86 = KeyCode
  loc_1392C31: If (var_86 = CInt(&H11)) Then
  loc_1392C4C:   Set var_9C = Nothing
  loc_1392C57:   Set var_98 = Nothing
  loc_1392C85:   Proc_6_69_134A630(Me.DgXItem, Me.Txt, KeyCode, global_76, Shift, 0)
  loc_1392C9C: Else
  loc_1392CA4:   If (var_86 = CInt(&H13)) Then
  loc_1392CBF:     Set var_9C = Nothing
  loc_1392CF8:     Proc_6_69_134A630(Me.DgNewUnit, Me.Txt, KeyCode, global_80, Shift, 0, 1, Nothing)
  loc_1392D0F:   Else
  loc_1392D17:     If (var_86 = CInt(0)) Then
  loc_1392D70:       Proc_6_69_134A630(Me.DGHelp, Me.Txt, KeyCode, global_56, Shift, 0, 1, Nothing)
  loc_1392DDF:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1392E05:         Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1392E13:       End If
  loc_1392E16:     Else
  loc_1392E1E:       If (var_86 = CInt(3)) Then
  loc_1392E7B:         Proc_6_69_134A630(Me.DGItemGroup, Me.Txt, CInt(3), global_60, Shift, 0, 1, Nothing)
  loc_1392EEA:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1392F10:           Proc_6_138_106E830(Me.DGItemGroup, global_60, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1392F1E:         End If
  loc_1392F21:       Else
  loc_1392F29:         If (var_86 = CInt(&H10)) Then
  loc_1392F86:           Proc_6_69_134A630(Me.DGConsumptionItem, Me.Txt, CInt(&H10), global_72, Shift, 0, 2, Nothing)
  loc_1392FF5:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_139301B:             Proc_6_138_106E830(Me.DGConsumptionItem, global_72, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1393029:           End If
  loc_139302C:         Else
  loc_1393034:           If (var_86 = CInt(&H15)) Then
  loc_1393091:             Proc_6_69_134A630(Me.DGFinItem, Me.Txt, CInt(&H15), global_84, Shift, 0, 1, Nothing)
  loc_1393100:             If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1393126:               Proc_6_138_106E830(Me.DGFinItem, global_84, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1393134:             End If
  loc_1393137:           Else
  loc_139313F:             If (var_86 = CInt(&HA)) Then
  loc_1393198:               Proc_6_69_134A630(Me.DGCat, Me.Txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_1393207:               If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_139322D:                 Proc_6_138_106E830(Me.DGCat, global_64, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_139323B:               End If
  loc_139323E:             Else
  loc_1393246:               If Not (var_86 = CInt(1)) Then
  loc_1393251:                 If (var_86 = CInt(&HE)) Then
  loc_1393254:                 End If
  loc_1393258:                 Set var_9C = Me.DGUnit
  loc_139329F:                 Proc_6_79_11AD564(var_9C, Me.Txt, KeyCode, global_68, Shift, 0, 1, Me.FGPoint)
  loc_139330C:                 If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1393332:                   Proc_6_138_106E830(Me.DGUnit, global_68, KeyCode, Me.FGPoint, 0, var_9C)
  loc_1393340:                 End If
  loc_1393340:               End If
  loc_1393340:             End If
  loc_1393340:           End If
  loc_1393340:         End If
  loc_1393340:       End If
  loc_1393340:     End If
  loc_1393340:   End If
  loc_1393340: End If
  loc_1393377: var_E4 = Me.DGUnit.Visible
  loc_139338E: var_F4 = Me.DGConsumptionItem.Visible
  loc_139341D: If ((((((((CBool(Me.DgNewUnit.Visible) = 0) And (CBool(Me.DgXItem.Visible) = 0)) And (CBool(var_E4) = 0)) And (CBool(var_F4) = 0)) And (CBool(Me.DGHelp.Visible) = 0)) And (CBool(Me.DGItemGroup.Visible) = 0)) And (CBool(Me.DGCat.Visible) = 0)) And (CBool(Me.DGFinItem.Visible) = 0)) Then
  loc_139343E:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H15))) Then
  loc_1393449:     Call Txt_Validate(KeyCode)
  loc_1393485:     If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_F4) = 6) Then
  loc_1393488:       Call TopCtrl1_UnknownEvent_16()
  loc_139348D:     End If
  loc_139348D:     Exit Sub
  loc_139348E:   End If
  loc_13934A3:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13934AC:     Proc_6_75_E5335C(Shift, arg_14, &HFF, 0)
  loc_13934B1:   End If
  loc_13934C4:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_13934CD:     Proc_6_76_E533C8(Shift, arg_14, 1)
  loc_13934D2:   End If
  loc_13934D2: End If
  loc_13934D2: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '126F0B8
  'Data Table: 525C5C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A0 As TextBox
  loc_126EB1A: Proc_6_133_E7FB08(var_94)
  loc_126EB23: arg_10 = CInt(var_94)
  loc_126EB2C: Proc_6_58_E06050(arg_10, arg_10)
  loc_126EB34: var_96 = KeyAscii
  loc_126EB3F: If (var_96 = CInt(&HD)) Then
  loc_126EB4C:   Set var_9C = Me.Txt
  loc_126EB52:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_126EB6D:   Proc_6_42_129B55C(var_A0, arg_10, 4)
  loc_126EB7C: Else
  loc_126EB84:   If (var_96 = CInt(0)) Then
  loc_126EBA3:     If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_126EBD0:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_56, arg_10, "Name")
  loc_126EC02:       Proc_6_138_106E830(Me.DGHelp, global_56, KeyAscii, Me.FGPoint)
  loc_126EC10:     End If
  loc_126EC13:   Else
  loc_126EC1B:     If (var_96 = CInt(3)) Then
  loc_126EC3A:       If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_126EC67:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10, "Name")
  loc_126EC99:         Proc_6_138_106E830(Me.DGItemGroup, global_60, KeyAscii, Me.FGPoint, 0)
  loc_126ECA7:       End If
  loc_126ECAA:     Else
  loc_126ECB2:       If (var_96 = CInt(&H10)) Then
  loc_126ECD1:         If (CBool(Me.DGConsumptionItem.Visible) = &HFF) Then
  loc_126ECFE:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_72, arg_10, "Name")
  loc_126ED30:           Proc_6_138_106E830(Me.DGConsumptionItem, global_72, KeyAscii, Me.FGPoint, 0)
  loc_126ED3E:         End If
  loc_126ED41:       Else
  loc_126ED49:         If (var_96 = CInt(&H15)) Then
  loc_126ED68:           If (CBool(Me.DGFinItem.Visible) = &HFF) Then
  loc_126ED95:             Proc_6_89_1470B00(Me.Txt, KeyAscii, global_84, arg_10, "Name")
  loc_126EDC7:             Proc_6_138_106E830(Me.DGFinItem, global_84, KeyAscii, Me.FGPoint, 0)
  loc_126EDD5:           End If
  loc_126EDD8:         Else
  loc_126EDE0:           If (var_96 = CInt(&H11)) Then
  loc_126EDFF:             If (CBool(Me.DgXItem.Visible) = &HFF) Then
  loc_126EE2C:               Proc_6_89_1470B00(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_126EE3B:             End If
  loc_126EE3E:           Else
  loc_126EE46:             If (var_96 = CInt(&H13)) Then
  loc_126EE65:               If (CBool(Me.DgNewUnit.Visible) = &HFF) Then
  loc_126EE92:                 Proc_6_89_1470B00(Me.Txt, KeyAscii, global_80, arg_10, "Name", 0)
  loc_126EEA1:               End If
  loc_126EEA4:             Else
  loc_126EEAC:               If (var_96 = CInt(&HA)) Then
  loc_126EECB:                 If (CBool(Me.DGCat.Visible) = &HFF) Then
  loc_126EEF8:                   Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10, "Name", 0)
  loc_126EF12:                   Set var_A0 = Me.FGPoint
  loc_126EF2A:                   Proc_6_138_106E830(Me.DGCat, global_64, KeyAscii, var_A0, 0)
  loc_126EF38:                 End If
  loc_126EF3B:               Else
  loc_126EF43:                 If Not (var_96 = CInt(6)) Then
  loc_126EF4E:                   If Not (var_96 = CInt(5)) Then
  loc_126EF59:                     If Not (var_96 = CInt(7)) Then
  loc_126EF64:                       If Not (var_96 = CInt(8)) Then
  loc_126EF6F:                         If (var_96 = CInt(&HF)) Then
  loc_126EF72:                         End If
  loc_126EF72:                       End If
  loc_126EF72:                     End If
  loc_126EF72:                   End If
  loc_126EF7C:                   Set var_9C = Me.Txt
  loc_126EF82:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 0)
  loc_126EF9D:                   Proc_6_42_129B55C(var_A0, arg_10, 7, 3)
  loc_126EFAC:                 Else
  loc_126EFB4:                   If Not (var_96 = CInt(4)) Then
  loc_126EFBF:                     If (var_96 = CInt(9)) Then
  loc_126EFC2:                     End If
  loc_126EFCC:                     Set var_9C = Me.Txt
  loc_126EFD2:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 0)
  loc_126EFED:                     Proc_6_42_129B55C(var_A0, arg_10, 7)
  loc_126EFFC:                   Else
  loc_126F004:                     If (var_96 = CInt(&H14)) Then
  loc_126F030:                       If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_126F040:                         Set var_9C = Me.Txt
  loc_126F046:                         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_126F04E:                         var_A0.Text = 2
  loc_126F05D:                       Else
  loc_126F086:                         If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_126F096:                           Set var_9C = Me.Txt
  loc_126F09C:                           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "No")
  loc_126F0A4:                           var_A0.Text = var_96
  loc_126F0B0:                         End If
  loc_126F0B0:                       End If
  loc_126F0B2:                       arg_10 = 0
  loc_126F0B5:                     End If
  loc_126F0B5:                   End If
  loc_126F0B5:                 End If
  loc_126F0B5:               End If
  loc_126F0B5:             End If
  loc_126F0B5:           End If
  loc_126F0B5:         End If
  loc_126F0B5:       End If
  loc_126F0B5:     End If
  loc_126F0B5:   End If
  loc_126F0B5: End If
  loc_126F0B5: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'ECC63C
  'Data Table: 525C5C
  Dim var_86 As Integer
  loc_ECC59B: var_86 = KeyCode
  loc_ECC5A6: If Not (var_86 = CInt(1)) Then
  loc_ECC5B1:   If (var_86 = CInt(&HE)) Then
  loc_ECC5B4:   End If
  loc_ECC5D0:   If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_ECC5DD:     var_A0 = "Name"
  loc_ECC5F8:     Proc_6_80_FF1F20(Me.Txt, KeyCode, global_68)
  loc_ECC62A:     Proc_6_138_106E830(Me.DGUnit, global_68, KeyCode, Me.FGPoint)
  loc_ECC638:   End If
  loc_ECC638: End If
  loc_ECC638: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48324
  'Data Table: 525C5C
  loc_E48302: Set var_88 = Me.Txt
  loc_E48308: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48316: Proc_6_73_E23294(var_8C)
  loc_E48322: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '15D0E14
  'Data Table: 525C5C
  Dim var_8A As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_AC As String
  Dim var_98 As Fields15
  Dim var_C8 As String
  Dim var_B4 As TextBox
  Dim var_B0 As Variant
  Dim var_E8 As Variant
  loc_15CFAC8: On Error Goto loc_15D0DCE
  loc_15CFACE: var_8A = Cancel
  loc_15CFAD9: If (var_8A = CInt(&HD)) Then
  loc_15CFADF:   Call Proc_50_49_1083A34(var_8C)
  loc_15CFAEA:   If (var_8C = &HFF) Then
  loc_15CFAEF:     arg_10 = &HFF
  loc_15CFAF2:     Exit Sub
  loc_15CFAF3:   End If
  loc_15CFAF6: Else
  loc_15CFAFE:   If (var_8A = CInt(0)) Then
  loc_15CFB04:     Call Proc_50_49_1083A34(var_8C, arg_10)
  loc_15CFB0F:     If (var_8C = &HFF) Then
  loc_15CFB14:       arg_10 = &HFF
  loc_15CFB17:       Exit Sub
  loc_15CFB18:     End If
  loc_15CFB59:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_15CFB69:       Set var_98 = Me.Txt
  loc_15CFB6F:       Call 0.Method_Txt_Validate0 (Cancel, var_9C, vbNullString)
  loc_15CFB77:       var_9C.Text = arg_10
  loc_15CFB90:       Set var_98 = Me.Txt
  loc_15CFB96:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15CFB9E:       var_9C.Tag = vbNullString
  loc_15CFBB8:       Set var_98 = Me.Txt
  loc_15CFBBE:       Call 0.Method_Txt_Validate0 (CInt(&HD), var_9C)
  loc_15CFBC6:       var_9C.Text = vbNullString
  loc_15CFBE0:       Set var_98 = Me.Txt
  loc_15CFBE6:       Call 0.Method_Txt_Validate0 (CInt(&H16), var_9C)
  loc_15CFBEE:       var_9C.Text = vbNullString
  loc_15CFC08:       Set var_98 = Me.Txt
  loc_15CFC0E:       Call 0.Method_Txt_Validate0 (CInt(&H17), var_9C)
  loc_15CFC16:       var_9C.Text = vbNullString
  loc_15CFC25:     Else
  loc_15CFC60:       Set var_B0 = Me.Txt
  loc_15CFC66:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CFC6E:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15CFCA1:       var_9C = Me.Fields.Item("Code")
  loc_15CFCBF:       Set var_B0 = Me.Txt
  loc_15CFCC5:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CFCCD:       var_B4.Tag = CStr(var_9C.Value)
  loc_15CFCEE:       Set var_98 = Me.Txt
  loc_15CFCF4:       Call 0.Method_Txt_Validate0 (CInt(&HD), var_9C)
  loc_15CFD1D:       If (Trim(CVar(var_9C)) = vbNullString) Then
  loc_15CFD7D:         Set var_B0 = Me.Txt
  loc_15CFD83:         Call 0.Method_Txt_Validate0 (CInt(&HD), var_B4)
  loc_15CFD8B:         var_B4.Text = CStr(Val(CStr(Right(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("BarCode")))), 4))))
  loc_15CFDAB:       End If
  loc_15CFDE4:       Set var_B0 = Me.Txt
  loc_15CFDEA:       Call 0.Method_Txt_Validate0 (CInt(&H16), var_B4)
  loc_15CFDF2:       var_B4.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("BarCode")))
  loc_15CFE20:       var_9C = Me.Fields.Item("CommodityCode")
  loc_15CFE31:       var_C8 = Proc_6_38_E69628(CVar(var_9C))
  loc_15CFE3F:       Set var_B0 = Me.Txt
  loc_15CFE45:       Call 0.Method_Txt_Validate0 (CInt(&H17), var_B4)
  loc_15CFE4D:       var_B4.Text = var_C8
  loc_15CFE61:     End If
  loc_15CFE64:   Else
  loc_15CFE6C:     If Not (var_8A = CInt(1)) Then
  loc_15CFE77:       If (var_8A = CInt(&HE)) Then
  loc_15CFE7A:       End If
  loc_15CFEC8:       Set var_98 = Me.Txt
  loc_15CFECE:       Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_C8)
  loc_15CFED6:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_15CFEEE:       If (var_8A Or (var_C8 = vbNullString)) Then
  loc_15CFEF1:         Exit Sub
  loc_15CFEF2:       End If
  loc_15CFEFC:       Set var_98 = Me.Txt
  loc_15CFF02:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_15CFF33:       var_B4 = Me.Fields.Item("Name")
  loc_15CFF42:       var_100 = Ucase(CVar(var_B4))
  loc_15CFF5E:       If (Ucase(CVar(var_9C)) = var_100) Then
  loc_15CFF9C:         Set var_B0 = Me.Txt
  loc_15CFFA2:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CFFAA:         var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15CFFC6:         var_AC = "Code"
  loc_15CFFDD:         var_9C = Me.Fields.Item(var_AC)
  loc_15CFFEE:         var_C8 = CStr(var_9C.Value)
  loc_15CFFFB:         Set var_B0 = Me.Txt
  loc_15D0001:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0009:         var_B4.Tag = var_C8
  loc_15D001F:       End If
  loc_15D0025:       Me.MoveFirst
  loc_15D0048:       Set var_98 = Me.Txt
  loc_15D004E:       Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_C8, "Name like '")
  loc_15D0056:       0 = var_9C.Text
  loc_15D006F:       Me.Find 1 & var_C8 & "*'", var_AC, var_9C
  loc_15D009B:       If (Me.AbsolutePosition > 0) Then
  loc_15D00B5:         If (Me.RecordCount > 0) Then
  loc_15D00F3:           Set var_B0 = Me.Txt
  loc_15D00F9:           Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0101:           var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15D0134:           var_9C = Me.Fields.Item("Code")
  loc_15D0145:           var_C8 = CStr(var_9C.Value)
  loc_15D0152:           Set var_B0 = Me.Txt
  loc_15D0158:           Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0160:           var_B4.Tag = var_C8
  loc_15D0176:           GoTo loc_15D0179
  loc_15D0179:           ' Referenced from:     15D0176
  loc_15D0179:         End If
  loc_15D0179:       End If
  loc_15D017C:     Else
  loc_15D0184:       If (var_8A = CInt(&H10)) Then
  loc_15D01D4:         Set var_98 = Me.Txt
  loc_15D01DA:         Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_C8)
  loc_15D01E2:         ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) = var_9C.Text
  loc_15D01FB:         If ( Or ((Me.RecordCount = 0) Or (var_C8 = vbNullString))) Then
  loc_15D020B:           Set var_98 = Me.Txt
  loc_15D0211:           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15D0219:           var_9C.Text = vbNullString
  loc_15D0232:           Set var_98 = Me.Txt
  loc_15D0238:           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15D0240:           var_9C.Tag = vbNullString
  loc_15D024F:         Else
  loc_15D028A:           Set var_B0 = Me.Txt
  loc_15D0290:           Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0298:           var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15D02CB:           var_9C = Me.Fields.Item("Code")
  loc_15D02DC:           var_C8 = CStr(var_9C.Value)
  loc_15D02E9:           Set var_B0 = Me.Txt
  loc_15D02EF:           Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D02F7:           var_B4.Tag = var_C8
  loc_15D030D:         End If
  loc_15D0310:       Else
  loc_15D0318:         If (var_8A = CInt(&H15)) Then
  loc_15D0368:           Set var_98 = Me.Txt
  loc_15D036E:           Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_C8)
  loc_15D0376:           ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) = var_9C.Text
  loc_15D038F:           If ( Or ((Me.RecordCount = 0) Or (var_C8 = vbNullString))) Then
  loc_15D039F:             Set var_98 = Me.Txt
  loc_15D03A5:             Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15D03AD:             var_9C.Text = vbNullString
  loc_15D03C6:             Set var_98 = Me.Txt
  loc_15D03CC:             Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15D03D4:             var_9C.Tag = vbNullString
  loc_15D03E3:           Else
  loc_15D041E:             Set var_B0 = Me.Txt
  loc_15D0424:             Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D042C:             var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15D045F:             var_9C = Me.Fields.Item("Code")
  loc_15D047D:             Set var_B0 = Me.Txt
  loc_15D0483:             Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D048B:             var_B4.Tag = CStr(var_9C.Value)
  loc_15D04A1:           End If
  loc_15D04A4:         Else
  loc_15D04AC:           If (var_8A = CInt(&H11)) Then
  loc_15D04F0:             If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_15D0500:               Set var_98 = Me.Txt
  loc_15D0506:               Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15D050E:               var_9C.Text = vbNullString
  loc_15D0527:               Set var_98 = Me.Txt
  loc_15D052D:               Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15D0535:               var_9C.Tag = vbNullString
  loc_15D054F:               Set var_98 = Me.Txt
  loc_15D0555:               Call 0.Method_Txt_Validate0 (CInt(&H12), var_9C)
  loc_15D055D:               var_9C.Text = vbNullString
  loc_15D056C:             Else
  loc_15D05A7:               Set var_B0 = Me.Txt
  loc_15D05AD:               Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D05B5:               var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15D0606:               Set var_B0 = Me.Txt
  loc_15D060C:               Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0614:               var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_15D0644:               var_9C = Me.Fields.Item("Unit")
  loc_15D0663:               Set var_B0 = Me.Txt
  loc_15D0669:               Call 0.Method_Txt_Validate0 (CInt(&H12), var_B4)
  loc_15D0671:               var_B4.Text = Proc_6_38_E69628(CVar(var_9C))
  loc_15D0685:             End If
  loc_15D0688:           Else
  loc_15D0690:             If (var_8A = CInt(&H13)) Then
  loc_15D06D4:               If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_15D06E4:                 Set var_98 = Me.Txt
  loc_15D06EA:                 Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15D06F2:                 var_9C.Text = vbNullString
  loc_15D070B:                 Set var_98 = Me.Txt
  loc_15D0711:                 Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15D0719:                 var_9C.Tag = vbNullString
  loc_15D0728:               Else
  loc_15D0763:                 Set var_B0 = Me.Txt
  loc_15D0769:                 Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0771:                 var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15D07A4:                 var_9C = Me.Fields.Item("Code")
  loc_15D07C2:                 Set var_B0 = Me.Txt
  loc_15D07C8:                 Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D07D0:                 var_B4.Tag = CStr(var_9C.Value)
  loc_15D07E6:               End If
  loc_15D07E9:             Else
  loc_15D07F1:               If (var_8A = CInt(3)) Then
  loc_15D0814:                 var_8C = Me.EOF
  loc_15D0835:                 If ((Me.RecordCount = 0) Or ((var_8C = &HFF) Or (Me.BOF = &HFF))) Then
  loc_15D0845:                   Set var_98 = Me.Txt
  loc_15D084B:                   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15D0853:                   var_9C.Text = vbNullString
  loc_15D086C:                   Set var_98 = Me.Txt
  loc_15D0872:                   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15D087A:                   var_9C.Tag = vbNullString
  loc_15D0894:                   Set var_98 = Me.Txt
  loc_15D089A:                   Call 0.Method_Txt_Validate0 (CInt(2), var_9C)
  loc_15D08A2:                   var_9C.Text = vbNullString
  loc_15D08B1:                 Else
  loc_15D08EC:                   Set var_B0 = Me.Txt
  loc_15D08F2:                   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D08FA:                   var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15D094B:                   Set var_B0 = Me.Txt
  loc_15D0951:                   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0959:                   var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_15D09A8:                   Set var_B0 = Me.Txt
  loc_15D09AE:                   Call 0.Method_Txt_Validate0 (CInt(2), var_B4)
  loc_15D09B6:                   var_B4.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Type")))
  loc_15D09E4:                   var_9C = Me.Fields.Item("Type")
  loc_15D0A02:                   Me.Label2.Caption = Proc_6_38_E69628(CVar(var_9C))
  loc_15D0A14:                 End If
  loc_15D0A17:               Else
  loc_15D0A1F:                 If (var_8A = CInt(4)) Then
  loc_15D0A2C:                   Set var_98 = Me.Txt
  loc_15D0A32:                   Call 0.Method_Txt_Validate0 (Cancel)
  loc_15D0A6C:                   Set var_B0 = Me.Txt
  loc_15D0A72:                   Call 0.Method_Txt_Validate0 (Cancel, var_B4, CStr(Format(CVar(var_9C), "0.00")))
  loc_15D0A7A:                   var_B4.Text = 1
  loc_15D0A97:                 Else
  loc_15D0A9F:                   If Not (var_8A = CInt(9)) Then
  loc_15D0AAA:                     If (var_8A = CInt(8)) Then
  loc_15D0AAD:                     End If
  loc_15D0AB7:                     Set var_98 = Me.Txt
  loc_15D0ABD:                     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15D0AF7:                     Set var_B0 = Me.Txt
  loc_15D0AFD:                     Call 0.Method_Txt_Validate0 (Cancel, var_B4, CStr(Format(CVar(var_9C), "0.00")), 1)
  loc_15D0B05:                     var_B4.Text = 1
  loc_15D0B1F:                     Call Proc_50_53_112DC0C(1)
  loc_15D0B27:                   Else
  loc_15D0B2F:                     If Not (var_8A = CInt(6)) Then
  loc_15D0B3A:                       If Not (var_8A = CInt(5)) Then
  loc_15D0B45:                         If Not (var_8A = CInt(7)) Then
  loc_15D0B50:                           If (var_8A = CInt(&HF)) Then
  loc_15D0B53:                           End If
  loc_15D0B53:                         End If
  loc_15D0B53:                       End If
  loc_15D0B5D:                       Set var_98 = Me.Txt
  loc_15D0B63:                       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15D0B8F:                       var_C8 = CStr(Format(CVar(var_9C), "0.000"))
  loc_15D0B9D:                       Set var_B0 = Me.Txt
  loc_15D0BA3:                       Call 0.Method_Txt_Validate0 (Cancel, var_B4, var_C8)
  loc_15D0BAB:                       var_B4.Text = 1
  loc_15D0BC8:                     Else
  loc_15D0BD0:                       If (var_8A = CInt(&HA)) Then
  loc_15D0BD6:                         Call Proc_50_49_1083A34(var_8C, 1)
  loc_15D0BE1:                         If (var_8C = &HFF) Then
  loc_15D0BE6:                           arg_10 = &HFF
  loc_15D0BE9:                           Exit Sub
  loc_15D0BEA:                         End If
  loc_15D0C38:                         Set var_98 = Me.Txt
  loc_15D0C3E:                         Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_C8)
  loc_15D0C46:                         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_15D0C5E:                         If (arg_10 Or (var_C8 = vbNullString)) Then
  loc_15D0C61:                           Exit Sub
  loc_15D0C62:                         End If
  loc_15D0C9D:                         Set var_B0 = Me.Txt
  loc_15D0CA3:                         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0CAB:                         var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15D0CDE:                         var_9C = Me.Fields.Item("Code")
  loc_15D0CEF:                         var_C8 = CStr(var_9C.Value)
  loc_15D0CFC:                         Set var_B0 = Me.Txt
  loc_15D0D02:                         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0D0A:                         var_B4.Tag = var_C8
  loc_15D0D23:                       Else
  loc_15D0D2B:                         If (var_8A = CInt(&H14)) Then
  loc_15D0D38:                           Set var_98 = Me.Txt
  loc_15D0D3E:                           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15D0D5D:                           var_E8 = Ucase(Left(CVar(var_9C), 1))
  loc_15D0D79:                           If (var_E8 = "Y") Then
  loc_15D0D89:                             Set var_98 = Me.Txt
  loc_15D0D8F:                             Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15D0D97:                             var_9C.Text = "Yes"
  loc_15D0DA6:                           Else
  loc_15D0DB3:                             Set var_98 = Me.Txt
  loc_15D0DB9:                             Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15D0DC1:                             var_9C.Text = "No"
  loc_15D0DCD:                           End If
  loc_15D0DCD:                         End If
  loc_15D0DCD:                       End If
  loc_15D0DCD:                     End If
  loc_15D0DCD:                   End If
  loc_15D0DCD:                 End If
  loc_15D0DCD:               End If
  loc_15D0DCD:             End If
  loc_15D0DCD:           End If
  loc_15D0DCD:         End If
  loc_15D0DCD:       End If
  loc_15D0DCD:     End If
  loc_15D0DCD:   End If
  loc_15D0DCD: End If
  loc_15D0DCD: Exit Sub
  loc_15D0DCE: ' Referenced from: 15CFAC8
  loc_15D0DD6: Set var_98 = Err()
  loc_15D0DDC: Call 0.Method_arg_2C (var_C8)
  loc_15D0DFD: MsgBox(CVar(var_C8), &H40, "Information", var_E8, var_100)
  loc_15D0E10: Exit Sub
  loc_15D0E11: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_9 'F9E638
  'Data Table: 525C5C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F9E4CF: Me.DGItemGroup.Visible = False
  loc_F9E4EE: If (Me.RecordCount > 0) Then
  loc_F9E52D:   Set var_B4 = Me.Txt
  loc_F9E533:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(3), var_B8)
  loc_F9E53B:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F9E58D:   Set var_B4 = Me.Txt
  loc_F9E593:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(3), var_B8)
  loc_F9E59B:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F9E5CE:   var_B0 = Me.Fields.Item("Type")
  loc_F9E5ED:   Set var_B4 = Me.Txt
  loc_F9E5F3:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2), var_B8)
  loc_F9E5FB:   var_B8.Text = CStr(var_B0.Value)
  loc_F9E611: End If
  loc_F9E61C: Set var_A8 = Me.Txt
  loc_F9E622: Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(3))
  loc_F9E62A: var_B0.SetFocus
  loc_F9E636: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_1F 'E721FC
  'Data Table: 525C5C
  loc_E721BA: Proc_6_153_E91D24(Me.DGItemGroup, arg_14)
  loc_E721D1: Set var_8C = Me.FGPoint
  loc_E721ED: Proc_6_138_106E830(Me.DGItemGroup, global_60, CInt(3))
  loc_E721FB: Exit Sub
End Sub

Private Sub DGUnit_UnknownEvent_9 'FB2CA0
  'Data Table: 525C5C
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_EC As Double
  Dim var_B0 As Field20
  Dim var_D0 As TextBox
  loc_FB2B23: Me.DGUnit.Visible = False
  loc_FB2B42: If (Me.RecordCount > 0) Then
  loc_FB2B9E:   Set var_CC = Me.Txt
  loc_FB2BA4:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(Val(CStr(Me.DGUnit.Tag))), var_D0)
  loc_FB2BAC:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FB2BD0:   Set var_B4 = Me.DGUnit
  loc_FB2BE6:   var_EC = Val(CStr(var_B4.Tag))
  loc_FB2C25:   Set var_CC = Me.Txt
  loc_FB2C2B:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(var_EC), var_D0, CStr(Me.Fields.Item("Name").Value))
  loc_FB2C33:   var_D0.Text = var_EC
  loc_FB2C53: End If
  loc_FB2C7B: Set var_B0 = Me.Txt
  loc_FB2C81: Call 0.Method_DGUnit_UnknownEvent_90 (CInt(Val(CStr(Me.DGUnit.Tag))), var_B4)
  loc_FB2C89: var_B4.SetFocus
  loc_FB2C9D: Exit Sub
End Sub

Private Sub DGUnit_UnknownEvent_1F 'EAE628
  'Data Table: 525C5C
  loc_EAE5AE: Proc_6_153_E91D24(Me.DGUnit, arg_14)
  loc_EAE5C5: Set var_8C = Me.FGPoint
  loc_EAE5E1: Proc_6_138_106E830(Me.DGUnit, global_68, CInt(1))
  loc_EAE5FA: Set var_8C = Me.FGPoint
  loc_EAE616: Proc_6_138_106E830(Me.DGUnit, global_68, CInt(&HE))
  loc_EAE624: Exit Sub
  loc_EAE625: StAryRecMove
End Sub

Private Sub DGHelp_UnknownEvent_9 'F44EF4
  'Data Table: 525C5C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F44DEB: Me.DGHelp.Visible = False
  loc_F44E0A: If (Me.RecordCount > 0) Then
  loc_F44E49:   Set var_B4 = Me.Txt
  loc_F44E4F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F44E57:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F44E8A:   var_B0 = Me.Fields.Item("Name")
  loc_F44EA9:   Set var_B4 = Me.Txt
  loc_F44EAF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F44EB7:   var_B8.Text = CStr(var_B0.Value)
  loc_F44ECD: End If
  loc_F44ED8: Set var_A8 = Me.Txt
  loc_F44EDE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F44EE6: var_B0.SetFocus
  loc_F44EF2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6F7C8
  'Data Table: 525C5C
  loc_E6F786: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E6F79D: Set var_8C = Me.FGPoint
  loc_E6F7B9: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0))
  loc_E6F7C7: Exit Sub
End Sub

Private Sub DGFinItem_UnknownEvent_9 'F44814
  'Data Table: 525C5C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4470B: Me.DGFinItem.Visible = False
  loc_F4472A: If (Me.RecordCount > 0) Then
  loc_F44769:   Set var_B4 = Me.Txt
  loc_F4476F:   Call 0.Method_DGFinItem_UnknownEvent_90 (CInt(&H15), var_B8)
  loc_F44777:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F447AA:   var_B0 = Me.Fields.Item("Name")
  loc_F447C9:   Set var_B4 = Me.Txt
  loc_F447CF:   Call 0.Method_DGFinItem_UnknownEvent_90 (CInt(&H15), var_B8)
  loc_F447D7:   var_B8.Text = CStr(var_B0.Value)
  loc_F447ED: End If
  loc_F447F8: Set var_A8 = Me.Txt
  loc_F447FE: Call 0.Method_DGFinItem_UnknownEvent_90 (CInt(&H15))
  loc_F44806: var_B0.SetFocus
  loc_F44812: Exit Sub
End Sub

Private Sub DGFinItem_UnknownEvent_1F 'E6F0D8
  'Data Table: 525C5C
  loc_E6F096: Proc_6_153_E91D24(Me.DGFinItem, arg_14)
  loc_E6F0AD: Set var_8C = Me.FGPoint
  loc_E6F0C9: Proc_6_138_106E830(Me.DGFinItem, global_84, CInt(&H15))
  loc_E6F0D7: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF980C
  'Data Table: 525C5C
  loc_EF974C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF974F:   Call DGHelp_UnknownEvent_9()
  loc_EF9754: End If
  loc_EF9770: If (CBool(Me.DGCat.Visible) = &HFF) Then
  loc_EF9773:   Call DGCat_UnknownEvent_9()
  loc_EF9778: End If
  loc_EF9794: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_EF9797:   Call DGItemGroup_UnknownEvent_9()
  loc_EF979C: End If
  loc_EF97B8: If (CBool(Me.DGConsumptionItem.Visible) = &HFF) Then
  loc_EF97BB:   Call DGConsumptionItem_UnknownEvent_9()
  loc_EF97C0: End If
  loc_EF97DC: If (CBool(Me.DGFinItem.Visible) = &HFF) Then
  loc_EF97DF:   Call DGFinItem_UnknownEvent_9()
  loc_EF97E4: End If
  loc_EF9800: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_EF9803:   Call DGUnit_UnknownEvent_9()
  loc_EF9808: End If
  loc_EF9808: Exit Sub
End Sub

Private Sub CmdLabelPrint_UnknownEvent_9 'F81884
  'Data Table: 525C5C
  Dim Me As Recordset15
  Dim var_168 As String
  loc_F81788: If (Proc_6_38_E69628(CVar(Me.Fields.Item("ActiveYN"))) = "No") Then
  loc_F817C2:   If (MsgBox("Would U Wish to Print Non Active Item Labels", &H24, "Print Item Label", var_F0, var_110) = 7) Then
  loc_F817C5:     Exit Sub
  loc_F817C6:   End If
  loc_F817C6: End If
  loc_F817F6: var_168 = InputBox(CVar("Enter Number Of Labels" & vbCrLf & "U Want to Print."), "Print Item Label", var_F0, var_110, var_124, var_144, var_164)
  loc_F8186B: Proc_96_100_138A248(CStr(Me.Fields.Item("SearchCode").Value), CLng(Val(var_168)), CDate(Me.DTP.Value))
  loc_F81883: Exit Sub
End Sub

Private Sub Form_Load() '121F098
  'Data Table: 525C5C
  Dim var_8C As Label
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_525C82 As Connection15
  Dim var_BC As String
  Dim Me As Recordset20
  Dim var_B4 As Variant
  loc_121EBB0: On Error Goto loc_121F051
  loc_121EBC2: Me.LblUser.Left = CDbl(13500)
  loc_121EBD9: Me.LblUser.Top = CDbl(7800)
  loc_121EBF0: Me.LblLDt.Top = CDbl(8160)
  loc_121EC01: Set var_8C = Me.LblLDt
  loc_121EC07: var_8C.Left = CDbl(13500)
  loc_121EC16: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_121EC1B: Call Proc_50_51_119F2CC()
  loc_121EC3B: var_94 = "SELECT Code,Name,BarCode,CommodityCode FROM Item Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_121EC44: unk_525C82.Execute var_94, var_B4, -1
  loc_121EC55: Set global_56 = var_8C
  loc_121EC73: CVarUnk
  loc_121EC78: VerifyVarObj
  loc_121EC84: LateIdStAd
  loc_121ECAD: var_94 = "SELECT Code,Name,Unit FROM ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And ItemType='Store' ORDER BY Name"
  loc_121ECB6: unk_525C82.Execute var_94, var_B4, -1
  loc_121ECC7: Set global_76 = Me.DGHelp
  loc_121ECE5: CVarUnk
  loc_121ECEA: VerifyVarObj
  loc_121ECF6: LateIdStAd
  loc_121ED18: var_90 = "SELECT I.Code,I.Name,I.Unit,D.Name As Outlet FROM ItemMast I Left Join Depart D On I.RestCode=D.Code Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_121ED28: unk_525C82.Execute var_90 & "' or I.LOGSITE_CODE='HO') AND I.Type='Finish' And I.DispCode <>9999 and I.ActiveYN<>'No' Order by I.Name", var_B4, -1
  loc_121ED39: Set global_84 = Me.DgXItem
  loc_121ED57: CVarUnk
  loc_121ED5C: VerifyVarObj
  loc_121ED68: LateIdStAd
  loc_121ED9A: unk_525C82.Execute "SELECT Name as Code,Name FROM UnitMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_121EDAB: Set global_80 = Me.DGFinItem
  loc_121EDC9: CVarUnk
  loc_121EDCE: VerifyVarObj
  loc_121EDDA: LateIdStAd
  loc_121EE0A: var_BC = "SELECT Code,Name FROM ItemCatMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Restcode='" & MemVar_1F95078
  loc_121EE1A: unk_525C82.Execute var_BC & "PURC' ORDER BY Name", var_B4, -1
  loc_121EE4D: CVarUnk
  loc_121EE52: VerifyVarObj
  loc_121EE5E: LateIdStAd
  loc_121EE87: var_94 = "SELECT distinct Code,Name,Type FROM ItemGrp Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And Restcode='"
  loc_121EE9E: unk_525C82.Execute var_94 & MemVar_1F95078 & "PURC' ORDER BY Name", var_B4, -1
  loc_121EED1: CVarUnk
  loc_121EED6: VerifyVarObj
  loc_121EEE2: LateIdStAd
  loc_121EF14: unk_525C82.Execute "SELECT Name as Code,Name FROM UnitMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_121EF43: CVarUnk
  loc_121EF48: VerifyVarObj
  loc_121EF4E: Set var_8C = Me.DGUnit
  loc_121EF54: LateIdStAd
  loc_121EF76: var_90 = "SELECT I.Code+I.RestCode as SearchCode,I.Code,I.Name,I.CommodityCode,DispCode,I.Unit,I.ItemGroup,I.Type,I.PurchRate,I.MinStock,I.MaxStock,I.ReStock,I.U_Name,IG.Name as ItemGrpName,I.ItemCatCode,itemCatMast.Name as Category,I.ConvRatio as ConvRatio,I.IssueUnit as IssueUnit,I.ConsumptionItem,I.SITE_CODE,I.LOGSITE_CODE,I.FinItem,I.ActiveYN,I.RestCode,I.BarCode,I.LabelName,I.LabelQty,I.LabelRemark1,I.LabelRemark2,I.LabelRemark3,I.LabelRemark4,I.LabelRemark5 FROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup)left join itemCatMast on itemCatMast.code=i.ItemCatCode) Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_121EF7D: var_94 = "SELECT Name as Code,Name FROM UnitMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' ORDER BY I.Name"
  loc_121EF86: unk_525C82.Execute var_94, var_B4, -1
  loc_121EFBA: Me.Clone
  loc_121EFDF: CVarUnk
  loc_121EFE4: VerifyVarObj
  loc_121EFEA: Set var_8C = Me.DGConsumptionItem
  loc_121EFF0: LateIdStAd
  loc_121F007: Call 0.Method_arg_160 (var_8C, var_8C, var_8C, -1, var_8C, var_8C, var_8C, Me.DGItemGroup)
  loc_121F015: Call 0.Method_arg_164 (var_8C, var_8C, var_8C, Me.DGCat)
  loc_121F032: var_90 = "INI"
  loc_121F040: Call Proc_50_46_F168E8(Proc_5_1_100EC1C(var_90, Me, Me, Me), Me)
  loc_121F04B: Call Proc_50_48_1578DC4(Me.DgNewUnit)
  loc_121F050: Exit Sub
  loc_121F051: ' Referenced from: 121EBB0
  loc_121F059: Set var_8C = Err()
  loc_121F05F: Call 0.Method_arg_2C (var_90)
  loc_121F080: MsgBox(CVar(var_90), &H40, "Information", var_F4, var_114)
  loc_121F093: Exit Sub
  loc_121F094: Exit Sub
End Sub

Private Sub Form_Resize() 'ED87A8
  'Data Table: 525C5C
  Dim var_8C As Label
  loc_ED8706: Call 0.Method_arg_50 (var_88)
  loc_ED8718: Me.LblFormCaption.Caption = var_88
  loc_ED8731: Me.LblFormCaption.Left = CDbl(0)
  loc_ED873D: Set var_A0 = Me.TopCtrl1
  loc_ED8743: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED8750: Set var_8C = Me.TopCtrl1
  loc_ED8756: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED8770: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED878B: Call 0.Method_arg_100 (var_B8)
  loc_ED879D: Me.LblFormCaption.Width = var_B8
  loc_ED87A5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E60BC8
  'Data Table: 525C5C
  loc_E60B87: Set global_52 = Nothing
  loc_E60B99: Set global_56 = Nothing
  loc_E60BAB: Set global_60 = Nothing
  loc_E60BBD: Set global_64 = Nothing
  loc_E60BC4: Exit Sub
End Sub

Private Sub Form_Activate() 'E47D78
  'Data Table: 525C5C
  loc_E47D48: On Error Goto loc_E47D72
  loc_E47D4F: Set var_88 = Me.TopCtrl1
  loc_E47D55: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E47D6A: If (CLng(CInt()) = &H2D) Then
  loc_E47D6D:   Call TopCtrl1_UnknownEvent_15()
  loc_E47D72:   ' Referenced from: E47D48
  loc_E47D72: End If
  loc_E47D72: Proc_6_60_E63754()
  loc_E47D77: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B110
  'Data Table: 525C5C
  loc_E2B0E8: On Error Goto loc_E2B107
  loc_E2B0FF: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2B107: ' Referenced from: E2B0E8
  loc_E2B107: Proc_6_60_E63754(Shift)
  loc_E2B10C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F6D41C
  'Data Table: 525C5C
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F6D2EC: On Error Goto loc_F6D3D7
  loc_F6D2EF: Call Proc_50_47_E792EC()
  loc_F6D309: var_88 = "ADD"
  loc_F6D317: Call Proc_50_46_F168E8(Proc_5_1_100EC1C(var_88, Me))
  loc_F6D330: Set var_8C = Me.Txt
  loc_F6D336: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HD), var_94)
  loc_F6D33E: var_94.Text = vbNullString
  loc_F6D357: Me.Label2.Caption = vbNullString
  loc_F6D36A: Set var_8C = Me.Txt
  loc_F6D370: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_F6D378: var_94.SetFocus
  loc_F6D391: Me.LblUser.Caption = vbNullString
  loc_F6D3A6: Me.LblLDt.Caption = vbNullString
  loc_F6D3BC: Set var_8C = Me.Txt
  loc_F6D3C2: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H14), var_94)
  loc_F6D3CA: var_94.Text = "Yes"
  loc_F6D3D6: Exit Sub
  loc_F6D3D7: ' Referenced from: F6D2EC
  loc_F6D3DF: Set var_8C = Err()
  loc_F6D3E5: Call 0.Method_arg_2C (var_88)
  loc_F6D406: MsgBox(CVar(var_88), &H40, "Information", var_E4, var_104)
  loc_F6D419: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBD4D8
  'Data Table: 525C5C
  loc_EBD444: On Error Goto loc_EBD4CF
  loc_EBD47E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBD48D:   Set var_110 = Me
  loc_EBD4A4:   Call Proc_50_46_F168E8(Proc_5_1_100EC1C("INI", var_110))
  loc_EBD4AF:   Call Proc_50_48_1578DC4(global_52)
  loc_EBD4B7: Else
  loc_EBD4BD:   Call 0.Method_arg_1E8 (var_110)
  loc_EBD4C5:   Call var_110.SetFocus
  loc_EBD4CE: End If
  loc_EBD4CE: Exit Sub
  loc_EBD4CF: ' Referenced from: EBD444
  loc_EBD4CF: Proc_6_60_E63754()
  loc_EBD4D4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '129C1E8
  'Data Table: 525C5C
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_194 As Integer
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_B8 As String
  Dim unk_525C82 As Connection15
  Dim var_180 As Variant
  Dim var_184 As Variant
  Dim var_198 As Field20
  Dim var_96 As Integer
  Dim var_17C As Variant
  loc_129BC30: On Error Goto loc_129C190
  loc_129BC41: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_129BC44:   Exit Sub
  loc_129BC45: End If
  loc_129BC77: var_D8 = "Indent or Requisition"
  loc_129BCBF: If (Proc_6_108_101061C(MemVar_1F95044, "INDENT1", "ITEM", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_129BCC2:   Exit Sub
  loc_129BCC3: End If
  loc_129BCF5: var_D8 = "Purchase Order"
  loc_129BD3D: If (Proc_6_108_101061C(MemVar_1F95044, "POrder1", "ITEMCode", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_129BD40:   Exit Sub
  loc_129BD41: End If
  loc_129BDBB: If (Proc_6_108_101061C(MemVar_1F95044, "Purch2", "ITEM", CStr(Me.Fields.Item("Code").Value), 0, "Purchase Bill") = 0) Then
  loc_129BDBE:   Exit Sub
  loc_129BDBF: End If
  loc_129BDC5: var_194 = 0
  loc_129BE16: var_11C = "Select Count(*) From Stock Where ITEM='" & Me.Fields.Item("Code").Value & "' And (RestCode='" 
  loc_129BE20: var_13C = var_11C & CVar(MemVar_1F95078) 
  loc_129BE2D: var_B8 = CStr(var_13C & "PURC' Or RestCode='')")
  loc_129BE37: unk_525C82.Execute var_B8, var_17C, -1
  loc_129BE3F: var_180 = var_180.Fields
  loc_129BE47: var_194 = var_184.Item(var_184)
  loc_129BE4F: var_198 = var_198.Value
  loc_129BE80: If (var_1A8 > 0) Then
  loc_129BE89:   Call 0.Method_arg_50 (var_B8, var_1A8, 0)
  loc_129BEAA:   MsgBox("TRANSACTION EXIST IN STOCK, ENTRY CAN'T BE DELETED", &H40, CVar(var_B8), var_11C, var_13C)
  loc_129BEBA:   Exit Sub
  loc_129BEBB: End If
  loc_129BEF2: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_11C, var_13C) = 6) Then
  loc_129BEF7:   var_96 = 0
  loc_129BF03:   unk_525C82.BeginTrans var_D4
  loc_129BF0A:   var_96 = &HFF
  loc_129BF1E:   var_94 = Me.Bookmark 'Variant
  loc_129BF6A:   var_11C = "Delete From ItemMast Where Code='" & Me.Fields.Item("Code").Value & "' And RestCode='" 
  loc_129BF93:   var_13C = Me.Fields.Item("RestCode").Value
  loc_129BFB2:   unk_525C82.Execute CStr(var_11C & var_13C & "'"), var_1A8, -1
  loc_129C031:   var_1F4 = 0
  loc_129C044:   var_1EC = 0
  loc_129C04F:   var_1E8 = 0
  loc_129C062:   var_1E0 = 0
  loc_129C06D:   var_1DC = 0
  loc_129C080:   var_1D4 = 0
  loc_129C0BB:   var_B8 = "ItemMast"
  loc_129C0C4:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B8, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), "RestCode", &HC8, CStr(Me.Fields.Item("RestCode").Value))
  loc_129C0FA:   unk_525C82.CommitTrans
  loc_129C101:   var_96 = 0
  loc_129C10F:   Me.Requery -1
  loc_129C12F:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_129C13C:     Me.Bookmark = var_94
  loc_129C144:   Else
  loc_129C158:     If (Me.EOF = 0) Then
  loc_129C161:       Me.MoveLast
  loc_129C166:     End If
  loc_129C166:   End If
  loc_129C166:   Call Proc_50_48_1578DC4(var_96, var_1D4, 0, var_1DC, var_1E0)
  loc_129C187:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_129C18F: End If
  loc_129C18F: Exit Sub
  loc_129C190: ' Referenced from: 129BC30
  loc_129C196: If (var_96 = &HFF) Then
  loc_129C19F:   unk_525C82.RollbackTrans
  loc_129C1A4: End If
  loc_129C1AC: Set var_A0 = Err()
  loc_129C1B2: Call 0.Method_arg_2C (var_B8, 0, var_1E8)
  loc_129C1D3: MsgBox(CVar(var_B8), &H30, " Deletion Error ", var_11C, var_13C)
  loc_129C1E6: Exit Sub
  loc_129C1E7: var_1EC = 0
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FA7260
  'Data Table: 525C5C
  Dim Me As Variant
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_FA70DC: On Error Goto loc_FA721A
  loc_FA70ED: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_FA70F0:   Exit Sub
  loc_FA70F1: End If
  loc_FA7108: If (Me.RecordCount > 0) Then
  loc_FA712E:   Call Proc_50_46_F168E8(Proc_5_1_100EC1C("EDIT", Me))
  loc_FA7147:   Set var_90 = Me.Txt
  loc_FA714D:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HD), var_98)
  loc_FA7155:   var_8C = var_98.Text
  loc_FA717A:   Set var_90 = Me.Txt
  loc_FA7180:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FA7188:   var_98.SetFocus
  loc_FA71A1:   Set var_90 = Me.Txt
  loc_FA71A7:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98, 0)
  loc_FA71AF:   var_98.Enabled = CInt(var_8C)
  loc_FA71BE: Else
  loc_FA71DF:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FA71EF: End If
  loc_FA71FC: Me.LblUser.Caption = vbNullString
  loc_FA7211: Me.LblLDt.Caption = vbNullString
  loc_FA7219: Exit Sub
  loc_FA721A: ' Referenced from: FA70DC
  loc_FA7222: Set var_90 = Err()
  loc_FA7228: Call 0.Method_arg_2C (var_8C)
  loc_FA7249: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_FA725C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19B10
  'Data Table: 525C5C
  loc_E19B05: Me.Global.Unload Me
  loc_E19B0D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F26400
  'Data Table: 525C5C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F26300: On Error Goto loc_F26398
  loc_F2630C: var_88 = Me.RecordCount
  loc_F2631A: If (var_88 <= 0) Then
  loc_F26323:   var_B8 = "Information"
  loc_F2633E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F2634E:   Exit Sub
  loc_F2634F: End If
  loc_F26356: var_10C = "SELECT I.Code+I.RestCode as SearchCode,I.Name,I.CommodityCode HSNCode,I.Unit,CAST(I.ConvRatio AS vARcHAR(5)) AS ConvRatio ,I.IssueUnit,IG.Name as ItemGrpName ,IG.Type,cast(I.PurchRate as Varchar(13)) as PurchRate,cast(I.MinStock as VarChar(13)) as MinStock,Cast(I.MaxStock as VarChar(13)) as MaxStock,Cast(I.ReStock as VarChar(13)) as ReStock,itemCatMast.Name AS Category fROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup)left join itemCatMast on itemCatMast.code=i.ItemCatCode) Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_F2635D: MemVar_1F950E4 = var_10C & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' Order by I.Name"
  loc_F2636A: MemVar_1F95120 = Me
  loc_F26371: var_10C = "3000,1700,1000,1100,1100,2200,1400,1000,1000,1000,1000,2500"
  loc_F26377: Proc_6_126_F1C850(var_10C)
  loc_F26392: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F26397: Exit Sub
  loc_F26398: ' Referenced from: F26300
  loc_F263A0: Set var_110 = Err()
  loc_F263A6: Call 0.Method_arg_1C (var_88)
  loc_F263B7: If (var_88 <> 0) Then
  loc_F263C2:   Set var_110 = Err()
  loc_F263C8:   Call 0.Method_arg_2C (var_10C)
  loc_F263E9:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F263FC: End If
  loc_F263FC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3D928
  'Data Table: 525C5C
  loc_E3D918: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D920: Call Proc_50_48_1578DC4(global_52)
  loc_E3D925: Exit Sub
  loc_E3D926: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3DC28
  'Data Table: 525C5C
  loc_E3DC18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3DC20: Call Proc_50_48_1578DC4(global_52)
  loc_E3DC25: Exit Sub
  loc_E3DC26: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3B8E8
  'Data Table: 525C5C
  loc_E3B8D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3B8E0: Call Proc_50_48_1578DC4(global_52)
  loc_E3B8E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3BAC8
  'Data Table: 525C5C
  loc_E3BAB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3BAC0: Call Proc_50_48_1578DC4(global_52)
  loc_E3BAC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10857D0
  'Data Table: 525C5C
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_525C82 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  Dim var_7701 As Variant
  loc_1085538: On Error Goto loc_1085784
  loc_108554F: var_A0 = "SELECT I.Code as SearchCode,I.Name,I.Unit,IG.Name as ItemGrpName ,IG.Type,I.PurchRate,I.MinStock,I.MaxStock,I.ReStock,I.ItemCatCode,itemCatMast.Name AS Category,IsNull(I.BarCode,'') BarCode,IsNull(I.CommodityCode,'') HSNCode fROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup)left join itemCatMast on itemCatMast.code=i.ItemCatCode) Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_108555F: unk_525C82.Execute var_A0 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' Order by I.Name", var_C4, -1
  loc_108556A: Set var_88 = var_C8
  loc_1085580: var_CC = var_88.RecordCount
  loc_108558E: If (var_CC = 0) Then
  loc_10855AA:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_10855BA:   Exit Sub
  loc_10855BB: End If
  loc_10855CA: var_A4 = MemVar_1F950B4 & "\ItemMastRaw.ttx"
  loc_10855D1: Set var_C8 = var_88 
  loc_10855DD: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_10855E7: Set var_88 = var_C8
  loc_10855ED: var_B4 = CVar(var_12E) 'Integer
  loc_10855F0: var_98 = var_B4 'Variant
  loc_108560C: var_A0 = MemVar_1F950B4 & "\ItemMastRaw.RPT"
  loc_1085615: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1085620: MemVar_1F951E8 = var_C8
  loc_108563B: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1085643: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108564F: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1085668:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1085670:   Call 0.Method_arg_20 (var_138)
  loc_1085678:   Call 0.Method_arg_30 (var_A0)
  loc_10856BE:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10856D4:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10856DC:     Call 0.Method_arg_20 (var_138)
  loc_10856E4:     Call 0.Method_arg_38 ("'Item Entry'")
  loc_10856F0:   End If
  loc_10856F3: Next var_132 'Integer
  loc_1085711: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1085719: Call 0.Method_arg_2C (var_DC)
  loc_1085727: Call 0.Method_arg_150 (var_FC)
  loc_1085732: Call 0.Method_arg_50 (var_A0)
  loc_108573C: Set var_138 = Nothing
  loc_1085756: Set var_C8 = MemVar_1F951E8 
  loc_1085762: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_108576D: MemVar_1F951E8 = var_C8
  loc_1085780: Set var_88 = Nothing
  loc_1085783: Exit Sub
  loc_1085784: ' Referenced from: 1085538
  loc_108578C: Set var_C8 = Err()
  loc_1085792: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108579D: Call 0.Method_arg_50 (var_A4)
  loc_10857B9: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_10857CC: Exit Sub
  loc_10857CD: var_7701 = CVar(var_138) 'Integer
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E578F8
  'Data Table: 525C5C
  Dim Me As Recordset15
  loc_E578BF: Me.Requery -1
  loc_E578CF: Me.Requery -1
  loc_E578DF: Me.Requery -1
  loc_E578EF: Me.Requery -1
  loc_E578F4: Exit Sub
  loc_E578F5: StAryRecCopy
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '16EE650
  'Data Table: 525C5C
  Dim var_98 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As String
  Dim var_C4 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_12C As String
  Dim unk_525C82 As Connection15
  Dim var_9C As Variant
  Dim var_130 As Variant
  Dim var_134 As Field20
  Dim var_158 As TextBox
  Dim var_194 As TextBox
  Dim var_1D0 As TextBox
  Dim var_20C As TextBox
  Dim var_230 As Variant
  Dim var_278 As TextBox
  Dim var_29C As Variant
  Dim var_2E4 As TextBox
  Dim var_350 As TextBox
  Dim var_3BC As TextBox
  Dim var_4D8 As TextBox
  Dim var_AFC As Double
  Dim var_524 As TextBox
  Dim var_B04 As Double
  Dim var_570 As TextBox
  Dim var_5FC As TextBox
  Dim var_608 As TextBox
  Dim var_714 As TextBox
  Dim var_78C As Variant
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1B8 As Variant
  Dim var_2DC As Variant
  Dim var_348 As Variant
  Dim var_3B4 As Variant
  Dim var_420 As Variant
  Dim var_460 As Variant
  Dim var_568 As Variant
  Dim var_594 As Variant
  Dim var_5B4 As Variant
  Dim var_67C As Variant
  Dim var_6AC As Variant
  Dim var_864 As Variant
  Dim var_914 As Variant
  Dim var_A54 As Variant
  Dim var_574 As String
  Dim var_240 As Variant
  Dim var_2AC As Variant
  Dim var_318 As Variant
  Dim var_384 As Variant
  Dim var_4A0 As Variant
  Dim var_69C As Variant
  Dim var_A44 As Variant
  Dim var_144 As String
  loc_16ECDFC: On Error Goto loc_16EE5FC
  loc_16ECE03: var_86 = CByte(0) 'Byte
  loc_16ECE12: Set var_94 = Me.Txt
  loc_16ECE18: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_16ECE41: If (Proc_183_19_E8E68C(var_98, "Name") = 0) Then
  loc_16ECE4B:   Call Txt_GotFocus(CInt(0))
  loc_16ECE50:   Exit Sub
  loc_16ECE51: End If
  loc_16ECE5F: Set var_94 = Me.Txt
  loc_16ECE65: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_16ECE7B: var_C4 = Trim(CVar(var_98.Tag))
  loc_16ECE99: If (var_C4 = vbNullString) Then
  loc_16ECEB5:   MsgBox("Item Code Not Found!", 0, var_C4, var_E4, var_124)
  loc_16ECECC:   Call Txt_GotFocus(CInt(0))
  loc_16ECED1:   Exit Sub
  loc_16ECED2: End If
  loc_16ECEDD: Set var_94 = Me.Txt
  loc_16ECEE3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_16ECF0C: If (Proc_183_19_E8E68C(var_98, "Unit") = 0) Then
  loc_16ECF16:   Call Txt_GotFocus(CInt(1))
  loc_16ECF1B:   Exit Sub
  loc_16ECF1C: End If
  loc_16ECF27: Set var_94 = Me.Txt
  loc_16ECF2D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_98)
  loc_16ECF56: If (Proc_183_19_E8E68C(var_98, "Issue Unit") = 0) Then
  loc_16ECF60:   Call Txt_GotFocus(CInt(&HE))
  loc_16ECF65:   Exit Sub
  loc_16ECF66: End If
  loc_16ECF71: Set var_94 = Me.Txt
  loc_16ECF77: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98)
  loc_16ECFA0: If (Proc_183_19_E8E68C(var_98, "Item Group Name") = 0) Then
  loc_16ECFAA:   Call Txt_GotFocus(CInt(3))
  loc_16ECFAF:   Exit Sub
  loc_16ECFB0: End If
  loc_16ECFBB: Set var_94 = Me.Txt
  loc_16ECFC1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_98)
  loc_16ECFEA: If (Proc_183_19_E8E68C(var_98, "Category") = 0) Then
  loc_16ECFF4:   Call Txt_GotFocus(CInt(&HA))
  loc_16ECFF9:   Exit Sub
  loc_16ECFFA: End If
  loc_16ED005: Set var_94 = Me.Txt
  loc_16ED00B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_16ED034: If (Proc_183_19_E8E68C(var_98, "Item Type") = 0) Then
  loc_16ED03E:   Call Txt_GotFocus(CInt(&HA))
  loc_16ED043:   Exit Sub
  loc_16ED044: End If
  loc_16ED052: Set var_94 = Me.Txt
  loc_16ED058: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_98)
  loc_16ED060: var_A0 = var_98.Text
  loc_16ED07D: If Not((CDbl(Val(var_A0)) > CDbl(0))) Then
  loc_16ED086:   Call 0.Method_arg_50 (var_A0)
  loc_16ED0A7:   MsgBox("Conversion Ratio should be greater than Zero.", &H40, CVar(var_A0), var_E4, var_124)
  loc_16ED0BE:   Call Txt_GotFocus(CInt(&HF))
  loc_16ED0C3:   Exit Sub
  loc_16ED0C4: End If
  loc_16ED0C8: Set var_94 = Me.TopCtrl1
  loc_16ED0CE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_16ED0E7: If (CStr() = "Add") Then
  loc_16ED0F8:   Set var_94 = Me.Txt
  loc_16ED0FE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_16ED111:   global_108 = var_98.Tag
  loc_16ED122: Else
  loc_16ED13F:   var_98 = Me.Fields.Item("Code")
  loc_16ED147:   var_B4 = var_98.Value
  loc_16ED156:   global_108 = CStr(var_B4)
  loc_16ED167: End If
  loc_16ED167: Call Proc_50_53_112DC0C()
  loc_16ED170: Set var_94 = Me.TopCtrl1
  loc_16ED176: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_16ED17E: var_A0 = CStr()
  loc_16ED18F: If (var_A0 = "Add") Then
  loc_16ED1BF:   Set var_94 = Me.Txt
  loc_16ED1C5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_98, var_A0, "Select Count(*) From sTOCK Where DocID='", var_B4, -1)
  loc_16ED1E6:   unk_525C82.Execute var_130 & var_A0 & "'", 0, var_134
  loc_16ED1F6:    = var_130.Item()
  loc_16ED1FE:    = var_134.Value
  loc_16ED22B:   If (var_98.Text.Fields > 0) Then
  loc_16ED234:     Call Proc_50_52_10488E4(MemVar_1F95044)
  loc_16ED247:     Set var_94 = Me.Txt
  loc_16ED24D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_98)
  loc_16ED255:     var_98.Text = var_A0
  loc_16ED264:   End If
  loc_16ED267: Else
  loc_16ED272:   Set var_94 = Me.Txt
  loc_16ED278:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_98)
  loc_16ED2A1:   If (Trim(CVar(var_98)) = vbNullString) Then
  loc_16ED2AA:     Call Proc_50_52_10488E4(MemVar_1F95044, var_A0)
  loc_16ED2BD:     Set var_94 = Me.Txt
  loc_16ED2C3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_98)
  loc_16ED2CB:     var_98.Text = var_A0
  loc_16ED2DA:   End If
  loc_16ED2DA: End If
  loc_16ED2E3: unk_525C82.BeginTrans var_138
  loc_16ED2EC: var_86 = CByte(1) 'Byte
  loc_16ED2F4: Set var_94 = Me.TopCtrl1
  loc_16ED2FA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A0)
  loc_16ED313: If (CStr() = "Add") Then
  loc_16ED324:   Set var_94 = Me.Txt
  loc_16ED32A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_16ED345:   Set var_9C = Me.Txt
  loc_16ED34B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_130)
  loc_16ED353:   var_144 = var_130.Text
  loc_16ED374:   Set var_134 = Me.Txt
  loc_16ED37A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_158)
  loc_16ED395:   Set var_190 = Me.Txt
  loc_16ED39B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_194)
  loc_16ED3B6:   Set var_1CC = Me.Txt
  loc_16ED3BC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1D0)
  loc_16ED3D7:   Set var_208 = Me.Txt
  loc_16ED3DD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_20C)
  loc_16ED3F2:   var_230 = CVar(Val(var_20C.Text)) 'Double
  loc_16ED3F9:   Proc_6_39_E7D3A0(var_240)
  loc_16ED40C:   Set var_274 = Me.Txt
  loc_16ED412:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_278)
  loc_16ED42E:   Proc_6_39_E7D3A0(var_2AC, CVar(Val(var_278.Text)))
  loc_16ED441:   Set var_2E0 = Me.Txt
  loc_16ED447:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2E4)
  loc_16ED463:   Proc_6_39_E7D3A0(var_318, CVar(Val(var_2E4.Text)))
  loc_16ED476:   Set var_34C = Me.Txt
  loc_16ED47C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_350)
  loc_16ED498:   Proc_6_39_E7D3A0(var_384, CVar(Val(var_350.Text)))
  loc_16ED4AB:   Set var_3B8 = Me.Txt
  loc_16ED4B1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_3BC)
  loc_16ED4CC:   Proc_6_7_F26918(var_4A0, Date)
  loc_16ED4DF:   Set var_4D4 = Me.Txt
  loc_16ED4E5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_4D8)
  loc_16ED4FA:   var_AFC = Val(var_4D8.Text)
  loc_16ED50B:   Set var_520 = Me.Txt
  loc_16ED511:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_524, var_528)
  loc_16ED526:   var_B04 = Val(var_528)
  loc_16ED537:   Set var_56C = Me.Txt
  loc_16ED53D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_570, var_574)
  loc_16ED558:   Set var_5F8 = Me.Txt
  loc_16ED55E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_5FC)
  loc_16ED579:   Set var_604 = Me.Txt
  loc_16ED57F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_608)
  loc_16ED5BC:   Proc_6_7_F26918(var_69C, MemVar_1F950EC)
  loc_16ED5CF:   Set var_710 = Me.Txt
  loc_16ED5D5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_714)
  loc_16ED5ED:   Set var_75C = Me.Txt
  loc_16ED5F3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_760)
  loc_16ED612:   Set var_778 = Me.Txt
  loc_16ED618:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_77C)
  loc_16ED649:   var_7DC = IIf((Proc_6_38_E69628(CVar(var_760)) = vbNullString), "Yes", CVar(Proc_6_38_E69628(CVar(var_77C))))
  loc_16ED659:   Set var_810 = Me.Txt
  loc_16ED65F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_814)
  loc_16ED66E:   var_834 = Trim(CVar(var_814))
  loc_16ED67E:   Set var_868 = Me.Txt
  loc_16ED684:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_86C)
  loc_16ED693:   Proc_6_17_EAAE40(var_88C, CVar(var_86C))
  loc_16ED6A3:   Set var_8C0 = Me.Txt
  loc_16ED6A9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_8C4)
  loc_16ED6B8:   Proc_6_17_EAAE40(var_8E4, CVar(var_8C4))
  loc_16ED6C8:   Set var_918 = Me.Txt
  loc_16ED6CE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_91C)
  loc_16ED6DD:   Proc_6_17_EAAE40(var_93C, CVar(var_91C))
  loc_16ED6ED:   Set var_970 = Me.Txt
  loc_16ED6F3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_974)
  loc_16ED702:   Proc_6_17_EAAE40(var_994, CVar(var_974))
  loc_16ED712:   Set var_9C8 = Me.Txt
  loc_16ED718:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_9CC)
  loc_16ED727:   Proc_6_17_EAAE40(var_9EC, CVar(var_9CC))
  loc_16ED737:   Set var_A20 = Me.Txt
  loc_16ED73D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_A24)
  loc_16ED74C:   Proc_6_17_EAAE40(var_A44, CVar(var_A24))
  loc_16ED75C:   Set var_A78 = Me.Txt
  loc_16ED762:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_A7C)
  loc_16ED771:   Proc_6_17_EAAE40(var_A9C, CVar(var_A7C))
  loc_16ED78A:   var_A0 = "Insert Into ItemMast (Code,Name,CommodityCode,Unit,ItemGroup,Type,PurchRate,MinStock,MaxStock,ReStock,ItemCatCode,LPURRATE,Site_Code,U_Name,U_EntDt,U_AE,DispCode,ConvRatio,IssueUnit,DiscApp,RestCode,ConsumptionItem,LPurDate,LOGSITE_CODE,FinItem,ActiveYN,ItemType,BarCode,LabelName,LabelQty,LabelRemark1,LabelRemark2,LabelRemark3,LabelRemark4,LabelRemark5) " & "Values ('"
  loc_16ED7D5:   var_1B8 = CVar(var_A0 & global_108 & "','" & var_98.Text & "','") & Trim(CVar(var_144)) & "','" & CVar(var_158.Text) & "','" & CVar(var_194.Tag) 
  loc_16ED811:   var_2DC = var_1B8 & "','" & CVar(var_1D0.Text) & "'," & var_240 & "," & var_2AC & "," 
  loc_16ED821:   var_348 = var_2DC & var_318 & "," 
  loc_16ED831:   var_3B4 = var_348 & var_384 & ",'" 
  loc_16ED84E:   var_420 = var_3B4 & CVar(var_3BC.Tag) & "',0,'" & CVar(MemVar_1F95070) 
  loc_16ED8AC:   var_594 = var_420 & "','" & CVar(MemVar_1F950C8) & "'," & var_4A0 & ",'A'," & CVar(var_524.Text) & "," & CVar(var_570.Text) & ",'" & CVar(var_574) 
  loc_16ED8B5:   var_5B4 = var_594 & "','Y','" 
  loc_16ED8D8:   var_67C = var_5B4 & CVar(MemVar_1F95078) & "PURC','" & IIf((var_5FC.Tag = vbNullString), global_108, CVar(var_608.Tag)) & "'," 
  loc_16ED92E:   var_864 = var_67C & var_69C & ",'" & CVar(MemVar_1F95078) & "','" & CVar(var_714.Tag) & "','" & var_7DC & "','Store','" & var_834 & "'," 
  loc_16ED985:   var_A54 = var_864 & var_88C & "," & var_8E4 & "," & var_93C & "," & var_994 & "," & var_9EC & "," & var_A44 
  loc_16ED9AC:   unk_525C82.Execute CStr(var_A54 & "," & var_A9C & ")"), var_AF0, -1
  loc_16EDB01: Else
  loc_16EDB0F:   Set var_94 = Me.Txt
  loc_16EDB15:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0)
  loc_16EDB1D:   var_AF4 = var_98.Text
  loc_16EDB2D:   Set var_9C = Me.Txt
  loc_16EDB33:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_130)
  loc_16EDB3B:   var_B4 = CVar(var_130) 'Address
  loc_16EDB42:   var_C4 = Trim(var_B4)
  loc_16EDB55:   Set var_134 = Me.Txt
  loc_16EDB5B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_158)
  loc_16EDB76:   Set var_190 = Me.Txt
  loc_16EDB7C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_194)
  loc_16EDBBC:   Set var_1CC = Me.Txt
  loc_16EDBC2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_1D0)
  loc_16EDBD7:   var_AFC = Val(var_1D0.Text)
  loc_16EDBE8:   Set var_208 = Me.Txt
  loc_16EDBEE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_20C, var_144)
  loc_16EDC09:   Set var_274 = Me.Txt
  loc_16EDC0F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_278)
  loc_16EDC2A:   Set var_2E0 = Me.Txt
  loc_16EDC30:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2E4)
  loc_16EDC4B:   Set var_34C = Me.Txt
  loc_16EDC51:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_350)
  loc_16EDC6D:   Proc_6_39_E7D3A0(var_2DC, CVar(Val(var_350.Text)))
  loc_16EDC80:   Set var_3B8 = Me.Txt
  loc_16EDC86:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_3BC)
  loc_16EDCA2:   Proc_6_39_E7D3A0(var_348, CVar(Val(var_3BC.Text)))
  loc_16EDCB5:   Set var_4D4 = Me.Txt
  loc_16EDCBB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_4D8)
  loc_16EDCD7:   Proc_6_39_E7D3A0(var_3B4, CVar(Val(var_4D8.Text)))
  loc_16EDCEA:   Set var_520 = Me.Txt
  loc_16EDCF0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_524)
  loc_16EDD0C:   Proc_6_39_E7D3A0(var_420, CVar(Val(var_524.Text)))
  loc_16EDD1F:   Set var_56C = Me.Txt
  loc_16EDD25:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_570)
  loc_16EDD40:   Set var_5F8 = Me.Txt
  loc_16EDD46:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_5FC)
  loc_16EDD61:   Proc_6_7_F26918(var_5B4, Date)
  loc_16EDD74:   Set var_604 = Me.Txt
  loc_16EDD7A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_608)
  loc_16EDD95:   Set var_710 = Me.Txt
  loc_16EDD9B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_714)
  loc_16EDDB3:   Set var_75C = Me.Txt
  loc_16EDDB9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_760)
  loc_16EDDD8:   Set var_778 = Me.Txt
  loc_16EDDDE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_77C)
  loc_16EDE1F:   Set var_810 = Me.Txt
  loc_16EDE25:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_814)
  loc_16EDE34:   Proc_6_17_EAAE40(var_7DC, CVar(var_814))
  loc_16EDE44:   Set var_868 = Me.Txt
  loc_16EDE4A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_86C)
  loc_16EDE59:   Proc_6_17_EAAE40(var_834, CVar(var_86C))
  loc_16EDE69:   Set var_8C0 = Me.Txt
  loc_16EDE6F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_8C4)
  loc_16EDE7E:   Proc_6_17_EAAE40(var_88C, CVar(var_8C4))
  loc_16EDE8E:   Set var_918 = Me.Txt
  loc_16EDE94:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_91C)
  loc_16EDEA3:   Proc_6_17_EAAE40(var_8E4, CVar(var_91C))
  loc_16EDEB3:   Set var_970 = Me.Txt
  loc_16EDEB9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_974)
  loc_16EDEC8:   Proc_6_17_EAAE40(var_93C, CVar(var_974))
  loc_16EDED8:   Set var_9C8 = Me.Txt
  loc_16EDEDE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_9CC)
  loc_16EDEED:   Proc_6_17_EAAE40(var_994, CVar(var_9CC))
  loc_16EDEFD:   Set var_A20 = Me.Txt
  loc_16EDF03:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_A24)
  loc_16EDF12:   Proc_6_17_EAAE40(var_9EC, CVar(var_A24))
  loc_16EDF48:   var_18C = CVar("UPDATE ItemMast SET Name='" & var_A0 & "',CommodityCode='") & var_C4 & "',ConsumptionItem='" & IIf((var_158.Tag = vbNullString), global_108, CVar(var_194.Tag)) 
  loc_16EDF7F:   var_230 = CVar(var_278.Tag) 'String
  loc_16EDF95:   var_29C = var_18C & "',DispCode=" & CVar(var_20C.Text) & ",Unit='" & CVar(var_144) & "',ItemGroup='" & var_230 & "',Type='" & CVar(var_2E4.Text) 
  loc_16EDFDE:   var_460 = var_29C & "',PurchRate=" & var_2DC & ",MinStock =" & var_348 & ",MaxStock=" & var_3B4 & ",ReStock=" & var_420 & ",ItemCatCode = '" 
  loc_16EE021:   var_568 = var_460 & CVar(var_570.Tag) & "',SITE_CODE='" & CVar(MemVar_1F95070) & "',FinItem='" & CVar(var_5FC.Tag) & "',U_name='" & CVar(MemVar_1F950C8) 
  loc_16EE060:   var_6AC = var_568 & "',U_EntDt=" & var_5B4 & " ,U_AE='E',ConvRatio=" & CVar(var_608.Text) & ",IssueUnit='" & CVar(var_714.Text) & "',RestCode='" 
  loc_16EE07A:   var_78C = var_6AC & CVar(MemVar_1F95078) & "PURC',ActiveYN='" & IIf((Proc_6_38_E69628(CVar(var_760)) = vbNullString), "Yes", CVar(Proc_6_38_E69628(CVar(var_77C)))) 
  loc_16EE0C3:   var_914 = var_78C & "',LabelName=" & var_7DC & ",LabelQty=" & var_834 & ",LabelRemark1=" & var_88C & ",LabelRemark2=" & var_8E4 & ",LabelRemark3=" 
  loc_16EE109:   var_A44 = var_914 & var_93C & ",LabelRemark4=" & var_994 & ",LabelRemark5=" & var_9EC & " WHERE Code='" & CVar(global_108) & "' And ItemType='Store'" 
  loc_16EE117:   unk_525C82.Execute CStr(var_A44), var_A54, -1
  loc_16EE251: End If
  loc_16EE27E: Set var_94 = Me.Txt
  loc_16EE284: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98, var_A0, "Select Count(*) From UnitMast Where Name='", var_B4, -1, var_9C)
  loc_16EE28C: var_130 = var_98.Text
  loc_16EE2A5: unk_525C82.Execute 0 & var_A0 & "'", var_134, var_C4
  loc_16EE2AD: var_A78 = var_9C.Fields
  loc_16EE2B5:  = var_130.Item(var_230)
  loc_16EE2BD:  = var_134.Value
  loc_16EE2EA: If (var_C4 <= 0) Then
  loc_16EE312:   Set var_94 = Me.Txt
  loc_16EE318:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98, var_A0, "Insert Into UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('")
  loc_16EE320:   var_18C = var_98.Text
  loc_16EE329:   var_12C = -1 & var_A0
  loc_16EE352:   var_B4 = Date
  loc_16EE35D:   Proc_6_7_F26918(var_C4, var_B4)
  loc_16EE378:   var_16C = CVar(0 & var_A0 & "'" & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") & var_C4 & ",'A','" & CVar(MemVar_1F95078) 
  loc_16EE38F:   unk_525C82.Execute CStr(var_16C & "')"), var_9C, 
  loc_16EE3C3: End If
  loc_16EE3F0: Set var_94 = Me.Txt
  loc_16EE3F6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_98, var_A0, "Select Count(*) From UnitMast Where Name='", var_B4, -1)
  loc_16EE3FE: var_9C = var_98.Text
  loc_16EE417: unk_525C82.Execute var_130 & var_A0 & "'", 0, var_134
  loc_16EE41F: var_C4 = var_9C.Fields
  loc_16EE427:  = var_130.Item()
  loc_16EE42F:  = var_134.Value
  loc_16EE45C: If (var_C4 <= 0) Then
  loc_16EE484:   Set var_94 = Me.Txt
  loc_16EE48A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_98, var_A0, "Insert Into UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('")
  loc_16EE492:   var_18C = var_98.Text
  loc_16EE49B:   var_12C = -1 & var_A0
  loc_16EE4BE:   var_E4 = CVar(var_130 & var_A0 & "'" & "','" & MemVar_1F95078 & "','" & MemVar_1F950C8 & "',") 'String
  loc_16EE4CF:   Proc_6_7_F26918(var_C4, Date)
  loc_16EE4D7:   var_124 = var_E4 & var_C4 
  loc_16EE4DB:   var_D4 = ",'A','"
  loc_16EE501:   unk_525C82.Execute CStr(var_124 & var_D4 & CVar(MemVar_1F95078) & "')"), var_9C, 
  loc_16EE535: End If
  loc_16EE53B: unk_525C82.CommitTrans
  loc_16EE544: var_86 = CByte(0) 'Byte
  loc_16EE553: Me.Requery -1
  loc_16EE563: Me.Requery -1
  loc_16EE590: Me.Find "Code='" & global_108 & "'", 0, 1
  loc_16EE5A0: Set var_94 = Me.TopCtrl1
  loc_16EE5A6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D4)
  loc_16EE5BF: If (CStr() = "Add") Then
  loc_16EE5C2:   Call TopCtrl1_UnknownEvent_A()
  loc_16EE5C7:   Exit Sub
  loc_16EE5C8: End If
  loc_16EE5DD: var_A0 = "INI"
  loc_16EE5EB: Call Proc_50_46_F168E8(Proc_5_1_100EC1C(var_A0, Me))
  loc_16EE5F6: Call Proc_50_48_1578DC4(global_52)
  loc_16EE5FB: Exit Sub
  loc_16EE5FC: ' Referenced from: 16ECDFC
  loc_16EE605: If (CInt(var_86) = 1) Then
  loc_16EE60E:   unk_525C82.RollbackTrans
  loc_16EE613: End If
  loc_16EE61B: Set var_94 = Err()
  loc_16EE621: Call 0.Method_arg_2C (var_A0)
  loc_16EE63A: MsgBox(CVar(var_A0), &H10, var_C4, var_E4, var_124)
  loc_16EE64D: Exit Sub
End Sub

Private Sub Command4_Click() 'DFC85C
  'Data Table: 525C5C
  loc_DFC858: Exit Sub
End Sub

Private Sub DGCat_UnknownEvent_9 'EE6B4C
  'Data Table: 525C5C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE6AA3: Me.DGCat.Visible = False
  loc_EE6AC2: If (Me.RecordCount > 0) Then
  loc_EE6AE2:   var_B0 = Me.Fields.Item("Name")
  loc_EE6B01:   Set var_B4 = Me.Txt
  loc_EE6B07:   Call 0.Method_DGCat_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_EE6B0F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE6B25: End If
  loc_EE6B30: Set var_A8 = Me.Txt
  loc_EE6B36: Call 0.Method_DGCat_UnknownEvent_90 (CInt(&HA))
  loc_EE6B3E: var_B0.SetFocus
  loc_EE6B4A: Exit Sub
End Sub

Private Sub DGCat_UnknownEvent_1F 'E6F60C
  'Data Table: 525C5C
  loc_E6F5CA: Proc_6_153_E91D24(Me.DGCat, arg_14)
  loc_E6F5E1: Set var_8C = Me.FGPoint
  loc_E6F5FD: Proc_6_138_106E830(Me.DGCat, global_64, CInt(&HA))
  loc_E6F60B: Exit Sub
End Sub

Private Sub DGConsumptionItem_UnknownEvent_9 'F446B4
  'Data Table: 525C5C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F445AB: Me.DGConsumptionItem.Visible = False
  loc_F445CA: If (Me.RecordCount > 0) Then
  loc_F44609:   Set var_B4 = Me.Txt
  loc_F4460F:   Call 0.Method_DGConsumptionItem_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F44617:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4464A:   var_B0 = Me.Fields.Item("Name")
  loc_F44669:   Set var_B4 = Me.Txt
  loc_F4466F:   Call 0.Method_DGConsumptionItem_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F44677:   var_B8.Text = CStr(var_B0.Value)
  loc_F4468D: End If
  loc_F44698: Set var_A8 = Me.Txt
  loc_F4469E: Call 0.Method_DGConsumptionItem_UnknownEvent_90 (CInt(&H10))
  loc_F446A6: var_B0.SetFocus
  loc_F446B2: Exit Sub
End Sub

Private Sub DGConsumptionItem_UnknownEvent_1F 'E7244C
  'Data Table: 525C5C
  loc_E7240A: Proc_6_153_E91D24(Me.DGConsumptionItem, arg_14)
  loc_E72421: Set var_8C = Me.FGPoint
  loc_E7243D: Proc_6_138_106E830(Me.DGConsumptionItem, global_72, CInt(&H10))
  loc_E7244B: Exit Sub
End Sub

Private Sub ChkLblInfo_UnknownEvent_9 'E97930
  'Data Table: 525C5C
  Dim var_88 As Frame
  loc_E978B4: Set var_88 = Me.ChkLblInfo
  loc_E978BA: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_69()
  loc_E978CF: If (CLng(CInt()) = 1) Then
  loc_E978DE:   Me.FrLblInfo.Visible = True
  loc_E978F0:   Set var_88 = Me.ChkLblInfo
  loc_E978F6:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("Hide Label Information")
  loc_E97901: Else
  loc_E9790D:   Me.FrLblInfo.Visible = False
  loc_E9791F:   Set var_88 = Me.ChkLblInfo
  loc_E97925:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("Show Label Information")
  loc_E9792D: End If
  loc_E9792D: Exit Sub
End Sub

Private Sub Command1_Click() 'EAA804
  'Data Table: 525C5C
  Dim var_8C As Label
  Dim var_A4 As Integer
  Dim var_C4 As Variant
  Dim var_D4 As Boolean
  loc_EAA7A0: If (Me.Label2.Caption = "Semi Finish") Then
  loc_EAA7A7:   Set var_88 = New FrmConsumMast
  loc_EAA7AD:   Call var_88.TopCtrl1_eAdd
  loc_EAA7C4:   Set var_8C = var_94(CInt(0))
  loc_EAA7CA:   Call 0.Method_Command1_Click0 (0)
  loc_EAA7D2:   var_C4 = CVar(var_94) 'Address
  loc_EAA7DA:   LateMemCallSt
  loc_EAA7E6:   var_A4 = 0
  loc_EAA7EC:   var_D4 = True
  loc_EAA7F3:   Call var_88.Txt_Validate
  loc_EAA7FC:   Call var_88.Show
  loc_EAA802: End If
  loc_EAA802: Exit Sub
End Sub

Private Sub Command3_Click() 'DFC7C0
  'Data Table: 525C5C
  loc_DFC7BC: Exit Sub
End Sub

Private Sub Command6_Click() 'E1BE18
  'Data Table: 525C5C
  loc_E1BE0C: Me.Frame1.Visible = False
  loc_E1BE14: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC1974
  'Data Table: 525C5C
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC18EA: On Error Goto loc_EC192F
  loc_EC18F3: Me.MoveFirst
  loc_EC190D: var_8C = "SearchCode='" & MyValue
  loc_EC191D: Me.Find var_8C & "'", 0, 1
  loc_EC1929: Call Proc_50_48_1578DC4(var_A0)
  loc_EC192E: Exit Sub
  loc_EC192F: ' Referenced from: EC18EA
  loc_EC1937: Set var_A4 = Err()
  loc_EC193D: Call 0.Method_arg_2C (var_8C)
  loc_EC195E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC1971: Exit Sub
  loc_EC1972: Exit Sub
End Sub

Public Sub Proc_50_46_F168E8(arg_C) 'F168E8
  'Data Table: 525C5C
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  loc_F167F6: Set var_8C = Me.Txt
  loc_F167FC: Call 0.Method_Proc_50_46_F168E8C (var_8E, var_86)
  loc_F1680C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F16822:   Set var_8C = Me.Txt
  loc_F16828:   Call 0.Method_Proc_50_46_F168E80 (CInt(var_86), var_98)
  loc_F16830:   var_98.Enabled = arg_C
  loc_F1683F: Next var_92 'Byte
  loc_F16852: Set var_8C = Me.Txt
  loc_F16858: Call 0.Method_Proc_50_46_F168E80 (CInt(2), var_98)
  loc_F16860: var_98.Enabled = False
  loc_F16879: Set var_8C = Me.Txt
  loc_F1687F: Call 0.Method_Proc_50_46_F168E80 (CInt(&H16), var_98)
  loc_F16887: var_98.Enabled = False
  loc_F168A0: Set var_8C = Me.Txt
  loc_F168A6: Call 0.Method_Proc_50_46_F168E80 (CInt(&H17), var_98)
  loc_F168AE: var_98.Enabled = False
  loc_F168C8: Me.Command3.Enabled = Not(arg_C)
  loc_F168DE: Me.Command4.Enabled = Not(arg_C)
  loc_F168E6: Exit Sub
End Sub

Public Sub Proc_50_47_E792EC
  'Data Table: 525C5C
  Dim var_98 As TextBox
  loc_E7929A: Set var_8C = Me.Txt
  loc_E792A0: Call 0.Method_Proc_50_47_E792ECC (var_8E, var_86)
  loc_E792B0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E792C6:   Set var_8C = Me.Txt
  loc_E792CC:   Call 0.Method_Proc_50_47_E792EC0 (CInt(var_86), var_98)
  loc_E792D4:   var_98.Text = vbNullString
  loc_E792E3: Next var_92 'Byte
  loc_E792E9: Exit Sub
End Sub

Public Sub Proc_50_48_1578DC4
  'Data Table: 525C5C
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_525C82 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Variant
  Dim var_130 As Variant
  Dim var_184 As Fields15
  Dim var_1D0 As Variant
  Dim var_11C As Variant
  Dim var_114 As Variant
  Dim var_198 As TextBox
  loc_1577CD8: On Error Goto loc_1578D7E
  loc_1577CE1: Proc_183_45_E5CCA8(global_52)
  loc_1577D3C: unk_525C82.Execute CStr("Select U_Name,U_AE,U_EntDt From Itemmast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_1577D47: Set var_88 = var_118
  loc_1577D9B: var_118 = var_88.Fields
  loc_1577E04: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1577E49: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_1577EC3: var_11C = var_88.Fields.Item("U_AE")
  loc_1577EDC: var_114 = "entdt : "
  loc_1577F24: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), "Last Update : ", var_114))
  loc_1577F3B: var_184 = var_88.Fields
  loc_1577F63: Set var_1D0 = Me.LblLDt
  loc_1577F69: var_1D0.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_184.Item("U_EntDt")))))
  loc_1577FB8: If (Me.RecordCount <= 0) Then
  loc_1577FBB:   Call Proc_50_47_E792EC()
  loc_1577FC3: Else
  loc_1577FF7:   global_108 = CStr(Me.Fields.Item("Name").Value)
  loc_1578044:   Set var_118 = Me.Txt
  loc_157804A:   Call 0.Method_Proc_50_48_1578DC40 (CInt(0), var_11C)
  loc_1578052:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15780A4:   Set var_118 = Me.Txt
  loc_15780AA:   Call 0.Method_Proc_50_48_1578DC40 (CInt(0), var_11C)
  loc_15780B2:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1578101:   Set var_118 = Me.Txt
  loc_1578107:   Call 0.Method_Proc_50_48_1578DC40 (CInt(&H17), var_11C)
  loc_157810F:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CommodityCode")))
  loc_157815C:   Set var_118 = Me.Txt
  loc_1578162:   Call 0.Method_Proc_50_48_1578DC40 (CInt(1), var_11C)
  loc_157816A:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")))
  loc_15781B7:   Set var_118 = Me.Txt
  loc_15781BD:   Call 0.Method_Proc_50_48_1578DC40 (CInt(2), var_11C)
  loc_15781C5:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Type")))
  loc_1578212:   Set var_118 = Me.Txt
  loc_1578218:   Call 0.Method_Proc_50_48_1578DC40 (CInt(3), var_11C)
  loc_1578220:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemGrpName")))
  loc_157826D:   Set var_118 = Me.Txt
  loc_1578273:   Call 0.Method_Proc_50_48_1578DC40 (CInt(3), var_11C)
  loc_157827B:   var_11C.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemGroup")))
  loc_15782C8:   Set var_118 = Me.Txt
  loc_15782CE:   Call 0.Method_Proc_50_48_1578DC40 (CInt(&H10), var_11C)
  loc_15782D6:   var_11C.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("ConsumptionItem")))
  loc_1578326:   If (Proc_6_38_E69628(CVar(Me.Fields.Item("ConsumptionItem"))) <> vbNullString) Then
  loc_157832C:     var_130 = 0
  loc_1578364:     var_A0 = Me.Fields.Item("ConsumptionItem")
  loc_157838B:     unk_525C82.Execute CStr("Select Max(Name) from Itemmast where Code='" & var_A0.Value & "'And ItemType='Store'"), var_114, -1
  loc_1578393:     var_118 = var_118.Fields
  loc_157839B:     var_130 = var_11C.Item(var_11C)
  loc_15783BA:     Set var_198 = Me.Txt
  loc_15783C0:     Call 0.Method_Proc_50_48_1578DC40 (CInt(&H10), var_1D0)
  loc_15783C8:     var_1D0.Text = Proc_6_38_E69628(CVar(var_184))
  loc_15783F3:   Else
  loc_1578401:     Set var_8C = Me.Txt
  loc_1578407:     Call 0.Method_Proc_50_48_1578DC40 (CInt(&H10), var_A0)
  loc_157840F:     var_A0.Text = vbNullString
  loc_157841B:   End If
  loc_1578470:   Set var_118 = Me.Txt
  loc_1578476:   Call 0.Method_Proc_50_48_1578DC40 (CInt(4), var_11C, CStr(Format(CVar(Me.Fields.Item("PurchRate")), "0.00")))
  loc_157847E:   var_11C.Text = 1
  loc_15784ED:   Set var_118 = Me.Txt
  loc_15784F3:   Call 0.Method_Proc_50_48_1578DC40 (CInt(5), var_11C, CStr(Format(CVar(Me.Fields.Item("MinStock")), "0.000")), 1)
  loc_15784FB:   var_11C.Text = 1
  loc_157856A:   Set var_118 = Me.Txt
  loc_1578570:   Call 0.Method_Proc_50_48_1578DC40 (CInt(6), var_11C, CStr(Format(CVar(Me.Fields.Item("MaxStock")), "0.000")), 1)
  loc_1578578:   var_11C.Text = 1
  loc_15785C0:   var_D0 = "0.000"
  loc_15785E7:   Set var_118 = Me.Txt
  loc_15785ED:   Call 0.Method_Proc_50_48_1578DC40 (CInt(7), var_11C, CStr(Format(CVar(Me.Fields.Item("ReStock")), var_D0)), 1)
  loc_15785F5:   var_11C.Text = 1
  loc_1578648:   Set var_118 = Me.Txt
  loc_157864E:   Call 0.Method_Proc_50_48_1578DC40 (CInt(&HA), var_11C)
  loc_1578656:   var_11C.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemCatCode")), 1)
  loc_15786A3:   Set var_118 = Me.Txt
  loc_15786A9:   Call 0.Method_Proc_50_48_1578DC40 (CInt(&HA), var_11C)
  loc_15786B1:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Category")))
  loc_15786EE:   Proc_6_39_E7D3A0(var_D0, CVar(Me.Fields.Item("DispCode")))
  loc_1578705:   Set var_118 = Me.Txt
  loc_157870B:   Call 0.Method_Proc_50_48_1578DC40 (CInt(&HD), var_11C)
  loc_1578713:   var_11C.Text = CStr(var_D0)
  loc_1578754:   Proc_6_39_E7D3A0(var_D0, CVar(Me.Fields.Item("ConvRatio")))
  loc_157876B:   Set var_118 = Me.Txt
  loc_1578771:   Call 0.Method_Proc_50_48_1578DC40 (CInt(&HF), var_11C)
  loc_1578779:   var_11C.Text = CStr(var_D0)
  loc_15787CA:   Set var_118 = Me.Txt
  loc_15787D0:   Call 0.Method_Proc_50_48_1578DC40 (CInt(&HE), var_11C)
  loc_15787D8:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("IssueUnit")))
  loc_1578825:   Set var_118 = Me.Txt
  loc_157882B:   Call 0.Method_Proc_50_48_1578DC40 (CInt(&H15), var_11C)
  loc_1578833:   var_11C.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("FinItem")))
  loc_1578883:   If (Proc_6_38_E69628(CVar(Me.Fields.Item("FinItem"))) <> vbNullString) Then
  loc_1578889:     var_130 = 0
  loc_15788C1:     var_A0 = Me.Fields.Item("FinItem")
  loc_15788E8:     unk_525C82.Execute CStr("Select Max(Name) from Itemmast where Code='" & var_A0.Value & "'"), var_114, -1
  loc_15788F0:     var_118 = var_118.Fields
  loc_15788F8:     var_130 = var_11C.Item(var_11C)
  loc_1578917:     Set var_198 = Me.Txt
  loc_157891D:     Call 0.Method_Proc_50_48_1578DC40 (CInt(&H15), var_1D0)
  loc_1578925:     var_1D0.Text = Proc_6_38_E69628(CVar(var_184), var_184)
  loc_1578950:   Else
  loc_157895E:     Set var_8C = Me.Txt
  loc_1578964:     Call 0.Method_Proc_50_48_1578DC40 (CInt(&H15), var_A0)
  loc_157896C:     var_A0.Text = vbNullString
  loc_1578978:   End If
  loc_15789C0:   var_11C = Me.Fields.Item("ActiveYN")
  loc_15789D1:   var_114 = CVar(Proc_6_38_E69628(CVar(var_11C))) 'String
  loc_1578A08:   Set var_184 = Me.Txt
  loc_1578A0E:   Call 0.Method_Proc_50_48_1578DC40 (CInt(&H14), var_198)
  loc_1578A16:   var_198.Text = CStr(IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("ActiveYN"))) = vbNullString), "Yes", var_114))
  loc_1578A77:   Set var_118 = Me.Txt
  loc_1578A7D:   Call 0.Method_Proc_50_48_1578DC40 (CInt(&H16), var_11C)
  loc_1578A85:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("BarCode")))
  loc_1578AD2:   Set var_118 = Me.Txt
  loc_1578AD8:   Call 0.Method_Proc_50_48_1578DC40 (CInt(&H18), var_11C)
  loc_1578AE0:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LabelName")))
  loc_1578B2D:   Set var_118 = Me.Txt
  loc_1578B33:   Call 0.Method_Proc_50_48_1578DC40 (CInt(&H19), var_11C)
  loc_1578B3B:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LabelQty")))
  loc_1578B88:   Set var_118 = Me.Txt
  loc_1578B8E:   Call 0.Method_Proc_50_48_1578DC40 (CInt(&H1A), var_11C)
  loc_1578B96:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LabelRemark1")))
  loc_1578BE3:   Set var_118 = Me.Txt
  loc_1578BE9:   Call 0.Method_Proc_50_48_1578DC40 (CInt(&H1B), var_11C)
  loc_1578BF1:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LabelRemark2")))
  loc_1578C3E:   Set var_118 = Me.Txt
  loc_1578C44:   Call 0.Method_Proc_50_48_1578DC40 (CInt(&H1C), var_11C)
  loc_1578C4C:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LabelRemark3")))
  loc_1578C99:   Set var_118 = Me.Txt
  loc_1578C9F:   Call 0.Method_Proc_50_48_1578DC40 (CInt(&H1D), var_11C)
  loc_1578CA7:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LabelRemark4")))
  loc_1578CF4:   Set var_118 = Me.Txt
  loc_1578CFA:   Call 0.Method_Proc_50_48_1578DC40 (CInt(&H1E), var_11C)
  loc_1578D02:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LabelRemark5")))
  loc_1578D47:   var_F0 = Trim(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Type")))))
  loc_1578D4F:   var_F4 = CStr(var_F0)
  loc_1578D5D:   Me.Label2.Caption = var_F4
  loc_1578D75: End If
  loc_1578D7A: Set var_88 = Nothing
  loc_1578D7D: Exit Sub
  loc_1578D7E: ' Referenced from: 1577CD8
  loc_1578D86: Set var_8C = Err()
  loc_1578D8C: Call 0.Method_arg_2C (var_F4)
  loc_1578DAD: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_1578DC0: Exit Sub
End Sub

Public Sub Proc_50_49_1083A34
  'Data Table: 525C5C
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_525C82 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_10837C7: If (Me.RecordCount = 0) Then
  loc_10837CA:   Proc_50_49_1083A34 = 
  loc_10837D0: End If
  loc_10837D4: Set var_90 = Me.TopCtrl1
  loc_10837DA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10837F3: If (CStr() = "Add") Then
  loc_1083831:   Set var_90 = Me.Txt
  loc_1083837:   Call 0.Method_Proc_50_49_1083A340 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemMast Where (restcode='" & MemVar_1F95078 & "PURC' ) and Code='", var_A0, -1)
  loc_1083858:   unk_525C82.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1083868:    = var_D0.Item()
  loc_1083870:    = var_E4.Value
  loc_10838A1:   If (var_A8.Tag.Fields > 0) Then
  loc_10838BF:     var_A0 = "Duplicate Name"
  loc_10838C5:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_10838E0:     Set var_90 = Me.Txt
  loc_10838E6:     Call 0.Method_Proc_50_49_1083A340 (CInt(0))
  loc_10838EE:     var_A8.SetFocus
  loc_10838FF:     Proc_50_49_1083A34 = &HFF
  loc_1083905:   End If
  loc_1083908: Else
  loc_1083943:   Set var_90 = Me.Txt
  loc_1083949:   Call 0.Method_Proc_50_49_1083A340 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108397B:   unk_525C82.Execute var_D0 & var_AC & "' And Name<>'" & global_108 & "'", 0, var_E4
  loc_108398B:    = var_D0.Item(var_A8)
  loc_1083993:    = var_E4.Value
  loc_10839C8:   If (var_A8.Text.Fields > 0) Then
  loc_10839EC:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1083A07:     Set var_90 = Me.Txt
  loc_1083A0D:     Call 0.Method_Proc_50_49_1083A340 (CInt(0))
  loc_1083A15:     var_A8.SetFocus
  loc_1083A26:     Proc_50_49_1083A34 = &HFF
  loc_1083A2C:   End If
  loc_1083A2C: End If
  loc_1083A2C: Proc_50_49_1083A34 = var_A8
End Sub

Public Sub Proc_50_50_F98578
  'Data Table: 525C5C
  loc_F98418: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F9842A:   Me.DGHelp.Visible = False
  loc_F98432: End If
  loc_F9844E: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_F98460:   Me.DGItemGroup.Visible = False
  loc_F98468: End If
  loc_F98484: If (CBool(Me.DGCat.Visible) = &HFF) Then
  loc_F98496:   Me.DGCat.Visible = False
  loc_F9849E: End If
  loc_F984BA: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_F984CC:   Me.DGUnit.Visible = False
  loc_F984D4: End If
  loc_F984F0: If (CBool(Me.DGConsumptionItem.Visible) = &HFF) Then
  loc_F98502:   Me.DGConsumptionItem.Visible = False
  loc_F9850A: End If
  loc_F98526: If (CBool(Me.DGFinItem.Visible) = &HFF) Then
  loc_F98538:   Me.DGFinItem.Visible = False
  loc_F98540: End If
  loc_F9855C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F9856E:   Me.FGPoint.Visible = False
  loc_F98576: End If
  loc_F98576: Exit Sub
End Sub

Public Sub Proc_50_51_119F2CC
  'Data Table: 525C5C
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_119EEBE: Set var_88 = Me.Txt
  loc_119EEC4: Call 0.Method_Proc_50_51_119F2CC0 (CInt(0), var_8C)
  loc_119EEE3: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_119EEFF: Set var_B4 = Me.Txt
  loc_119EF05: Call 0.Method_Proc_50_51_119F2CC0 (CInt(0), var_B8)
  loc_119EF20: Set var_88 = Me.Txt
  loc_119EF26: Call 0.Method_Proc_50_51_119F2CC0 (CInt(0), var_8C)
  loc_119EF3E: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_119EF4D: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_119EF6D: Set var_88 = Me.Txt
  loc_119EF73: Call 0.Method_Proc_50_51_119F2CC0 (CInt(3), var_8C)
  loc_119EF92: Me.DGItemGroup.Left = CVar(var_8C.Left)
  loc_119EFAE: Set var_B4 = Me.Txt
  loc_119EFB4: Call 0.Method_Proc_50_51_119F2CC0 (CInt(3), var_B8)
  loc_119EFCF: Set var_88 = Me.Txt
  loc_119EFD5: Call 0.Method_Proc_50_51_119F2CC0 (CInt(3), var_8C)
  loc_119EFED: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_119EFFC: Me.DGItemGroup.Top = CVar(var_8C.Left)
  loc_119F01C: Set var_88 = Me.Txt
  loc_119F022: Call 0.Method_Proc_50_51_119F2CC0 (CInt(&H10), var_8C)
  loc_119F041: Me.DGConsumptionItem.Left = CVar(var_8C.Left)
  loc_119F05D: Set var_B4 = Me.Txt
  loc_119F063: Call 0.Method_Proc_50_51_119F2CC0 (CInt(&H10), var_B8)
  loc_119F07E: Set var_88 = Me.Txt
  loc_119F084: Call 0.Method_Proc_50_51_119F2CC0 (CInt(&H10), var_8C)
  loc_119F09C: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_119F0AB: Me.DGConsumptionItem.Top = CVar(var_8C.Left)
  loc_119F0CB: Set var_88 = Me.Txt
  loc_119F0D1: Call 0.Method_Proc_50_51_119F2CC0 (CInt(&H15), var_8C)
  loc_119F0F0: Me.DGFinItem.Left = CVar(var_8C.Left)
  loc_119F10C: Set var_B4 = Me.Txt
  loc_119F112: Call 0.Method_Proc_50_51_119F2CC0 (CInt(&H15), var_B8)
  loc_119F12D: Set var_88 = Me.Txt
  loc_119F133: Call 0.Method_Proc_50_51_119F2CC0 (CInt(&H15), var_8C)
  loc_119F14B: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_119F15A: Me.DGFinItem.Top = CVar(var_8C.Left)
  loc_119F17A: Set var_88 = Me.Txt
  loc_119F180: Call 0.Method_Proc_50_51_119F2CC0 (CInt(&HA), var_8C)
  loc_119F19F: Me.DGCat.Left = CVar(var_8C.Left)
  loc_119F1BB: Set var_B4 = Me.Txt
  loc_119F1C1: Call 0.Method_Proc_50_51_119F2CC0 (CInt(&HA), var_B8)
  loc_119F1DC: Set var_88 = Me.Txt
  loc_119F1E2: Call 0.Method_Proc_50_51_119F2CC0 (CInt(&HA), var_8C)
  loc_119F1FA: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_119F209: Me.DGCat.Top = CVar(var_8C.Left)
  loc_119F229: Set var_88 = Me.Txt
  loc_119F22F: Call 0.Method_Proc_50_51_119F2CC0 (CInt(1), var_8C)
  loc_119F24E: Me.DGUnit.Left = CVar(var_8C.Left)
  loc_119F26A: Set var_B4 = Me.Txt
  loc_119F270: Call 0.Method_Proc_50_51_119F2CC0 (CInt(1), var_B8)
  loc_119F28B: Set var_88 = Me.Txt
  loc_119F291: Call 0.Method_Proc_50_51_119F2CC0 (CInt(1), var_8C)
  loc_119F2A9: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_119F2B8: Me.DGUnit.Top = CVar(var_8C.Left)
  loc_119F2CA: Exit Sub
End Sub

Public Sub Proc_50_52_10488E4
  'Data Table: 525C5C
  Dim var_8C As Recordset15
  Dim var_BC As Variant
  Dim var_B8 As Variant
  Dim var_F4 As Variant
  Dim var_D0 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_D4 As TextBox
  loc_10486BD: var_90 = "STOP"
  loc_10486E1: Me.Connection15.Execute "Select MAX(vno)AS VNO From STOCK s Where s.VType='" & var_90 & "' ", var_B8, -1
  loc_10486EC: Set var_8C = var_BC
  loc_1048710: If (var_8C.RecordCount > 0) Then
  loc_1048730:   var_D0 = Year(DateAdd("d", CDbl(&HFF), MemVar_1F950F4))
  loc_104873F:   global_116 = CStr(var_D0)
  loc_1048764:   var_D4 = var_8C.Fields.Item("VNo")
  loc_1048773:   Proc_6_39_E7D3A0(var_D0, CVar(var_D4))
  loc_1048780:   var_F4 = (var_D0 + 1)
  loc_1048788:   global_120 = CInt(var_F4)
  loc_1048797: End If
  loc_10487C2: var_B8 = Space((5 - Len(var_90)))
  loc_10487CA: var_F4 = (CVar(global_120 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + CVar(var_D4))
  loc_10487DE: var_108 = Space((5 - Len(global_116)))
  loc_10487E6: var_118 = (var_F4 + var_108)
  loc_10487F3: var_128 = (var_118 + CVar(global_116))
  loc_104880C: var_13C = Space((8 - Len(CStr(global_120))))
  loc_1048814: var_14C = (var_128 + var_13C)
  loc_1048823: var_16C = (var_14C + CVar(CStr(global_120)))
  loc_104882E: global_112 = CStr(var_16C)
  loc_1048864: Me.LblVPrefix.Caption = global_116
  loc_104887D: Set var_BC = Me.Txt
  loc_1048883: Call 0.Method_Proc_50_52_10488E40 (CInt(&HB), var_D4)
  loc_104888B: var_D4.Text = global_112
  loc_10488B3: Call 0.Method_Proc_50_52_10488E40 (CInt(&HC), var_D4)
  loc_10488BB: var_D4.Text = CStr(global_120)
  loc_10488D0: var_88 = global_112
  loc_10488D8: Set var_8C = Nothing
  loc_10488DB: Proc_50_52_10488E4 = Me.Txt
End Sub

Public Sub Proc_50_53_112DC0C
  'Data Table: 525C5C
  Dim var_A0 As String
  Dim var_A4 As Variant
  Dim var_AC As TextBox
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim unk_525C82 As Connection15
  Dim var_88 As Recordset15
  Dim var_12C As Double
  Dim var_B0 As String
  loc_112D8BA: Set var_8C = Me.TopCtrl1
  loc_112D8C0: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CDbl(0))
  loc_112D8D9: If (CStr(CDbl(0)) <> "Add") Then
  loc_112D8EA:   Set var_8C = Me.Txt
  loc_112D8F0:   Call 0.Method_Proc_50_53_112DC0C0 (CInt(9), var_A4)
  loc_112D91E:   Call 0.Method_Proc_50_53_112DC0C0 (CInt(8), var_AC)
  loc_112D926:   var_B0 = var_AC.Text
  loc_112D94B:   If ((CDbl(Val(var_A4.Text)) <> CDbl(0)) And (CDbl(Val(var_B0)) <> CDbl(0))) Then
  loc_112D97D:     var_A4 = Me.Fields.Item("Code")
  loc_112D9A4:     unk_525C82.Execute CStr("Select LPURRATE From iTEMMAST I Where I.CODE='" & var_A4.Value & "' And I.ItemType='Store'"), var_120, -1
  loc_112D9AF:     Set var_88 = Me.Txt
  loc_112D9DD:     If (var_88.RecordCount > 0) Then
  loc_112D9EE:       Set var_8C = Me.Txt
  loc_112D9F4:       Call 0.Method_Proc_50_53_112DC0C0 (CInt(9), var_A4)
  loc_112D9FC:       var_A0 = var_A4.Text
  loc_112DA0C:       global_96 = Val(var_A0)
  loc_112DA33:       var_A4 = var_88.Fields.Item("LPurRate")
  loc_112DA55:       If (var_A4.Value = 0) Then
  loc_112DA66:         Set var_8C = Me.Txt
  loc_112DA6C:         Call 0.Method_Proc_50_53_112DC0C0 (CInt(9), var_A4, var_A0)
  loc_112DA74:         global_96 = var_A4.Text
  loc_112DA81:         var_12C = Val(var_A0)
  loc_112DA92:         Set var_A8 = Me.Txt
  loc_112DA98:         Call 0.Method_Proc_50_53_112DC0C0 (CInt(8), var_AC, var_B0)
  loc_112DADF:         global_88 = CSng(Format(CVar((var_AC.Text / Val(var_B0))), "0.00"))
  loc_112DAFD:       End If
  loc_112DAFD:     End If
  loc_112DAFD:   End If
  loc_112DB07:   If (global_88 = CDbl(0)) Then
  loc_112DB21:     Set var_8C = Me.Txt
  loc_112DB27:     Call 0.Method_Proc_50_53_112DC0C0 (CInt(4), var_A4, var_A0, CDbl(0), global_88)
  loc_112DB2F:     1 = var_A4.Text
  loc_112DB6A:     global_88 = CSng(Format(CVar(Val(var_A0)), "0.00"))
  loc_112DB8E:     Set var_8C = Me.Txt
  loc_112DB94:     Call 0.Method_Proc_50_53_112DC0C0 (CInt(8), var_A4, var_A0, global_88, 1)
  loc_112DB9C:     1 = var_A4.Text
  loc_112DBEE:     global_96 = CSng(Format(CVar((Val(var_A0) * Val(CStr(global_88)))), "0.00"))
  loc_112DC08:   End If
  loc_112DC08: End If
  loc_112DC08: Exit Sub
End Sub
